(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710943497)
  (begin
    (define CastError::t
      (let ((__tmp69915 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69915
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69908_ (apply make-instance CastError::t _$args69908_)))
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
      (lambda (_where69782_ _message69783_ . _irritants69784_)
        (raise (let ((__obj69911
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69911
                  _message69783_
                  'where:
                  _where69782_
                  'irritants:
                  _irritants69784_)
                 __obj69911))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69918 (list))
            (__tmp69916
             (let ((__tmp69917
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp69917 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69918
         '(__object)
         __tmp69916
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
      (let ((__tmp69923 (list))
            (__tmp69919
             (let ((__tmp69922
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp69920
                    (let ((__tmp69921
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp69921 '()))))
               (declare (not safe))
               (cons __tmp69922 __tmp69920))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69923
         '(type methods)
         __tmp69919
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69779_
        (apply make-instance interface-descriptor::t _$args69779_)))
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
      (lambda (_key69777_)
        (let ((__tmp69925
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69777_))))
              (__tmp69924
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69777_)))))
          (declare (not safe))
          (##fxxor __tmp69925 __tmp69924))))
    (define __interface-test-key
      (lambda (_a69774_ _b69775_)
        (if (let ((__tmp69929 (let () (declare (not safe)) (##car _a69774_)))
                  (__tmp69928 (let () (declare (not safe)) (##car _b69775_))))
              (declare (not safe))
              (##eq? __tmp69929 __tmp69928))
            (let ((__tmp69927 (let () (declare (not safe)) (##cdr _a69774_)))
                  (__tmp69926 (let () (declare (not safe)) (##cdr _b69775_))))
              (declare (not safe))
              (##eq? __tmp69927 __tmp69926))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69755_ _seed69757_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69755_
           __interface-hash-key
           __interface-test-key
           _seed69757_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69763_ '#f) (_seed69765_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69763_ _seed69765_))))
    (define make-prototype-table__1
      (lambda (_size-hint69767_)
        (let ((_seed69769_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69767_ _seed69769_))))
    (define make-prototype-table
      (lambda _g69931_
        (let ((_g69930_ (let () (declare (not safe)) (##length _g69931_))))
          (cond ((let () (declare (not safe)) (##fx= _g69930_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69931_))
                ((let () (declare (not safe)) (##fx= _g69930_ 1))
                 (apply (lambda (_size-hint69767_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69767_)))
                        _g69931_))
                ((let () (declare (not safe)) (##fx= _g69930_ 2))
                 (apply (lambda (_size-hint69771_ _seed69772_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69771_
                             _seed69772_)))
                        _g69931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69931_))))))
    (define prototype-table-ref
      (lambda (_tab69712_ _key69713_ _default69714_)
        (let ((_table69716_
               (let () (declare (not safe)) (&raw-table-table _tab69712_)))
              (_seed69717_
               (let () (declare (not safe)) (&raw-table-seed _tab69712_))))
          (let* ((_h69719_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69713_))
                         _seed69717_))
                 (_size69722_ (vector-length _table69716_))
                 (_entries69725_ (fxquotient _size69722_ '2))
                 (_start69728_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69719_ _entries69725_)
                   '1)))
            (let _loop69732_ ((_probe69735_ _start69728_)
                              (_i69737_ '1)
                              (_deleted69739_ '#f))
              (let ((_k69742_ (vector-ref _table69716_ _probe69735_)))
                (if (let ((__tmp69938 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69742_ __tmp69938))
                    _default69714_
                    (if (let ((__tmp69937 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69742_ __tmp69937))
                        (let ((__tmp69936
                               (let ((_next-probe69745_
                                      (fx+ _start69728_
                                           _i69737_
                                           (fx* _i69737_ _i69737_))))
                                 (fxmodulo _next-probe69745_ _size69722_)))
                              (__tmp69935 (fx+ _i69737_ '1))
                              (__tmp69934
                               (let ((_$e69748_ _deleted69739_))
                                 (if _$e69748_ _$e69748_ _probe69735_))))
                          (declare (not safe))
                          (_loop69732_ __tmp69936 __tmp69935 __tmp69934))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69713_ _k69742_))
                            (vector-ref _table69716_ (fx+ _probe69735_ '1))
                            (let ((__tmp69933
                                   (let ((_next-probe69751_
                                          (fx+ _start69728_
                                               _i69737_
                                               (fx* _i69737_ _i69737_))))
                                     (fxmodulo _next-probe69751_ _size69722_)))
                                  (__tmp69932 (fx+ _i69737_ '1)))
                              (declare (not safe))
                              (_loop69732_
                               __tmp69933
                               __tmp69932
                               _deleted69739_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69708_ _key69709_ _value69710_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69708_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69708_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69708_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69708_ _key69709_ _value69710_))))
    (define __prototype-table-set!
      (lambda (_tab69663_ _key69664_ _value69665_)
        (let ((_table69668_
               (let () (declare (not safe)) (&raw-table-table _tab69663_)))
              (_seed69669_
               (let () (declare (not safe)) (&raw-table-seed _tab69663_))))
          (let* ((_h69671_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69664_))
                         _seed69669_))
                 (_size69674_ (vector-length _table69668_))
                 (_entries69677_ (fxquotient _size69674_ '2))
                 (_start69680_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69671_ _entries69677_)
                   '1)))
            (let _loop69684_ ((_probe69687_ _start69680_)
                              (_i69689_ '1)
                              (_deleted69691_ '#f))
              (let ((_k69694_ (vector-ref _table69668_ _probe69687_)))
                (if (let ((__tmp69948 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69694_ __tmp69948))
                    (if _deleted69691_
                        (begin
                          (vector-set! _table69668_ _deleted69691_ _key69664_)
                          (vector-set!
                           _table69668_
                           (fx+ _deleted69691_ '1)
                           _value69665_)
                          ((lambda ()
                             (let ((__tmp69947
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69663_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69663_
                                __tmp69947)))))
                        (begin
                          (vector-set! _table69668_ _probe69687_ _key69664_)
                          (vector-set!
                           _table69668_
                           (fx+ _probe69687_ '1)
                           _value69665_)
                          ((lambda ()
                             (let ((__tmp69945
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69663_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69663_ __tmp69945))
                             (let ((__tmp69946
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69663_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69663_
                                __tmp69946))))))
                    (if (let ((__tmp69944 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69694_ __tmp69944))
                        (let ((__tmp69943
                               (let ((_next-probe69699_
                                      (fx+ _start69680_
                                           _i69689_
                                           (fx* _i69689_ _i69689_))))
                                 (fxmodulo _next-probe69699_ _size69674_)))
                              (__tmp69942 (fx+ _i69689_ '1))
                              (__tmp69941
                               (let ((_$e69702_ _deleted69691_))
                                 (if _$e69702_ _$e69702_ _probe69687_))))
                          (declare (not safe))
                          (_loop69684_ __tmp69943 __tmp69942 __tmp69941))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69664_ _k69694_))
                            (begin
                              (vector-set!
                               _table69668_
                               _probe69687_
                               _key69664_)
                              (vector-set!
                               _table69668_
                               (fx+ _probe69687_ '1)
                               _value69665_))
                            (let ((__tmp69940
                                   (let ((_next-probe69705_
                                          (fx+ _start69680_
                                               _i69689_
                                               (fx* _i69689_ _i69689_))))
                                     (fxmodulo _next-probe69705_ _size69674_)))
                                  (__tmp69939 (fx+ _i69689_ '1)))
                              (declare (not safe))
                              (_loop69684_
                               __tmp69940
                               __tmp69939
                               _deleted69691_)))))))))))
    (define prototype-table-update!
      (lambda (_tab69658_
               _key69659_
               _prototype-table-update!69660_
               _default69661_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab69658_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab69658_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69658_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab69658_
           _key69659_
           _prototype-table-update!69660_
           _default69661_))))
    (define __prototype-table-update!
      (lambda (_tab69612_
               _key69613_
               _prototype-table-update!69614_
               _default69615_)
        (let ((_table69618_
               (let () (declare (not safe)) (&raw-table-table _tab69612_)))
              (_seed69619_
               (let () (declare (not safe)) (&raw-table-seed _tab69612_))))
          (let* ((_h69621_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69613_))
                         _seed69619_))
                 (_size69624_ (vector-length _table69618_))
                 (_entries69627_ (fxquotient _size69624_ '2))
                 (_start69630_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69621_ _entries69627_)
                   '1)))
            (let _loop69634_ ((_probe69637_ _start69630_)
                              (_i69639_ '1)
                              (_deleted69641_ '#f))
              (let ((_k69644_ (vector-ref _table69618_ _probe69637_)))
                (if (let ((__tmp69958 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69644_ __tmp69958))
                    (if _deleted69641_
                        (begin
                          (vector-set! _table69618_ _deleted69641_ _key69613_)
                          (vector-set!
                           _table69618_
                           (fx+ _deleted69641_ '1)
                           (_prototype-table-update!69614_ _default69615_))
                          ((lambda ()
                             (let ((__tmp69957
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69612_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69612_
                                __tmp69957)))))
                        (begin
                          (vector-set! _table69618_ _probe69637_ _key69613_)
                          (vector-set!
                           _table69618_
                           (fx+ _probe69637_ '1)
                           (_prototype-table-update!69614_ _default69615_))
                          ((lambda ()
                             (let ((__tmp69955
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab69612_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69612_ __tmp69955))
                             (let ((__tmp69956
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab69612_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69612_
                                __tmp69956))))))
                    (if (let ((__tmp69954 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69644_ __tmp69954))
                        (let ((__tmp69953
                               (let ((_next-probe69649_
                                      (fx+ _start69630_
                                           _i69639_
                                           (fx* _i69639_ _i69639_))))
                                 (fxmodulo _next-probe69649_ _size69624_)))
                              (__tmp69952 (fx+ _i69639_ '1))
                              (__tmp69951
                               (let ((_$e69652_ _deleted69641_))
                                 (if _$e69652_ _$e69652_ _probe69637_))))
                          (declare (not safe))
                          (_loop69634_ __tmp69953 __tmp69952 __tmp69951))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69613_ _k69644_))
                            (begin
                              (vector-set!
                               _table69618_
                               _probe69637_
                               _key69613_)
                              (vector-set!
                               _table69618_
                               (fx+ _probe69637_ '1)
                               (_prototype-table-update!69614_
                                (vector-ref
                                 _table69618_
                                 (fx+ _probe69637_ '1)))))
                            (let ((__tmp69950
                                   (let ((_next-probe69655_
                                          (fx+ _start69630_
                                               _i69639_
                                               (fx* _i69639_ _i69639_))))
                                     (fxmodulo _next-probe69655_ _size69624_)))
                                  (__tmp69949 (fx+ _i69639_ '1)))
                              (declare (not safe))
                              (_loop69634_
                               __tmp69950
                               __tmp69949
                               _deleted69641_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab69571_ _key69573_)
        (let ((_table69576_
               (let () (declare (not safe)) (&raw-table-table _tab69571_)))
              (_seed69578_
               (let () (declare (not safe)) (&raw-table-seed _tab69571_))))
          (let* ((_h69581_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69573_))
                         _seed69578_))
                 (_size69584_ (vector-length _table69576_))
                 (_entries69587_ (fxquotient _size69584_ '2))
                 (_start69590_
                  (fxarithmetic-shift-left
                   (fxmodulo _h69581_ _entries69587_)
                   '1)))
            (let _loop69594_ ((_probe69597_ _start69590_) (_i69599_ '1))
              (let ((_k69602_ (vector-ref _table69576_ _probe69597_)))
                (if (let ((__tmp69965 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k69602_ __tmp69965))
                    '#!void
                    (if (let ((__tmp69964 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k69602_ __tmp69964))
                        (let ((__tmp69963
                               (let ((_next-probe69605_
                                      (fx+ _start69590_
                                           _i69599_
                                           (fx* _i69599_ _i69599_))))
                                 (fxmodulo _next-probe69605_ _size69584_)))
                              (__tmp69962 (fx+ _i69599_ '1)))
                          (declare (not safe))
                          (_loop69594_ __tmp69963 __tmp69962))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69573_ _k69602_))
                            (begin
                              (vector-set!
                               _table69576_
                               _probe69597_
                               (macro-deleted-obj))
                              (vector-set!
                               _table69576_
                               (fx+ _probe69597_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69961
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab69571_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab69571_
                                    __tmp69961)))))
                            (let ((__tmp69960
                                   (let ((_next-probe69609_
                                          (fx+ _start69590_
                                               _i69599_
                                               (fx* _i69599_ _i69599_))))
                                     (fxmodulo _next-probe69609_ _size69584_)))
                                  (__tmp69959 (fx+ _i69599_ '1)))
                              (declare (not safe))
                              (_loop69594_ __tmp69960 __tmp69959)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass69563_)
        (let ((_super6956469566_
               (let () (declare (not safe)) (##type-super _klass69563_))))
          (if _super6956469566_
              (let ((_super69569_ _super6956469566_))
                (let ((__tmp69967
                       (let () (declare (not safe)) (##type-id _super69569_)))
                      (__tmp69966
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp69967 __tmp69966)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor69449_ _klass69450_ _obj-klass69451_)
        (let ((_method-table69453_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69451_))))
          (let _loop69456_ ((_rest69459_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69449_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69461_ '0)
                            (_methods69463_ '()))
            (let* ((_rest6946569473_ _rest69459_)
                   (_else6946769535_
                    (lambda ()
                      (let ((_prototype69481_
                             (let ((__obj69913
                                    (let ((__tmp69968
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69461_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69450_
                                       __tmp69968))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69913 '#f))
                               __obj69913)))
                        (let _loop69484_ ((_rest69486_ _methods69463_)
                                          (_off69487_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69461_ '1))))
                          (let* ((_rest6948969497_ _rest69486_)
                                 (_else6949169516_
                                  (lambda ()
                                    (let ((_prototype-key69505_
                                           (let ((__tmp69970
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69450_)))
                                                 (__tmp69969
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69451_))))
                                             (declare (not safe))
                                             (cons __tmp69970 __tmp69969))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69510_ ()
                                          (if (let ((__tmp69971
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69971 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again69510_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69505_
                                         _prototype69481_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69514_)
                                         _prototype69514_)
                                       _prototype69481_))))
                                 (_K6949369523_
                                  (lambda (_rest69519_ _method69520_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69481_
                                       _method69520_
                                       _off69487_
                                       _klass69450_
                                       '#f))
                                    (let ((__tmp69972
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69487_ '1))))
                                      (declare (not safe))
                                      (_loop69484_ _rest69519_ __tmp69972)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6948969497_))
                                (let ((_hd6949469526_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6948969497_)))
                                      (_tl6949569528_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6948969497_))))
                                  (let* ((_method69531_ _hd6949469526_)
                                         (_rest69533_ _tl6949569528_))
                                    (declare (not safe))
                                    (_K6949369523_ _rest69533_ _method69531_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6949169516_))))))))
                   (_K6946969551_
                    (lambda (_rest69538_ _method-name69539_)
                      (let ((_$e69542_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69453_
                                _method-name69539_
                                '#f))))
                        (if _$e69542_
                            ((lambda (_method69545_)
                               (let ((__tmp69976
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69461_ '1)))
                                     (__tmp69975
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69545_ _methods69463_))))
                                 (declare (not safe))
                                 (_loop69456_
                                  _rest69538_
                                  __tmp69976
                                  __tmp69975)))
                             _$e69542_)
                            ((lambda (_klass69547_
                                      _obj-klass69548_
                                      _method-name69549_)
                               (let ((__tmp69974
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass69547_)))
                                     (__tmp69973
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass69548_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass69547_
                                  'interface-id:
                                  __tmp69974
                                  'class:
                                  _obj-klass69548_
                                  'class-id:
                                  __tmp69973
                                  'method:
                                  _method-name69549_)))
                             _klass69450_
                             _obj-klass69451_
                             _method-name69539_))))))
              (if (let () (declare (not safe)) (##pair? _rest6946569473_))
                  (let ((_hd6947069554_
                         (let ()
                           (declare (not safe))
                           (##car _rest6946569473_)))
                        (_tl6947169556_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6946569473_))))
                    (let* ((_method-name69559_ _hd6947069554_)
                           (_rest69561_ _tl6947169556_))
                      (declare (not safe))
                      (_K6946969551_ _rest69561_ _method-name69559_)))
                  (let () (declare (not safe)) (_else6946769535_))))))))
    (define try-create-prototype
      (lambda (_descriptor69335_ _klass69336_ _obj-klass69337_)
        (let ((_method-table69339_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass69337_))))
          (let _loop69342_ ((_rest69345_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor69335_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count69347_ '0)
                            (_methods69349_ '()))
            (let* ((_rest6935169359_ _rest69345_)
                   (_else6935369421_
                    (lambda ()
                      (let ((_prototype69367_
                             (let ((__obj69914
                                    (let ((__tmp69977
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69347_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass69336_
                                       __tmp69977))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69914 '#f))
                               __obj69914)))
                        (let _loop69370_ ((_rest69372_ _methods69349_)
                                          (_off69373_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count69347_ '1))))
                          (let* ((_rest6937569383_ _rest69372_)
                                 (_else6937769402_
                                  (lambda ()
                                    (let ((_prototype-key69391_
                                           (let ((__tmp69979
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass69336_)))
                                                 (__tmp69978
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass69337_))))
                                             (declare (not safe))
                                             (cons __tmp69979 __tmp69978))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again69396_ ()
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
                                                  (_again69396_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key69391_
                                         _prototype69367_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype69400_)
                                         _prototype69400_)
                                       _prototype69367_))))
                                 (_K6937969409_
                                  (lambda (_rest69405_ _method69406_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype69367_
                                       _method69406_
                                       _off69373_
                                       _klass69336_
                                       '#f))
                                    (let ((__tmp69981
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off69373_ '1))))
                                      (declare (not safe))
                                      (_loop69370_ _rest69405_ __tmp69981)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6937569383_))
                                (let ((_hd6938069412_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6937569383_)))
                                      (_tl6938169414_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6937569383_))))
                                  (let* ((_method69417_ _hd6938069412_)
                                         (_rest69419_ _tl6938169414_))
                                    (declare (not safe))
                                    (_K6937969409_ _rest69419_ _method69417_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6937769402_))))))))
                   (_K6935569437_
                    (lambda (_rest69424_ _method-name69425_)
                      (let ((_$e69428_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table69339_
                                _method-name69425_
                                '#f))))
                        (if _$e69428_
                            ((lambda (_method69431_)
                               (let ((__tmp69983
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count69347_ '1)))
                                     (__tmp69982
                                      (let ()
                                        (declare (not safe))
                                        (cons _method69431_ _methods69349_))))
                                 (declare (not safe))
                                 (_loop69342_
                                  _rest69424_
                                  __tmp69983
                                  __tmp69982)))
                             _$e69428_)
                            ((lambda (_klass69433_
                                      _obj-klass69434_
                                      _method-name69435_)
                               '#f)
                             _klass69336_
                             _obj-klass69337_
                             _method-name69425_))))))
              (if (let () (declare (not safe)) (##pair? _rest6935169359_))
                  (let ((_hd6935669440_
                         (let ()
                           (declare (not safe))
                           (##car _rest6935169359_)))
                        (_tl6935769442_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6935169359_))))
                    (let* ((_method-name69445_ _hd6935669440_)
                           (_rest69447_ _tl6935769442_))
                      (declare (not safe))
                      (_K6935569437_ _rest69447_ _method-name69445_)))
                  (let () (declare (not safe)) (_else6935369421_))))))))
    (define cast
      (lambda (_descriptor69297_ _obj69299_)
        (declare (not interrupts-enabled))
        (let* ((_klass69303_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69297_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69306_
                (let () (declare (not safe)) (##type-id _klass69303_)))
               (_obj-klass69309_
                (let () (declare (not safe)) (class-of _obj69299_)))
               (_obj-klass-id69312_
                (let () (declare (not safe)) (##type-id _obj-klass69309_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69306_ _obj-klass-id69312_))
              _obj69299_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69309_))
                  (let ((__tmp69985
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69299_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor69297_ __tmp69985))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69318_ ()
                        (if (let ((__tmp69984
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69984 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69318_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69306_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69312_))
                    (let ((_prototype69328_
                           (let ((_$e69322_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69322_
                                 ((lambda (_prototype69325_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69325_)
                                  _$e69322_)
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
                                      _descriptor69297_
                                      _klass69303_
                                      _obj-klass69309_)))))))
                      ((lambda (_prototype69330_ _obj69331_)
                         (let ((_instance69333_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype69330_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance69333_
                              _obj69331_
                              '1
                              '#f
                              'cast))
                           _instance69333_))
                       _prototype69328_
                       _obj69299_))))))))
    (define try-cast
      (lambda (_descriptor69259_ _obj69261_)
        (declare (not interrupts-enabled))
        (let* ((_klass69265_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69259_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69268_
                (let () (declare (not safe)) (##type-id _klass69265_)))
               (_obj-klass69271_
                (let () (declare (not safe)) (class-of _obj69261_)))
               (_obj-klass-id69274_
                (let () (declare (not safe)) (##type-id _obj-klass69271_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69268_ _obj-klass-id69274_))
              _obj69261_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69271_))
                  (let ((__tmp69987
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69261_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor69259_ __tmp69987))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69280_ ()
                        (if (let ((__tmp69986
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69986 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69280_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69268_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69274_))
                    (let ((_prototype69290_
                           (let ((_$e69284_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69284_
                                 ((lambda (_prototype69287_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69287_)
                                  _$e69284_)
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
                                      _descriptor69259_
                                      _klass69265_
                                      _obj-klass69271_)))))))
                      ((lambda (_prototype69292_ _obj69293_)
                         (if _prototype69292_
                             (let ((_instance69295_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype69292_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance69295_
                                  _obj69293_
                                  '1
                                  '#f
                                  'cast))
                               _instance69295_)
                             '#f))
                       _prototype69290_
                       _obj69261_))))))))
    (define satisfies?
      (lambda (_descriptor69223_ _obj69225_)
        (declare (not interrupts-enabled))
        (let* ((_klass69229_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor69223_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id69232_
                (let () (declare (not safe)) (##type-id _klass69229_)))
               (_obj-klass69235_
                (let () (declare (not safe)) (class-of _obj69225_)))
               (_obj-klass-id69238_
                (let () (declare (not safe)) (##type-id _obj-klass69235_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id69232_ _obj-klass-id69238_))
              _obj69225_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass69235_))
                  (let ((__tmp69989
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj69225_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor69223_ __tmp69989))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again69244_ ()
                        (if (let ((__tmp69988
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69988 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again69244_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id69232_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id69238_))
                    (let ((_prototype69254_
                           (let ((_$e69248_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e69248_
                                 ((lambda (_prototype69251_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype69251_)
                                  _$e69248_)
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
                                      _descriptor69223_
                                      _klass69229_
                                      _obj-klass69235_)))))))
                      ((lambda (_prototype69256_ _obj69257_)
                         (if _prototype69256_ '#t '#f))
                       _prototype69254_
                       _obj69225_))))))))))
