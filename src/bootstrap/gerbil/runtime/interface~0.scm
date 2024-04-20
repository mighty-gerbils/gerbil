(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1713631265)
  (begin
    (define CastError::t
      (let ((__tmp104958 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp104958
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args104951%_
        (apply make-instance CastError::t _%$args104951%_)))
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
      (lambda (_%where104825%_ _%message104826%_ . _%irritants104827%_)
        (let ((__tmp104959
               (let ((__obj104954
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj104954
                    _%message104826%_
                    'where:
                    _%where104825%_
                    'irritants:
                    _%irritants104827%_))
                 __obj104954)))
          (declare (not safe))
          (raise __tmp104959))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp104961 (list)) (__tmp104960 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp104961
         '(__object)
         __tmp104960
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
      (let ((__tmp104963 (list))
            (__tmp104962
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp104963
         '(type methods)
         __tmp104962
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args104822%_
        (apply make-instance interface-descriptor::t _%$args104822%_)))
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
      (lambda (_%key104820%_)
        (let ((__tmp104965
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key104820%_))))
              (__tmp104964
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key104820%_)))))
          (declare (not safe))
          (##fxxor __tmp104965 __tmp104964))))
    (define __interface-test-key
      (lambda (_%a104817%_ _%b104818%_)
        (if (let ((__tmp104967
                   (let () (declare (not safe)) (##car _%a104817%_)))
                  (__tmp104966
                   (let () (declare (not safe)) (##car _%b104818%_))))
              (declare (not safe))
              (##eq? __tmp104967 __tmp104966))
            (let ((__tmp104969
                   (let () (declare (not safe)) (##cdr _%a104817%_)))
                  (__tmp104968
                   (let () (declare (not safe)) (##cdr _%b104818%_))))
              (declare (not safe))
              (##eq? __tmp104969 __tmp104968))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint104798%_ _%seed104800%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104798%_
           __interface-hash-key
           __interface-test-key
           _%seed104800%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint104806%_ '#f) (_%seed104808%_ '0))
          (make-prototype-table__% _%size-hint104806%_ _%seed104808%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint104810%_)
        (let ((_%seed104812%_ '0))
          (make-prototype-table__% _%size-hint104810%_ _%seed104812%_))))
    (define make-prototype-table
      (lambda _g104971_
        (let ((_g104970_ (let () (declare (not safe)) (##length _g104971_))))
          (cond ((let () (declare (not safe)) (##fx= _g104970_ 0))
                 (apply make-prototype-table__0 _g104971_))
                ((let () (declare (not safe)) (##fx= _g104970_ 1))
                 (apply make-prototype-table__1 _g104971_))
                ((let () (declare (not safe)) (##fx= _g104970_ 2))
                 (apply make-prototype-table__% _g104971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g104971_))))))
    (define prototype-table-ref
      (lambda (_%tab104751%_ _%key104752%_ _%default104753%_)
        (let ((_%table104755%_
               (let () (declare (not safe)) (&raw-table-table _%tab104751%_)))
              (_%seed104756%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104751%_))))
          (let* ((_%h104758%_
                  (fxxor (__interface-hash-key _%key104752%_) _%seed104756%_))
                 (_%size104761%_ (vector-length _%table104755%_))
                 (_%entries104764%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104761%_ '2)))
                 (_%start104767%_
                  (let ((__tmp104972
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104758%_ _%entries104764%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104972 '1))))
            (let _%loop104771%_ ((_%probe104774%_ _%start104767%_)
                                 (_%i104776%_ '1)
                                 (_%deleted104778%_ '#f))
              (let ((_%k104781%_ (vector-ref _%table104755%_ _%probe104774%_)))
                (if (eq? _%k104781%_ (macro-unused-obj))
                    _%default104753%_
                    (if (eq? _%k104781%_ (macro-deleted-obj))
                        (_%loop104771%_
                         (let ((_%next-probe104786%_
                                (fx+ _%start104767%_
                                     _%i104776%_
                                     (fx* _%i104776%_ _%i104776%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104786%_ _%size104761%_))
                         (let () (declare (not safe)) (##fx+ _%i104776%_ '1))
                         (let ((_%$e104789%_ _%deleted104778%_))
                           (if _%$e104789%_ _%$e104789%_ _%probe104774%_)))
                        (if (__interface-test-key _%key104752%_ _%k104781%_)
                            (vector-ref
                             _%table104755%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104774%_ '1)))
                            (_%loop104771%_
                             (let ((_%next-probe104794%_
                                    (fx+ _%start104767%_
                                         _%i104776%_
                                         (fx* _%i104776%_ _%i104776%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104794%_
                                _%size104761%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104776%_ '1))
                             _%deleted104778%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab104747%_ _%key104748%_ _%value104749%_)
        (if (let ((__tmp104975
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104747%_)))
                  (__tmp104973
                   (let ((__tmp104974
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104747%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp104974 '4))))
              (declare (not safe))
              (##fx< __tmp104975 __tmp104973))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104747%_))
            '#!void)
        (__prototype-table-set! _%tab104747%_ _%key104748%_ _%value104749%_)))
    (define __prototype-table-set!
      (lambda (_%tab104698%_ _%key104699%_ _%value104700%_)
        (let ((_%table104703%_
               (let () (declare (not safe)) (&raw-table-table _%tab104698%_)))
              (_%seed104704%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104698%_))))
          (let* ((_%h104706%_
                  (fxxor (__interface-hash-key _%key104699%_) _%seed104704%_))
                 (_%size104709%_ (vector-length _%table104703%_))
                 (_%entries104712%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104709%_ '2)))
                 (_%start104715%_
                  (let ((__tmp104976
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104706%_ _%entries104712%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104976 '1))))
            (let _%loop104719%_ ((_%probe104722%_ _%start104715%_)
                                 (_%i104724%_ '1)
                                 (_%deleted104726%_ '#f))
              (let ((_%k104729%_ (vector-ref _%table104703%_ _%probe104722%_)))
                (if (eq? _%k104729%_ (macro-unused-obj))
                    (if _%deleted104726%_
                        (begin
                          (vector-set!
                           _%table104703%_
                           _%deleted104726%_
                           _%key104699%_)
                          (vector-set!
                           _%table104703%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104726%_ '1))
                           _%value104700%_)
                          ((lambda ()
                             (let ((__tmp104977
                                    (let ((__tmp104978
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104698%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104978 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104698%_
                                __tmp104977)))))
                        (begin
                          (vector-set!
                           _%table104703%_
                           _%probe104722%_
                           _%key104699%_)
                          (vector-set!
                           _%table104703%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104722%_ '1))
                           _%value104700%_)
                          ((lambda ()
                             (let ((__tmp104979
                                    (let ((__tmp104980
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104698%_))))
                                      (declare (not safe))
                                      (##fx- __tmp104980 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104698%_
                                __tmp104979))
                             (let ((__tmp104981
                                    (let ((__tmp104982
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104698%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104982 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104698%_
                                __tmp104981))))))
                    (if (eq? _%k104729%_ (macro-deleted-obj))
                        (_%loop104719%_
                         (let ((_%next-probe104736%_
                                (fx+ _%start104715%_
                                     _%i104724%_
                                     (fx* _%i104724%_ _%i104724%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104736%_ _%size104709%_))
                         (let () (declare (not safe)) (##fx+ _%i104724%_ '1))
                         (let ((_%$e104739%_ _%deleted104726%_))
                           (if _%$e104739%_ _%$e104739%_ _%probe104722%_)))
                        (if (__interface-test-key _%key104699%_ _%k104729%_)
                            (let ()
                              (vector-set!
                               _%table104703%_
                               _%probe104722%_
                               _%key104699%_)
                              (vector-set!
                               _%table104703%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104722%_ '1))
                               _%value104700%_))
                            (_%loop104719%_
                             (let ((_%next-probe104744%_
                                    (fx+ _%start104715%_
                                         _%i104724%_
                                         (fx* _%i104724%_ _%i104724%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104744%_
                                _%size104709%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104724%_ '1))
                             _%deleted104726%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab104693%_
               _%key104694%_
               _%prototype-table-update!104695%_
               _%default104696%_)
        (if (let ((__tmp104985
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104693%_)))
                  (__tmp104983
                   (let ((__tmp104984
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104693%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp104984 '4))))
              (declare (not safe))
              (##fx< __tmp104985 __tmp104983))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104693%_))
            '#!void)
        (__prototype-table-update!
         _%tab104693%_
         _%key104694%_
         _%prototype-table-update!104695%_
         _%default104696%_)))
    (define __prototype-table-update!
      (lambda (_%tab104643%_
               _%key104644%_
               _%prototype-table-update!104645%_
               _%default104646%_)
        (let ((_%table104649%_
               (let () (declare (not safe)) (&raw-table-table _%tab104643%_)))
              (_%seed104650%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104643%_))))
          (let* ((_%h104652%_
                  (fxxor (__interface-hash-key _%key104644%_) _%seed104650%_))
                 (_%size104655%_ (vector-length _%table104649%_))
                 (_%entries104658%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104655%_ '2)))
                 (_%start104661%_
                  (let ((__tmp104986
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104652%_ _%entries104658%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104986 '1))))
            (let _%loop104665%_ ((_%probe104668%_ _%start104661%_)
                                 (_%i104670%_ '1)
                                 (_%deleted104672%_ '#f))
              (let ((_%k104675%_ (vector-ref _%table104649%_ _%probe104668%_)))
                (if (eq? _%k104675%_ (macro-unused-obj))
                    (if _%deleted104672%_
                        (begin
                          (vector-set!
                           _%table104649%_
                           _%deleted104672%_
                           _%key104644%_)
                          (vector-set!
                           _%table104649%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104672%_ '1))
                           (_%prototype-table-update!104645%_
                            _%default104646%_))
                          ((lambda ()
                             (let ((__tmp104987
                                    (let ((__tmp104988
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104643%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104988 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104643%_
                                __tmp104987)))))
                        (begin
                          (vector-set!
                           _%table104649%_
                           _%probe104668%_
                           _%key104644%_)
                          (vector-set!
                           _%table104649%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104668%_ '1))
                           (_%prototype-table-update!104645%_
                            _%default104646%_))
                          ((lambda ()
                             (let ((__tmp104989
                                    (let ((__tmp104990
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104643%_))))
                                      (declare (not safe))
                                      (##fx- __tmp104990 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104643%_
                                __tmp104989))
                             (let ((__tmp104991
                                    (let ((__tmp104992
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104643%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp104992 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104643%_
                                __tmp104991))))))
                    (if (eq? _%k104675%_ (macro-deleted-obj))
                        (_%loop104665%_
                         (let ((_%next-probe104682%_
                                (fx+ _%start104661%_
                                     _%i104670%_
                                     (fx* _%i104670%_ _%i104670%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104682%_ _%size104655%_))
                         (let () (declare (not safe)) (##fx+ _%i104670%_ '1))
                         (let ((_%$e104685%_ _%deleted104672%_))
                           (if _%$e104685%_ _%$e104685%_ _%probe104668%_)))
                        (if (__interface-test-key _%key104644%_ _%k104675%_)
                            (let ()
                              (vector-set!
                               _%table104649%_
                               _%probe104668%_
                               _%key104644%_)
                              (vector-set!
                               _%table104649%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104668%_ '1))
                               (_%prototype-table-update!104645%_
                                (vector-ref
                                 _%table104649%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104668%_ '1))))))
                            (_%loop104665%_
                             (let ((_%next-probe104690%_
                                    (fx+ _%start104661%_
                                         _%i104670%_
                                         (fx* _%i104670%_ _%i104670%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104690%_
                                _%size104655%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104670%_ '1))
                             _%deleted104672%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab104598%_ _%key104600%_)
        (let ((_%table104603%_
               (let () (declare (not safe)) (&raw-table-table _%tab104598%_)))
              (_%seed104605%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104598%_))))
          (let* ((_%h104608%_
                  (fxxor (__interface-hash-key _%key104600%_) _%seed104605%_))
                 (_%size104611%_ (vector-length _%table104603%_))
                 (_%entries104614%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104611%_ '2)))
                 (_%start104617%_
                  (let ((__tmp104993
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104608%_ _%entries104614%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp104993 '1))))
            (let _%loop104621%_ ((_%probe104624%_ _%start104617%_)
                                 (_%i104626%_ '1))
              (let ((_%k104629%_ (vector-ref _%table104603%_ _%probe104624%_)))
                (if (eq? _%k104629%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104629%_ (macro-deleted-obj))
                        (_%loop104621%_
                         (let ((_%next-probe104634%_
                                (fx+ _%start104617%_
                                     _%i104626%_
                                     (fx* _%i104626%_ _%i104626%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104634%_ _%size104611%_))
                         (let () (declare (not safe)) (##fx+ _%i104626%_ '1)))
                        (if (__interface-test-key _%key104600%_ _%k104629%_)
                            (let ()
                              (vector-set!
                               _%table104603%_
                               _%probe104624%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104603%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104624%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp104994
                                        (let ((__tmp104995
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104598%_))))
                                          (declare (not safe))
                                          (##fx- __tmp104995 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104598%_
                                    __tmp104994)))))
                            (_%loop104621%_
                             (let ((_%next-probe104640%_
                                    (fx+ _%start104617%_
                                         _%i104626%_
                                         (fx* _%i104626%_ _%i104626%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104640%_
                                _%size104611%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104626%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass104590%_)
        (let ((_%super104591104593%_
               (let () (declare (not safe)) (##type-super _%klass104590%_))))
          (if _%super104591104593%_
              (let ((_%super104596%_ _%super104591104593%_))
                (eq? (let () (declare (not safe)) (##type-id _%super104596%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor104475%_ _%klass104476%_ _%obj-klass104477%_)
        (let ((_%method-table104479%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104477%_))))
          (let _%loop104482%_ ((_%rest104485%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104475%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104487%_ '0)
                               (_%methods104489%_ '()))
            (let* ((_%rest104491104499%_ _%rest104485%_)
                   (_%else104493104561%_
                    (lambda ()
                      (let ((_%prototype104507%_
                             (let ((__obj104956
                                    (let ((__tmp104996
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104487%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104476%_
                                       __tmp104996))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj104956 '#f))
                               __obj104956)))
                        (let _%loop104510%_ ((_%rest104512%_ _%methods104489%_)
                                             (_%off104513%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104487%_ '1))))
                          (let* ((_%rest104515104523%_ _%rest104512%_)
                                 (_%else104517104542%_
                                  (lambda ()
                                    (let ((_%prototype-key104531%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104476%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104477%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104536%_ ()
                                          (if (let ((__tmp104997
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp104997 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104536%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104531%_
                                       _%prototype104507%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104540%_)
                                         _%prototype104540%_)
                                       _%prototype104507%_))))
                                 (_%K104519104549%_
                                  (lambda (_%rest104545%_ _%method104546%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104507%_
                                       _%method104546%_
                                       _%off104513%_
                                       _%klass104476%_
                                       '#f))
                                    (_%loop104510%_
                                     _%rest104545%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104513%_ '1))))))
                            (if (pair? _%rest104515104523%_)
                                (let ((_%hd104520104552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104515104523%_)))
                                      (_%tl104521104554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104515104523%_))))
                                  (let* ((_%method104557%_ _%hd104520104552%_)
                                         (_%rest104559%_ _%tl104521104554%_))
                                    (_%K104519104549%_
                                     _%rest104559%_
                                     _%method104557%_)))
                                (_%else104517104542%_)))))))
                   (_%K104495104578%_
                    (lambda (_%rest104564%_ _%method-name104565%_)
                      (let ((_%$e104568%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104479%_
                                _%method-name104565%_
                                '#f))))
                        (if _%$e104568%_
                            ((lambda (_%method104571%_)
                               (_%loop104482%_
                                _%rest104564%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104487%_ '1))
                                (cons _%method104571%_ _%methods104489%_)))
                             _%$e104568%_)
                            ((lambda (_%klass104574%_
                                      _%obj-klass104575%_
                                      _%method-name104576%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass104574%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass104574%_))
                                'class:
                                _%obj-klass104575%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass104575%_))
                                'method:
                                _%method-name104576%_)
                               '#!void)
                             _%klass104476%_
                             _%obj-klass104477%_
                             _%method-name104565%_))))))
              (if (pair? _%rest104491104499%_)
                  (let ((_%hd104496104581%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104491104499%_)))
                        (_%tl104497104583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104491104499%_))))
                    (let* ((_%method-name104586%_ _%hd104496104581%_)
                           (_%rest104588%_ _%tl104497104583%_))
                      (_%K104495104578%_
                       _%rest104588%_
                       _%method-name104586%_)))
                  (_%else104493104561%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor104360%_ _%klass104361%_ _%obj-klass104362%_)
        (let ((_%method-table104364%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass104362%_))))
          (let _%loop104367%_ ((_%rest104370%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor104360%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count104372%_ '0)
                               (_%methods104374%_ '()))
            (let* ((_%rest104376104384%_ _%rest104370%_)
                   (_%else104378104446%_
                    (lambda ()
                      (let ((_%prototype104392%_
                             (let ((__obj104957
                                    (let ((__tmp104998
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count104372%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass104361%_
                                       __tmp104998))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj104957 '#f))
                               __obj104957)))
                        (let _%loop104395%_ ((_%rest104397%_ _%methods104374%_)
                                             (_%off104398%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count104372%_ '1))))
                          (let* ((_%rest104400104408%_ _%rest104397%_)
                                 (_%else104402104427%_
                                  (lambda ()
                                    (let ((_%prototype-key104416%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass104361%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass104362%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again104421%_ ()
                                          (if (let ((__tmp104999
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp104999 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again104421%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key104416%_
                                       _%prototype104392%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype104425%_)
                                         _%prototype104425%_)
                                       _%prototype104392%_))))
                                 (_%K104404104434%_
                                  (lambda (_%rest104430%_ _%method104431%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype104392%_
                                       _%method104431%_
                                       _%off104398%_
                                       _%klass104361%_
                                       '#f))
                                    (_%loop104395%_
                                     _%rest104430%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off104398%_ '1))))))
                            (if (pair? _%rest104400104408%_)
                                (let ((_%hd104405104437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest104400104408%_)))
                                      (_%tl104406104439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest104400104408%_))))
                                  (let* ((_%method104442%_ _%hd104405104437%_)
                                         (_%rest104444%_ _%tl104406104439%_))
                                    (_%K104404104434%_
                                     _%rest104444%_
                                     _%method104442%_)))
                                (_%else104402104427%_)))))))
                   (_%K104380104463%_
                    (lambda (_%rest104449%_ _%method-name104450%_)
                      (let ((_%$e104453%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table104364%_
                                _%method-name104450%_
                                '#f))))
                        (if _%$e104453%_
                            ((lambda (_%method104456%_)
                               (_%loop104367%_
                                _%rest104449%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count104372%_ '1))
                                (cons _%method104456%_ _%methods104374%_)))
                             _%$e104453%_)
                            ((lambda (_%klass104459%_
                                      _%obj-klass104460%_
                                      _%method-name104461%_)
                               '#f)
                             _%klass104361%_
                             _%obj-klass104362%_
                             _%method-name104450%_))))))
              (if (pair? _%rest104376104384%_)
                  (let ((_%hd104381104466%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest104376104384%_)))
                        (_%tl104382104468%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest104376104384%_))))
                    (let* ((_%method-name104471%_ _%hd104381104466%_)
                           (_%rest104473%_ _%tl104382104468%_))
                      (_%K104380104463%_
                       _%rest104473%_
                       _%method-name104471%_)))
                  (_%else104378104446%_)))))))
    (define cast
      (lambda (_%descriptor104318%_ _%obj104320%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104318%_ '1 '#f '#f)))
               (_%klass-id104327%_
                (let () (declare (not safe)) (##type-id _%klass104324%_)))
               (_%obj-klass104330%_
                (let () (declare (not safe)) (class-of _%obj104320%_)))
               (_%obj-klass-id104333%_
                (let () (declare (not safe)) (##type-id _%obj-klass104330%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104327%_ _%obj-klass-id104333%_))
              _%obj104320%_
              (if (interface-subclass? _%obj-klass104330%_)
                  (cast _%descriptor104318%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj104320%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104342%_ ()
                        (if (let ((__tmp105000
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105000 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104342%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104327%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104333%_))
                    (let ((_%prototype104353%_
                           (let ((_%$e104346%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104346%_
                                 ((lambda (_%prototype104349%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104349%_)
                                  _%$e104346%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor104318%_
                                    _%klass104324%_
                                    _%obj-klass104330%_))))))
                      ((lambda (_%prototype104355%_ _%obj104356%_)
                         (let ((_%instance104358%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype104355%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance104358%_
                              _%obj104356%_
                              '1
                              '#f
                              'cast))
                           _%instance104358%_))
                       _%prototype104353%_
                       _%obj104320%_))))))))
    (define try-cast
      (lambda (_%descriptor104276%_ _%obj104278%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104282%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104276%_ '1 '#f '#f)))
               (_%klass-id104285%_
                (let () (declare (not safe)) (##type-id _%klass104282%_)))
               (_%obj-klass104288%_
                (let () (declare (not safe)) (class-of _%obj104278%_)))
               (_%obj-klass-id104291%_
                (let () (declare (not safe)) (##type-id _%obj-klass104288%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104285%_ _%obj-klass-id104291%_))
              _%obj104278%_
              (if (interface-subclass? _%obj-klass104288%_)
                  (try-cast
                   _%descriptor104276%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104278%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104300%_ ()
                        (if (let ((__tmp105001
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105001 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104300%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104285%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104291%_))
                    (let ((_%prototype104311%_
                           (let ((_%$e104304%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104304%_
                                 ((lambda (_%prototype104307%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104307%_)
                                  _%$e104304%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104276%_
                                    _%klass104282%_
                                    _%obj-klass104288%_))))))
                      ((lambda (_%prototype104313%_ _%obj104314%_)
                         (if _%prototype104313%_
                             (let ((_%instance104316%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype104313%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance104316%_
                                  _%obj104314%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance104316%_)
                             '#f))
                       _%prototype104311%_
                       _%obj104278%_))))))))
    (define satisfies?
      (lambda (_%descriptor104236%_ _%obj104238%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass104242%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor104236%_ '1 '#f '#f)))
               (_%klass-id104245%_
                (let () (declare (not safe)) (##type-id _%klass104242%_)))
               (_%obj-klass104248%_
                (let () (declare (not safe)) (class-of _%obj104238%_)))
               (_%obj-klass-id104251%_
                (let () (declare (not safe)) (##type-id _%obj-klass104248%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id104245%_ _%obj-klass-id104251%_))
              _%obj104238%_
              (if (interface-subclass? _%obj-klass104248%_)
                  (satisfies?
                   _%descriptor104236%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj104238%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again104260%_ ()
                        (if (let ((__tmp105002
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp105002 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again104260%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id104245%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id104251%_))
                    (let ((_%prototype104271%_
                           (let ((_%$e104264%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e104264%_
                                 ((lambda (_%prototype104267%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype104267%_)
                                  _%$e104264%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor104236%_
                                    _%klass104242%_
                                    _%obj-klass104248%_))))))
                      ((lambda (_%prototype104273%_ _%obj104274%_)
                         (if _%prototype104273%_ '#t '#f))
                       _%prototype104271%_
                       _%obj104238%_))))))))))
