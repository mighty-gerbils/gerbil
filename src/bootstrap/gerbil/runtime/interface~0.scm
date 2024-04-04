(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712269044)
  (begin
    (define CastError::t
      (let ((__tmp101870 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101870
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101863%_
        (apply make-instance CastError::t _%$args101863%_)))
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
      (lambda (_%where101737%_ _%message101738%_ . _%irritants101739%_)
        (let ((__tmp101871
               (let ((__obj101866
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101866
                  _%message101738%_
                  'where:
                  _%where101737%_
                  'irritants:
                  _%irritants101739%_)
                 __obj101866)))
          (declare (not safe))
          (raise __tmp101871))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101873 (list)) (__tmp101872 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101873
         '(__object)
         __tmp101872
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
      (let ((__tmp101875 (list))
            (__tmp101874
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101875
         '(type methods)
         __tmp101874
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101734%_
        (apply make-instance interface-descriptor::t _%$args101734%_)))
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
      (lambda (_%key101732%_)
        (let ((__tmp101877
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101732%_))))
              (__tmp101876
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101732%_)))))
          (declare (not safe))
          (##fxxor __tmp101877 __tmp101876))))
    (define __interface-test-key
      (lambda (_%a101729%_ _%b101730%_)
        (if (let ((__tmp101879
                   (let () (declare (not safe)) (##car _%a101729%_)))
                  (__tmp101878
                   (let () (declare (not safe)) (##car _%b101730%_))))
              (declare (not safe))
              (##eq? __tmp101879 __tmp101878))
            (let ((__tmp101881
                   (let () (declare (not safe)) (##cdr _%a101729%_)))
                  (__tmp101880
                   (let () (declare (not safe)) (##cdr _%b101730%_))))
              (declare (not safe))
              (##eq? __tmp101881 __tmp101880))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101710%_ _%seed101712%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101710%_
           __interface-hash-key
           __interface-test-key
           _%seed101712%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101718%_ '#f) (_%seed101720%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101718%_ _%seed101720%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101722%_)
        (let ((_%seed101724%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101722%_ _%seed101724%_))))
    (define make-prototype-table
      (lambda _g101883_
        (let ((_g101882_ (let () (declare (not safe)) (##length _g101883_))))
          (cond ((let () (declare (not safe)) (##fx= _g101882_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101883_))
                ((let () (declare (not safe)) (##fx= _g101882_ 1))
                 (apply (lambda (_%size-hint101722%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101722%_)))
                        _g101883_))
                ((let () (declare (not safe)) (##fx= _g101882_ 2))
                 (apply (lambda (_%size-hint101726%_ _%seed101727%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101726%_
                             _%seed101727%_)))
                        _g101883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101883_))))))
    (define prototype-table-ref
      (lambda (_%tab101663%_ _%key101664%_ _%default101665%_)
        (let ((_%table101667%_
               (let () (declare (not safe)) (&raw-table-table _%tab101663%_)))
              (_%seed101668%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101663%_))))
          (let* ((_%h101670%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101664%_))
                         _%seed101668%_))
                 (_%size101673%_ (vector-length _%table101667%_))
                 (_%entries101676%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101673%_ '2)))
                 (_%start101679%_
                  (let ((__tmp101884
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101670%_ _%entries101676%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101884 '1))))
            (let _%loop101683%_ ((_%probe101686%_ _%start101679%_)
                                 (_%i101688%_ '1)
                                 (_%deleted101690%_ '#f))
              (let ((_%k101693%_ (vector-ref _%table101667%_ _%probe101686%_)))
                (if (eq? _%k101693%_ (macro-unused-obj))
                    (let () _%default101665%_)
                    (if (eq? _%k101693%_ (macro-deleted-obj))
                        (let ((__tmp101887
                               (let ((_%next-probe101698%_
                                      (fx+ _%start101679%_
                                           _%i101688%_
                                           (fx* _%i101688%_ _%i101688%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101698%_
                                  _%size101673%_)))
                              (__tmp101886
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101688%_ '1)))
                              (__tmp101885
                               (let ((_%$e101701%_ _%deleted101690%_))
                                 (if _%$e101701%_
                                     _%$e101701%_
                                     _%probe101686%_))))
                          (declare (not safe))
                          (_%loop101683%_ __tmp101887 __tmp101886 __tmp101885))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101664%_ _%k101693%_))
                            (let ()
                              (vector-ref
                               _%table101667%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101686%_ '1))))
                            (let ((__tmp101889
                                   (let ((_%next-probe101706%_
                                          (fx+ _%start101679%_
                                               _%i101688%_
                                               (fx* _%i101688%_ _%i101688%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101706%_
                                      _%size101673%_)))
                                  (__tmp101888
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101688%_ '1))))
                              (declare (not safe))
                              (_%loop101683%_
                               __tmp101889
                               __tmp101888
                               _%deleted101690%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101659%_ _%key101660%_ _%value101661%_)
        (if (let ((__tmp101892
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101659%_)))
                  (__tmp101890
                   (let ((__tmp101891
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101659%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101891 '4))))
              (declare (not safe))
              (##fx< __tmp101892 __tmp101890))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101659%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101659%_
           _%key101660%_
           _%value101661%_))))
    (define __prototype-table-set!
      (lambda (_%tab101610%_ _%key101611%_ _%value101612%_)
        (let ((_%table101615%_
               (let () (declare (not safe)) (&raw-table-table _%tab101610%_)))
              (_%seed101616%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101610%_))))
          (let* ((_%h101618%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101611%_))
                         _%seed101616%_))
                 (_%size101621%_ (vector-length _%table101615%_))
                 (_%entries101624%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101621%_ '2)))
                 (_%start101627%_
                  (let ((__tmp101893
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101618%_ _%entries101624%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101893 '1))))
            (let _%loop101631%_ ((_%probe101634%_ _%start101627%_)
                                 (_%i101636%_ '1)
                                 (_%deleted101638%_ '#f))
              (let ((_%k101641%_ (vector-ref _%table101615%_ _%probe101634%_)))
                (if (eq? _%k101641%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101638%_
                          (begin
                            (vector-set!
                             _%table101615%_
                             _%deleted101638%_
                             _%key101611%_)
                            (vector-set!
                             _%table101615%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101638%_ '1))
                             _%value101612%_)
                            ((lambda ()
                               (let ((__tmp101894
                                      (let ((__tmp101895
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101610%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101895 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101610%_
                                  __tmp101894)))))
                          (begin
                            (vector-set!
                             _%table101615%_
                             _%probe101634%_
                             _%key101611%_)
                            (vector-set!
                             _%table101615%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101634%_ '1))
                             _%value101612%_)
                            ((lambda ()
                               (let ((__tmp101896
                                      (let ((__tmp101897
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101610%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101897 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101610%_
                                  __tmp101896))
                               (let ((__tmp101898
                                      (let ((__tmp101899
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101610%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101899 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101610%_
                                  __tmp101898)))))))
                    (if (eq? _%k101641%_ (macro-deleted-obj))
                        (let ((__tmp101902
                               (let ((_%next-probe101648%_
                                      (fx+ _%start101627%_
                                           _%i101636%_
                                           (fx* _%i101636%_ _%i101636%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101648%_
                                  _%size101621%_)))
                              (__tmp101901
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101636%_ '1)))
                              (__tmp101900
                               (let ((_%$e101651%_ _%deleted101638%_))
                                 (if _%$e101651%_
                                     _%$e101651%_
                                     _%probe101634%_))))
                          (declare (not safe))
                          (_%loop101631%_ __tmp101902 __tmp101901 __tmp101900))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101611%_ _%k101641%_))
                            (let ()
                              (vector-set!
                               _%table101615%_
                               _%probe101634%_
                               _%key101611%_)
                              (vector-set!
                               _%table101615%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101634%_ '1))
                               _%value101612%_))
                            (let ((__tmp101904
                                   (let ((_%next-probe101656%_
                                          (fx+ _%start101627%_
                                               _%i101636%_
                                               (fx* _%i101636%_ _%i101636%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101656%_
                                      _%size101621%_)))
                                  (__tmp101903
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101636%_ '1))))
                              (declare (not safe))
                              (_%loop101631%_
                               __tmp101904
                               __tmp101903
                               _%deleted101638%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101605%_
               _%key101606%_
               _%prototype-table-update!101607%_
               _%default101608%_)
        (if (let ((__tmp101907
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101605%_)))
                  (__tmp101905
                   (let ((__tmp101906
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101605%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101906 '4))))
              (declare (not safe))
              (##fx< __tmp101907 __tmp101905))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101605%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101605%_
           _%key101606%_
           _%prototype-table-update!101607%_
           _%default101608%_))))
    (define __prototype-table-update!
      (lambda (_%tab101555%_
               _%key101556%_
               _%prototype-table-update!101557%_
               _%default101558%_)
        (let ((_%table101561%_
               (let () (declare (not safe)) (&raw-table-table _%tab101555%_)))
              (_%seed101562%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101555%_))))
          (let* ((_%h101564%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101556%_))
                         _%seed101562%_))
                 (_%size101567%_ (vector-length _%table101561%_))
                 (_%entries101570%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101567%_ '2)))
                 (_%start101573%_
                  (let ((__tmp101908
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101564%_ _%entries101570%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101908 '1))))
            (let _%loop101577%_ ((_%probe101580%_ _%start101573%_)
                                 (_%i101582%_ '1)
                                 (_%deleted101584%_ '#f))
              (let ((_%k101587%_ (vector-ref _%table101561%_ _%probe101580%_)))
                (if (eq? _%k101587%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101584%_
                          (begin
                            (vector-set!
                             _%table101561%_
                             _%deleted101584%_
                             _%key101556%_)
                            (vector-set!
                             _%table101561%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101584%_ '1))
                             (_%prototype-table-update!101557%_
                              _%default101558%_))
                            ((lambda ()
                               (let ((__tmp101909
                                      (let ((__tmp101910
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101555%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101910 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101555%_
                                  __tmp101909)))))
                          (begin
                            (vector-set!
                             _%table101561%_
                             _%probe101580%_
                             _%key101556%_)
                            (vector-set!
                             _%table101561%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101580%_ '1))
                             (_%prototype-table-update!101557%_
                              _%default101558%_))
                            ((lambda ()
                               (let ((__tmp101911
                                      (let ((__tmp101912
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101555%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101912 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101555%_
                                  __tmp101911))
                               (let ((__tmp101913
                                      (let ((__tmp101914
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101555%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101914 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101555%_
                                  __tmp101913)))))))
                    (if (eq? _%k101587%_ (macro-deleted-obj))
                        (let ((__tmp101917
                               (let ((_%next-probe101594%_
                                      (fx+ _%start101573%_
                                           _%i101582%_
                                           (fx* _%i101582%_ _%i101582%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101594%_
                                  _%size101567%_)))
                              (__tmp101916
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101582%_ '1)))
                              (__tmp101915
                               (let ((_%$e101597%_ _%deleted101584%_))
                                 (if _%$e101597%_
                                     _%$e101597%_
                                     _%probe101580%_))))
                          (declare (not safe))
                          (_%loop101577%_ __tmp101917 __tmp101916 __tmp101915))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101556%_ _%k101587%_))
                            (let ()
                              (vector-set!
                               _%table101561%_
                               _%probe101580%_
                               _%key101556%_)
                              (vector-set!
                               _%table101561%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101580%_ '1))
                               (_%prototype-table-update!101557%_
                                (vector-ref
                                 _%table101561%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101580%_ '1))))))
                            (let ((__tmp101919
                                   (let ((_%next-probe101602%_
                                          (fx+ _%start101573%_
                                               _%i101582%_
                                               (fx* _%i101582%_ _%i101582%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101602%_
                                      _%size101567%_)))
                                  (__tmp101918
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101582%_ '1))))
                              (declare (not safe))
                              (_%loop101577%_
                               __tmp101919
                               __tmp101918
                               _%deleted101584%_)))))))))))
    (define prototype-table-delete!
      (lambda (_%tab101510%_ _%key101512%_)
        (let ((_%table101515%_
               (let () (declare (not safe)) (&raw-table-table _%tab101510%_)))
              (_%seed101517%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101510%_))))
          (let* ((_%h101520%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101512%_))
                         _%seed101517%_))
                 (_%size101523%_ (vector-length _%table101515%_))
                 (_%entries101526%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101523%_ '2)))
                 (_%start101529%_
                  (let ((__tmp101920
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101520%_ _%entries101526%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101920 '1))))
            (let _%loop101533%_ ((_%probe101536%_ _%start101529%_)
                                 (_%i101538%_ '1))
              (let ((_%k101541%_ (vector-ref _%table101515%_ _%probe101536%_)))
                (if (eq? _%k101541%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101541%_ (macro-deleted-obj))
                        (let ((__tmp101922
                               (let ((_%next-probe101546%_
                                      (fx+ _%start101529%_
                                           _%i101538%_
                                           (fx* _%i101538%_ _%i101538%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101546%_
                                  _%size101523%_)))
                              (__tmp101921
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101538%_ '1))))
                          (declare (not safe))
                          (_%loop101533%_ __tmp101922 __tmp101921))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101512%_ _%k101541%_))
                            (let ()
                              (vector-set!
                               _%table101515%_
                               _%probe101536%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101515%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101536%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101923
                                        (let ((__tmp101924
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101510%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101924 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101510%_
                                    __tmp101923)))))
                            (let ((__tmp101926
                                   (let ((_%next-probe101552%_
                                          (fx+ _%start101529%_
                                               _%i101538%_
                                               (fx* _%i101538%_ _%i101538%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101552%_
                                      _%size101523%_)))
                                  (__tmp101925
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101538%_ '1))))
                              (declare (not safe))
                              (_%loop101533%_
                               __tmp101926
                               __tmp101925)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101502%_)
        (let ((_%super101503101505%_
               (let () (declare (not safe)) (##type-super _%klass101502%_))))
          (if _%super101503101505%_
              (let ((_%super101508%_ _%super101503101505%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101508%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101387%_ _%klass101388%_ _%obj-klass101389%_)
        (let ((_%method-table101391%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101389%_))))
          (let _%loop101394%_ ((_%rest101397%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101387%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101399%_ '0)
                               (_%methods101401%_ '()))
            (let* ((_%rest101403101411%_ _%rest101397%_)
                   (_%else101405101473%_
                    (lambda ()
                      (let ((_%prototype101419%_
                             (let ((__obj101868
                                    (let ((__tmp101927
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101399%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101388%_
                                       __tmp101927))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101868 '#f))
                               __obj101868)))
                        (let _%loop101422%_ ((_%rest101424%_ _%methods101401%_)
                                             (_%off101425%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101399%_ '1))))
                          (let* ((_%rest101427101435%_ _%rest101424%_)
                                 (_%else101429101454%_
                                  (lambda ()
                                    (let ((_%prototype-key101443%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101388%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101389%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101448%_ ()
                                          (if (let ((__tmp101928
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101928 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101448%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101443%_
                                         _%prototype101419%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101452%_)
                                         _%prototype101452%_)
                                       _%prototype101419%_))))
                                 (_%K101431101461%_
                                  (lambda (_%rest101457%_ _%method101458%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101419%_
                                       _%method101458%_
                                       _%off101425%_
                                       _%klass101388%_
                                       '#f))
                                    (let ((__tmp101929
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101425%_ '1))))
                                      (declare (not safe))
                                      (_%loop101422%_
                                       _%rest101457%_
                                       __tmp101929)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101427101435%_))
                                (let ((_%hd101432101464%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101427101435%_)))
                                      (_%tl101433101466%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101427101435%_))))
                                  (let* ((_%method101469%_ _%hd101432101464%_)
                                         (_%rest101471%_ _%tl101433101466%_))
                                    (declare (not safe))
                                    (_%K101431101461%_
                                     _%rest101471%_
                                     _%method101469%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101429101454%_))))))))
                   (_%K101407101490%_
                    (lambda (_%rest101476%_ _%method-name101477%_)
                      (let ((_%$e101480%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101391%_
                                _%method-name101477%_
                                '#f))))
                        (if _%$e101480%_
                            ((lambda (_%method101483%_)
                               (let ((__tmp101931
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101399%_ '1)))
                                     (__tmp101930
                                      (cons _%method101483%_
                                            _%methods101401%_)))
                                 (declare (not safe))
                                 (_%loop101394%_
                                  _%rest101476%_
                                  __tmp101931
                                  __tmp101930)))
                             _%$e101480%_)
                            (let ()
                              ((lambda (_%klass101486%_
                                        _%obj-klass101487%_
                                        _%method-name101488%_)
                                 (let ((__tmp101933
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass101486%_)))
                                       (__tmp101932
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass101487%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass101486%_
                                    'interface-id:
                                    __tmp101933
                                    'class:
                                    _%obj-klass101487%_
                                    'class-id:
                                    __tmp101932
                                    'method:
                                    _%method-name101488%_))
                                 '#!void)
                               _%klass101388%_
                               _%obj-klass101389%_
                               _%method-name101477%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101403101411%_))
                  (let ((_%hd101408101493%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101403101411%_)))
                        (_%tl101409101495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101403101411%_))))
                    (let* ((_%method-name101498%_ _%hd101408101493%_)
                           (_%rest101500%_ _%tl101409101495%_))
                      (declare (not safe))
                      (_%K101407101490%_
                       _%rest101500%_
                       _%method-name101498%_)))
                  (let () (declare (not safe)) (_%else101405101473%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor101272%_ _%klass101273%_ _%obj-klass101274%_)
        (let ((_%method-table101276%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101274%_))))
          (let _%loop101279%_ ((_%rest101282%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101272%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101284%_ '0)
                               (_%methods101286%_ '()))
            (let* ((_%rest101288101296%_ _%rest101282%_)
                   (_%else101290101358%_
                    (lambda ()
                      (let ((_%prototype101304%_
                             (let ((__obj101869
                                    (let ((__tmp101934
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101284%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101273%_
                                       __tmp101934))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101869 '#f))
                               __obj101869)))
                        (let _%loop101307%_ ((_%rest101309%_ _%methods101286%_)
                                             (_%off101310%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101284%_ '1))))
                          (let* ((_%rest101312101320%_ _%rest101309%_)
                                 (_%else101314101339%_
                                  (lambda ()
                                    (let ((_%prototype-key101328%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101273%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101274%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101333%_ ()
                                          (if (let ((__tmp101935
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101935 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101333%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101328%_
                                         _%prototype101304%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101337%_)
                                         _%prototype101337%_)
                                       _%prototype101304%_))))
                                 (_%K101316101346%_
                                  (lambda (_%rest101342%_ _%method101343%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101304%_
                                       _%method101343%_
                                       _%off101310%_
                                       _%klass101273%_
                                       '#f))
                                    (let ((__tmp101936
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101310%_ '1))))
                                      (declare (not safe))
                                      (_%loop101307%_
                                       _%rest101342%_
                                       __tmp101936)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101312101320%_))
                                (let ((_%hd101317101349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101312101320%_)))
                                      (_%tl101318101351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101312101320%_))))
                                  (let* ((_%method101354%_ _%hd101317101349%_)
                                         (_%rest101356%_ _%tl101318101351%_))
                                    (declare (not safe))
                                    (_%K101316101346%_
                                     _%rest101356%_
                                     _%method101354%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101314101339%_))))))))
                   (_%K101292101375%_
                    (lambda (_%rest101361%_ _%method-name101362%_)
                      (let ((_%$e101365%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101276%_
                                _%method-name101362%_
                                '#f))))
                        (if _%$e101365%_
                            ((lambda (_%method101368%_)
                               (let ((__tmp101938
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101284%_ '1)))
                                     (__tmp101937
                                      (cons _%method101368%_
                                            _%methods101286%_)))
                                 (declare (not safe))
                                 (_%loop101279%_
                                  _%rest101361%_
                                  __tmp101938
                                  __tmp101937)))
                             _%$e101365%_)
                            (let ()
                              ((lambda (_%klass101371%_
                                        _%obj-klass101372%_
                                        _%method-name101373%_)
                                 '#f)
                               _%klass101273%_
                               _%obj-klass101274%_
                               _%method-name101362%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101288101296%_))
                  (let ((_%hd101293101378%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101288101296%_)))
                        (_%tl101294101380%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101288101296%_))))
                    (let* ((_%method-name101383%_ _%hd101293101378%_)
                           (_%rest101385%_ _%tl101294101380%_))
                      (declare (not safe))
                      (_%K101292101375%_
                       _%rest101385%_
                       _%method-name101383%_)))
                  (let () (declare (not safe)) (_%else101290101358%_))))))))
    (define cast
      (lambda (_%descriptor101230%_ _%obj101232%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101236%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101230%_ '1 '#f '#f)))
               (_%klass-id101239%_
                (let () (declare (not safe)) (##type-id _%klass101236%_)))
               (_%obj-klass101242%_
                (let () (declare (not safe)) (class-of _%obj101232%_)))
               (_%obj-klass-id101245%_
                (let () (declare (not safe)) (##type-id _%obj-klass101242%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101239%_ _%obj-klass-id101245%_))
              (let () _%obj101232%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101242%_))
                  (let ((__tmp101939
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101232%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor101230%_ __tmp101939))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101254%_ ()
                        (if (let ((__tmp101940
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101940 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101254%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101239%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101245%_))
                    (let ((_%prototype101265%_
                           (let ((_%$e101258%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101258%_
                                 ((lambda (_%prototype101261%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101261%_)
                                  _%$e101258%_)
                                 (let ()
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
                                      _%descriptor101230%_
                                      _%klass101236%_
                                      _%obj-klass101242%_)))))))
                      ((lambda (_%prototype101267%_ _%obj101268%_)
                         (let ((_%instance101270%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101267%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101270%_
                              _%obj101268%_
                              '1
                              '#f
                              'cast))
                           _%instance101270%_))
                       _%prototype101265%_
                       _%obj101232%_))))))))
    (define try-cast
      (lambda (_%descriptor101188%_ _%obj101190%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101194%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101188%_ '1 '#f '#f)))
               (_%klass-id101197%_
                (let () (declare (not safe)) (##type-id _%klass101194%_)))
               (_%obj-klass101200%_
                (let () (declare (not safe)) (class-of _%obj101190%_)))
               (_%obj-klass-id101203%_
                (let () (declare (not safe)) (##type-id _%obj-klass101200%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101197%_ _%obj-klass-id101203%_))
              (let () _%obj101190%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101200%_))
                  (let ((__tmp101941
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101190%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor101188%_ __tmp101941))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101212%_ ()
                        (if (let ((__tmp101942
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101942 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101212%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101197%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101203%_))
                    (let ((_%prototype101223%_
                           (let ((_%$e101216%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101216%_
                                 ((lambda (_%prototype101219%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101219%_)
                                  _%$e101216%_)
                                 (let ()
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
                                      _%descriptor101188%_
                                      _%klass101194%_
                                      _%obj-klass101200%_)))))))
                      ((lambda (_%prototype101225%_ _%obj101226%_)
                         (if _%prototype101225%_
                             (let ((_%instance101228%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101225%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101228%_
                                  _%obj101226%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101228%_)
                             '#f))
                       _%prototype101223%_
                       _%obj101190%_))))))))
    (define satisfies?
      (lambda (_%descriptor101148%_ _%obj101150%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101154%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101148%_ '1 '#f '#f)))
               (_%klass-id101157%_
                (let () (declare (not safe)) (##type-id _%klass101154%_)))
               (_%obj-klass101160%_
                (let () (declare (not safe)) (class-of _%obj101150%_)))
               (_%obj-klass-id101163%_
                (let () (declare (not safe)) (##type-id _%obj-klass101160%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101157%_ _%obj-klass-id101163%_))
              (let () _%obj101150%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101160%_))
                  (let ((__tmp101943
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101150%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor101148%_ __tmp101943))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101172%_ ()
                        (if (let ((__tmp101944
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101944 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101172%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101157%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101163%_))
                    (let ((_%prototype101183%_
                           (let ((_%$e101176%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101176%_
                                 ((lambda (_%prototype101179%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101179%_)
                                  _%$e101176%_)
                                 (let ()
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
                                      _%descriptor101148%_
                                      _%klass101154%_
                                      _%obj-klass101160%_)))))))
                      ((lambda (_%prototype101185%_ _%obj101186%_)
                         (if _%prototype101185%_ '#t '#f))
                       _%prototype101183%_
                       _%obj101150%_))))))))))
