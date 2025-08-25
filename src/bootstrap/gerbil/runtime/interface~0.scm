(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1756142918)
  (begin
    (define CastError::t
      (let ((__tmp111857 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp111857
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args111850%_
        (apply make-instance CastError::t _%$args111850%_)))
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
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where111724%_ _%message111725%_ . _%irritants111726%_)
        (let ((__tmp111858
               (let ((__obj111853
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj111853
                    _%message111725%_
                    'where:
                    _%where111724%_
                    'irritants:
                    _%irritants111726%_))
                 __obj111853)))
          (declare (not safe))
          (raise __tmp111858))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp111860 (list)) (__tmp111859 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp111860
         '(__object)
         __tmp111859
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
      (let ((__tmp111862 (list))
            (__tmp111861
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp111862
         '(type methods)
         __tmp111861
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args111721%_
        (apply make-instance interface-descriptor::t _%$args111721%_)))
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
      (lambda (_%key111719%_)
        (let ((__tmp111865
               (let ((__tmp111866
                      (let () (declare (not safe)) (##car _%key111719%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp111866)))
              (__tmp111863
               (let ((__tmp111864
                      (let () (declare (not safe)) (##cdr _%key111719%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp111864))))
          (declare (not safe))
          (##fxxor __tmp111865 __tmp111863))))
    (define __interface-test-key
      (lambda (_%a111716%_ _%b111717%_)
        (if (let ((__tmp111868
                   (let () (declare (not safe)) (##car _%a111716%_)))
                  (__tmp111867
                   (let () (declare (not safe)) (##car _%b111717%_))))
              (declare (not safe))
              (##eq? __tmp111868 __tmp111867))
            (let ((__tmp111870
                   (let () (declare (not safe)) (##cdr _%a111716%_)))
                  (__tmp111869
                   (let () (declare (not safe)) (##cdr _%b111717%_))))
              (declare (not safe))
              (##eq? __tmp111870 __tmp111869))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint111697%_ _%seed111699%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint111697%_
           __interface-hash-key
           __interface-test-key
           _%seed111699%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint111705%_ '#f) (_%seed111707%_ '0))
          (make-prototype-table__% _%size-hint111705%_ _%seed111707%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint111709%_)
        (let ((_%seed111711%_ '0))
          (make-prototype-table__% _%size-hint111709%_ _%seed111711%_))))
    (define make-prototype-table
      (lambda _g111871_
        (let ((_g111872_ (let () (declare (not safe)) (##length _g111871_))))
          (cond ((let () (declare (not safe)) (##fx= _g111872_ 0))
                 (apply make-prototype-table__0 _g111871_))
                ((let () (declare (not safe)) (##fx= _g111872_ 1))
                 (apply make-prototype-table__1 _g111871_))
                ((let () (declare (not safe)) (##fx= _g111872_ 2))
                 (apply make-prototype-table__% _g111871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g111871_))))))
    (define prototype-table-ref
      (lambda (_%tab111650%_ _%key111651%_ _%default111652%_)
        (let ((_%table111654%_
               (let () (declare (not safe)) (&raw-table-table _%tab111650%_)))
              (_%seed111655%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111650%_))))
          (let* ((_%h111657%_
                  (fxxor (__interface-hash-key _%key111651%_) _%seed111655%_))
                 (_%size111660%_ (vector-length _%table111654%_))
                 (_%entries111663%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size111660%_ '2)))
                 (_%start111666%_
                  (let ((__tmp111873
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h111657%_ _%entries111663%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111873 '1))))
            (let _%loop111670%_ ((_%probe111673%_ _%start111666%_)
                                 (_%i111675%_ '1)
                                 (_%deleted111677%_ '#f))
              (let ((_%k111680%_ (vector-ref _%table111654%_ _%probe111673%_)))
                (if (eq? _%k111680%_ (macro-unused-obj))
                    _%default111652%_
                    (if (eq? _%k111680%_ (macro-deleted-obj))
                        (_%loop111670%_
                         (let ((_%next-probe111685%_
                                (fx+ _%start111666%_
                                     _%i111675%_
                                     (fx* _%i111675%_ _%i111675%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe111685%_ _%size111660%_))
                         (let () (declare (not safe)) (##fx+ _%i111675%_ '1))
                         (let ((_%$e111688%_ _%deleted111677%_))
                           (if _%$e111688%_ _%$e111688%_ _%probe111673%_)))
                        (if (__interface-test-key _%key111651%_ _%k111680%_)
                            (vector-ref
                             _%table111654%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe111673%_ '1)))
                            (_%loop111670%_
                             (let ((_%next-probe111693%_
                                    (fx+ _%start111666%_
                                         _%i111675%_
                                         (fx* _%i111675%_ _%i111675%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe111693%_
                                _%size111660%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i111675%_ '1))
                             _%deleted111677%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab111646%_ _%key111647%_ _%value111648%_)
        (if (let ((__tmp111876
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab111646%_)))
                  (__tmp111874
                   (let ((__tmp111875
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab111646%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp111875 '4))))
              (declare (not safe))
              (##fx< __tmp111876 __tmp111874))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab111646%_))
            '#!void)
        (__prototype-table-set! _%tab111646%_ _%key111647%_ _%value111648%_)))
    (define __prototype-table-set!
      (lambda (_%tab111597%_ _%key111598%_ _%value111599%_)
        (let ((_%table111602%_
               (let () (declare (not safe)) (&raw-table-table _%tab111597%_)))
              (_%seed111603%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111597%_))))
          (let* ((_%h111605%_
                  (fxxor (__interface-hash-key _%key111598%_) _%seed111603%_))
                 (_%size111608%_ (vector-length _%table111602%_))
                 (_%entries111611%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size111608%_ '2)))
                 (_%start111614%_
                  (let ((__tmp111877
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h111605%_ _%entries111611%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111877 '1))))
            (let _%loop111618%_ ((_%probe111621%_ _%start111614%_)
                                 (_%i111623%_ '1)
                                 (_%deleted111625%_ '#f))
              (let ((_%k111628%_ (vector-ref _%table111602%_ _%probe111621%_)))
                (if (eq? _%k111628%_ (macro-unused-obj))
                    (if _%deleted111625%_
                        (begin
                          (vector-set!
                           _%table111602%_
                           _%deleted111625%_
                           _%key111598%_)
                          (vector-set!
                           _%table111602%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted111625%_ '1))
                           _%value111599%_)
                          ((lambda ()
                             (let ((__tmp111878
                                    (let ((__tmp111879
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111597%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111879 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111597%_
                                __tmp111878)))))
                        (begin
                          (vector-set!
                           _%table111602%_
                           _%probe111621%_
                           _%key111598%_)
                          (vector-set!
                           _%table111602%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe111621%_ '1))
                           _%value111599%_)
                          ((lambda ()
                             (let ((__tmp111880
                                    (let ((__tmp111881
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab111597%_))))
                                      (declare (not safe))
                                      (##fx- __tmp111881 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab111597%_
                                __tmp111880))
                             (let ((__tmp111882
                                    (let ((__tmp111883
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111597%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111883 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111597%_
                                __tmp111882))))))
                    (if (eq? _%k111628%_ (macro-deleted-obj))
                        (_%loop111618%_
                         (let ((_%next-probe111635%_
                                (fx+ _%start111614%_
                                     _%i111623%_
                                     (fx* _%i111623%_ _%i111623%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe111635%_ _%size111608%_))
                         (let () (declare (not safe)) (##fx+ _%i111623%_ '1))
                         (let ((_%$e111638%_ _%deleted111625%_))
                           (if _%$e111638%_ _%$e111638%_ _%probe111621%_)))
                        (if (__interface-test-key _%key111598%_ _%k111628%_)
                            (let ()
                              (vector-set!
                               _%table111602%_
                               _%probe111621%_
                               _%key111598%_)
                              (vector-set!
                               _%table111602%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe111621%_ '1))
                               _%value111599%_))
                            (_%loop111618%_
                             (let ((_%next-probe111643%_
                                    (fx+ _%start111614%_
                                         _%i111623%_
                                         (fx* _%i111623%_ _%i111623%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe111643%_
                                _%size111608%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i111623%_ '1))
                             _%deleted111625%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab111592%_
               _%key111593%_
               _%prototype-table-update!111594%_
               _%default111595%_)
        (if (let ((__tmp111886
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab111592%_)))
                  (__tmp111884
                   (let ((__tmp111885
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab111592%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp111885 '4))))
              (declare (not safe))
              (##fx< __tmp111886 __tmp111884))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab111592%_))
            '#!void)
        (__prototype-table-update!
         _%tab111592%_
         _%key111593%_
         _%prototype-table-update!111594%_
         _%default111595%_)))
    (define __prototype-table-update!
      (lambda (_%tab111542%_
               _%key111543%_
               _%prototype-table-update!111544%_
               _%default111545%_)
        (let ((_%table111548%_
               (let () (declare (not safe)) (&raw-table-table _%tab111542%_)))
              (_%seed111549%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111542%_))))
          (let* ((_%h111551%_
                  (fxxor (__interface-hash-key _%key111543%_) _%seed111549%_))
                 (_%size111554%_ (vector-length _%table111548%_))
                 (_%entries111557%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size111554%_ '2)))
                 (_%start111560%_
                  (let ((__tmp111887
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h111551%_ _%entries111557%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111887 '1))))
            (let _%loop111564%_ ((_%probe111567%_ _%start111560%_)
                                 (_%i111569%_ '1)
                                 (_%deleted111571%_ '#f))
              (let ((_%k111574%_ (vector-ref _%table111548%_ _%probe111567%_)))
                (if (eq? _%k111574%_ (macro-unused-obj))
                    (if _%deleted111571%_
                        (begin
                          (vector-set!
                           _%table111548%_
                           _%deleted111571%_
                           _%key111543%_)
                          (vector-set!
                           _%table111548%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted111571%_ '1))
                           (_%prototype-table-update!111544%_
                            _%default111545%_))
                          ((lambda ()
                             (let ((__tmp111888
                                    (let ((__tmp111889
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111542%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111889 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111542%_
                                __tmp111888)))))
                        (begin
                          (vector-set!
                           _%table111548%_
                           _%probe111567%_
                           _%key111543%_)
                          (vector-set!
                           _%table111548%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe111567%_ '1))
                           (_%prototype-table-update!111544%_
                            _%default111545%_))
                          ((lambda ()
                             (let ((__tmp111890
                                    (let ((__tmp111891
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab111542%_))))
                                      (declare (not safe))
                                      (##fx- __tmp111891 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab111542%_
                                __tmp111890))
                             (let ((__tmp111892
                                    (let ((__tmp111893
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab111542%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111893 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab111542%_
                                __tmp111892))))))
                    (if (eq? _%k111574%_ (macro-deleted-obj))
                        (_%loop111564%_
                         (let ((_%next-probe111581%_
                                (fx+ _%start111560%_
                                     _%i111569%_
                                     (fx* _%i111569%_ _%i111569%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe111581%_ _%size111554%_))
                         (let () (declare (not safe)) (##fx+ _%i111569%_ '1))
                         (let ((_%$e111584%_ _%deleted111571%_))
                           (if _%$e111584%_ _%$e111584%_ _%probe111567%_)))
                        (if (__interface-test-key _%key111543%_ _%k111574%_)
                            (let ()
                              (vector-set!
                               _%table111548%_
                               _%probe111567%_
                               _%key111543%_)
                              (vector-set!
                               _%table111548%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe111567%_ '1))
                               (_%prototype-table-update!111544%_
                                (vector-ref
                                 _%table111548%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe111567%_ '1))))))
                            (_%loop111564%_
                             (let ((_%next-probe111589%_
                                    (fx+ _%start111560%_
                                         _%i111569%_
                                         (fx* _%i111569%_ _%i111569%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe111589%_
                                _%size111554%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i111569%_ '1))
                             _%deleted111571%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab111497%_ _%key111499%_)
        (let ((_%table111502%_
               (let () (declare (not safe)) (&raw-table-table _%tab111497%_)))
              (_%seed111504%_
               (let () (declare (not safe)) (&raw-table-seed _%tab111497%_))))
          (let* ((_%h111507%_
                  (fxxor (__interface-hash-key _%key111499%_) _%seed111504%_))
                 (_%size111510%_ (vector-length _%table111502%_))
                 (_%entries111513%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size111510%_ '2)))
                 (_%start111516%_
                  (let ((__tmp111894
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h111507%_ _%entries111513%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111894 '1))))
            (let _%loop111520%_ ((_%probe111523%_ _%start111516%_)
                                 (_%i111525%_ '1))
              (let ((_%k111528%_ (vector-ref _%table111502%_ _%probe111523%_)))
                (if (eq? _%k111528%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k111528%_ (macro-deleted-obj))
                        (_%loop111520%_
                         (let ((_%next-probe111533%_
                                (fx+ _%start111516%_
                                     _%i111525%_
                                     (fx* _%i111525%_ _%i111525%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe111533%_ _%size111510%_))
                         (let () (declare (not safe)) (##fx+ _%i111525%_ '1)))
                        (if (__interface-test-key _%key111499%_ _%k111528%_)
                            (let ()
                              (vector-set!
                               _%table111502%_
                               _%probe111523%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table111502%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe111523%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp111895
                                        (let ((__tmp111896
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab111497%_))))
                                          (declare (not safe))
                                          (##fx- __tmp111896 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab111497%_
                                    __tmp111895)))))
                            (_%loop111520%_
                             (let ((_%next-probe111539%_
                                    (fx+ _%start111516%_
                                         _%i111525%_
                                         (fx* _%i111525%_ _%i111525%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe111539%_
                                _%size111510%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i111525%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass111489%_)
        (let ((_%super111490111492%_
               (let () (declare (not safe)) (##type-super _%klass111489%_))))
          (if _%super111490111492%_
              (let ((_%super111495%_ _%super111490111492%_))
                (eq? (let () (declare (not safe)) (##type-id _%super111495%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor111323%_ _%klass111324%_ _%obj-klass111325%_)
        (let ((_%method-table111327%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass111325%_))))
          (let _%loop111330%_ ((_%rest111333%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor111323%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count111335%_ '0)
                               (_%methods111337%_ '()))
            (let* ((_%rest111339111347%_ _%rest111333%_)
                   (_%else111341111409%_
                    (lambda ()
                      (let ((_%prototype111355%_
                             (let ((__obj111855
                                    (let ((__tmp111897
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count111335%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass111324%_
                                       __tmp111897))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj111855 '#f))
                               __obj111855)))
                        (let _%loop111358%_ ((_%rest111360%_ _%methods111337%_)
                                             (_%off111361%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count111335%_ '1))))
                          (let* ((_%rest111363111371%_ _%rest111360%_)
                                 (_%else111365111390%_
                                  (lambda ()
                                    (let ((_%prototype-key111379%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass111324%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass111325%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again111384%_ ()
                                          (if (let ((__tmp111898
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp111898 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again111384%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key111379%_
                                       _%prototype111355%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype111388%_)
                                         _%prototype111388%_)
                                       _%prototype111355%_))))
                                 (_%K111367111397%_
                                  (lambda (_%rest111393%_ _%method111394%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype111355%_
                                       _%method111394%_
                                       _%off111361%_
                                       _%klass111324%_
                                       '#f))
                                    (_%loop111358%_
                                     _%rest111393%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off111361%_ '1))))))
                            (if (pair? _%rest111363111371%_)
                                (let ((_%hd111368111400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest111363111371%_)))
                                      (_%tl111369111402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest111363111371%_))))
                                  (let* ((_%method111405%_ _%hd111368111400%_)
                                         (_%rest111407%_ _%tl111369111402%_))
                                    (_%K111367111397%_
                                     _%rest111407%_
                                     _%method111405%_)))
                                (_%else111365111390%_)))))))
                   (_%K111343111477%_
                    (lambda (_%rest111412%_ _%method-spec111413%_)
                      (if (pair? _%method-spec111413%_)
                          (let _%loop-inner111417%_ ((_%methods-rest111420%_
                                                      _%method-spec111413%_))
                            (let* ((_%methods-rest111422111430%_
                                    _%methods-rest111420%_)
                                   (_%else111424111442%_
                                    (lambda ()
                                      ((lambda (_%klass111438%_
                                                _%obj-klass111439%_
                                                _%method-name111440%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass111438%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass111438%_))
                                          'class:
                                          _%obj-klass111439%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass111439%_))
                                          'method:
                                          _%method-name111440%_)
                                         '#!void)
                                       _%klass111324%_
                                       _%obj-klass111325%_
                                       _%method-spec111413%_)))
                                   (_%K111426111455%_
                                    (lambda (_%methods-rest111445%_
                                             _%method-name111446%_)
                                      (let ((_%$e111449%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table111327%_
                                                _%method-name111446%_
                                                '#f))))
                                        (if _%$e111449%_
                                            ((lambda (_%method111452%_)
                                               (_%loop111330%_
                                                _%rest111412%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count111335%_ '1))
                                                (cons _%method111452%_
                                                      _%methods111337%_)))
                                             _%$e111449%_)
                                            (_%loop-inner111417%_
                                             _%methods-rest111445%_))))))
                              (if (pair? _%methods-rest111422111430%_)
                                  (let ((_%hd111427111458%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest111422111430%_)))
                                        (_%tl111428111460%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest111422111430%_))))
                                    (let* ((_%method-name111463%_
                                            _%hd111427111458%_)
                                           (_%methods-rest111465%_
                                            _%tl111428111460%_))
                                      (_%K111426111455%_
                                       _%methods-rest111465%_
                                       _%method-name111463%_)))
                                  (_%else111424111442%_))))
                          (let ((_%$e111467%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table111327%_
                                    _%method-spec111413%_
                                    '#f))))
                            (if _%$e111467%_
                                ((lambda (_%method111470%_)
                                   (_%loop111330%_
                                    _%rest111412%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count111335%_ '1))
                                    (cons _%method111470%_ _%methods111337%_)))
                                 _%$e111467%_)
                                ((lambda (_%klass111473%_
                                          _%obj-klass111474%_
                                          _%method-name111475%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass111473%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass111473%_))
                                    'class:
                                    _%obj-klass111474%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass111474%_))
                                    'method:
                                    _%method-name111475%_)
                                   '#!void)
                                 _%klass111324%_
                                 _%obj-klass111325%_
                                 _%method-spec111413%_)))))))
              (if (pair? _%rest111339111347%_)
                  (let ((_%hd111344111480%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111339111347%_)))
                        (_%tl111345111482%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111339111347%_))))
                    (let* ((_%method-spec111485%_ _%hd111344111480%_)
                           (_%rest111487%_ _%tl111345111482%_))
                      (_%K111343111477%_
                       _%rest111487%_
                       _%method-spec111485%_)))
                  (_%else111341111409%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor111157%_ _%klass111158%_ _%obj-klass111159%_)
        (let ((_%method-table111161%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass111159%_))))
          (let _%loop111164%_ ((_%rest111167%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor111157%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count111169%_ '0)
                               (_%methods111171%_ '()))
            (let* ((_%rest111173111181%_ _%rest111167%_)
                   (_%else111175111243%_
                    (lambda ()
                      (let ((_%prototype111189%_
                             (let ((__obj111856
                                    (let ((__tmp111899
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count111169%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass111158%_
                                       __tmp111899))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj111856 '#f))
                               __obj111856)))
                        (let _%loop111192%_ ((_%rest111194%_ _%methods111171%_)
                                             (_%off111195%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count111169%_ '1))))
                          (let* ((_%rest111197111205%_ _%rest111194%_)
                                 (_%else111199111224%_
                                  (lambda ()
                                    (let ((_%prototype-key111213%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass111158%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass111159%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again111218%_ ()
                                          (if (let ((__tmp111900
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp111900 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again111218%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key111213%_
                                       _%prototype111189%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype111222%_)
                                         _%prototype111222%_)
                                       _%prototype111189%_))))
                                 (_%K111201111231%_
                                  (lambda (_%rest111227%_ _%method111228%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype111189%_
                                       _%method111228%_
                                       _%off111195%_
                                       _%klass111158%_
                                       '#f))
                                    (_%loop111192%_
                                     _%rest111227%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off111195%_ '1))))))
                            (if (pair? _%rest111197111205%_)
                                (let ((_%hd111202111234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest111197111205%_)))
                                      (_%tl111203111236%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest111197111205%_))))
                                  (let* ((_%method111239%_ _%hd111202111234%_)
                                         (_%rest111241%_ _%tl111203111236%_))
                                    (_%K111201111231%_
                                     _%rest111241%_
                                     _%method111239%_)))
                                (_%else111199111224%_)))))))
                   (_%K111177111311%_
                    (lambda (_%rest111246%_ _%method-spec111247%_)
                      (if (pair? _%method-spec111247%_)
                          (let _%loop-inner111251%_ ((_%methods-rest111254%_
                                                      _%method-spec111247%_))
                            (let* ((_%methods-rest111256111264%_
                                    _%methods-rest111254%_)
                                   (_%else111258111276%_
                                    (lambda ()
                                      ((lambda (_%klass111272%_
                                                _%obj-klass111273%_
                                                _%method-name111274%_)
                                         '#f)
                                       _%klass111158%_
                                       _%obj-klass111159%_
                                       _%method-spec111247%_)))
                                   (_%K111260111289%_
                                    (lambda (_%methods-rest111279%_
                                             _%method-name111280%_)
                                      (let ((_%$e111283%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table111161%_
                                                _%method-name111280%_
                                                '#f))))
                                        (if _%$e111283%_
                                            ((lambda (_%method111286%_)
                                               (_%loop111164%_
                                                _%rest111246%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count111169%_ '1))
                                                (cons _%method111286%_
                                                      _%methods111171%_)))
                                             _%$e111283%_)
                                            (_%loop-inner111251%_
                                             _%methods-rest111279%_))))))
                              (if (pair? _%methods-rest111256111264%_)
                                  (let ((_%hd111261111292%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest111256111264%_)))
                                        (_%tl111262111294%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest111256111264%_))))
                                    (let* ((_%method-name111297%_
                                            _%hd111261111292%_)
                                           (_%methods-rest111299%_
                                            _%tl111262111294%_))
                                      (_%K111260111289%_
                                       _%methods-rest111299%_
                                       _%method-name111297%_)))
                                  (_%else111258111276%_))))
                          (let ((_%$e111301%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table111161%_
                                    _%method-spec111247%_
                                    '#f))))
                            (if _%$e111301%_
                                ((lambda (_%method111304%_)
                                   (_%loop111164%_
                                    _%rest111246%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count111169%_ '1))
                                    (cons _%method111304%_ _%methods111171%_)))
                                 _%$e111301%_)
                                ((lambda (_%klass111307%_
                                          _%obj-klass111308%_
                                          _%method-name111309%_)
                                   '#f)
                                 _%klass111158%_
                                 _%obj-klass111159%_
                                 _%method-spec111247%_)))))))
              (if (pair? _%rest111173111181%_)
                  (let ((_%hd111178111314%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest111173111181%_)))
                        (_%tl111179111316%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest111173111181%_))))
                    (let* ((_%method-spec111319%_ _%hd111178111314%_)
                           (_%rest111321%_ _%tl111179111316%_))
                      (_%K111177111311%_
                       _%rest111321%_
                       _%method-spec111319%_)))
                  (_%else111175111243%_)))))))
    (define cast
      (lambda (_%descriptor111115%_ _%obj111117%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111121%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111115%_ '1 '#f '#f)))
               (_%klass-id111124%_
                (let () (declare (not safe)) (##type-id _%klass111121%_)))
               (_%obj-klass111127%_
                (let () (declare (not safe)) (class-of _%obj111117%_)))
               (_%obj-klass-id111130%_
                (let () (declare (not safe)) (##type-id _%obj-klass111127%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111124%_ _%obj-klass-id111130%_))
              _%obj111117%_
              (if (interface-subclass? _%obj-klass111127%_)
                  (cast _%descriptor111115%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj111117%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111139%_ ()
                        (if (let ((__tmp111901
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp111901 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111139%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111124%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111130%_))
                    (let ((_%prototype111150%_
                           (let ((_%$e111143%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111143%_
                                 ((lambda (_%prototype111146%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111146%_)
                                  _%$e111143%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor111115%_
                                    _%klass111121%_
                                    _%obj-klass111127%_))))))
                      ((lambda (_%prototype111152%_ _%obj111153%_)
                         (let ((_%instance111155%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype111152%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance111155%_
                              _%obj111153%_
                              '1
                              '#f
                              'cast))
                           _%instance111155%_))
                       _%prototype111150%_
                       _%obj111117%_))))))))
    (define try-cast
      (lambda (_%descriptor111073%_ _%obj111075%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111079%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111073%_ '1 '#f '#f)))
               (_%klass-id111082%_
                (let () (declare (not safe)) (##type-id _%klass111079%_)))
               (_%obj-klass111085%_
                (let () (declare (not safe)) (class-of _%obj111075%_)))
               (_%obj-klass-id111088%_
                (let () (declare (not safe)) (##type-id _%obj-klass111085%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111082%_ _%obj-klass-id111088%_))
              _%obj111075%_
              (if (interface-subclass? _%obj-klass111085%_)
                  (try-cast
                   _%descriptor111073%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj111075%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111097%_ ()
                        (if (let ((__tmp111902
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp111902 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111097%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111082%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111088%_))
                    (let ((_%prototype111108%_
                           (let ((_%$e111101%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111101%_
                                 ((lambda (_%prototype111104%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111104%_)
                                  _%$e111101%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor111073%_
                                    _%klass111079%_
                                    _%obj-klass111085%_))))))
                      ((lambda (_%prototype111110%_ _%obj111111%_)
                         (if _%prototype111110%_
                             (let ((_%instance111113%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype111110%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance111113%_
                                  _%obj111111%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance111113%_)
                             '#f))
                       _%prototype111108%_
                       _%obj111075%_))))))))
    (define satisfies?
      (lambda (_%descriptor111033%_ _%obj111035%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass111039%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor111033%_ '1 '#f '#f)))
               (_%klass-id111042%_
                (let () (declare (not safe)) (##type-id _%klass111039%_)))
               (_%obj-klass111045%_
                (let () (declare (not safe)) (class-of _%obj111035%_)))
               (_%obj-klass-id111048%_
                (let () (declare (not safe)) (##type-id _%obj-klass111045%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id111042%_ _%obj-klass-id111048%_))
              _%obj111035%_
              (if (interface-subclass? _%obj-klass111045%_)
                  (satisfies?
                   _%descriptor111033%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj111035%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again111057%_ ()
                        (if (let ((__tmp111903
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp111903 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again111057%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id111042%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id111048%_))
                    (let ((_%prototype111068%_
                           (let ((_%$e111061%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e111061%_
                                 ((lambda (_%prototype111064%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype111064%_)
                                  _%$e111061%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor111033%_
                                    _%klass111039%_
                                    _%obj-klass111045%_))))))
                      ((lambda (_%prototype111070%_ _%obj111071%_)
                         (if _%prototype111070%_ '#t '#f))
                       _%prototype111068%_
                       _%obj111035%_))))))))))
