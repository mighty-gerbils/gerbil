(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1708451992)
  (begin
    (define CastError::t
      (let ((__tmp65076 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp65076
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args65069_ (apply make-instance CastError::t _$args65069_)))
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
      (lambda (_where64943_ _message64944_ . _irritants64945_)
        (raise (let ((__obj65072
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj65072
                  _message64944_
                  'where:
                  _where64943_
                  'irritants:
                  _irritants64945_)
                 __obj65072))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp65079 (list))
            (__tmp65077
             (let ((__tmp65078
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp65078 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp65079
         '(__object)
         __tmp65077
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
      (let ((__tmp65084 (list))
            (__tmp65080
             (let ((__tmp65083
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp65081
                    (let ((__tmp65082
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp65082 '()))))
               (declare (not safe))
               (cons __tmp65083 __tmp65081))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp65084
         '(type methods)
         __tmp65080
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args64940_
        (apply make-instance interface-descriptor::t _$args64940_)))
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
      (lambda (_key64938_)
        (let ((__tmp65086
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key64938_))))
              (__tmp65085
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key64938_)))))
          (declare (not safe))
          (##fxxor __tmp65086 __tmp65085))))
    (define __interface-test-key
      (lambda (_a64935_ _b64936_)
        (if (let ((__tmp65088 (let () (declare (not safe)) (##car _a64935_)))
                  (__tmp65087 (let () (declare (not safe)) (##car _b64936_))))
              (declare (not safe))
              (##eq? __tmp65088 __tmp65087))
            (let ((__tmp65090 (let () (declare (not safe)) (##cdr _a64935_)))
                  (__tmp65089 (let () (declare (not safe)) (##cdr _b64936_))))
              (declare (not safe))
              (##eq? __tmp65090 __tmp65089))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint64916_ _seed64918_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint64916_
           __interface-hash-key
           __interface-test-key
           _seed64918_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint64924_ '#f) (_seed64926_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint64924_ _seed64926_))))
    (define make-prototype-table__1
      (lambda (_size-hint64928_)
        (let ((_seed64930_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint64928_ _seed64930_))))
    (define make-prototype-table
      (lambda _g65092_
        (let ((_g65091_ (let () (declare (not safe)) (##length _g65092_))))
          (cond ((let () (declare (not safe)) (##fx= _g65091_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g65092_))
                ((let () (declare (not safe)) (##fx= _g65091_ 1))
                 (apply (lambda (_size-hint64928_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint64928_)))
                        _g65092_))
                ((let () (declare (not safe)) (##fx= _g65091_ 2))
                 (apply (lambda (_size-hint64932_ _seed64933_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint64932_
                             _seed64933_)))
                        _g65092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g65092_))))))
    (define prototype-table-ref
      (lambda (_tab64873_ _key64874_ _default64875_)
        (let ((_table64877_
               (let () (declare (not safe)) (&raw-table-table _tab64873_)))
              (_seed64878_
               (let () (declare (not safe)) (&raw-table-seed _tab64873_))))
          (let* ((_h64880_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key64874_))
                         _seed64878_))
                 (_size64883_ (vector-length _table64877_))
                 (_entries64886_ (fxquotient _size64883_ '2))
                 (_start64889_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64880_ _entries64886_)
                   '1)))
            (let _loop64893_ ((_probe64896_ _start64889_)
                              (_i64898_ '1)
                              (_deleted64900_ '#f))
              (let ((_k64903_ (vector-ref _table64877_ _probe64896_)))
                (if (let ((__tmp65093 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64903_ __tmp65093))
                    _default64875_
                    (if (let ((__tmp65094 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64903_ __tmp65094))
                        (let ((__tmp65097
                               (let ((_next-probe64906_
                                      (fx+ _start64889_
                                           _i64898_
                                           (fx* _i64898_ _i64898_))))
                                 (fxmodulo _next-probe64906_ _size64883_)))
                              (__tmp65096 (fx+ _i64898_ '1))
                              (__tmp65095
                               (let ((_$e64909_ _deleted64900_))
                                 (if _$e64909_ _$e64909_ _probe64896_))))
                          (declare (not safe))
                          (_loop64893_ __tmp65097 __tmp65096 __tmp65095))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key64874_ _k64903_))
                            (vector-ref _table64877_ (fx+ _probe64896_ '1))
                            (let ((__tmp65099
                                   (let ((_next-probe64912_
                                          (fx+ _start64889_
                                               _i64898_
                                               (fx* _i64898_ _i64898_))))
                                     (fxmodulo _next-probe64912_ _size64883_)))
                                  (__tmp65098 (fx+ _i64898_ '1)))
                              (declare (not safe))
                              (_loop64893_
                               __tmp65099
                               __tmp65098
                               _deleted64900_)))))))))))
    (define prototype-table-set!
      (lambda (_tab64869_ _key64870_ _value64871_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64869_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64869_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64869_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab64869_ _key64870_ _value64871_))))
    (define __prototype-table-set!
      (lambda (_tab64824_ _key64825_ _value64826_)
        (let ((_table64829_
               (let () (declare (not safe)) (&raw-table-table _tab64824_)))
              (_seed64830_
               (let () (declare (not safe)) (&raw-table-seed _tab64824_))))
          (let* ((_h64832_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key64825_))
                         _seed64830_))
                 (_size64835_ (vector-length _table64829_))
                 (_entries64838_ (fxquotient _size64835_ '2))
                 (_start64841_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64832_ _entries64838_)
                   '1)))
            (let _loop64845_ ((_probe64848_ _start64841_)
                              (_i64850_ '1)
                              (_deleted64852_ '#f))
              (let ((_k64855_ (vector-ref _table64829_ _probe64848_)))
                (if (let ((__tmp65100 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64855_ __tmp65100))
                    (if _deleted64852_
                        (begin
                          (vector-set! _table64829_ _deleted64852_ _key64825_)
                          (vector-set!
                           _table64829_
                           (fx+ _deleted64852_ '1)
                           _value64826_)
                          ((lambda ()
                             (let ((__tmp65101
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64824_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64824_
                                __tmp65101)))))
                        (begin
                          (vector-set! _table64829_ _probe64848_ _key64825_)
                          (vector-set!
                           _table64829_
                           (fx+ _probe64848_ '1)
                           _value64826_)
                          ((lambda ()
                             (let ((__tmp65102
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64824_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64824_ __tmp65102))
                             (let ((__tmp65103
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64824_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64824_
                                __tmp65103))))))
                    (if (let ((__tmp65104 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64855_ __tmp65104))
                        (let ((__tmp65107
                               (let ((_next-probe64860_
                                      (fx+ _start64841_
                                           _i64850_
                                           (fx* _i64850_ _i64850_))))
                                 (fxmodulo _next-probe64860_ _size64835_)))
                              (__tmp65106 (fx+ _i64850_ '1))
                              (__tmp65105
                               (let ((_$e64863_ _deleted64852_))
                                 (if _$e64863_ _$e64863_ _probe64848_))))
                          (declare (not safe))
                          (_loop64845_ __tmp65107 __tmp65106 __tmp65105))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key64825_ _k64855_))
                            (begin
                              (vector-set!
                               _table64829_
                               _probe64848_
                               _key64825_)
                              (vector-set!
                               _table64829_
                               (fx+ _probe64848_ '1)
                               _value64826_))
                            (let ((__tmp65109
                                   (let ((_next-probe64866_
                                          (fx+ _start64841_
                                               _i64850_
                                               (fx* _i64850_ _i64850_))))
                                     (fxmodulo _next-probe64866_ _size64835_)))
                                  (__tmp65108 (fx+ _i64850_ '1)))
                              (declare (not safe))
                              (_loop64845_
                               __tmp65109
                               __tmp65108
                               _deleted64852_)))))))))))
    (define prototype-table-update!
      (lambda (_tab64819_
               _key64820_
               _prototype-table-update!64821_
               _default64822_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab64819_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab64819_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab64819_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab64819_
           _key64820_
           _prototype-table-update!64821_
           _default64822_))))
    (define __prototype-table-update!
      (lambda (_tab64773_
               _key64774_
               _prototype-table-update!64775_
               _default64776_)
        (let ((_table64779_
               (let () (declare (not safe)) (&raw-table-table _tab64773_)))
              (_seed64780_
               (let () (declare (not safe)) (&raw-table-seed _tab64773_))))
          (let* ((_h64782_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key64774_))
                         _seed64780_))
                 (_size64785_ (vector-length _table64779_))
                 (_entries64788_ (fxquotient _size64785_ '2))
                 (_start64791_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64782_ _entries64788_)
                   '1)))
            (let _loop64795_ ((_probe64798_ _start64791_)
                              (_i64800_ '1)
                              (_deleted64802_ '#f))
              (let ((_k64805_ (vector-ref _table64779_ _probe64798_)))
                (if (let ((__tmp65110 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64805_ __tmp65110))
                    (if _deleted64802_
                        (begin
                          (vector-set! _table64779_ _deleted64802_ _key64774_)
                          (vector-set!
                           _table64779_
                           (fx+ _deleted64802_ '1)
                           (_prototype-table-update!64775_ _default64776_))
                          ((lambda ()
                             (let ((__tmp65111
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64773_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64773_
                                __tmp65111)))))
                        (begin
                          (vector-set! _table64779_ _probe64798_ _key64774_)
                          (vector-set!
                           _table64779_
                           (fx+ _probe64798_ '1)
                           (_prototype-table-update!64775_ _default64776_))
                          ((lambda ()
                             (let ((__tmp65112
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab64773_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab64773_ __tmp65112))
                             (let ((__tmp65113
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab64773_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab64773_
                                __tmp65113))))))
                    (if (let ((__tmp65114 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64805_ __tmp65114))
                        (let ((__tmp65117
                               (let ((_next-probe64810_
                                      (fx+ _start64791_
                                           _i64800_
                                           (fx* _i64800_ _i64800_))))
                                 (fxmodulo _next-probe64810_ _size64785_)))
                              (__tmp65116 (fx+ _i64800_ '1))
                              (__tmp65115
                               (let ((_$e64813_ _deleted64802_))
                                 (if _$e64813_ _$e64813_ _probe64798_))))
                          (declare (not safe))
                          (_loop64795_ __tmp65117 __tmp65116 __tmp65115))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key64774_ _k64805_))
                            (begin
                              (vector-set!
                               _table64779_
                               _probe64798_
                               _key64774_)
                              (vector-set!
                               _table64779_
                               (fx+ _probe64798_ '1)
                               (_prototype-table-update!64775_
                                (vector-ref
                                 _table64779_
                                 (fx+ _probe64798_ '1)))))
                            (let ((__tmp65119
                                   (let ((_next-probe64816_
                                          (fx+ _start64791_
                                               _i64800_
                                               (fx* _i64800_ _i64800_))))
                                     (fxmodulo _next-probe64816_ _size64785_)))
                                  (__tmp65118 (fx+ _i64800_ '1)))
                              (declare (not safe))
                              (_loop64795_
                               __tmp65119
                               __tmp65118
                               _deleted64802_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab64732_ _key64734_)
        (let ((_table64737_
               (let () (declare (not safe)) (&raw-table-table _tab64732_)))
              (_seed64739_
               (let () (declare (not safe)) (&raw-table-seed _tab64732_))))
          (let* ((_h64742_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key64734_))
                         _seed64739_))
                 (_size64745_ (vector-length _table64737_))
                 (_entries64748_ (fxquotient _size64745_ '2))
                 (_start64751_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64742_ _entries64748_)
                   '1)))
            (let _loop64755_ ((_probe64758_ _start64751_) (_i64760_ '1))
              (let ((_k64763_ (vector-ref _table64737_ _probe64758_)))
                (if (let ((__tmp65120 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k64763_ __tmp65120))
                    '#!void
                    (if (let ((__tmp65121 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k64763_ __tmp65121))
                        (let ((__tmp65123
                               (let ((_next-probe64766_
                                      (fx+ _start64751_
                                           _i64760_
                                           (fx* _i64760_ _i64760_))))
                                 (fxmodulo _next-probe64766_ _size64745_)))
                              (__tmp65122 (fx+ _i64760_ '1)))
                          (declare (not safe))
                          (_loop64755_ __tmp65123 __tmp65122))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key64734_ _k64763_))
                            (begin
                              (vector-set!
                               _table64737_
                               _probe64758_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64737_
                               (fx+ _probe64758_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp65124
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab64732_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab64732_
                                    __tmp65124)))))
                            (let ((__tmp65126
                                   (let ((_next-probe64770_
                                          (fx+ _start64751_
                                               _i64760_
                                               (fx* _i64760_ _i64760_))))
                                     (fxmodulo _next-probe64770_ _size64745_)))
                                  (__tmp65125 (fx+ _i64760_ '1)))
                              (declare (not safe))
                              (_loop64755_ __tmp65126 __tmp65125)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass64724_)
        (let ((_super6472564727_
               (let () (declare (not safe)) (##type-super _klass64724_))))
          (if _super6472564727_
              (let ((_super64730_ _super6472564727_))
                (let ((__tmp65128
                       (let () (declare (not safe)) (##type-id _super64730_)))
                      (__tmp65127
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp65128 __tmp65127)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor64611_ _klass64612_ _obj-klass64613_)
        (let ((_method-table64615_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass64613_))))
          (let _loop64618_ ((_rest64621_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor64611_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count64623_ '0)
                            (_methods64625_ '()))
            (let* ((_rest6462764635_ _rest64621_)
                   (_else6462964697_
                    (lambda ()
                      (let ((_prototype64643_
                             (let ((__obj65074
                                    (let ((__tmp65129
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64623_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass64612_
                                       __tmp65129))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj65074 '#f))
                               __obj65074)))
                        (let _loop64646_ ((_rest64648_ _methods64625_)
                                          (_off64649_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64623_ '1))))
                          (let* ((_rest6465164659_ _rest64648_)
                                 (_else6465364678_
                                  (lambda ()
                                    (let ((_prototype-key64667_
                                           (let ((__tmp65131
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass64612_)))
                                                 (__tmp65130
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass64613_))))
                                             (declare (not safe))
                                             (cons __tmp65131 __tmp65130))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again64672_ ()
                                          (if (let ((__tmp65132
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp65132 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again64672_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key64667_
                                         _prototype64643_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype64676_)
                                         _prototype64676_)
                                       _prototype64643_))))
                                 (_K6465564685_
                                  (lambda (_rest64681_ _method64682_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype64643_
                                       _method64682_
                                       _off64649_
                                       _klass64612_
                                       '#f))
                                    (let ((__tmp65133
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off64649_ '1))))
                                      (declare (not safe))
                                      (_loop64646_ _rest64681_ __tmp65133)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6465164659_))
                                (let ((_hd6465664688_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6465164659_)))
                                      (_tl6465764690_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6465164659_))))
                                  (let* ((_method64693_ _hd6465664688_)
                                         (_rest64695_ _tl6465764690_))
                                    (declare (not safe))
                                    (_K6465564685_ _rest64695_ _method64693_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6465364678_))))))))
                   (_K6463164712_
                    (lambda (_rest64700_ _method-name64701_)
                      (let ((_$e64704_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table64615_
                                _method-name64701_
                                '#f))))
                        (if _$e64704_
                            ((lambda (_method64707_)
                               (let ((__tmp65135
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count64623_ '1)))
                                     (__tmp65134
                                      (let ()
                                        (declare (not safe))
                                        (cons _method64707_ _methods64625_))))
                                 (declare (not safe))
                                 (_loop64618_
                                  _rest64700_
                                  __tmp65135
                                  __tmp65134)))
                             _$e64704_)
                            ((lambda (_klass64709_ _method-name64710_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass64709_
                                  'method:
                                  _method-name64710_)))
                             _klass64612_
                             _method-name64701_))))))
              (if (let () (declare (not safe)) (##pair? _rest6462764635_))
                  (let ((_hd6463264715_
                         (let ()
                           (declare (not safe))
                           (##car _rest6462764635_)))
                        (_tl6463364717_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6462764635_))))
                    (let* ((_method-name64720_ _hd6463264715_)
                           (_rest64722_ _tl6463364717_))
                      (declare (not safe))
                      (_K6463164712_ _rest64722_ _method-name64720_)))
                  (let () (declare (not safe)) (_else6462964697_))))))))
    (define try-create-prototype
      (lambda (_descriptor64498_ _klass64499_ _obj-klass64500_)
        (let ((_method-table64502_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass64500_))))
          (let _loop64505_ ((_rest64508_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor64498_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count64510_ '0)
                            (_methods64512_ '()))
            (let* ((_rest6451464522_ _rest64508_)
                   (_else6451664584_
                    (lambda ()
                      (let ((_prototype64530_
                             (let ((__obj65075
                                    (let ((__tmp65136
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64510_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass64499_
                                       __tmp65136))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj65075 '#f))
                               __obj65075)))
                        (let _loop64533_ ((_rest64535_ _methods64512_)
                                          (_off64536_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count64510_ '1))))
                          (let* ((_rest6453864546_ _rest64535_)
                                 (_else6454064565_
                                  (lambda ()
                                    (let ((_prototype-key64554_
                                           (let ((__tmp65138
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass64499_)))
                                                 (__tmp65137
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass64500_))))
                                             (declare (not safe))
                                             (cons __tmp65138 __tmp65137))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again64559_ ()
                                          (if (let ((__tmp65139
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp65139 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again64559_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key64554_
                                         _prototype64530_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype64563_)
                                         _prototype64563_)
                                       _prototype64530_))))
                                 (_K6454264572_
                                  (lambda (_rest64568_ _method64569_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype64530_
                                       _method64569_
                                       _off64536_
                                       _klass64499_
                                       '#f))
                                    (let ((__tmp65140
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off64536_ '1))))
                                      (declare (not safe))
                                      (_loop64533_ _rest64568_ __tmp65140)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6453864546_))
                                (let ((_hd6454364575_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6453864546_)))
                                      (_tl6454464577_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6453864546_))))
                                  (let* ((_method64580_ _hd6454364575_)
                                         (_rest64582_ _tl6454464577_))
                                    (declare (not safe))
                                    (_K6454264572_ _rest64582_ _method64580_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6454064565_))))))))
                   (_K6451864599_
                    (lambda (_rest64587_ _method-name64588_)
                      (let ((_$e64591_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table64502_
                                _method-name64588_
                                '#f))))
                        (if _$e64591_
                            ((lambda (_method64594_)
                               (let ((__tmp65142
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count64510_ '1)))
                                     (__tmp65141
                                      (let ()
                                        (declare (not safe))
                                        (cons _method64594_ _methods64512_))))
                                 (declare (not safe))
                                 (_loop64505_
                                  _rest64587_
                                  __tmp65142
                                  __tmp65141)))
                             _$e64591_)
                            ((lambda (_klass64596_ _method-name64597_) '#f)
                             _klass64499_
                             _method-name64588_))))))
              (if (let () (declare (not safe)) (##pair? _rest6451464522_))
                  (let ((_hd6451964602_
                         (let ()
                           (declare (not safe))
                           (##car _rest6451464522_)))
                        (_tl6452064604_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6451464522_))))
                    (let* ((_method-name64607_ _hd6451964602_)
                           (_rest64609_ _tl6452064604_))
                      (declare (not safe))
                      (_K6451864599_ _rest64609_ _method-name64607_)))
                  (let () (declare (not safe)) (_else6451664584_))))))))
    (define cast
      (lambda (_descriptor64457_ _obj64459_)
        (if (let () (declare (not safe)) (##structure? _obj64459_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64464_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64457_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64467_
                      (let () (declare (not safe)) (##type-id _klass64464_)))
                     (_obj-klass64470_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64459_)))
                     (_obj-klass-id64473_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64470_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64467_ _obj-klass-id64473_))
                    _obj64459_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64470_))
                        (let ((__tmp65143
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64459_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor64457_ __tmp65143))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64479_ ()
                              (if (let ((__tmp65144
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65144 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64479_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64467_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64473_))
                          (let ((_prototype64489_
                                 (let ((_$e64483_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64483_
                                       ((lambda (_prototype64486_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64486_)
                                        _$e64483_)
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
                                            _descriptor64457_
                                            _klass64464_
                                            _obj-klass64470_)))))))
                            ((lambda (_prototype64491_ _obj64492_)
                               (let ((_instance64494_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype64491_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance64494_
                                    _obj64492_
                                    '1
                                    '#f
                                    'cast))
                                 _instance64494_))
                             _prototype64489_
                             _obj64459_)))))))
            ((lambda (_obj64496_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj64496_)))
             _obj64459_))))
    (define try-cast
      (lambda (_descriptor64416_ _obj64418_)
        (if (let () (declare (not safe)) (##structure? _obj64418_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64423_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64416_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64426_
                      (let () (declare (not safe)) (##type-id _klass64423_)))
                     (_obj-klass64429_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64418_)))
                     (_obj-klass-id64432_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64429_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64426_ _obj-klass-id64432_))
                    _obj64418_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64429_))
                        (let ((__tmp65145
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64418_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor64416_ __tmp65145))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64438_ ()
                              (if (let ((__tmp65146
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65146 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64438_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64426_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64432_))
                          (let ((_prototype64448_
                                 (let ((_$e64442_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64442_
                                       ((lambda (_prototype64445_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64445_)
                                        _$e64442_)
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
                                            _descriptor64416_
                                            _klass64423_
                                            _obj-klass64429_)))))))
                            ((lambda (_prototype64450_ _obj64451_)
                               (if _prototype64450_
                                   (let ((_instance64453_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype64450_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance64453_
                                        _obj64451_
                                        '1
                                        '#f
                                        'cast))
                                     _instance64453_)
                                   '#f))
                             _prototype64448_
                             _obj64418_)))))))
            ((lambda (_obj64455_) '#f) _obj64418_))))
    (define satisfies?
      (lambda (_descriptor64377_ _obj64379_)
        (if (let () (declare (not safe)) (##structure? _obj64379_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass64384_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor64377_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id64387_
                      (let () (declare (not safe)) (##type-id _klass64384_)))
                     (_obj-klass64390_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj64379_)))
                     (_obj-klass-id64393_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass64390_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id64387_ _obj-klass-id64393_))
                    _obj64379_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass64390_))
                        (let ((__tmp65147
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj64379_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor64377_ __tmp65147))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again64399_ ()
                              (if (let ((__tmp65148
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp65148 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again64399_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id64387_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id64393_))
                          (let ((_prototype64409_
                                 (let ((_$e64403_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e64403_
                                       ((lambda (_prototype64406_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype64406_)
                                        _$e64403_)
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
                                            _descriptor64377_
                                            _klass64384_
                                            _obj-klass64390_)))))))
                            ((lambda (_prototype64411_ _obj64412_)
                               (if _prototype64411_ '#t '#f))
                             _prototype64409_
                             _obj64379_)))))))
            ((lambda (_obj64414_) '#f) _obj64379_))))))
