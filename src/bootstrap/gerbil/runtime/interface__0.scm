(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708387687)
  (begin
    (define CastError::t
      (let ((__tmp67367 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp67367
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args67360_ (apply make-instance CastError::t _$args67360_)))
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
      (lambda (_where67234_ _message67235_ . _irritants67236_)
        (raise (let ((__obj67363
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj67363
                  _message67235_
                  'where:
                  _where67234_
                  'irritants:
                  _irritants67236_)
                 __obj67363))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp67370 (list))
            (__tmp67368
             (let ((__tmp67369
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp67369 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp67370
         '(__object)
         __tmp67368
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
      (let ((__tmp67375 (list))
            (__tmp67371
             (let ((__tmp67374
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp67372
                    (let ((__tmp67373
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp67373 '()))))
               (declare (not safe))
               (cons __tmp67374 __tmp67372))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp67375
         '(type methods)
         __tmp67371
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67231_
        (apply make-instance interface-descriptor::t _$args67231_)))
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
      (lambda (_key67229_)
        (let ((__tmp67377
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67229_))))
              (__tmp67376
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67229_)))))
          (declare (not safe))
          (##fxxor __tmp67377 __tmp67376))))
    (define __interface-test-key
      (lambda (_a67226_ _b67227_)
        (if (let ((__tmp67381 (let () (declare (not safe)) (##car _a67226_)))
                  (__tmp67380 (let () (declare (not safe)) (##car _b67227_))))
              (declare (not safe))
              (##eq? __tmp67381 __tmp67380))
            (let ((__tmp67379 (let () (declare (not safe)) (##cdr _a67226_)))
                  (__tmp67378 (let () (declare (not safe)) (##cdr _b67227_))))
              (declare (not safe))
              (##eq? __tmp67379 __tmp67378))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67207_ _seed67209_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67207_
           __interface-hash-key
           __interface-test-key
           _seed67209_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67215_ '#f) (_seed67217_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67215_ _seed67217_))))
    (define make-prototype-table__1
      (lambda (_size-hint67219_)
        (let ((_seed67221_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67219_ _seed67221_))))
    (define make-prototype-table
      (lambda _g67383_
        (let ((_g67382_ (let () (declare (not safe)) (##length _g67383_))))
          (cond ((let () (declare (not safe)) (##fx= _g67382_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g67383_))
                ((let () (declare (not safe)) (##fx= _g67382_ 1))
                 (apply (lambda (_size-hint67219_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67219_)))
                        _g67383_))
                ((let () (declare (not safe)) (##fx= _g67382_ 2))
                 (apply (lambda (_size-hint67223_ _seed67224_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67223_
                             _seed67224_)))
                        _g67383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g67383_))))))
    (define prototype-table-ref
      (lambda (_tab67164_ _key67165_ _default67166_)
        (let ((_table67168_
               (let () (declare (not safe)) (&raw-table-table _tab67164_)))
              (_seed67169_
               (let () (declare (not safe)) (&raw-table-seed _tab67164_))))
          (let* ((_h67171_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67165_))
                         _seed67169_))
                 (_size67174_ (vector-length _table67168_))
                 (_entries67177_ (fxquotient _size67174_ '2))
                 (_start67180_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67171_ _entries67177_)
                   '1)))
            (let _loop67184_ ((_probe67187_ _start67180_)
                              (_i67189_ '1)
                              (_deleted67191_ '#f))
              (let ((_k67194_ (vector-ref _table67168_ _probe67187_)))
                (if (let ((__tmp67390 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67194_ __tmp67390))
                    _default67166_
                    (if (let ((__tmp67389 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67194_ __tmp67389))
                        (let ((__tmp67388
                               (let ((_next-probe67197_
                                      (fx+ _start67180_
                                           _i67189_
                                           (fx* _i67189_ _i67189_))))
                                 (fxmodulo _next-probe67197_ _size67174_)))
                              (__tmp67387 (fx+ _i67189_ '1))
                              (__tmp67386
                               (let ((_$e67200_ _deleted67191_))
                                 (if _$e67200_ _$e67200_ _probe67187_))))
                          (declare (not safe))
                          (_loop67184_ __tmp67388 __tmp67387 __tmp67386))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67165_ _k67194_))
                            (vector-ref _table67168_ (fx+ _probe67187_ '1))
                            (let ((__tmp67385
                                   (let ((_next-probe67203_
                                          (fx+ _start67180_
                                               _i67189_
                                               (fx* _i67189_ _i67189_))))
                                     (fxmodulo _next-probe67203_ _size67174_)))
                                  (__tmp67384 (fx+ _i67189_ '1)))
                              (declare (not safe))
                              (_loop67184_
                               __tmp67385
                               __tmp67384
                               _deleted67191_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67160_ _key67161_ _value67162_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67160_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67160_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67160_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67160_ _key67161_ _value67162_))))
    (define __prototype-table-set!
      (lambda (_tab67115_ _key67116_ _value67117_)
        (let ((_table67120_
               (let () (declare (not safe)) (&raw-table-table _tab67115_)))
              (_seed67121_
               (let () (declare (not safe)) (&raw-table-seed _tab67115_))))
          (let* ((_h67123_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67116_))
                         _seed67121_))
                 (_size67126_ (vector-length _table67120_))
                 (_entries67129_ (fxquotient _size67126_ '2))
                 (_start67132_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67123_ _entries67129_)
                   '1)))
            (let _loop67136_ ((_probe67139_ _start67132_)
                              (_i67141_ '1)
                              (_deleted67143_ '#f))
              (let ((_k67146_ (vector-ref _table67120_ _probe67139_)))
                (if (let ((__tmp67400 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67146_ __tmp67400))
                    (if _deleted67143_
                        (begin
                          (vector-set! _table67120_ _deleted67143_ _key67116_)
                          (vector-set!
                           _table67120_
                           (fx+ _deleted67143_ '1)
                           _value67117_)
                          ((lambda ()
                             (let ((__tmp67399
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67115_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67115_
                                __tmp67399)))))
                        (begin
                          (vector-set! _table67120_ _probe67139_ _key67116_)
                          (vector-set!
                           _table67120_
                           (fx+ _probe67139_ '1)
                           _value67117_)
                          ((lambda ()
                             (let ((__tmp67397
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67115_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67115_ __tmp67397))
                             (let ((__tmp67398
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67115_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67115_
                                __tmp67398))))))
                    (if (let ((__tmp67396 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67146_ __tmp67396))
                        (let ((__tmp67395
                               (let ((_next-probe67151_
                                      (fx+ _start67132_
                                           _i67141_
                                           (fx* _i67141_ _i67141_))))
                                 (fxmodulo _next-probe67151_ _size67126_)))
                              (__tmp67394 (fx+ _i67141_ '1))
                              (__tmp67393
                               (let ((_$e67154_ _deleted67143_))
                                 (if _$e67154_ _$e67154_ _probe67139_))))
                          (declare (not safe))
                          (_loop67136_ __tmp67395 __tmp67394 __tmp67393))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67116_ _k67146_))
                            (begin
                              (vector-set!
                               _table67120_
                               _probe67139_
                               _key67116_)
                              (vector-set!
                               _table67120_
                               (fx+ _probe67139_ '1)
                               _value67117_))
                            (let ((__tmp67392
                                   (let ((_next-probe67157_
                                          (fx+ _start67132_
                                               _i67141_
                                               (fx* _i67141_ _i67141_))))
                                     (fxmodulo _next-probe67157_ _size67126_)))
                                  (__tmp67391 (fx+ _i67141_ '1)))
                              (declare (not safe))
                              (_loop67136_
                               __tmp67392
                               __tmp67391
                               _deleted67143_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67110_
               _key67111_
               _prototype-table-update!67112_
               _default67113_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67110_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67110_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67110_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67110_
           _key67111_
           _prototype-table-update!67112_
           _default67113_))))
    (define __prototype-table-update!
      (lambda (_tab67064_
               _key67065_
               _prototype-table-update!67066_
               _default67067_)
        (let ((_table67070_
               (let () (declare (not safe)) (&raw-table-table _tab67064_)))
              (_seed67071_
               (let () (declare (not safe)) (&raw-table-seed _tab67064_))))
          (let* ((_h67073_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67065_))
                         _seed67071_))
                 (_size67076_ (vector-length _table67070_))
                 (_entries67079_ (fxquotient _size67076_ '2))
                 (_start67082_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67073_ _entries67079_)
                   '1)))
            (let _loop67086_ ((_probe67089_ _start67082_)
                              (_i67091_ '1)
                              (_deleted67093_ '#f))
              (let ((_k67096_ (vector-ref _table67070_ _probe67089_)))
                (if (let ((__tmp67410 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67096_ __tmp67410))
                    (if _deleted67093_
                        (begin
                          (vector-set! _table67070_ _deleted67093_ _key67065_)
                          (vector-set!
                           _table67070_
                           (fx+ _deleted67093_ '1)
                           (_prototype-table-update!67066_ _default67067_))
                          ((lambda ()
                             (let ((__tmp67409
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67064_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67064_
                                __tmp67409)))))
                        (begin
                          (vector-set! _table67070_ _probe67089_ _key67065_)
                          (vector-set!
                           _table67070_
                           (fx+ _probe67089_ '1)
                           (_prototype-table-update!67066_ _default67067_))
                          ((lambda ()
                             (let ((__tmp67407
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67064_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67064_ __tmp67407))
                             (let ((__tmp67408
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67064_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67064_
                                __tmp67408))))))
                    (if (let ((__tmp67406 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67096_ __tmp67406))
                        (let ((__tmp67405
                               (let ((_next-probe67101_
                                      (fx+ _start67082_
                                           _i67091_
                                           (fx* _i67091_ _i67091_))))
                                 (fxmodulo _next-probe67101_ _size67076_)))
                              (__tmp67404 (fx+ _i67091_ '1))
                              (__tmp67403
                               (let ((_$e67104_ _deleted67093_))
                                 (if _$e67104_ _$e67104_ _probe67089_))))
                          (declare (not safe))
                          (_loop67086_ __tmp67405 __tmp67404 __tmp67403))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67065_ _k67096_))
                            (begin
                              (vector-set!
                               _table67070_
                               _probe67089_
                               _key67065_)
                              (vector-set!
                               _table67070_
                               (fx+ _probe67089_ '1)
                               (_prototype-table-update!67066_
                                (vector-ref
                                 _table67070_
                                 (fx+ _probe67089_ '1)))))
                            (let ((__tmp67402
                                   (let ((_next-probe67107_
                                          (fx+ _start67082_
                                               _i67091_
                                               (fx* _i67091_ _i67091_))))
                                     (fxmodulo _next-probe67107_ _size67076_)))
                                  (__tmp67401 (fx+ _i67091_ '1)))
                              (declare (not safe))
                              (_loop67086_
                               __tmp67402
                               __tmp67401
                               _deleted67093_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67023_ _key67025_)
        (let ((_table67028_
               (let () (declare (not safe)) (&raw-table-table _tab67023_)))
              (_seed67030_
               (let () (declare (not safe)) (&raw-table-seed _tab67023_))))
          (let* ((_h67033_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67025_))
                         _seed67030_))
                 (_size67036_ (vector-length _table67028_))
                 (_entries67039_ (fxquotient _size67036_ '2))
                 (_start67042_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67033_ _entries67039_)
                   '1)))
            (let _loop67046_ ((_probe67049_ _start67042_) (_i67051_ '1))
              (let ((_k67054_ (vector-ref _table67028_ _probe67049_)))
                (if (let ((__tmp67417 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67054_ __tmp67417))
                    '#!void
                    (if (let ((__tmp67416 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67054_ __tmp67416))
                        (let ((__tmp67415
                               (let ((_next-probe67057_
                                      (fx+ _start67042_
                                           _i67051_
                                           (fx* _i67051_ _i67051_))))
                                 (fxmodulo _next-probe67057_ _size67036_)))
                              (__tmp67414 (fx+ _i67051_ '1)))
                          (declare (not safe))
                          (_loop67046_ __tmp67415 __tmp67414))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67025_ _k67054_))
                            (begin
                              (vector-set!
                               _table67028_
                               _probe67049_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67028_
                               (fx+ _probe67049_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp67413
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67023_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67023_
                                    __tmp67413)))))
                            (let ((__tmp67412
                                   (let ((_next-probe67061_
                                          (fx+ _start67042_
                                               _i67051_
                                               (fx* _i67051_ _i67051_))))
                                     (fxmodulo _next-probe67061_ _size67036_)))
                                  (__tmp67411 (fx+ _i67051_ '1)))
                              (declare (not safe))
                              (_loop67046_ __tmp67412 __tmp67411)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67015_)
        (let ((_super6701667018_
               (let () (declare (not safe)) (##type-super _klass67015_))))
          (if _super6701667018_
              (let ((_super67021_ _super6701667018_))
                (let ((__tmp67419
                       (let () (declare (not safe)) (##type-id _super67021_)))
                      (__tmp67418
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp67419 __tmp67418)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor66911_ _klass66912_ _obj-klass66913_)
        (let _loop66915_ ((_rest66918_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66911_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66920_ '0)
                          (_methods66922_ '()))
          (let* ((_rest6692466932_ _rest66918_)
                 (_else6692666988_
                  (lambda ()
                    (let ((_prototype66940_
                           (let ((__obj67365
                                  (let ((__tmp67420
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66920_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66912_
                                     __tmp67420))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67365 '#f))
                             __obj67365)))
                      (let _loop66943_ ((_rest66945_ _methods66922_)
                                        (_off66946_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66920_ '1))))
                        (let* ((_rest6694866956_ _rest66945_)
                               (_else6695066969_
                                (lambda ()
                                  (let ((_prototype-key66964_
                                         (let ((__tmp67422
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66912_)))
                                               (__tmp67421
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66913_))))
                                           (declare (not safe))
                                           (cons __tmp67422 __tmp67421))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key66964_
                                       _prototype66940_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype66967_)
                                       _prototype66967_)
                                     _prototype66940_))))
                               (_K6695266976_
                                (lambda (_rest66972_ _method66973_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype66940_
                                     _method66973_
                                     _off66946_
                                     _klass66912_
                                     '#f))
                                  (let ((__tmp67423
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off66946_ '1))))
                                    (declare (not safe))
                                    (_loop66943_ _rest66972_ __tmp67423)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6694866956_))
                              (let ((_hd6695366979_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6694866956_)))
                                    (_tl6695466981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6694866956_))))
                                (let* ((_method66984_ _hd6695366979_)
                                       (_rest66986_ _tl6695466981_))
                                  (declare (not safe))
                                  (_K6695266976_ _rest66986_ _method66984_)))
                              (let ()
                                (declare (not safe))
                                (_else6695066969_))))))))
                 (_K6692867003_
                  (lambda (_rest66991_ _method-name66992_)
                    (let ((_$e66995_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66913_
                              '#f
                              _method-name66992_))))
                      (if _$e66995_
                          ((lambda (_method66998_)
                             (let ((__tmp67425
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66920_ '1)))
                                   (__tmp67424
                                    (let ()
                                      (declare (not safe))
                                      (cons _method66998_ _methods66922_))))
                               (declare (not safe))
                               (_loop66915_
                                _rest66991_
                                __tmp67425
                                __tmp67424)))
                           _$e66995_)
                          ((lambda (_klass67000_ _method-name67001_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass67000_
                                'method:
                                _method-name67001_)))
                           _klass66912_
                           _method-name66992_))))))
            (if (let () (declare (not safe)) (##pair? _rest6692466932_))
                (let ((_hd6692967006_
                       (let () (declare (not safe)) (##car _rest6692466932_)))
                      (_tl6693067008_
                       (let () (declare (not safe)) (##cdr _rest6692466932_))))
                  (let* ((_method-name67011_ _hd6692967006_)
                         (_rest67013_ _tl6693067008_))
                    (declare (not safe))
                    (_K6692867003_ _rest67013_ _method-name67011_)))
                (let () (declare (not safe)) (_else6692666988_)))))))
    (define try-create-prototype
      (lambda (_descriptor66807_ _klass66808_ _obj-klass66809_)
        (let _loop66811_ ((_rest66814_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66807_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66816_ '0)
                          (_methods66818_ '()))
          (let* ((_rest6682066828_ _rest66814_)
                 (_else6682266884_
                  (lambda ()
                    (let ((_prototype66836_
                           (let ((__obj67366
                                  (let ((__tmp67426
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66816_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66808_
                                     __tmp67426))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67366 '#f))
                             __obj67366)))
                      (let _loop66839_ ((_rest66841_ _methods66818_)
                                        (_off66842_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66816_ '1))))
                        (let* ((_rest6684466852_ _rest66841_)
                               (_else6684666865_
                                (lambda ()
                                  (let ((_prototype-key66860_
                                         (let ((__tmp67428
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66808_)))
                                               (__tmp67427
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66809_))))
                                           (declare (not safe))
                                           (cons __tmp67428 __tmp67427))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key66860_
                                       _prototype66836_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype66863_)
                                       _prototype66863_)
                                     _prototype66836_))))
                               (_K6684866872_
                                (lambda (_rest66868_ _method66869_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype66836_
                                     _method66869_
                                     _off66842_
                                     _klass66808_
                                     '#f))
                                  (let ((__tmp67429
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off66842_ '1))))
                                    (declare (not safe))
                                    (_loop66839_ _rest66868_ __tmp67429)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6684466852_))
                              (let ((_hd6684966875_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6684466852_)))
                                    (_tl6685066877_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6684466852_))))
                                (let* ((_method66880_ _hd6684966875_)
                                       (_rest66882_ _tl6685066877_))
                                  (declare (not safe))
                                  (_K6684866872_ _rest66882_ _method66880_)))
                              (let ()
                                (declare (not safe))
                                (_else6684666865_))))))))
                 (_K6682466899_
                  (lambda (_rest66887_ _method-name66888_)
                    (let ((_$e66891_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66809_
                              '#f
                              _method-name66888_))))
                      (if _$e66891_
                          ((lambda (_method66894_)
                             (let ((__tmp67431
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66816_ '1)))
                                   (__tmp67430
                                    (let ()
                                      (declare (not safe))
                                      (cons _method66894_ _methods66818_))))
                               (declare (not safe))
                               (_loop66811_
                                _rest66887_
                                __tmp67431
                                __tmp67430)))
                           _$e66891_)
                          ((lambda (_klass66896_ _method-name66897_) '#f)
                           _klass66808_
                           _method-name66888_))))))
            (if (let () (declare (not safe)) (##pair? _rest6682066828_))
                (let ((_hd6682566902_
                       (let () (declare (not safe)) (##car _rest6682066828_)))
                      (_tl6682666904_
                       (let () (declare (not safe)) (##cdr _rest6682066828_))))
                  (let* ((_method-name66907_ _hd6682566902_)
                         (_rest66909_ _tl6682666904_))
                    (declare (not safe))
                    (_K6682466899_ _rest66909_ _method-name66907_)))
                (let () (declare (not safe)) (_else6682266884_)))))))
    (define cast
      (lambda (_descriptor66772_ _obj66774_)
        (if (let () (declare (not safe)) (##structure? _obj66774_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66779_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66772_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66782_
                      (let () (declare (not safe)) (##type-id _klass66779_)))
                     (_obj-klass66785_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66774_)))
                     (_obj-klass-id66788_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66785_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66782_ _obj-klass-id66788_))
                    _obj66774_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66785_))
                        (let ((__tmp67432
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66774_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor66772_ __tmp67432))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66782_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66788_))
                          (let ((_prototype66798_
                                 (let ((_$e66792_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66792_
                                       ((lambda (_prototype66795_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66795_)
                                        _$e66792_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor66772_
                                            _klass66779_
                                            _obj-klass66785_)))))))
                            ((lambda (_prototype66800_ _obj66801_)
                               (let ((_instance66803_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype66800_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance66803_
                                    _obj66801_
                                    '1
                                    '#f
                                    'cast))
                                 _instance66803_))
                             _prototype66798_
                             _obj66774_)))))))
            ((lambda (_obj66805_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj66805_)))
             _obj66774_))))
    (define try-cast
      (lambda (_descriptor66737_ _obj66739_)
        (if (let () (declare (not safe)) (##structure? _obj66739_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66744_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66737_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66747_
                      (let () (declare (not safe)) (##type-id _klass66744_)))
                     (_obj-klass66750_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66739_)))
                     (_obj-klass-id66753_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66750_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66747_ _obj-klass-id66753_))
                    _obj66739_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66750_))
                        (let ((__tmp67433
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66739_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor66737_ __tmp67433))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66747_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66753_))
                          (let ((_prototype66763_
                                 (let ((_$e66757_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66757_
                                       ((lambda (_prototype66760_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66760_)
                                        _$e66757_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor66737_
                                            _klass66744_
                                            _obj-klass66750_)))))))
                            ((lambda (_prototype66765_ _obj66766_)
                               (if _prototype66765_
                                   (let ((_instance66768_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype66765_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance66768_
                                        _obj66766_
                                        '1
                                        '#f
                                        'cast))
                                     _instance66768_)
                                   '#f))
                             _prototype66763_
                             _obj66739_)))))))
            ((lambda (_obj66770_) '#f) _obj66739_))))
    (define satisfies?
      (lambda (_descriptor66704_ _obj66706_)
        (if (let () (declare (not safe)) (##structure? _obj66706_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66711_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66704_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66714_
                      (let () (declare (not safe)) (##type-id _klass66711_)))
                     (_obj-klass66717_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66706_)))
                     (_obj-klass-id66720_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66717_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66714_ _obj-klass-id66720_))
                    _obj66706_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66717_))
                        (let ((__tmp67434
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66706_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor66704_ __tmp67434))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66714_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66720_))
                          (let ((_prototype66730_
                                 (let ((_$e66724_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66724_
                                       ((lambda (_prototype66727_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype66727_)
                                        _$e66724_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor66704_
                                            _klass66711_
                                            _obj-klass66717_)))))))
                            ((lambda (_prototype66732_ _obj66733_)
                               (if _prototype66732_ '#t '#f))
                             _prototype66730_
                             _obj66706_)))))))
            ((lambda (_obj66735_) '#f) _obj66706_))))))
