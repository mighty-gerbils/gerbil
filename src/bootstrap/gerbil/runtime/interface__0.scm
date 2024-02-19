(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708353890)
  (begin
    (define CastError::t
      (let ((__tmp67355 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp67355
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args67348_ (apply make-instance CastError::t _$args67348_)))
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
      (lambda (_where67222_ _message67223_ . _irritants67224_)
        (raise (let ((__obj67351
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj67351
                  _message67223_
                  'where:
                  _where67222_
                  'irritants:
                  _irritants67224_)
                 __obj67351))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp67358 (list))
            (__tmp67356
             (let ((__tmp67357
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp67357 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp67358
         '(__object)
         __tmp67356
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
      (let ((__tmp67363 (list))
            (__tmp67359
             (let ((__tmp67362
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp67360
                    (let ((__tmp67361
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp67361 '()))))
               (declare (not safe))
               (cons __tmp67362 __tmp67360))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp67363
         '(type methods)
         __tmp67359
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67219_
        (apply make-instance interface-descriptor::t _$args67219_)))
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
      (lambda (_key67217_)
        (let ((__tmp67365
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67217_))))
              (__tmp67364
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67217_)))))
          (declare (not safe))
          (##fxxor __tmp67365 __tmp67364))))
    (define __interface-test-key
      (lambda (_a67214_ _b67215_)
        (if (let ((__tmp67369 (let () (declare (not safe)) (##car _a67214_)))
                  (__tmp67368 (let () (declare (not safe)) (##car _b67215_))))
              (declare (not safe))
              (##eq? __tmp67369 __tmp67368))
            (let ((__tmp67367 (let () (declare (not safe)) (##cdr _a67214_)))
                  (__tmp67366 (let () (declare (not safe)) (##cdr _b67215_))))
              (declare (not safe))
              (##eq? __tmp67367 __tmp67366))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67195_ _seed67197_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67195_
           __interface-hash-key
           __interface-test-key
           _seed67197_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67203_ '#f) (_seed67205_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67203_ _seed67205_))))
    (define make-prototype-table__1
      (lambda (_size-hint67207_)
        (let ((_seed67209_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67207_ _seed67209_))))
    (define make-prototype-table
      (lambda _g67371_
        (let ((_g67370_ (let () (declare (not safe)) (##length _g67371_))))
          (cond ((let () (declare (not safe)) (##fx= _g67370_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g67371_))
                ((let () (declare (not safe)) (##fx= _g67370_ 1))
                 (apply (lambda (_size-hint67207_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67207_)))
                        _g67371_))
                ((let () (declare (not safe)) (##fx= _g67370_ 2))
                 (apply (lambda (_size-hint67211_ _seed67212_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67211_
                             _seed67212_)))
                        _g67371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g67371_))))))
    (define prototype-table-ref
      (lambda (_tab67152_ _key67153_ _default67154_)
        (let ((_table67156_
               (let () (declare (not safe)) (&raw-table-table _tab67152_)))
              (_seed67157_
               (let () (declare (not safe)) (&raw-table-seed _tab67152_))))
          (let* ((_h67159_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67153_))
                         _seed67157_))
                 (_size67162_ (vector-length _table67156_))
                 (_entries67165_ (fxquotient _size67162_ '2))
                 (_start67168_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67159_ _entries67165_)
                   '1)))
            (let _loop67172_ ((_probe67175_ _start67168_)
                              (_i67177_ '1)
                              (_deleted67179_ '#f))
              (let ((_k67182_ (vector-ref _table67156_ _probe67175_)))
                (if (let ((__tmp67378 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67182_ __tmp67378))
                    _default67154_
                    (if (let ((__tmp67377 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67182_ __tmp67377))
                        (let ((__tmp67376
                               (let ((_next-probe67185_
                                      (fx+ _start67168_
                                           _i67177_
                                           (fx* _i67177_ _i67177_))))
                                 (fxmodulo _next-probe67185_ _size67162_)))
                              (__tmp67375 (fx+ _i67177_ '1))
                              (__tmp67374
                               (let ((_$e67188_ _deleted67179_))
                                 (if _$e67188_ _$e67188_ _probe67175_))))
                          (declare (not safe))
                          (_loop67172_ __tmp67376 __tmp67375 __tmp67374))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67153_ _k67182_))
                            (vector-ref _table67156_ (fx+ _probe67175_ '1))
                            (let ((__tmp67373
                                   (let ((_next-probe67191_
                                          (fx+ _start67168_
                                               _i67177_
                                               (fx* _i67177_ _i67177_))))
                                     (fxmodulo _next-probe67191_ _size67162_)))
                                  (__tmp67372 (fx+ _i67177_ '1)))
                              (declare (not safe))
                              (_loop67172_
                               __tmp67373
                               __tmp67372
                               _deleted67179_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67148_ _key67149_ _value67150_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67148_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67148_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67148_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67148_ _key67149_ _value67150_))))
    (define __prototype-table-set!
      (lambda (_tab67103_ _key67104_ _value67105_)
        (let ((_table67108_
               (let () (declare (not safe)) (&raw-table-table _tab67103_)))
              (_seed67109_
               (let () (declare (not safe)) (&raw-table-seed _tab67103_))))
          (let* ((_h67111_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67104_))
                         _seed67109_))
                 (_size67114_ (vector-length _table67108_))
                 (_entries67117_ (fxquotient _size67114_ '2))
                 (_start67120_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67111_ _entries67117_)
                   '1)))
            (let _loop67124_ ((_probe67127_ _start67120_)
                              (_i67129_ '1)
                              (_deleted67131_ '#f))
              (let ((_k67134_ (vector-ref _table67108_ _probe67127_)))
                (if (let ((__tmp67388 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67134_ __tmp67388))
                    (if _deleted67131_
                        (begin
                          (vector-set! _table67108_ _deleted67131_ _key67104_)
                          (vector-set!
                           _table67108_
                           (fx+ _deleted67131_ '1)
                           _value67105_)
                          ((lambda ()
                             (let ((__tmp67387
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67103_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67103_
                                __tmp67387)))))
                        (begin
                          (vector-set! _table67108_ _probe67127_ _key67104_)
                          (vector-set!
                           _table67108_
                           (fx+ _probe67127_ '1)
                           _value67105_)
                          ((lambda ()
                             (let ((__tmp67385
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67103_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67103_ __tmp67385))
                             (let ((__tmp67386
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67103_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67103_
                                __tmp67386))))))
                    (if (let ((__tmp67384 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67134_ __tmp67384))
                        (let ((__tmp67383
                               (let ((_next-probe67139_
                                      (fx+ _start67120_
                                           _i67129_
                                           (fx* _i67129_ _i67129_))))
                                 (fxmodulo _next-probe67139_ _size67114_)))
                              (__tmp67382 (fx+ _i67129_ '1))
                              (__tmp67381
                               (let ((_$e67142_ _deleted67131_))
                                 (if _$e67142_ _$e67142_ _probe67127_))))
                          (declare (not safe))
                          (_loop67124_ __tmp67383 __tmp67382 __tmp67381))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67104_ _k67134_))
                            (begin
                              (vector-set!
                               _table67108_
                               _probe67127_
                               _key67104_)
                              (vector-set!
                               _table67108_
                               (fx+ _probe67127_ '1)
                               _value67105_))
                            (let ((__tmp67380
                                   (let ((_next-probe67145_
                                          (fx+ _start67120_
                                               _i67129_
                                               (fx* _i67129_ _i67129_))))
                                     (fxmodulo _next-probe67145_ _size67114_)))
                                  (__tmp67379 (fx+ _i67129_ '1)))
                              (declare (not safe))
                              (_loop67124_
                               __tmp67380
                               __tmp67379
                               _deleted67131_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67098_
               _key67099_
               _prototype-table-update!67100_
               _default67101_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67098_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67098_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67098_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67098_
           _key67099_
           _prototype-table-update!67100_
           _default67101_))))
    (define __prototype-table-update!
      (lambda (_tab67052_
               _key67053_
               _prototype-table-update!67054_
               _default67055_)
        (let ((_table67058_
               (let () (declare (not safe)) (&raw-table-table _tab67052_)))
              (_seed67059_
               (let () (declare (not safe)) (&raw-table-seed _tab67052_))))
          (let* ((_h67061_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67053_))
                         _seed67059_))
                 (_size67064_ (vector-length _table67058_))
                 (_entries67067_ (fxquotient _size67064_ '2))
                 (_start67070_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67061_ _entries67067_)
                   '1)))
            (let _loop67074_ ((_probe67077_ _start67070_)
                              (_i67079_ '1)
                              (_deleted67081_ '#f))
              (let ((_k67084_ (vector-ref _table67058_ _probe67077_)))
                (if (let ((__tmp67398 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67084_ __tmp67398))
                    (if _deleted67081_
                        (begin
                          (vector-set! _table67058_ _deleted67081_ _key67053_)
                          (vector-set!
                           _table67058_
                           (fx+ _deleted67081_ '1)
                           (_prototype-table-update!67054_ _default67055_))
                          ((lambda ()
                             (let ((__tmp67397
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67052_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67052_
                                __tmp67397)))))
                        (begin
                          (vector-set! _table67058_ _probe67077_ _key67053_)
                          (vector-set!
                           _table67058_
                           (fx+ _probe67077_ '1)
                           (_prototype-table-update!67054_ _default67055_))
                          ((lambda ()
                             (let ((__tmp67395
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67052_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67052_ __tmp67395))
                             (let ((__tmp67396
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67052_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67052_
                                __tmp67396))))))
                    (if (let ((__tmp67394 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67084_ __tmp67394))
                        (let ((__tmp67393
                               (let ((_next-probe67089_
                                      (fx+ _start67070_
                                           _i67079_
                                           (fx* _i67079_ _i67079_))))
                                 (fxmodulo _next-probe67089_ _size67064_)))
                              (__tmp67392 (fx+ _i67079_ '1))
                              (__tmp67391
                               (let ((_$e67092_ _deleted67081_))
                                 (if _$e67092_ _$e67092_ _probe67077_))))
                          (declare (not safe))
                          (_loop67074_ __tmp67393 __tmp67392 __tmp67391))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67053_ _k67084_))
                            (begin
                              (vector-set!
                               _table67058_
                               _probe67077_
                               _key67053_)
                              (vector-set!
                               _table67058_
                               (fx+ _probe67077_ '1)
                               (_prototype-table-update!67054_
                                (vector-ref
                                 _table67058_
                                 (fx+ _probe67077_ '1)))))
                            (let ((__tmp67390
                                   (let ((_next-probe67095_
                                          (fx+ _start67070_
                                               _i67079_
                                               (fx* _i67079_ _i67079_))))
                                     (fxmodulo _next-probe67095_ _size67064_)))
                                  (__tmp67389 (fx+ _i67079_ '1)))
                              (declare (not safe))
                              (_loop67074_
                               __tmp67390
                               __tmp67389
                               _deleted67081_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67011_ _key67013_)
        (let ((_table67016_
               (let () (declare (not safe)) (&raw-table-table _tab67011_)))
              (_seed67018_
               (let () (declare (not safe)) (&raw-table-seed _tab67011_))))
          (let* ((_h67021_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67013_))
                         _seed67018_))
                 (_size67024_ (vector-length _table67016_))
                 (_entries67027_ (fxquotient _size67024_ '2))
                 (_start67030_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67021_ _entries67027_)
                   '1)))
            (let _loop67034_ ((_probe67037_ _start67030_) (_i67039_ '1))
              (let ((_k67042_ (vector-ref _table67016_ _probe67037_)))
                (if (let ((__tmp67405 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67042_ __tmp67405))
                    '#!void
                    (if (let ((__tmp67404 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67042_ __tmp67404))
                        (let ((__tmp67403
                               (let ((_next-probe67045_
                                      (fx+ _start67030_
                                           _i67039_
                                           (fx* _i67039_ _i67039_))))
                                 (fxmodulo _next-probe67045_ _size67024_)))
                              (__tmp67402 (fx+ _i67039_ '1)))
                          (declare (not safe))
                          (_loop67034_ __tmp67403 __tmp67402))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67013_ _k67042_))
                            (begin
                              (vector-set!
                               _table67016_
                               _probe67037_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67016_
                               (fx+ _probe67037_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp67401
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67011_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67011_
                                    __tmp67401)))))
                            (let ((__tmp67400
                                   (let ((_next-probe67049_
                                          (fx+ _start67030_
                                               _i67039_
                                               (fx* _i67039_ _i67039_))))
                                     (fxmodulo _next-probe67049_ _size67024_)))
                                  (__tmp67399 (fx+ _i67039_ '1)))
                              (declare (not safe))
                              (_loop67034_ __tmp67400 __tmp67399)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67003_)
        (let ((_super6700467006_
               (let () (declare (not safe)) (##type-super _klass67003_))))
          (if _super6700467006_
              (let ((_super67009_ _super6700467006_))
                (let ((__tmp67407
                       (let () (declare (not safe)) (##type-id _super67009_)))
                      (__tmp67406
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp67407 __tmp67406)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor66899_ _klass66900_ _obj-klass66901_)
        (let _loop66903_ ((_rest66906_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66899_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66908_ '0)
                          (_methods66910_ '()))
          (let* ((_rest6691266920_ _rest66906_)
                 (_else6691466976_
                  (lambda ()
                    (let ((_prototype66928_
                           (let ((__obj67353
                                  (let ((__tmp67408
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66908_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66900_
                                     __tmp67408))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67353 '#f))
                             __obj67353)))
                      (let _loop66931_ ((_rest66933_ _methods66910_)
                                        (_off66934_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66908_ '1))))
                        (let* ((_rest6693666944_ _rest66933_)
                               (_else6693866957_
                                (lambda ()
                                  (let ((_prototype-key66952_
                                         (let ((__tmp67410
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66900_)))
                                               (__tmp67409
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66901_))))
                                           (declare (not safe))
                                           (cons __tmp67410 __tmp67409))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key66952_
                                       _prototype66928_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype66955_)
                                       _prototype66955_)
                                     _prototype66928_))))
                               (_K6694066964_
                                (lambda (_rest66960_ _method66961_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype66928_
                                     _method66961_
                                     _off66934_
                                     _klass66900_
                                     '#f))
                                  (let ((__tmp67411
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off66934_ '1))))
                                    (declare (not safe))
                                    (_loop66931_ _rest66960_ __tmp67411)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6693666944_))
                              (let ((_hd6694166967_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6693666944_)))
                                    (_tl6694266969_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6693666944_))))
                                (let* ((_method66972_ _hd6694166967_)
                                       (_rest66974_ _tl6694266969_))
                                  (declare (not safe))
                                  (_K6694066964_ _rest66974_ _method66972_)))
                              (let ()
                                (declare (not safe))
                                (_else6693866957_))))))))
                 (_K6691666991_
                  (lambda (_rest66979_ _method-name66980_)
                    (let ((_$e66983_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66901_
                              '#f
                              _method-name66980_))))
                      (if _$e66983_
                          ((lambda (_method66986_)
                             (let ((__tmp67413
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66908_ '1)))
                                   (__tmp67412
                                    (let ()
                                      (declare (not safe))
                                      (cons _method66986_ _methods66910_))))
                               (declare (not safe))
                               (_loop66903_
                                _rest66979_
                                __tmp67413
                                __tmp67412)))
                           _$e66983_)
                          ((lambda (_klass66988_ _method-name66989_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass66988_
                                'method:
                                _method-name66989_)))
                           _klass66900_
                           _method-name66980_))))))
            (if (let () (declare (not safe)) (##pair? _rest6691266920_))
                (let ((_hd6691766994_
                       (let () (declare (not safe)) (##car _rest6691266920_)))
                      (_tl6691866996_
                       (let () (declare (not safe)) (##cdr _rest6691266920_))))
                  (let* ((_method-name66999_ _hd6691766994_)
                         (_rest67001_ _tl6691866996_))
                    (declare (not safe))
                    (_K6691666991_ _rest67001_ _method-name66999_)))
                (let () (declare (not safe)) (_else6691466976_)))))))
    (define try-create-prototype
      (lambda (_descriptor66795_ _klass66796_ _obj-klass66797_)
        (let _loop66799_ ((_rest66802_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66795_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66804_ '0)
                          (_methods66806_ '()))
          (let* ((_rest6680866816_ _rest66802_)
                 (_else6681066872_
                  (lambda ()
                    (let ((_prototype66824_
                           (let ((__obj67354
                                  (let ((__tmp67414
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66804_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66796_
                                     __tmp67414))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67354 '#f))
                             __obj67354)))
                      (let _loop66827_ ((_rest66829_ _methods66806_)
                                        (_off66830_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66804_ '1))))
                        (let* ((_rest6683266840_ _rest66829_)
                               (_else6683466853_
                                (lambda ()
                                  (let ((_prototype-key66848_
                                         (let ((__tmp67416
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66796_)))
                                               (__tmp67415
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66797_))))
                                           (declare (not safe))
                                           (cons __tmp67416 __tmp67415))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key66848_
                                       _prototype66824_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype66851_)
                                       _prototype66851_)
                                     _prototype66824_))))
                               (_K6683666860_
                                (lambda (_rest66856_ _method66857_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype66824_
                                     _method66857_
                                     _off66830_
                                     _klass66796_
                                     '#f))
                                  (let ((__tmp67417
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off66830_ '1))))
                                    (declare (not safe))
                                    (_loop66827_ _rest66856_ __tmp67417)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6683266840_))
                              (let ((_hd6683766863_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6683266840_)))
                                    (_tl6683866865_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6683266840_))))
                                (let* ((_method66868_ _hd6683766863_)
                                       (_rest66870_ _tl6683866865_))
                                  (declare (not safe))
                                  (_K6683666860_ _rest66870_ _method66868_)))
                              (let ()
                                (declare (not safe))
                                (_else6683466853_))))))))
                 (_K6681266887_
                  (lambda (_rest66875_ _method-name66876_)
                    (let ((_$e66879_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66797_
                              '#f
                              _method-name66876_))))
                      (if _$e66879_
                          ((lambda (_method66882_)
                             (let ((__tmp67419
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66804_ '1)))
                                   (__tmp67418
                                    (let ()
                                      (declare (not safe))
                                      (cons _method66882_ _methods66806_))))
                               (declare (not safe))
                               (_loop66799_
                                _rest66875_
                                __tmp67419
                                __tmp67418)))
                           _$e66879_)
                          ((lambda (_klass66884_ _method-name66885_) '#f)
                           _klass66796_
                           _method-name66876_))))))
            (if (let () (declare (not safe)) (##pair? _rest6680866816_))
                (let ((_hd6681366890_
                       (let () (declare (not safe)) (##car _rest6680866816_)))
                      (_tl6681466892_
                       (let () (declare (not safe)) (##cdr _rest6680866816_))))
                  (let* ((_method-name66895_ _hd6681366890_)
                         (_rest66897_ _tl6681466892_))
                    (declare (not safe))
                    (_K6681266887_ _rest66897_ _method-name66895_)))
                (let () (declare (not safe)) (_else6681066872_)))))))
    (define cast
      (lambda (_descriptor66760_ _obj66762_)
        (if (let () (declare (not safe)) (##structure? _obj66762_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66767_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66760_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66770_
                      (let () (declare (not safe)) (##type-id _klass66767_)))
                     (_obj-klass66773_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66762_)))
                     (_obj-klass-id66776_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66773_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66770_ _obj-klass-id66776_))
                    _obj66762_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66773_))
                        (let ((__tmp67420
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66762_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor66760_ __tmp67420))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66770_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66776_))
                          (let ((_prototype66786_
                                 (let ((_$e66780_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66780_
                                       ((lambda (_prototype66783_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66783_)
                                        _$e66780_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor66760_
                                            _klass66767_
                                            _obj-klass66773_)))))))
                            ((lambda (_prototype66788_ _obj66789_)
                               (let ((_instance66791_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype66788_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance66791_
                                    _obj66789_
                                    '1
                                    '#f
                                    'cast))
                                 _instance66791_))
                             _prototype66786_
                             _obj66762_)))))))
            ((lambda (_obj66793_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj66793_)))
             _obj66762_))))
    (define try-cast
      (lambda (_descriptor66725_ _obj66727_)
        (if (let () (declare (not safe)) (##structure? _obj66727_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66732_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66725_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66735_
                      (let () (declare (not safe)) (##type-id _klass66732_)))
                     (_obj-klass66738_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66727_)))
                     (_obj-klass-id66741_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66738_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66735_ _obj-klass-id66741_))
                    _obj66727_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66738_))
                        (let ((__tmp67421
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66727_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor66725_ __tmp67421))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66735_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66741_))
                          (let ((_prototype66751_
                                 (let ((_$e66745_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66745_
                                       ((lambda (_prototype66748_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66748_)
                                        _$e66745_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor66725_
                                            _klass66732_
                                            _obj-klass66738_)))))))
                            ((lambda (_prototype66753_ _obj66754_)
                               (if _prototype66753_
                                   (let ((_instance66756_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype66753_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance66756_
                                        _obj66754_
                                        '1
                                        '#f
                                        'cast))
                                     _instance66756_)
                                   '#f))
                             _prototype66751_
                             _obj66727_)))))))
            ((lambda (_obj66758_) '#f) _obj66727_))))
    (define satisfies?
      (lambda (_descriptor66692_ _obj66694_)
        (if (let () (declare (not safe)) (##structure? _obj66694_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66699_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66692_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66702_
                      (let () (declare (not safe)) (##type-id _klass66699_)))
                     (_obj-klass66705_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66694_)))
                     (_obj-klass-id66708_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66705_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66702_ _obj-klass-id66708_))
                    _obj66694_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66705_))
                        (let ((__tmp67422
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66694_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor66692_ __tmp67422))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66702_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66708_))
                          (let ((_prototype66718_
                                 (let ((_$e66712_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66712_
                                       ((lambda (_prototype66715_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66715_)
                                        _$e66712_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor66692_
                                            _klass66699_
                                            _obj-klass66705_)))))))
                            ((lambda (_prototype66720_ _obj66721_)
                               (if _prototype66720_ '#t '#f))
                             _prototype66718_
                             _obj66694_)))))))
            ((lambda (_obj66723_) '#f) _obj66694_))))))
