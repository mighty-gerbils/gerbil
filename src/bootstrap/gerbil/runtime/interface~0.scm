(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1711709196)
  (begin
    (define CastError::t
      (let ((__tmp69256 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp69256
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args69249_ (apply make-instance CastError::t _$args69249_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method! CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_where69123_ _message69124_ . _irritants69125_)
        (let ((__tmp69257
               (let ((__obj69252
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj69252
                  _message69124_
                  'where:
                  _where69123_
                  'irritants:
                  _irritants69125_)
                 __obj69252)))
          (declare (not safe))
          (raise __tmp69257))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp69259 (list)) (__tmp69258 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp69259
         '(__object)
         __tmp69258
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t '__object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t '__object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-instance::t
         '__object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t '__object)))
    (define interface-descriptor::t
      (let ((__tmp69261 (list))
            (__tmp69260
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp69261
         '(type methods)
         __tmp69260
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args69120_
        (apply make-instance interface-descriptor::t _$args69120_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define __interface-hash-key
      (lambda (_key69118_)
        (let ((__tmp69263
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key69118_))))
              (__tmp69262
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key69118_)))))
          (declare (not safe))
          (##fxxor __tmp69263 __tmp69262))))
    (define __interface-test-key
      (lambda (_a69115_ _b69116_)
        (if (let ((__tmp69265 (let () (declare (not safe)) (##car _a69115_)))
                  (__tmp69264 (let () (declare (not safe)) (##car _b69116_))))
              (declare (not safe))
              (##eq? __tmp69265 __tmp69264))
            (let ((__tmp69267 (let () (declare (not safe)) (##cdr _a69115_)))
                  (__tmp69266 (let () (declare (not safe)) (##cdr _b69116_))))
              (declare (not safe))
              (##eq? __tmp69267 __tmp69266))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint69096_ _seed69098_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint69096_
           __interface-hash-key
           __interface-test-key
           _seed69098_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint69104_ '#f) (_seed69106_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69104_ _seed69106_))))
    (define make-prototype-table__1
      (lambda (_size-hint69108_)
        (let ((_seed69110_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint69108_ _seed69110_))))
    (define make-prototype-table
      (lambda _g69269_
        (let ((_g69268_ (let () (declare (not safe)) (##length _g69269_))))
          (cond ((let () (declare (not safe)) (##fx= _g69268_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g69269_))
                ((let () (declare (not safe)) (##fx= _g69268_ 1))
                 (apply (lambda (_size-hint69108_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint69108_)))
                        _g69269_))
                ((let () (declare (not safe)) (##fx= _g69268_ 2))
                 (apply (lambda (_size-hint69112_ _seed69113_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint69112_
                             _seed69113_)))
                        _g69269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g69269_))))))
    (define prototype-table-ref
      (lambda (_tab69053_ _key69054_ _default69055_)
        (let ((_table69057_
               (let () (declare (not safe)) (&raw-table-table _tab69053_)))
              (_seed69058_
               (let () (declare (not safe)) (&raw-table-seed _tab69053_))))
          (let* ((_h69060_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69054_))
                         _seed69058_))
                 (_size69063_ (vector-length _table69057_))
                 (_entries69066_
                  (let () (declare (not safe)) (##fxquotient _size69063_ '2)))
                 (_start69069_
                  (let ((__tmp69270
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h69060_ _entries69066_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp69270 '1))))
            (let _loop69073_ ((_probe69076_ _start69069_)
                              (_i69078_ '1)
                              (_deleted69080_ '#f))
              (let ((_k69083_ (vector-ref _table69057_ _probe69076_)))
                (if (eq? _k69083_ (macro-unused-obj))
                    _default69055_
                    (if (eq? _k69083_ (macro-deleted-obj))
                        (let ((__tmp69273
                               (let ((_next-probe69086_
                                      (fx+ _start69069_
                                           _i69078_
                                           (fx* _i69078_ _i69078_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe69086_ _size69063_)))
                              (__tmp69272
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i69078_ '1)))
                              (__tmp69271
                               (let ((_$e69089_ _deleted69080_))
                                 (if _$e69089_ _$e69089_ _probe69076_))))
                          (declare (not safe))
                          (_loop69073_ __tmp69273 __tmp69272 __tmp69271))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69054_ _k69083_))
                            (vector-ref
                             _table69057_
                             (let ()
                               (declare (not safe))
                               (##fx+ _probe69076_ '1)))
                            (let ((__tmp69275
                                   (let ((_next-probe69092_
                                          (fx+ _start69069_
                                               _i69078_
                                               (fx* _i69078_ _i69078_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe69092_
                                      _size69063_)))
                                  (__tmp69274
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i69078_ '1))))
                              (declare (not safe))
                              (_loop69073_
                               __tmp69275
                               __tmp69274
                               _deleted69080_)))))))))))
    (define prototype-table-set!
      (lambda (_tab69049_ _key69050_ _value69051_)
        (if (let ((__tmp69278
                   (let () (declare (not safe)) (&raw-table-free _tab69049_)))
                  (__tmp69276
                   (let ((__tmp69277
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab69049_)))))
                     (declare (not safe))
                     (##fxquotient __tmp69277 '4))))
              (declare (not safe))
              (##fx< __tmp69278 __tmp69276))
            (let () (declare (not safe)) (__raw-table-rehash! _tab69049_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab69049_ _key69050_ _value69051_))))
    (define __prototype-table-set!
      (lambda (_tab69004_ _key69005_ _value69006_)
        (let ((_table69009_
               (let () (declare (not safe)) (&raw-table-table _tab69004_)))
              (_seed69010_
               (let () (declare (not safe)) (&raw-table-seed _tab69004_))))
          (let* ((_h69012_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key69005_))
                         _seed69010_))
                 (_size69015_ (vector-length _table69009_))
                 (_entries69018_
                  (let () (declare (not safe)) (##fxquotient _size69015_ '2)))
                 (_start69021_
                  (let ((__tmp69279
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h69012_ _entries69018_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp69279 '1))))
            (let _loop69025_ ((_probe69028_ _start69021_)
                              (_i69030_ '1)
                              (_deleted69032_ '#f))
              (let ((_k69035_ (vector-ref _table69009_ _probe69028_)))
                (if (eq? _k69035_ (macro-unused-obj))
                    (if _deleted69032_
                        (begin
                          (vector-set! _table69009_ _deleted69032_ _key69005_)
                          (vector-set!
                           _table69009_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted69032_ '1))
                           _value69006_)
                          ((lambda ()
                             (let ((__tmp69280
                                    (let ((__tmp69281
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab69004_))))
                                      (declare (not safe))
                                      (##fx+ __tmp69281 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69004_
                                __tmp69280)))))
                        (begin
                          (vector-set! _table69009_ _probe69028_ _key69005_)
                          (vector-set!
                           _table69009_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe69028_ '1))
                           _value69006_)
                          ((lambda ()
                             (let ((__tmp69282
                                    (let ((__tmp69283
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab69004_))))
                                      (declare (not safe))
                                      (##fx- __tmp69283 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab69004_ __tmp69282))
                             (let ((__tmp69284
                                    (let ((__tmp69285
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab69004_))))
                                      (declare (not safe))
                                      (##fx+ __tmp69285 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab69004_
                                __tmp69284))))))
                    (if (eq? _k69035_ (macro-deleted-obj))
                        (let ((__tmp69288
                               (let ((_next-probe69040_
                                      (fx+ _start69021_
                                           _i69030_
                                           (fx* _i69030_ _i69030_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe69040_ _size69015_)))
                              (__tmp69287
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i69030_ '1)))
                              (__tmp69286
                               (let ((_$e69043_ _deleted69032_))
                                 (if _$e69043_ _$e69043_ _probe69028_))))
                          (declare (not safe))
                          (_loop69025_ __tmp69288 __tmp69287 __tmp69286))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key69005_ _k69035_))
                            (begin
                              (vector-set!
                               _table69009_
                               _probe69028_
                               _key69005_)
                              (vector-set!
                               _table69009_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe69028_ '1))
                               _value69006_))
                            (let ((__tmp69290
                                   (let ((_next-probe69046_
                                          (fx+ _start69021_
                                               _i69030_
                                               (fx* _i69030_ _i69030_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe69046_
                                      _size69015_)))
                                  (__tmp69289
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i69030_ '1))))
                              (declare (not safe))
                              (_loop69025_
                               __tmp69290
                               __tmp69289
                               _deleted69032_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68999_
               _key69000_
               _prototype-table-update!69001_
               _default69002_)
        (if (let ((__tmp69293
                   (let () (declare (not safe)) (&raw-table-free _tab68999_)))
                  (__tmp69291
                   (let ((__tmp69292
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _tab68999_)))))
                     (declare (not safe))
                     (##fxquotient __tmp69292 '4))))
              (declare (not safe))
              (##fx< __tmp69293 __tmp69291))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68999_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68999_
           _key69000_
           _prototype-table-update!69001_
           _default69002_))))
    (define __prototype-table-update!
      (lambda (_tab68953_
               _key68954_
               _prototype-table-update!68955_
               _default68956_)
        (let ((_table68959_
               (let () (declare (not safe)) (&raw-table-table _tab68953_)))
              (_seed68960_
               (let () (declare (not safe)) (&raw-table-seed _tab68953_))))
          (let* ((_h68962_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68954_))
                         _seed68960_))
                 (_size68965_ (vector-length _table68959_))
                 (_entries68968_
                  (let () (declare (not safe)) (##fxquotient _size68965_ '2)))
                 (_start68971_
                  (let ((__tmp69294
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h68962_ _entries68968_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp69294 '1))))
            (let _loop68975_ ((_probe68978_ _start68971_)
                              (_i68980_ '1)
                              (_deleted68982_ '#f))
              (let ((_k68985_ (vector-ref _table68959_ _probe68978_)))
                (if (eq? _k68985_ (macro-unused-obj))
                    (if _deleted68982_
                        (begin
                          (vector-set! _table68959_ _deleted68982_ _key68954_)
                          (vector-set!
                           _table68959_
                           (let ()
                             (declare (not safe))
                             (##fx+ _deleted68982_ '1))
                           (_prototype-table-update!68955_ _default68956_))
                          ((lambda ()
                             (let ((__tmp69295
                                    (let ((__tmp69296
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab68953_))))
                                      (declare (not safe))
                                      (##fx+ __tmp69296 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68953_
                                __tmp69295)))))
                        (begin
                          (vector-set! _table68959_ _probe68978_ _key68954_)
                          (vector-set!
                           _table68959_
                           (let ()
                             (declare (not safe))
                             (##fx+ _probe68978_ '1))
                           (_prototype-table-update!68955_ _default68956_))
                          ((lambda ()
                             (let ((__tmp69297
                                    (let ((__tmp69298
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _tab68953_))))
                                      (declare (not safe))
                                      (##fx- __tmp69298 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68953_ __tmp69297))
                             (let ((__tmp69299
                                    (let ((__tmp69300
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _tab68953_))))
                                      (declare (not safe))
                                      (##fx+ __tmp69300 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68953_
                                __tmp69299))))))
                    (if (eq? _k68985_ (macro-deleted-obj))
                        (let ((__tmp69303
                               (let ((_next-probe68990_
                                      (fx+ _start68971_
                                           _i68980_
                                           (fx* _i68980_ _i68980_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe68990_ _size68965_)))
                              (__tmp69302
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i68980_ '1)))
                              (__tmp69301
                               (let ((_$e68993_ _deleted68982_))
                                 (if _$e68993_ _$e68993_ _probe68978_))))
                          (declare (not safe))
                          (_loop68975_ __tmp69303 __tmp69302 __tmp69301))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68954_ _k68985_))
                            (begin
                              (vector-set!
                               _table68959_
                               _probe68978_
                               _key68954_)
                              (vector-set!
                               _table68959_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe68978_ '1))
                               (_prototype-table-update!68955_
                                (vector-ref
                                 _table68959_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _probe68978_ '1))))))
                            (let ((__tmp69305
                                   (let ((_next-probe68996_
                                          (fx+ _start68971_
                                               _i68980_
                                               (fx* _i68980_ _i68980_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe68996_
                                      _size68965_)))
                                  (__tmp69304
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i68980_ '1))))
                              (declare (not safe))
                              (_loop68975_
                               __tmp69305
                               __tmp69304
                               _deleted68982_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68912_ _key68914_)
        (let ((_table68917_
               (let () (declare (not safe)) (&raw-table-table _tab68912_)))
              (_seed68919_
               (let () (declare (not safe)) (&raw-table-seed _tab68912_))))
          (let* ((_h68922_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68914_))
                         _seed68919_))
                 (_size68925_ (vector-length _table68917_))
                 (_entries68928_
                  (let () (declare (not safe)) (##fxquotient _size68925_ '2)))
                 (_start68931_
                  (let ((__tmp69306
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _h68922_ _entries68928_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp69306 '1))))
            (let _loop68935_ ((_probe68938_ _start68931_) (_i68940_ '1))
              (let ((_k68943_ (vector-ref _table68917_ _probe68938_)))
                (if (eq? _k68943_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k68943_ (macro-deleted-obj))
                        (let ((__tmp69308
                               (let ((_next-probe68946_
                                      (fx+ _start68931_
                                           _i68940_
                                           (fx* _i68940_ _i68940_))))
                                 (declare (not safe))
                                 (##fxmodulo _next-probe68946_ _size68925_)))
                              (__tmp69307
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i68940_ '1))))
                          (declare (not safe))
                          (_loop68935_ __tmp69308 __tmp69307))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68914_ _k68943_))
                            (begin
                              (vector-set!
                               _table68917_
                               _probe68938_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68917_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _probe68938_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp69309
                                        (let ((__tmp69310
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _tab68912_))))
                                          (declare (not safe))
                                          (##fx- __tmp69310 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68912_
                                    __tmp69309)))))
                            (let ((__tmp69312
                                   (let ((_next-probe68950_
                                          (fx+ _start68931_
                                               _i68940_
                                               (fx* _i68940_ _i68940_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _next-probe68950_
                                      _size68925_)))
                                  (__tmp69311
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _i68940_ '1))))
                              (declare (not safe))
                              (_loop68935_ __tmp69312 __tmp69311)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_klass68904_)
        (let ((_super6890568907_
               (let () (declare (not safe)) (##type-super _klass68904_))))
          (if _super6890568907_
              (let ((_super68910_ _super6890568907_))
                (eq? (let () (declare (not safe)) (##type-id _super68910_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_descriptor68790_ _klass68791_ _obj-klass68792_)
        (let ((_method-table68794_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68792_))))
          (let _loop68797_ ((_rest68800_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68790_
                                '2
                                '#f
                                '#f)))
                            (_count68802_ '0)
                            (_methods68804_ '()))
            (let* ((_rest6880668814_ _rest68800_)
                   (_else6880868876_
                    (lambda ()
                      (let ((_prototype68822_
                             (let ((__obj69254
                                    (let ((__tmp69313
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68802_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68791_
                                       __tmp69313))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69254 '#f))
                               __obj69254)))
                        (let _loop68825_ ((_rest68827_ _methods68804_)
                                          (_off68828_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68802_ '1))))
                          (let* ((_rest6883068838_ _rest68827_)
                                 (_else6883268857_
                                  (lambda ()
                                    (let ((_prototype-key68846_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _klass68791_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _obj-klass68792_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68851_ ()
                                          (if (let ((__tmp69314
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69314 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68851_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68846_
                                         _prototype68822_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68855_)
                                         _prototype68855_)
                                       _prototype68822_))))
                                 (_K6883468864_
                                  (lambda (_rest68860_ _method68861_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68822_
                                       _method68861_
                                       _off68828_
                                       _klass68791_
                                       '#f))
                                    (let ((__tmp69315
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68828_ '1))))
                                      (declare (not safe))
                                      (_loop68825_ _rest68860_ __tmp69315)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6883068838_))
                                (let ((_hd6883568867_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6883068838_)))
                                      (_tl6883668869_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6883068838_))))
                                  (let* ((_method68872_ _hd6883568867_)
                                         (_rest68874_ _tl6883668869_))
                                    (declare (not safe))
                                    (_K6883468864_ _rest68874_ _method68872_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6883268857_))))))))
                   (_K6881068892_
                    (lambda (_rest68879_ _method-name68880_)
                      (let ((_$e68883_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68794_
                                _method-name68880_
                                '#f))))
                        (if _$e68883_
                            ((lambda (_method68886_)
                               (let ((__tmp69317
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68802_ '1)))
                                     (__tmp69316
                                      (cons _method68886_ _methods68804_)))
                                 (declare (not safe))
                                 (_loop68797_
                                  _rest68879_
                                  __tmp69317
                                  __tmp69316)))
                             _$e68883_)
                            ((lambda (_klass68888_
                                      _obj-klass68889_
                                      _method-name68890_)
                               (let ((__tmp69319
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _klass68888_)))
                                     (__tmp69318
                                      (let ()
                                        (declare (not safe))
                                        (##type-id _obj-klass68889_))))
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'interface:
                                  _klass68888_
                                  'interface-id:
                                  __tmp69319
                                  'class:
                                  _obj-klass68889_
                                  'class-id:
                                  __tmp69318
                                  'method:
                                  _method-name68890_)))
                             _klass68791_
                             _obj-klass68792_
                             _method-name68880_))))))
              (if (let () (declare (not safe)) (##pair? _rest6880668814_))
                  (let ((_hd6881168895_
                         (let ()
                           (declare (not safe))
                           (##car _rest6880668814_)))
                        (_tl6881268897_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6880668814_))))
                    (let* ((_method-name68900_ _hd6881168895_)
                           (_rest68902_ _tl6881268897_))
                      (declare (not safe))
                      (_K6881068892_ _rest68902_ _method-name68900_)))
                  (let () (declare (not safe)) (_else6880868876_))))))))
    (define try-create-prototype
      (lambda (_descriptor68676_ _klass68677_ _obj-klass68678_)
        (let ((_method-table68680_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68678_))))
          (let _loop68683_ ((_rest68686_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68676_
                                '2
                                '#f
                                '#f)))
                            (_count68688_ '0)
                            (_methods68690_ '()))
            (let* ((_rest6869268700_ _rest68686_)
                   (_else6869468762_
                    (lambda ()
                      (let ((_prototype68708_
                             (let ((__obj69255
                                    (let ((__tmp69320
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68688_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68677_
                                       __tmp69320))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj69255 '#f))
                               __obj69255)))
                        (let _loop68711_ ((_rest68713_ _methods68690_)
                                          (_off68714_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68688_ '1))))
                          (let* ((_rest6871668724_ _rest68713_)
                                 (_else6871868743_
                                  (lambda ()
                                    (let ((_prototype-key68732_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _klass68677_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _obj-klass68678_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68737_ ()
                                          (if (let ((__tmp69321
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp69321 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68737_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68732_
                                         _prototype68708_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68741_)
                                         _prototype68741_)
                                       _prototype68708_))))
                                 (_K6872068750_
                                  (lambda (_rest68746_ _method68747_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68708_
                                       _method68747_
                                       _off68714_
                                       _klass68677_
                                       '#f))
                                    (let ((__tmp69322
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68714_ '1))))
                                      (declare (not safe))
                                      (_loop68711_ _rest68746_ __tmp69322)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6871668724_))
                                (let ((_hd6872168753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6871668724_)))
                                      (_tl6872268755_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6871668724_))))
                                  (let* ((_method68758_ _hd6872168753_)
                                         (_rest68760_ _tl6872268755_))
                                    (declare (not safe))
                                    (_K6872068750_ _rest68760_ _method68758_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6871868743_))))))))
                   (_K6869668778_
                    (lambda (_rest68765_ _method-name68766_)
                      (let ((_$e68769_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68680_
                                _method-name68766_
                                '#f))))
                        (if _$e68769_
                            ((lambda (_method68772_)
                               (let ((__tmp69324
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68688_ '1)))
                                     (__tmp69323
                                      (cons _method68772_ _methods68690_)))
                                 (declare (not safe))
                                 (_loop68683_
                                  _rest68765_
                                  __tmp69324
                                  __tmp69323)))
                             _$e68769_)
                            ((lambda (_klass68774_
                                      _obj-klass68775_
                                      _method-name68776_)
                               '#f)
                             _klass68677_
                             _obj-klass68678_
                             _method-name68766_))))))
              (if (let () (declare (not safe)) (##pair? _rest6869268700_))
                  (let ((_hd6869768781_
                         (let ()
                           (declare (not safe))
                           (##car _rest6869268700_)))
                        (_tl6869868783_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6869268700_))))
                    (let* ((_method-name68786_ _hd6869768781_)
                           (_rest68788_ _tl6869868783_))
                      (declare (not safe))
                      (_K6869668778_ _rest68788_ _method-name68786_)))
                  (let () (declare (not safe)) (_else6869468762_))))))))
    (define cast
      (lambda (_descriptor68638_ _obj68640_)
        (declare (not interrupts-enabled))
        (let* ((_klass68644_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _descriptor68638_ '1 '#f '#f)))
               (_klass-id68647_
                (let () (declare (not safe)) (##type-id _klass68644_)))
               (_obj-klass68650_
                (let () (declare (not safe)) (__class-of _obj68640_)))
               (_obj-klass-id68653_
                (let () (declare (not safe)) (##type-id _obj-klass68650_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68647_ _obj-klass-id68653_))
              _obj68640_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68650_))
                  (let ((__tmp69325
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _obj68640_ '1 '#f '#f))))
                    (declare (not safe))
                    (cast _descriptor68638_ __tmp69325))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68659_ ()
                        (if (let ((__tmp69326
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69326 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68659_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68647_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68653_))
                    (let ((_prototype68669_
                           (let ((_$e68663_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68663_
                                 ((lambda (_prototype68666_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68666_)
                                  _$e68663_)
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
                                      _descriptor68638_
                                      _klass68644_
                                      _obj-klass68650_)))))))
                      ((lambda (_prototype68671_ _obj68672_)
                         (let ((_instance68674_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype68671_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance68674_
                              _obj68672_
                              '1
                              '#f
                              'cast))
                           _instance68674_))
                       _prototype68669_
                       _obj68640_))))))))
    (define try-cast
      (lambda (_descriptor68600_ _obj68602_)
        (declare (not interrupts-enabled))
        (let* ((_klass68606_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _descriptor68600_ '1 '#f '#f)))
               (_klass-id68609_
                (let () (declare (not safe)) (##type-id _klass68606_)))
               (_obj-klass68612_
                (let () (declare (not safe)) (__class-of _obj68602_)))
               (_obj-klass-id68615_
                (let () (declare (not safe)) (##type-id _obj-klass68612_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68609_ _obj-klass-id68615_))
              _obj68602_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68612_))
                  (let ((__tmp69327
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _obj68602_ '1 '#f '#f))))
                    (declare (not safe))
                    (try-cast _descriptor68600_ __tmp69327))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68621_ ()
                        (if (let ((__tmp69328
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69328 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68621_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68609_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68615_))
                    (let ((_prototype68631_
                           (let ((_$e68625_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68625_
                                 ((lambda (_prototype68628_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68628_)
                                  _$e68625_)
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
                                      _descriptor68600_
                                      _klass68606_
                                      _obj-klass68612_)))))))
                      ((lambda (_prototype68633_ _obj68634_)
                         (if _prototype68633_
                             (let ((_instance68636_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype68633_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance68636_
                                  _obj68634_
                                  '1
                                  '#f
                                  'cast))
                               _instance68636_)
                             '#f))
                       _prototype68631_
                       _obj68602_))))))))
    (define satisfies?
      (lambda (_descriptor68564_ _obj68566_)
        (declare (not interrupts-enabled))
        (let* ((_klass68570_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _descriptor68564_ '1 '#f '#f)))
               (_klass-id68573_
                (let () (declare (not safe)) (##type-id _klass68570_)))
               (_obj-klass68576_
                (let () (declare (not safe)) (__class-of _obj68566_)))
               (_obj-klass-id68579_
                (let () (declare (not safe)) (##type-id _obj-klass68576_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id68573_ _obj-klass-id68579_))
              _obj68566_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass68576_))
                  (let ((__tmp69329
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _obj68566_ '1 '#f '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor68564_ __tmp69329))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again68585_ ()
                        (if (let ((__tmp69330
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp69330 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again68585_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id68573_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id68579_))
                    (let ((_prototype68595_
                           (let ((_$e68589_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e68589_
                                 ((lambda (_prototype68592_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype68592_)
                                  _$e68589_)
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
                                      _descriptor68564_
                                      _klass68570_
                                      _obj-klass68576_)))))))
                      ((lambda (_prototype68597_ _obj68598_)
                         (if _prototype68597_ '#t '#f))
                       _prototype68595_
                       _obj68566_))))))))))
