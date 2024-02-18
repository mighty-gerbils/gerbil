(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708247273)
  (begin
    (define CastError::t
      (let ((__tmp100433 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp100433
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args96359_ (apply make-instance CastError::t _$args96359_)))
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
      (lambda (_where96233_ _message96234_ . _irritants96235_)
        (raise (let ((__obj100429
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj100429
                  _message96234_
                  'where:
                  _where96233_
                  'irritants:
                  _irritants96235_)
                 __obj100429))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp100436 (list))
            (__tmp100434
             (let ((__tmp100435
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp100435 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp100436
         '(__object)
         __tmp100434
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
      (let ((__tmp100441 (list))
            (__tmp100437
             (let ((__tmp100440
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp100438
                    (let ((__tmp100439
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp100439 '()))))
               (declare (not safe))
               (cons __tmp100440 __tmp100438))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp100441
         '(type methods)
         __tmp100437
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args96230_
        (apply make-instance interface-descriptor::t _$args96230_)))
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
    (define hash-key
      (lambda (_key96228_)
        (let ((__tmp100443
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key96228_))))
              (__tmp100442
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key96228_)))))
          (declare (not safe))
          (##fxxor __tmp100443 __tmp100442))))
    (define test-key
      (lambda (_a96225_ _b96226_)
        (if (let ((__tmp100447 (let () (declare (not safe)) (##car _a96225_)))
                  (__tmp100446 (let () (declare (not safe)) (##car _b96226_))))
              (declare (not safe))
              (##eq? __tmp100447 __tmp100446))
            (let ((__tmp100445 (let () (declare (not safe)) (##cdr _a96225_)))
                  (__tmp100444 (let () (declare (not safe)) (##cdr _b96226_))))
              (declare (not safe))
              (##eq? __tmp100445 __tmp100444))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint96206_ _seed96208_)
        (let ()
          (declare (not safe))
          (make-raw-table__% _size-hint96206_ hash-key test-key _seed96208_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint96214_ '#f)
               (_seed96216_ (random-integer (macro-max-fixnum32))))
          (declare (not safe))
          (make-prototype-table__% _size-hint96214_ _seed96216_))))
    (define make-prototype-table__1
      (lambda (_size-hint96218_)
        (let ((_seed96220_ (random-integer (macro-max-fixnum32))))
          (declare (not safe))
          (make-prototype-table__% _size-hint96218_ _seed96220_))))
    (define make-prototype-table
      (lambda _g100449_
        (let ((_g100448_ (let () (declare (not safe)) (##length _g100449_))))
          (cond ((let () (declare (not safe)) (##fx= _g100448_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g100449_))
                ((let () (declare (not safe)) (##fx= _g100448_ 1))
                 (apply (lambda (_size-hint96218_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint96218_)))
                        _g100449_))
                ((let () (declare (not safe)) (##fx= _g100448_ 2))
                 (apply (lambda (_size-hint96222_ _seed96223_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint96222_
                             _seed96223_)))
                        _g100449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g100449_))))))
    (define prototype-table-ref
      (lambda (_tab96162_ _key96163_ _default96164_)
        (let ((_table96167_
               (let () (declare (not safe)) (&raw-table-table _tab96162_)))
              (_seed96168_
               (let () (declare (not safe)) (&raw-table-seed _tab96162_))))
          (let* ((_h96170_
                  (fxxor (let () (declare (not safe)) (hash-key _key96163_))
                         _seed96168_))
                 (_size96173_ (vector-length _table96167_))
                 (_entries96176_ (fxquotient _size96173_ '2))
                 (_start96179_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96170_ _entries96176_)
                   '1)))
            (let _loop96183_ ((_probe96186_ _start96179_)
                              (_i96188_ '1)
                              (_deleted96190_ '#f))
              (let ((_k96193_ (vector-ref _table96167_ _probe96186_)))
                (if (let ((__tmp100456 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96193_ __tmp100456))
                    _default96164_
                    (if (let ((__tmp100455 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96193_ __tmp100455))
                        (let ((__tmp100454
                               (let ((_next-probe96196_
                                      (fx+ _start96179_
                                           _i96188_
                                           (fx* _i96188_ _i96188_))))
                                 (fxmodulo _next-probe96196_ _size96173_)))
                              (__tmp100453 (fx+ _i96188_ '1))
                              (__tmp100452
                               (let ((_$e96199_ _deleted96190_))
                                 (if _$e96199_ _$e96199_ _probe96186_))))
                          (declare (not safe))
                          (_loop96183_ __tmp100454 __tmp100453 __tmp100452))
                        (if (let ()
                              (declare (not safe))
                              (test-key _key96163_ _k96193_))
                            (vector-ref _table96167_ (fx+ _probe96186_ '1))
                            (let ((__tmp100451
                                   (let ((_next-probe96202_
                                          (fx+ _start96179_
                                               _i96188_
                                               (fx* _i96188_ _i96188_))))
                                     (fxmodulo _next-probe96202_ _size96173_)))
                                  (__tmp100450 (fx+ _i96188_ '1)))
                              (declare (not safe))
                              (_loop96183_
                               __tmp100451
                               __tmp100450
                               _deleted96190_)))))))))))
    (define prototype-table-set!
      (lambda (_tab96158_ _key96159_ _value96160_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab96158_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab96158_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab96158_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab96158_ _key96159_ _value96160_))))
    (define __prototype-table-set!
      (lambda (_tab96113_ _key96114_ _value96115_)
        (let ((_table96118_
               (let () (declare (not safe)) (&raw-table-table _tab96113_)))
              (_seed96119_
               (let () (declare (not safe)) (&raw-table-seed _tab96113_))))
          (let* ((_h96121_
                  (fxxor (let () (declare (not safe)) (hash-key _key96114_))
                         _seed96119_))
                 (_size96124_ (vector-length _table96118_))
                 (_entries96127_ (fxquotient _size96124_ '2))
                 (_start96130_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96121_ _entries96127_)
                   '1)))
            (let _loop96134_ ((_probe96137_ _start96130_)
                              (_i96139_ '1)
                              (_deleted96141_ '#f))
              (let ((_k96144_ (vector-ref _table96118_ _probe96137_)))
                (if (let ((__tmp100466 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96144_ __tmp100466))
                    (if _deleted96141_
                        (begin
                          (vector-set! _table96118_ _deleted96141_ _key96114_)
                          (vector-set!
                           _table96118_
                           (fx+ _deleted96141_ '1)
                           _value96115_)
                          ((lambda ()
                             (let ((__tmp100465
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96113_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96113_
                                __tmp100465)))))
                        (begin
                          (vector-set! _table96118_ _probe96137_ _key96114_)
                          (vector-set!
                           _table96118_
                           (fx+ _probe96137_ '1)
                           _value96115_)
                          ((lambda ()
                             (let ((__tmp100463
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab96113_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab96113_ __tmp100463))
                             (let ((__tmp100464
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab96113_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab96113_
                                __tmp100464))))))
                    (if (let ((__tmp100462 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96144_ __tmp100462))
                        (let ((__tmp100461
                               (let ((_next-probe96149_
                                      (fx+ _start96130_
                                           _i96139_
                                           (fx* _i96139_ _i96139_))))
                                 (fxmodulo _next-probe96149_ _size96124_)))
                              (__tmp100460 (fx+ _i96139_ '1))
                              (__tmp100459
                               (let ((_$e96152_ _deleted96141_))
                                 (if _$e96152_ _$e96152_ _probe96137_))))
                          (declare (not safe))
                          (_loop96134_ __tmp100461 __tmp100460 __tmp100459))
                        (if (let ()
                              (declare (not safe))
                              (test-key _key96114_ _k96144_))
                            (begin
                              (vector-set!
                               _table96118_
                               _probe96137_
                               _key96114_)
                              (vector-set!
                               _table96118_
                               (fx+ _probe96137_ '1)
                               _value96115_))
                            (let ((__tmp100458
                                   (let ((_next-probe96155_
                                          (fx+ _start96130_
                                               _i96139_
                                               (fx* _i96139_ _i96139_))))
                                     (fxmodulo _next-probe96155_ _size96124_)))
                                  (__tmp100457 (fx+ _i96139_ '1)))
                              (declare (not safe))
                              (_loop96134_
                               __tmp100458
                               __tmp100457
                               _deleted96141_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab96072_ _key96074_)
        (let ((_table96077_
               (let () (declare (not safe)) (&raw-table-table _tab96072_)))
              (_seed96079_
               (let () (declare (not safe)) (&raw-table-seed _tab96072_))))
          (let* ((_h96082_
                  (fxxor (let () (declare (not safe)) (hash-key _key96074_))
                         _seed96079_))
                 (_size96085_ (vector-length _table96077_))
                 (_entries96088_ (fxquotient _size96085_ '2))
                 (_start96091_
                  (fxarithmetic-shift-left
                   (fxmodulo _h96082_ _entries96088_)
                   '1)))
            (let _loop96095_ ((_probe96098_ _start96091_) (_i96100_ '1))
              (let ((_k96103_ (vector-ref _table96077_ _probe96098_)))
                (if (let ((__tmp100473 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k96103_ __tmp100473))
                    '#!void
                    (if (let ((__tmp100472 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k96103_ __tmp100472))
                        (let ((__tmp100471
                               (let ((_next-probe96106_
                                      (fx+ _start96091_
                                           _i96100_
                                           (fx* _i96100_ _i96100_))))
                                 (fxmodulo _next-probe96106_ _size96085_)))
                              (__tmp100470 (fx+ _i96100_ '1)))
                          (declare (not safe))
                          (_loop96095_ __tmp100471 __tmp100470))
                        (if (let ()
                              (declare (not safe))
                              (test-key _key96074_ _k96103_))
                            (begin
                              (vector-set!
                               _table96077_
                               _probe96098_
                               (macro-deleted-obj))
                              (vector-set!
                               _table96077_
                               (fx+ _probe96098_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100469
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab96072_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab96072_
                                    __tmp100469)))))
                            (let ((__tmp100468
                                   (let ((_next-probe96110_
                                          (fx+ _start96091_
                                               _i96100_
                                               (fx* _i96100_ _i96100_))))
                                     (fxmodulo _next-probe96110_ _size96085_)))
                                  (__tmp100467 (fx+ _i96100_ '1)))
                              (declare (not safe))
                              (_loop96095_ __tmp100468 __tmp100467)))))))))))
    (define __interface-prototypes-mx (make-mutex 'interface-prototype))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass96064_)
        (let ((_super9606596067_
               (let () (declare (not safe)) (##type-super _klass96064_))))
          (if _super9606596067_
              (let ((_super96070_ _super9606596067_))
                (let ((__tmp100475
                       (let () (declare (not safe)) (##type-id _super96070_)))
                      (__tmp100474
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp100475 __tmp100474)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor95960_ _klass95961_ _obj-klass95962_)
        (let _loop95964_ ((_rest95967_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor95960_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count95969_ '0)
                          (_methods95971_ '()))
          (let* ((_rest9597395981_ _rest95967_)
                 (_else9597596037_
                  (lambda ()
                    (let ((_prototype95989_
                           (let ((__obj100431
                                  (let ((__tmp100476
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95969_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass95961_
                                     __tmp100476))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj100431 '#f))
                             __obj100431)))
                      (let _loop95992_ ((_rest95994_ _methods95971_)
                                        (_off95995_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95969_ '1))))
                        (let* ((_rest9599796005_ _rest95994_)
                               (_else9599996018_
                                (lambda ()
                                  (let ((_prototype-key96013_
                                         (let ((__tmp100478
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass95961_)))
                                               (__tmp100477
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass95962_))))
                                           (declare (not safe))
                                           (cons __tmp100478 __tmp100477))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key96013_
                                       _prototype95989_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype96016_)
                                       _prototype96016_)
                                     _prototype95989_))))
                               (_K9600196025_
                                (lambda (_rest96021_ _method96022_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype95989_
                                     _method96022_
                                     _off95995_
                                     _klass95961_
                                     '#f))
                                  (let ((__tmp100479
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off95995_ '1))))
                                    (declare (not safe))
                                    (_loop95992_ _rest96021_ __tmp100479)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9599796005_))
                              (let ((_hd9600296028_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9599796005_)))
                                    (_tl9600396030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9599796005_))))
                                (let* ((_method96033_ _hd9600296028_)
                                       (_rest96035_ _tl9600396030_))
                                  (declare (not safe))
                                  (_K9600196025_ _rest96035_ _method96033_)))
                              (let ()
                                (declare (not safe))
                                (_else9599996018_))))))))
                 (_K9597796052_
                  (lambda (_rest96040_ _method-name96041_)
                    (let ((_$e96044_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass95962_
                              '#f
                              _method-name96041_))))
                      (if _$e96044_
                          ((lambda (_method96047_)
                             (let ((__tmp100481
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count95969_ '1)))
                                   (__tmp100480
                                    (let ()
                                      (declare (not safe))
                                      (cons _method96047_ _methods95971_))))
                               (declare (not safe))
                               (_loop95964_
                                _rest96040_
                                __tmp100481
                                __tmp100480)))
                           _$e96044_)
                          ((lambda (_klass96049_ _method-name96050_)
                             (let ()
                               (declare (not safe))
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'class:
                                _klass96049_
                                'method:
                                _method-name96050_)))
                           _klass95961_
                           _method-name96041_))))))
            (if (let () (declare (not safe)) (##pair? _rest9597395981_))
                (let ((_hd9597896055_
                       (let () (declare (not safe)) (##car _rest9597395981_)))
                      (_tl9597996057_
                       (let () (declare (not safe)) (##cdr _rest9597395981_))))
                  (let* ((_method-name96060_ _hd9597896055_)
                         (_rest96062_ _tl9597996057_))
                    (declare (not safe))
                    (_K9597796052_ _rest96062_ _method-name96060_)))
                (let () (declare (not safe)) (_else9597596037_)))))))
    (define try-create-prototype
      (lambda (_descriptor95856_ _klass95857_ _obj-klass95858_)
        (let _loop95860_ ((_rest95863_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _descriptor95856_
                              '2
                              interface-descriptor::t
                              '#f)))
                          (_count95865_ '0)
                          (_methods95867_ '()))
          (let* ((_rest9586995877_ _rest95863_)
                 (_else9587195933_
                  (lambda ()
                    (let ((_prototype95885_
                           (let ((__obj100432
                                  (let ((__tmp100482
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95865_ '2))))
                                    (declare (not safe))
                                    (##make-structure
                                     _klass95857_
                                     __tmp100482))))
                             (let ()
                               (declare (not safe))
                               (object-fill! __obj100432 '#f))
                             __obj100432)))
                      (let _loop95888_ ((_rest95890_ _methods95867_)
                                        (_off95891_
                                         (let ()
                                           (declare (not safe))
                                           (##fx+ _count95865_ '1))))
                        (let* ((_rest9589395901_ _rest95890_)
                               (_else9589595914_
                                (lambda ()
                                  (let ((_prototype-key95909_
                                         (let ((__tmp100484
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _klass95857_)))
                                               (__tmp100483
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id
                                                   _obj-klass95858_))))
                                           (declare (not safe))
                                           (cons __tmp100484 __tmp100483))))
                                    (macro-mutex-lock!
                                     __interface-prototypes-mx
                                     '#f
                                     (macro-current-thread))
                                    (let ()
                                      (declare (not safe))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _prototype-key95909_
                                       _prototype95885_))
                                    (macro-mutex-unlock!
                                     __interface-prototypes-mx)
                                    ((lambda (_prototype95912_)
                                       _prototype95912_)
                                     _prototype95885_))))
                               (_K9589795921_
                                (lambda (_rest95917_ _method95918_)
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _prototype95885_
                                     _method95918_
                                     _off95891_
                                     _klass95857_
                                     '#f))
                                  (let ((__tmp100485
                                         (let ()
                                           (declare (not safe))
                                           (##fx- _off95891_ '1))))
                                    (declare (not safe))
                                    (_loop95888_ _rest95917_ __tmp100485)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest9589395901_))
                              (let ((_hd9589895924_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest9589395901_)))
                                    (_tl9589995926_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest9589395901_))))
                                (let* ((_method95929_ _hd9589895924_)
                                       (_rest95931_ _tl9589995926_))
                                  (declare (not safe))
                                  (_K9589795921_ _rest95931_ _method95929_)))
                              (let ()
                                (declare (not safe))
                                (_else9589595914_))))))))
                 (_K9587395948_
                  (lambda (_rest95936_ _method-name95937_)
                    (let ((_$e95940_
                           (let ()
                             (declare (not safe))
                             (find-method
                              _obj-klass95858_
                              '#f
                              _method-name95937_))))
                      (if _$e95940_
                          ((lambda (_method95943_)
                             (let ((__tmp100487
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _count95865_ '1)))
                                   (__tmp100486
                                    (let ()
                                      (declare (not safe))
                                      (cons _method95943_ _methods95867_))))
                               (declare (not safe))
                               (_loop95860_
                                _rest95936_
                                __tmp100487
                                __tmp100486)))
                           _$e95940_)
                          ((lambda (_klass95945_ _method-name95946_) '#f)
                           _klass95857_
                           _method-name95937_))))))
            (if (let () (declare (not safe)) (##pair? _rest9586995877_))
                (let ((_hd9587495951_
                       (let () (declare (not safe)) (##car _rest9586995877_)))
                      (_tl9587595953_
                       (let () (declare (not safe)) (##cdr _rest9586995877_))))
                  (let* ((_method-name95956_ _hd9587495951_)
                         (_rest95958_ _tl9587595953_))
                    (declare (not safe))
                    (_K9587395948_ _rest95958_ _method-name95956_)))
                (let () (declare (not safe)) (_else9587195933_)))))))
    (define cast
      (lambda (_descriptor95821_ _obj95823_)
        (if (let () (declare (not safe)) (##structure? _obj95823_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95821_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95831_
                      (let () (declare (not safe)) (##type-id _klass95828_)))
                     (_obj-klass95834_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95823_)))
                     (_obj-klass-id95837_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95834_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95831_ _obj-klass-id95837_))
                    _obj95823_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95834_))
                        (let ((__tmp100488
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95823_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor95821_ __tmp100488))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95831_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95837_))
                          (let ((_prototype95847_
                                 (let ((_$e95841_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95841_
                                       ((lambda (_prototype95844_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95844_)
                                        _$e95841_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (create-prototype
                                            _descriptor95821_
                                            _klass95828_
                                            _obj-klass95834_)))))))
                            ((lambda (_prototype95849_ _obj95850_)
                               (let ((_instance95852_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype95849_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance95852_
                                    _obj95850_
                                    '1
                                    '#f
                                    'cast))
                                 _instance95852_))
                             _prototype95847_
                             _obj95823_)))))))
            ((lambda (_obj95854_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj95854_)))
             _obj95823_))))
    (define try-cast
      (lambda (_descriptor95786_ _obj95788_)
        (if (let () (declare (not safe)) (##structure? _obj95788_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95793_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95786_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95796_
                      (let () (declare (not safe)) (##type-id _klass95793_)))
                     (_obj-klass95799_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95788_)))
                     (_obj-klass-id95802_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95799_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95796_ _obj-klass-id95802_))
                    _obj95788_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95799_))
                        (let ((__tmp100489
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95788_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor95786_ __tmp100489))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95796_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95802_))
                          (let ((_prototype95812_
                                 (let ((_$e95806_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95806_
                                       ((lambda (_prototype95809_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95809_)
                                        _$e95806_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor95786_
                                            _klass95793_
                                            _obj-klass95799_)))))))
                            ((lambda (_prototype95814_ _obj95815_)
                               (if _prototype95814_
                                   (let ((_instance95817_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype95814_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance95817_
                                        _obj95815_
                                        '1
                                        '#f
                                        'cast))
                                     _instance95817_)
                                   '#f))
                             _prototype95812_
                             _obj95788_)))))))
            ((lambda (_obj95819_) '#f) _obj95788_))))
    (define satisfies?
      (lambda (_descriptor95753_ _obj95755_)
        (if (let () (declare (not safe)) (##structure? _obj95755_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass95760_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor95753_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id95763_
                      (let () (declare (not safe)) (##type-id _klass95760_)))
                     (_obj-klass95766_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj95755_)))
                     (_obj-klass-id95769_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass95766_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id95763_ _obj-klass-id95769_))
                    _obj95755_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass95766_))
                        (let ((__tmp100490
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj95755_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor95753_ __tmp100490))
                        (begin
                          (macro-mutex-lock!
                           __interface-prototypes-mx
                           '#f
                           (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id95763_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id95769_))
                          (let ((_prototype95779_
                                 (let ((_$e95773_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e95773_
                                       ((lambda (_prototype95776_)
                                          (macro-mutex-unlock!
                                           __interface-prototypes-mx)
                                          _prototype95776_)
                                        _$e95773_)
                                       (begin
                                         (macro-mutex-unlock!
                                          __interface-prototypes-mx)
                                         (let ()
                                           (declare (not safe))
                                           (try-create-prototype
                                            _descriptor95753_
                                            _klass95760_
                                            _obj-klass95766_)))))))
                            ((lambda (_prototype95781_ _obj95782_)
                               (if _prototype95781_ '#t '#f))
                             _prototype95779_
                             _obj95755_)))))))
            ((lambda (_obj95784_) '#f) _obj95755_))))))
