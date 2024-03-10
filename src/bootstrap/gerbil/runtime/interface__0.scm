(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710064746)
  (begin
    (define CastError::t
      (let ((__tmp65399 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp65399
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args65392_ (apply make-instance CastError::t _$args65392_)))
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
      (lambda (_where65266_ _message65267_ . _irritants65268_)
        (raise (let ((__obj65395
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj65395
                  _message65267_
                  'where:
                  _where65266_
                  'irritants:
                  _irritants65268_)
                 __obj65395))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp65402 (list))
            (__tmp65400
             (let ((__tmp65401
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp65401 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp65402
         '(__object)
         __tmp65400
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
      (let ((__tmp65407 (list))
            (__tmp65403
             (let ((__tmp65406
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp65404
                    (let ((__tmp65405
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp65405 '()))))
               (declare (not safe))
               (cons __tmp65406 __tmp65404))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp65407
         '(type methods)
         __tmp65403
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args65263_
        (apply make-instance interface-descriptor::t _$args65263_)))
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
      (lambda (_key65261_)
        (let ((__tmp65409
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key65261_))))
              (__tmp65408
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key65261_)))))
          (declare (not safe))
          (##fxxor __tmp65409 __tmp65408))))
    (define __interface-test-key
      (lambda (_a65258_ _b65259_)
        (if (let ((__tmp65411 (let () (declare (not safe)) (##car _a65258_)))
                  (__tmp65410 (let () (declare (not safe)) (##car _b65259_))))
              (declare (not safe))
              (##eq? __tmp65411 __tmp65410))
            (let ((__tmp65413 (let () (declare (not safe)) (##cdr _a65258_)))
                  (__tmp65412 (let () (declare (not safe)) (##cdr _b65259_))))
              (declare (not safe))
              (##eq? __tmp65413 __tmp65412))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint65239_ _seed65241_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint65239_
           __interface-hash-key
           __interface-test-key
           _seed65241_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint65247_ '#f) (_seed65249_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint65247_ _seed65249_))))
    (define make-prototype-table__1
      (lambda (_size-hint65251_)
        (let ((_seed65253_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint65251_ _seed65253_))))
    (define make-prototype-table
      (lambda _g65415_
        (let ((_g65414_ (let () (declare (not safe)) (##length _g65415_))))
          (cond ((let () (declare (not safe)) (##fx= _g65414_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g65415_))
                ((let () (declare (not safe)) (##fx= _g65414_ 1))
                 (apply (lambda (_size-hint65251_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint65251_)))
                        _g65415_))
                ((let () (declare (not safe)) (##fx= _g65414_ 2))
                 (apply (lambda (_size-hint65255_ _seed65256_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint65255_
                             _seed65256_)))
                        _g65415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g65415_))))))
    (define prototype-table-ref
      (lambda (_tab65196_ _key65197_ _default65198_)
        (let ((_table65200_
               (let () (declare (not safe)) (&raw-table-table _tab65196_)))
              (_seed65201_
               (let () (declare (not safe)) (&raw-table-seed _tab65196_))))
          (let* ((_h65203_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key65197_))
                         _seed65201_))
                 (_size65206_ (vector-length _table65200_))
                 (_entries65209_ (fxquotient _size65206_ '2))
                 (_start65212_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65203_ _entries65209_)
                   '1)))
            (let _loop65216_ ((_probe65219_ _start65212_)
                              (_i65221_ '1)
                              (_deleted65223_ '#f))
              (let ((_k65226_ (vector-ref _table65200_ _probe65219_)))
                (if (let ((__tmp65416 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k65226_ __tmp65416))
                    _default65198_
                    (if (let ((__tmp65417 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k65226_ __tmp65417))
                        (let ((__tmp65420
                               (let ((_next-probe65229_
                                      (fx+ _start65212_
                                           _i65221_
                                           (fx* _i65221_ _i65221_))))
                                 (fxmodulo _next-probe65229_ _size65206_)))
                              (__tmp65419 (fx+ _i65221_ '1))
                              (__tmp65418
                               (let ((_$e65232_ _deleted65223_))
                                 (if _$e65232_ _$e65232_ _probe65219_))))
                          (declare (not safe))
                          (_loop65216_ __tmp65420 __tmp65419 __tmp65418))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key65197_ _k65226_))
                            (vector-ref _table65200_ (fx+ _probe65219_ '1))
                            (let ((__tmp65422
                                   (let ((_next-probe65235_
                                          (fx+ _start65212_
                                               _i65221_
                                               (fx* _i65221_ _i65221_))))
                                     (fxmodulo _next-probe65235_ _size65206_)))
                                  (__tmp65421 (fx+ _i65221_ '1)))
                              (declare (not safe))
                              (_loop65216_
                               __tmp65422
                               __tmp65421
                               _deleted65223_)))))))))))
    (define prototype-table-set!
      (lambda (_tab65192_ _key65193_ _value65194_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab65192_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab65192_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab65192_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab65192_ _key65193_ _value65194_))))
    (define __prototype-table-set!
      (lambda (_tab65147_ _key65148_ _value65149_)
        (let ((_table65152_
               (let () (declare (not safe)) (&raw-table-table _tab65147_)))
              (_seed65153_
               (let () (declare (not safe)) (&raw-table-seed _tab65147_))))
          (let* ((_h65155_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key65148_))
                         _seed65153_))
                 (_size65158_ (vector-length _table65152_))
                 (_entries65161_ (fxquotient _size65158_ '2))
                 (_start65164_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65155_ _entries65161_)
                   '1)))
            (let _loop65168_ ((_probe65171_ _start65164_)
                              (_i65173_ '1)
                              (_deleted65175_ '#f))
              (let ((_k65178_ (vector-ref _table65152_ _probe65171_)))
                (if (let ((__tmp65423 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k65178_ __tmp65423))
                    (if _deleted65175_
                        (begin
                          (vector-set! _table65152_ _deleted65175_ _key65148_)
                          (vector-set!
                           _table65152_
                           (fx+ _deleted65175_ '1)
                           _value65149_)
                          ((lambda ()
                             (let ((__tmp65424
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab65147_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab65147_
                                __tmp65424)))))
                        (begin
                          (vector-set! _table65152_ _probe65171_ _key65148_)
                          (vector-set!
                           _table65152_
                           (fx+ _probe65171_ '1)
                           _value65149_)
                          ((lambda ()
                             (let ((__tmp65425
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab65147_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab65147_ __tmp65425))
                             (let ((__tmp65426
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab65147_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab65147_
                                __tmp65426))))))
                    (if (let ((__tmp65427 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k65178_ __tmp65427))
                        (let ((__tmp65430
                               (let ((_next-probe65183_
                                      (fx+ _start65164_
                                           _i65173_
                                           (fx* _i65173_ _i65173_))))
                                 (fxmodulo _next-probe65183_ _size65158_)))
                              (__tmp65429 (fx+ _i65173_ '1))
                              (__tmp65428
                               (let ((_$e65186_ _deleted65175_))
                                 (if _$e65186_ _$e65186_ _probe65171_))))
                          (declare (not safe))
                          (_loop65168_ __tmp65430 __tmp65429 __tmp65428))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key65148_ _k65178_))
                            (begin
                              (vector-set!
                               _table65152_
                               _probe65171_
                               _key65148_)
                              (vector-set!
                               _table65152_
                               (fx+ _probe65171_ '1)
                               _value65149_))
                            (let ((__tmp65432
                                   (let ((_next-probe65189_
                                          (fx+ _start65164_
                                               _i65173_
                                               (fx* _i65173_ _i65173_))))
                                     (fxmodulo _next-probe65189_ _size65158_)))
                                  (__tmp65431 (fx+ _i65173_ '1)))
                              (declare (not safe))
                              (_loop65168_
                               __tmp65432
                               __tmp65431
                               _deleted65175_)))))))))))
    (define prototype-table-update!
      (lambda (_tab65142_
               _key65143_
               _prototype-table-update!65144_
               _default65145_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab65142_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab65142_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab65142_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab65142_
           _key65143_
           _prototype-table-update!65144_
           _default65145_))))
    (define __prototype-table-update!
      (lambda (_tab65096_
               _key65097_
               _prototype-table-update!65098_
               _default65099_)
        (let ((_table65102_
               (let () (declare (not safe)) (&raw-table-table _tab65096_)))
              (_seed65103_
               (let () (declare (not safe)) (&raw-table-seed _tab65096_))))
          (let* ((_h65105_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key65097_))
                         _seed65103_))
                 (_size65108_ (vector-length _table65102_))
                 (_entries65111_ (fxquotient _size65108_ '2))
                 (_start65114_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65105_ _entries65111_)
                   '1)))
            (let _loop65118_ ((_probe65121_ _start65114_)
                              (_i65123_ '1)
                              (_deleted65125_ '#f))
              (let ((_k65128_ (vector-ref _table65102_ _probe65121_)))
                (if (let ((__tmp65433 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k65128_ __tmp65433))
                    (if _deleted65125_
                        (begin
                          (vector-set! _table65102_ _deleted65125_ _key65097_)
                          (vector-set!
                           _table65102_
                           (fx+ _deleted65125_ '1)
                           (_prototype-table-update!65098_ _default65099_))
                          ((lambda ()
                             (let ((__tmp65434
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab65096_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab65096_
                                __tmp65434)))))
                        (begin
                          (vector-set! _table65102_ _probe65121_ _key65097_)
                          (vector-set!
                           _table65102_
                           (fx+ _probe65121_ '1)
                           (_prototype-table-update!65098_ _default65099_))
                          ((lambda ()
                             (let ((__tmp65435
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab65096_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab65096_ __tmp65435))
                             (let ((__tmp65436
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab65096_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab65096_
                                __tmp65436))))))
                    (if (let ((__tmp65437 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k65128_ __tmp65437))
                        (let ((__tmp65440
                               (let ((_next-probe65133_
                                      (fx+ _start65114_
                                           _i65123_
                                           (fx* _i65123_ _i65123_))))
                                 (fxmodulo _next-probe65133_ _size65108_)))
                              (__tmp65439 (fx+ _i65123_ '1))
                              (__tmp65438
                               (let ((_$e65136_ _deleted65125_))
                                 (if _$e65136_ _$e65136_ _probe65121_))))
                          (declare (not safe))
                          (_loop65118_ __tmp65440 __tmp65439 __tmp65438))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key65097_ _k65128_))
                            (begin
                              (vector-set!
                               _table65102_
                               _probe65121_
                               _key65097_)
                              (vector-set!
                               _table65102_
                               (fx+ _probe65121_ '1)
                               (_prototype-table-update!65098_
                                (vector-ref
                                 _table65102_
                                 (fx+ _probe65121_ '1)))))
                            (let ((__tmp65442
                                   (let ((_next-probe65139_
                                          (fx+ _start65114_
                                               _i65123_
                                               (fx* _i65123_ _i65123_))))
                                     (fxmodulo _next-probe65139_ _size65108_)))
                                  (__tmp65441 (fx+ _i65123_ '1)))
                              (declare (not safe))
                              (_loop65118_
                               __tmp65442
                               __tmp65441
                               _deleted65125_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab65055_ _key65057_)
        (let ((_table65060_
               (let () (declare (not safe)) (&raw-table-table _tab65055_)))
              (_seed65062_
               (let () (declare (not safe)) (&raw-table-seed _tab65055_))))
          (let* ((_h65065_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key65057_))
                         _seed65062_))
                 (_size65068_ (vector-length _table65060_))
                 (_entries65071_ (fxquotient _size65068_ '2))
                 (_start65074_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65065_ _entries65071_)
                   '1)))
            (let _loop65078_ ((_probe65081_ _start65074_) (_i65083_ '1))
              (let ((_k65086_ (vector-ref _table65060_ _probe65081_)))
                (if (let ((__tmp65443 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k65086_ __tmp65443))
                    '#!void
                    (if (let ((__tmp65444 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k65086_ __tmp65444))
                        (let ((__tmp65446
                               (let ((_next-probe65089_
                                      (fx+ _start65074_
                                           _i65083_
                                           (fx* _i65083_ _i65083_))))
                                 (fxmodulo _next-probe65089_ _size65068_)))
                              (__tmp65445 (fx+ _i65083_ '1)))
                          (declare (not safe))
                          (_loop65078_ __tmp65446 __tmp65445))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key65057_ _k65086_))
                            (begin
                              (vector-set!
                               _table65060_
                               _probe65081_
                               (macro-deleted-obj))
                              (vector-set!
                               _table65060_
                               (fx+ _probe65081_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65447
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab65055_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab65055_
                                    __tmp65447)))))
                            (let ((__tmp65449
                                   (let ((_next-probe65093_
                                          (fx+ _start65074_
                                               _i65083_
                                               (fx* _i65083_ _i65083_))))
                                     (fxmodulo _next-probe65093_ _size65068_)))
                                  (__tmp65448 (fx+ _i65083_ '1)))
                              (declare (not safe))
                              (_loop65078_ __tmp65449 __tmp65448)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass65047_)
        (let ((_super6504865050_
               (let () (declare (not safe)) (##type-super _klass65047_))))
          (if _super6504865050_
              (let ((_super65053_ _super6504865050_))
                (let ((__tmp65451
                       (let () (declare (not safe)) (##type-id _super65053_)))
                      (__tmp65450
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp65451 __tmp65450)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor64934_ _klass64935_ _obj-klass64936_)
        (let ((_method-table64938_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass64936_))))
          (let _loop64941_ ((_rest64944_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor64934_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count64946_ '0)
                            (_methods64948_ '()))
            (let* ((_rest6495064958_ _rest64944_)
                   (_else6495265020_
                    (lambda ()
                      (let ((_prototype64966_
                             (let ((__obj65397
                                    (let ((__tmp65452
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64946_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass64935_
                                       __tmp65452))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj65397 '#f))
                               __obj65397)))
                        (let _loop64969_ ((_rest64971_ _methods64948_)
                                          (_off64972_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64946_ '1))))
                          (let* ((_rest6497464982_ _rest64971_)
                                 (_else6497665001_
                                  (lambda ()
                                    (let ((_prototype-key64990_
                                           (let ((__tmp65454
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass64935_)))
                                                 (__tmp65453
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass64936_))))
                                             (declare (not safe))
                                             (cons __tmp65454 __tmp65453))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again64995_ ()
                                          (if (let ((__tmp65455
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp65455 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again64995_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key64990_
                                         _prototype64966_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype64999_)
                                         _prototype64999_)
                                       _prototype64966_))))
                                 (_K6497865008_
                                  (lambda (_rest65004_ _method65005_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype64966_
                                       _method65005_
                                       _off64972_
                                       _klass64935_
                                       '#f))
                                    (let ((__tmp65456
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off64972_ '1))))
                                      (declare (not safe))
                                      (_loop64969_ _rest65004_ __tmp65456)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6497464982_))
                                (let ((_hd6497965011_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6497464982_)))
                                      (_tl6498065013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6497464982_))))
                                  (let* ((_method65016_ _hd6497965011_)
                                         (_rest65018_ _tl6498065013_))
                                    (declare (not safe))
                                    (_K6497865008_ _rest65018_ _method65016_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6497665001_))))))))
                   (_K6495465035_
                    (lambda (_rest65023_ _method-name65024_)
                      (let ((_$e65027_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table64938_
                                _method-name65024_
                                '#f))))
                        (if _$e65027_
                            ((lambda (_method65030_)
                               (let ((__tmp65458
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count64946_ '1)))
                                     (__tmp65457
                                      (let ()
                                        (declare (not safe))
                                        (cons _method65030_ _methods64948_))))
                                 (declare (not safe))
                                 (_loop64941_
                                  _rest65023_
                                  __tmp65458
                                  __tmp65457)))
                             _$e65027_)
                            ((lambda (_klass65032_ _method-name65033_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass65032_
                                  'method:
                                  _method-name65033_)))
                             _klass64935_
                             _method-name65024_))))))
              (if (let () (declare (not safe)) (##pair? _rest6495064958_))
                  (let ((_hd6495565038_
                         (let ()
                           (declare (not safe))
                           (##car _rest6495064958_)))
                        (_tl6495665040_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6495064958_))))
                    (let* ((_method-name65043_ _hd6495565038_)
                           (_rest65045_ _tl6495665040_))
                      (declare (not safe))
                      (_K6495465035_ _rest65045_ _method-name65043_)))
                  (let () (declare (not safe)) (_else6495265020_))))))))
    (define try-create-prototype
      (lambda (_descriptor64821_ _klass64822_ _obj-klass64823_)
        (let ((_method-table64825_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass64823_))))
          (let _loop64828_ ((_rest64831_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor64821_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count64833_ '0)
                            (_methods64835_ '()))
            (let* ((_rest6483764845_ _rest64831_)
                   (_else6483964907_
                    (lambda ()
                      (let ((_prototype64853_
                             (let ((__obj65398
                                    (let ((__tmp65459
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64833_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass64822_
                                       __tmp65459))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj65398 '#f))
                               __obj65398)))
                        (let _loop64856_ ((_rest64858_ _methods64835_)
                                          (_off64859_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64833_ '1))))
                          (let* ((_rest6486164869_ _rest64858_)
                                 (_else6486364888_
                                  (lambda ()
                                    (let ((_prototype-key64877_
                                           (let ((__tmp65461
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass64822_)))
                                                 (__tmp65460
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass64823_))))
                                             (declare (not safe))
                                             (cons __tmp65461 __tmp65460))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again64882_ ()
                                          (if (let ((__tmp65462
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp65462 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again64882_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key64877_
                                         _prototype64853_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype64886_)
                                         _prototype64886_)
                                       _prototype64853_))))
                                 (_K6486564895_
                                  (lambda (_rest64891_ _method64892_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype64853_
                                       _method64892_
                                       _off64859_
                                       _klass64822_
                                       '#f))
                                    (let ((__tmp65463
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off64859_ '1))))
                                      (declare (not safe))
                                      (_loop64856_ _rest64891_ __tmp65463)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6486164869_))
                                (let ((_hd6486664898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6486164869_)))
                                      (_tl6486764900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6486164869_))))
                                  (let* ((_method64903_ _hd6486664898_)
                                         (_rest64905_ _tl6486764900_))
                                    (declare (not safe))
                                    (_K6486564895_ _rest64905_ _method64903_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6486364888_))))))))
                   (_K6484164922_
                    (lambda (_rest64910_ _method-name64911_)
                      (let ((_$e64914_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table64825_
                                _method-name64911_
                                '#f))))
                        (if _$e64914_
                            ((lambda (_method64917_)
                               (let ((__tmp65465
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count64833_ '1)))
                                     (__tmp65464
                                      (let ()
                                        (declare (not safe))
                                        (cons _method64917_ _methods64835_))))
                                 (declare (not safe))
                                 (_loop64828_
                                  _rest64910_
                                  __tmp65465
                                  __tmp65464)))
                             _$e64914_)
                            ((lambda (_klass64919_ _method-name64920_) '#f)
                             _klass64822_
                             _method-name64911_))))))
              (if (let () (declare (not safe)) (##pair? _rest6483764845_))
                  (let ((_hd6484264925_
                         (let ()
                           (declare (not safe))
                           (##car _rest6483764845_)))
                        (_tl6484364927_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6483764845_))))
                    (let* ((_method-name64930_ _hd6484264925_)
                           (_rest64932_ _tl6484364927_))
                      (declare (not safe))
                      (_K6484164922_ _rest64932_ _method-name64930_)))
                  (let () (declare (not safe)) (_else6483964907_))))))))
    (define cast
      (lambda (_descriptor64780_ _obj64782_)
        (if (let () (declare (not safe)) (##structure? _obj64782_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64787_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64780_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64790_
                      (let () (declare (not safe)) (##type-id _klass64787_)))
                     (_obj-klass64793_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64782_)))
                     (_obj-klass-id64796_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64793_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64790_ _obj-klass-id64796_))
                    _obj64782_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64793_))
                        (let ((__tmp65466
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64782_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor64780_ __tmp65466))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64802_ ()
                              (if (let ((__tmp65467
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65467 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64802_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64790_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64796_))
                          (let ((_prototype64812_
                                 (let ((_$e64806_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64806_
                                       ((lambda (_prototype64809_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64809_)
                                        _$e64806_)
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
                                            _descriptor64780_
                                            _klass64787_
                                            _obj-klass64793_)))))))
                            ((lambda (_prototype64814_ _obj64815_)
                               (let ((_instance64817_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype64814_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance64817_
                                    _obj64815_
                                    '1
                                    '#f
                                    'cast))
                                 _instance64817_))
                             _prototype64812_
                             _obj64782_)))))))
            ((lambda (_obj64819_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj64819_)))
             _obj64782_))))
    (define try-cast
      (lambda (_descriptor64739_ _obj64741_)
        (if (let () (declare (not safe)) (##structure? _obj64741_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64739_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64749_
                      (let () (declare (not safe)) (##type-id _klass64746_)))
                     (_obj-klass64752_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64741_)))
                     (_obj-klass-id64755_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64752_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64749_ _obj-klass-id64755_))
                    _obj64741_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64752_))
                        (let ((__tmp65468
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64741_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor64739_ __tmp65468))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64761_ ()
                              (if (let ((__tmp65469
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65469 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64761_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64749_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64755_))
                          (let ((_prototype64771_
                                 (let ((_$e64765_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64765_
                                       ((lambda (_prototype64768_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64768_)
                                        _$e64765_)
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
                                            _descriptor64739_
                                            _klass64746_
                                            _obj-klass64752_)))))))
                            ((lambda (_prototype64773_ _obj64774_)
                               (if _prototype64773_
                                   (let ((_instance64776_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype64773_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance64776_
                                        _obj64774_
                                        '1
                                        '#f
                                        'cast))
                                     _instance64776_)
                                   '#f))
                             _prototype64771_
                             _obj64741_)))))))
            ((lambda (_obj64778_) '#f) _obj64741_))))
    (define satisfies?
      (lambda (_descriptor64700_ _obj64702_)
        (if (let () (declare (not safe)) (##structure? _obj64702_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64707_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64700_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64710_
                      (let () (declare (not safe)) (##type-id _klass64707_)))
                     (_obj-klass64713_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64702_)))
                     (_obj-klass-id64716_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64713_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64710_ _obj-klass-id64716_))
                    _obj64702_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64713_))
                        (let ((__tmp65470
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64702_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor64700_ __tmp65470))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64722_ ()
                              (if (let ((__tmp65471
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65471 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64722_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64710_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64716_))
                          (let ((_prototype64732_
                                 (let ((_$e64726_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64726_
                                       ((lambda (_prototype64729_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64729_)
                                        _$e64726_)
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
                                            _descriptor64700_
                                            _klass64707_
                                            _obj-klass64713_)))))))
                            ((lambda (_prototype64734_ _obj64735_)
                               (if _prototype64734_ '#t '#f))
                             _prototype64732_
                             _obj64702_)))))))
            ((lambda (_obj64737_) '#f) _obj64702_))))))
