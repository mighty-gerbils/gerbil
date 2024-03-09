(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1709994212)
  (begin
    (define CastError::t
      (let ((__tmp68704 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp68704
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _$args68697_ (apply make-instance CastError::t _$args68697_)))
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
      (lambda (_where68571_ _message68572_ . _irritants68573_)
        (raise (let ((__obj68700
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj68700
                  _message68572_
                  'where:
                  _where68571_
                  'irritants:
                  _irritants68573_)
                 __obj68700))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp68707 (list))
            (__tmp68705
             (let ((__tmp68706
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp68706 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp68707
         '(__object)
         __tmp68705
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
      (let ((__tmp68712 (list))
            (__tmp68708
             (let ((__tmp68711
                    (let () (declare (not safe)) (cons 'struct: '#t)))
                   (__tmp68709
                    (let ((__tmp68710
                           (let () (declare (not safe)) (cons 'final: '#t))))
                      (declare (not safe))
                      (cons __tmp68710 '()))))
               (declare (not safe))
               (cons __tmp68711 __tmp68709))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp68712
         '(type methods)
         __tmp68708
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _$args68568_
        (apply make-instance interface-descriptor::t _$args68568_)))
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
      (lambda (_key68566_)
        (let ((__tmp68714
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _key68566_))))
              (__tmp68713
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _key68566_)))))
          (declare (not safe))
          (##fxxor __tmp68714 __tmp68713))))
    (define __interface-test-key
      (lambda (_a68563_ _b68564_)
        (if (let ((__tmp68718 (let () (declare (not safe)) (##car _a68563_)))
                  (__tmp68717 (let () (declare (not safe)) (##car _b68564_))))
              (declare (not safe))
              (##eq? __tmp68718 __tmp68717))
            (let ((__tmp68716 (let () (declare (not safe)) (##cdr _a68563_)))
                  (__tmp68715 (let () (declare (not safe)) (##cdr _b68564_))))
              (declare (not safe))
              (##eq? __tmp68716 __tmp68715))
            '#f)))
    (define make-prototype-table__%
      (lambda (_size-hint68544_ _seed68546_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint68544_
           __interface-hash-key
           __interface-test-key
           _seed68546_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_size-hint68552_ '#f) (_seed68554_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68552_ _seed68554_))))
    (define make-prototype-table__1
      (lambda (_size-hint68556_)
        (let ((_seed68558_ '0))
          (declare (not safe))
          (make-prototype-table__% _size-hint68556_ _seed68558_))))
    (define make-prototype-table
      (lambda _g68720_
        (let ((_g68719_ (let () (declare (not safe)) (##length _g68720_))))
          (cond ((let () (declare (not safe)) (##fx= _g68719_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g68720_))
                ((let () (declare (not safe)) (##fx= _g68719_ 1))
                 (apply (lambda (_size-hint68556_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _size-hint68556_)))
                        _g68720_))
                ((let () (declare (not safe)) (##fx= _g68719_ 2))
                 (apply (lambda (_size-hint68560_ _seed68561_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _size-hint68560_
                             _seed68561_)))
                        _g68720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g68720_))))))
    (define prototype-table-ref
      (lambda (_tab68501_ _key68502_ _default68503_)
        (let ((_table68505_
               (let () (declare (not safe)) (&raw-table-table _tab68501_)))
              (_seed68506_
               (let () (declare (not safe)) (&raw-table-seed _tab68501_))))
          (let* ((_h68508_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68502_))
                         _seed68506_))
                 (_size68511_ (vector-length _table68505_))
                 (_entries68514_ (fxquotient _size68511_ '2))
                 (_start68517_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68508_ _entries68514_)
                   '1)))
            (let _loop68521_ ((_probe68524_ _start68517_)
                              (_i68526_ '1)
                              (_deleted68528_ '#f))
              (let ((_k68531_ (vector-ref _table68505_ _probe68524_)))
                (if (let ((__tmp68727 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68531_ __tmp68727))
                    _default68503_
                    (if (let ((__tmp68726 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68531_ __tmp68726))
                        (let ((__tmp68725
                               (let ((_next-probe68534_
                                      (fx+ _start68517_
                                           _i68526_
                                           (fx* _i68526_ _i68526_))))
                                 (fxmodulo _next-probe68534_ _size68511_)))
                              (__tmp68724 (fx+ _i68526_ '1))
                              (__tmp68723
                               (let ((_$e68537_ _deleted68528_))
                                 (if _$e68537_ _$e68537_ _probe68524_))))
                          (declare (not safe))
                          (_loop68521_ __tmp68725 __tmp68724 __tmp68723))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68502_ _k68531_))
                            (vector-ref _table68505_ (fx+ _probe68524_ '1))
                            (let ((__tmp68722
                                   (let ((_next-probe68540_
                                          (fx+ _start68517_
                                               _i68526_
                                               (fx* _i68526_ _i68526_))))
                                     (fxmodulo _next-probe68540_ _size68511_)))
                                  (__tmp68721 (fx+ _i68526_ '1)))
                              (declare (not safe))
                              (_loop68521_
                               __tmp68722
                               __tmp68721
                               _deleted68528_)))))))))))
    (define prototype-table-set!
      (lambda (_tab68497_ _key68498_ _value68499_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68497_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68497_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68497_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set! _tab68497_ _key68498_ _value68499_))))
    (define __prototype-table-set!
      (lambda (_tab68452_ _key68453_ _value68454_)
        (let ((_table68457_
               (let () (declare (not safe)) (&raw-table-table _tab68452_)))
              (_seed68458_
               (let () (declare (not safe)) (&raw-table-seed _tab68452_))))
          (let* ((_h68460_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68453_))
                         _seed68458_))
                 (_size68463_ (vector-length _table68457_))
                 (_entries68466_ (fxquotient _size68463_ '2))
                 (_start68469_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68460_ _entries68466_)
                   '1)))
            (let _loop68473_ ((_probe68476_ _start68469_)
                              (_i68478_ '1)
                              (_deleted68480_ '#f))
              (let ((_k68483_ (vector-ref _table68457_ _probe68476_)))
                (if (let ((__tmp68737 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68483_ __tmp68737))
                    (if _deleted68480_
                        (begin
                          (vector-set! _table68457_ _deleted68480_ _key68453_)
                          (vector-set!
                           _table68457_
                           (fx+ _deleted68480_ '1)
                           _value68454_)
                          ((lambda ()
                             (let ((__tmp68736
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68452_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68452_
                                __tmp68736)))))
                        (begin
                          (vector-set! _table68457_ _probe68476_ _key68453_)
                          (vector-set!
                           _table68457_
                           (fx+ _probe68476_ '1)
                           _value68454_)
                          ((lambda ()
                             (let ((__tmp68734
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68452_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68452_ __tmp68734))
                             (let ((__tmp68735
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68452_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68452_
                                __tmp68735))))))
                    (if (let ((__tmp68733 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68483_ __tmp68733))
                        (let ((__tmp68732
                               (let ((_next-probe68488_
                                      (fx+ _start68469_
                                           _i68478_
                                           (fx* _i68478_ _i68478_))))
                                 (fxmodulo _next-probe68488_ _size68463_)))
                              (__tmp68731 (fx+ _i68478_ '1))
                              (__tmp68730
                               (let ((_$e68491_ _deleted68480_))
                                 (if _$e68491_ _$e68491_ _probe68476_))))
                          (declare (not safe))
                          (_loop68473_ __tmp68732 __tmp68731 __tmp68730))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68453_ _k68483_))
                            (begin
                              (vector-set!
                               _table68457_
                               _probe68476_
                               _key68453_)
                              (vector-set!
                               _table68457_
                               (fx+ _probe68476_ '1)
                               _value68454_))
                            (let ((__tmp68729
                                   (let ((_next-probe68494_
                                          (fx+ _start68469_
                                               _i68478_
                                               (fx* _i68478_ _i68478_))))
                                     (fxmodulo _next-probe68494_ _size68463_)))
                                  (__tmp68728 (fx+ _i68478_ '1)))
                              (declare (not safe))
                              (_loop68473_
                               __tmp68729
                               __tmp68728
                               _deleted68480_)))))))))))
    (define prototype-table-update!
      (lambda (_tab68447_
               _key68448_
               _prototype-table-update!68449_
               _default68450_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab68447_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab68447_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab68447_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _tab68447_
           _key68448_
           _prototype-table-update!68449_
           _default68450_))))
    (define __prototype-table-update!
      (lambda (_tab68401_
               _key68402_
               _prototype-table-update!68403_
               _default68404_)
        (let ((_table68407_
               (let () (declare (not safe)) (&raw-table-table _tab68401_)))
              (_seed68408_
               (let () (declare (not safe)) (&raw-table-seed _tab68401_))))
          (let* ((_h68410_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68402_))
                         _seed68408_))
                 (_size68413_ (vector-length _table68407_))
                 (_entries68416_ (fxquotient _size68413_ '2))
                 (_start68419_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68410_ _entries68416_)
                   '1)))
            (let _loop68423_ ((_probe68426_ _start68419_)
                              (_i68428_ '1)
                              (_deleted68430_ '#f))
              (let ((_k68433_ (vector-ref _table68407_ _probe68426_)))
                (if (let ((__tmp68747 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68433_ __tmp68747))
                    (if _deleted68430_
                        (begin
                          (vector-set! _table68407_ _deleted68430_ _key68402_)
                          (vector-set!
                           _table68407_
                           (fx+ _deleted68430_ '1)
                           (_prototype-table-update!68403_ _default68404_))
                          ((lambda ()
                             (let ((__tmp68746
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68401_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68401_
                                __tmp68746)))))
                        (begin
                          (vector-set! _table68407_ _probe68426_ _key68402_)
                          (vector-set!
                           _table68407_
                           (fx+ _probe68426_ '1)
                           (_prototype-table-update!68403_ _default68404_))
                          ((lambda ()
                             (let ((__tmp68744
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab68401_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab68401_ __tmp68744))
                             (let ((__tmp68745
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab68401_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab68401_
                                __tmp68745))))))
                    (if (let ((__tmp68743 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68433_ __tmp68743))
                        (let ((__tmp68742
                               (let ((_next-probe68438_
                                      (fx+ _start68419_
                                           _i68428_
                                           (fx* _i68428_ _i68428_))))
                                 (fxmodulo _next-probe68438_ _size68413_)))
                              (__tmp68741 (fx+ _i68428_ '1))
                              (__tmp68740
                               (let ((_$e68441_ _deleted68430_))
                                 (if _$e68441_ _$e68441_ _probe68426_))))
                          (declare (not safe))
                          (_loop68423_ __tmp68742 __tmp68741 __tmp68740))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68402_ _k68433_))
                            (begin
                              (vector-set!
                               _table68407_
                               _probe68426_
                               _key68402_)
                              (vector-set!
                               _table68407_
                               (fx+ _probe68426_ '1)
                               (_prototype-table-update!68403_
                                (vector-ref
                                 _table68407_
                                 (fx+ _probe68426_ '1)))))
                            (let ((__tmp68739
                                   (let ((_next-probe68444_
                                          (fx+ _start68419_
                                               _i68428_
                                               (fx* _i68428_ _i68428_))))
                                     (fxmodulo _next-probe68444_ _size68413_)))
                                  (__tmp68738 (fx+ _i68428_ '1)))
                              (declare (not safe))
                              (_loop68423_
                               __tmp68739
                               __tmp68738
                               _deleted68430_)))))))))))
    (define prototype-trable-delete!
      (lambda (_tab68360_ _key68362_)
        (let ((_table68365_
               (let () (declare (not safe)) (&raw-table-table _tab68360_)))
              (_seed68367_
               (let () (declare (not safe)) (&raw-table-seed _tab68360_))))
          (let* ((_h68370_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _key68362_))
                         _seed68367_))
                 (_size68373_ (vector-length _table68365_))
                 (_entries68376_ (fxquotient _size68373_ '2))
                 (_start68379_
                  (fxarithmetic-shift-left
                   (fxmodulo _h68370_ _entries68376_)
                   '1)))
            (let _loop68383_ ((_probe68386_ _start68379_) (_i68388_ '1))
              (let ((_k68391_ (vector-ref _table68365_ _probe68386_)))
                (if (let ((__tmp68754 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k68391_ __tmp68754))
                    '#!void
                    (if (let ((__tmp68753 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k68391_ __tmp68753))
                        (let ((__tmp68752
                               (let ((_next-probe68394_
                                      (fx+ _start68379_
                                           _i68388_
                                           (fx* _i68388_ _i68388_))))
                                 (fxmodulo _next-probe68394_ _size68373_)))
                              (__tmp68751 (fx+ _i68388_ '1)))
                          (declare (not safe))
                          (_loop68383_ __tmp68752 __tmp68751))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _key68362_ _k68391_))
                            (begin
                              (vector-set!
                               _table68365_
                               _probe68386_
                               (macro-deleted-obj))
                              (vector-set!
                               _table68365_
                               (fx+ _probe68386_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp68750
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab68360_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab68360_
                                    __tmp68750)))))
                            (let ((__tmp68749
                                   (let ((_next-probe68398_
                                          (fx+ _start68379_
                                               _i68388_
                                               (fx* _i68388_ _i68388_))))
                                     (fxmodulo _next-probe68398_ _size68373_)))
                                  (__tmp68748 (fx+ _i68388_ '1)))
                              (declare (not safe))
                              (_loop68383_ __tmp68749 __tmp68748)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define interface-subclass?
      (lambda (_klass68352_)
        (let ((_super6835368355_
               (let () (declare (not safe)) (##type-super _klass68352_))))
          (if _super6835368355_
              (let ((_super68358_ _super6835368355_))
                (let ((__tmp68756
                       (let () (declare (not safe)) (##type-id _super68358_)))
                      (__tmp68755
                       (let ()
                         (declare (not safe))
                         (##type-id interface-instance::t))))
                  (declare (not safe))
                  (eq? __tmp68756 __tmp68755)))
              '#f))))
    (define create-prototype
      (lambda (_descriptor68239_ _klass68240_ _obj-klass68241_)
        (let ((_method-table68243_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68241_))))
          (let _loop68246_ ((_rest68249_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68239_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count68251_ '0)
                            (_methods68253_ '()))
            (let* ((_rest6825568263_ _rest68249_)
                   (_else6825768325_
                    (lambda ()
                      (let ((_prototype68271_
                             (let ((__obj68702
                                    (let ((__tmp68757
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68251_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68240_
                                       __tmp68757))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68702 '#f))
                               __obj68702)))
                        (let _loop68274_ ((_rest68276_ _methods68253_)
                                          (_off68277_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68251_ '1))))
                          (let* ((_rest6827968287_ _rest68276_)
                                 (_else6828168306_
                                  (lambda ()
                                    (let ((_prototype-key68295_
                                           (let ((__tmp68759
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass68240_)))
                                                 (__tmp68758
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass68241_))))
                                             (declare (not safe))
                                             (cons __tmp68759 __tmp68758))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68300_ ()
                                          (if (let ((__tmp68760
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68760 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68300_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68295_
                                         _prototype68271_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68304_)
                                         _prototype68304_)
                                       _prototype68271_))))
                                 (_K6828368313_
                                  (lambda (_rest68309_ _method68310_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68271_
                                       _method68310_
                                       _off68277_
                                       _klass68240_
                                       '#f))
                                    (let ((__tmp68761
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68277_ '1))))
                                      (declare (not safe))
                                      (_loop68274_ _rest68309_ __tmp68761)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6827968287_))
                                (let ((_hd6828468316_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6827968287_)))
                                      (_tl6828568318_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6827968287_))))
                                  (let* ((_method68321_ _hd6828468316_)
                                         (_rest68323_ _tl6828568318_))
                                    (declare (not safe))
                                    (_K6828368313_ _rest68323_ _method68321_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6828168306_))))))))
                   (_K6825968340_
                    (lambda (_rest68328_ _method-name68329_)
                      (let ((_$e68332_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68243_
                                _method-name68329_
                                '#f))))
                        (if _$e68332_
                            ((lambda (_method68335_)
                               (let ((__tmp68763
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68251_ '1)))
                                     (__tmp68762
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68335_ _methods68253_))))
                                 (declare (not safe))
                                 (_loop68246_
                                  _rest68328_
                                  __tmp68763
                                  __tmp68762)))
                             _$e68332_)
                            ((lambda (_klass68337_ _method-name68338_)
                               (let ()
                                 (declare (not safe))
                                 (raise-cast-error
                                  'create-prototype
                                  '"cannot create interface instance; missing method"
                                  'class:
                                  _klass68337_
                                  'method:
                                  _method-name68338_)))
                             _klass68240_
                             _method-name68329_))))))
              (if (let () (declare (not safe)) (##pair? _rest6825568263_))
                  (let ((_hd6826068343_
                         (let ()
                           (declare (not safe))
                           (##car _rest6825568263_)))
                        (_tl6826168345_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6825568263_))))
                    (let* ((_method-name68348_ _hd6826068343_)
                           (_rest68350_ _tl6826168345_))
                      (declare (not safe))
                      (_K6825968340_ _rest68350_ _method-name68348_)))
                  (let () (declare (not safe)) (_else6825768325_))))))))
    (define try-create-prototype
      (lambda (_descriptor68126_ _klass68127_ _obj-klass68128_)
        (let ((_method-table68130_
               (let ()
                 (declare (not safe))
                 (specialize-class _obj-klass68128_))))
          (let _loop68133_ ((_rest68136_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _descriptor68126_
                                '2
                                interface-descriptor::t
                                '#f)))
                            (_count68138_ '0)
                            (_methods68140_ '()))
            (let* ((_rest6814268150_ _rest68136_)
                   (_else6814468212_
                    (lambda ()
                      (let ((_prototype68158_
                             (let ((__obj68703
                                    (let ((__tmp68764
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68138_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _klass68127_
                                       __tmp68764))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj68703 '#f))
                               __obj68703)))
                        (let _loop68161_ ((_rest68163_ _methods68140_)
                                          (_off68164_
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _count68138_ '1))))
                          (let* ((_rest6816668174_ _rest68163_)
                                 (_else6816868193_
                                  (lambda ()
                                    (let ((_prototype-key68182_
                                           (let ((__tmp68766
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id _klass68127_)))
                                                 (__tmp68765
                                                  (let ()
                                                    (declare (not safe))
                                                    (##type-id
                                                     _obj-klass68128_))))
                                             (declare (not safe))
                                             (cons __tmp68766 __tmp68765))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _again68187_ ()
                                          (if (let ((__tmp68767
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp68767 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_again68187_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _prototype-key68182_
                                         _prototype68158_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_prototype68191_)
                                         _prototype68191_)
                                       _prototype68158_))))
                                 (_K6817068200_
                                  (lambda (_rest68196_ _method68197_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _prototype68158_
                                       _method68197_
                                       _off68164_
                                       _klass68127_
                                       '#f))
                                    (let ((__tmp68768
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _off68164_ '1))))
                                      (declare (not safe))
                                      (_loop68161_ _rest68196_ __tmp68768)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest6816668174_))
                                (let ((_hd6817168203_
                                       (let ()
                                         (declare (not safe))
                                         (##car _rest6816668174_)))
                                      (_tl6817268205_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _rest6816668174_))))
                                  (let* ((_method68208_ _hd6817168203_)
                                         (_rest68210_ _tl6817268205_))
                                    (declare (not safe))
                                    (_K6817068200_ _rest68210_ _method68208_)))
                                (let ()
                                  (declare (not safe))
                                  (_else6816868193_))))))))
                   (_K6814668227_
                    (lambda (_rest68215_ _method-name68216_)
                      (let ((_$e68219_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _method-table68130_
                                _method-name68216_
                                '#f))))
                        (if _$e68219_
                            ((lambda (_method68222_)
                               (let ((__tmp68770
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _count68138_ '1)))
                                     (__tmp68769
                                      (let ()
                                        (declare (not safe))
                                        (cons _method68222_ _methods68140_))))
                                 (declare (not safe))
                                 (_loop68133_
                                  _rest68215_
                                  __tmp68770
                                  __tmp68769)))
                             _$e68219_)
                            ((lambda (_klass68224_ _method-name68225_) '#f)
                             _klass68127_
                             _method-name68216_))))))
              (if (let () (declare (not safe)) (##pair? _rest6814268150_))
                  (let ((_hd6814768230_
                         (let ()
                           (declare (not safe))
                           (##car _rest6814268150_)))
                        (_tl6814868232_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6814268150_))))
                    (let* ((_method-name68235_ _hd6814768230_)
                           (_rest68237_ _tl6814868232_))
                      (declare (not safe))
                      (_K6814668227_ _rest68237_ _method-name68235_)))
                  (let () (declare (not safe)) (_else6814468212_))))))))
    (define cast
      (lambda (_descriptor68085_ _obj68087_)
        (if (let () (declare (not safe)) (##structure? _obj68087_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass68092_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor68085_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id68095_
                      (let () (declare (not safe)) (##type-id _klass68092_)))
                     (_obj-klass68098_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj68087_)))
                     (_obj-klass-id68101_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass68098_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id68095_ _obj-klass-id68101_))
                    _obj68087_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass68098_))
                        (let ((__tmp68772
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj68087_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (cast _descriptor68085_ __tmp68772))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again68107_ ()
                              (if (let ((__tmp68771
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68771 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again68107_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id68095_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id68101_))
                          (let ((_prototype68117_
                                 (let ((_$e68111_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e68111_
                                       ((lambda (_prototype68114_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype68114_)
                                        _$e68111_)
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
                                            _descriptor68085_
                                            _klass68092_
                                            _obj-klass68098_)))))))
                            ((lambda (_prototype68119_ _obj68120_)
                               (let ((_instance68122_
                                      (let ()
                                        (declare (not safe))
                                        (##structure-copy _prototype68119_))))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _instance68122_
                                    _obj68120_
                                    '1
                                    '#f
                                    'cast))
                                 _instance68122_))
                             _prototype68117_
                             _obj68087_)))))))
            ((lambda (_obj68124_)
               (let ()
                 (declare (not safe))
                 (raise-cast-error
                  'cast
                  '"cannot cast non-object to interface instance"
                  _obj68124_)))
             _obj68087_))))
    (define try-cast
      (lambda (_descriptor68044_ _obj68046_)
        (if (let () (declare (not safe)) (##structure? _obj68046_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass68051_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor68044_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id68054_
                      (let () (declare (not safe)) (##type-id _klass68051_)))
                     (_obj-klass68057_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj68046_)))
                     (_obj-klass-id68060_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass68057_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id68054_ _obj-klass-id68060_))
                    _obj68046_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass68057_))
                        (let ((__tmp68774
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj68046_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (try-cast _descriptor68044_ __tmp68774))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again68066_ ()
                              (if (let ((__tmp68773
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68773 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again68066_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id68054_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id68060_))
                          (let ((_prototype68076_
                                 (let ((_$e68070_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e68070_
                                       ((lambda (_prototype68073_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype68073_)
                                        _$e68070_)
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
                                            _descriptor68044_
                                            _klass68051_
                                            _obj-klass68057_)))))))
                            ((lambda (_prototype68078_ _obj68079_)
                               (if _prototype68078_
                                   (let ((_instance68081_
                                          (let ()
                                            (declare (not safe))
                                            (##structure-copy
                                             _prototype68078_))))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-set!
                                        _instance68081_
                                        _obj68079_
                                        '1
                                        '#f
                                        'cast))
                                     _instance68081_)
                                   '#f))
                             _prototype68076_
                             _obj68046_)))))))
            ((lambda (_obj68083_) '#f) _obj68046_))))
    (define satisfies?
      (lambda (_descriptor68005_ _obj68007_)
        (if (let () (declare (not safe)) (##structure? _obj68007_))
            (let ()
              (declare (not interrupts-enabled))
              (let* ((_klass68012_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _descriptor68005_
                         '1
                         interface-descriptor::t
                         '#f)))
                     (_klass-id68015_
                      (let () (declare (not safe)) (##type-id _klass68012_)))
                     (_obj-klass68018_
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj68007_)))
                     (_obj-klass-id68021_
                      (let ()
                        (declare (not safe))
                        (##type-id _obj-klass68018_))))
                (if (let ()
                      (declare (not safe))
                      (##eq? _klass-id68015_ _obj-klass-id68021_))
                    _obj68007_
                    (if (let ()
                          (declare (not safe))
                          (interface-subclass? _obj-klass68018_))
                        (let ((__tmp68776
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _obj68007_
                                  '1
                                  interface-instance::t
                                  '#f))))
                          (declare (not safe))
                          (satisfies? _descriptor68005_ __tmp68776))
                        (begin
                          (let ()
                            (declare (not interrupts-enabled))
                            (let _again68027_ ()
                              (if (let ((__tmp68775
                                         (let ()
                                           (declare (not safe))
                                           (##vector-cas!
                                            __interface-prototypes-mx
                                            '0
                                            '1
                                            '0))))
                                    (declare (not safe))
                                    (##fx= __tmp68775 '0))
                                  '#!void
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (##thread-yield!))
                                    (let ()
                                      (declare (not safe))
                                      (_again68027_))))))
                          (let ()
                            (declare (not safe))
                            (##set-car!
                             __interface-prototypes-key
                             _klass-id68015_))
                          (let ()
                            (declare (not safe))
                            (##set-cdr!
                             __interface-prototypes-key
                             _obj-klass-id68021_))
                          (let ((_prototype68037_
                                 (let ((_$e68031_
                                        (let ()
                                          (declare (not safe))
                                          (prototype-table-ref
                                           __interface-prototypes
                                           __interface-prototypes-key
                                           '#f))))
                                   (if _$e68031_
                                       ((lambda (_prototype68034_)
                                          (let ()
                                            (declare (not safe))
                                            (##vector-cas!
                                             __interface-prototypes-mx
                                             '0
                                             '0
                                             '1))
                                          _prototype68034_)
                                        _$e68031_)
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
                                            _descriptor68005_
                                            _klass68012_
                                            _obj-klass68018_)))))))
                            ((lambda (_prototype68039_ _obj68040_)
                               (if _prototype68039_ '#t '#f))
                             _prototype68037_
                             _obj68007_)))))))
            ((lambda (_obj68042_) '#f) _obj68007_))))))
