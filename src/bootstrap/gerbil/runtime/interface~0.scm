(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710776831)
  (begin
    (define CastError::t
      (let ((__tmp69886 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69886
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69879_ (apply make-instance CastError::t _$args69879_)))
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
      (lambda (_where69753_ _message69754_ . _irritants69755_)
        (raise (let ((__obj69882
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69882
                  _message69754_
                  'where:
                  _where69753_
                  'irritants:
                  _irritants69755_)
                 __obj69882))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69889 (list))
            (__tmp69887
             (let ((__tmp69888
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69888 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69889
         '(__object)
         __tmp69887
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
      (let ((__tmp69894 (list))
            (__tmp69890
             (let ((__tmp69893
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69891
                    (let ((__tmp69892
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69892 '()))))
               (declare (not safe))
               (cons __tmp69893 __tmp69891))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69894
         '(type methods)
         __tmp69890
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69750_
        (apply make-instance interface-descriptor::t _$args69750_)))
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
      (lambda (_key69748_)
        (let ((__tmp69896
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69748_))))
              (__tmp69895
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69748_)))))
          (declare (not safe))
          (##fxxor __tmp69896 __tmp69895))))
    (define __interface-test-key
      (lambda (_a69745_ _b69746_)
        (if (let ((__tmp69900 (let () (declare (not safe)) (##car _a69745_)))
                  (__tmp69899 (let () (declare (not safe)) (##car _b69746_))))
              (declare (not safe))
              (##eq? __tmp69900 __tmp69899))
            (let ((__tmp69898 (let () (declare (not safe)) (##cdr _a69745_)))
                  (__tmp69897 (let () (declare (not safe)) (##cdr _b69746_))))
              (declare (not safe))
              (##eq? __tmp69898 __tmp69897))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69726_ _seed69728_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69726_
           __interface-hash-key
           __interface-test-key
           _seed69728_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69734_ '#f) (_seed69736_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69734_ _seed69736_))))
    (define make-prototype-table__1
      (lambda (_size-hint69738_)
        (let ((_seed69740_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69738_ _seed69740_))))
    (define make-prototype-table
      (lambda _g69902_
        (let ((_g69901_ (let () (declare (not safe)) (##length _g69902_))))
          (cond ((let () (declare (not safe)) (##fx= _g69901_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69902_))
                ((let () (declare (not safe)) (##fx= _g69901_ 1))
                 (apply (lambda (_size-hint69738_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69738_)))
                        _g69902_))
                ((let () (declare (not safe)) (##fx= _g69901_ 2))
                 (apply (lambda (_size-hint69742_ _seed69743_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69742_
                             _seed69743_)))
                        _g69902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69902_))))))
    (define prototype-table-ref
      (lambda (_tab69683_ _key69684_ _default69685_)
        (let ((_table69687_
               (let () (declare (not safe)) (&raw-table-table _tab69683_)))
              (_seed69688_
               (let () (declare (not safe)) (&raw-table-seed _tab69683_))))
          (let* ((_h69690_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69684_))
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
                (if (let ((__tmp69909 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69713_ __tmp69909))
                    _default69685_
                    (if (let ((__tmp69908 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69713_ __tmp69908))
                        (let ((__tmp69907
                               (let ((_next-probe69716_
                                      (fx+ _start69699_
                                           _i69708_
                                           (fx* _i69708_ _i69708_))))
                                 (fxmodulo _next-probe69716_ _size69693_)))
                              (__tmp69906 (fx+ _i69708_ '1))
                              (__tmp69905
                               (let ((_$e69719_ _deleted69710_))
                                 (if _$e69719_ _$e69719_ _probe69706_))))
                          (declare (not safe))
                          (_loop69703_ __tmp69907 __tmp69906 __tmp69905))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69684_ _k69713_))
                            (vector-ref _table69687_ (fx+ _probe69706_ '1))
                            (let ((__tmp69904
                                   (let ((_next-probe69722_
                                          (fx+ _start69699_
                                               _i69708_
                                               (fx* _i69708_ _i69708_))))
                                     (fxmodulo _next-probe69722_ _size69693_)))
                                  (__tmp69903 (fx+ _i69708_ '1)))
                              (declare (not safe))
                              (_loop69703_
                               __tmp69904
                               __tmp69903
                               _deleted69710_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69679_ _key69680_ _value69681_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69679_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69679_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69679_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69679_ _key69680_ _value69681_))))
    (define __prototype-table-set!
      (lambda (_tab69634_ _key69635_ _value69636_)
        (let ((_table69639_
               (let () (declare (not safe)) (&raw-table-table _tab69634_)))
              (_seed69640_
               (let () (declare (not safe)) (&raw-table-seed _tab69634_))))
          (let* ((_h69642_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69635_))
                         _seed69640_))
                 (_size69645_ (vector-length _table69639_))
                 (_entries69648_ (fxquotient _size69645_ '2))
                 (_start69651_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69642_ _entries69648_)
                   '1)))
            (let _loop69655_ ((_probe69658_ _start69651_)
                              (_i69660_ '1)
                              (_deleted69662_ '#f))
              (let ((_k69665_ (vector-ref _table69639_ _probe69658_)))
                (if (let ((__tmp69919 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69665_ __tmp69919))
                    (if _deleted69662_
                        (begin
                          (vector-set! _table69639_ _deleted69662_ _key69635_)
                          (vector-set!
                           _table69639_
                           (fx+ _deleted69662_ '1)
                           _value69636_)
                          ((lambda ()
                             (let ((__tmp69918
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69634_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69634_
                                __tmp69918)))))
                        (begin
                          (vector-set! _table69639_ _probe69658_ _key69635_)
                          (vector-set!
                           _table69639_
                           (fx+ _probe69658_ '1)
                           _value69636_)
                          ((lambda ()
                             (let ((__tmp69916
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69634_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69634_ __tmp69916))
                             (let ((__tmp69917
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69634_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69634_
                                __tmp69917))))))
                    (if (let ((__tmp69915 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69665_ __tmp69915))
                        (let ((__tmp69914
                               (let ((_next-probe69670_
                                      (fx+ _start69651_
                                           _i69660_
                                           (fx* _i69660_ _i69660_))))
                                 (fxmodulo _next-probe69670_ _size69645_)))
                              (__tmp69913 (fx+ _i69660_ '1))
                              (__tmp69912
                               (let ((_$e69673_ _deleted69662_))
                                 (if _$e69673_ _$e69673_ _probe69658_))))
                          (declare (not safe))
                          (_loop69655_ __tmp69914 __tmp69913 __tmp69912))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69635_ _k69665_))
                            (begin
                              (vector-set!
                               _table69639_
                               _probe69658_
                               _key69635_)
                              (vector-set!
                               _table69639_
                               (fx+ _probe69658_ '1)
                               _value69636_))
                            (let ((__tmp69911
                                   (let ((_next-probe69676_
                                          (fx+ _start69651_
                                               _i69660_
                                               (fx* _i69660_ _i69660_))))
                                     (fxmodulo _next-probe69676_ _size69645_)))
                                  (__tmp69910 (fx+ _i69660_ '1)))
                              (declare (not safe))
                              (_loop69655_
                               __tmp69911
                               __tmp69910
                               _deleted69662_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69629_
               _key69630_
               _prototype-table-update!69631_
               _default69632_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69629_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69629_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69629_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69629_
           _key69630_
           _prototype-table-update!69631_
           _default69632_))))
    (define __prototype-table-update!
      (lambda (_tab69583_
               _key69584_
               _prototype-table-update!69585_
               _default69586_)
        (let ((_table69589_
               (let () (declare (not safe)) (&raw-table-table _tab69583_)))
              (_seed69590_
               (let () (declare (not safe)) (&raw-table-seed _tab69583_))))
          (let* ((_h69592_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69584_))
                         _seed69590_))
                 (_size69595_ (vector-length _table69589_))
                 (_entries69598_ (fxquotient _size69595_ '2))
                 (_start69601_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69592_ _entries69598_)
                   '1)))
            (let _loop69605_ ((_probe69608_ _start69601_)
                              (_i69610_ '1)
                              (_deleted69612_ '#f))
              (let ((_k69615_ (vector-ref _table69589_ _probe69608_)))
                (if (let ((__tmp69929 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69615_ __tmp69929))
                    (if _deleted69612_
                        (begin
                          (vector-set! _table69589_ _deleted69612_ _key69584_)
                          (vector-set!
                           _table69589_
                           (fx+ _deleted69612_ '1)
                           (_prototype-table-update!69585_ _default69586_))
                          ((lambda ()
                             (let ((__tmp69928
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69583_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69583_
                                __tmp69928)))))
                        (begin
                          (vector-set! _table69589_ _probe69608_ _key69584_)
                          (vector-set!
                           _table69589_
                           (fx+ _probe69608_ '1)
                           (_prototype-table-update!69585_ _default69586_))
                          ((lambda ()
                             (let ((__tmp69926
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69583_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69583_ __tmp69926))
                             (let ((__tmp69927
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69583_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69583_
                                __tmp69927))))))
                    (if (let ((__tmp69925 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69615_ __tmp69925))
                        (let ((__tmp69924
                               (let ((_next-probe69620_
                                      (fx+ _start69601_
                                           _i69610_
                                           (fx* _i69610_ _i69610_))))
                                 (fxmodulo _next-probe69620_ _size69595_)))
                              (__tmp69923 (fx+ _i69610_ '1))
                              (__tmp69922
                               (let ((_$e69623_ _deleted69612_))
                                 (if _$e69623_ _$e69623_ _probe69608_))))
                          (declare (not safe))
                          (_loop69605_ __tmp69924 __tmp69923 __tmp69922))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69584_ _k69615_))
                            (begin
                              (vector-set!
                               _table69589_
                               _probe69608_
                               _key69584_)
                              (vector-set!
                               _table69589_
                               (fx+ _probe69608_ '1)
                               (_prototype-table-update!69585_
                                (vector-ref
                                 _table69589_
                                 (fx+ _probe69608_ '1)))))
                            (let ((__tmp69921
                                   (let ((_next-probe69626_
                                          (fx+ _start69601_
                                               _i69610_
                                               (fx* _i69610_ _i69610_))))
                                     (fxmodulo _next-probe69626_ _size69595_)))
                                  (__tmp69920 (fx+ _i69610_ '1)))
                              (declare (not safe))
                              (_loop69605_
                               __tmp69921
                               __tmp69920
                               _deleted69612_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69542_ _key69544_)
        (let ((_table69547_
               (let () (declare (not safe)) (&raw-table-table _tab69542_)))
              (_seed69549_
               (let () (declare (not safe)) (&raw-table-seed _tab69542_))))
          (let* ((_h69552_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69544_))
                         _seed69549_))
                 (_size69555_ (vector-length _table69547_))
                 (_entries69558_ (fxquotient _size69555_ '2))
                 (_start69561_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69552_ _entries69558_)
                   '1)))
            (let _loop69565_ ((_probe69568_ _start69561_) (_i69570_ '1))
              (let ((_k69573_ (vector-ref _table69547_ _probe69568_)))
                (if (let ((__tmp69936 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69573_ __tmp69936))
                    '#!void
                    (if (let ((__tmp69935 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69573_ __tmp69935))
                        (let ((__tmp69934
                               (let ((_next-probe69576_
                                      (fx+ _start69561_
                                           _i69570_
                                           (fx* _i69570_ _i69570_))))
                                 (fxmodulo _next-probe69576_ _size69555_)))
                              (__tmp69933 (fx+ _i69570_ '1)))
                          (declare (not safe))
                          (_loop69565_ __tmp69934 __tmp69933))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69544_ _k69573_))
                            (begin
                              (vector-set!
                               _table69547_
                               _probe69568_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69547_
                               (fx+ _probe69568_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69932
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69542_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69542_
                                    __tmp69932)))))
                            (let ((__tmp69931
                                   (let ((_next-probe69580_
                                          (fx+ _start69561_
                                               _i69570_
                                               (fx* _i69570_ _i69570_))))
                                     (fxmodulo _next-probe69580_ _size69555_)))
                                  (__tmp69930 (fx+ _i69570_ '1)))
                              (declare (not safe))
                              (_loop69565_ __tmp69931 __tmp69930)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69534_)
        (let ((_super6953569537_
               (let () (declare (not safe)) (##type-super _klass69534_))))
          (if _super6953569537_
              (let ((_super69540_ _super6953569537_))
                (let ((__tmp69938
                       (let () (declare (not safe)) (##type-id _super69540_)))
                      (__tmp69937
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69938 __tmp69937)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69420_ _klass69421_ _obj-klass69422_)
        (let ((_method-table69424_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69422_))))
          (let _loop69427_ ((_rest69430_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69420_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69432_ '0)
                            (_methods69434_ '()))
            (let* ((_rest6943669444_ _rest69430_)
                   (_else6943869506_
                    (lambda ()
                      (let ((_prototype69452_
                             (let ((__obj69884
                                    (let ((__tmp69939
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69432_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69421_
                                       __tmp69939))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69884 '#f))
                               __obj69884)))
                        (let _loop69455_ ((_rest69457_ _methods69434_)
                                          (_off69458_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69432_ '1))))
                          (let* ((_rest6946069468_ _rest69457_)
                                 (_else6946269487_
                                  (lambda ()
                                    (let ((_prototype-key69476_
                                           (let ((__tmp69941
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69421_)))
                                                 (__tmp69940
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69422_))))
                                             (declare (not safe))
                                             (cons __tmp69941 __tmp69940))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69481_ ()
                                          (if (let ((__tmp69942
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69942 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69481_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69476_
                                         _prototype69452_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69485_)
                                         _prototype69485_)
                                       _prototype69452_))))
                                 (_K6946469494_
                                  (lambda (_rest69490_ _method69491_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69452_
                                       _method69491_
                                       _off69458_
                                       _klass69421_
                                       '#f))
                                    (let ((__tmp69943
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69458_ '1))))
                                      (declare (not safe))
                                      (_loop69455_ _rest69490_ __tmp69943)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6946069468_))
                                (let ((_hd6946569497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6946069468_)))
                                      (_tl6946669499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6946069468_))))
                                  (let* ((_method69502_ _hd6946569497_)
                                         (_rest69504_ _tl6946669499_))
                                    (declare (not safe))
                                    (_K6946469494_ _rest69504_ _method69502_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6946269487_))))))))
                   (_K6944069522_
                    (lambda (_rest69509_ _method-name69510_)
                      (let ((_$e69513_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69424_
                                _method-name69510_
                                '#f))))
                        (if _$e69513_
                            ((lambda (_method69516_)
                               (let ((__tmp69947
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69432_ '1)))
                                     (__tmp69946
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69516_ _methods69434_))))
                                 (declare (not safe))
                                 (_loop69427_
                                  _rest69509_
                                  __tmp69947
                                  __tmp69946)))
                             _$e69513_)
                            ((lambda (_klass69518_
                                      _obj-klass69519_
                                      _method-name69520_)
                               (let ((__tmp69945
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69518_)))
                                     (__tmp69944
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69519_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69518_
                                  'interface-id:
                                  __tmp69945
                                  'class:
                                  _obj-klass69519_
                                  'class-id:
                                  __tmp69944
                                  'method:
                                  _method-name69520_)))
                             _klass69421_
                             _obj-klass69422_
                             _method-name69510_))))))
              (if (let () (declare (not safe)) (##pair? _rest6943669444_))
                  (let ((_hd6944169525_
                         (let ()
                           (declare (not safe))
                           (##car _rest6943669444_)))
                        (_tl6944269527_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6943669444_))))
                    (let* ((_method-name69530_ _hd6944169525_)
                           (_rest69532_ _tl6944269527_))
                      (declare (not safe))
                      (_K6944069522_ _rest69532_ _method-name69530_)))
                  (let () (declare (not safe)) (_else6943869506_))))))))
    (define try-create-prototype
      (lambda (_descriptor69306_ _klass69307_ _obj-klass69308_)
        (let ((_method-table69310_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69308_))))
          (let _loop69313_ ((_rest69316_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69306_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69318_ '0)
                            (_methods69320_ '()))
            (let* ((_rest6932269330_ _rest69316_)
                   (_else6932469392_
                    (lambda ()
                      (let ((_prototype69338_
                             (let ((__obj69885
                                    (let ((__tmp69948
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69318_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69307_
                                       __tmp69948))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69885 '#f))
                               __obj69885)))
                        (let _loop69341_ ((_rest69343_ _methods69320_)
                                          (_off69344_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69318_ '1))))
                          (let* ((_rest6934669354_ _rest69343_)
                                 (_else6934869373_
                                  (lambda ()
                                    (let ((_prototype-key69362_
                                           (let ((__tmp69950
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69307_)))
                                                 (__tmp69949
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69308_))))
                                             (declare (not safe))
                                             (cons __tmp69950 __tmp69949))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69367_ ()
                                          (if (let ((__tmp69951
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69951 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69367_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69362_
                                         _prototype69338_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69371_)
                                         _prototype69371_)
                                       _prototype69338_))))
                                 (_K6935069380_
                                  (lambda (_rest69376_ _method69377_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69338_
                                       _method69377_
                                       _off69344_
                                       _klass69307_
                                       '#f))
                                    (let ((__tmp69952
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69344_ '1))))
                                      (declare (not safe))
                                      (_loop69341_ _rest69376_ __tmp69952)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6934669354_))
                                (let ((_hd6935169383_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6934669354_)))
                                      (_tl6935269385_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6934669354_))))
                                  (let* ((_method69388_ _hd6935169383_)
                                         (_rest69390_ _tl6935269385_))
                                    (declare (not safe))
                                    (_K6935069380_ _rest69390_ _method69388_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6934869373_))))))))
                   (_K6932669408_
                    (lambda (_rest69395_ _method-name69396_)
                      (let ((_$e69399_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69310_
                                _method-name69396_
                                '#f))))
                        (if _$e69399_
                            ((lambda (_method69402_)
                               (let ((__tmp69954
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69318_ '1)))
                                     (__tmp69953
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69402_ _methods69320_))))
                                 (declare (not safe))
                                 (_loop69313_
                                  _rest69395_
                                  __tmp69954
                                  __tmp69953)))
                             _$e69399_)
                            ((lambda (_klass69404_
                                      _obj-klass69405_
                                      _method-name69406_)
                               '#f)
                             _klass69307_
                             _obj-klass69308_
                             _method-name69396_))))))
              (if (let () (declare (not safe)) (##pair? _rest6932269330_))
                  (let ((_hd6932769411_
                         (let ()
                           (declare (not safe))
                           (##car _rest6932269330_)))
                        (_tl6932869413_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6932269330_))))
                    (let* ((_method-name69416_ _hd6932769411_)
                           (_rest69418_ _tl6932869413_))
                      (declare (not safe))
                      (_K6932669408_ _rest69418_ _method-name69416_)))
                  (let () (declare (not safe)) (_else6932469392_))))))))
    (define cast
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
                  (let ((__tmp69956
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69270_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor69268_ __tmp69956))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69289_ ()
                        (if (let ((__tmp69955
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69955 '0))
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
                                     (create-prototype
                                      _descriptor69268_
                                      _klass69274_
                                      _obj-klass69280_)))))))
                      ((lambda (_prototype69301_ _obj69302_)
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
                           _instance69304_))
                       _prototype69299_
                       _obj69270_))))))))
    (define try-cast
      (lambda (_descriptor69230_ _obj69232_)
        (declare (not interrupts-enabled))
        (let* ((_klass69236_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69230_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69239_
                (let () (declare (not safe)) (##type-id _klass69236_)))
               (_obj-klass69242_
                (let () (declare (not safe)) (class-of _obj69232_)))
               (_obj-klass-id69245_
                (let () (declare (not safe)) (##type-id _obj-klass69242_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69239_ _obj-klass-id69245_))
              _obj69232_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69242_))
                  (let ((__tmp69958
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69232_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor69230_ __tmp69958))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69251_ ()
                        (if (let ((__tmp69957
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69957 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69251_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69239_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69245_))
                    (let ((_prototype69261_
                           (let ((_$e69255_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69255_
                                 ((lambda (_prototype69258_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69258_)
                                  _$e69255_)
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
                                      _descriptor69230_
                                      _klass69236_
                                      _obj-klass69242_)))))))
                      ((lambda (_prototype69263_ _obj69264_)
                         (if _prototype69263_
                             (let ((_instance69266_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype69263_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance69266_
                                  _obj69264_
                                  '1
                                  '#f
                                  'cast))
                               _instance69266_)
                             '#f))
                       _prototype69261_
                       _obj69232_))))))))
    (define satisfies?
      (lambda (_descriptor69194_ _obj69196_)
        (declare (not interrupts-enabled))
        (let* ((_klass69200_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69194_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69203_
                (let () (declare (not safe)) (##type-id _klass69200_)))
               (_obj-klass69206_
                (let () (declare (not safe)) (class-of _obj69196_)))
               (_obj-klass-id69209_
                (let () (declare (not safe)) (##type-id _obj-klass69206_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69203_ _obj-klass-id69209_))
              _obj69196_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69206_))
                  (let ((__tmp69960
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69196_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor69194_ __tmp69960))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69215_ ()
                        (if (let ((__tmp69959
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69959 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69215_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69203_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69209_))
                    (let ((_prototype69225_
                           (let ((_$e69219_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69219_
                                 ((lambda (_prototype69222_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69222_)
                                  _$e69219_)
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
                                      _descriptor69194_
                                      _klass69200_
                                      _obj-klass69206_)))))))
                      ((lambda (_prototype69227_ _obj69228_)
                         (if _prototype69227_ '#t '#f))
                       _prototype69225_
                       _obj69196_))))))))))
