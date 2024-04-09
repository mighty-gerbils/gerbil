(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1712533289)
  (begin
    (define CastError::t
      (let ((__tmp101871 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp101871
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args101864%_
        (apply make-instance CastError::t _%$args101864%_)))
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
      (lambda (_%where101738%_ _%message101739%_ . _%irritants101740%_)
        (let ((__tmp101872
               (let ((__obj101867
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (CastError:::init!
                  __obj101867
                  _%message101739%_
                  'where:
                  _%where101738%_
                  'irritants:
                  _%irritants101740%_)
                 __obj101867)))
          (declare (not safe))
          (raise __tmp101872))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp101874 (list)) (__tmp101873 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp101874
         '(__object)
         __tmp101873
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
      (let ((__tmp101876 (list))
            (__tmp101875
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp101876
         '(type methods)
         __tmp101875
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args101735%_
        (apply make-instance interface-descriptor::t _%$args101735%_)))
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
      (lambda (_%key101733%_)
        (let ((__tmp101878
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key101733%_))))
              (__tmp101877
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key101733%_)))))
          (declare (not safe))
          (##fxxor __tmp101878 __tmp101877))))
    (define __interface-test-key
      (lambda (_%a101730%_ _%b101731%_)
        (if (let ((__tmp101880
                   (let () (declare (not safe)) (##car _%a101730%_)))
                  (__tmp101879
                   (let () (declare (not safe)) (##car _%b101731%_))))
              (declare (not safe))
              (##eq? __tmp101880 __tmp101879))
            (let ((__tmp101882
                   (let () (declare (not safe)) (##cdr _%a101730%_)))
                  (__tmp101881
                   (let () (declare (not safe)) (##cdr _%b101731%_))))
              (declare (not safe))
              (##eq? __tmp101882 __tmp101881))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint101711%_ _%seed101713%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101711%_
           __interface-hash-key
           __interface-test-key
           _%seed101713%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint101719%_ '#f) (_%seed101721%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101719%_ _%seed101721%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint101723%_)
        (let ((_%seed101725%_ '0))
          (declare (not safe))
          (make-prototype-table__% _%size-hint101723%_ _%seed101725%_))))
    (define make-prototype-table
      (lambda _g101884_
        (let ((_g101883_ (let () (declare (not safe)) (##length _g101884_))))
          (cond ((let () (declare (not safe)) (##fx= _g101883_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__0)))
                        _g101884_))
                ((let () (declare (not safe)) (##fx= _g101883_ 1))
                 (apply (lambda (_%size-hint101723%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__1 _%size-hint101723%_)))
                        _g101884_))
                ((let () (declare (not safe)) (##fx= _g101883_ 2))
                 (apply (lambda (_%size-hint101727%_ _%seed101728%_)
                          (let ()
                            (declare (not safe))
                            (make-prototype-table__%
                             _%size-hint101727%_
                             _%seed101728%_)))
                        _g101884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g101884_))))))
    (define prototype-table-ref
      (lambda (_%tab101664%_ _%key101665%_ _%default101666%_)
        (let ((_%table101668%_
               (let () (declare (not safe)) (&raw-table-table _%tab101664%_)))
              (_%seed101669%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101664%_))))
          (let* ((_%h101671%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101665%_))
                         _%seed101669%_))
                 (_%size101674%_ (vector-length _%table101668%_))
                 (_%entries101677%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101674%_ '2)))
                 (_%start101680%_
                  (let ((__tmp101885
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101671%_ _%entries101677%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101885 '1))))
            (let _%loop101684%_ ((_%probe101687%_ _%start101680%_)
                                 (_%i101689%_ '1)
                                 (_%deleted101691%_ '#f))
              (let ((_%k101694%_ (vector-ref _%table101668%_ _%probe101687%_)))
                (if (eq? _%k101694%_ (macro-unused-obj))
                    (let () _%default101666%_)
                    (if (eq? _%k101694%_ (macro-deleted-obj))
                        (let ((__tmp101888
                               (let ((_%next-probe101699%_
                                      (fx+ _%start101680%_
                                           _%i101689%_
                                           (fx* _%i101689%_ _%i101689%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101699%_
                                  _%size101674%_)))
                              (__tmp101887
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101689%_ '1)))
                              (__tmp101886
                               (let ((_%$e101702%_ _%deleted101691%_))
                                 (if _%$e101702%_
                                     _%$e101702%_
                                     _%probe101687%_))))
                          (declare (not safe))
                          (_%loop101684%_ __tmp101888 __tmp101887 __tmp101886))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101665%_ _%k101694%_))
                            (let ()
                              (vector-ref
                               _%table101668%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101687%_ '1))))
                            (let ((__tmp101890
                                   (let ((_%next-probe101707%_
                                          (fx+ _%start101680%_
                                               _%i101689%_
                                               (fx* _%i101689%_ _%i101689%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101707%_
                                      _%size101674%_)))
                                  (__tmp101889
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101689%_ '1))))
                              (declare (not safe))
                              (_%loop101684%_
                               __tmp101890
                               __tmp101889
                               _%deleted101691%_)))))))))))
    (define prototype-table-set!
      (lambda (_%tab101660%_ _%key101661%_ _%value101662%_)
        (if (let ((__tmp101893
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101660%_)))
                  (__tmp101891
                   (let ((__tmp101892
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101660%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101892 '4))))
              (declare (not safe))
              (##fx< __tmp101893 __tmp101891))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101660%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-set!
           _%tab101660%_
           _%key101661%_
           _%value101662%_))))
    (define __prototype-table-set!
      (lambda (_%tab101611%_ _%key101612%_ _%value101613%_)
        (let ((_%table101616%_
               (let () (declare (not safe)) (&raw-table-table _%tab101611%_)))
              (_%seed101617%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101611%_))))
          (let* ((_%h101619%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101612%_))
                         _%seed101617%_))
                 (_%size101622%_ (vector-length _%table101616%_))
                 (_%entries101625%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101622%_ '2)))
                 (_%start101628%_
                  (let ((__tmp101894
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101619%_ _%entries101625%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101894 '1))))
            (let _%loop101632%_ ((_%probe101635%_ _%start101628%_)
                                 (_%i101637%_ '1)
                                 (_%deleted101639%_ '#f))
              (let ((_%k101642%_ (vector-ref _%table101616%_ _%probe101635%_)))
                (if (eq? _%k101642%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101639%_
                          (begin
                            (vector-set!
                             _%table101616%_
                             _%deleted101639%_
                             _%key101612%_)
                            (vector-set!
                             _%table101616%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101639%_ '1))
                             _%value101613%_)
                            ((lambda ()
                               (let ((__tmp101895
                                      (let ((__tmp101896
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101611%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101896 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101611%_
                                  __tmp101895)))))
                          (begin
                            (vector-set!
                             _%table101616%_
                             _%probe101635%_
                             _%key101612%_)
                            (vector-set!
                             _%table101616%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101635%_ '1))
                             _%value101613%_)
                            ((lambda ()
                               (let ((__tmp101897
                                      (let ((__tmp101898
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101611%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101898 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101611%_
                                  __tmp101897))
                               (let ((__tmp101899
                                      (let ((__tmp101900
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101611%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101900 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101611%_
                                  __tmp101899)))))))
                    (if (eq? _%k101642%_ (macro-deleted-obj))
                        (let ((__tmp101903
                               (let ((_%next-probe101649%_
                                      (fx+ _%start101628%_
                                           _%i101637%_
                                           (fx* _%i101637%_ _%i101637%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101649%_
                                  _%size101622%_)))
                              (__tmp101902
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101637%_ '1)))
                              (__tmp101901
                               (let ((_%$e101652%_ _%deleted101639%_))
                                 (if _%$e101652%_
                                     _%$e101652%_
                                     _%probe101635%_))))
                          (declare (not safe))
                          (_%loop101632%_ __tmp101903 __tmp101902 __tmp101901))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101612%_ _%k101642%_))
                            (let ()
                              (vector-set!
                               _%table101616%_
                               _%probe101635%_
                               _%key101612%_)
                              (vector-set!
                               _%table101616%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101635%_ '1))
                               _%value101613%_))
                            (let ((__tmp101905
                                   (let ((_%next-probe101657%_
                                          (fx+ _%start101628%_
                                               _%i101637%_
                                               (fx* _%i101637%_ _%i101637%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101657%_
                                      _%size101622%_)))
                                  (__tmp101904
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101637%_ '1))))
                              (declare (not safe))
                              (_%loop101632%_
                               __tmp101905
                               __tmp101904
                               _%deleted101639%_)))))))))))
    (define prototype-table-update!
      (lambda (_%tab101606%_
               _%key101607%_
               _%prototype-table-update!101608%_
               _%default101609%_)
        (if (let ((__tmp101908
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101606%_)))
                  (__tmp101906
                   (let ((__tmp101907
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101606%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101907 '4))))
              (declare (not safe))
              (##fx< __tmp101908 __tmp101906))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101606%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__prototype-table-update!
           _%tab101606%_
           _%key101607%_
           _%prototype-table-update!101608%_
           _%default101609%_))))
    (define __prototype-table-update!
      (lambda (_%tab101556%_
               _%key101557%_
               _%prototype-table-update!101558%_
               _%default101559%_)
        (let ((_%table101562%_
               (let () (declare (not safe)) (&raw-table-table _%tab101556%_)))
              (_%seed101563%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101556%_))))
          (let* ((_%h101565%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101557%_))
                         _%seed101563%_))
                 (_%size101568%_ (vector-length _%table101562%_))
                 (_%entries101571%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101568%_ '2)))
                 (_%start101574%_
                  (let ((__tmp101909
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101565%_ _%entries101571%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101909 '1))))
            (let _%loop101578%_ ((_%probe101581%_ _%start101574%_)
                                 (_%i101583%_ '1)
                                 (_%deleted101585%_ '#f))
              (let ((_%k101588%_ (vector-ref _%table101562%_ _%probe101581%_)))
                (if (eq? _%k101588%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted101585%_
                          (begin
                            (vector-set!
                             _%table101562%_
                             _%deleted101585%_
                             _%key101557%_)
                            (vector-set!
                             _%table101562%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted101585%_ '1))
                             (_%prototype-table-update!101558%_
                              _%default101559%_))
                            ((lambda ()
                               (let ((__tmp101910
                                      (let ((__tmp101911
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101556%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101911 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101556%_
                                  __tmp101910)))))
                          (begin
                            (vector-set!
                             _%table101562%_
                             _%probe101581%_
                             _%key101557%_)
                            (vector-set!
                             _%table101562%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101581%_ '1))
                             (_%prototype-table-update!101558%_
                              _%default101559%_))
                            ((lambda ()
                               (let ((__tmp101912
                                      (let ((__tmp101913
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab101556%_))))
                                        (declare (not safe))
                                        (##fx- __tmp101913 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab101556%_
                                  __tmp101912))
                               (let ((__tmp101914
                                      (let ((__tmp101915
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab101556%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp101915 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab101556%_
                                  __tmp101914)))))))
                    (if (eq? _%k101588%_ (macro-deleted-obj))
                        (let ((__tmp101918
                               (let ((_%next-probe101595%_
                                      (fx+ _%start101574%_
                                           _%i101583%_
                                           (fx* _%i101583%_ _%i101583%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101595%_
                                  _%size101568%_)))
                              (__tmp101917
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101583%_ '1)))
                              (__tmp101916
                               (let ((_%$e101598%_ _%deleted101585%_))
                                 (if _%$e101598%_
                                     _%$e101598%_
                                     _%probe101581%_))))
                          (declare (not safe))
                          (_%loop101578%_ __tmp101918 __tmp101917 __tmp101916))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101557%_ _%k101588%_))
                            (let ()
                              (vector-set!
                               _%table101562%_
                               _%probe101581%_
                               _%key101557%_)
                              (vector-set!
                               _%table101562%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101581%_ '1))
                               (_%prototype-table-update!101558%_
                                (vector-ref
                                 _%table101562%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101581%_ '1))))))
                            (let ((__tmp101920
                                   (let ((_%next-probe101603%_
                                          (fx+ _%start101574%_
                                               _%i101583%_
                                               (fx* _%i101583%_ _%i101583%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101603%_
                                      _%size101568%_)))
                                  (__tmp101919
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101583%_ '1))))
                              (declare (not safe))
                              (_%loop101578%_
                               __tmp101920
                               __tmp101919
                               _%deleted101585%_)))))))))))
    (define prototype-table-delete!
      (lambda (_%tab101511%_ _%key101513%_)
        (let ((_%table101516%_
               (let () (declare (not safe)) (&raw-table-table _%tab101511%_)))
              (_%seed101518%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101511%_))))
          (let* ((_%h101521%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__interface-hash-key _%key101513%_))
                         _%seed101518%_))
                 (_%size101524%_ (vector-length _%table101516%_))
                 (_%entries101527%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101524%_ '2)))
                 (_%start101530%_
                  (let ((__tmp101921
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101521%_ _%entries101527%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101921 '1))))
            (let _%loop101534%_ ((_%probe101537%_ _%start101530%_)
                                 (_%i101539%_ '1))
              (let ((_%k101542%_ (vector-ref _%table101516%_ _%probe101537%_)))
                (if (eq? _%k101542%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k101542%_ (macro-deleted-obj))
                        (let ((__tmp101923
                               (let ((_%next-probe101547%_
                                      (fx+ _%start101530%_
                                           _%i101539%_
                                           (fx* _%i101539%_ _%i101539%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe101547%_
                                  _%size101524%_)))
                              (__tmp101922
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i101539%_ '1))))
                          (declare (not safe))
                          (_%loop101534%_ __tmp101923 __tmp101922))
                        (if (let ()
                              (declare (not safe))
                              (__interface-test-key _%key101513%_ _%k101542%_))
                            (let ()
                              (vector-set!
                               _%table101516%_
                               _%probe101537%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101516%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101537%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101924
                                        (let ((__tmp101925
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101511%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101925 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101511%_
                                    __tmp101924)))))
                            (let ((__tmp101927
                                   (let ((_%next-probe101553%_
                                          (fx+ _%start101530%_
                                               _%i101539%_
                                               (fx* _%i101539%_ _%i101539%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe101553%_
                                      _%size101524%_)))
                                  (__tmp101926
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i101539%_ '1))))
                              (declare (not safe))
                              (_%loop101534%_
                               __tmp101927
                               __tmp101926)))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes
      (let () (declare (not safe)) (make-prototype-table__% '#f '0)))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass101503%_)
        (let ((_%super101504101506%_
               (let () (declare (not safe)) (##type-super _%klass101503%_))))
          (if _%super101504101506%_
              (let ((_%super101509%_ _%super101504101506%_))
                (eq? (let () (declare (not safe)) (##type-id _%super101509%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor101388%_ _%klass101389%_ _%obj-klass101390%_)
        (let ((_%method-table101392%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101390%_))))
          (let _%loop101395%_ ((_%rest101398%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101388%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101400%_ '0)
                               (_%methods101402%_ '()))
            (let* ((_%rest101404101412%_ _%rest101398%_)
                   (_%else101406101474%_
                    (lambda ()
                      (let ((_%prototype101420%_
                             (let ((__obj101869
                                    (let ((__tmp101928
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101400%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101389%_
                                       __tmp101928))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101869 '#f))
                               __obj101869)))
                        (let _%loop101423%_ ((_%rest101425%_ _%methods101402%_)
                                             (_%off101426%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101400%_ '1))))
                          (let* ((_%rest101428101436%_ _%rest101425%_)
                                 (_%else101430101455%_
                                  (lambda ()
                                    (let ((_%prototype-key101444%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101389%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101390%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101449%_ ()
                                          (if (let ((__tmp101929
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101929 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101449%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101444%_
                                         _%prototype101420%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101453%_)
                                         _%prototype101453%_)
                                       _%prototype101420%_))))
                                 (_%K101432101462%_
                                  (lambda (_%rest101458%_ _%method101459%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101420%_
                                       _%method101459%_
                                       _%off101426%_
                                       _%klass101389%_
                                       '#f))
                                    (let ((__tmp101930
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101426%_ '1))))
                                      (declare (not safe))
                                      (_%loop101423%_
                                       _%rest101458%_
                                       __tmp101930)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101428101436%_))
                                (let ((_%hd101433101465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101428101436%_)))
                                      (_%tl101434101467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101428101436%_))))
                                  (let* ((_%method101470%_ _%hd101433101465%_)
                                         (_%rest101472%_ _%tl101434101467%_))
                                    (declare (not safe))
                                    (_%K101432101462%_
                                     _%rest101472%_
                                     _%method101470%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101430101455%_))))))))
                   (_%K101408101491%_
                    (lambda (_%rest101477%_ _%method-name101478%_)
                      (let ((_%$e101481%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101392%_
                                _%method-name101478%_
                                '#f))))
                        (if _%$e101481%_
                            ((lambda (_%method101484%_)
                               (let ((__tmp101932
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101400%_ '1)))
                                     (__tmp101931
                                      (cons _%method101484%_
                                            _%methods101402%_)))
                                 (declare (not safe))
                                 (_%loop101395%_
                                  _%rest101477%_
                                  __tmp101932
                                  __tmp101931)))
                             _%$e101481%_)
                            (let ()
                              ((lambda (_%klass101487%_
                                        _%obj-klass101488%_
                                        _%method-name101489%_)
                                 (let ((__tmp101934
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%klass101487%_)))
                                       (__tmp101933
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _%obj-klass101488%_))))
                                   (declare (not safe))
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass101487%_
                                    'interface-id:
                                    __tmp101934
                                    'class:
                                    _%obj-klass101488%_
                                    'class-id:
                                    __tmp101933
                                    'method:
                                    _%method-name101489%_))
                                 '#!void)
                               _%klass101389%_
                               _%obj-klass101390%_
                               _%method-name101478%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101404101412%_))
                  (let ((_%hd101409101494%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101404101412%_)))
                        (_%tl101410101496%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101404101412%_))))
                    (let* ((_%method-name101499%_ _%hd101409101494%_)
                           (_%rest101501%_ _%tl101410101496%_))
                      (declare (not safe))
                      (_%K101408101491%_
                       _%rest101501%_
                       _%method-name101499%_)))
                  (let () (declare (not safe)) (_%else101406101474%_))))))))
    (define try-create-prototype
      (lambda (_%descriptor101273%_ _%klass101274%_ _%obj-klass101275%_)
        (let ((_%method-table101277%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass101275%_))))
          (let _%loop101280%_ ((_%rest101283%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor101273%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count101285%_ '0)
                               (_%methods101287%_ '()))
            (let* ((_%rest101289101297%_ _%rest101283%_)
                   (_%else101291101359%_
                    (lambda ()
                      (let ((_%prototype101305%_
                             (let ((__obj101870
                                    (let ((__tmp101935
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count101285%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass101274%_
                                       __tmp101935))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj101870 '#f))
                               __obj101870)))
                        (let _%loop101308%_ ((_%rest101310%_ _%methods101287%_)
                                             (_%off101311%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count101285%_ '1))))
                          (let* ((_%rest101313101321%_ _%rest101310%_)
                                 (_%else101315101340%_
                                  (lambda ()
                                    (let ((_%prototype-key101329%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass101274%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass101275%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again101334%_ ()
                                          (if (let ((__tmp101936
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp101936 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%again101334%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (prototype-table-set!
                                         __interface-prototypes
                                         _%prototype-key101329%_
                                         _%prototype101305%_))
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype101338%_)
                                         _%prototype101338%_)
                                       _%prototype101305%_))))
                                 (_%K101317101347%_
                                  (lambda (_%rest101343%_ _%method101344%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype101305%_
                                       _%method101344%_
                                       _%off101311%_
                                       _%klass101274%_
                                       '#f))
                                    (let ((__tmp101937
                                           (let ()
                                             (declare (not safe))
                                             (##fx- _%off101311%_ '1))))
                                      (declare (not safe))
                                      (_%loop101308%_
                                       _%rest101343%_
                                       __tmp101937)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest101313101321%_))
                                (let ((_%hd101318101350%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest101313101321%_)))
                                      (_%tl101319101352%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest101313101321%_))))
                                  (let* ((_%method101355%_ _%hd101318101350%_)
                                         (_%rest101357%_ _%tl101319101352%_))
                                    (declare (not safe))
                                    (_%K101317101347%_
                                     _%rest101357%_
                                     _%method101355%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else101315101340%_))))))))
                   (_%K101293101376%_
                    (lambda (_%rest101362%_ _%method-name101363%_)
                      (let ((_%$e101366%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table101277%_
                                _%method-name101363%_
                                '#f))))
                        (if _%$e101366%_
                            ((lambda (_%method101369%_)
                               (let ((__tmp101939
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%count101285%_ '1)))
                                     (__tmp101938
                                      (cons _%method101369%_
                                            _%methods101287%_)))
                                 (declare (not safe))
                                 (_%loop101280%_
                                  _%rest101362%_
                                  __tmp101939
                                  __tmp101938)))
                             _%$e101366%_)
                            (let ()
                              ((lambda (_%klass101372%_
                                        _%obj-klass101373%_
                                        _%method-name101374%_)
                                 '#f)
                               _%klass101274%_
                               _%obj-klass101275%_
                               _%method-name101363%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest101289101297%_))
                  (let ((_%hd101294101379%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest101289101297%_)))
                        (_%tl101295101381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest101289101297%_))))
                    (let* ((_%method-name101384%_ _%hd101294101379%_)
                           (_%rest101386%_ _%tl101295101381%_))
                      (declare (not safe))
                      (_%K101293101376%_
                       _%rest101386%_
                       _%method-name101384%_)))
                  (let () (declare (not safe)) (_%else101291101359%_))))))))
    (define cast
      (lambda (_%descriptor101231%_ _%obj101233%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101237%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101231%_ '1 '#f '#f)))
               (_%klass-id101240%_
                (let () (declare (not safe)) (##type-id _%klass101237%_)))
               (_%obj-klass101243%_
                (let () (declare (not safe)) (class-of _%obj101233%_)))
               (_%obj-klass-id101246%_
                (let () (declare (not safe)) (##type-id _%obj-klass101243%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101240%_ _%obj-klass-id101246%_))
              (let () _%obj101233%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101243%_))
                  (let ((__tmp101940
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101233%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (cast _%descriptor101231%_ __tmp101940))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101255%_ ()
                        (if (let ((__tmp101941
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101941 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101255%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101240%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101246%_))
                    (let ((_%prototype101266%_
                           (let ((_%$e101259%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101259%_
                                 ((lambda (_%prototype101262%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101262%_)
                                  _%$e101259%_)
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
                                      _%descriptor101231%_
                                      _%klass101237%_
                                      _%obj-klass101243%_)))))))
                      ((lambda (_%prototype101268%_ _%obj101269%_)
                         (let ((_%instance101271%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype101268%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance101271%_
                              _%obj101269%_
                              '1
                              '#f
                              'cast))
                           _%instance101271%_))
                       _%prototype101266%_
                       _%obj101233%_))))))))
    (define try-cast
      (lambda (_%descriptor101189%_ _%obj101191%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101195%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101189%_ '1 '#f '#f)))
               (_%klass-id101198%_
                (let () (declare (not safe)) (##type-id _%klass101195%_)))
               (_%obj-klass101201%_
                (let () (declare (not safe)) (class-of _%obj101191%_)))
               (_%obj-klass-id101204%_
                (let () (declare (not safe)) (##type-id _%obj-klass101201%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101198%_ _%obj-klass-id101204%_))
              (let () _%obj101191%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101201%_))
                  (let ((__tmp101942
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101191%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (try-cast _%descriptor101189%_ __tmp101942))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101213%_ ()
                        (if (let ((__tmp101943
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101943 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101213%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101198%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101204%_))
                    (let ((_%prototype101224%_
                           (let ((_%$e101217%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101217%_
                                 ((lambda (_%prototype101220%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101220%_)
                                  _%$e101217%_)
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
                                      _%descriptor101189%_
                                      _%klass101195%_
                                      _%obj-klass101201%_)))))))
                      ((lambda (_%prototype101226%_ _%obj101227%_)
                         (if _%prototype101226%_
                             (let ((_%instance101229%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype101226%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance101229%_
                                  _%obj101227%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance101229%_)
                             '#f))
                       _%prototype101224%_
                       _%obj101191%_))))))))
    (define satisfies?
      (lambda (_%descriptor101149%_ _%obj101151%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass101155%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor101149%_ '1 '#f '#f)))
               (_%klass-id101158%_
                (let () (declare (not safe)) (##type-id _%klass101155%_)))
               (_%obj-klass101161%_
                (let () (declare (not safe)) (class-of _%obj101151%_)))
               (_%obj-klass-id101164%_
                (let () (declare (not safe)) (##type-id _%obj-klass101161%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id101158%_ _%obj-klass-id101164%_))
              (let () _%obj101151%_)
              (if (let ()
                    (declare (not safe))
                    (interface-subclass? _%obj-klass101161%_))
                  (let ((__tmp101944
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%obj101151%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (satisfies? _%descriptor101149%_ __tmp101944))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again101173%_ ()
                        (if (let ((__tmp101945
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp101945 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (let ()
                                (declare (not safe))
                                (_%again101173%_))))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id101158%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id101164%_))
                    (let ((_%prototype101184%_
                           (let ((_%$e101177%_
                                  (let ()
                                    (declare (not safe))
                                    (prototype-table-ref
                                     __interface-prototypes
                                     __interface-prototypes-key
                                     '#f))))
                             (if _%$e101177%_
                                 ((lambda (_%prototype101180%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype101180%_)
                                  _%$e101177%_)
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
                                      _%descriptor101149%_
                                      _%klass101155%_
                                      _%obj-klass101161%_)))))))
                      ((lambda (_%prototype101186%_ _%obj101187%_)
                         (if _%prototype101186%_ '#t '#f))
                       _%prototype101184%_
                       _%obj101151%_))))))))))
