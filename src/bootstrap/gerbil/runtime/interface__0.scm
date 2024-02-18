(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708280332)
  (begin
    (define CastError::t
      (let ((__tmp101322 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101322
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args97248_ (apply make-instance CastError::t _$args97248_)))
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
      (lambda (_where97122_ _message97123_ . _irritants97124_)
        (raise (let ((__obj101318
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101318
                  _message97123_
                  'where:
                  _where97122_
                  'irritants:
                  _irritants97124_)
                 __obj101318))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101325 (list))
            (__tmp101323
             (let ((__tmp101324
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp101324 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101325
         '(__object)
         __tmp101323
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
      (let ((__tmp101330 (list))
            (__tmp101326
             (let ((__tmp101329
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp101327
                    (let ((__tmp101328
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp101328 '()))))
               (declare (not safe))
               (cons __tmp101329 __tmp101327))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101330
         '(type methods)
         __tmp101326
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args97119_
        (apply make-instance interface-descriptor::t _$args97119_)))
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
      (lambda (_key97117_)
        (let ((__tmp101332
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key97117_))))
              (__tmp101331
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key97117_)))))
          (declare (not safe))
          (##fxxor __tmp101332 __tmp101331))))
    (define __interface-test-key
      (lambda (_a97114_ _b97115_)
        (if (let ((__tmp101336 (let () (declare (not safe)) (##car _a97114_)))
                  (__tmp101335 (let () (declare (not safe)) (##car _b97115_))))
              (declare (not safe))
              (##eq? __tmp101336 __tmp101335))
            (let ((__tmp101334 (let () (declare (not safe)) (##cdr _a97114_)))
                  (__tmp101333 (let () (declare (not safe)) (##cdr _b97115_))))
              (declare (not safe))
              (##eq? __tmp101334 __tmp101333))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint97095_ _seed97097_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint97095_
           __interface-hash-key
           __interface-test-key
           _seed97097_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint97103_ '#f) (_seed97105_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97103_ _seed97105_))))
    (define make-prototype-table__1
      (lambda (_size-hint97107_)
        (let ((_seed97109_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97107_ _seed97109_))))
    (define make-prototype-table
      (lambda _g101338_
        (let ((_g101337_ (let () (declare (not safe)) (##length _g101338_))))
          (cond ((let () (declare (not safe)) (##fx= _g101337_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101338_))
                ((let () (declare (not safe)) (##fx= _g101337_ 1))
                 (apply (lambda (_size-hint97107_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint97107_)))
                        _g101338_))
                ((let () (declare (not safe)) (##fx= _g101337_ 2))
                 (apply (lambda (_size-hint97111_ _seed97112_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint97111_
                             _seed97112_)))
                        _g101338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101338_))))))
    (define prototype-table-ref
      (lambda (_tab97052_ _key97053_ _default97054_)
        (let ((_table97056_
               (let () (declare (not safe)) (&raw-table-table _tab97052_)))
              (_seed97057_
               (let () (declare (not safe)) (&raw-table-seed _tab97052_))))
          (let* ((_h97059_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97053_))
                         _seed97057_))
                 (_size97062_ (vector-length _table97056_))
                 (_entries97065_ (fxquotient _size97062_ '2))
                 (_start97068_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97059_ _entries97065_)
                   '1)))
            (let _loop97072_ ((_probe97075_ _start97068_)
                              (_i97077_ '1)
                              (_deleted97079_ '#f))
              (let ((_k97082_ (vector-ref _table97056_ _probe97075_)))
                (if (let ((__tmp101345 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97082_ __tmp101345))
                    _default97054_
                    (if (let ((__tmp101344 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97082_ __tmp101344))
                        (let ((__tmp101343
                               (let ((_next-probe97085_
                                      (fx+ _start97068_
                                           _i97077_
                                           (fx* _i97077_ _i97077_))))
                                 (fxmodulo _next-probe97085_ _size97062_)))
                              (__tmp101342 (fx+ _i97077_ '1))
                              (__tmp101341
                               (let ((_$e97088_ _deleted97079_))
                                 (if _$e97088_ _$e97088_ _probe97075_))))
                          (declare (not safe))
                          (_loop97072_ __tmp101343 __tmp101342 __tmp101341))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97053_ _k97082_))
                            (vector-ref _table97056_ (fx+ _probe97075_ '1))
                            (let ((__tmp101340
                                   (let ((_next-probe97091_
                                          (fx+ _start97068_
                                               _i97077_
                                               (fx* _i97077_ _i97077_))))
                                     (fxmodulo _next-probe97091_ _size97062_)))
                                  (__tmp101339 (fx+ _i97077_ '1)))
                              (declare (not safe))
                              (_loop97072_
                               __tmp101340
                               __tmp101339
                               _deleted97079_)))))))))))
    (define prototype-table-set!
      (lambda (_tab97048_ _key97049_ _value97050_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97048_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97048_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97048_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab97048_ _key97049_ _value97050_))))
    (define __prototype-table-set!
      (lambda (_tab97003_ _key97004_ _value97005_)
        (let ((_table97008_
               (let () (declare (not safe)) (&raw-table-table _tab97003_)))
              (_seed97009_
               (let () (declare (not safe)) (&raw-table-seed _tab97003_))))
          (let* ((_h97011_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97004_))
                         _seed97009_))
                 (_size97014_ (vector-length _table97008_))
                 (_entries97017_ (fxquotient _size97014_ '2))
                 (_start97020_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97011_ _entries97017_)
                   '1)))
            (let _loop97024_ ((_probe97027_ _start97020_)
                              (_i97029_ '1)
                              (_deleted97031_ '#f))
              (let ((_k97034_ (vector-ref _table97008_ _probe97027_)))
                (if (let ((__tmp101355 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97034_ __tmp101355))
                    (if _deleted97031_
                        (begin
                          (vector-set! _table97008_ _deleted97031_ _key97004_)
                          (vector-set!
                           _table97008_
                           (fx+ _deleted97031_ '1)
                           _value97005_)
                          ((lambda ()
                             (let ((__tmp101354
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97003_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97003_
                                __tmp101354)))))
                        (begin
                          (vector-set! _table97008_ _probe97027_ _key97004_)
                          (vector-set!
                           _table97008_
                           (fx+ _probe97027_ '1)
                           _value97005_)
                          ((lambda ()
                             (let ((__tmp101352
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab97003_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab97003_ __tmp101352))
                             (let ((__tmp101353
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97003_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97003_
                                __tmp101353))))))
                    (if (let ((__tmp101351 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97034_ __tmp101351))
                        (let ((__tmp101350
                               (let ((_next-probe97039_
                                      (fx+ _start97020_
                                           _i97029_
                                           (fx* _i97029_ _i97029_))))
                                 (fxmodulo _next-probe97039_ _size97014_)))
                              (__tmp101349 (fx+ _i97029_ '1))
                              (__tmp101348
                               (let ((_$e97042_ _deleted97031_))
                                 (if _$e97042_ _$e97042_ _probe97027_))))
                          (declare (not safe))
                          (_loop97024_ __tmp101350 __tmp101349 __tmp101348))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97004_ _k97034_))
                            (begin
                              (vector-set!
                               _table97008_
                               _probe97027_
                               _key97004_)
                              (vector-set!
                               _table97008_
                               (fx+ _probe97027_ '1)
                               _value97005_))
                            (let ((__tmp101347
                                   (let ((_next-probe97045_
                                          (fx+ _start97020_
                                               _i97029_
                                               (fx* _i97029_ _i97029_))))
                                     (fxmodulo _next-probe97045_ _size97014_)))
                                  (__tmp101346 (fx+ _i97029_ '1)))
                              (declare (not safe))
                              (_loop97024_
                               __tmp101347
                               __tmp101346
                               _deleted97031_)))))))))))
    (define prototype-table-update!
      (lambda (_tab96998_
               _key96999_
               _prototype-table-update!97000_
               _default97001_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab96998_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab96998_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab96998_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab96998_
           _key96999_
           _prototype-table-update!97000_
           _default97001_))))
    (define __prototype-table-update!
      (lambda (_tab96952_
               _key96953_
               _prototype-table-update!96954_
               _default96955_)
        (let ((_table96958_
               (let () (declare (not safe)) (&raw-table-table _tab96952_)))
              (_seed96959_
               (let () (declare (not safe)) (&raw-table-seed _tab96952_))))
          (let* ((_h96961_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96953_))
                         _seed96959_))
                 (_size96964_ (vector-length _table96958_))
                 (_entries96967_ (fxquotient _size96964_ '2))
                 (_start96970_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96961_ _entries96967_)
                   '1)))
            (let _loop96974_ ((_probe96977_ _start96970_)
                              (_i96979_ '1)
                              (_deleted96981_ '#f))
              (let ((_k96984_ (vector-ref _table96958_ _probe96977_)))
                (if (let ((__tmp101365 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96984_ __tmp101365))
                    (if _deleted96981_
                        (begin
                          (vector-set! _table96958_ _deleted96981_ _key96953_)
                          (vector-set!
                           _table96958_
                           (fx+ _deleted96981_ '1)
                           (_prototype-table-update!96954_ _default96955_))
                          ((lambda ()
                             (let ((__tmp101364
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96952_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96952_
                                __tmp101364)))))
                        (begin
                          (vector-set! _table96958_ _probe96977_ _key96953_)
                          (vector-set!
                           _table96958_
                           (fx+ _probe96977_ '1)
                           (_prototype-table-update!96954_ _default96955_))
                          ((lambda ()
                             (let ((__tmp101362
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96952_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96952_ __tmp101362))
                             (let ((__tmp101363
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96952_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96952_
                                __tmp101363))))))
                    (if (let ((__tmp101361 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96984_ __tmp101361))
                        (let ((__tmp101360
                               (let ((_next-probe96989_
                                      (fx+ _start96970_
                                           _i96979_
                                           (fx* _i96979_ _i96979_))))
                                 (fxmodulo _next-probe96989_ _size96964_)))
                              (__tmp101359 (fx+ _i96979_ '1))
                              (__tmp101358
                               (let ((_$e96992_ _deleted96981_))
                                 (if _$e96992_ _$e96992_ _probe96977_))))
                          (declare (not safe))
                          (_loop96974_ __tmp101360 __tmp101359 __tmp101358))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96953_ _k96984_))
                            (begin
                              (vector-set!
                               _table96958_
                               _probe96977_
                               _key96953_)
                              (vector-set!
                               _table96958_
                               (fx+ _probe96977_ '1)
                               (_prototype-table-update!96954_
                                (vector-ref
                                 _table96958_
                                 (fx+ _probe96977_ '1)))))
                            (let ((__tmp101357
                                   (let ((_next-probe96995_
                                          (fx+ _start96970_
                                               _i96979_
                                               (fx* _i96979_ _i96979_))))
                                     (fxmodulo _next-probe96995_ _size96964_)))
                                  (__tmp101356 (fx+ _i96979_ '1)))
                              (declare (not safe))
                              (_loop96974_
                               __tmp101357
                               __tmp101356
                               _deleted96981_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96911_ _key96913_)
        (let ((_table96916_
               (let () (declare (not safe)) (&raw-table-table _tab96911_)))
              (_seed96918_
               (let () (declare (not safe)) (&raw-table-seed _tab96911_))))
          (let* ((_h96921_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96913_))
                         _seed96918_))
                 (_size96924_ (vector-length _table96916_))
                 (_entries96927_ (fxquotient _size96924_ '2))
                 (_start96930_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96921_ _entries96927_)
                   '1)))
            (let _loop96934_ ((_probe96937_ _start96930_) (_i96939_ '1))
              (let ((_k96942_ (vector-ref _table96916_ _probe96937_)))
                (if (let ((__tmp101372 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96942_ __tmp101372))
                    '#!void
                    (if (let ((__tmp101371 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96942_ __tmp101371))
                        (let ((__tmp101370
                               (let ((_next-probe96945_
                                      (fx+ _start96930_
                                           _i96939_
                                           (fx* _i96939_ _i96939_))))
                                 (fxmodulo _next-probe96945_ _size96924_)))
                              (__tmp101369 (fx+ _i96939_ '1)))
                          (declare (not safe))
                          (_loop96934_ __tmp101370 __tmp101369))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96913_ _k96942_))
                            (begin
                              (vector-set!
                               _table96916_
                               _probe96937_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96916_
                               (fx+ _probe96937_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101368
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96911_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96911_
                                    __tmp101368)))))
                            (let ((__tmp101367
                                   (let ((_next-probe96949_
                                          (fx+ _start96930_
                                               _i96939_
                                               (fx* _i96939_ _i96939_))))
                                     (fxmodulo _next-probe96949_ _size96924_)))
                                  (__tmp101366 (fx+ _i96939_ '1)))
                              (declare (not safe))
                              (_loop96934_ __tmp101367 __tmp101366)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96903_)
        (let ((_super9690496906_
               (let () (declare (not safe)) (##type-super _klass96903_))))
          (if _super9690496906_
              (let ((_super96909_ _super9690496906_))
                (let ((__tmp101374
                       (let () (declare (not safe)) (##type-id _super96909_)))
                      (__tmp101373
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp101374 __tmp101373)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor96799_ _klass96800_ _obj-klass96801_)
        (let _loop96803_ ((_rest96806_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96799_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96808_ '0)
                          (_methods96810_ '()))
          (let* ((_rest9681296820_ _rest96806_)
                 (_else9681496876_
                  (lambda ()
                    (let ((_prototype96828_
                           (let ((__obj101320
                                  (let ((__tmp101375
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96808_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96800_
                                     __tmp101375))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101320 '#f))
                             __obj101320)))
                      (let _loop96831_ ((_rest96833_ _methods96810_)
                                        (_off96834_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96808_ '1))))
                        (let* ((_rest9683696844_ _rest96833_)
                               (_else9683896857_
                                (lambda ()
                                  (let ((_prototype-key96852_
                                         (let ((__tmp101377
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96800_)))
                                               (__tmp101376
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96801_))))
                                           (declare (not safe))
                                           (cons __tmp101377 __tmp101376))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96852_
                                       _prototype96828_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96855_)
                                       _prototype96855_)
                                     _prototype96828_))))
                               (_K9684096864_
                                (lambda (_rest96860_ _method96861_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96828_
                                     _method96861_
                                     _off96834_
                                     _klass96800_
                                     '#f))
                                  (let ((__tmp101378
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96834_ '1))))
                                    (declare (not safe))
                                    (_loop96831_ _rest96860_ __tmp101378)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9683696844_))
                              (let ((_hd9684196867_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9683696844_)))
                                    (_tl9684296869_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9683696844_))))
                                (let* ((_method96872_ _hd9684196867_)
                                       (_rest96874_ _tl9684296869_))
                                  (declare (not safe))
                                  (_K9684096864_ _rest96874_ _method96872_)))
                              (let ()
                                (declare (not safe))
                                (_else9683896857_))))))))
                 (_K9681696891_
                  (lambda (_rest96879_ _method-name96880_)
                    (let ((_$e96883_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96801_
                              '#f
                              _method-name96880_))))
                      (if _$e96883_
                          ((lambda (_method96886_)
                             (let ((__tmp101380
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96808_ '1)))
                                   (__tmp101379
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96886_ _methods96810_))))
                               (declare (not safe))
                               (_loop96803_
                                _rest96879_
                                __tmp101380
                                __tmp101379)))
                           _$e96883_)
                          ((lambda (_klass96888_ _method-name96889_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96888_
                                'method:
                                _method-name96889_)))
                           _klass96800_
                           _method-name96880_))))))
            (if (let () (declare (not safe)) (##pair? _rest9681296820_))
                (let ((_hd9681796894_
                       (let () (declare (not safe)) (##car _rest9681296820_)))
                      (_tl9681896896_
                       (let () (declare (not safe)) (##cdr _rest9681296820_))))
                  (let* ((_method-name96899_ _hd9681796894_)
                         (_rest96901_ _tl9681896896_))
                    (declare (not safe))
                    (_K9681696891_ _rest96901_ _method-name96899_)))
                (let () (declare (not safe)) (_else9681496876_)))))))
    (define try-create-prototype
      (lambda (_descriptor96695_ _klass96696_ _obj-klass96697_)
        (let _loop96699_ ((_rest96702_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96695_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96704_ '0)
                          (_methods96706_ '()))
          (let* ((_rest9670896716_ _rest96702_)
                 (_else9671096772_
                  (lambda ()
                    (let ((_prototype96724_
                           (let ((__obj101321
                                  (let ((__tmp101381
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96704_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96696_
                                     __tmp101381))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101321 '#f))
                             __obj101321)))
                      (let _loop96727_ ((_rest96729_ _methods96706_)
                                        (_off96730_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96704_ '1))))
                        (let* ((_rest9673296740_ _rest96729_)
                               (_else9673496753_
                                (lambda ()
                                  (let ((_prototype-key96748_
                                         (let ((__tmp101383
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96696_)))
                                               (__tmp101382
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96697_))))
                                           (declare (not safe))
                                           (cons __tmp101383 __tmp101382))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96748_
                                       _prototype96724_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96751_)
                                       _prototype96751_)
                                     _prototype96724_))))
                               (_K9673696760_
                                (lambda (_rest96756_ _method96757_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96724_
                                     _method96757_
                                     _off96730_
                                     _klass96696_
                                     '#f))
                                  (let ((__tmp101384
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96730_ '1))))
                                    (declare (not safe))
                                    (_loop96727_ _rest96756_ __tmp101384)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9673296740_))
                              (let ((_hd9673796763_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9673296740_)))
                                    (_tl9673896765_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9673296740_))))
                                (let* ((_method96768_ _hd9673796763_)
                                       (_rest96770_ _tl9673896765_))
                                  (declare (not safe))
                                  (_K9673696760_ _rest96770_ _method96768_)))
                              (let ()
                                (declare (not safe))
                                (_else9673496753_))))))))
                 (_K9671296787_
                  (lambda (_rest96775_ _method-name96776_)
                    (let ((_$e96779_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96697_
                              '#f
                              _method-name96776_))))
                      (if _$e96779_
                          ((lambda (_method96782_)
                             (let ((__tmp101386
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96704_ '1)))
                                   (__tmp101385
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96782_ _methods96706_))))
                               (declare (not safe))
                               (_loop96699_
                                _rest96775_
                                __tmp101386
                                __tmp101385)))
                           _$e96779_)
                          ((lambda (_klass96784_ _method-name96785_) '#f)
                           _klass96696_
                           _method-name96776_))))))
            (if (let () (declare (not safe)) (##pair? _rest9670896716_))
                (let ((_hd9671396790_
                       (let () (declare (not safe)) (##car _rest9670896716_)))
                      (_tl9671496792_
                       (let () (declare (not safe)) (##cdr _rest9670896716_))))
                  (let* ((_method-name96795_ _hd9671396790_)
                         (_rest96797_ _tl9671496792_))
                    (declare (not safe))
                    (_K9671296787_ _rest96797_ _method-name96795_)))
                (let () (declare (not safe)) (_else9671096772_)))))))
    (define cast
      (lambda (_descriptor96660_ _obj96662_)
        (if (let () (declare (not safe)) (##structure? _obj96662_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96667_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96660_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96670_
                      (let () (declare (not safe)) (##type-id _klass96667_)))
                     (_obj-klass96673_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96662_)))
                     (_obj-klass-id96676_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96673_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96670_ _obj-klass-id96676_))
                    _obj96662_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96673_))
                        (let ((__tmp101387
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96662_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor96660_ __tmp101387))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96670_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96676_))
                          (let ((_prototype96686_
                                 (let ((_$e96680_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96680_
                                       ((lambda (_prototype96683_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96683_)
                                        _$e96680_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor96660_
                                            _klass96667_
                                            _obj-klass96673_)))))))
                            ((lambda (_prototype96688_ _obj96689_)
                               (let ((_instance96691_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype96688_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance96691_
                                    _obj96689_
                                    '1
                                    '#f
                                    'cast))
                                 _instance96691_))
                             _prototype96686_
                             _obj96662_)))))))
            ((lambda (_obj96693_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj96693_)))
             _obj96662_))))
    (define try-cast
      (lambda (_descriptor96625_ _obj96627_)
        (if (let () (declare (not safe)) (##structure? _obj96627_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96632_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96625_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96635_
                      (let () (declare (not safe)) (##type-id _klass96632_)))
                     (_obj-klass96638_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96627_)))
                     (_obj-klass-id96641_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96638_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96635_ _obj-klass-id96641_))
                    _obj96627_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96638_))
                        (let ((__tmp101388
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96627_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor96625_ __tmp101388))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96635_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96641_))
                          (let ((_prototype96651_
                                 (let ((_$e96645_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96645_
                                       ((lambda (_prototype96648_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96648_)
                                        _$e96645_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96625_
                                            _klass96632_
                                            _obj-klass96638_)))))))
                            ((lambda (_prototype96653_ _obj96654_)
                               (if _prototype96653_
                                   (let ((_instance96656_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype96653_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance96656_
                                        _obj96654_
                                        '1
                                        '#f
                                        'cast))
                                     _instance96656_)
                                   '#f))
                             _prototype96651_
                             _obj96627_)))))))
            ((lambda (_obj96658_) '#f) _obj96627_))))
    (define satisfies?
      (lambda (_descriptor96592_ _obj96594_)
        (if (let () (declare (not safe)) (##structure? _obj96594_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96599_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96592_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96602_
                      (let () (declare (not safe)) (##type-id _klass96599_)))
                     (_obj-klass96605_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96594_)))
                     (_obj-klass-id96608_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96605_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96602_ _obj-klass-id96608_))
                    _obj96594_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96605_))
                        (let ((__tmp101389
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96594_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor96592_ __tmp101389))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96602_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96608_))
                          (let ((_prototype96618_
                                 (let ((_$e96612_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96612_
                                       ((lambda (_prototype96615_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96615_)
                                        _$e96612_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96592_
                                            _klass96599_
                                            _obj-klass96605_)))))))
                            ((lambda (_prototype96620_ _obj96621_)
                               (if _prototype96620_ '#t '#f))
                             _prototype96618_
                             _obj96594_)))))))
            ((lambda (_obj96623_) '#f) _obj96594_))))))
