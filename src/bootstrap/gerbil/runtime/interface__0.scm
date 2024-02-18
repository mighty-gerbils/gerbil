(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708271948)
  (begin
    (define CastError::t
      (let ((__tmp101320 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101320
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args97246_ (apply make-instance CastError::t _$args97246_)))
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
      (bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_where97120_ _message97121_ . _irritants97122_)
        (raise (let ((__obj101316
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101316
                  _message97121_
                  'where:
                  _where97120_
                  'irritants:
                  _irritants97122_)
                 __obj101316))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101323 (list))
            (__tmp101321
             (let ((__tmp101322
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp101322 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101323
         '(__object)
         __tmp101321
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
      (let ((__tmp101328 (list))
            (__tmp101324
             (let ((__tmp101327
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp101325
                    (let ((__tmp101326
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp101326 '()))))
               (declare (not safe))
               (cons __tmp101327 __tmp101325))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101328
         '(type methods)
         __tmp101324
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args97117_
        (apply make-instance interface-descriptor::t _$args97117_)))
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
      (lambda (_key97115_)
        (let ((__tmp101330
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key97115_))))
              (__tmp101329
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key97115_)))))
          (declare (not safe))
          (##fxxor __tmp101330 __tmp101329))))
    (define __interface-test-key
      (lambda (_a97112_ _b97113_)
        (if (let ((__tmp101334 (let () (declare (not safe)) (##car _a97112_)))
                  (__tmp101333 (let () (declare (not safe)) (##car _b97113_))))
              (declare (not safe))
              (##eq? __tmp101334 __tmp101333))
            (let ((__tmp101332 (let () (declare (not safe)) (##cdr _a97112_)))
                  (__tmp101331 (let () (declare (not safe)) (##cdr _b97113_))))
              (declare (not safe))
              (##eq? __tmp101332 __tmp101331))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint97093_ _seed97095_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint97093_
           __interface-hash-key
           __interface-test-key
           _seed97095_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint97101_ '#f) (_seed97103_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97101_ _seed97103_))))
    (define make-prototype-table__1
      (lambda (_size-hint97105_)
        (let ((_seed97107_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97105_ _seed97107_))))
    (define make-prototype-table
      (lambda _g101336_
        (let ((_g101335_ (let () (declare (not safe)) (##length _g101336_))))
          (cond ((let () (declare (not safe)) (##fx= _g101335_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101336_))
                ((let () (declare (not safe)) (##fx= _g101335_ 1))
                 (apply (lambda (_size-hint97105_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint97105_)))
                        _g101336_))
                ((let () (declare (not safe)) (##fx= _g101335_ 2))
                 (apply (lambda (_size-hint97109_ _seed97110_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint97109_
                             _seed97110_)))
                        _g101336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101336_))))))
    (define prototype-table-ref
      (lambda (_tab97050_ _key97051_ _default97052_)
        (let ((_table97054_
               (let () (declare (not safe)) (&raw-table-table _tab97050_)))
              (_seed97055_
               (let () (declare (not safe)) (&raw-table-seed _tab97050_))))
          (let* ((_h97057_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97051_))
                         _seed97055_))
                 (_size97060_ (vector-length _table97054_))
                 (_entries97063_ (fxquotient _size97060_ '2))
                 (_start97066_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97057_ _entries97063_)
                   '1)))
            (let _loop97070_ ((_probe97073_ _start97066_)
                              (_i97075_ '1)
                              (_deleted97077_ '#f))
              (let ((_k97080_ (vector-ref _table97054_ _probe97073_)))
                (if (let ((__tmp101343 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97080_ __tmp101343))
                    _default97052_
                    (if (let ((__tmp101342 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97080_ __tmp101342))
                        (let ((__tmp101341
                               (let ((_next-probe97083_
                                      (fx+ _start97066_
                                           _i97075_
                                           (fx* _i97075_ _i97075_))))
                                 (fxmodulo _next-probe97083_ _size97060_)))
                              (__tmp101340 (fx+ _i97075_ '1))
                              (__tmp101339
                               (let ((_$e97086_ _deleted97077_))
                                 (if _$e97086_ _$e97086_ _probe97073_))))
                          (declare (not safe))
                          (_loop97070_ __tmp101341 __tmp101340 __tmp101339))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97051_ _k97080_))
                            (vector-ref _table97054_ (fx+ _probe97073_ '1))
                            (let ((__tmp101338
                                   (let ((_next-probe97089_
                                          (fx+ _start97066_
                                               _i97075_
                                               (fx* _i97075_ _i97075_))))
                                     (fxmodulo _next-probe97089_ _size97060_)))
                                  (__tmp101337 (fx+ _i97075_ '1)))
                              (declare (not safe))
                              (_loop97070_
                               __tmp101338
                               __tmp101337
                               _deleted97077_)))))))))))
    (define prototype-table-set!
      (lambda (_tab97046_ _key97047_ _value97048_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97046_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97046_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97046_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab97046_ _key97047_ _value97048_))))
    (define __prototype-table-set!
      (lambda (_tab97001_ _key97002_ _value97003_)
        (let ((_table97006_
               (let () (declare (not safe)) (&raw-table-table _tab97001_)))
              (_seed97007_
               (let () (declare (not safe)) (&raw-table-seed _tab97001_))))
          (let* ((_h97009_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97002_))
                         _seed97007_))
                 (_size97012_ (vector-length _table97006_))
                 (_entries97015_ (fxquotient _size97012_ '2))
                 (_start97018_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97009_ _entries97015_)
                   '1)))
            (let _loop97022_ ((_probe97025_ _start97018_)
                              (_i97027_ '1)
                              (_deleted97029_ '#f))
              (let ((_k97032_ (vector-ref _table97006_ _probe97025_)))
                (if (let ((__tmp101353 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97032_ __tmp101353))
                    (if _deleted97029_
                        (begin
                          (vector-set! _table97006_ _deleted97029_ _key97002_)
                          (vector-set!
                           _table97006_
                           (fx+ _deleted97029_ '1)
                           _value97003_)
                          ((lambda ()
                             (let ((__tmp101352
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97001_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97001_
                                __tmp101352)))))
                        (begin
                          (vector-set! _table97006_ _probe97025_ _key97002_)
                          (vector-set!
                           _table97006_
                           (fx+ _probe97025_ '1)
                           _value97003_)
                          ((lambda ()
                             (let ((__tmp101350
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab97001_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab97001_ __tmp101350))
                             (let ((__tmp101351
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97001_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97001_
                                __tmp101351))))))
                    (if (let ((__tmp101349 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97032_ __tmp101349))
                        (let ((__tmp101348
                               (let ((_next-probe97037_
                                      (fx+ _start97018_
                                           _i97027_
                                           (fx* _i97027_ _i97027_))))
                                 (fxmodulo _next-probe97037_ _size97012_)))
                              (__tmp101347 (fx+ _i97027_ '1))
                              (__tmp101346
                               (let ((_$e97040_ _deleted97029_))
                                 (if _$e97040_ _$e97040_ _probe97025_))))
                          (declare (not safe))
                          (_loop97022_ __tmp101348 __tmp101347 __tmp101346))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97002_ _k97032_))
                            (begin
                              (vector-set!
                               _table97006_
                               _probe97025_
                               _key97002_)
                              (vector-set!
                               _table97006_
                               (fx+ _probe97025_ '1)
                               _value97003_))
                            (let ((__tmp101345
                                   (let ((_next-probe97043_
                                          (fx+ _start97018_
                                               _i97027_
                                               (fx* _i97027_ _i97027_))))
                                     (fxmodulo _next-probe97043_ _size97012_)))
                                  (__tmp101344 (fx+ _i97027_ '1)))
                              (declare (not safe))
                              (_loop97022_
                               __tmp101345
                               __tmp101344
                               _deleted97029_)))))))))))
    (define prototype-table-update!
      (lambda (_tab96996_
               _key96997_
               _prototype-table-update!96998_
               _default96999_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab96996_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab96996_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab96996_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab96996_
           _key96997_
           _prototype-table-update!96998_
           _default96999_))))
    (define __prototype-table-update!
      (lambda (_tab96950_
               _key96951_
               _prototype-table-update!96952_
               _default96953_)
        (let ((_table96956_
               (let () (declare (not safe)) (&raw-table-table _tab96950_)))
              (_seed96957_
               (let () (declare (not safe)) (&raw-table-seed _tab96950_))))
          (let* ((_h96959_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96951_))
                         _seed96957_))
                 (_size96962_ (vector-length _table96956_))
                 (_entries96965_ (fxquotient _size96962_ '2))
                 (_start96968_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96959_ _entries96965_)
                   '1)))
            (let _loop96972_ ((_probe96975_ _start96968_)
                              (_i96977_ '1)
                              (_deleted96979_ '#f))
              (let ((_k96982_ (vector-ref _table96956_ _probe96975_)))
                (if (let ((__tmp101363 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96982_ __tmp101363))
                    (if _deleted96979_
                        (begin
                          (vector-set! _table96956_ _deleted96979_ _key96951_)
                          (vector-set!
                           _table96956_
                           (fx+ _deleted96979_ '1)
                           (_prototype-table-update!96952_ _default96953_))
                          ((lambda ()
                             (let ((__tmp101362
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96950_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96950_
                                __tmp101362)))))
                        (begin
                          (vector-set! _table96956_ _probe96975_ _key96951_)
                          (vector-set!
                           _table96956_
                           (fx+ _probe96975_ '1)
                           (_prototype-table-update!96952_ _default96953_))
                          ((lambda ()
                             (let ((__tmp101360
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96950_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96950_ __tmp101360))
                             (let ((__tmp101361
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96950_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96950_
                                __tmp101361))))))
                    (if (let ((__tmp101359 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96982_ __tmp101359))
                        (let ((__tmp101358
                               (let ((_next-probe96987_
                                      (fx+ _start96968_
                                           _i96977_
                                           (fx* _i96977_ _i96977_))))
                                 (fxmodulo _next-probe96987_ _size96962_)))
                              (__tmp101357 (fx+ _i96977_ '1))
                              (__tmp101356
                               (let ((_$e96990_ _deleted96979_))
                                 (if _$e96990_ _$e96990_ _probe96975_))))
                          (declare (not safe))
                          (_loop96972_ __tmp101358 __tmp101357 __tmp101356))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96951_ _k96982_))
                            (begin
                              (vector-set!
                               _table96956_
                               _probe96975_
                               _key96951_)
                              (vector-set!
                               _table96956_
                               (fx+ _probe96975_ '1)
                               (_prototype-table-update!96952_
                                (vector-ref
                                 _table96956_
                                 (fx+ _probe96975_ '1)))))
                            (let ((__tmp101355
                                   (let ((_next-probe96993_
                                          (fx+ _start96968_
                                               _i96977_
                                               (fx* _i96977_ _i96977_))))
                                     (fxmodulo _next-probe96993_ _size96962_)))
                                  (__tmp101354 (fx+ _i96977_ '1)))
                              (declare (not safe))
                              (_loop96972_
                               __tmp101355
                               __tmp101354
                               _deleted96979_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96909_ _key96911_)
        (let ((_table96914_
               (let () (declare (not safe)) (&raw-table-table _tab96909_)))
              (_seed96916_
               (let () (declare (not safe)) (&raw-table-seed _tab96909_))))
          (let* ((_h96919_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96911_))
                         _seed96916_))
                 (_size96922_ (vector-length _table96914_))
                 (_entries96925_ (fxquotient _size96922_ '2))
                 (_start96928_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96919_ _entries96925_)
                   '1)))
            (let _loop96932_ ((_probe96935_ _start96928_) (_i96937_ '1))
              (let ((_k96940_ (vector-ref _table96914_ _probe96935_)))
                (if (let ((__tmp101370 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96940_ __tmp101370))
                    '#!void
                    (if (let ((__tmp101369 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96940_ __tmp101369))
                        (let ((__tmp101368
                               (let ((_next-probe96943_
                                      (fx+ _start96928_
                                           _i96937_
                                           (fx* _i96937_ _i96937_))))
                                 (fxmodulo _next-probe96943_ _size96922_)))
                              (__tmp101367 (fx+ _i96937_ '1)))
                          (declare (not safe))
                          (_loop96932_ __tmp101368 __tmp101367))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96911_ _k96940_))
                            (begin
                              (vector-set!
                               _table96914_
                               _probe96935_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96914_
                               (fx+ _probe96935_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101366
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96909_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96909_
                                    __tmp101366)))))
                            (let ((__tmp101365
                                   (let ((_next-probe96947_
                                          (fx+ _start96928_
                                               _i96937_
                                               (fx* _i96937_ _i96937_))))
                                     (fxmodulo _next-probe96947_ _size96922_)))
                                  (__tmp101364 (fx+ _i96937_ '1)))
                              (declare (not safe))
                              (_loop96932_ __tmp101365 __tmp101364)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96901_)
        (let ((_super9690296904_
               (let () (declare (not safe)) (##type-super _klass96901_))))
          (if _super9690296904_
              (let ((_super96907_ _super9690296904_))
                (let ((__tmp101372
                       (let () (declare (not safe)) (##type-id _super96907_)))
                      (__tmp101371
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp101372 __tmp101371)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor96797_ _klass96798_ _obj-klass96799_)
        (let _loop96801_ ((_rest96804_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96797_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96806_ '0)
                          (_methods96808_ '()))
          (let* ((_rest9681096818_ _rest96804_)
                 (_else9681296874_
                  (lambda ()
                    (let ((_prototype96826_
                           (let ((__obj101318
                                  (let ((__tmp101373
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96806_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96798_
                                     __tmp101373))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101318 '#f))
                             __obj101318)))
                      (let _loop96829_ ((_rest96831_ _methods96808_)
                                        (_off96832_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96806_ '1))))
                        (let* ((_rest9683496842_ _rest96831_)
                               (_else9683696855_
                                (lambda ()
                                  (let ((_prototype-key96850_
                                         (let ((__tmp101375
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96798_)))
                                               (__tmp101374
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96799_))))
                                           (declare (not safe))
                                           (cons __tmp101375 __tmp101374))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96850_
                                       _prototype96826_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96853_)
                                       _prototype96853_)
                                     _prototype96826_))))
                               (_K9683896862_
                                (lambda (_rest96858_ _method96859_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96826_
                                     _method96859_
                                     _off96832_
                                     _klass96798_
                                     '#f))
                                  (let ((__tmp101376
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96832_ '1))))
                                    (declare (not safe))
                                    (_loop96829_ _rest96858_ __tmp101376)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9683496842_))
                              (let ((_hd9683996865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9683496842_)))
                                    (_tl9684096867_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9683496842_))))
                                (let* ((_method96870_ _hd9683996865_)
                                       (_rest96872_ _tl9684096867_))
                                  (declare (not safe))
                                  (_K9683896862_ _rest96872_ _method96870_)))
                              (let ()
                                (declare (not safe))
                                (_else9683696855_))))))))
                 (_K9681496889_
                  (lambda (_rest96877_ _method-name96878_)
                    (let ((_$e96881_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96799_
                              '#f
                              _method-name96878_))))
                      (if _$e96881_
                          ((lambda (_method96884_)
                             (let ((__tmp101378
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96806_ '1)))
                                   (__tmp101377
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96884_ _methods96808_))))
                               (declare (not safe))
                               (_loop96801_
                                _rest96877_
                                __tmp101378
                                __tmp101377)))
                           _$e96881_)
                          ((lambda (_klass96886_ _method-name96887_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96886_
                                'method:
                                _method-name96887_)))
                           _klass96798_
                           _method-name96878_))))))
            (if (let () (declare (not safe)) (##pair? _rest9681096818_))
                (let ((_hd9681596892_
                       (let () (declare (not safe)) (##car _rest9681096818_)))
                      (_tl9681696894_
                       (let () (declare (not safe)) (##cdr _rest9681096818_))))
                  (let* ((_method-name96897_ _hd9681596892_)
                         (_rest96899_ _tl9681696894_))
                    (declare (not safe))
                    (_K9681496889_ _rest96899_ _method-name96897_)))
                (let () (declare (not safe)) (_else9681296874_)))))))
    (define try-create-prototype
      (lambda (_descriptor96693_ _klass96694_ _obj-klass96695_)
        (let _loop96697_ ((_rest96700_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96693_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96702_ '0)
                          (_methods96704_ '()))
          (let* ((_rest9670696714_ _rest96700_)
                 (_else9670896770_
                  (lambda ()
                    (let ((_prototype96722_
                           (let ((__obj101319
                                  (let ((__tmp101379
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96702_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96694_
                                     __tmp101379))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101319 '#f))
                             __obj101319)))
                      (let _loop96725_ ((_rest96727_ _methods96704_)
                                        (_off96728_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96702_ '1))))
                        (let* ((_rest9673096738_ _rest96727_)
                               (_else9673296751_
                                (lambda ()
                                  (let ((_prototype-key96746_
                                         (let ((__tmp101381
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96694_)))
                                               (__tmp101380
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96695_))))
                                           (declare (not safe))
                                           (cons __tmp101381 __tmp101380))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96746_
                                       _prototype96722_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96749_)
                                       _prototype96749_)
                                     _prototype96722_))))
                               (_K9673496758_
                                (lambda (_rest96754_ _method96755_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96722_
                                     _method96755_
                                     _off96728_
                                     _klass96694_
                                     '#f))
                                  (let ((__tmp101382
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96728_ '1))))
                                    (declare (not safe))
                                    (_loop96725_ _rest96754_ __tmp101382)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9673096738_))
                              (let ((_hd9673596761_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9673096738_)))
                                    (_tl9673696763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9673096738_))))
                                (let* ((_method96766_ _hd9673596761_)
                                       (_rest96768_ _tl9673696763_))
                                  (declare (not safe))
                                  (_K9673496758_ _rest96768_ _method96766_)))
                              (let ()
                                (declare (not safe))
                                (_else9673296751_))))))))
                 (_K9671096785_
                  (lambda (_rest96773_ _method-name96774_)
                    (let ((_$e96777_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96695_
                              '#f
                              _method-name96774_))))
                      (if _$e96777_
                          ((lambda (_method96780_)
                             (let ((__tmp101384
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96702_ '1)))
                                   (__tmp101383
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96780_ _methods96704_))))
                               (declare (not safe))
                               (_loop96697_
                                _rest96773_
                                __tmp101384
                                __tmp101383)))
                           _$e96777_)
                          ((lambda (_klass96782_ _method-name96783_) '#f)
                           _klass96694_
                           _method-name96774_))))))
            (if (let () (declare (not safe)) (##pair? _rest9670696714_))
                (let ((_hd9671196788_
                       (let () (declare (not safe)) (##car _rest9670696714_)))
                      (_tl9671296790_
                       (let () (declare (not safe)) (##cdr _rest9670696714_))))
                  (let* ((_method-name96793_ _hd9671196788_)
                         (_rest96795_ _tl9671296790_))
                    (declare (not safe))
                    (_K9671096785_ _rest96795_ _method-name96793_)))
                (let () (declare (not safe)) (_else9670896770_)))))))
    (define cast
      (lambda (_descriptor96658_ _obj96660_)
        (if (let () (declare (not safe)) (##structure? _obj96660_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96665_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96658_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96668_
                      (let () (declare (not safe)) (##type-id _klass96665_)))
                     (_obj-klass96671_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96660_)))
                     (_obj-klass-id96674_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96671_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96668_ _obj-klass-id96674_))
                    _obj96660_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96671_))
                        (let ((__tmp101385
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96660_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor96658_ __tmp101385))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96668_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96674_))
                          (let ((_prototype96684_
                                 (let ((_$e96678_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96678_
                                       ((lambda (_prototype96681_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96681_)
                                        _$e96678_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor96658_
                                            _klass96665_
                                            _obj-klass96671_)))))))
                            ((lambda (_prototype96686_ _obj96687_)
                               (let ((_instance96689_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype96686_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance96689_
                                    _obj96687_
                                    '1
                                    '#f
                                    'cast))
                                 _instance96689_))
                             _prototype96684_
                             _obj96660_)))))))
            ((lambda (_obj96691_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj96691_)))
             _obj96660_))))
    (define try-cast
      (lambda (_descriptor96623_ _obj96625_)
        (if (let () (declare (not safe)) (##structure? _obj96625_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96630_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96623_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96633_
                      (let () (declare (not safe)) (##type-id _klass96630_)))
                     (_obj-klass96636_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96625_)))
                     (_obj-klass-id96639_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96636_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96633_ _obj-klass-id96639_))
                    _obj96625_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96636_))
                        (let ((__tmp101386
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96625_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor96623_ __tmp101386))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96633_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96639_))
                          (let ((_prototype96649_
                                 (let ((_$e96643_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96643_
                                       ((lambda (_prototype96646_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96646_)
                                        _$e96643_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96623_
                                            _klass96630_
                                            _obj-klass96636_)))))))
                            ((lambda (_prototype96651_ _obj96652_)
                               (if _prototype96651_
                                   (let ((_instance96654_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype96651_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance96654_
                                        _obj96652_
                                        '1
                                        '#f
                                        'cast))
                                     _instance96654_)
                                   '#f))
                             _prototype96649_
                             _obj96625_)))))))
            ((lambda (_obj96656_) '#f) _obj96625_))))
    (define satisfies?
      (lambda (_descriptor96590_ _obj96592_)
        (if (let () (declare (not safe)) (##structure? _obj96592_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96597_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96590_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96600_
                      (let () (declare (not safe)) (##type-id _klass96597_)))
                     (_obj-klass96603_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96592_)))
                     (_obj-klass-id96606_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96603_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96600_ _obj-klass-id96606_))
                    _obj96592_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96603_))
                        (let ((__tmp101387
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96592_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor96590_ __tmp101387))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96600_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96606_))
                          (let ((_prototype96616_
                                 (let ((_$e96610_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96610_
                                       ((lambda (_prototype96613_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96613_)
                                        _$e96610_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96590_
                                            _klass96597_
                                            _obj-klass96603_)))))))
                            ((lambda (_prototype96618_ _obj96619_)
                               (if _prototype96618_ '#t '#f))
                             _prototype96616_
                             _obj96592_)))))))
            ((lambda (_obj96621_) '#f) _obj96592_))))))
