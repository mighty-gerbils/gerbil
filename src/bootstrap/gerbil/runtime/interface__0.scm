(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708289479)
  (begin
    (define CastError::t
      (let ((__tmp101324 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101324
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args97250_ (apply make-instance CastError::t _$args97250_)))
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
      (lambda (_where97124_ _message97125_ . _irritants97126_)
        (raise (let ((__obj101320
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101320
                  _message97125_
                  'where:
                  _where97124_
                  'irritants:
                  _irritants97126_)
                 __obj101320))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101327 (list))
            (__tmp101325
             (let ((__tmp101326
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp101326 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101327
         '(__object)
         __tmp101325
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
      (let ((__tmp101332 (list))
            (__tmp101328
             (let ((__tmp101331
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp101329
                    (let ((__tmp101330
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp101330 '()))))
               (declare (not safe))
               (cons __tmp101331 __tmp101329))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101332
         '(type methods)
         __tmp101328
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args97121_
        (apply make-instance interface-descriptor::t _$args97121_)))
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
      (lambda (_key97119_)
        (let ((__tmp101334
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key97119_))))
              (__tmp101333
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key97119_)))))
          (declare (not safe))
          (##fxxor __tmp101334 __tmp101333))))
    (define __interface-test-key
      (lambda (_a97116_ _b97117_)
        (if (let ((__tmp101338 (let () (declare (not safe)) (##car _a97116_)))
                  (__tmp101337 (let () (declare (not safe)) (##car _b97117_))))
              (declare (not safe))
              (##eq? __tmp101338 __tmp101337))
            (let ((__tmp101336 (let () (declare (not safe)) (##cdr _a97116_)))
                  (__tmp101335 (let () (declare (not safe)) (##cdr _b97117_))))
              (declare (not safe))
              (##eq? __tmp101336 __tmp101335))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint97097_ _seed97099_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint97097_
           __interface-hash-key
           __interface-test-key
           _seed97099_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint97105_ '#f) (_seed97107_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97105_ _seed97107_))))
    (define make-prototype-table__1
      (lambda (_size-hint97109_)
        (let ((_seed97111_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97109_ _seed97111_))))
    (define make-prototype-table
      (lambda _g101340_
        (let ((_g101339_ (let () (declare (not safe)) (##length _g101340_))))
          (cond ((let () (declare (not safe)) (##fx= _g101339_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101340_))
                ((let () (declare (not safe)) (##fx= _g101339_ 1))
                 (apply (lambda (_size-hint97109_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint97109_)))
                        _g101340_))
                ((let () (declare (not safe)) (##fx= _g101339_ 2))
                 (apply (lambda (_size-hint97113_ _seed97114_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint97113_
                             _seed97114_)))
                        _g101340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101340_))))))
    (define prototype-table-ref
      (lambda (_tab97054_ _key97055_ _default97056_)
        (let ((_table97058_
               (let () (declare (not safe)) (&raw-table-table _tab97054_)))
              (_seed97059_
               (let () (declare (not safe)) (&raw-table-seed _tab97054_))))
          (let* ((_h97061_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97055_))
                         _seed97059_))
                 (_size97064_ (vector-length _table97058_))
                 (_entries97067_ (fxquotient _size97064_ '2))
                 (_start97070_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97061_ _entries97067_)
                   '1)))
            (let _loop97074_ ((_probe97077_ _start97070_)
                              (_i97079_ '1)
                              (_deleted97081_ '#f))
              (let ((_k97084_ (vector-ref _table97058_ _probe97077_)))
                (if (let ((__tmp101347 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97084_ __tmp101347))
                    _default97056_
                    (if (let ((__tmp101346 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97084_ __tmp101346))
                        (let ((__tmp101345
                               (let ((_next-probe97087_
                                      (fx+ _start97070_
                                           _i97079_
                                           (fx* _i97079_ _i97079_))))
                                 (fxmodulo _next-probe97087_ _size97064_)))
                              (__tmp101344 (fx+ _i97079_ '1))
                              (__tmp101343
                               (let ((_$e97090_ _deleted97081_))
                                 (if _$e97090_ _$e97090_ _probe97077_))))
                          (declare (not safe))
                          (_loop97074_ __tmp101345 __tmp101344 __tmp101343))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97055_ _k97084_))
                            (vector-ref _table97058_ (fx+ _probe97077_ '1))
                            (let ((__tmp101342
                                   (let ((_next-probe97093_
                                          (fx+ _start97070_
                                               _i97079_
                                               (fx* _i97079_ _i97079_))))
                                     (fxmodulo _next-probe97093_ _size97064_)))
                                  (__tmp101341 (fx+ _i97079_ '1)))
                              (declare (not safe))
                              (_loop97074_
                               __tmp101342
                               __tmp101341
                               _deleted97081_)))))))))))
    (define prototype-table-set!
      (lambda (_tab97050_ _key97051_ _value97052_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97050_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97050_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97050_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab97050_ _key97051_ _value97052_))))
    (define __prototype-table-set!
      (lambda (_tab97005_ _key97006_ _value97007_)
        (let ((_table97010_
               (let () (declare (not safe)) (&raw-table-table _tab97005_)))
              (_seed97011_
               (let () (declare (not safe)) (&raw-table-seed _tab97005_))))
          (let* ((_h97013_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97006_))
                         _seed97011_))
                 (_size97016_ (vector-length _table97010_))
                 (_entries97019_ (fxquotient _size97016_ '2))
                 (_start97022_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97013_ _entries97019_)
                   '1)))
            (let _loop97026_ ((_probe97029_ _start97022_)
                              (_i97031_ '1)
                              (_deleted97033_ '#f))
              (let ((_k97036_ (vector-ref _table97010_ _probe97029_)))
                (if (let ((__tmp101357 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97036_ __tmp101357))
                    (if _deleted97033_
                        (begin
                          (vector-set! _table97010_ _deleted97033_ _key97006_)
                          (vector-set!
                           _table97010_
                           (fx+ _deleted97033_ '1)
                           _value97007_)
                          ((lambda ()
                             (let ((__tmp101356
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97005_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97005_
                                __tmp101356)))))
                        (begin
                          (vector-set! _table97010_ _probe97029_ _key97006_)
                          (vector-set!
                           _table97010_
                           (fx+ _probe97029_ '1)
                           _value97007_)
                          ((lambda ()
                             (let ((__tmp101354
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab97005_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab97005_ __tmp101354))
                             (let ((__tmp101355
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97005_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97005_
                                __tmp101355))))))
                    (if (let ((__tmp101353 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97036_ __tmp101353))
                        (let ((__tmp101352
                               (let ((_next-probe97041_
                                      (fx+ _start97022_
                                           _i97031_
                                           (fx* _i97031_ _i97031_))))
                                 (fxmodulo _next-probe97041_ _size97016_)))
                              (__tmp101351 (fx+ _i97031_ '1))
                              (__tmp101350
                               (let ((_$e97044_ _deleted97033_))
                                 (if _$e97044_ _$e97044_ _probe97029_))))
                          (declare (not safe))
                          (_loop97026_ __tmp101352 __tmp101351 __tmp101350))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97006_ _k97036_))
                            (begin
                              (vector-set!
                               _table97010_
                               _probe97029_
                               _key97006_)
                              (vector-set!
                               _table97010_
                               (fx+ _probe97029_ '1)
                               _value97007_))
                            (let ((__tmp101349
                                   (let ((_next-probe97047_
                                          (fx+ _start97022_
                                               _i97031_
                                               (fx* _i97031_ _i97031_))))
                                     (fxmodulo _next-probe97047_ _size97016_)))
                                  (__tmp101348 (fx+ _i97031_ '1)))
                              (declare (not safe))
                              (_loop97026_
                               __tmp101349
                               __tmp101348
                               _deleted97033_)))))))))))
    (define prototype-table-update!
      (lambda (_tab97000_
               _key97001_
               _prototype-table-update!97002_
               _default97003_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97000_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97000_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97000_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab97000_
           _key97001_
           _prototype-table-update!97002_
           _default97003_))))
    (define __prototype-table-update!
      (lambda (_tab96954_
               _key96955_
               _prototype-table-update!96956_
               _default96957_)
        (let ((_table96960_
               (let () (declare (not safe)) (&raw-table-table _tab96954_)))
              (_seed96961_
               (let () (declare (not safe)) (&raw-table-seed _tab96954_))))
          (let* ((_h96963_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96955_))
                         _seed96961_))
                 (_size96966_ (vector-length _table96960_))
                 (_entries96969_ (fxquotient _size96966_ '2))
                 (_start96972_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96963_ _entries96969_)
                   '1)))
            (let _loop96976_ ((_probe96979_ _start96972_)
                              (_i96981_ '1)
                              (_deleted96983_ '#f))
              (let ((_k96986_ (vector-ref _table96960_ _probe96979_)))
                (if (let ((__tmp101367 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96986_ __tmp101367))
                    (if _deleted96983_
                        (begin
                          (vector-set! _table96960_ _deleted96983_ _key96955_)
                          (vector-set!
                           _table96960_
                           (fx+ _deleted96983_ '1)
                           (_prototype-table-update!96956_ _default96957_))
                          ((lambda ()
                             (let ((__tmp101366
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96954_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96954_
                                __tmp101366)))))
                        (begin
                          (vector-set! _table96960_ _probe96979_ _key96955_)
                          (vector-set!
                           _table96960_
                           (fx+ _probe96979_ '1)
                           (_prototype-table-update!96956_ _default96957_))
                          ((lambda ()
                             (let ((__tmp101364
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96954_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96954_ __tmp101364))
                             (let ((__tmp101365
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96954_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96954_
                                __tmp101365))))))
                    (if (let ((__tmp101363 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96986_ __tmp101363))
                        (let ((__tmp101362
                               (let ((_next-probe96991_
                                      (fx+ _start96972_
                                           _i96981_
                                           (fx* _i96981_ _i96981_))))
                                 (fxmodulo _next-probe96991_ _size96966_)))
                              (__tmp101361 (fx+ _i96981_ '1))
                              (__tmp101360
                               (let ((_$e96994_ _deleted96983_))
                                 (if _$e96994_ _$e96994_ _probe96979_))))
                          (declare (not safe))
                          (_loop96976_ __tmp101362 __tmp101361 __tmp101360))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96955_ _k96986_))
                            (begin
                              (vector-set!
                               _table96960_
                               _probe96979_
                               _key96955_)
                              (vector-set!
                               _table96960_
                               (fx+ _probe96979_ '1)
                               (_prototype-table-update!96956_
                                (vector-ref
                                 _table96960_
                                 (fx+ _probe96979_ '1)))))
                            (let ((__tmp101359
                                   (let ((_next-probe96997_
                                          (fx+ _start96972_
                                               _i96981_
                                               (fx* _i96981_ _i96981_))))
                                     (fxmodulo _next-probe96997_ _size96966_)))
                                  (__tmp101358 (fx+ _i96981_ '1)))
                              (declare (not safe))
                              (_loop96976_
                               __tmp101359
                               __tmp101358
                               _deleted96983_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96913_ _key96915_)
        (let ((_table96918_
               (let () (declare (not safe)) (&raw-table-table _tab96913_)))
              (_seed96920_
               (let () (declare (not safe)) (&raw-table-seed _tab96913_))))
          (let* ((_h96923_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96915_))
                         _seed96920_))
                 (_size96926_ (vector-length _table96918_))
                 (_entries96929_ (fxquotient _size96926_ '2))
                 (_start96932_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96923_ _entries96929_)
                   '1)))
            (let _loop96936_ ((_probe96939_ _start96932_) (_i96941_ '1))
              (let ((_k96944_ (vector-ref _table96918_ _probe96939_)))
                (if (let ((__tmp101374 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96944_ __tmp101374))
                    '#!void
                    (if (let ((__tmp101373 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96944_ __tmp101373))
                        (let ((__tmp101372
                               (let ((_next-probe96947_
                                      (fx+ _start96932_
                                           _i96941_
                                           (fx* _i96941_ _i96941_))))
                                 (fxmodulo _next-probe96947_ _size96926_)))
                              (__tmp101371 (fx+ _i96941_ '1)))
                          (declare (not safe))
                          (_loop96936_ __tmp101372 __tmp101371))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96915_ _k96944_))
                            (begin
                              (vector-set!
                               _table96918_
                               _probe96939_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96918_
                               (fx+ _probe96939_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101370
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96913_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96913_
                                    __tmp101370)))))
                            (let ((__tmp101369
                                   (let ((_next-probe96951_
                                          (fx+ _start96932_
                                               _i96941_
                                               (fx* _i96941_ _i96941_))))
                                     (fxmodulo _next-probe96951_ _size96926_)))
                                  (__tmp101368 (fx+ _i96941_ '1)))
                              (declare (not safe))
                              (_loop96936_ __tmp101369 __tmp101368)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96905_)
        (let ((_super9690696908_
               (let () (declare (not safe)) (##type-super _klass96905_))))
          (if _super9690696908_
              (let ((_super96911_ _super9690696908_))
                (let ((__tmp101376
                       (let () (declare (not safe)) (##type-id _super96911_)))
                      (__tmp101375
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp101376 __tmp101375)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor96801_ _klass96802_ _obj-klass96803_)
        (let _loop96805_ ((_rest96808_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96801_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96810_ '0)
                          (_methods96812_ '()))
          (let* ((_rest9681496822_ _rest96808_)
                 (_else9681696878_
                  (lambda ()
                    (let ((_prototype96830_
                           (let ((__obj101322
                                  (let ((__tmp101377
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96810_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96802_
                                     __tmp101377))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101322 '#f))
                             __obj101322)))
                      (let _loop96833_ ((_rest96835_ _methods96812_)
                                        (_off96836_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96810_ '1))))
                        (let* ((_rest9683896846_ _rest96835_)
                               (_else9684096859_
                                (lambda ()
                                  (let ((_prototype-key96854_
                                         (let ((__tmp101379
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96802_)))
                                               (__tmp101378
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96803_))))
                                           (declare (not safe))
                                           (cons __tmp101379 __tmp101378))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96854_
                                       _prototype96830_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96857_)
                                       _prototype96857_)
                                     _prototype96830_))))
                               (_K9684296866_
                                (lambda (_rest96862_ _method96863_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96830_
                                     _method96863_
                                     _off96836_
                                     _klass96802_
                                     '#f))
                                  (let ((__tmp101380
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96836_ '1))))
                                    (declare (not safe))
                                    (_loop96833_ _rest96862_ __tmp101380)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9683896846_))
                              (let ((_hd9684396869_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9683896846_)))
                                    (_tl9684496871_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9683896846_))))
                                (let* ((_method96874_ _hd9684396869_)
                                       (_rest96876_ _tl9684496871_))
                                  (declare (not safe))
                                  (_K9684296866_ _rest96876_ _method96874_)))
                              (let ()
                                (declare (not safe))
                                (_else9684096859_))))))))
                 (_K9681896893_
                  (lambda (_rest96881_ _method-name96882_)
                    (let ((_$e96885_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96803_
                              '#f
                              _method-name96882_))))
                      (if _$e96885_
                          ((lambda (_method96888_)
                             (let ((__tmp101382
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96810_ '1)))
                                   (__tmp101381
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96888_ _methods96812_))))
                               (declare (not safe))
                               (_loop96805_
                                _rest96881_
                                __tmp101382
                                __tmp101381)))
                           _$e96885_)
                          ((lambda (_klass96890_ _method-name96891_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96890_
                                'method:
                                _method-name96891_)))
                           _klass96802_
                           _method-name96882_))))))
            (if (let () (declare (not safe)) (##pair? _rest9681496822_))
                (let ((_hd9681996896_
                       (let () (declare (not safe)) (##car _rest9681496822_)))
                      (_tl9682096898_
                       (let () (declare (not safe)) (##cdr _rest9681496822_))))
                  (let* ((_method-name96901_ _hd9681996896_)
                         (_rest96903_ _tl9682096898_))
                    (declare (not safe))
                    (_K9681896893_ _rest96903_ _method-name96901_)))
                (let () (declare (not safe)) (_else9681696878_)))))))
    (define try-create-prototype
      (lambda (_descriptor96697_ _klass96698_ _obj-klass96699_)
        (let _loop96701_ ((_rest96704_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96697_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96706_ '0)
                          (_methods96708_ '()))
          (let* ((_rest9671096718_ _rest96704_)
                 (_else9671296774_
                  (lambda ()
                    (let ((_prototype96726_
                           (let ((__obj101323
                                  (let ((__tmp101383
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96706_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96698_
                                     __tmp101383))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101323 '#f))
                             __obj101323)))
                      (let _loop96729_ ((_rest96731_ _methods96708_)
                                        (_off96732_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96706_ '1))))
                        (let* ((_rest9673496742_ _rest96731_)
                               (_else9673696755_
                                (lambda ()
                                  (let ((_prototype-key96750_
                                         (let ((__tmp101385
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96698_)))
                                               (__tmp101384
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96699_))))
                                           (declare (not safe))
                                           (cons __tmp101385 __tmp101384))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96750_
                                       _prototype96726_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96753_)
                                       _prototype96753_)
                                     _prototype96726_))))
                               (_K9673896762_
                                (lambda (_rest96758_ _method96759_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96726_
                                     _method96759_
                                     _off96732_
                                     _klass96698_
                                     '#f))
                                  (let ((__tmp101386
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96732_ '1))))
                                    (declare (not safe))
                                    (_loop96729_ _rest96758_ __tmp101386)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9673496742_))
                              (let ((_hd9673996765_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9673496742_)))
                                    (_tl9674096767_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9673496742_))))
                                (let* ((_method96770_ _hd9673996765_)
                                       (_rest96772_ _tl9674096767_))
                                  (declare (not safe))
                                  (_K9673896762_ _rest96772_ _method96770_)))
                              (let ()
                                (declare (not safe))
                                (_else9673696755_))))))))
                 (_K9671496789_
                  (lambda (_rest96777_ _method-name96778_)
                    (let ((_$e96781_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96699_
                              '#f
                              _method-name96778_))))
                      (if _$e96781_
                          ((lambda (_method96784_)
                             (let ((__tmp101388
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96706_ '1)))
                                   (__tmp101387
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96784_ _methods96708_))))
                               (declare (not safe))
                               (_loop96701_
                                _rest96777_
                                __tmp101388
                                __tmp101387)))
                           _$e96781_)
                          ((lambda (_klass96786_ _method-name96787_) '#f)
                           _klass96698_
                           _method-name96778_))))))
            (if (let () (declare (not safe)) (##pair? _rest9671096718_))
                (let ((_hd9671596792_
                       (let () (declare (not safe)) (##car _rest9671096718_)))
                      (_tl9671696794_
                       (let () (declare (not safe)) (##cdr _rest9671096718_))))
                  (let* ((_method-name96797_ _hd9671596792_)
                         (_rest96799_ _tl9671696794_))
                    (declare (not safe))
                    (_K9671496789_ _rest96799_ _method-name96797_)))
                (let () (declare (not safe)) (_else9671296774_)))))))
    (define cast
      (lambda (_descriptor96662_ _obj96664_)
        (if (let () (declare (not safe)) (##structure? _obj96664_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96669_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96662_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96672_
                      (let () (declare (not safe)) (##type-id _klass96669_)))
                     (_obj-klass96675_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96664_)))
                     (_obj-klass-id96678_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96675_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96672_ _obj-klass-id96678_))
                    _obj96664_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96675_))
                        (let ((__tmp101389
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96664_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor96662_ __tmp101389))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96672_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96678_))
                          (let ((_prototype96688_
                                 (let ((_$e96682_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96682_
                                       ((lambda (_prototype96685_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96685_)
                                        _$e96682_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor96662_
                                            _klass96669_
                                            _obj-klass96675_)))))))
                            ((lambda (_prototype96690_ _obj96691_)
                               (let ((_instance96693_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype96690_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance96693_
                                    _obj96691_
                                    '1
                                    '#f
                                    'cast))
                                 _instance96693_))
                             _prototype96688_
                             _obj96664_)))))))
            ((lambda (_obj96695_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj96695_)))
             _obj96664_))))
    (define try-cast
      (lambda (_descriptor96627_ _obj96629_)
        (if (let () (declare (not safe)) (##structure? _obj96629_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96634_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96627_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96637_
                      (let () (declare (not safe)) (##type-id _klass96634_)))
                     (_obj-klass96640_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96629_)))
                     (_obj-klass-id96643_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96640_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96637_ _obj-klass-id96643_))
                    _obj96629_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96640_))
                        (let ((__tmp101390
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96629_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor96627_ __tmp101390))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96637_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96643_))
                          (let ((_prototype96653_
                                 (let ((_$e96647_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96647_
                                       ((lambda (_prototype96650_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96650_)
                                        _$e96647_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96627_
                                            _klass96634_
                                            _obj-klass96640_)))))))
                            ((lambda (_prototype96655_ _obj96656_)
                               (if _prototype96655_
                                   (let ((_instance96658_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype96655_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance96658_
                                        _obj96656_
                                        '1
                                        '#f
                                        'cast))
                                     _instance96658_)
                                   '#f))
                             _prototype96653_
                             _obj96629_)))))))
            ((lambda (_obj96660_) '#f) _obj96629_))))
    (define satisfies?
      (lambda (_descriptor96594_ _obj96596_)
        (if (let () (declare (not safe)) (##structure? _obj96596_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96601_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96594_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96604_
                      (let () (declare (not safe)) (##type-id _klass96601_)))
                     (_obj-klass96607_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96596_)))
                     (_obj-klass-id96610_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96607_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96604_ _obj-klass-id96610_))
                    _obj96596_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96607_))
                        (let ((__tmp101391
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96596_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor96594_ __tmp101391))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96604_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96610_))
                          (let ((_prototype96620_
                                 (let ((_$e96614_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96614_
                                       ((lambda (_prototype96617_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96617_)
                                        _$e96614_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96594_
                                            _klass96601_
                                            _obj-klass96607_)))))))
                            ((lambda (_prototype96622_ _obj96623_)
                               (if _prototype96622_ '#t '#f))
                             _prototype96620_
                             _obj96596_)))))))
            ((lambda (_obj96625_) '#f) _obj96596_))))))
