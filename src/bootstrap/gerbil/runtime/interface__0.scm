(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709038441)
  (begin
    (define CastError::t
      (let ((__tmp67837 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp67837
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args67830_ (apply make-instance CastError::t _$args67830_)))
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
      (lambda (_where67704_ _message67705_ . _irritants67706_)
        (raise (let ((__obj67833
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj67833
                  _message67705_
                  'where:
                  _where67704_
                  'irritants:
                  _irritants67706_)
                 __obj67833))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp67840 (list))
            (__tmp67838
             (let ((__tmp67839
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp67839 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp67840
         '(__object)
         __tmp67838
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
      (let ((__tmp67845 (list))
            (__tmp67841
             (let ((__tmp67844
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp67842
                    (let ((__tmp67843
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp67843 '()))))
               (declare (not safe))
               (cons __tmp67844 __tmp67842))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp67845
         '(type methods)
         __tmp67841
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args67701_
        (apply make-instance interface-descriptor::t _$args67701_)))
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
      (lambda (_key67699_)
        (let ((__tmp67847
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key67699_))))
              (__tmp67846
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key67699_)))))
          (declare (not safe))
          (##fxxor __tmp67847 __tmp67846))))
    (define __interface-test-key
      (lambda (_a67696_ _b67697_)
        (if (let ((__tmp67851 (let () (declare (not safe)) (##car _a67696_)))
                  (__tmp67850 (let () (declare (not safe)) (##car _b67697_))))
              (declare (not safe))
              (##eq? __tmp67851 __tmp67850))
            (let ((__tmp67849 (let () (declare (not safe)) (##cdr _a67696_)))
                  (__tmp67848 (let () (declare (not safe)) (##cdr _b67697_))))
              (declare (not safe))
              (##eq? __tmp67849 __tmp67848))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint67677_ _seed67679_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint67677_
           __interface-hash-key
           __interface-test-key
           _seed67679_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint67685_ '#f) (_seed67687_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67685_ _seed67687_))))
    (define make-prototype-table__1
      (lambda (_size-hint67689_)
        (let ((_seed67691_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint67689_ _seed67691_))))
    (define make-prototype-table
      (lambda _g67853_
        (let ((_g67852_ (let () (declare (not safe)) (##length _g67853_))))
          (cond ((let () (declare (not safe)) (##fx= _g67852_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g67853_))
                ((let () (declare (not safe)) (##fx= _g67852_ 1))
                 (apply (lambda (_size-hint67689_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint67689_)))
                        _g67853_))
                ((let () (declare (not safe)) (##fx= _g67852_ 2))
                 (apply (lambda (_size-hint67693_ _seed67694_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint67693_
                             _seed67694_)))
                        _g67853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g67853_))))))
    (define prototype-table-ref
      (lambda (_tab67634_ _key67635_ _default67636_)
        (let ((_table67638_
               (let () (declare (not safe)) (&raw-table-table _tab67634_)))
              (_seed67639_
               (let () (declare (not safe)) (&raw-table-seed _tab67634_))))
          (let* ((_h67641_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67635_))
                         _seed67639_))
                 (_size67644_ (vector-length _table67638_))
                 (_entries67647_ (fxquotient _size67644_ '2))
                 (_start67650_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67641_ _entries67647_)
                   '1)))
            (let _loop67654_ ((_probe67657_ _start67650_)
                              (_i67659_ '1)
                              (_deleted67661_ '#f))
              (let ((_k67664_ (vector-ref _table67638_ _probe67657_)))
                (if (let ((__tmp67860 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67664_ __tmp67860))
                    _default67636_
                    (if (let ((__tmp67859 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67664_ __tmp67859))
                        (let ((__tmp67858
                               (let ((_next-probe67667_
                                      (fx+ _start67650_
                                           _i67659_
                                           (fx* _i67659_ _i67659_))))
                                 (fxmodulo _next-probe67667_ _size67644_)))
                              (__tmp67857 (fx+ _i67659_ '1))
                              (__tmp67856
                               (let ((_$e67670_ _deleted67661_))
                                 (if _$e67670_ _$e67670_ _probe67657_))))
                          (declare (not safe))
                          (_loop67654_ __tmp67858 __tmp67857 __tmp67856))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67635_ _k67664_))
                            (vector-ref _table67638_ (fx+ _probe67657_ '1))
                            (let ((__tmp67855
                                   (let ((_next-probe67673_
                                          (fx+ _start67650_
                                               _i67659_
                                               (fx* _i67659_ _i67659_))))
                                     (fxmodulo _next-probe67673_ _size67644_)))
                                  (__tmp67854 (fx+ _i67659_ '1)))
                              (declare (not safe))
                              (_loop67654_
                               __tmp67855
                               __tmp67854
                               _deleted67661_)))))))))))
    (define prototype-table-set!
      (lambda (_tab67630_ _key67631_ _value67632_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67630_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67630_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67630_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab67630_ _key67631_ _value67632_))))
    (define __prototype-table-set!
      (lambda (_tab67585_ _key67586_ _value67587_)
        (let ((_table67590_
               (let () (declare (not safe)) (&raw-table-table _tab67585_)))
              (_seed67591_
               (let () (declare (not safe)) (&raw-table-seed _tab67585_))))
          (let* ((_h67593_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67586_))
                         _seed67591_))
                 (_size67596_ (vector-length _table67590_))
                 (_entries67599_ (fxquotient _size67596_ '2))
                 (_start67602_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67593_ _entries67599_)
                   '1)))
            (let _loop67606_ ((_probe67609_ _start67602_)
                              (_i67611_ '1)
                              (_deleted67613_ '#f))
              (let ((_k67616_ (vector-ref _table67590_ _probe67609_)))
                (if (let ((__tmp67870 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67616_ __tmp67870))
                    (if _deleted67613_
                        (begin
                          (vector-set! _table67590_ _deleted67613_ _key67586_)
                          (vector-set!
                           _table67590_
                           (fx+ _deleted67613_ '1)
                           _value67587_)
                          ((lambda ()
                             (let ((__tmp67869
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67585_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67585_
                                __tmp67869)))))
                        (begin
                          (vector-set! _table67590_ _probe67609_ _key67586_)
                          (vector-set!
                           _table67590_
                           (fx+ _probe67609_ '1)
                           _value67587_)
                          ((lambda ()
                             (let ((__tmp67867
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67585_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67585_ __tmp67867))
                             (let ((__tmp67868
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67585_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67585_
                                __tmp67868))))))
                    (if (let ((__tmp67866 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67616_ __tmp67866))
                        (let ((__tmp67865
                               (let ((_next-probe67621_
                                      (fx+ _start67602_
                                           _i67611_
                                           (fx* _i67611_ _i67611_))))
                                 (fxmodulo _next-probe67621_ _size67596_)))
                              (__tmp67864 (fx+ _i67611_ '1))
                              (__tmp67863
                               (let ((_$e67624_ _deleted67613_))
                                 (if _$e67624_ _$e67624_ _probe67609_))))
                          (declare (not safe))
                          (_loop67606_ __tmp67865 __tmp67864 __tmp67863))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67586_ _k67616_))
                            (begin
                              (vector-set!
                               _table67590_
                               _probe67609_
                               _key67586_)
                              (vector-set!
                               _table67590_
                               (fx+ _probe67609_ '1)
                               _value67587_))
                            (let ((__tmp67862
                                   (let ((_next-probe67627_
                                          (fx+ _start67602_
                                               _i67611_
                                               (fx* _i67611_ _i67611_))))
                                     (fxmodulo _next-probe67627_ _size67596_)))
                                  (__tmp67861 (fx+ _i67611_ '1)))
                              (declare (not safe))
                              (_loop67606_
                               __tmp67862
                               __tmp67861
                               _deleted67613_)))))))))))
    (define prototype-table-update!
      (lambda (_tab67580_
               _key67581_
               _prototype-table-update!67582_
               _default67583_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab67580_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab67580_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab67580_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab67580_
           _key67581_
           _prototype-table-update!67582_
           _default67583_))))
    (define __prototype-table-update!
      (lambda (_tab67534_
               _key67535_
               _prototype-table-update!67536_
               _default67537_)
        (let ((_table67540_
               (let () (declare (not safe)) (&raw-table-table _tab67534_)))
              (_seed67541_
               (let () (declare (not safe)) (&raw-table-seed _tab67534_))))
          (let* ((_h67543_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67535_))
                         _seed67541_))
                 (_size67546_ (vector-length _table67540_))
                 (_entries67549_ (fxquotient _size67546_ '2))
                 (_start67552_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67543_ _entries67549_)
                   '1)))
            (let _loop67556_ ((_probe67559_ _start67552_)
                              (_i67561_ '1)
                              (_deleted67563_ '#f))
              (let ((_k67566_ (vector-ref _table67540_ _probe67559_)))
                (if (let ((__tmp67880 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67566_ __tmp67880))
                    (if _deleted67563_
                        (begin
                          (vector-set! _table67540_ _deleted67563_ _key67535_)
                          (vector-set!
                           _table67540_
                           (fx+ _deleted67563_ '1)
                           (_prototype-table-update!67536_ _default67537_))
                          ((lambda ()
                             (let ((__tmp67879
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67534_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67534_
                                __tmp67879)))))
                        (begin
                          (vector-set! _table67540_ _probe67559_ _key67535_)
                          (vector-set!
                           _table67540_
                           (fx+ _probe67559_ '1)
                           (_prototype-table-update!67536_ _default67537_))
                          ((lambda ()
                             (let ((__tmp67877
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab67534_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab67534_ __tmp67877))
                             (let ((__tmp67878
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab67534_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab67534_
                                __tmp67878))))))
                    (if (let ((__tmp67876 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67566_ __tmp67876))
                        (let ((__tmp67875
                               (let ((_next-probe67571_
                                      (fx+ _start67552_
                                           _i67561_
                                           (fx* _i67561_ _i67561_))))
                                 (fxmodulo _next-probe67571_ _size67546_)))
                              (__tmp67874 (fx+ _i67561_ '1))
                              (__tmp67873
                               (let ((_$e67574_ _deleted67563_))
                                 (if _$e67574_ _$e67574_ _probe67559_))))
                          (declare (not safe))
                          (_loop67556_ __tmp67875 __tmp67874 __tmp67873))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67535_ _k67566_))
                            (begin
                              (vector-set!
                               _table67540_
                               _probe67559_
                               _key67535_)
                              (vector-set!
                               _table67540_
                               (fx+ _probe67559_ '1)
                               (_prototype-table-update!67536_
                                (vector-ref
                                 _table67540_
                                 (fx+ _probe67559_ '1)))))
                            (let ((__tmp67872
                                   (let ((_next-probe67577_
                                          (fx+ _start67552_
                                               _i67561_
                                               (fx* _i67561_ _i67561_))))
                                     (fxmodulo _next-probe67577_ _size67546_)))
                                  (__tmp67871 (fx+ _i67561_ '1)))
                              (declare (not safe))
                              (_loop67556_
                               __tmp67872
                               __tmp67871
                               _deleted67563_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab67493_ _key67495_)
        (let ((_table67498_
               (let () (declare (not safe)) (&raw-table-table _tab67493_)))
              (_seed67500_
               (let () (declare (not safe)) (&raw-table-seed _tab67493_))))
          (let* ((_h67503_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key67495_))
                         _seed67500_))
                 (_size67506_ (vector-length _table67498_))
                 (_entries67509_ (fxquotient _size67506_ '2))
                 (_start67512_
                  (fxarithmetic-shift-left
                   (fxmodulo _h67503_ _entries67509_)
                   '1)))
            (let _loop67516_ ((_probe67519_ _start67512_) (_i67521_ '1))
              (let ((_k67524_ (vector-ref _table67498_ _probe67519_)))
                (if (let ((__tmp67887 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k67524_ __tmp67887))
                    '#!void
                    (if (let ((__tmp67886 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k67524_ __tmp67886))
                        (let ((__tmp67885
                               (let ((_next-probe67527_
                                      (fx+ _start67512_
                                           _i67521_
                                           (fx* _i67521_ _i67521_))))
                                 (fxmodulo _next-probe67527_ _size67506_)))
                              (__tmp67884 (fx+ _i67521_ '1)))
                          (declare (not safe))
                          (_loop67516_ __tmp67885 __tmp67884))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key67495_ _k67524_))
                            (begin
                              (vector-set!
                               _table67498_
                               _probe67519_
                               (macro-deleted-obj))
                              (vector-set!
                               _table67498_
                               (fx+ _probe67519_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp67883
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab67493_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab67493_
                                    __tmp67883)))))
                            (let ((__tmp67882
                                   (let ((_next-probe67531_
                                          (fx+ _start67512_
                                               _i67521_
                                               (fx* _i67521_ _i67521_))))
                                     (fxmodulo _next-probe67531_ _size67506_)))
                                  (__tmp67881 (fx+ _i67521_ '1)))
                              (declare (not safe))
                              (_loop67516_ __tmp67882 __tmp67881)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass67485_)
        (let ((_super6748667488_
               (let () (declare (not safe)) (##type-super _klass67485_))))
          (if _super6748667488_
              (let ((_super67491_ _super6748667488_))
                (let ((__tmp67889
                       (let () (declare (not safe)) (##type-id _super67491_)))
                      (__tmp67888
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp67889 __tmp67888)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor67372_ _klass67373_ _obj-klass67374_)
        (let ((_method-table67376_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67374_))))
          (let _loop67379_ ((_rest67382_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67372_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67384_ '0)
                            (_methods67386_ '()))
            (let* ((_rest6738867396_ _rest67382_)
                   (_else6739067458_
                    (lambda ()
                      (let ((_prototype67404_
                             (let ((__obj67835
                                    (let ((__tmp67890
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67384_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67373_
                                       __tmp67890))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj67835 '#f))
                               __obj67835)))
                        (let _loop67407_ ((_rest67409_ _methods67386_)
                                          (_off67410_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67384_ '1))))
                          (let* ((_rest6741267420_ _rest67409_)
                                 (_else6741467439_
                                  (lambda ()
                                    (let ((_prototype-key67428_
                                           (let ((__tmp67892
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67373_)))
                                                 (__tmp67891
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67374_))))
                                             (declare (not safe))
                                             (cons __tmp67892 __tmp67891))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67433_ ()
                                          (if (let ((__tmp67893
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp67893 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67433_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67428_
                                         _prototype67404_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67437_)
                                         _prototype67437_)
                                       _prototype67404_))))
                                 (_K6741667446_
                                  (lambda (_rest67442_ _method67443_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67404_
                                       _method67443_
                                       _off67410_
                                       _klass67373_
                                       '#f))
                                    (let ((__tmp67894
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67410_ '1))))
                                      (declare (not safe))
                                      (_loop67407_ _rest67442_ __tmp67894)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6741267420_))
                                (let ((_hd6741767449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6741267420_)))
                                      (_tl6741867451_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6741267420_))))
                                  (let* ((_method67454_ _hd6741767449_)
                                         (_rest67456_ _tl6741867451_))
                                    (declare (not safe))
                                    (_K6741667446_ _rest67456_ _method67454_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6741467439_))))))))
                   (_K6739267473_
                    (lambda (_rest67461_ _method-name67462_)
                      (let ((_$e67465_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67376_
                                _method-name67462_
                                '#f))))
                        (if _$e67465_
                            ((lambda (_method67468_)
                               (let ((__tmp67896
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67384_ '1)))
                                     (__tmp67895
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67468_ _methods67386_))))
                                 (declare (not safe))
                                 (_loop67379_
                                  _rest67461_
                                  __tmp67896
                                  __tmp67895)))
                             _$e67465_)
                            ((lambda (_klass67470_ _method-name67471_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass67470_
                                  'method:
                                  _method-name67471_)))
                             _klass67373_
                             _method-name67462_))))))
              (if (let () (declare (not safe)) (##pair? _rest6738867396_))
                  (let ((_hd6739367476_
                         (let ()
                           (declare (not safe))
                           (##car _rest6738867396_)))
                        (_tl6739467478_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6738867396_))))
                    (let* ((_method-name67481_ _hd6739367476_)
                           (_rest67483_ _tl6739467478_))
                      (declare (not safe))
                      (_K6739267473_ _rest67483_ _method-name67481_)))
                  (let () (declare (not safe)) (_else6739067458_))))))))
    (define try-create-prototype
      (lambda (_descriptor67259_ _klass67260_ _obj-klass67261_)
        (let ((_method-table67263_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass67261_))))
          (let _loop67266_ ((_rest67269_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor67259_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count67271_ '0)
                            (_methods67273_ '()))
            (let* ((_rest6727567283_ _rest67269_)
                   (_else6727767345_
                    (lambda ()
                      (let ((_prototype67291_
                             (let ((__obj67836
                                    (let ((__tmp67897
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67271_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass67260_
                                       __tmp67897))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj67836 '#f))
                               __obj67836)))
                        (let _loop67294_ ((_rest67296_ _methods67273_)
                                          (_off67297_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count67271_ '1))))
                          (let* ((_rest6729967307_ _rest67296_)
                                 (_else6730167326_
                                  (lambda ()
                                    (let ((_prototype-key67315_
                                           (let ((__tmp67899
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass67260_)))
                                                 (__tmp67898
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass67261_))))
                                             (declare (not safe))
                                             (cons __tmp67899 __tmp67898))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again67320_ ()
                                          (if (let ((__tmp67900
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp67900 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again67320_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key67315_
                                         _prototype67291_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype67324_)
                                         _prototype67324_)
                                       _prototype67291_))))
                                 (_K6730367333_
                                  (lambda (_rest67329_ _method67330_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype67291_
                                       _method67330_
                                       _off67297_
                                       _klass67260_
                                       '#f))
                                    (let ((__tmp67901
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off67297_ '1))))
                                      (declare (not safe))
                                      (_loop67294_ _rest67329_ __tmp67901)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6729967307_))
                                (let ((_hd6730467336_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6729967307_)))
                                      (_tl6730567338_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6729967307_))))
                                  (let* ((_method67341_ _hd6730467336_)
                                         (_rest67343_ _tl6730567338_))
                                    (declare (not safe))
                                    (_K6730367333_ _rest67343_ _method67341_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6730167326_))))))))
                   (_K6727967360_
                    (lambda (_rest67348_ _method-name67349_)
                      (let ((_$e67352_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table67263_
                                _method-name67349_
                                '#f))))
                        (if _$e67352_
                            ((lambda (_method67355_)
                               (let ((__tmp67903
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count67271_ '1)))
                                     (__tmp67902
                                      (let ()
                                        (declare (not safe))
                                        (cons _method67355_ _methods67273_))))
                                 (declare (not safe))
                                 (_loop67266_
                                  _rest67348_
                                  __tmp67903
                                  __tmp67902)))
                             _$e67352_)
                            ((lambda (_klass67357_ _method-name67358_) '#f)
                             _klass67260_
                             _method-name67349_))))))
              (if (let () (declare (not safe)) (##pair? _rest6727567283_))
                  (let ((_hd6728067363_
                         (let ()
                           (declare (not safe))
                           (##car _rest6727567283_)))
                        (_tl6728167365_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6727567283_))))
                    (let* ((_method-name67368_ _hd6728067363_)
                           (_rest67370_ _tl6728167365_))
                      (declare (not safe))
                      (_K6727967360_ _rest67370_ _method-name67368_)))
                  (let () (declare (not safe)) (_else6727767345_))))))))
    (define cast
      (lambda (_descriptor67218_ _obj67220_)
        (if (let () (declare (not safe)) (##structure? _obj67220_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67225_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67218_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67228_
                      (let () (declare (not safe)) (##type-id _klass67225_)))
                     (_obj-klass67231_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67220_)))
                     (_obj-klass-id67234_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67231_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67228_ _obj-klass-id67234_))
                    _obj67220_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67231_))
                        (let ((__tmp67905
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67220_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor67218_ __tmp67905))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67240_ ()
                              (if (let ((__tmp67904
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67904 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67240_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67228_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67234_))
                          (let ((_prototype67250_
                                 (let ((_$e67244_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67244_
                                       ((lambda (_prototype67247_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67247_)
                                        _$e67244_)
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
                                            _descriptor67218_
                                            _klass67225_
                                            _obj-klass67231_)))))))
                            ((lambda (_prototype67252_ _obj67253_)
                               (let ((_instance67255_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype67252_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance67255_
                                    _obj67253_
                                    '1
                                    '#f
                                    'cast))
                                 _instance67255_))
                             _prototype67250_
                             _obj67220_)))))))
            ((lambda (_obj67257_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj67257_)))
             _obj67220_))))
    (define try-cast
      (lambda (_descriptor67177_ _obj67179_)
        (if (let () (declare (not safe)) (##structure? _obj67179_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67184_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67177_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67187_
                      (let () (declare (not safe)) (##type-id _klass67184_)))
                     (_obj-klass67190_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67179_)))
                     (_obj-klass-id67193_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67190_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67187_ _obj-klass-id67193_))
                    _obj67179_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67190_))
                        (let ((__tmp67907
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67179_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor67177_ __tmp67907))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67199_ ()
                              (if (let ((__tmp67906
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67906 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67199_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67187_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67193_))
                          (let ((_prototype67209_
                                 (let ((_$e67203_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67203_
                                       ((lambda (_prototype67206_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67206_)
                                        _$e67203_)
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
                                            _descriptor67177_
                                            _klass67184_
                                            _obj-klass67190_)))))))
                            ((lambda (_prototype67211_ _obj67212_)
                               (if _prototype67211_
                                   (let ((_instance67214_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype67211_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance67214_
                                        _obj67212_
                                        '1
                                        '#f
                                        'cast))
                                     _instance67214_)
                                   '#f))
                             _prototype67209_
                             _obj67179_)))))))
            ((lambda (_obj67216_) '#f) _obj67179_))))
    (define satisfies?
      (lambda (_descriptor67138_ _obj67140_)
        (if (let () (declare (not safe)) (##structure? _obj67140_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass67145_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor67138_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id67148_
                      (let () (declare (not safe)) (##type-id _klass67145_)))
                     (_obj-klass67151_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj67140_)))
                     (_obj-klass-id67154_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass67151_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id67148_ _obj-klass-id67154_))
                    _obj67140_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass67151_))
                        (let ((__tmp67909
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj67140_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor67138_ __tmp67909))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again67160_ ()
                              (if (let ((__tmp67908
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp67908 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again67160_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id67148_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id67154_))
                          (let ((_prototype67170_
                                 (let ((_$e67164_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e67164_
                                       ((lambda (_prototype67167_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype67167_)
                                        _$e67164_)
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
                                            _descriptor67138_
                                            _klass67145_
                                            _obj-klass67151_)))))))
                            ((lambda (_prototype67172_ _obj67173_)
                               (if _prototype67172_ '#t '#f))
                             _prototype67170_
                             _obj67140_)))))))
            ((lambda (_obj67175_) '#f) _obj67140_))))))
