(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712251111)
  (begin
    (define CastError::t
      (let ((__tmp101936 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101936
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101929%_
        (apply make-instance CastError::t _%$args101929%_)))
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
      (lambda (_%where101803%_ _%message101804%_ . _%irritants101805%_)
        (let ((__tmp101937
               (let ((__obj101932
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101932
                  _%message101804%_
                  'where:
                  _%where101803%_
                  'irritants:
                  _%irritants101805%_)
                 __obj101932)))
          (declare (not safe))
          (raise __tmp101937))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101939 (list)) (__tmp101938 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101939
         '(__object)
         __tmp101938
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
      (let ((__tmp101941 (list))
            (__tmp101940
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101941
         '(type methods)
         __tmp101940
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101800%_
        (apply make-instance interface-descriptor::t _%$args101800%_)))
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
      (lambda (_%key101798%_)
        (let ((__tmp101943
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101798%_))))
              (__tmp101942
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101798%_)))))
          (declare (not safe))
          (##fxxor __tmp101943 __tmp101942))))
    (define __interface-test-key
      (lambda (_%a101795%_ _%b101796%_)
        (if (let ((__tmp101945
                   (let () (declare (not safe)) (##car _%a101795%_)))
                  (__tmp101944
                   (let () (declare (not safe)) (##car _%b101796%_))))
              (declare (not safe))
              (##eq? __tmp101945 __tmp101944))
            (let ((__tmp101947
                   (let () (declare (not safe)) (##cdr _%a101795%_)))
                  (__tmp101946
                   (let () (declare (not safe)) (##cdr _%b101796%_))))
              (declare (not safe))
              (##eq? __tmp101947 __tmp101946))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101776%_ _%seed101778%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101776%_
           __interface-hash-key
           __interface-test-key
           _%seed101778%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101784%_ '#f) (_%seed101786%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101784%_ _%seed101786%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101788%_)
        (let ((_%seed101790%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101788%_ _%seed101790%_))))
    (define make-prototype-table
      (lambda _g101949_
        (let ((_g101948_ (let () (declare (not safe)) (##length _g101949_))))
          (cond ((let () (declare (not safe)) (##fx= _g101948_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101949_))
                ((let () (declare (not safe)) (##fx= _g101948_ 1))
                 (apply (lambda (_%size-hint101788%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101788%_)))
                        _g101949_))
                ((let () (declare (not safe)) (##fx= _g101948_ 2))
                 (apply (lambda (_%size-hint101792%_ _%seed101793%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101792%_
                             _%seed101793%_)))
                        _g101949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101949_))))))
    (define prototype-table-ref
      (lambda (_%tab101729%_ _%key101730%_ _%default101731%_)
        (let ((_%table101733%_
               (let () (declare (not safe)) (&raw-table-table _%tab101729%_)))
              (_%seed101734%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101729%_))))
          (let* ((_%h101736%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101730%_))
                         _%seed101734%_))
                 (_%size101739%_ (vector-length _%table101733%_))
                 (_%entries101742%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101739%_ '2)))
                 (_%start101745%_
                  (let ((__tmp101950
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101736%_ _%entries101742%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101950 '1))))
            (let _%loop101749%_ ((_%probe101752%_ _%start101745%_)
                                 (_%i101754%_ '1)
                                 (_%deleted101756%_ '#f))
              (let ((_%k101759%_ (vector-ref _%table101733%_ _%probe101752%_)))
                (if (eq? _%k101759%_ (macro-unused-obj))
                    (let () _%default101731%_)
                    (if (eq? _%k101759%_ (macro-deleted-obj))
                        (let ((__tmp101953
                               (let ((_%next-probe101764%_
                                      (fx+ _%start101745%_
                                           _%i101754%_
                                           (fx* _%i101754%_ _%i101754%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101764%_
                                  _%size101739%_)))
                              (__tmp101952
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101754%_ '1)))
                              (__tmp101951
                               (let ((_%$e101767%_ _%deleted101756%_))
                                 (if _%$e101767%_
                                     _%$e101767%_
                                     _%probe101752%_))))
                          (declare (not safe))
                          (_%loop101749%_ __tmp101953 __tmp101952 __tmp101951))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101730%_ _%k101759%_))
                            (let ()
                              (vector-ref
                               _%table101733%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101752%_ '1))))
                            (let ((__tmp101955
                                   (let ((_%next-probe101772%_
                                          (fx+ _%start101745%_
                                               _%i101754%_
                                               (fx* _%i101754%_ _%i101754%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101772%_
                                      _%size101739%_)))
                                  (__tmp101954
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101754%_ '1))))
                              (declare (not safe))
                              (_%loop101749%_
                               __tmp101955
                               __tmp101954
                               _%deleted101756%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101725%_ _%key101726%_ _%value101727%_)
        (if (let ((__tmp101958
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101725%_)))
                  (__tmp101956
                   (let ((__tmp101957
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101725%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101957 '4))))
              (declare (not safe))
              (##fx< __tmp101958 __tmp101956))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101725%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101725%_
           _%key101726%_
           _%value101727%_))))
    (define __prototype-table-set!
      (lambda (_%tab101676%_ _%key101677%_ _%value101678%_)
        (let ((_%table101681%_
               (let () (declare (not safe)) (&raw-table-table _%tab101676%_)))
              (_%seed101682%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101676%_))))
          (let* ((_%h101684%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101677%_))
                         _%seed101682%_))
                 (_%size101687%_ (vector-length _%table101681%_))
                 (_%entries101690%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101687%_ '2)))
                 (_%start101693%_
                  (let ((__tmp101959
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101684%_ _%entries101690%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101959 '1))))
            (let _%loop101697%_ ((_%probe101700%_ _%start101693%_)
                                 (_%i101702%_ '1)
                                 (_%deleted101704%_ '#f))
              (let ((_%k101707%_ (vector-ref _%table101681%_ _%probe101700%_)))
                (if (eq? _%k101707%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101704%_
                          (begin
                            (vector-set!
                             _%table101681%_
                             _%deleted101704%_
                             _%key101677%_)
                            (vector-set!
                             _%table101681%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101704%_ '1))
                             _%value101678%_)
                            ((lambda ()
                               (let ((__tmp101960
                                      (let ((__tmp101961
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101676%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101961 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101676%_
                                  __tmp101960)))))
                          (begin
                            (vector-set!
                             _%table101681%_
                             _%probe101700%_
                             _%key101677%_)
                            (vector-set!
                             _%table101681%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101700%_ '1))
                             _%value101678%_)
                            ((lambda ()
                               (let ((__tmp101962
                                      (let ((__tmp101963
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101676%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101963 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101676%_
                                  __tmp101962))
                               (let ((__tmp101964
                                      (let ((__tmp101965
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101676%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101965 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101676%_
                                  __tmp101964)))))))
                    (if (eq? _%k101707%_ (macro-deleted-obj))
                        (let ((__tmp101968
                               (let ((_%next-probe101714%_
                                      (fx+ _%start101693%_
                                           _%i101702%_
                                           (fx* _%i101702%_ _%i101702%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101714%_
                                  _%size101687%_)))
                              (__tmp101967
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101702%_ '1)))
                              (__tmp101966
                               (let ((_%$e101717%_ _%deleted101704%_))
                                 (if _%$e101717%_
                                     _%$e101717%_
                                     _%probe101700%_))))
                          (declare (not safe))
                          (_%loop101697%_ __tmp101968 __tmp101967 __tmp101966))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101677%_ _%k101707%_))
                            (let ()
                              (vector-set!
                               _%table101681%_
                               _%probe101700%_
                               _%key101677%_)
                              (vector-set!
                               _%table101681%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101700%_ '1))
                               _%value101678%_))
                            (let ((__tmp101970
                                   (let ((_%next-probe101722%_
                                          (fx+ _%start101693%_
                                               _%i101702%_
                                               (fx* _%i101702%_ _%i101702%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101722%_
                                      _%size101687%_)))
                                  (__tmp101969
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101702%_ '1))))
                              (declare (not safe))
                              (_%loop101697%_
                               __tmp101970
                               __tmp101969
                               _%deleted101704%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101671%_
               _%key101672%_
               _%prototype-table-update!101673%_
               _%default101674%_)
        (if (let ((__tmp101973
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101671%_)))
                  (__tmp101971
                   (let ((__tmp101972
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101671%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101972 '4))))
              (declare (not safe))
              (##fx< __tmp101973 __tmp101971))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101671%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101671%_
           _%key101672%_
           _%prototype-table-update!101673%_
           _%default101674%_))))
    (define __prototype-table-update!
      (lambda (_%tab101621%_
               _%key101622%_
               _%prototype-table-update!101623%_
               _%default101624%_)
        (let ((_%table101627%_
               (let () (declare (not safe)) (&raw-table-table _%tab101621%_)))
              (_%seed101628%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101621%_))))
          (let* ((_%h101630%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101622%_))
                         _%seed101628%_))
                 (_%size101633%_ (vector-length _%table101627%_))
                 (_%entries101636%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101633%_ '2)))
                 (_%start101639%_
                  (let ((__tmp101974
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101630%_ _%entries101636%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101974 '1))))
            (let _%loop101643%_ ((_%probe101646%_ _%start101639%_)
                                 (_%i101648%_ '1)
                                 (_%deleted101650%_ '#f))
              (let ((_%k101653%_ (vector-ref _%table101627%_ _%probe101646%_)))
                (if (eq? _%k101653%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101650%_
                          (begin
                            (vector-set!
                             _%table101627%_
                             _%deleted101650%_
                             _%key101622%_)
                            (vector-set!
                             _%table101627%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101650%_ '1))
                             (_%prototype-table-update!101623%_
                              _%default101624%_))
                            ((lambda ()
                               (let ((__tmp101975
                                      (let ((__tmp101976
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101621%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101976 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101621%_
                                  __tmp101975)))))
                          (begin
                            (vector-set!
                             _%table101627%_
                             _%probe101646%_
                             _%key101622%_)
                            (vector-set!
                             _%table101627%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101646%_ '1))
                             (_%prototype-table-update!101623%_
                              _%default101624%_))
                            ((lambda ()
                               (let ((__tmp101977
                                      (let ((__tmp101978
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101621%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101978 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101621%_
                                  __tmp101977))
                               (let ((__tmp101979
                                      (let ((__tmp101980
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101621%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101980 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101621%_
                                  __tmp101979)))))))
                    (if (eq? _%k101653%_ (macro-deleted-obj))
                        (let ((__tmp101983
                               (let ((_%next-probe101660%_
                                      (fx+ _%start101639%_
                                           _%i101648%_
                                           (fx* _%i101648%_ _%i101648%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101660%_
                                  _%size101633%_)))
                              (__tmp101982
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101648%_ '1)))
                              (__tmp101981
                               (let ((_%$e101663%_ _%deleted101650%_))
                                 (if _%$e101663%_
                                     _%$e101663%_
                                     _%probe101646%_))))
                          (declare (not safe))
                          (_%loop101643%_ __tmp101983 __tmp101982 __tmp101981))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101622%_ _%k101653%_))
                            (let ()
                              (vector-set!
                               _%table101627%_
                               _%probe101646%_
                               _%key101622%_)
                              (vector-set!
                               _%table101627%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101646%_ '1))
                               (_%prototype-table-update!101623%_
                                (vector-ref
                                 _%table101627%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101646%_ '1))))))
                            (let ((__tmp101985
                                   (let ((_%next-probe101668%_
                                          (fx+ _%start101639%_
                                               _%i101648%_
                                               (fx* _%i101648%_ _%i101648%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101668%_
                                      _%size101633%_)))
                                  (__tmp101984
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101648%_ '1))))
                              (declare (not safe))
                              (_%loop101643%_
                               __tmp101985
                               __tmp101984
                               _%deleted101650%_)))))))))))
    (define prototype-trable-delete!
      (lambda (_%tab101576%_ _%key101578%_)
        (let ((_%table101581%_
               (let () (declare (not safe)) (&raw-table-table _%tab101576%_)))
              (_%seed101583%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101576%_))))
          (let* ((_%h101586%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101578%_))
                         _%seed101583%_))
                 (_%size101589%_ (vector-length _%table101581%_))
                 (_%entries101592%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101589%_ '2)))
                 (_%start101595%_
                  (let ((__tmp101986
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101586%_ _%entries101592%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101986 '1))))
            (let _%loop101599%_ ((_%probe101602%_ _%start101595%_)
                                 (_%i101604%_ '1))
              (let ((_%k101607%_ (vector-ref _%table101581%_ _%probe101602%_)))
                (if (eq? _%k101607%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101607%_ (macro-deleted-obj))
                        (let ((__tmp101988
                               (let ((_%next-probe101612%_
                                      (fx+ _%start101595%_
                                           _%i101604%_
                                           (fx* _%i101604%_ _%i101604%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101612%_
                                  _%size101589%_)))
                              (__tmp101987
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101604%_ '1))))
                          (declare (not safe))
                          (_%loop101599%_ __tmp101988 __tmp101987))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101578%_ _%k101607%_))
                            (let ()
                              (vector-set!
                               _%table101581%_
                               _%probe101602%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101581%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101602%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101989
                                        (let ((__tmp101990
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101576%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101990 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101576%_
                                    __tmp101989)))))
                            (let ((__tmp101992
                                   (let ((_%next-probe101618%_
                                          (fx+ _%start101595%_
                                               _%i101604%_
                                               (fx* _%i101604%_ _%i101604%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101618%_
                                      _%size101589%_)))
                                  (__tmp101991
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101604%_ '1))))
                              (declare (not safe))
                              (_%loop101599%_
                               __tmp101992
                               __tmp101991)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101568%_)
        (let ((_%super101569101571%_
               (let () (declare (not safe)) (##type-super _%klass101568%_))))
          (if _%super101569101571%_
              (let ((_%super101574%_ _%super101569101571%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101574%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101453%_ _%klass101454%_ _%obj-klass101455%_)
        (let ((_%method-table101457%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101455%_))))
          (let _%loop101460%_ ((_%rest101463%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101453%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101465%_ '0)
                               (_%methods101467%_ '()))
            (let* ((_%rest101469101477%_ _%rest101463%_)
                   (_%else101471101539%_
                    (lambda ()
                      (let ((_%prototype101485%_
                             (let ((__obj101934
                                    (let ((__tmp101993
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101465%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101454%_
                                       __tmp101993))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101934 '#f))
                               __obj101934)))
                        (let _%loop101488%_ ((_%rest101490%_ _%methods101467%_)
                                             (_%off101491%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101465%_ '1))))
                          (let* ((_%rest101493101501%_ _%rest101490%_)
                                 (_%else101495101520%_
                                  (lambda ()
                                    (let ((_%prototype-key101509%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101454%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101455%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101514%_ ()
                                          (if (let ((__tmp101994
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101994 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101514%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101509%_
                                         _%prototype101485%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101518%_)
                                         _%prototype101518%_)
                                       _%prototype101485%_))))
                                 (_%K101497101527%_
                                  (lambda (_%rest101523%_ _%method101524%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101485%_
                                       _%method101524%_
                                       _%off101491%_
                                       _%klass101454%_
                                       '#f))
                                    (let ((__tmp101995
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101491%_ '1))))
                                      (declare (not safe))
                                      (_%loop101488%_
                                       _%rest101523%_
                                       __tmp101995)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101493101501%_))
                                (let ((_%hd101498101530%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101493101501%_)))
                                      (_%tl101499101532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101493101501%_))))
                                  (let* ((_%method101535%_ _%hd101498101530%_)
                                         (_%rest101537%_ _%tl101499101532%_))
                                    (declare (not safe))
                                    (_%K101497101527%_
                                     _%rest101537%_
                                     _%method101535%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101495101520%_))))))))
                   (_%K101473101556%_
                    (lambda (_%rest101542%_ _%method-name101543%_)
                      (let ((_%$e101546%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101457%_
                                _%method-name101543%_
                                '#f))))
                        (if _%$e101546%_
                            ((lambda (_%method101549%_)
                               (let ((__tmp101997
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101465%_ '1)))
                                     (__tmp101996
                                      (cons _%method101549%_
                                            _%methods101467%_)))
                                 (declare (not safe))
                                 (_%loop101460%_
                                  _%rest101542%_
                                  __tmp101997
                                  __tmp101996)))
                             _%$e101546%_)
                            (let ()
                              ((lambda (_%klass101552%_
                                        _%obj-klass101553%_
                                        _%method-name101554%_)
                                 (let ((__tmp101999
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass101552%_)))
                                       (__tmp101998
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass101553%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass101552%_
                                    'interface-id:
                                    __tmp101999
                                    'class:
                                    _%obj-klass101553%_
                                    'class-id:
                                    __tmp101998
                                    'method:
                                    _%method-name101554%_))
                                 '#!void)
                               _%klass101454%_
                               _%obj-klass101455%_
                               _%method-name101543%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101469101477%_))
                  (let ((_%hd101474101559%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101469101477%_)))
                        (_%tl101475101561%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101469101477%_))))
                    (let* ((_%method-name101564%_ _%hd101474101559%_)
                           (_%rest101566%_ _%tl101475101561%_))
                      (declare (not safe))
                      (_%K101473101556%_
                       _%rest101566%_
                       _%method-name101564%_)))
                  (let () (declare (not safe)) (_%else101471101539%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor101338%_ _%klass101339%_ _%obj-klass101340%_)
        (let ((_%method-table101342%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101340%_))))
          (let _%loop101345%_ ((_%rest101348%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101338%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101350%_ '0)
                               (_%methods101352%_ '()))
            (let* ((_%rest101354101362%_ _%rest101348%_)
                   (_%else101356101424%_
                    (lambda ()
                      (let ((_%prototype101370%_
                             (let ((__obj101935
                                    (let ((__tmp102000
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101350%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101339%_
                                       __tmp102000))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101935 '#f))
                               __obj101935)))
                        (let _%loop101373%_ ((_%rest101375%_ _%methods101352%_)
                                             (_%off101376%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101350%_ '1))))
                          (let* ((_%rest101378101386%_ _%rest101375%_)
                                 (_%else101380101405%_
                                  (lambda ()
                                    (let ((_%prototype-key101394%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101339%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101340%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101399%_ ()
                                          (if (let ((__tmp102001
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp102001 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101399%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101394%_
                                         _%prototype101370%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101403%_)
                                         _%prototype101403%_)
                                       _%prototype101370%_))))
                                 (_%K101382101412%_
                                  (lambda (_%rest101408%_ _%method101409%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101370%_
                                       _%method101409%_
                                       _%off101376%_
                                       _%klass101339%_
                                       '#f))
                                    (let ((__tmp102002
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101376%_ '1))))
                                      (declare (not safe))
                                      (_%loop101373%_
                                       _%rest101408%_
                                       __tmp102002)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101378101386%_))
                                (let ((_%hd101383101415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101378101386%_)))
                                      (_%tl101384101417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101378101386%_))))
                                  (let* ((_%method101420%_ _%hd101383101415%_)
                                         (_%rest101422%_ _%tl101384101417%_))
                                    (declare (not safe))
                                    (_%K101382101412%_
                                     _%rest101422%_
                                     _%method101420%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101380101405%_))))))))
                   (_%K101358101441%_
                    (lambda (_%rest101427%_ _%method-name101428%_)
                      (let ((_%$e101431%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101342%_
                                _%method-name101428%_
                                '#f))))
                        (if _%$e101431%_
                            ((lambda (_%method101434%_)
                               (let ((__tmp102004
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101350%_ '1)))
                                     (__tmp102003
                                      (cons _%method101434%_
                                            _%methods101352%_)))
                                 (declare (not safe))
                                 (_%loop101345%_
                                  _%rest101427%_
                                  __tmp102004
                                  __tmp102003)))
                             _%$e101431%_)
                            (let ()
                              ((lambda (_%klass101437%_
                                        _%obj-klass101438%_
                                        _%method-name101439%_)
                                 '#f)
                               _%klass101339%_
                               _%obj-klass101340%_
                               _%method-name101428%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101354101362%_))
                  (let ((_%hd101359101444%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101354101362%_)))
                        (_%tl101360101446%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101354101362%_))))
                    (let* ((_%method-name101449%_ _%hd101359101444%_)
                           (_%rest101451%_ _%tl101360101446%_))
                      (declare (not safe))
                      (_%K101358101441%_
                       _%rest101451%_
                       _%method-name101449%_)))
                  (let () (declare (not safe)) (_%else101356101424%_))))))))
    (define cast
      (lambda (_%descriptor101296%_ _%obj101298%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101302%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101296%_ '1 '#f '#f)))
               (_%klass-id101305%_
                (let () (declare (not safe)) (##type-id _%klass101302%_)))
               (_%obj-klass101308%_
                (let () (declare (not safe)) (class-of _%obj101298%_)))
               (_%obj-klass-id101311%_
                (let () (declare (not safe)) (##type-id _%obj-klass101308%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101305%_ _%obj-klass-id101311%_))
              (let () _%obj101298%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101308%_))
                  (let ((__tmp102005
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101298%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor101296%_ __tmp102005))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101320%_ ()
                        (if (let ((__tmp102006
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102006 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101320%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101305%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101311%_))
                    (let ((_%prototype101331%_
                           (let ((_%$e101324%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101324%_
                                 ((lambda (_%prototype101327%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101327%_)
                                  _%$e101324%_)
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
                                      _%descriptor101296%_
                                      _%klass101302%_
                                      _%obj-klass101308%_)))))))
                      ((lambda (_%prototype101333%_ _%obj101334%_)
                         (let ((_%instance101336%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101333%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101336%_
                              _%obj101334%_
                              '1
                              '#f
                              'cast))
                           _%instance101336%_))
                       _%prototype101331%_
                       _%obj101298%_))))))))
    (define try-cast
      (lambda (_%descriptor101254%_ _%obj101256%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101260%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101254%_ '1 '#f '#f)))
               (_%klass-id101263%_
                (let () (declare (not safe)) (##type-id _%klass101260%_)))
               (_%obj-klass101266%_
                (let () (declare (not safe)) (class-of _%obj101256%_)))
               (_%obj-klass-id101269%_
                (let () (declare (not safe)) (##type-id _%obj-klass101266%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101263%_ _%obj-klass-id101269%_))
              (let () _%obj101256%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101266%_))
                  (let ((__tmp102007
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101256%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor101254%_ __tmp102007))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101278%_ ()
                        (if (let ((__tmp102008
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102008 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101278%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101263%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101269%_))
                    (let ((_%prototype101289%_
                           (let ((_%$e101282%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101282%_
                                 ((lambda (_%prototype101285%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101285%_)
                                  _%$e101282%_)
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
                                      _%descriptor101254%_
                                      _%klass101260%_
                                      _%obj-klass101266%_)))))))
                      ((lambda (_%prototype101291%_ _%obj101292%_)
                         (if _%prototype101291%_
                             (let ((_%instance101294%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101291%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101294%_
                                  _%obj101292%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101294%_)
                             '#f))
                       _%prototype101289%_
                       _%obj101256%_))))))))
    (define satisfies?
      (lambda (_%descriptor101214%_ _%obj101216%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101220%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101214%_ '1 '#f '#f)))
               (_%klass-id101223%_
                (let () (declare (not safe)) (##type-id _%klass101220%_)))
               (_%obj-klass101226%_
                (let () (declare (not safe)) (class-of _%obj101216%_)))
               (_%obj-klass-id101229%_
                (let () (declare (not safe)) (##type-id _%obj-klass101226%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101223%_ _%obj-klass-id101229%_))
              (let () _%obj101216%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101226%_))
                  (let ((__tmp102009
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101216%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor101214%_ __tmp102009))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101238%_ ()
                        (if (let ((__tmp102010
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp102010 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101238%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101223%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101229%_))
                    (let ((_%prototype101249%_
                           (let ((_%$e101242%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101242%_
                                 ((lambda (_%prototype101245%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101245%_)
                                  _%$e101242%_)
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
                                      _%descriptor101214%_
                                      _%klass101220%_
                                      _%obj-klass101226%_)))))))
                      ((lambda (_%prototype101251%_ _%obj101252%_)
                         (if _%prototype101251%_ '#t '#f))
                       _%prototype101249%_
                       _%obj101216%_))))))))))
