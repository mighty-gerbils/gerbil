(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710155057)
  (begin
    (define CastError::t
      (let ((__tmp68028 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68028
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68021_ (apply make-instance CastError::t _$args68021_)))
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
      (lambda (_where67895_ _message67896_ . _irritants67897_)
        (let ((__tmp68029
               (let ((__obj68024
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68024
                  _message67896_
                  'where:
                  _where67895_
                  'irritants:
                  _irritants67897_)
                 __obj68024)))
          (declare (not safe))
          (raise __tmp68029))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68032 (list))
            (__tmp68030
             (let ((__tmp68031
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68031 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68032
         '(__object)
         __tmp68030
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
      (let ((__tmp68037 (list))
            (__tmp68033
             (let ((__tmp68036
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68034
                    (let ((__tmp68035
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68035 '()))))
               (declare (not safe))
               (cons __tmp68036 __tmp68034))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68037
         '(type methods)
         __tmp68033
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67892_
        (apply make-instance interface-descriptor::t _$args67892_)))
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
      (lambda (_key67890_)
        (let ((__tmp68039
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67890_))))
              (__tmp68038
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67890_)))))
          (declare (not safe))
          (##fxxor __tmp68039 __tmp68038))))
    (define __interface-test-key
      (lambda (_a67887_ _b67888_)
        (if (let ((__tmp68043 (let () (declare (not safe)) (##car _a67887_)))
                  (__tmp68042 (let () (declare (not safe)) (##car _b67888_))))
              (declare (not safe))
              (##eq? __tmp68043 __tmp68042))
            (let ((__tmp68041 (let () (declare (not safe)) (##cdr _a67887_)))
                  (__tmp68040 (let () (declare (not safe)) (##cdr _b67888_))))
              (declare (not safe))
              (##eq? __tmp68041 __tmp68040))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67868_ _seed67870_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67868_
           __interface-hash-key
           __interface-test-key
           _seed67870_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67876_ '#f) (_seed67878_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67876_ _seed67878_))))
    (define make-prototype-table__1
      (lambda (_size-hint67880_)
        (let ((_seed67882_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67880_ _seed67882_))))
    (define make-prototype-table
      (lambda _g68045_
        (let ((_g68044_ (let () (declare (not safe)) (##length _g68045_))))
          (cond ((let () (declare (not safe)) (##fx= _g68044_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68045_))
                ((let () (declare (not safe)) (##fx= _g68044_ 1))
                 (apply (lambda (_size-hint67880_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67880_)))
                        _g68045_))
                ((let () (declare (not safe)) (##fx= _g68044_ 2))
                 (apply (lambda (_size-hint67884_ _seed67885_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67884_
                             _seed67885_)))
                        _g68045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68045_))))))
    (define prototype-table-ref
      (lambda (_tab67825_ _key67826_ _default67827_)
        (let ((_table67829_
               (let () (declare (not safe)) (&raw-table-table _tab67825_)))
              (_seed67830_
               (let () (declare (not safe)) (&raw-table-seed _tab67825_))))
          (let* ((_h67832_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67826_))
                         _seed67830_))
                 (_size67835_ (vector-length _table67829_))
                 (_entries67838_ (fxquotient _size67835_ '2))
                 (_start67841_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67832_ _entries67838_)
                   '1)))
            (let _loop67845_ ((_probe67848_ _start67841_)
                              (_i67850_ '1)
                              (_deleted67852_ '#f))
              (let ((_k67855_ (vector-ref _table67829_ _probe67848_)))
                (if (let ((__tmp68052 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67855_ __tmp68052))
                    _default67827_
                    (if (let ((__tmp68051 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67855_ __tmp68051))
                        (let ((__tmp68050
                               (let ((_next-probe67858_
                                      (fx+ _start67841_
                                           _i67850_
                                           (fx* _i67850_ _i67850_))))
                                 (fxmodulo _next-probe67858_ _size67835_)))
                              (__tmp68049 (fx+ _i67850_ '1))
                              (__tmp68048
                               (let ((_$e67861_ _deleted67852_))
                                 (if _$e67861_ _$e67861_ _probe67848_))))
                          (declare (not safe))
                          (_loop67845_ __tmp68050 __tmp68049 __tmp68048))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67826_ _k67855_))
                            (vector-ref _table67829_ (fx+ _probe67848_ '1))
                            (let ((__tmp68047
                                   (let ((_next-probe67864_
                                          (fx+ _start67841_
                                               _i67850_
                                               (fx* _i67850_ _i67850_))))
                                     (fxmodulo _next-probe67864_ _size67835_)))
                                  (__tmp68046 (fx+ _i67850_ '1)))
                              (declare (not safe))
                              (_loop67845_
                               __tmp68047
                               __tmp68046
                               _deleted67852_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67821_ _key67822_ _value67823_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67821_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67821_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67821_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67821_ _key67822_ _value67823_))))
    (define __prototype-table-set!
      (lambda (_tab67776_ _key67777_ _value67778_)
        (let ((_table67781_
               (let () (declare (not safe)) (&raw-table-table _tab67776_)))
              (_seed67782_
               (let () (declare (not safe)) (&raw-table-seed _tab67776_))))
          (let* ((_h67784_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67777_))
                         _seed67782_))
                 (_size67787_ (vector-length _table67781_))
                 (_entries67790_ (fxquotient _size67787_ '2))
                 (_start67793_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67784_ _entries67790_)
                   '1)))
            (let _loop67797_ ((_probe67800_ _start67793_)
                              (_i67802_ '1)
                              (_deleted67804_ '#f))
              (let ((_k67807_ (vector-ref _table67781_ _probe67800_)))
                (if (let ((__tmp68062 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67807_ __tmp68062))
                    (if _deleted67804_
                        (begin
                          (vector-set! _table67781_ _deleted67804_ _key67777_)
                          (vector-set!
                           _table67781_
                           (fx+ _deleted67804_ '1)
                           _value67778_)
                          ((lambda ()
                             (let ((__tmp68061
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67776_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67776_
                                __tmp68061)))))
                        (begin
                          (vector-set! _table67781_ _probe67800_ _key67777_)
                          (vector-set!
                           _table67781_
                           (fx+ _probe67800_ '1)
                           _value67778_)
                          ((lambda ()
                             (let ((__tmp68059
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67776_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67776_ __tmp68059))
                             (let ((__tmp68060
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67776_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67776_
                                __tmp68060))))))
                    (if (let ((__tmp68058 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67807_ __tmp68058))
                        (let ((__tmp68057
                               (let ((_next-probe67812_
                                      (fx+ _start67793_
                                           _i67802_
                                           (fx* _i67802_ _i67802_))))
                                 (fxmodulo _next-probe67812_ _size67787_)))
                              (__tmp68056 (fx+ _i67802_ '1))
                              (__tmp68055
                               (let ((_$e67815_ _deleted67804_))
                                 (if _$e67815_ _$e67815_ _probe67800_))))
                          (declare (not safe))
                          (_loop67797_ __tmp68057 __tmp68056 __tmp68055))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67777_ _k67807_))
                            (begin
                              (vector-set!
                               _table67781_
                               _probe67800_
                               _key67777_)
                              (vector-set!
                               _table67781_
                               (fx+ _probe67800_ '1)
                               _value67778_))
                            (let ((__tmp68054
                                   (let ((_next-probe67818_
                                          (fx+ _start67793_
                                               _i67802_
                                               (fx* _i67802_ _i67802_))))
                                     (fxmodulo _next-probe67818_ _size67787_)))
                                  (__tmp68053 (fx+ _i67802_ '1)))
                              (declare (not safe))
                              (_loop67797_
                               __tmp68054
                               __tmp68053
                               _deleted67804_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67771_
               _key67772_
               _prototype-table-update!67773_
               _default67774_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67771_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67771_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67771_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67771_
           _key67772_
           _prototype-table-update!67773_
           _default67774_))))
    (define __prototype-table-update!
      (lambda (_tab67725_
               _key67726_
               _prototype-table-update!67727_
               _default67728_)
        (let ((_table67731_
               (let () (declare (not safe)) (&raw-table-table _tab67725_)))
              (_seed67732_
               (let () (declare (not safe)) (&raw-table-seed _tab67725_))))
          (let* ((_h67734_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67726_))
                         _seed67732_))
                 (_size67737_ (vector-length _table67731_))
                 (_entries67740_ (fxquotient _size67737_ '2))
                 (_start67743_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67734_ _entries67740_)
                   '1)))
            (let _loop67747_ ((_probe67750_ _start67743_)
                              (_i67752_ '1)
                              (_deleted67754_ '#f))
              (let ((_k67757_ (vector-ref _table67731_ _probe67750_)))
                (if (let ((__tmp68072 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67757_ __tmp68072))
                    (if _deleted67754_
                        (begin
                          (vector-set! _table67731_ _deleted67754_ _key67726_)
                          (vector-set!
                           _table67731_
                           (fx+ _deleted67754_ '1)
                           (_prototype-table-update!67727_ _default67728_))
                          ((lambda ()
                             (let ((__tmp68071
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67725_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67725_
                                __tmp68071)))))
                        (begin
                          (vector-set! _table67731_ _probe67750_ _key67726_)
                          (vector-set!
                           _table67731_
                           (fx+ _probe67750_ '1)
                           (_prototype-table-update!67727_ _default67728_))
                          ((lambda ()
                             (let ((__tmp68069
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67725_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67725_ __tmp68069))
                             (let ((__tmp68070
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67725_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67725_
                                __tmp68070))))))
                    (if (let ((__tmp68068 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67757_ __tmp68068))
                        (let ((__tmp68067
                               (let ((_next-probe67762_
                                      (fx+ _start67743_
                                           _i67752_
                                           (fx* _i67752_ _i67752_))))
                                 (fxmodulo _next-probe67762_ _size67737_)))
                              (__tmp68066 (fx+ _i67752_ '1))
                              (__tmp68065
                               (let ((_$e67765_ _deleted67754_))
                                 (if _$e67765_ _$e67765_ _probe67750_))))
                          (declare (not safe))
                          (_loop67747_ __tmp68067 __tmp68066 __tmp68065))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67726_ _k67757_))
                            (begin
                              (vector-set!
                               _table67731_
                               _probe67750_
                               _key67726_)
                              (vector-set!
                               _table67731_
                               (fx+ _probe67750_ '1)
                               (_prototype-table-update!67727_
                                (vector-ref
                                 _table67731_
                                 (fx+ _probe67750_ '1)))))
                            (let ((__tmp68064
                                   (let ((_next-probe67768_
                                          (fx+ _start67743_
                                               _i67752_
                                               (fx* _i67752_ _i67752_))))
                                     (fxmodulo _next-probe67768_ _size67737_)))
                                  (__tmp68063 (fx+ _i67752_ '1)))
                              (declare (not safe))
                              (_loop67747_
                               __tmp68064
                               __tmp68063
                               _deleted67754_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67684_ _key67686_)
        (let ((_table67689_
               (let () (declare (not safe)) (&raw-table-table _tab67684_)))
              (_seed67691_
               (let () (declare (not safe)) (&raw-table-seed _tab67684_))))
          (let* ((_h67694_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67686_))
                         _seed67691_))
                 (_size67697_ (vector-length _table67689_))
                 (_entries67700_ (fxquotient _size67697_ '2))
                 (_start67703_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67694_ _entries67700_)
                   '1)))
            (let _loop67707_ ((_probe67710_ _start67703_) (_i67712_ '1))
              (let ((_k67715_ (vector-ref _table67689_ _probe67710_)))
                (if (let ((__tmp68079 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67715_ __tmp68079))
                    '#!void
                    (if (let ((__tmp68078 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67715_ __tmp68078))
                        (let ((__tmp68077
                               (let ((_next-probe67718_
                                      (fx+ _start67703_
                                           _i67712_
                                           (fx* _i67712_ _i67712_))))
                                 (fxmodulo _next-probe67718_ _size67697_)))
                              (__tmp68076 (fx+ _i67712_ '1)))
                          (declare (not safe))
                          (_loop67707_ __tmp68077 __tmp68076))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67686_ _k67715_))
                            (begin
                              (vector-set!
                               _table67689_
                               _probe67710_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67689_
                               (fx+ _probe67710_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68075
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67684_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67684_
                                    __tmp68075)))))
                            (let ((__tmp68074
                                   (let ((_next-probe67722_
                                          (fx+ _start67703_
                                               _i67712_
                                               (fx* _i67712_ _i67712_))))
                                     (fxmodulo _next-probe67722_ _size67697_)))
                                  (__tmp68073 (fx+ _i67712_ '1)))
                              (declare (not safe))
                              (_loop67707_ __tmp68074 __tmp68073)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67676_)
        (let ((_super6767767679_
               (let () (declare (not safe)) (##type-super _klass67676_))))
          (if _super6767767679_
              (let ((_super67682_ _super6767767679_))
                (let ((__tmp68081
                       (let () (declare (not safe)) (##type-id _super67682_)))
                      (__tmp68080
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68081 __tmp68080)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67563_ _klass67564_ _obj-klass67565_)
        (let ((_method-table67567_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67565_))))
          (let _loop67570_ ((_rest67573_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67563_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67575_ '0)
                            (_methods67577_ '()))
            (let* ((_rest6757967587_ _rest67573_)
                   (_else6758167649_
                    (lambda ()
                      (let ((_prototype67595_
                             (let ((__obj68026
                                    (let ((__tmp68082
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67575_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67564_
                                       __tmp68082))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68026 '#f))
                               __obj68026)))
                        (let _loop67598_ ((_rest67600_ _methods67577_)
                                          (_off67601_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67575_ '1))))
                          (let* ((_rest6760367611_ _rest67600_)
                                 (_else6760567630_
                                  (lambda ()
                                    (let ((_prototype-key67619_
                                           (let ((__tmp68084
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67564_)))
                                                 (__tmp68083
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67565_))))
                                             (declare (not safe))
                                             (cons __tmp68084 __tmp68083))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67624_ ()
                                          (if (let ((__tmp68085
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68085 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67624_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67619_
                                         _prototype67595_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67628_)
                                         _prototype67628_)
                                       _prototype67595_))))
                                 (_K6760767637_
                                  (lambda (_rest67633_ _method67634_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67595_
                                       _method67634_
                                       _off67601_
                                       _klass67564_
                                       '#f))
                                    (let ((__tmp68086
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67601_ '1))))
                                      (declare (not safe))
                                      (_loop67598_ _rest67633_ __tmp68086)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6760367611_))
                                (let ((_hd6760867640_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6760367611_)))
                                      (_tl6760967642_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6760367611_))))
                                  (let* ((_method67645_ _hd6760867640_)
                                         (_rest67647_ _tl6760967642_))
                                    (declare (not safe))
                                    (_K6760767637_ _rest67647_ _method67645_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6760567630_))))))))
                   (_K6758367664_
                    (lambda (_rest67652_ _method-name67653_)
                      (let ((_$e67656_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67567_
                                _method-name67653_
                                '#f))))
                        (if _$e67656_
                            ((lambda (_method67659_)
                               (let ((__tmp68088
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67575_ '1)))
                                     (__tmp68087
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67659_ _methods67577_))))
                                 (declare (not safe))
                                 (_loop67570_
                                  _rest67652_
                                  __tmp68088
                                  __tmp68087)))
                             _$e67656_)
                            ((lambda (_klass67661_ _method-name67662_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass67661_
                                  'method:
                                  _method-name67662_)))
                             _klass67564_
                             _method-name67653_))))))
              (if (let () (declare (not safe)) (##pair? _rest6757967587_))
                  (let ((_hd6758467667_
                         (let ()
                           (declare (not safe))
                           (##car _rest6757967587_)))
                        (_tl6758567669_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6757967587_))))
                    (let* ((_method-name67672_ _hd6758467667_)
                           (_rest67674_ _tl6758567669_))
                      (declare (not safe))
                      (_K6758367664_ _rest67674_ _method-name67672_)))
                  (let () (declare (not safe)) (_else6758167649_))))))))
    (define try-create-prototype
      (lambda (_descriptor67450_ _klass67451_ _obj-klass67452_)
        (let ((_method-table67454_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67452_))))
          (let _loop67457_ ((_rest67460_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67450_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67462_ '0)
                            (_methods67464_ '()))
            (let* ((_rest6746667474_ _rest67460_)
                   (_else6746867536_
                    (lambda ()
                      (let ((_prototype67482_
                             (let ((__obj68027
                                    (let ((__tmp68089
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67462_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67451_
                                       __tmp68089))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68027 '#f))
                               __obj68027)))
                        (let _loop67485_ ((_rest67487_ _methods67464_)
                                          (_off67488_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67462_ '1))))
                          (let* ((_rest6749067498_ _rest67487_)
                                 (_else6749267517_
                                  (lambda ()
                                    (let ((_prototype-key67506_
                                           (let ((__tmp68091
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67451_)))
                                                 (__tmp68090
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67452_))))
                                             (declare (not safe))
                                             (cons __tmp68091 __tmp68090))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67511_ ()
                                          (if (let ((__tmp68092
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68092 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67511_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67506_
                                         _prototype67482_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67515_)
                                         _prototype67515_)
                                       _prototype67482_))))
                                 (_K6749467524_
                                  (lambda (_rest67520_ _method67521_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67482_
                                       _method67521_
                                       _off67488_
                                       _klass67451_
                                       '#f))
                                    (let ((__tmp68093
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67488_ '1))))
                                      (declare (not safe))
                                      (_loop67485_ _rest67520_ __tmp68093)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6749067498_))
                                (let ((_hd6749567527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6749067498_)))
                                      (_tl6749667529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6749067498_))))
                                  (let* ((_method67532_ _hd6749567527_)
                                         (_rest67534_ _tl6749667529_))
                                    (declare (not safe))
                                    (_K6749467524_ _rest67534_ _method67532_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6749267517_))))))))
                   (_K6747067551_
                    (lambda (_rest67539_ _method-name67540_)
                      (let ((_$e67543_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67454_
                                _method-name67540_
                                '#f))))
                        (if _$e67543_
                            ((lambda (_method67546_)
                               (let ((__tmp68095
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67462_ '1)))
                                     (__tmp68094
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67546_ _methods67464_))))
                                 (declare (not safe))
                                 (_loop67457_
                                  _rest67539_
                                  __tmp68095
                                  __tmp68094)))
                             _$e67543_)
                            ((lambda (_klass67548_ _method-name67549_) '#f)
                             _klass67451_
                             _method-name67540_))))))
              (if (let () (declare (not safe)) (##pair? _rest6746667474_))
                  (let ((_hd6747167554_
                         (let ()
                           (declare (not safe))
                           (##car _rest6746667474_)))
                        (_tl6747267556_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6746667474_))))
                    (let* ((_method-name67559_ _hd6747167554_)
                           (_rest67561_ _tl6747267556_))
                      (declare (not safe))
                      (_K6747067551_ _rest67561_ _method-name67559_)))
                  (let () (declare (not safe)) (_else6746867536_))))))))
    (define cast
      (lambda (_descriptor67409_ _obj67411_)
        (if (let () (declare (not safe)) (##structure? _obj67411_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67409_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67419_
                      (let () (declare (not safe)) (##type-id _klass67416_)))
                     (_obj-klass67422_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67411_)))
                     (_obj-klass-id67425_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67422_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67419_ _obj-klass-id67425_))
                    _obj67411_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67422_))
                        (let ((__tmp68097
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67411_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67409_ __tmp68097))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67431_ ()
                              (if (let ((__tmp68096
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68096 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67431_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67419_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67425_))
                          (let ((_prototype67441_
                                 (let ((_$e67435_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67435_
                                       ((lambda (_prototype67438_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67438_)
                                        _$e67435_)
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
                                            _descriptor67409_
                                            _klass67416_
                                            _obj-klass67422_)))))))
                            ((lambda (_prototype67443_ _obj67444_)
                               (let ((_instance67446_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67443_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67446_
                                    _obj67444_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67446_))
                             _prototype67441_
                             _obj67411_)))))))
            ((lambda (_obj67448_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67448_)))
             _obj67411_))))
    (define try-cast
      (lambda (_descriptor67368_ _obj67370_)
        (if (let () (declare (not safe)) (##structure? _obj67370_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67375_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67368_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67378_
                      (let () (declare (not safe)) (##type-id _klass67375_)))
                     (_obj-klass67381_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67370_)))
                     (_obj-klass-id67384_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67381_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67378_ _obj-klass-id67384_))
                    _obj67370_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67381_))
                        (let ((__tmp68099
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67370_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67368_ __tmp68099))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67390_ ()
                              (if (let ((__tmp68098
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68098 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67390_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67378_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67384_))
                          (let ((_prototype67400_
                                 (let ((_$e67394_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67394_
                                       ((lambda (_prototype67397_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67397_)
                                        _$e67394_)
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
                                            _descriptor67368_
                                            _klass67375_
                                            _obj-klass67381_)))))))
                            ((lambda (_prototype67402_ _obj67403_)
                               (if _prototype67402_
                                   (let ((_instance67405_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67402_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67405_
                                        _obj67403_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67405_)
                                   '#f))
                             _prototype67400_
                             _obj67370_)))))))
            ((lambda (_obj67407_) '#f) _obj67370_))))
    (define satisfies?
      (lambda (_descriptor67329_ _obj67331_)
        (if (let () (declare (not safe)) (##structure? _obj67331_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67336_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67329_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67339_
                      (let () (declare (not safe)) (##type-id _klass67336_)))
                     (_obj-klass67342_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67331_)))
                     (_obj-klass-id67345_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67342_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67339_ _obj-klass-id67345_))
                    _obj67331_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67342_))
                        (let ((__tmp68101
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67331_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67329_ __tmp68101))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67351_ ()
                              (if (let ((__tmp68100
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68100 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67351_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67339_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67345_))
                          (let ((_prototype67361_
                                 (let ((_$e67355_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67355_
                                       ((lambda (_prototype67358_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67358_)
                                        _$e67355_)
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
                                            _descriptor67329_
                                            _klass67336_
                                            _obj-klass67342_)))))))
                            ((lambda (_prototype67363_ _obj67364_)
                               (if _prototype67363_ '#t '#f))
                             _prototype67361_
                             _obj67331_)))))))
            ((lambda (_obj67366_) '#f) _obj67331_))))))
