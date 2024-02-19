(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708334573)
  (begin
    (define CastError::t
      (let ((__tmp101405 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101405
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args97331_ (apply make-instance CastError::t _$args97331_)))
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
      (lambda (_where97205_ _message97206_ . _irritants97207_)
        (raise (let ((__obj101401
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101401
                  _message97206_
                  'where:
                  _where97205_
                  'irritants:
                  _irritants97207_)
                 __obj101401))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101408 (list))
            (__tmp101406
             (let ((__tmp101407
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp101407 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101408
         '(__object)
         __tmp101406
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
      (let ((__tmp101413 (list))
            (__tmp101409
             (let ((__tmp101412
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp101410
                    (let ((__tmp101411
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp101411 '()))))
               (declare (not safe))
               (cons __tmp101412 __tmp101410))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101413
         '(type methods)
         __tmp101409
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args97202_
        (apply make-instance interface-descriptor::t _$args97202_)))
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
      (lambda (_key97200_)
        (let ((__tmp101415
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key97200_))))
              (__tmp101414
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key97200_)))))
          (declare (not safe))
          (##fxxor __tmp101415 __tmp101414))))
    (define __interface-test-key
      (lambda (_a97197_ _b97198_)
        (if (let ((__tmp101419 (let () (declare (not safe)) (##car _a97197_)))
                  (__tmp101418 (let () (declare (not safe)) (##car _b97198_))))
              (declare (not safe))
              (##eq? __tmp101419 __tmp101418))
            (let ((__tmp101417 (let () (declare (not safe)) (##cdr _a97197_)))
                  (__tmp101416 (let () (declare (not safe)) (##cdr _b97198_))))
              (declare (not safe))
              (##eq? __tmp101417 __tmp101416))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint97178_ _seed97180_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint97178_
           __interface-hash-key
           __interface-test-key
           _seed97180_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint97186_ '#f) (_seed97188_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97186_ _seed97188_))))
    (define make-prototype-table__1
      (lambda (_size-hint97190_)
        (let ((_seed97192_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint97190_ _seed97192_))))
    (define make-prototype-table
      (lambda _g101421_
        (let ((_g101420_ (let () (declare (not safe)) (##length _g101421_))))
          (cond ((let () (declare (not safe)) (##fx= _g101420_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101421_))
                ((let () (declare (not safe)) (##fx= _g101420_ 1))
                 (apply (lambda (_size-hint97190_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint97190_)))
                        _g101421_))
                ((let () (declare (not safe)) (##fx= _g101420_ 2))
                 (apply (lambda (_size-hint97194_ _seed97195_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint97194_
                             _seed97195_)))
                        _g101421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101421_))))))
    (define prototype-table-ref
      (lambda (_tab97135_ _key97136_ _default97137_)
        (let ((_table97139_
               (let () (declare (not safe)) (&raw-table-table _tab97135_)))
              (_seed97140_
               (let () (declare (not safe)) (&raw-table-seed _tab97135_))))
          (let* ((_h97142_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97136_))
                         _seed97140_))
                 (_size97145_ (vector-length _table97139_))
                 (_entries97148_ (fxquotient _size97145_ '2))
                 (_start97151_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97142_ _entries97148_)
                   '1)))
            (let _loop97155_ ((_probe97158_ _start97151_)
                              (_i97160_ '1)
                              (_deleted97162_ '#f))
              (let ((_k97165_ (vector-ref _table97139_ _probe97158_)))
                (if (let ((__tmp101428 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97165_ __tmp101428))
                    _default97137_
                    (if (let ((__tmp101427 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97165_ __tmp101427))
                        (let ((__tmp101426
                               (let ((_next-probe97168_
                                      (fx+ _start97151_
                                           _i97160_
                                           (fx* _i97160_ _i97160_))))
                                 (fxmodulo _next-probe97168_ _size97145_)))
                              (__tmp101425 (fx+ _i97160_ '1))
                              (__tmp101424
                               (let ((_$e97171_ _deleted97162_))
                                 (if _$e97171_ _$e97171_ _probe97158_))))
                          (declare (not safe))
                          (_loop97155_ __tmp101426 __tmp101425 __tmp101424))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97136_ _k97165_))
                            (vector-ref _table97139_ (fx+ _probe97158_ '1))
                            (let ((__tmp101423
                                   (let ((_next-probe97174_
                                          (fx+ _start97151_
                                               _i97160_
                                               (fx* _i97160_ _i97160_))))
                                     (fxmodulo _next-probe97174_ _size97145_)))
                                  (__tmp101422 (fx+ _i97160_ '1)))
                              (declare (not safe))
                              (_loop97155_
                               __tmp101423
                               __tmp101422
                               _deleted97162_)))))))))))
    (define prototype-table-set!
      (lambda (_tab97131_ _key97132_ _value97133_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97131_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97131_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97131_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab97131_ _key97132_ _value97133_))))
    (define __prototype-table-set!
      (lambda (_tab97086_ _key97087_ _value97088_)
        (let ((_table97091_
               (let () (declare (not safe)) (&raw-table-table _tab97086_)))
              (_seed97092_
               (let () (declare (not safe)) (&raw-table-seed _tab97086_))))
          (let* ((_h97094_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97087_))
                         _seed97092_))
                 (_size97097_ (vector-length _table97091_))
                 (_entries97100_ (fxquotient _size97097_ '2))
                 (_start97103_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97094_ _entries97100_)
                   '1)))
            (let _loop97107_ ((_probe97110_ _start97103_)
                              (_i97112_ '1)
                              (_deleted97114_ '#f))
              (let ((_k97117_ (vector-ref _table97091_ _probe97110_)))
                (if (let ((__tmp101438 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97117_ __tmp101438))
                    (if _deleted97114_
                        (begin
                          (vector-set! _table97091_ _deleted97114_ _key97087_)
                          (vector-set!
                           _table97091_
                           (fx+ _deleted97114_ '1)
                           _value97088_)
                          ((lambda ()
                             (let ((__tmp101437
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97086_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97086_
                                __tmp101437)))))
                        (begin
                          (vector-set! _table97091_ _probe97110_ _key97087_)
                          (vector-set!
                           _table97091_
                           (fx+ _probe97110_ '1)
                           _value97088_)
                          ((lambda ()
                             (let ((__tmp101435
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab97086_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab97086_ __tmp101435))
                             (let ((__tmp101436
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97086_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97086_
                                __tmp101436))))))
                    (if (let ((__tmp101434 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97117_ __tmp101434))
                        (let ((__tmp101433
                               (let ((_next-probe97122_
                                      (fx+ _start97103_
                                           _i97112_
                                           (fx* _i97112_ _i97112_))))
                                 (fxmodulo _next-probe97122_ _size97097_)))
                              (__tmp101432 (fx+ _i97112_ '1))
                              (__tmp101431
                               (let ((_$e97125_ _deleted97114_))
                                 (if _$e97125_ _$e97125_ _probe97110_))))
                          (declare (not safe))
                          (_loop97107_ __tmp101433 __tmp101432 __tmp101431))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97087_ _k97117_))
                            (begin
                              (vector-set!
                               _table97091_
                               _probe97110_
                               _key97087_)
                              (vector-set!
                               _table97091_
                               (fx+ _probe97110_ '1)
                               _value97088_))
                            (let ((__tmp101430
                                   (let ((_next-probe97128_
                                          (fx+ _start97103_
                                               _i97112_
                                               (fx* _i97112_ _i97112_))))
                                     (fxmodulo _next-probe97128_ _size97097_)))
                                  (__tmp101429 (fx+ _i97112_ '1)))
                              (declare (not safe))
                              (_loop97107_
                               __tmp101430
                               __tmp101429
                               _deleted97114_)))))))))))
    (define prototype-table-update!
      (lambda (_tab97081_
               _key97082_
               _prototype-table-update!97083_
               _default97084_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab97081_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab97081_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab97081_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab97081_
           _key97082_
           _prototype-table-update!97083_
           _default97084_))))
    (define __prototype-table-update!
      (lambda (_tab97035_
               _key97036_
               _prototype-table-update!97037_
               _default97038_)
        (let ((_table97041_
               (let () (declare (not safe)) (&raw-table-table _tab97035_)))
              (_seed97042_
               (let () (declare (not safe)) (&raw-table-seed _tab97035_))))
          (let* ((_h97044_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key97036_))
                         _seed97042_))
                 (_size97047_ (vector-length _table97041_))
                 (_entries97050_ (fxquotient _size97047_ '2))
                 (_start97053_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97044_ _entries97050_)
                   '1)))
            (let _loop97057_ ((_probe97060_ _start97053_)
                              (_i97062_ '1)
                              (_deleted97064_ '#f))
              (let ((_k97067_ (vector-ref _table97041_ _probe97060_)))
                (if (let ((__tmp101448 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97067_ __tmp101448))
                    (if _deleted97064_
                        (begin
                          (vector-set! _table97041_ _deleted97064_ _key97036_)
                          (vector-set!
                           _table97041_
                           (fx+ _deleted97064_ '1)
                           (_prototype-table-update!97037_ _default97038_))
                          ((lambda ()
                             (let ((__tmp101447
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97035_
                                __tmp101447)))))
                        (begin
                          (vector-set! _table97041_ _probe97060_ _key97036_)
                          (vector-set!
                           _table97041_
                           (fx+ _probe97060_ '1)
                           (_prototype-table-update!97037_ _default97038_))
                          ((lambda ()
                             (let ((__tmp101445
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab97035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab97035_ __tmp101445))
                             (let ((__tmp101446
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab97035_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab97035_
                                __tmp101446))))))
                    (if (let ((__tmp101444 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97067_ __tmp101444))
                        (let ((__tmp101443
                               (let ((_next-probe97072_
                                      (fx+ _start97053_
                                           _i97062_
                                           (fx* _i97062_ _i97062_))))
                                 (fxmodulo _next-probe97072_ _size97047_)))
                              (__tmp101442 (fx+ _i97062_ '1))
                              (__tmp101441
                               (let ((_$e97075_ _deleted97064_))
                                 (if _$e97075_ _$e97075_ _probe97060_))))
                          (declare (not safe))
                          (_loop97057_ __tmp101443 __tmp101442 __tmp101441))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key97036_ _k97067_))
                            (begin
                              (vector-set!
                               _table97041_
                               _probe97060_
                               _key97036_)
                              (vector-set!
                               _table97041_
                               (fx+ _probe97060_ '1)
                               (_prototype-table-update!97037_
                                (vector-ref
                                 _table97041_
                                 (fx+ _probe97060_ '1)))))
                            (let ((__tmp101440
                                   (let ((_next-probe97078_
                                          (fx+ _start97053_
                                               _i97062_
                                               (fx* _i97062_ _i97062_))))
                                     (fxmodulo _next-probe97078_ _size97047_)))
                                  (__tmp101439 (fx+ _i97062_ '1)))
                              (declare (not safe))
                              (_loop97057_
                               __tmp101440
                               __tmp101439
                               _deleted97064_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96994_ _key96996_)
        (let ((_table96999_
               (let () (declare (not safe)) (&raw-table-table _tab96994_)))
              (_seed97001_
               (let () (declare (not safe)) (&raw-table-seed _tab96994_))))
          (let* ((_h97004_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key96996_))
                         _seed97001_))
                 (_size97007_ (vector-length _table96999_))
                 (_entries97010_ (fxquotient _size97007_ '2))
                 (_start97013_
                  (fxarithmetic-shift-left
                   (fxmodulo _h97004_ _entries97010_)
                   '1)))
            (let _loop97017_ ((_probe97020_ _start97013_) (_i97022_ '1))
              (let ((_k97025_ (vector-ref _table96999_ _probe97020_)))
                (if (let ((__tmp101455 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k97025_ __tmp101455))
                    '#!void
                    (if (let ((__tmp101454 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k97025_ __tmp101454))
                        (let ((__tmp101453
                               (let ((_next-probe97028_
                                      (fx+ _start97013_
                                           _i97022_
                                           (fx* _i97022_ _i97022_))))
                                 (fxmodulo _next-probe97028_ _size97007_)))
                              (__tmp101452 (fx+ _i97022_ '1)))
                          (declare (not safe))
                          (_loop97017_ __tmp101453 __tmp101452))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key96996_ _k97025_))
                            (begin
                              (vector-set!
                               _table96999_
                               _probe97020_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96999_
                               (fx+ _probe97020_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101451
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96994_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96994_
                                    __tmp101451)))))
                            (let ((__tmp101450
                                   (let ((_next-probe97032_
                                          (fx+ _start97013_
                                               _i97022_
                                               (fx* _i97022_ _i97022_))))
                                     (fxmodulo _next-probe97032_ _size97007_)))
                                  (__tmp101449 (fx+ _i97022_ '1)))
                              (declare (not safe))
                              (_loop97017_ __tmp101450 __tmp101449)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96986_)
        (let ((_super9698796989_
               (let () (declare (not safe)) (##type-super _klass96986_))))
          (if _super9698796989_
              (let ((_super96992_ _super9698796989_))
                (let ((__tmp101457
                       (let () (declare (not safe)) (##type-id _super96992_)))
                      (__tmp101456
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp101457 __tmp101456)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor96882_ _klass96883_ _obj-klass96884_)
        (let _loop96886_ ((_rest96889_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96882_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96891_ '0)
                          (_methods96893_ '()))
          (let* ((_rest9689596903_ _rest96889_)
                 (_else9689796959_
                  (lambda ()
                    (let ((_prototype96911_
                           (let ((__obj101403
                                  (let ((__tmp101458
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96891_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96883_
                                     __tmp101458))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101403 '#f))
                             __obj101403)))
                      (let _loop96914_ ((_rest96916_ _methods96893_)
                                        (_off96917_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96891_ '1))))
                        (let* ((_rest9691996927_ _rest96916_)
                               (_else9692196940_
                                (lambda ()
                                  (let ((_prototype-key96935_
                                         (let ((__tmp101460
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96883_)))
                                               (__tmp101459
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96884_))))
                                           (declare (not safe))
                                           (cons __tmp101460 __tmp101459))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96935_
                                       _prototype96911_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96938_)
                                       _prototype96938_)
                                     _prototype96911_))))
                               (_K9692396947_
                                (lambda (_rest96943_ _method96944_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96911_
                                     _method96944_
                                     _off96917_
                                     _klass96883_
                                     '#f))
                                  (let ((__tmp101461
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96917_ '1))))
                                    (declare (not safe))
                                    (_loop96914_ _rest96943_ __tmp101461)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9691996927_))
                              (let ((_hd9692496950_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9691996927_)))
                                    (_tl9692596952_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9691996927_))))
                                (let* ((_method96955_ _hd9692496950_)
                                       (_rest96957_ _tl9692596952_))
                                  (declare (not safe))
                                  (_K9692396947_ _rest96957_ _method96955_)))
                              (let ()
                                (declare (not safe))
                                (_else9692196940_))))))))
                 (_K9689996974_
                  (lambda (_rest96962_ _method-name96963_)
                    (let ((_$e96966_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96884_
                              '#f
                              _method-name96963_))))
                      (if _$e96966_
                          ((lambda (_method96969_)
                             (let ((__tmp101463
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96891_ '1)))
                                   (__tmp101462
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96969_ _methods96893_))))
                               (declare (not safe))
                               (_loop96886_
                                _rest96962_
                                __tmp101463
                                __tmp101462)))
                           _$e96966_)
                          ((lambda (_klass96971_ _method-name96972_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96971_
                                'method:
                                _method-name96972_)))
                           _klass96883_
                           _method-name96963_))))))
            (if (let () (declare (not safe)) (##pair? _rest9689596903_))
                (let ((_hd9690096977_
                       (let () (declare (not safe)) (##car _rest9689596903_)))
                      (_tl9690196979_
                       (let () (declare (not safe)) (##cdr _rest9689596903_))))
                  (let* ((_method-name96982_ _hd9690096977_)
                         (_rest96984_ _tl9690196979_))
                    (declare (not safe))
                    (_K9689996974_ _rest96984_ _method-name96982_)))
                (let () (declare (not safe)) (_else9689796959_)))))))
    (define try-create-prototype
      (lambda (_descriptor96778_ _klass96779_ _obj-klass96780_)
        (let _loop96782_ ((_rest96785_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor96778_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count96787_ '0)
                          (_methods96789_ '()))
          (let* ((_rest9679196799_ _rest96785_)
                 (_else9679396855_
                  (lambda ()
                    (let ((_prototype96807_
                           (let ((__obj101404
                                  (let ((__tmp101464
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96787_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass96779_
                                     __tmp101464))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj101404 '#f))
                             __obj101404)))
                      (let _loop96810_ ((_rest96812_ _methods96789_)
                                        (_off96813_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count96787_ '1))))
                        (let* ((_rest9681596823_ _rest96812_)
                               (_else9681796836_
                                (lambda ()
                                  (let ((_prototype-key96831_
                                         (let ((__tmp101466
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass96779_)))
                                               (__tmp101465
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass96780_))))
                                           (declare (not safe))
                                           (cons __tmp101466 __tmp101465))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96831_
                                       _prototype96807_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96834_)
                                       _prototype96834_)
                                     _prototype96807_))))
                               (_K9681996843_
                                (lambda (_rest96839_ _method96840_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype96807_
                                     _method96840_
                                     _off96813_
                                     _klass96779_
                                     '#f))
                                  (let ((__tmp101467
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off96813_ '1))))
                                    (declare (not safe))
                                    (_loop96810_ _rest96839_ __tmp101467)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9681596823_))
                              (let ((_hd9682096846_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9681596823_)))
                                    (_tl9682196848_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9681596823_))))
                                (let* ((_method96851_ _hd9682096846_)
                                       (_rest96853_ _tl9682196848_))
                                  (declare (not safe))
                                  (_K9681996843_ _rest96853_ _method96851_)))
                              (let ()
                                (declare (not safe))
                                (_else9681796836_))))))))
                 (_K9679596870_
                  (lambda (_rest96858_ _method-name96859_)
                    (let ((_$e96862_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass96780_
                              '#f
                              _method-name96859_))))
                      (if _$e96862_
                          ((lambda (_method96865_)
                             (let ((__tmp101469
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count96787_ '1)))
                                   (__tmp101468
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96865_ _methods96789_))))
                               (declare (not safe))
                               (_loop96782_
                                _rest96858_
                                __tmp101469
                                __tmp101468)))
                           _$e96862_)
                          ((lambda (_klass96867_ _method-name96868_) '#f)
                           _klass96779_
                           _method-name96859_))))))
            (if (let () (declare (not safe)) (##pair? _rest9679196799_))
                (let ((_hd9679696873_
                       (let () (declare (not safe)) (##car _rest9679196799_)))
                      (_tl9679796875_
                       (let () (declare (not safe)) (##cdr _rest9679196799_))))
                  (let* ((_method-name96878_ _hd9679696873_)
                         (_rest96880_ _tl9679796875_))
                    (declare (not safe))
                    (_K9679596870_ _rest96880_ _method-name96878_)))
                (let () (declare (not safe)) (_else9679396855_)))))))
    (define cast
      (lambda (_descriptor96743_ _obj96745_)
        (if (let () (declare (not safe)) (##structure? _obj96745_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96750_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96743_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96753_
                      (let () (declare (not safe)) (##type-id _klass96750_)))
                     (_obj-klass96756_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96745_)))
                     (_obj-klass-id96759_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96756_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96753_ _obj-klass-id96759_))
                    _obj96745_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96756_))
                        (let ((__tmp101470
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96745_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor96743_ __tmp101470))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96753_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96759_))
                          (let ((_prototype96769_
                                 (let ((_$e96763_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96763_
                                       ((lambda (_prototype96766_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96766_)
                                        _$e96763_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor96743_
                                            _klass96750_
                                            _obj-klass96756_)))))))
                            ((lambda (_prototype96771_ _obj96772_)
                               (let ((_instance96774_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype96771_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance96774_
                                    _obj96772_
                                    '1
                                    '#f
                                    'cast))
                                 _instance96774_))
                             _prototype96769_
                             _obj96745_)))))))
            ((lambda (_obj96776_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj96776_)))
             _obj96745_))))
    (define try-cast
      (lambda (_descriptor96708_ _obj96710_)
        (if (let () (declare (not safe)) (##structure? _obj96710_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96715_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96708_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96718_
                      (let () (declare (not safe)) (##type-id _klass96715_)))
                     (_obj-klass96721_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96710_)))
                     (_obj-klass-id96724_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96721_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96718_ _obj-klass-id96724_))
                    _obj96710_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96721_))
                        (let ((__tmp101471
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96710_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor96708_ __tmp101471))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96718_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96724_))
                          (let ((_prototype96734_
                                 (let ((_$e96728_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96728_
                                       ((lambda (_prototype96731_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96731_)
                                        _$e96728_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96708_
                                            _klass96715_
                                            _obj-klass96721_)))))))
                            ((lambda (_prototype96736_ _obj96737_)
                               (if _prototype96736_
                                   (let ((_instance96739_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype96736_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance96739_
                                        _obj96737_
                                        '1
                                        '#f
                                        'cast))
                                     _instance96739_)
                                   '#f))
                             _prototype96734_
                             _obj96710_)))))))
            ((lambda (_obj96741_) '#f) _obj96710_))))
    (define satisfies?
      (lambda (_descriptor96675_ _obj96677_)
        (if (let () (declare (not safe)) (##structure? _obj96677_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass96682_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor96675_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id96685_
                      (let () (declare (not safe)) (##type-id _klass96682_)))
                     (_obj-klass96688_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj96677_)))
                     (_obj-klass-id96691_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass96688_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id96685_ _obj-klass-id96691_))
                    _obj96677_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass96688_))
                        (let ((__tmp101472
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj96677_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor96675_ __tmp101472))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id96685_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id96691_))
                          (let ((_prototype96701_
                                 (let ((_$e96695_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e96695_
                                       ((lambda (_prototype96698_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype96698_)
                                        _$e96695_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor96675_
                                            _klass96682_
                                            _obj-klass96688_)))))))
                            ((lambda (_prototype96703_ _obj96704_)
                               (if _prototype96703_ '#t '#f))
                             _prototype96701_
                             _obj96677_)))))))
            ((lambda (_obj96706_) '#f) _obj96677_))))))
