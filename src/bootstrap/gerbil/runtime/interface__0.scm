(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709111635)
  (begin
    (define CastError::t
      (let ((__tmp68080 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68080
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68073_ (apply make-instance CastError::t _$args68073_)))
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
      (lambda (_where67947_ _message67948_ . _irritants67949_)
        (raise (let ((__obj68076
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68076
                  _message67948_
                  'where:
                  _where67947_
                  'irritants:
                  _irritants67949_)
                 __obj68076))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68083 (list))
            (__tmp68081
             (let ((__tmp68082
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68082 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68083
         '(__object)
         __tmp68081
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
      (let ((__tmp68088 (list))
            (__tmp68084
             (let ((__tmp68087
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68085
                    (let ((__tmp68086
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68086 '()))))
               (declare (not safe))
               (cons __tmp68087 __tmp68085))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68088
         '(type methods)
         __tmp68084
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67944_
        (apply make-instance interface-descriptor::t _$args67944_)))
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
      (lambda (_key67942_)
        (let ((__tmp68090
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67942_))))
              (__tmp68089
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67942_)))))
          (declare (not safe))
          (##fxxor __tmp68090 __tmp68089))))
    (define __interface-test-key
      (lambda (_a67939_ _b67940_)
        (if (let ((__tmp68094 (let () (declare (not safe)) (##car _a67939_)))
                  (__tmp68093 (let () (declare (not safe)) (##car _b67940_))))
              (declare (not safe))
              (##eq? __tmp68094 __tmp68093))
            (let ((__tmp68092 (let () (declare (not safe)) (##cdr _a67939_)))
                  (__tmp68091 (let () (declare (not safe)) (##cdr _b67940_))))
              (declare (not safe))
              (##eq? __tmp68092 __tmp68091))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67920_ _seed67922_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67920_
           __interface-hash-key
           __interface-test-key
           _seed67922_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67928_ '#f) (_seed67930_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67928_ _seed67930_))))
    (define make-prototype-table__1
      (lambda (_size-hint67932_)
        (let ((_seed67934_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67932_ _seed67934_))))
    (define make-prototype-table
      (lambda _g68096_
        (let ((_g68095_ (let () (declare (not safe)) (##length _g68096_))))
          (cond ((let () (declare (not safe)) (##fx= _g68095_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68096_))
                ((let () (declare (not safe)) (##fx= _g68095_ 1))
                 (apply (lambda (_size-hint67932_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67932_)))
                        _g68096_))
                ((let () (declare (not safe)) (##fx= _g68095_ 2))
                 (apply (lambda (_size-hint67936_ _seed67937_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67936_
                             _seed67937_)))
                        _g68096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68096_))))))
    (define prototype-table-ref
      (lambda (_tab67877_ _key67878_ _default67879_)
        (let ((_table67881_
               (let () (declare (not safe)) (&raw-table-table _tab67877_)))
              (_seed67882_
               (let () (declare (not safe)) (&raw-table-seed _tab67877_))))
          (let* ((_h67884_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67878_))
                         _seed67882_))
                 (_size67887_ (vector-length _table67881_))
                 (_entries67890_ (fxquotient _size67887_ '2))
                 (_start67893_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67884_ _entries67890_)
                   '1)))
            (let _loop67897_ ((_probe67900_ _start67893_)
                              (_i67902_ '1)
                              (_deleted67904_ '#f))
              (let ((_k67907_ (vector-ref _table67881_ _probe67900_)))
                (if (let ((__tmp68103 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67907_ __tmp68103))
                    _default67879_
                    (if (let ((__tmp68102 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67907_ __tmp68102))
                        (let ((__tmp68101
                               (let ((_next-probe67910_
                                      (fx+ _start67893_
                                           _i67902_
                                           (fx* _i67902_ _i67902_))))
                                 (fxmodulo _next-probe67910_ _size67887_)))
                              (__tmp68100 (fx+ _i67902_ '1))
                              (__tmp68099
                               (let ((_$e67913_ _deleted67904_))
                                 (if _$e67913_ _$e67913_ _probe67900_))))
                          (declare (not safe))
                          (_loop67897_ __tmp68101 __tmp68100 __tmp68099))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67878_ _k67907_))
                            (vector-ref _table67881_ (fx+ _probe67900_ '1))
                            (let ((__tmp68098
                                   (let ((_next-probe67916_
                                          (fx+ _start67893_
                                               _i67902_
                                               (fx* _i67902_ _i67902_))))
                                     (fxmodulo _next-probe67916_ _size67887_)))
                                  (__tmp68097 (fx+ _i67902_ '1)))
                              (declare (not safe))
                              (_loop67897_
                               __tmp68098
                               __tmp68097
                               _deleted67904_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67873_ _key67874_ _value67875_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67873_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67873_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67873_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67873_ _key67874_ _value67875_))))
    (define __prototype-table-set!
      (lambda (_tab67828_ _key67829_ _value67830_)
        (let ((_table67833_
               (let () (declare (not safe)) (&raw-table-table _tab67828_)))
              (_seed67834_
               (let () (declare (not safe)) (&raw-table-seed _tab67828_))))
          (let* ((_h67836_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67829_))
                         _seed67834_))
                 (_size67839_ (vector-length _table67833_))
                 (_entries67842_ (fxquotient _size67839_ '2))
                 (_start67845_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67836_ _entries67842_)
                   '1)))
            (let _loop67849_ ((_probe67852_ _start67845_)
                              (_i67854_ '1)
                              (_deleted67856_ '#f))
              (let ((_k67859_ (vector-ref _table67833_ _probe67852_)))
                (if (let ((__tmp68113 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67859_ __tmp68113))
                    (if _deleted67856_
                        (begin
                          (vector-set! _table67833_ _deleted67856_ _key67829_)
                          (vector-set!
                           _table67833_
                           (fx+ _deleted67856_ '1)
                           _value67830_)
                          ((lambda ()
                             (let ((__tmp68112
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67828_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67828_
                                __tmp68112)))))
                        (begin
                          (vector-set! _table67833_ _probe67852_ _key67829_)
                          (vector-set!
                           _table67833_
                           (fx+ _probe67852_ '1)
                           _value67830_)
                          ((lambda ()
                             (let ((__tmp68110
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67828_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67828_ __tmp68110))
                             (let ((__tmp68111
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67828_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67828_
                                __tmp68111))))))
                    (if (let ((__tmp68109 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67859_ __tmp68109))
                        (let ((__tmp68108
                               (let ((_next-probe67864_
                                      (fx+ _start67845_
                                           _i67854_
                                           (fx* _i67854_ _i67854_))))
                                 (fxmodulo _next-probe67864_ _size67839_)))
                              (__tmp68107 (fx+ _i67854_ '1))
                              (__tmp68106
                               (let ((_$e67867_ _deleted67856_))
                                 (if _$e67867_ _$e67867_ _probe67852_))))
                          (declare (not safe))
                          (_loop67849_ __tmp68108 __tmp68107 __tmp68106))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67829_ _k67859_))
                            (begin
                              (vector-set!
                               _table67833_
                               _probe67852_
                               _key67829_)
                              (vector-set!
                               _table67833_
                               (fx+ _probe67852_ '1)
                               _value67830_))
                            (let ((__tmp68105
                                   (let ((_next-probe67870_
                                          (fx+ _start67845_
                                               _i67854_
                                               (fx* _i67854_ _i67854_))))
                                     (fxmodulo _next-probe67870_ _size67839_)))
                                  (__tmp68104 (fx+ _i67854_ '1)))
                              (declare (not safe))
                              (_loop67849_
                               __tmp68105
                               __tmp68104
                               _deleted67856_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67823_
               _key67824_
               _prototype-table-update!67825_
               _default67826_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67823_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67823_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67823_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67823_
           _key67824_
           _prototype-table-update!67825_
           _default67826_))))
    (define __prototype-table-update!
      (lambda (_tab67777_
               _key67778_
               _prototype-table-update!67779_
               _default67780_)
        (let ((_table67783_
               (let () (declare (not safe)) (&raw-table-table _tab67777_)))
              (_seed67784_
               (let () (declare (not safe)) (&raw-table-seed _tab67777_))))
          (let* ((_h67786_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67778_))
                         _seed67784_))
                 (_size67789_ (vector-length _table67783_))
                 (_entries67792_ (fxquotient _size67789_ '2))
                 (_start67795_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67786_ _entries67792_)
                   '1)))
            (let _loop67799_ ((_probe67802_ _start67795_)
                              (_i67804_ '1)
                              (_deleted67806_ '#f))
              (let ((_k67809_ (vector-ref _table67783_ _probe67802_)))
                (if (let ((__tmp68123 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67809_ __tmp68123))
                    (if _deleted67806_
                        (begin
                          (vector-set! _table67783_ _deleted67806_ _key67778_)
                          (vector-set!
                           _table67783_
                           (fx+ _deleted67806_ '1)
                           (_prototype-table-update!67779_ _default67780_))
                          ((lambda ()
                             (let ((__tmp68122
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67777_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67777_
                                __tmp68122)))))
                        (begin
                          (vector-set! _table67783_ _probe67802_ _key67778_)
                          (vector-set!
                           _table67783_
                           (fx+ _probe67802_ '1)
                           (_prototype-table-update!67779_ _default67780_))
                          ((lambda ()
                             (let ((__tmp68120
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67777_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67777_ __tmp68120))
                             (let ((__tmp68121
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67777_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67777_
                                __tmp68121))))))
                    (if (let ((__tmp68119 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67809_ __tmp68119))
                        (let ((__tmp68118
                               (let ((_next-probe67814_
                                      (fx+ _start67795_
                                           _i67804_
                                           (fx* _i67804_ _i67804_))))
                                 (fxmodulo _next-probe67814_ _size67789_)))
                              (__tmp68117 (fx+ _i67804_ '1))
                              (__tmp68116
                               (let ((_$e67817_ _deleted67806_))
                                 (if _$e67817_ _$e67817_ _probe67802_))))
                          (declare (not safe))
                          (_loop67799_ __tmp68118 __tmp68117 __tmp68116))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67778_ _k67809_))
                            (begin
                              (vector-set!
                               _table67783_
                               _probe67802_
                               _key67778_)
                              (vector-set!
                               _table67783_
                               (fx+ _probe67802_ '1)
                               (_prototype-table-update!67779_
                                (vector-ref
                                 _table67783_
                                 (fx+ _probe67802_ '1)))))
                            (let ((__tmp68115
                                   (let ((_next-probe67820_
                                          (fx+ _start67795_
                                               _i67804_
                                               (fx* _i67804_ _i67804_))))
                                     (fxmodulo _next-probe67820_ _size67789_)))
                                  (__tmp68114 (fx+ _i67804_ '1)))
                              (declare (not safe))
                              (_loop67799_
                               __tmp68115
                               __tmp68114
                               _deleted67806_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67736_ _key67738_)
        (let ((_table67741_
               (let () (declare (not safe)) (&raw-table-table _tab67736_)))
              (_seed67743_
               (let () (declare (not safe)) (&raw-table-seed _tab67736_))))
          (let* ((_h67746_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67738_))
                         _seed67743_))
                 (_size67749_ (vector-length _table67741_))
                 (_entries67752_ (fxquotient _size67749_ '2))
                 (_start67755_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67746_ _entries67752_)
                   '1)))
            (let _loop67759_ ((_probe67762_ _start67755_) (_i67764_ '1))
              (let ((_k67767_ (vector-ref _table67741_ _probe67762_)))
                (if (let ((__tmp68130 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67767_ __tmp68130))
                    '#!void
                    (if (let ((__tmp68129 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67767_ __tmp68129))
                        (let ((__tmp68128
                               (let ((_next-probe67770_
                                      (fx+ _start67755_
                                           _i67764_
                                           (fx* _i67764_ _i67764_))))
                                 (fxmodulo _next-probe67770_ _size67749_)))
                              (__tmp68127 (fx+ _i67764_ '1)))
                          (declare (not safe))
                          (_loop67759_ __tmp68128 __tmp68127))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67738_ _k67767_))
                            (begin
                              (vector-set!
                               _table67741_
                               _probe67762_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67741_
                               (fx+ _probe67762_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68126
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67736_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67736_
                                    __tmp68126)))))
                            (let ((__tmp68125
                                   (let ((_next-probe67774_
                                          (fx+ _start67755_
                                               _i67764_
                                               (fx* _i67764_ _i67764_))))
                                     (fxmodulo _next-probe67774_ _size67749_)))
                                  (__tmp68124 (fx+ _i67764_ '1)))
                              (declare (not safe))
                              (_loop67759_ __tmp68125 __tmp68124)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67728_)
        (let ((_super6772967731_
               (let () (declare (not safe)) (##type-super _klass67728_))))
          (if _super6772967731_
              (let ((_super67734_ _super6772967731_))
                (let ((__tmp68132
                       (let () (declare (not safe)) (##type-id _super67734_)))
                      (__tmp68131
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68132 __tmp68131)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67615_ _klass67616_ _obj-klass67617_)
        (let ((_method-table67619_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67617_))))
          (let _loop67622_ ((_rest67625_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67615_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67627_ '0)
                            (_methods67629_ '()))
            (let* ((_rest6763167639_ _rest67625_)
                   (_else6763367701_
                    (lambda ()
                      (let ((_prototype67647_
                             (let ((__obj68078
                                    (let ((__tmp68133
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67627_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67616_
                                       __tmp68133))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68078 '#f))
                               __obj68078)))
                        (let _loop67650_ ((_rest67652_ _methods67629_)
                                          (_off67653_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67627_ '1))))
                          (let* ((_rest6765567663_ _rest67652_)
                                 (_else6765767682_
                                  (lambda ()
                                    (let ((_prototype-key67671_
                                           (let ((__tmp68135
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67616_)))
                                                 (__tmp68134
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67617_))))
                                             (declare (not safe))
                                             (cons __tmp68135 __tmp68134))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67676_ ()
                                          (if (let ((__tmp68136
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68136 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67676_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67671_
                                         _prototype67647_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67680_)
                                         _prototype67680_)
                                       _prototype67647_))))
                                 (_K6765967689_
                                  (lambda (_rest67685_ _method67686_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67647_
                                       _method67686_
                                       _off67653_
                                       _klass67616_
                                       '#f))
                                    (let ((__tmp68137
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67653_ '1))))
                                      (declare (not safe))
                                      (_loop67650_ _rest67685_ __tmp68137)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6765567663_))
                                (let ((_hd6766067692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6765567663_)))
                                      (_tl6766167694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6765567663_))))
                                  (let* ((_method67697_ _hd6766067692_)
                                         (_rest67699_ _tl6766167694_))
                                    (declare (not safe))
                                    (_K6765967689_ _rest67699_ _method67697_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6765767682_))))))))
                   (_K6763567716_
                    (lambda (_rest67704_ _method-name67705_)
                      (let ((_$e67708_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67619_
                                _method-name67705_
                                '#f))))
                        (if _$e67708_
                            ((lambda (_method67711_)
                               (let ((__tmp68139
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67627_ '1)))
                                     (__tmp68138
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67711_ _methods67629_))))
                                 (declare (not safe))
                                 (_loop67622_
                                  _rest67704_
                                  __tmp68139
                                  __tmp68138)))
                             _$e67708_)
                            ((lambda (_klass67713_ _method-name67714_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass67713_
                                  'method:
                                  _method-name67714_)))
                             _klass67616_
                             _method-name67705_))))))
              (if (let () (declare (not safe)) (##pair? _rest6763167639_))
                  (let ((_hd6763667719_
                         (let ()
                           (declare (not safe))
                           (##car _rest6763167639_)))
                        (_tl6763767721_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6763167639_))))
                    (let* ((_method-name67724_ _hd6763667719_)
                           (_rest67726_ _tl6763767721_))
                      (declare (not safe))
                      (_K6763567716_ _rest67726_ _method-name67724_)))
                  (let () (declare (not safe)) (_else6763367701_))))))))
    (define try-create-prototype
      (lambda (_descriptor67502_ _klass67503_ _obj-klass67504_)
        (let ((_method-table67506_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67504_))))
          (let _loop67509_ ((_rest67512_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67502_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67514_ '0)
                            (_methods67516_ '()))
            (let* ((_rest6751867526_ _rest67512_)
                   (_else6752067588_
                    (lambda ()
                      (let ((_prototype67534_
                             (let ((__obj68079
                                    (let ((__tmp68140
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67514_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67503_
                                       __tmp68140))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68079 '#f))
                               __obj68079)))
                        (let _loop67537_ ((_rest67539_ _methods67516_)
                                          (_off67540_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67514_ '1))))
                          (let* ((_rest6754267550_ _rest67539_)
                                 (_else6754467569_
                                  (lambda ()
                                    (let ((_prototype-key67558_
                                           (let ((__tmp68142
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67503_)))
                                                 (__tmp68141
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67504_))))
                                             (declare (not safe))
                                             (cons __tmp68142 __tmp68141))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67563_ ()
                                          (if (let ((__tmp68143
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68143 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67563_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67558_
                                         _prototype67534_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67567_)
                                         _prototype67567_)
                                       _prototype67534_))))
                                 (_K6754667576_
                                  (lambda (_rest67572_ _method67573_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67534_
                                       _method67573_
                                       _off67540_
                                       _klass67503_
                                       '#f))
                                    (let ((__tmp68144
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67540_ '1))))
                                      (declare (not safe))
                                      (_loop67537_ _rest67572_ __tmp68144)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6754267550_))
                                (let ((_hd6754767579_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6754267550_)))
                                      (_tl6754867581_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6754267550_))))
                                  (let* ((_method67584_ _hd6754767579_)
                                         (_rest67586_ _tl6754867581_))
                                    (declare (not safe))
                                    (_K6754667576_ _rest67586_ _method67584_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6754467569_))))))))
                   (_K6752267603_
                    (lambda (_rest67591_ _method-name67592_)
                      (let ((_$e67595_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67506_
                                _method-name67592_
                                '#f))))
                        (if _$e67595_
                            ((lambda (_method67598_)
                               (let ((__tmp68146
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67514_ '1)))
                                     (__tmp68145
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67598_ _methods67516_))))
                                 (declare (not safe))
                                 (_loop67509_
                                  _rest67591_
                                  __tmp68146
                                  __tmp68145)))
                             _$e67595_)
                            ((lambda (_klass67600_ _method-name67601_) '#f)
                             _klass67503_
                             _method-name67592_))))))
              (if (let () (declare (not safe)) (##pair? _rest6751867526_))
                  (let ((_hd6752367606_
                         (let ()
                           (declare (not safe))
                           (##car _rest6751867526_)))
                        (_tl6752467608_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6751867526_))))
                    (let* ((_method-name67611_ _hd6752367606_)
                           (_rest67613_ _tl6752467608_))
                      (declare (not safe))
                      (_K6752267603_ _rest67613_ _method-name67611_)))
                  (let () (declare (not safe)) (_else6752067588_))))))))
    (define cast
      (lambda (_descriptor67461_ _obj67463_)
        (if (let () (declare (not safe)) (##structure? _obj67463_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67468_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67461_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67471_
                      (let () (declare (not safe)) (##type-id _klass67468_)))
                     (_obj-klass67474_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67463_)))
                     (_obj-klass-id67477_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67474_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67471_ _obj-klass-id67477_))
                    _obj67463_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67474_))
                        (let ((__tmp68148
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67463_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67461_ __tmp68148))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67483_ ()
                              (if (let ((__tmp68147
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68147 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67483_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67471_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67477_))
                          (let ((_prototype67493_
                                 (let ((_$e67487_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67487_
                                       ((lambda (_prototype67490_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67490_)
                                        _$e67487_)
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
                                            _descriptor67461_
                                            _klass67468_
                                            _obj-klass67474_)))))))
                            ((lambda (_prototype67495_ _obj67496_)
                               (let ((_instance67498_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67495_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67498_
                                    _obj67496_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67498_))
                             _prototype67493_
                             _obj67463_)))))))
            ((lambda (_obj67500_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67500_)))
             _obj67463_))))
    (define try-cast
      (lambda (_descriptor67420_ _obj67422_)
        (if (let () (declare (not safe)) (##structure? _obj67422_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67427_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67420_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67430_
                      (let () (declare (not safe)) (##type-id _klass67427_)))
                     (_obj-klass67433_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67422_)))
                     (_obj-klass-id67436_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67433_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67430_ _obj-klass-id67436_))
                    _obj67422_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67433_))
                        (let ((__tmp68150
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67422_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67420_ __tmp68150))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67442_ ()
                              (if (let ((__tmp68149
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68149 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67442_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67430_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67436_))
                          (let ((_prototype67452_
                                 (let ((_$e67446_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67446_
                                       ((lambda (_prototype67449_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67449_)
                                        _$e67446_)
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
                                            _descriptor67420_
                                            _klass67427_
                                            _obj-klass67433_)))))))
                            ((lambda (_prototype67454_ _obj67455_)
                               (if _prototype67454_
                                   (let ((_instance67457_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67454_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67457_
                                        _obj67455_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67457_)
                                   '#f))
                             _prototype67452_
                             _obj67422_)))))))
            ((lambda (_obj67459_) '#f) _obj67422_))))
    (define satisfies?
      (lambda (_descriptor67381_ _obj67383_)
        (if (let () (declare (not safe)) (##structure? _obj67383_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67388_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67381_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67391_
                      (let () (declare (not safe)) (##type-id _klass67388_)))
                     (_obj-klass67394_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67383_)))
                     (_obj-klass-id67397_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67394_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67391_ _obj-klass-id67397_))
                    _obj67383_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67394_))
                        (let ((__tmp68152
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67383_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67381_ __tmp68152))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67403_ ()
                              (if (let ((__tmp68151
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68151 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67403_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67391_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67397_))
                          (let ((_prototype67413_
                                 (let ((_$e67407_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67407_
                                       ((lambda (_prototype67410_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67410_)
                                        _$e67407_)
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
                                            _descriptor67381_
                                            _klass67388_
                                            _obj-klass67394_)))))))
                            ((lambda (_prototype67415_ _obj67416_)
                               (if _prototype67415_ '#t '#f))
                             _prototype67413_
                             _obj67383_)))))))
            ((lambda (_obj67418_) '#f) _obj67383_))))))
