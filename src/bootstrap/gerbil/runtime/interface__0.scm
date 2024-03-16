(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1710617601)
  (begin
    (define CastError::t
      (let ((__tmp66865 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp66865
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args66858_ (apply make-instance CastError::t _$args66858_)))
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
      (lambda (_where66732_ _message66733_ . _irritants66734_)
        (raise (let ((__obj66861
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj66861
                  _message66733_
                  'where:
                  _where66732_
                  'irritants:
                  _irritants66734_)
                 __obj66861))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp66868 (list))
            (__tmp66866
             (let ((__tmp66867
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp66867 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp66868
         '(__object)
         __tmp66866
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
      (let ((__tmp66873 (list))
            (__tmp66869
             (let ((__tmp66872
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp66870
                    (let ((__tmp66871
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp66871 '()))))
               (declare (not safe))
               (cons __tmp66872 __tmp66870))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp66873
         '(type methods)
         __tmp66869
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args66729_
        (apply make-instance interface-descriptor::t _$args66729_)))
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
      (lambda (_key66727_)
        (let ((__tmp66875
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key66727_))))
              (__tmp66874
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key66727_)))))
          (declare (not safe))
          (##fxxor __tmp66875 __tmp66874))))
    (define __interface-test-key
      (lambda (_a66724_ _b66725_)
        (if (let ((__tmp66877 (let () (declare (not safe)) (##car _a66724_)))
                  (__tmp66876 (let () (declare (not safe)) (##car _b66725_))))
              (declare (not safe))
              (##eq? __tmp66877 __tmp66876))
            (let ((__tmp66879 (let () (declare (not safe)) (##cdr _a66724_)))
                  (__tmp66878 (let () (declare (not safe)) (##cdr _b66725_))))
              (declare (not safe))
              (##eq? __tmp66879 __tmp66878))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint66705_ _seed66707_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint66705_
           __interface-hash-key
           __interface-test-key
           _seed66707_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint66713_ '#f) (_seed66715_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint66713_ _seed66715_))))
    (define make-prototype-table__1
      (lambda (_size-hint66717_)
        (let ((_seed66719_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint66717_ _seed66719_))))
    (define make-prototype-table
      (lambda _g66881_
        (let ((_g66880_ (let () (declare (not safe)) (##length _g66881_))))
          (cond ((let () (declare (not safe)) (##fx= _g66880_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g66881_))
                ((let () (declare (not safe)) (##fx= _g66880_ 1))
                 (apply (lambda (_size-hint66717_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint66717_)))
                        _g66881_))
                ((let () (declare (not safe)) (##fx= _g66880_ 2))
                 (apply (lambda (_size-hint66721_ _seed66722_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint66721_
                             _seed66722_)))
                        _g66881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g66881_))))))
    (define prototype-table-ref
      (lambda (_tab66662_ _key66663_ _default66664_)
        (let ((_table66666_
               (let () (declare (not safe)) (&raw-table-table _tab66662_)))
              (_seed66667_
               (let () (declare (not safe)) (&raw-table-seed _tab66662_))))
          (let* ((_h66669_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66663_))
                         _seed66667_))
                 (_size66672_ (vector-length _table66666_))
                 (_entries66675_ (fxquotient _size66672_ '2))
                 (_start66678_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66669_ _entries66675_)
                   '1)))
            (let _loop66682_ ((_probe66685_ _start66678_)
                              (_i66687_ '1)
                              (_deleted66689_ '#f))
              (let ((_k66692_ (vector-ref _table66666_ _probe66685_)))
                (if (let ((__tmp66882 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66692_ __tmp66882))
                    _default66664_
                    (if (let ((__tmp66883 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66692_ __tmp66883))
                        (let ((__tmp66886
                               (let ((_next-probe66695_
                                      (fx+ _start66678_
                                           _i66687_
                                           (fx* _i66687_ _i66687_))))
                                 (fxmodulo _next-probe66695_ _size66672_)))
                              (__tmp66885 (fx+ _i66687_ '1))
                              (__tmp66884
                               (let ((_$e66698_ _deleted66689_))
                                 (if _$e66698_ _$e66698_ _probe66685_))))
                          (declare (not safe))
                          (_loop66682_ __tmp66886 __tmp66885 __tmp66884))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66663_ _k66692_))
                            (vector-ref _table66666_ (fx+ _probe66685_ '1))
                            (let ((__tmp66888
                                   (let ((_next-probe66701_
                                          (fx+ _start66678_
                                               _i66687_
                                               (fx* _i66687_ _i66687_))))
                                     (fxmodulo _next-probe66701_ _size66672_)))
                                  (__tmp66887 (fx+ _i66687_ '1)))
                              (declare (not safe))
                              (_loop66682_
                               __tmp66888
                               __tmp66887
                               _deleted66689_)))))))))))
    (define prototype-table-set!
      (lambda (_tab66658_ _key66659_ _value66660_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab66658_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab66658_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab66658_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab66658_ _key66659_ _value66660_))))
    (define __prototype-table-set!
      (lambda (_tab66613_ _key66614_ _value66615_)
        (let ((_table66618_
               (let () (declare (not safe)) (&raw-table-table _tab66613_)))
              (_seed66619_
               (let () (declare (not safe)) (&raw-table-seed _tab66613_))))
          (let* ((_h66621_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66614_))
                         _seed66619_))
                 (_size66624_ (vector-length _table66618_))
                 (_entries66627_ (fxquotient _size66624_ '2))
                 (_start66630_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66621_ _entries66627_)
                   '1)))
            (let _loop66634_ ((_probe66637_ _start66630_)
                              (_i66639_ '1)
                              (_deleted66641_ '#f))
              (let ((_k66644_ (vector-ref _table66618_ _probe66637_)))
                (if (let ((__tmp66889 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66644_ __tmp66889))
                    (if _deleted66641_
                        (begin
                          (vector-set! _table66618_ _deleted66641_ _key66614_)
                          (vector-set!
                           _table66618_
                           (fx+ _deleted66641_ '1)
                           _value66615_)
                          ((lambda ()
                             (let ((__tmp66890
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66613_
                                __tmp66890)))))
                        (begin
                          (vector-set! _table66618_ _probe66637_ _key66614_)
                          (vector-set!
                           _table66618_
                           (fx+ _probe66637_ '1)
                           _value66615_)
                          ((lambda ()
                             (let ((__tmp66891
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab66613_ __tmp66891))
                             (let ((__tmp66892
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66613_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66613_
                                __tmp66892))))))
                    (if (let ((__tmp66893 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66644_ __tmp66893))
                        (let ((__tmp66896
                               (let ((_next-probe66649_
                                      (fx+ _start66630_
                                           _i66639_
                                           (fx* _i66639_ _i66639_))))
                                 (fxmodulo _next-probe66649_ _size66624_)))
                              (__tmp66895 (fx+ _i66639_ '1))
                              (__tmp66894
                               (let ((_$e66652_ _deleted66641_))
                                 (if _$e66652_ _$e66652_ _probe66637_))))
                          (declare (not safe))
                          (_loop66634_ __tmp66896 __tmp66895 __tmp66894))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66614_ _k66644_))
                            (begin
                              (vector-set!
                               _table66618_
                               _probe66637_
                               _key66614_)
                              (vector-set!
                               _table66618_
                               (fx+ _probe66637_ '1)
                               _value66615_))
                            (let ((__tmp66898
                                   (let ((_next-probe66655_
                                          (fx+ _start66630_
                                               _i66639_
                                               (fx* _i66639_ _i66639_))))
                                     (fxmodulo _next-probe66655_ _size66624_)))
                                  (__tmp66897 (fx+ _i66639_ '1)))
                              (declare (not safe))
                              (_loop66634_
                               __tmp66898
                               __tmp66897
                               _deleted66641_)))))))))))
    (define prototype-table-update!
      (lambda (_tab66608_
               _key66609_
               _prototype-table-update!66610_
               _default66611_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab66608_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab66608_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab66608_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab66608_
           _key66609_
           _prototype-table-update!66610_
           _default66611_))))
    (define __prototype-table-update!
      (lambda (_tab66562_
               _key66563_
               _prototype-table-update!66564_
               _default66565_)
        (let ((_table66568_
               (let () (declare (not safe)) (&raw-table-table _tab66562_)))
              (_seed66569_
               (let () (declare (not safe)) (&raw-table-seed _tab66562_))))
          (let* ((_h66571_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66563_))
                         _seed66569_))
                 (_size66574_ (vector-length _table66568_))
                 (_entries66577_ (fxquotient _size66574_ '2))
                 (_start66580_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66571_ _entries66577_)
                   '1)))
            (let _loop66584_ ((_probe66587_ _start66580_)
                              (_i66589_ '1)
                              (_deleted66591_ '#f))
              (let ((_k66594_ (vector-ref _table66568_ _probe66587_)))
                (if (let ((__tmp66899 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66594_ __tmp66899))
                    (if _deleted66591_
                        (begin
                          (vector-set! _table66568_ _deleted66591_ _key66563_)
                          (vector-set!
                           _table66568_
                           (fx+ _deleted66591_ '1)
                           (_prototype-table-update!66564_ _default66565_))
                          ((lambda ()
                             (let ((__tmp66900
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66562_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66562_
                                __tmp66900)))))
                        (begin
                          (vector-set! _table66568_ _probe66587_ _key66563_)
                          (vector-set!
                           _table66568_
                           (fx+ _probe66587_ '1)
                           (_prototype-table-update!66564_ _default66565_))
                          ((lambda ()
                             (let ((__tmp66901
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab66562_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab66562_ __tmp66901))
                             (let ((__tmp66902
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab66562_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab66562_
                                __tmp66902))))))
                    (if (let ((__tmp66903 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66594_ __tmp66903))
                        (let ((__tmp66906
                               (let ((_next-probe66599_
                                      (fx+ _start66580_
                                           _i66589_
                                           (fx* _i66589_ _i66589_))))
                                 (fxmodulo _next-probe66599_ _size66574_)))
                              (__tmp66905 (fx+ _i66589_ '1))
                              (__tmp66904
                               (let ((_$e66602_ _deleted66591_))
                                 (if _$e66602_ _$e66602_ _probe66587_))))
                          (declare (not safe))
                          (_loop66584_ __tmp66906 __tmp66905 __tmp66904))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66563_ _k66594_))
                            (begin
                              (vector-set!
                               _table66568_
                               _probe66587_
                               _key66563_)
                              (vector-set!
                               _table66568_
                               (fx+ _probe66587_ '1)
                               (_prototype-table-update!66564_
                                (vector-ref
                                 _table66568_
                                 (fx+ _probe66587_ '1)))))
                            (let ((__tmp66908
                                   (let ((_next-probe66605_
                                          (fx+ _start66580_
                                               _i66589_
                                               (fx* _i66589_ _i66589_))))
                                     (fxmodulo _next-probe66605_ _size66574_)))
                                  (__tmp66907 (fx+ _i66589_ '1)))
                              (declare (not safe))
                              (_loop66584_
                               __tmp66908
                               __tmp66907
                               _deleted66591_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab66521_ _key66523_)
        (let ((_table66526_
               (let () (declare (not safe)) (&raw-table-table _tab66521_)))
              (_seed66528_
               (let () (declare (not safe)) (&raw-table-seed _tab66521_))))
          (let* ((_h66531_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key66523_))
                         _seed66528_))
                 (_size66534_ (vector-length _table66526_))
                 (_entries66537_ (fxquotient _size66534_ '2))
                 (_start66540_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66531_ _entries66537_)
                   '1)))
            (let _loop66544_ ((_probe66547_ _start66540_) (_i66549_ '1))
              (let ((_k66552_ (vector-ref _table66526_ _probe66547_)))
                (if (let ((__tmp66909 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k66552_ __tmp66909))
                    '#!void
                    (if (let ((__tmp66910 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k66552_ __tmp66910))
                        (let ((__tmp66912
                               (let ((_next-probe66555_
                                      (fx+ _start66540_
                                           _i66549_
                                           (fx* _i66549_ _i66549_))))
                                 (fxmodulo _next-probe66555_ _size66534_)))
                              (__tmp66911 (fx+ _i66549_ '1)))
                          (declare (not safe))
                          (_loop66544_ __tmp66912 __tmp66911))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key66523_ _k66552_))
                            (begin
                              (vector-set!
                               _table66526_
                               _probe66547_
                               (macro-deleted-obj))
                              (vector-set!
                               _table66526_
                               (fx+ _probe66547_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp66913
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab66521_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab66521_
                                    __tmp66913)))))
                            (let ((__tmp66915
                                   (let ((_next-probe66559_
                                          (fx+ _start66540_
                                               _i66549_
                                               (fx* _i66549_ _i66549_))))
                                     (fxmodulo _next-probe66559_ _size66534_)))
                                  (__tmp66914 (fx+ _i66549_ '1)))
                              (declare (not safe))
                              (_loop66544_ __tmp66915 __tmp66914)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass66513_)
        (let ((_super6651466516_
               (let () (declare (not safe)) (##type-super _klass66513_))))
          (if _super6651466516_
              (let ((_super66519_ _super6651466516_))
                (let ((__tmp66917
                       (let () (declare (not safe)) (##type-id _super66519_)))
                      (__tmp66916
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp66917 __tmp66916)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor66400_ _klass66401_ _obj-klass66402_)
        (let ((_method-table66404_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass66402_))))
          (let _loop66407_ ((_rest66410_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor66400_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count66412_ '0)
                            (_methods66414_ '()))
            (let* ((_rest6641666424_ _rest66410_)
                   (_else6641866486_
                    (lambda ()
                      (let ((_prototype66432_
                             (let ((__obj66863
                                    (let ((__tmp66918
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66412_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass66401_
                                       __tmp66918))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj66863 '#f))
                               __obj66863)))
                        (let _loop66435_ ((_rest66437_ _methods66414_)
                                          (_off66438_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66412_ '1))))
                          (let* ((_rest6644066448_ _rest66437_)
                                 (_else6644266467_
                                  (lambda ()
                                    (let ((_prototype-key66456_
                                           (let ((__tmp66920
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass66401_)))
                                                 (__tmp66919
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass66402_))))
                                             (declare (not safe))
                                             (cons __tmp66920 __tmp66919))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again66461_ ()
                                          (if (let ((__tmp66921
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp66921 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again66461_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key66456_
                                         _prototype66432_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype66465_)
                                         _prototype66465_)
                                       _prototype66432_))))
                                 (_K6644466474_
                                  (lambda (_rest66470_ _method66471_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype66432_
                                       _method66471_
                                       _off66438_
                                       _klass66401_
                                       '#f))
                                    (let ((__tmp66922
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off66438_ '1))))
                                      (declare (not safe))
                                      (_loop66435_ _rest66470_ __tmp66922)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6644066448_))
                                (let ((_hd6644566477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6644066448_)))
                                      (_tl6644666479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6644066448_))))
                                  (let* ((_method66482_ _hd6644566477_)
                                         (_rest66484_ _tl6644666479_))
                                    (declare (not safe))
                                    (_K6644466474_ _rest66484_ _method66482_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6644266467_))))))))
                   (_K6642066501_
                    (lambda (_rest66489_ _method-name66490_)
                      (let ((_$e66493_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table66404_
                                _method-name66490_
                                '#f))))
                        (if _$e66493_
                            ((lambda (_method66496_)
                               (let ((__tmp66924
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count66412_ '1)))
                                     (__tmp66923
                                      (let ()
                                        (declare (not safe))
                                        (cons _method66496_ _methods66414_))))
                                 (declare (not safe))
                                 (_loop66407_
                                  _rest66489_
                                  __tmp66924
                                  __tmp66923)))
                             _$e66493_)
                            ((lambda (_klass66498_ _method-name66499_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass66498_
                                  'method:
                                  _method-name66499_)))
                             _klass66401_
                             _method-name66490_))))))
              (if (let () (declare (not safe)) (##pair? _rest6641666424_))
                  (let ((_hd6642166504_
                         (let ()
                           (declare (not safe))
                           (##car _rest6641666424_)))
                        (_tl6642266506_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6641666424_))))
                    (let* ((_method-name66509_ _hd6642166504_)
                           (_rest66511_ _tl6642266506_))
                      (declare (not safe))
                      (_K6642066501_ _rest66511_ _method-name66509_)))
                  (let () (declare (not safe)) (_else6641866486_))))))))
    (define try-create-prototype
      (lambda (_descriptor66287_ _klass66288_ _obj-klass66289_)
        (let ((_method-table66291_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass66289_))))
          (let _loop66294_ ((_rest66297_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor66287_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count66299_ '0)
                            (_methods66301_ '()))
            (let* ((_rest6630366311_ _rest66297_)
                   (_else6630566373_
                    (lambda ()
                      (let ((_prototype66319_
                             (let ((__obj66864
                                    (let ((__tmp66925
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66299_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass66288_
                                       __tmp66925))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj66864 '#f))
                               __obj66864)))
                        (let _loop66322_ ((_rest66324_ _methods66301_)
                                          (_off66325_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count66299_ '1))))
                          (let* ((_rest6632766335_ _rest66324_)
                                 (_else6632966354_
                                  (lambda ()
                                    (let ((_prototype-key66343_
                                           (let ((__tmp66927
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass66288_)))
                                                 (__tmp66926
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass66289_))))
                                             (declare (not safe))
                                             (cons __tmp66927 __tmp66926))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again66348_ ()
                                          (if (let ((__tmp66928
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp66928 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again66348_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key66343_
                                         _prototype66319_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype66352_)
                                         _prototype66352_)
                                       _prototype66319_))))
                                 (_K6633166361_
                                  (lambda (_rest66357_ _method66358_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype66319_
                                       _method66358_
                                       _off66325_
                                       _klass66288_
                                       '#f))
                                    (let ((__tmp66929
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off66325_ '1))))
                                      (declare (not safe))
                                      (_loop66322_ _rest66357_ __tmp66929)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6632766335_))
                                (let ((_hd6633266364_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6632766335_)))
                                      (_tl6633366366_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6632766335_))))
                                  (let* ((_method66369_ _hd6633266364_)
                                         (_rest66371_ _tl6633366366_))
                                    (declare (not safe))
                                    (_K6633166361_ _rest66371_ _method66369_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6632966354_))))))))
                   (_K6630766388_
                    (lambda (_rest66376_ _method-name66377_)
                      (let ((_$e66380_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table66291_
                                _method-name66377_
                                '#f))))
                        (if _$e66380_
                            ((lambda (_method66383_)
                               (let ((__tmp66931
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count66299_ '1)))
                                     (__tmp66930
                                      (let ()
                                        (declare (not safe))
                                        (cons _method66383_ _methods66301_))))
                                 (declare (not safe))
                                 (_loop66294_
                                  _rest66376_
                                  __tmp66931
                                  __tmp66930)))
                             _$e66380_)
                            ((lambda (_klass66385_ _method-name66386_) '#f)
                             _klass66288_
                             _method-name66377_))))))
              (if (let () (declare (not safe)) (##pair? _rest6630366311_))
                  (let ((_hd6630866391_
                         (let ()
                           (declare (not safe))
                           (##car _rest6630366311_)))
                        (_tl6630966393_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6630366311_))))
                    (let* ((_method-name66396_ _hd6630866391_)
                           (_rest66398_ _tl6630966393_))
                      (declare (not safe))
                      (_K6630766388_ _rest66398_ _method-name66396_)))
                  (let () (declare (not safe)) (_else6630566373_))))))))
    (define cast
      (lambda (_descriptor66249_ _obj66251_)
        (declare (not interrupts-enabled))
        (let* ((_klass66255_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66249_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66258_
                (let () (declare (not safe)) (##type-id _klass66255_)))
               (_obj-klass66261_
                (let () (declare (not safe)) (class-of _obj66251_)))
               (_obj-klass-id66264_
                (let () (declare (not safe)) (##type-id _obj-klass66261_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66258_ _obj-klass-id66264_))
              _obj66251_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66261_))
                  (let ((__tmp66932
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66251_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (cast _descriptor66249_ __tmp66932))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66270_ ()
                        (if (let ((__tmp66933
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66933 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66270_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66258_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66264_))
                    (let ((_prototype66280_
                           (let ((_$e66274_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66274_
                                 ((lambda (_prototype66277_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66277_)
                                  _$e66274_)
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
                                      _descriptor66249_
                                      _klass66255_
                                      _obj-klass66261_)))))))
                      ((lambda (_prototype66282_ _obj66283_)
                         (let ((_instance66285_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _prototype66282_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _instance66285_
                              _obj66283_
                              '1
                              '#f
                              'cast))
                           _instance66285_))
                       _prototype66280_
                       _obj66251_))))))))
    (define try-cast
      (lambda (_descriptor66211_ _obj66213_)
        (declare (not interrupts-enabled))
        (let* ((_klass66217_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66211_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66220_
                (let () (declare (not safe)) (##type-id _klass66217_)))
               (_obj-klass66223_
                (let () (declare (not safe)) (class-of _obj66213_)))
               (_obj-klass-id66226_
                (let () (declare (not safe)) (##type-id _obj-klass66223_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66220_ _obj-klass-id66226_))
              _obj66213_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66223_))
                  (let ((__tmp66934
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66213_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (try-cast _descriptor66211_ __tmp66934))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66232_ ()
                        (if (let ((__tmp66935
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66935 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66232_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66220_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66226_))
                    (let ((_prototype66242_
                           (let ((_$e66236_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66236_
                                 ((lambda (_prototype66239_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66239_)
                                  _$e66236_)
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
                                      _descriptor66211_
                                      _klass66217_
                                      _obj-klass66223_)))))))
                      ((lambda (_prototype66244_ _obj66245_)
                         (if _prototype66244_
                             (let ((_instance66247_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _prototype66244_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _instance66247_
                                  _obj66245_
                                  '1
                                  '#f
                                  'cast))
                               _instance66247_)
                             '#f))
                       _prototype66242_
                       _obj66213_))))))))
    (define satisfies?
      (lambda (_descriptor66175_ _obj66177_)
        (declare (not interrupts-enabled))
        (let* ((_klass66181_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _descriptor66175_
                   '1
                   interface-descriptor::t
                   '#f)))
               (_klass-id66184_
                (let () (declare (not safe)) (##type-id _klass66181_)))
               (_obj-klass66187_
                (let () (declare (not safe)) (class-of _obj66177_)))
               (_obj-klass-id66190_
                (let () (declare (not safe)) (##type-id _obj-klass66187_))))
          (if (let ()
                (declare (not safe))
                (##eq? _klass-id66184_ _obj-klass-id66190_))
              _obj66177_
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _obj-klass66187_))
                  (let ((__tmp66936
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _obj66177_
                            '1
                            interface-instance::t
                            '#f))))
                    (declare (not safe))
                    (satisfies? _descriptor66175_ __tmp66936))
                  (begin
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _again66196_ ()
                        (if (let ((__tmp66937
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp66937 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let () (declare (not safe)) (_again66196_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car! __interface-prototypes-key _klass-id66184_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _obj-klass-id66190_))
                    (let ((_prototype66206_
                           (let ((_$e66200_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _$e66200_
                                 ((lambda (_prototype66203_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _prototype66203_)
                                  _$e66200_)
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
                                      _descriptor66175_
                                      _klass66181_
                                      _obj-klass66187_)))))))
                      ((lambda (_prototype66208_ _obj66209_)
                         (if _prototype66208_ '#t '#f))
                       _prototype66206_
                       _obj66177_))))))))))
