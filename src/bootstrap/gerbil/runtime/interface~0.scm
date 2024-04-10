(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712773524)
  (begin
    (define CastError::t
      (let ((__tmp102007 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp102007
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args102000%_
        (apply make-instance CastError::t _%$args102000%_)))
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
      (lambda (_%where101874%_ _%message101875%_ . _%irritants101876%_)
        (let ((__tmp102008
               (let ((__obj102003
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj102003
                  _%message101875%_
                  'where:
                  _%where101874%_
                  'irritants:
                  _%irritants101876%_)
                 __obj102003)))
          (declare (not safe))
          (raise __tmp102008))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp102010 (list)) (__tmp102009 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp102010
         '(__object)
         __tmp102009
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
      (let ((__tmp102012 (list))
            (__tmp102011
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp102012
         '(type methods)
         __tmp102011
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101871%_
        (apply make-instance interface-descriptor::t _%$args101871%_)))
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
      (lambda (_%key101869%_)
        (let ((__tmp102014
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101869%_))))
              (__tmp102013
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101869%_)))))
          (declare (not safe))
          (##fxxor __tmp102014 __tmp102013))))
    (define __interface-test-key
      (lambda (_%a101866%_ _%b101867%_)
        (if (let ((__tmp102016
                   (let () (declare (not safe)) (##car _%a101866%_)))
                  (__tmp102015
                   (let () (declare (not safe)) (##car _%b101867%_))))
              (declare (not safe))
              (##eq? __tmp102016 __tmp102015))
            (let ((__tmp102018
                   (let () (declare (not safe)) (##cdr _%a101866%_)))
                  (__tmp102017
                   (let () (declare (not safe)) (##cdr _%b101867%_))))
              (declare (not safe))
              (##eq? __tmp102018 __tmp102017))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101847%_ _%seed101849%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101847%_
           __interface-hash-key
           __interface-test-key
           _%seed101849%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101855%_ '#f) (_%seed101857%_ '0))
          (make-prototype-table__% _%size-hint101855%_ _%seed101857%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101859%_)
        (let ((_%seed101861%_ '0))
          (make-prototype-table__% _%size-hint101859%_ _%seed101861%_))))
    (define make-prototype-table
      (lambda _g102020_
        (let ((_g102019_ (let () (declare (not safe)) (##length _g102020_))))
          (cond ((let () (declare (not safe)) (##fx= _g102019_ 0))
                 (apply make-prototype-table__0 _g102020_))
                ((let () (declare (not safe)) (##fx= _g102019_ 1))
                 (apply make-prototype-table__1 _g102020_))
                ((let () (declare (not safe)) (##fx= _g102019_ 2))
                 (apply make-prototype-table__% _g102020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g102020_))))))
    (define prototype-table-ref
      (lambda (_%tab101800%_ _%key101801%_ _%default101802%_)
        (let ((_%table101804%_
               (let () (declare (not safe)) (&raw-table-table _%tab101800%_)))
              (_%seed101805%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101800%_))))
          (let* ((_%h101807%_
                  (fxxor (__interface-hash-key _%key101801%_) _%seed101805%_))
                 (_%size101810%_ (vector-length _%table101804%_))
                 (_%entries101813%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101810%_ '2)))
                 (_%start101816%_
                  (let ((__tmp102021
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101807%_ _%entries101813%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102021 '1))))
            (let _%loop101820%_ ((_%probe101823%_ _%start101816%_)
                                 (_%i101825%_ '1)
                                 (_%deleted101827%_ '#f))
              (let ((_%k101830%_ (vector-ref _%table101804%_ _%probe101823%_)))
                (if (eq? _%k101830%_ (macro-unused-obj))
                    _%default101802%_
                    (if (eq? _%k101830%_ (macro-deleted-obj))
                        (_%loop101820%_
                         (let ((_%next-probe101835%_
                                (fx+ _%start101816%_
                                     _%i101825%_
                                     (fx* _%i101825%_ _%i101825%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101835%_ _%size101810%_))
                         (let () (declare (not safe)) (##fx+ _%i101825%_ '1))
                         (let ((_%$e101838%_ _%deleted101827%_))
                           (if _%$e101838%_ _%$e101838%_ _%probe101823%_)))
                        (if (__interface-test-key _%key101801%_ _%k101830%_)
                            (vector-ref
                             _%table101804%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101823%_ '1)))
                            (_%loop101820%_
                             (let ((_%next-probe101843%_
                                    (fx+ _%start101816%_
                                         _%i101825%_
                                         (fx* _%i101825%_ _%i101825%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101843%_
                                _%size101810%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101825%_ '1))
                             _%deleted101827%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab101796%_ _%key101797%_ _%value101798%_)
        (if (let ((__tmp102024
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101796%_)))
                  (__tmp102022
                   (let ((__tmp102023
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101796%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102023 '4))))
              (declare (not safe))
              (##fx< __tmp102024 __tmp102022))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101796%_))
            '#!void)
        (__prototype-table-set! _%tab101796%_ _%key101797%_ _%value101798%_)))
    (define __prototype-table-set!
      (lambda (_%tab101747%_ _%key101748%_ _%value101749%_)
        (let ((_%table101752%_
               (let () (declare (not safe)) (&raw-table-table _%tab101747%_)))
              (_%seed101753%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101747%_))))
          (let* ((_%h101755%_
                  (fxxor (__interface-hash-key _%key101748%_) _%seed101753%_))
                 (_%size101758%_ (vector-length _%table101752%_))
                 (_%entries101761%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101758%_ '2)))
                 (_%start101764%_
                  (let ((__tmp102025
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101755%_ _%entries101761%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102025 '1))))
            (let _%loop101768%_ ((_%probe101771%_ _%start101764%_)
                                 (_%i101773%_ '1)
                                 (_%deleted101775%_ '#f))
              (let ((_%k101778%_ (vector-ref _%table101752%_ _%probe101771%_)))
                (if (eq? _%k101778%_ (macro-unused-obj))
                    (if _%deleted101775%_
                        (begin
                          (vector-set!
                           _%table101752%_
                           _%deleted101775%_
                           _%key101748%_)
                          (vector-set!
                           _%table101752%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101775%_ '1))
                           _%value101749%_)
                          ((lambda ()
                             (let ((__tmp102026
                                    (let ((__tmp102027
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101747%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102027 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101747%_
                                __tmp102026)))))
                        (begin
                          (vector-set!
                           _%table101752%_
                           _%probe101771%_
                           _%key101748%_)
                          (vector-set!
                           _%table101752%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101771%_ '1))
                           _%value101749%_)
                          ((lambda ()
                             (let ((__tmp102028
                                    (let ((__tmp102029
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101747%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102029 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101747%_
                                __tmp102028))
                             (let ((__tmp102030
                                    (let ((__tmp102031
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101747%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102031 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101747%_
                                __tmp102030))))))
                    (if (eq? _%k101778%_ (macro-deleted-obj))
                        (_%loop101768%_
                         (let ((_%next-probe101785%_
                                (fx+ _%start101764%_
                                     _%i101773%_
                                     (fx* _%i101773%_ _%i101773%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101785%_ _%size101758%_))
                         (let () (declare (not safe)) (##fx+ _%i101773%_ '1))
                         (let ((_%$e101788%_ _%deleted101775%_))
                           (if _%$e101788%_ _%$e101788%_ _%probe101771%_)))
                        (if (__interface-test-key _%key101748%_ _%k101778%_)
                            (let ()
                              (vector-set!
                               _%table101752%_
                               _%probe101771%_
                               _%key101748%_)
                              (vector-set!
                               _%table101752%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101771%_ '1))
                               _%value101749%_))
                            (_%loop101768%_
                             (let ((_%next-probe101793%_
                                    (fx+ _%start101764%_
                                         _%i101773%_
                                         (fx* _%i101773%_ _%i101773%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101793%_
                                _%size101758%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101773%_ '1))
                             _%deleted101775%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab101742%_
               _%key101743%_
               _%prototype-table-update!101744%_
               _%default101745%_)
        (if (let ((__tmp102034
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101742%_)))
                  (__tmp102032
                   (let ((__tmp102033
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101742%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102033 '4))))
              (declare (not safe))
              (##fx< __tmp102034 __tmp102032))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101742%_))
            '#!void)
        (__prototype-table-update!
         _%tab101742%_
         _%key101743%_
         _%prototype-table-update!101744%_
         _%default101745%_)))
    (define __prototype-table-update!
      (lambda (_%tab101692%_
               _%key101693%_
               _%prototype-table-update!101694%_
               _%default101695%_)
        (let ((_%table101698%_
               (let () (declare (not safe)) (&raw-table-table _%tab101692%_)))
              (_%seed101699%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101692%_))))
          (let* ((_%h101701%_
                  (fxxor (__interface-hash-key _%key101693%_) _%seed101699%_))
                 (_%size101704%_ (vector-length _%table101698%_))
                 (_%entries101707%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101704%_ '2)))
                 (_%start101710%_
                  (let ((__tmp102035
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101701%_ _%entries101707%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102035 '1))))
            (let _%loop101714%_ ((_%probe101717%_ _%start101710%_)
                                 (_%i101719%_ '1)
                                 (_%deleted101721%_ '#f))
              (let ((_%k101724%_ (vector-ref _%table101698%_ _%probe101717%_)))
                (if (eq? _%k101724%_ (macro-unused-obj))
                    (if _%deleted101721%_
                        (begin
                          (vector-set!
                           _%table101698%_
                           _%deleted101721%_
                           _%key101693%_)
                          (vector-set!
                           _%table101698%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101721%_ '1))
                           (_%prototype-table-update!101694%_
                            _%default101695%_))
                          ((lambda ()
                             (let ((__tmp102036
                                    (let ((__tmp102037
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101692%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102037 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101692%_
                                __tmp102036)))))
                        (begin
                          (vector-set!
                           _%table101698%_
                           _%probe101717%_
                           _%key101693%_)
                          (vector-set!
                           _%table101698%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101717%_ '1))
                           (_%prototype-table-update!101694%_
                            _%default101695%_))
                          ((lambda ()
                             (let ((__tmp102038
                                    (let ((__tmp102039
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101692%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102039 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101692%_
                                __tmp102038))
                             (let ((__tmp102040
                                    (let ((__tmp102041
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101692%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102041 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101692%_
                                __tmp102040))))))
                    (if (eq? _%k101724%_ (macro-deleted-obj))
                        (_%loop101714%_
                         (let ((_%next-probe101731%_
                                (fx+ _%start101710%_
                                     _%i101719%_
                                     (fx* _%i101719%_ _%i101719%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101731%_ _%size101704%_))
                         (let () (declare (not safe)) (##fx+ _%i101719%_ '1))
                         (let ((_%$e101734%_ _%deleted101721%_))
                           (if _%$e101734%_ _%$e101734%_ _%probe101717%_)))
                        (if (__interface-test-key _%key101693%_ _%k101724%_)
                            (let ()
                              (vector-set!
                               _%table101698%_
                               _%probe101717%_
                               _%key101693%_)
                              (vector-set!
                               _%table101698%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101717%_ '1))
                               (_%prototype-table-update!101694%_
                                (vector-ref
                                 _%table101698%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101717%_ '1))))))
                            (_%loop101714%_
                             (let ((_%next-probe101739%_
                                    (fx+ _%start101710%_
                                         _%i101719%_
                                         (fx* _%i101719%_ _%i101719%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101739%_
                                _%size101704%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101719%_ '1))
                             _%deleted101721%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab101647%_ _%key101649%_)
        (let ((_%table101652%_
               (let () (declare (not safe)) (&raw-table-table _%tab101647%_)))
              (_%seed101654%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101647%_))))
          (let* ((_%h101657%_
                  (fxxor (__interface-hash-key _%key101649%_) _%seed101654%_))
                 (_%size101660%_ (vector-length _%table101652%_))
                 (_%entries101663%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101660%_ '2)))
                 (_%start101666%_
                  (let ((__tmp102042
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101657%_ _%entries101663%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102042 '1))))
            (let _%loop101670%_ ((_%probe101673%_ _%start101666%_)
                                 (_%i101675%_ '1))
              (let ((_%k101678%_ (vector-ref _%table101652%_ _%probe101673%_)))
                (if (eq? _%k101678%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101678%_ (macro-deleted-obj))
                        (_%loop101670%_
                         (let ((_%next-probe101683%_
                                (fx+ _%start101666%_
                                     _%i101675%_
                                     (fx* _%i101675%_ _%i101675%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101683%_ _%size101660%_))
                         (let () (declare (not safe)) (##fx+ _%i101675%_ '1)))
                        (if (__interface-test-key _%key101649%_ _%k101678%_)
                            (let ()
                              (vector-set!
                               _%table101652%_
                               _%probe101673%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101652%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101673%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102043
                                        (let ((__tmp102044
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101647%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102044 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101647%_
                                    __tmp102043)))))
                            (_%loop101670%_
                             (let ((_%next-probe101689%_
                                    (fx+ _%start101666%_
                                         _%i101675%_
                                         (fx* _%i101675%_ _%i101675%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101689%_
                                _%size101660%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101675%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101639%_)
        (let ((_%super101640101642%_
               (let () (declare (not safe)) (##type-super _%klass101639%_))))
          (if _%super101640101642%_
              (let ((_%super101645%_ _%super101640101642%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101645%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101524%_ _%klass101525%_ _%obj-klass101526%_)
        (let ((_%method-table101528%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101526%_))))
          (let _%loop101531%_ ((_%rest101534%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101524%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101536%_ '0)
                               (_%methods101538%_ '()))
            (let* ((_%rest101540101548%_ _%rest101534%_)
                   (_%else101542101610%_
                    (lambda ()
                      (let ((_%prototype101556%_
                             (let ((__obj102005
                                    (let ((__tmp102045
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101536%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101525%_
                                       __tmp102045))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj102005 '#f))
                               __obj102005)))
                        (let _%loop101559%_ ((_%rest101561%_ _%methods101538%_)
                                             (_%off101562%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101536%_ '1))))
                          (let* ((_%rest101564101572%_ _%rest101561%_)
                                 (_%else101566101591%_
                                  (lambda ()
                                    (let ((_%prototype-key101580%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101525%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101526%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101585%_ ()
                                          (if (let ((__tmp102046
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102046 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again101585%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key101580%_
                                       _%prototype101556%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101589%_)
                                         _%prototype101589%_)
                                       _%prototype101556%_))))
                                 (_%K101568101598%_
                                  (lambda (_%rest101594%_ _%method101595%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101556%_
                                       _%method101595%_
                                       _%off101562%_
                                       _%klass101525%_
                                       '#f))
                                    (_%loop101559%_
                                     _%rest101594%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101562%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101564101572%_))
                                (let ((_%hd101569101601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101564101572%_)))
                                      (_%tl101570101603%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101564101572%_))))
                                  (let* ((_%method101606%_ _%hd101569101601%_)
                                         (_%rest101608%_ _%tl101570101603%_))
                                    (_%K101568101598%_
                                     _%rest101608%_
                                     _%method101606%_)))
                                (_%else101566101591%_)))))))
                   (_%K101544101627%_
                    (lambda (_%rest101613%_ _%method-name101614%_)
                      (let ((_%$e101617%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101528%_
                                _%method-name101614%_
                                '#f))))
                        (if _%$e101617%_
                            ((lambda (_%method101620%_)
                               (_%loop101531%_
                                _%rest101613%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101536%_ '1))
                                (cons _%method101620%_ _%methods101538%_)))
                             _%$e101617%_)
                            ((lambda (_%klass101623%_
                                      _%obj-klass101624%_
                                      _%method-name101625%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass101623%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass101623%_))
                                'class:
                                _%obj-klass101624%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass101624%_))
                                'method:
                                _%method-name101625%_)
                               '#!void)
                             _%klass101525%_
                             _%obj-klass101526%_
                             _%method-name101614%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101540101548%_))
                  (let ((_%hd101545101630%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101540101548%_)))
                        (_%tl101546101632%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101540101548%_))))
                    (let* ((_%method-name101635%_ _%hd101545101630%_)
                           (_%rest101637%_ _%tl101546101632%_))
                      (_%K101544101627%_
                       _%rest101637%_
                       _%method-name101635%_)))
                  (_%else101542101610%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor101409%_ _%klass101410%_ _%obj-klass101411%_)
        (let ((_%method-table101413%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101411%_))))
          (let _%loop101416%_ ((_%rest101419%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101409%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101421%_ '0)
                               (_%methods101423%_ '()))
            (let* ((_%rest101425101433%_ _%rest101419%_)
                   (_%else101427101495%_
                    (lambda ()
                      (let ((_%prototype101441%_
                             (let ((__obj102006
                                    (let ((__tmp102047
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101421%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101410%_
                                       __tmp102047))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj102006 '#f))
                               __obj102006)))
                        (let _%loop101444%_ ((_%rest101446%_ _%methods101423%_)
                                             (_%off101447%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101421%_ '1))))
                          (let* ((_%rest101449101457%_ _%rest101446%_)
                                 (_%else101451101476%_
                                  (lambda ()
                                    (let ((_%prototype-key101465%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101410%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101411%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101470%_ ()
                                          (if (let ((__tmp102048
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102048 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again101470%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key101465%_
                                       _%prototype101441%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101474%_)
                                         _%prototype101474%_)
                                       _%prototype101441%_))))
                                 (_%K101453101483%_
                                  (lambda (_%rest101479%_ _%method101480%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101441%_
                                       _%method101480%_
                                       _%off101447%_
                                       _%klass101410%_
                                       '#f))
                                    (_%loop101444%_
                                     _%rest101479%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off101447%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101449101457%_))
                                (let ((_%hd101454101486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101449101457%_)))
                                      (_%tl101455101488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101449101457%_))))
                                  (let* ((_%method101491%_ _%hd101454101486%_)
                                         (_%rest101493%_ _%tl101455101488%_))
                                    (_%K101453101483%_
                                     _%rest101493%_
                                     _%method101491%_)))
                                (_%else101451101476%_)))))))
                   (_%K101429101512%_
                    (lambda (_%rest101498%_ _%method-name101499%_)
                      (let ((_%$e101502%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101413%_
                                _%method-name101499%_
                                '#f))))
                        (if _%$e101502%_
                            ((lambda (_%method101505%_)
                               (_%loop101416%_
                                _%rest101498%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count101421%_ '1))
                                (cons _%method101505%_ _%methods101423%_)))
                             _%$e101502%_)
                            ((lambda (_%klass101508%_
                                      _%obj-klass101509%_
                                      _%method-name101510%_)
                               '#f)
                             _%klass101410%_
                             _%obj-klass101411%_
                             _%method-name101499%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest101425101433%_))
                  (let ((_%hd101430101515%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101425101433%_)))
                        (_%tl101431101517%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101425101433%_))))
                    (let* ((_%method-name101520%_ _%hd101430101515%_)
                           (_%rest101522%_ _%tl101431101517%_))
                      (_%K101429101512%_
                       _%rest101522%_
                       _%method-name101520%_)))
                  (_%else101427101495%_)))))))
    (define cast
      (lambda (_%descriptor101367%_ _%obj101369%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101373%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101367%_ '1 '#f '#f)))
               (_%klass-id101376%_
                (let () (declare (not safe)) (##type-id _%klass101373%_)))
               (_%obj-klass101379%_
                (let () (declare (not safe)) (class-of _%obj101369%_)))
               (_%obj-klass-id101382%_
                (let () (declare (not safe)) (##type-id _%obj-klass101379%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101376%_ _%obj-klass-id101382%_))
              _%obj101369%_
              (if (interface-subclass? _%obj-klass101379%_)
                  (cast _%descriptor101367%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj101369%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101391%_ ()
                        (if (let ((__tmp102049
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102049 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101391%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101376%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101382%_))
                    (let ((_%prototype101402%_
                           (let ((_%$e101395%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101395%_
                                 ((lambda (_%prototype101398%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101398%_)
                                  _%$e101395%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor101367%_
                                    _%klass101373%_
                                    _%obj-klass101379%_))))))
                      ((lambda (_%prototype101404%_ _%obj101405%_)
                         (let ((_%instance101407%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101404%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101407%_
                              _%obj101405%_
                              '1
                              '#f
                              'cast))
                           _%instance101407%_))
                       _%prototype101402%_
                       _%obj101369%_))))))))
    (define try-cast
      (lambda (_%descriptor101325%_ _%obj101327%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101331%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101325%_ '1 '#f '#f)))
               (_%klass-id101334%_
                (let () (declare (not safe)) (##type-id _%klass101331%_)))
               (_%obj-klass101337%_
                (let () (declare (not safe)) (class-of _%obj101327%_)))
               (_%obj-klass-id101340%_
                (let () (declare (not safe)) (##type-id _%obj-klass101337%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101334%_ _%obj-klass-id101340%_))
              _%obj101327%_
              (if (interface-subclass? _%obj-klass101337%_)
                  (try-cast
                   _%descriptor101325%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101327%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101349%_ ()
                        (if (let ((__tmp102050
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102050 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101349%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101334%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101340%_))
                    (let ((_%prototype101360%_
                           (let ((_%$e101353%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101353%_
                                 ((lambda (_%prototype101356%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101356%_)
                                  _%$e101353%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101325%_
                                    _%klass101331%_
                                    _%obj-klass101337%_))))))
                      ((lambda (_%prototype101362%_ _%obj101363%_)
                         (if _%prototype101362%_
                             (let ((_%instance101365%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101362%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101365%_
                                  _%obj101363%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101365%_)
                             '#f))
                       _%prototype101360%_
                       _%obj101327%_))))))))
    (define satisfies?
      (lambda (_%descriptor101285%_ _%obj101287%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101291%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101285%_ '1 '#f '#f)))
               (_%klass-id101294%_
                (let () (declare (not safe)) (##type-id _%klass101291%_)))
               (_%obj-klass101297%_
                (let () (declare (not safe)) (class-of _%obj101287%_)))
               (_%obj-klass-id101300%_
                (let () (declare (not safe)) (##type-id _%obj-klass101297%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101294%_ _%obj-klass-id101300%_))
              _%obj101287%_
              (if (interface-subclass? _%obj-klass101297%_)
                  (satisfies?
                   _%descriptor101285%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj101287%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101309%_ ()
                        (if (let ((__tmp102051
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102051 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again101309%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101294%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101300%_))
                    (let ((_%prototype101320%_
                           (let ((_%$e101313%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e101313%_
                                 ((lambda (_%prototype101316%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101316%_)
                                  _%$e101313%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor101285%_
                                    _%klass101291%_
                                    _%obj-klass101297%_))))))
                      ((lambda (_%prototype101322%_ _%obj101323%_)
                         (if _%prototype101322%_ '#t '#f))
                       _%prototype101320%_
                       _%obj101287%_))))))))))
