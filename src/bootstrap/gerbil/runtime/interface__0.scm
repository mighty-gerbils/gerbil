(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708418154)
  (begin
    (define CastError::t
      (let ((__tmp67439 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp67439
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args67432_ (apply make-instance CastError::t _$args67432_)))
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
      (lambda (_where67306_ _message67307_ . _irritants67308_)
        (raise (let ((__obj67435
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj67435
                  _message67307_
                  'where:
                  _where67306_
                  'irritants:
                  _irritants67308_)
                 __obj67435))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp67442 (list))
            (__tmp67440
             (let ((__tmp67441
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp67441 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp67442
         '(__object)
         __tmp67440
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
      (let ((__tmp67447 (list))
            (__tmp67443
             (let ((__tmp67446
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp67444
                    (let ((__tmp67445
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp67445 '()))))
               (declare (not safe))
               (cons __tmp67446 __tmp67444))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp67447
         '(type methods)
         __tmp67443
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67303_
        (apply make-instance interface-descriptor::t _$args67303_)))
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
      (lambda (_key67301_)
        (let ((__tmp67449
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67301_))))
              (__tmp67448
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67301_)))))
          (declare (not safe))
          (##fxxor __tmp67449 __tmp67448))))
    (define __interface-test-key
      (lambda (_a67298_ _b67299_)
        (if (let ((__tmp67453 (let () (declare (not safe)) (##car _a67298_)))
                  (__tmp67452 (let () (declare (not safe)) (##car _b67299_))))
              (declare (not safe))
              (##eq? __tmp67453 __tmp67452))
            (let ((__tmp67451 (let () (declare (not safe)) (##cdr _a67298_)))
                  (__tmp67450 (let () (declare (not safe)) (##cdr _b67299_))))
              (declare (not safe))
              (##eq? __tmp67451 __tmp67450))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67279_ _seed67281_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67279_
           __interface-hash-key
           __interface-test-key
           _seed67281_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67287_ '#f) (_seed67289_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67287_ _seed67289_))))
    (define make-prototype-table__1
      (lambda (_size-hint67291_)
        (let ((_seed67293_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67291_ _seed67293_))))
    (define make-prototype-table
      (lambda _g67455_
        (let ((_g67454_ (let () (declare (not safe)) (##length _g67455_))))
          (cond ((let () (declare (not safe)) (##fx= _g67454_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g67455_))
                ((let () (declare (not safe)) (##fx= _g67454_ 1))
                 (apply (lambda (_size-hint67291_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67291_)))
                        _g67455_))
                ((let () (declare (not safe)) (##fx= _g67454_ 2))
                 (apply (lambda (_size-hint67295_ _seed67296_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67295_
                             _seed67296_)))
                        _g67455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g67455_))))))
    (define prototype-table-ref
      (lambda (_tab67236_ _key67237_ _default67238_)
        (let ((_table67240_
               (let () (declare (not safe)) (&raw-table-table _tab67236_)))
              (_seed67241_
               (let () (declare (not safe)) (&raw-table-seed _tab67236_))))
          (let* ((_h67243_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67237_))
                         _seed67241_))
                 (_size67246_ (vector-length _table67240_))
                 (_entries67249_ (fxquotient _size67246_ '2))
                 (_start67252_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67243_ _entries67249_)
                   '1)))
            (let _loop67256_ ((_probe67259_ _start67252_)
                              (_i67261_ '1)
                              (_deleted67263_ '#f))
              (let ((_k67266_ (vector-ref _table67240_ _probe67259_)))
                (if (let ((__tmp67462 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67266_ __tmp67462))
                    _default67238_
                    (if (let ((__tmp67461 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67266_ __tmp67461))
                        (let ((__tmp67460
                               (let ((_next-probe67269_
                                      (fx+ _start67252_
                                           _i67261_
                                           (fx* _i67261_ _i67261_))))
                                 (fxmodulo _next-probe67269_ _size67246_)))
                              (__tmp67459 (fx+ _i67261_ '1))
                              (__tmp67458
                               (let ((_$e67272_ _deleted67263_))
                                 (if _$e67272_ _$e67272_ _probe67259_))))
                          (declare (not safe))
                          (_loop67256_ __tmp67460 __tmp67459 __tmp67458))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67237_ _k67266_))
                            (vector-ref _table67240_ (fx+ _probe67259_ '1))
                            (let ((__tmp67457
                                   (let ((_next-probe67275_
                                          (fx+ _start67252_
                                               _i67261_
                                               (fx* _i67261_ _i67261_))))
                                     (fxmodulo _next-probe67275_ _size67246_)))
                                  (__tmp67456 (fx+ _i67261_ '1)))
                              (declare (not safe))
                              (_loop67256_
                               __tmp67457
                               __tmp67456
                               _deleted67263_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67232_ _key67233_ _value67234_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67232_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67232_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67232_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67232_ _key67233_ _value67234_))))
    (define __prototype-table-set!
      (lambda (_tab67187_ _key67188_ _value67189_)
        (let ((_table67192_
               (let () (declare (not safe)) (&raw-table-table _tab67187_)))
              (_seed67193_
               (let () (declare (not safe)) (&raw-table-seed _tab67187_))))
          (let* ((_h67195_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67188_))
                         _seed67193_))
                 (_size67198_ (vector-length _table67192_))
                 (_entries67201_ (fxquotient _size67198_ '2))
                 (_start67204_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67195_ _entries67201_)
                   '1)))
            (let _loop67208_ ((_probe67211_ _start67204_)
                              (_i67213_ '1)
                              (_deleted67215_ '#f))
              (let ((_k67218_ (vector-ref _table67192_ _probe67211_)))
                (if (let ((__tmp67472 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67218_ __tmp67472))
                    (if _deleted67215_
                        (begin
                          (vector-set! _table67192_ _deleted67215_ _key67188_)
                          (vector-set!
                           _table67192_
                           (fx+ _deleted67215_ '1)
                           _value67189_)
                          ((lambda ()
                             (let ((__tmp67471
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67187_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67187_
                                __tmp67471)))))
                        (begin
                          (vector-set! _table67192_ _probe67211_ _key67188_)
                          (vector-set!
                           _table67192_
                           (fx+ _probe67211_ '1)
                           _value67189_)
                          ((lambda ()
                             (let ((__tmp67469
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67187_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67187_ __tmp67469))
                             (let ((__tmp67470
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67187_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67187_
                                __tmp67470))))))
                    (if (let ((__tmp67468 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67218_ __tmp67468))
                        (let ((__tmp67467
                               (let ((_next-probe67223_
                                      (fx+ _start67204_
                                           _i67213_
                                           (fx* _i67213_ _i67213_))))
                                 (fxmodulo _next-probe67223_ _size67198_)))
                              (__tmp67466 (fx+ _i67213_ '1))
                              (__tmp67465
                               (let ((_$e67226_ _deleted67215_))
                                 (if _$e67226_ _$e67226_ _probe67211_))))
                          (declare (not safe))
                          (_loop67208_ __tmp67467 __tmp67466 __tmp67465))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67188_ _k67218_))
                            (begin
                              (vector-set!
                               _table67192_
                               _probe67211_
                               _key67188_)
                              (vector-set!
                               _table67192_
                               (fx+ _probe67211_ '1)
                               _value67189_))
                            (let ((__tmp67464
                                   (let ((_next-probe67229_
                                          (fx+ _start67204_
                                               _i67213_
                                               (fx* _i67213_ _i67213_))))
                                     (fxmodulo _next-probe67229_ _size67198_)))
                                  (__tmp67463 (fx+ _i67213_ '1)))
                              (declare (not safe))
                              (_loop67208_
                               __tmp67464
                               __tmp67463
                               _deleted67215_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67182_
               _key67183_
               _prototype-table-update!67184_
               _default67185_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67182_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67182_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67182_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67182_
           _key67183_
           _prototype-table-update!67184_
           _default67185_))))
    (define __prototype-table-update!
      (lambda (_tab67136_
               _key67137_
               _prototype-table-update!67138_
               _default67139_)
        (let ((_table67142_
               (let () (declare (not safe)) (&raw-table-table _tab67136_)))
              (_seed67143_
               (let () (declare (not safe)) (&raw-table-seed _tab67136_))))
          (let* ((_h67145_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67137_))
                         _seed67143_))
                 (_size67148_ (vector-length _table67142_))
                 (_entries67151_ (fxquotient _size67148_ '2))
                 (_start67154_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67145_ _entries67151_)
                   '1)))
            (let _loop67158_ ((_probe67161_ _start67154_)
                              (_i67163_ '1)
                              (_deleted67165_ '#f))
              (let ((_k67168_ (vector-ref _table67142_ _probe67161_)))
                (if (let ((__tmp67482 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67168_ __tmp67482))
                    (if _deleted67165_
                        (begin
                          (vector-set! _table67142_ _deleted67165_ _key67137_)
                          (vector-set!
                           _table67142_
                           (fx+ _deleted67165_ '1)
                           (_prototype-table-update!67138_ _default67139_))
                          ((lambda ()
                             (let ((__tmp67481
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67136_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67136_
                                __tmp67481)))))
                        (begin
                          (vector-set! _table67142_ _probe67161_ _key67137_)
                          (vector-set!
                           _table67142_
                           (fx+ _probe67161_ '1)
                           (_prototype-table-update!67138_ _default67139_))
                          ((lambda ()
                             (let ((__tmp67479
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67136_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67136_ __tmp67479))
                             (let ((__tmp67480
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67136_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67136_
                                __tmp67480))))))
                    (if (let ((__tmp67478 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67168_ __tmp67478))
                        (let ((__tmp67477
                               (let ((_next-probe67173_
                                      (fx+ _start67154_
                                           _i67163_
                                           (fx* _i67163_ _i67163_))))
                                 (fxmodulo _next-probe67173_ _size67148_)))
                              (__tmp67476 (fx+ _i67163_ '1))
                              (__tmp67475
                               (let ((_$e67176_ _deleted67165_))
                                 (if _$e67176_ _$e67176_ _probe67161_))))
                          (declare (not safe))
                          (_loop67158_ __tmp67477 __tmp67476 __tmp67475))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67137_ _k67168_))
                            (begin
                              (vector-set!
                               _table67142_
                               _probe67161_
                               _key67137_)
                              (vector-set!
                               _table67142_
                               (fx+ _probe67161_ '1)
                               (_prototype-table-update!67138_
                                (vector-ref
                                 _table67142_
                                 (fx+ _probe67161_ '1)))))
                            (let ((__tmp67474
                                   (let ((_next-probe67179_
                                          (fx+ _start67154_
                                               _i67163_
                                               (fx* _i67163_ _i67163_))))
                                     (fxmodulo _next-probe67179_ _size67148_)))
                                  (__tmp67473 (fx+ _i67163_ '1)))
                              (declare (not safe))
                              (_loop67158_
                               __tmp67474
                               __tmp67473
                               _deleted67165_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67095_ _key67097_)
        (let ((_table67100_
               (let () (declare (not safe)) (&raw-table-table _tab67095_)))
              (_seed67102_
               (let () (declare (not safe)) (&raw-table-seed _tab67095_))))
          (let* ((_h67105_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67097_))
                         _seed67102_))
                 (_size67108_ (vector-length _table67100_))
                 (_entries67111_ (fxquotient _size67108_ '2))
                 (_start67114_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67105_ _entries67111_)
                   '1)))
            (let _loop67118_ ((_probe67121_ _start67114_) (_i67123_ '1))
              (let ((_k67126_ (vector-ref _table67100_ _probe67121_)))
                (if (let ((__tmp67489 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67126_ __tmp67489))
                    '#!void
                    (if (let ((__tmp67488 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67126_ __tmp67488))
                        (let ((__tmp67487
                               (let ((_next-probe67129_
                                      (fx+ _start67114_
                                           _i67123_
                                           (fx* _i67123_ _i67123_))))
                                 (fxmodulo _next-probe67129_ _size67108_)))
                              (__tmp67486 (fx+ _i67123_ '1)))
                          (declare (not safe))
                          (_loop67118_ __tmp67487 __tmp67486))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67097_ _k67126_))
                            (begin
                              (vector-set!
                               _table67100_
                               _probe67121_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67100_
                               (fx+ _probe67121_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp67485
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67095_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67095_
                                    __tmp67485)))))
                            (let ((__tmp67484
                                   (let ((_next-probe67133_
                                          (fx+ _start67114_
                                               _i67123_
                                               (fx* _i67123_ _i67123_))))
                                     (fxmodulo _next-probe67133_ _size67108_)))
                                  (__tmp67483 (fx+ _i67123_ '1)))
                              (declare (not safe))
                              (_loop67118_ __tmp67484 __tmp67483)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67087_)
        (let ((_super6708867090_
               (let () (declare (not safe)) (##type-super _klass67087_))))
          (if _super6708867090_
              (let ((_super67093_ _super6708867090_))
                (let ((__tmp67491
                       (let () (declare (not safe)) (##type-id _super67093_)))
                      (__tmp67490
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp67491 __tmp67490)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor66977_ _klass66978_ _obj-klass66979_)
        (let _loop66981_ ((_rest66984_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66977_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66986_ '0)
                          (_methods66988_ '()))
          (let* ((_rest6699066998_ _rest66984_)
                 (_else6699267060_
                  (lambda ()
                    (let ((_prototype67006_
                           (let ((__obj67437
                                  (let ((__tmp67492
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66986_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66978_
                                     __tmp67492))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67437 '#f))
                             __obj67437)))
                      (let _loop67009_ ((_rest67011_ _methods66988_)
                                        (_off67012_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66986_ '1))))
                        (let* ((_rest6701467022_ _rest67011_)
                               (_else6701667041_
                                (lambda ()
                                  (let ((_prototype-key67030_
                                         (let ((__tmp67494
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66978_)))
                                               (__tmp67493
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66979_))))
                                           (declare (not safe))
                                           (cons __tmp67494 __tmp67493))))
                                    (let ()
                                      (declare (not interrupts-enabled))
                                      (let _again67035_ ()
                                        (if (let ((__tmp67495
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-cas!
                                                      __interface-prototypes-mx
                                                      '0
                                                      '1
                                                      '0))))
                                              (declare (not safe))
                                              (##fx= __tmp67495 '0))
                                            '#!void
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##thread-yield!))
                                              (let ()
                                                (declare (not safe))
                                                (_again67035_))))))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key67030_
                                       _prototype67006_))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    ((lambda (_prototype67039_)
                                       _prototype67039_)
                                     _prototype67006_))))
                               (_K6701867048_
                                (lambda (_rest67044_ _method67045_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype67006_
                                     _method67045_
                                     _off67012_
                                     _klass66978_
                                     '#f))
                                  (let ((__tmp67496
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off67012_ '1))))
                                    (declare (not safe))
                                    (_loop67009_ _rest67044_ __tmp67496)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6701467022_))
                              (let ((_hd6701967051_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6701467022_)))
                                    (_tl6702067053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6701467022_))))
                                (let* ((_method67056_ _hd6701967051_)
                                       (_rest67058_ _tl6702067053_))
                                  (declare (not safe))
                                  (_K6701867048_ _rest67058_ _method67056_)))
                              (let ()
                                (declare (not safe))
                                (_else6701667041_))))))))
                 (_K6699467075_
                  (lambda (_rest67063_ _method-name67064_)
                    (let ((_$e67067_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66979_
                              '#f
                              _method-name67064_))))
                      (if _$e67067_
                          ((lambda (_method67070_)
                             (let ((__tmp67498
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66986_ '1)))
                                   (__tmp67497
                                    (let ()
                                      (declare (not safe))
                                      (cons _method67070_ _methods66988_))))
                               (declare (not safe))
                               (_loop66981_
                                _rest67063_
                                __tmp67498
                                __tmp67497)))
                           _$e67067_)
                          ((lambda (_klass67072_ _method-name67073_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass67072_
                                'method:
                                _method-name67073_)))
                           _klass66978_
                           _method-name67064_))))))
            (if (let () (declare (not safe)) (##pair? _rest6699066998_))
                (let ((_hd6699567078_
                       (let () (declare (not safe)) (##car _rest6699066998_)))
                      (_tl6699667080_
                       (let () (declare (not safe)) (##cdr _rest6699066998_))))
                  (let* ((_method-name67083_ _hd6699567078_)
                         (_rest67085_ _tl6699667080_))
                    (declare (not safe))
                    (_K6699467075_ _rest67085_ _method-name67083_)))
                (let () (declare (not safe)) (_else6699267060_)))))))
    (define try-create-prototype
      (lambda (_descriptor66867_ _klass66868_ _obj-klass66869_)
        (let _loop66871_ ((_rest66874_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor66867_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count66876_ '0)
                          (_methods66878_ '()))
          (let* ((_rest6688066888_ _rest66874_)
                 (_else6688266950_
                  (lambda ()
                    (let ((_prototype66896_
                           (let ((__obj67438
                                  (let ((__tmp67499
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66876_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass66868_
                                     __tmp67499))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj67438 '#f))
                             __obj67438)))
                      (let _loop66899_ ((_rest66901_ _methods66878_)
                                        (_off66902_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count66876_ '1))))
                        (let* ((_rest6690466912_ _rest66901_)
                               (_else6690666931_
                                (lambda ()
                                  (let ((_prototype-key66920_
                                         (let ((__tmp67501
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass66868_)))
                                               (__tmp67500
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass66869_))))
                                           (declare (not safe))
                                           (cons __tmp67501 __tmp67500))))
                                    (let ()
                                      (declare (not interrupts-enabled))
                                      (let _again66925_ ()
                                        (if (let ((__tmp67502
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-cas!
                                                      __interface-prototypes-mx
                                                      '0
                                                      '1
                                                      '0))))
                                              (declare (not safe))
                                              (##fx= __tmp67502 '0))
                                            '#!void
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##thread-yield!))
                                              (let ()
                                                (declare (not safe))
                                                (_again66925_))))))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key66920_
                                       _prototype66896_))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    ((lambda (_prototype66929_)
                                       _prototype66929_)
                                     _prototype66896_))))
                               (_K6690866938_
                                (lambda (_rest66934_ _method66935_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype66896_
                                     _method66935_
                                     _off66902_
                                     _klass66868_
                                     '#f))
                                  (let ((__tmp67503
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off66902_ '1))))
                                    (declare (not safe))
                                    (_loop66899_ _rest66934_ __tmp67503)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6690466912_))
                              (let ((_hd6690966941_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6690466912_)))
                                    (_tl6691066943_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6690466912_))))
                                (let* ((_method66946_ _hd6690966941_)
                                       (_rest66948_ _tl6691066943_))
                                  (declare (not safe))
                                  (_K6690866938_ _rest66948_ _method66946_)))
                              (let ()
                                (declare (not safe))
                                (_else6690666931_))))))))
                 (_K6688466965_
                  (lambda (_rest66953_ _method-name66954_)
                    (let ((_$e66957_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass66869_
                              '#f
                              _method-name66954_))))
                      (if _$e66957_
                          ((lambda (_method66960_)
                             (let ((__tmp67505
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count66876_ '1)))
                                   (__tmp67504
                                    (let ()
                                      (declare (not safe))
                                      (cons _method66960_ _methods66878_))))
                               (declare (not safe))
                               (_loop66871_
                                _rest66953_
                                __tmp67505
                                __tmp67504)))
                           _$e66957_)
                          ((lambda (_klass66962_ _method-name66963_) '#f)
                           _klass66868_
                           _method-name66954_))))))
            (if (let () (declare (not safe)) (##pair? _rest6688066888_))
                (let ((_hd6688566968_
                       (let () (declare (not safe)) (##car _rest6688066888_)))
                      (_tl6688666970_
                       (let () (declare (not safe)) (##cdr _rest6688066888_))))
                  (let* ((_method-name66973_ _hd6688566968_)
                         (_rest66975_ _tl6688666970_))
                    (declare (not safe))
                    (_K6688466965_ _rest66975_ _method-name66973_)))
                (let () (declare (not safe)) (_else6688266950_)))))))
    (define cast
      (lambda (_descriptor66826_ _obj66828_)
        (if (let () (declare (not safe)) (##structure? _obj66828_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66826_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66836_
                      (let () (declare (not safe)) (##type-id _klass66833_)))
                     (_obj-klass66839_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66828_)))
                     (_obj-klass-id66842_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66839_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66836_ _obj-klass-id66842_))
                    _obj66828_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66839_))
                        (let ((__tmp67507
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66828_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor66826_ __tmp67507))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again66848_ ()
                              (if (let ((__tmp67506
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67506 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again66848_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66836_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66842_))
                          (let ((_prototype66858_
                                 (let ((_$e66852_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66852_
                                       ((lambda (_prototype66855_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype66855_)
                                        _$e66852_)
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
                                            _descriptor66826_
                                            _klass66833_
                                            _obj-klass66839_)))))))
                            ((lambda (_prototype66860_ _obj66861_)
                               (let ((_instance66863_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype66860_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance66863_
                                    _obj66861_
                                    '1
                                    '#f
                                    'cast))
                                 _instance66863_))
                             _prototype66858_
                             _obj66828_)))))))
            ((lambda (_obj66865_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj66865_)))
             _obj66828_))))
    (define try-cast
      (lambda (_descriptor66785_ _obj66787_)
        (if (let () (declare (not safe)) (##structure? _obj66787_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66792_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66785_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66795_
                      (let () (declare (not safe)) (##type-id _klass66792_)))
                     (_obj-klass66798_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66787_)))
                     (_obj-klass-id66801_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66798_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66795_ _obj-klass-id66801_))
                    _obj66787_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66798_))
                        (let ((__tmp67509
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66787_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor66785_ __tmp67509))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again66807_ ()
                              (if (let ((__tmp67508
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67508 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again66807_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66795_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66801_))
                          (let ((_prototype66817_
                                 (let ((_$e66811_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66811_
                                       ((lambda (_prototype66814_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype66814_)
                                        _$e66811_)
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
                                            _descriptor66785_
                                            _klass66792_
                                            _obj-klass66798_)))))))
                            ((lambda (_prototype66819_ _obj66820_)
                               (if _prototype66819_
                                   (let ((_instance66822_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype66819_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance66822_
                                        _obj66820_
                                        '1
                                        '#f
                                        'cast))
                                     _instance66822_)
                                   '#f))
                             _prototype66817_
                             _obj66787_)))))))
            ((lambda (_obj66824_) '#f) _obj66787_))))
    (define satisfies?
      (lambda (_descriptor66746_ _obj66748_)
        (if (let () (declare (not safe)) (##structure? _obj66748_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass66753_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor66746_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id66756_
                      (let () (declare (not safe)) (##type-id _klass66753_)))
                     (_obj-klass66759_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj66748_)))
                     (_obj-klass-id66762_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass66759_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id66756_ _obj-klass-id66762_))
                    _obj66748_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass66759_))
                        (let ((__tmp67511
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj66748_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor66746_ __tmp67511))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again66768_ ()
                              (if (let ((__tmp67510
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67510 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again66768_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id66756_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id66762_))
                          (let ((_prototype66778_
                                 (let ((_$e66772_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e66772_
                                       ((lambda (_prototype66775_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype66775_)
                                        _$e66772_)
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
                                            _descriptor66746_
                                            _klass66753_
                                            _obj-klass66759_)))))))
                            ((lambda (_prototype66780_ _obj66781_)
                               (if _prototype66780_ '#t '#f))
                             _prototype66778_
                             _obj66748_)))))))
            ((lambda (_obj66783_) '#f) _obj66748_))))))
