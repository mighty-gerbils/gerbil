(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1713001406)
  (begin
    (define CastError::t
      (let ((__tmp103442 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp103442
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args103435%_
        (apply make-instance CastError::t _%$args103435%_)))
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
      (lambda (_%where103309%_ _%message103310%_ . _%irritants103311%_)
        (let ((__tmp103443
               (let ((__obj103438
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj103438
                    _%message103310%_
                    'where:
                    _%where103309%_
                    'irritants:
                    _%irritants103311%_))
                 __obj103438)))
          (declare (not safe))
          (raise __tmp103443))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp103445 (list)) (__tmp103444 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp103445
         '(__object)
         __tmp103444
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
      (let ((__tmp103447 (list))
            (__tmp103446
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp103447
         '(type methods)
         __tmp103446
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103306%_
        (apply make-instance interface-descriptor::t _%$args103306%_)))
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
      (lambda (_%key103304%_)
        (let ((__tmp103449
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103304%_))))
              (__tmp103448
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103304%_)))))
          (declare (not safe))
          (##fxxor __tmp103449 __tmp103448))))
    (define __interface-test-key
      (lambda (_%a103301%_ _%b103302%_)
        (if (let ((__tmp103451
                   (let () (declare (not safe)) (##car _%a103301%_)))
                  (__tmp103450
                   (let () (declare (not safe)) (##car _%b103302%_))))
              (declare (not safe))
              (##eq? __tmp103451 __tmp103450))
            (let ((__tmp103453
                   (let () (declare (not safe)) (##cdr _%a103301%_)))
                  (__tmp103452
                   (let () (declare (not safe)) (##cdr _%b103302%_))))
              (declare (not safe))
              (##eq? __tmp103453 __tmp103452))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103282%_ _%seed103284%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103282%_
           __interface-hash-key
           __interface-test-key
           _%seed103284%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103290%_ '#f) (_%seed103292%_ '0))
          (make-prototype-table__% _%size-hint103290%_ _%seed103292%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103294%_)
        (let ((_%seed103296%_ '0))
          (make-prototype-table__% _%size-hint103294%_ _%seed103296%_))))
    (define make-prototype-table
      (lambda _g103455_
        (let ((_g103454_ (let () (declare (not safe)) (##length _g103455_))))
          (cond ((let () (declare (not safe)) (##fx= _g103454_ 0))
                 (apply make-prototype-table__0 _g103455_))
                ((let () (declare (not safe)) (##fx= _g103454_ 1))
                 (apply make-prototype-table__1 _g103455_))
                ((let () (declare (not safe)) (##fx= _g103454_ 2))
                 (apply make-prototype-table__% _g103455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g103455_))))))
    (define prototype-table-ref
      (lambda (_%tab103235%_ _%key103236%_ _%default103237%_)
        (let ((_%table103239%_
               (let () (declare (not safe)) (&raw-table-table _%tab103235%_)))
              (_%seed103240%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103235%_))))
          (let* ((_%h103242%_
                  (fxxor (__interface-hash-key _%key103236%_) _%seed103240%_))
                 (_%size103245%_ (vector-length _%table103239%_))
                 (_%entries103248%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103245%_ '2)))
                 (_%start103251%_
                  (let ((__tmp103456
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103242%_ _%entries103248%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103456 '1))))
            (let _%loop103255%_ ((_%probe103258%_ _%start103251%_)
                                 (_%i103260%_ '1)
                                 (_%deleted103262%_ '#f))
              (let ((_%k103265%_ (vector-ref _%table103239%_ _%probe103258%_)))
                (if (eq? _%k103265%_ (macro-unused-obj))
                    _%default103237%_
                    (if (eq? _%k103265%_ (macro-deleted-obj))
                        (_%loop103255%_
                         (let ((_%next-probe103270%_
                                (fx+ _%start103251%_
                                     _%i103260%_
                                     (fx* _%i103260%_ _%i103260%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103270%_ _%size103245%_))
                         (let () (declare (not safe)) (##fx+ _%i103260%_ '1))
                         (let ((_%$e103273%_ _%deleted103262%_))
                           (if _%$e103273%_ _%$e103273%_ _%probe103258%_)))
                        (if (__interface-test-key _%key103236%_ _%k103265%_)
                            (vector-ref
                             _%table103239%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103258%_ '1)))
                            (_%loop103255%_
                             (let ((_%next-probe103278%_
                                    (fx+ _%start103251%_
                                         _%i103260%_
                                         (fx* _%i103260%_ _%i103260%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103278%_
                                _%size103245%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103260%_ '1))
                             _%deleted103262%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab103231%_ _%key103232%_ _%value103233%_)
        (if (let ((__tmp103459
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103231%_)))
                  (__tmp103457
                   (let ((__tmp103458
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103231%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103458 '4))))
              (declare (not safe))
              (##fx< __tmp103459 __tmp103457))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103231%_))
            '#!void)
        (__prototype-table-set! _%tab103231%_ _%key103232%_ _%value103233%_)))
    (define __prototype-table-set!
      (lambda (_%tab103182%_ _%key103183%_ _%value103184%_)
        (let ((_%table103187%_
               (let () (declare (not safe)) (&raw-table-table _%tab103182%_)))
              (_%seed103188%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103182%_))))
          (let* ((_%h103190%_
                  (fxxor (__interface-hash-key _%key103183%_) _%seed103188%_))
                 (_%size103193%_ (vector-length _%table103187%_))
                 (_%entries103196%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103193%_ '2)))
                 (_%start103199%_
                  (let ((__tmp103460
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103190%_ _%entries103196%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103460 '1))))
            (let _%loop103203%_ ((_%probe103206%_ _%start103199%_)
                                 (_%i103208%_ '1)
                                 (_%deleted103210%_ '#f))
              (let ((_%k103213%_ (vector-ref _%table103187%_ _%probe103206%_)))
                (if (eq? _%k103213%_ (macro-unused-obj))
                    (if _%deleted103210%_
                        (begin
                          (vector-set!
                           _%table103187%_
                           _%deleted103210%_
                           _%key103183%_)
                          (vector-set!
                           _%table103187%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103210%_ '1))
                           _%value103184%_)
                          ((lambda ()
                             (let ((__tmp103461
                                    (let ((__tmp103462
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103182%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103462 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103182%_
                                __tmp103461)))))
                        (begin
                          (vector-set!
                           _%table103187%_
                           _%probe103206%_
                           _%key103183%_)
                          (vector-set!
                           _%table103187%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103206%_ '1))
                           _%value103184%_)
                          ((lambda ()
                             (let ((__tmp103463
                                    (let ((__tmp103464
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103182%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103464 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103182%_
                                __tmp103463))
                             (let ((__tmp103465
                                    (let ((__tmp103466
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103182%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103466 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103182%_
                                __tmp103465))))))
                    (if (eq? _%k103213%_ (macro-deleted-obj))
                        (_%loop103203%_
                         (let ((_%next-probe103220%_
                                (fx+ _%start103199%_
                                     _%i103208%_
                                     (fx* _%i103208%_ _%i103208%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103220%_ _%size103193%_))
                         (let () (declare (not safe)) (##fx+ _%i103208%_ '1))
                         (let ((_%$e103223%_ _%deleted103210%_))
                           (if _%$e103223%_ _%$e103223%_ _%probe103206%_)))
                        (if (__interface-test-key _%key103183%_ _%k103213%_)
                            (let ()
                              (vector-set!
                               _%table103187%_
                               _%probe103206%_
                               _%key103183%_)
                              (vector-set!
                               _%table103187%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103206%_ '1))
                               _%value103184%_))
                            (_%loop103203%_
                             (let ((_%next-probe103228%_
                                    (fx+ _%start103199%_
                                         _%i103208%_
                                         (fx* _%i103208%_ _%i103208%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103228%_
                                _%size103193%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103208%_ '1))
                             _%deleted103210%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab103177%_
               _%key103178%_
               _%prototype-table-update!103179%_
               _%default103180%_)
        (if (let ((__tmp103469
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103177%_)))
                  (__tmp103467
                   (let ((__tmp103468
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103177%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103468 '4))))
              (declare (not safe))
              (##fx< __tmp103469 __tmp103467))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103177%_))
            '#!void)
        (__prototype-table-update!
         _%tab103177%_
         _%key103178%_
         _%prototype-table-update!103179%_
         _%default103180%_)))
    (define __prototype-table-update!
      (lambda (_%tab103127%_
               _%key103128%_
               _%prototype-table-update!103129%_
               _%default103130%_)
        (let ((_%table103133%_
               (let () (declare (not safe)) (&raw-table-table _%tab103127%_)))
              (_%seed103134%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103127%_))))
          (let* ((_%h103136%_
                  (fxxor (__interface-hash-key _%key103128%_) _%seed103134%_))
                 (_%size103139%_ (vector-length _%table103133%_))
                 (_%entries103142%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103139%_ '2)))
                 (_%start103145%_
                  (let ((__tmp103470
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103136%_ _%entries103142%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103470 '1))))
            (let _%loop103149%_ ((_%probe103152%_ _%start103145%_)
                                 (_%i103154%_ '1)
                                 (_%deleted103156%_ '#f))
              (let ((_%k103159%_ (vector-ref _%table103133%_ _%probe103152%_)))
                (if (eq? _%k103159%_ (macro-unused-obj))
                    (if _%deleted103156%_
                        (begin
                          (vector-set!
                           _%table103133%_
                           _%deleted103156%_
                           _%key103128%_)
                          (vector-set!
                           _%table103133%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103156%_ '1))
                           (_%prototype-table-update!103129%_
                            _%default103130%_))
                          ((lambda ()
                             (let ((__tmp103471
                                    (let ((__tmp103472
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103127%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103472 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103127%_
                                __tmp103471)))))
                        (begin
                          (vector-set!
                           _%table103133%_
                           _%probe103152%_
                           _%key103128%_)
                          (vector-set!
                           _%table103133%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103152%_ '1))
                           (_%prototype-table-update!103129%_
                            _%default103130%_))
                          ((lambda ()
                             (let ((__tmp103473
                                    (let ((__tmp103474
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103127%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103474 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103127%_
                                __tmp103473))
                             (let ((__tmp103475
                                    (let ((__tmp103476
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103127%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103476 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103127%_
                                __tmp103475))))))
                    (if (eq? _%k103159%_ (macro-deleted-obj))
                        (_%loop103149%_
                         (let ((_%next-probe103166%_
                                (fx+ _%start103145%_
                                     _%i103154%_
                                     (fx* _%i103154%_ _%i103154%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103166%_ _%size103139%_))
                         (let () (declare (not safe)) (##fx+ _%i103154%_ '1))
                         (let ((_%$e103169%_ _%deleted103156%_))
                           (if _%$e103169%_ _%$e103169%_ _%probe103152%_)))
                        (if (__interface-test-key _%key103128%_ _%k103159%_)
                            (let ()
                              (vector-set!
                               _%table103133%_
                               _%probe103152%_
                               _%key103128%_)
                              (vector-set!
                               _%table103133%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103152%_ '1))
                               (_%prototype-table-update!103129%_
                                (vector-ref
                                 _%table103133%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103152%_ '1))))))
                            (_%loop103149%_
                             (let ((_%next-probe103174%_
                                    (fx+ _%start103145%_
                                         _%i103154%_
                                         (fx* _%i103154%_ _%i103154%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103174%_
                                _%size103139%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103154%_ '1))
                             _%deleted103156%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab103082%_ _%key103084%_)
        (let ((_%table103087%_
               (let () (declare (not safe)) (&raw-table-table _%tab103082%_)))
              (_%seed103089%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103082%_))))
          (let* ((_%h103092%_
                  (fxxor (__interface-hash-key _%key103084%_) _%seed103089%_))
                 (_%size103095%_ (vector-length _%table103087%_))
                 (_%entries103098%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103095%_ '2)))
                 (_%start103101%_
                  (let ((__tmp103477
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103092%_ _%entries103098%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103477 '1))))
            (let _%loop103105%_ ((_%probe103108%_ _%start103101%_)
                                 (_%i103110%_ '1))
              (let ((_%k103113%_ (vector-ref _%table103087%_ _%probe103108%_)))
                (if (eq? _%k103113%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103113%_ (macro-deleted-obj))
                        (_%loop103105%_
                         (let ((_%next-probe103118%_
                                (fx+ _%start103101%_
                                     _%i103110%_
                                     (fx* _%i103110%_ _%i103110%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103118%_ _%size103095%_))
                         (let () (declare (not safe)) (##fx+ _%i103110%_ '1)))
                        (if (__interface-test-key _%key103084%_ _%k103113%_)
                            (let ()
                              (vector-set!
                               _%table103087%_
                               _%probe103108%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103087%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103108%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp103478
                                        (let ((__tmp103479
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103082%_))))
                                          (declare (not safe))
                                          (##fx- __tmp103479 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103082%_
                                    __tmp103478)))))
                            (_%loop103105%_
                             (let ((_%next-probe103124%_
                                    (fx+ _%start103101%_
                                         _%i103110%_
                                         (fx* _%i103110%_ _%i103110%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103124%_
                                _%size103095%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103110%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass103074%_)
        (let ((_%super103075103077%_
               (let () (declare (not safe)) (##type-super _%klass103074%_))))
          (if _%super103075103077%_
              (let ((_%super103080%_ _%super103075103077%_))
                (eq? (let () (declare (not safe)) (##type-id _%super103080%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor102959%_ _%klass102960%_ _%obj-klass102961%_)
        (let ((_%method-table102963%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102961%_))))
          (let _%loop102966%_ ((_%rest102969%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102959%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102971%_ '0)
                               (_%methods102973%_ '()))
            (let* ((_%rest102975102983%_ _%rest102969%_)
                   (_%else102977103045%_
                    (lambda ()
                      (let ((_%prototype102991%_
                             (let ((__obj103440
                                    (let ((__tmp103480
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102971%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102960%_
                                       __tmp103480))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103440 '#f))
                               __obj103440)))
                        (let _%loop102994%_ ((_%rest102996%_ _%methods102973%_)
                                             (_%off102997%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102971%_ '1))))
                          (let* ((_%rest102999103007%_ _%rest102996%_)
                                 (_%else103001103026%_
                                  (lambda ()
                                    (let ((_%prototype-key103015%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102960%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102961%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103020%_ ()
                                          (if (let ((__tmp103481
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103481 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103020%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103015%_
                                       _%prototype102991%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103024%_)
                                         _%prototype103024%_)
                                       _%prototype102991%_))))
                                 (_%K103003103033%_
                                  (lambda (_%rest103029%_ _%method103030%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102991%_
                                       _%method103030%_
                                       _%off102997%_
                                       _%klass102960%_
                                       '#f))
                                    (_%loop102994%_
                                     _%rest103029%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102997%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102999103007%_))
                                (let ((_%hd103004103036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102999103007%_)))
                                      (_%tl103005103038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102999103007%_))))
                                  (let* ((_%method103041%_ _%hd103004103036%_)
                                         (_%rest103043%_ _%tl103005103038%_))
                                    (_%K103003103033%_
                                     _%rest103043%_
                                     _%method103041%_)))
                                (_%else103001103026%_)))))))
                   (_%K102979103062%_
                    (lambda (_%rest103048%_ _%method-name103049%_)
                      (let ((_%$e103052%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102963%_
                                _%method-name103049%_
                                '#f))))
                        (if _%$e103052%_
                            ((lambda (_%method103055%_)
                               (_%loop102966%_
                                _%rest103048%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102971%_ '1))
                                (cons _%method103055%_ _%methods102973%_)))
                             _%$e103052%_)
                            ((lambda (_%klass103058%_
                                      _%obj-klass103059%_
                                      _%method-name103060%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass103058%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass103058%_))
                                'class:
                                _%obj-klass103059%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass103059%_))
                                'method:
                                _%method-name103060%_)
                               '#!void)
                             _%klass102960%_
                             _%obj-klass102961%_
                             _%method-name103049%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102975102983%_))
                  (let ((_%hd102980103065%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102975102983%_)))
                        (_%tl102981103067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102975102983%_))))
                    (let* ((_%method-name103070%_ _%hd102980103065%_)
                           (_%rest103072%_ _%tl102981103067%_))
                      (_%K102979103062%_
                       _%rest103072%_
                       _%method-name103070%_)))
                  (_%else102977103045%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor102844%_ _%klass102845%_ _%obj-klass102846%_)
        (let ((_%method-table102848%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102846%_))))
          (let _%loop102851%_ ((_%rest102854%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102844%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102856%_ '0)
                               (_%methods102858%_ '()))
            (let* ((_%rest102860102868%_ _%rest102854%_)
                   (_%else102862102930%_
                    (lambda ()
                      (let ((_%prototype102876%_
                             (let ((__obj103441
                                    (let ((__tmp103482
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102856%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102845%_
                                       __tmp103482))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103441 '#f))
                               __obj103441)))
                        (let _%loop102879%_ ((_%rest102881%_ _%methods102858%_)
                                             (_%off102882%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102856%_ '1))))
                          (let* ((_%rest102884102892%_ _%rest102881%_)
                                 (_%else102886102911%_
                                  (lambda ()
                                    (let ((_%prototype-key102900%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102845%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102846%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again102905%_ ()
                                          (if (let ((__tmp103483
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103483 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again102905%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key102900%_
                                       _%prototype102876%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype102909%_)
                                         _%prototype102909%_)
                                       _%prototype102876%_))))
                                 (_%K102888102918%_
                                  (lambda (_%rest102914%_ _%method102915%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102876%_
                                       _%method102915%_
                                       _%off102882%_
                                       _%klass102845%_
                                       '#f))
                                    (_%loop102879%_
                                     _%rest102914%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102882%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102884102892%_))
                                (let ((_%hd102889102921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102884102892%_)))
                                      (_%tl102890102923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102884102892%_))))
                                  (let* ((_%method102926%_ _%hd102889102921%_)
                                         (_%rest102928%_ _%tl102890102923%_))
                                    (_%K102888102918%_
                                     _%rest102928%_
                                     _%method102926%_)))
                                (_%else102886102911%_)))))))
                   (_%K102864102947%_
                    (lambda (_%rest102933%_ _%method-name102934%_)
                      (let ((_%$e102937%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102848%_
                                _%method-name102934%_
                                '#f))))
                        (if _%$e102937%_
                            ((lambda (_%method102940%_)
                               (_%loop102851%_
                                _%rest102933%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102856%_ '1))
                                (cons _%method102940%_ _%methods102858%_)))
                             _%$e102937%_)
                            ((lambda (_%klass102943%_
                                      _%obj-klass102944%_
                                      _%method-name102945%_)
                               '#f)
                             _%klass102845%_
                             _%obj-klass102846%_
                             _%method-name102934%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102860102868%_))
                  (let ((_%hd102865102950%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102860102868%_)))
                        (_%tl102866102952%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102860102868%_))))
                    (let* ((_%method-name102955%_ _%hd102865102950%_)
                           (_%rest102957%_ _%tl102866102952%_))
                      (_%K102864102947%_
                       _%rest102957%_
                       _%method-name102955%_)))
                  (_%else102862102930%_)))))))
    (define cast
      (lambda (_%descriptor102802%_ _%obj102804%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102808%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102802%_ '1 '#f '#f)))
               (_%klass-id102811%_
                (let () (declare (not safe)) (##type-id _%klass102808%_)))
               (_%obj-klass102814%_
                (let () (declare (not safe)) (class-of _%obj102804%_)))
               (_%obj-klass-id102817%_
                (let () (declare (not safe)) (##type-id _%obj-klass102814%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102811%_ _%obj-klass-id102817%_))
              _%obj102804%_
              (if (interface-subclass? _%obj-klass102814%_)
                  (cast _%descriptor102802%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj102804%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102826%_ ()
                        (if (let ((__tmp103484
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103484 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102826%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102811%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102817%_))
                    (let ((_%prototype102837%_
                           (let ((_%$e102830%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102830%_
                                 ((lambda (_%prototype102833%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102833%_)
                                  _%$e102830%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor102802%_
                                    _%klass102808%_
                                    _%obj-klass102814%_))))))
                      ((lambda (_%prototype102839%_ _%obj102840%_)
                         (let ((_%instance102842%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype102839%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance102842%_
                              _%obj102840%_
                              '1
                              '#f
                              'cast))
                           _%instance102842%_))
                       _%prototype102837%_
                       _%obj102804%_))))))))
    (define try-cast
      (lambda (_%descriptor102760%_ _%obj102762%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102766%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102760%_ '1 '#f '#f)))
               (_%klass-id102769%_
                (let () (declare (not safe)) (##type-id _%klass102766%_)))
               (_%obj-klass102772%_
                (let () (declare (not safe)) (class-of _%obj102762%_)))
               (_%obj-klass-id102775%_
                (let () (declare (not safe)) (##type-id _%obj-klass102772%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102769%_ _%obj-klass-id102775%_))
              _%obj102762%_
              (if (interface-subclass? _%obj-klass102772%_)
                  (try-cast
                   _%descriptor102760%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102762%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102784%_ ()
                        (if (let ((__tmp103485
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103485 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102784%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102769%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102775%_))
                    (let ((_%prototype102795%_
                           (let ((_%$e102788%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102788%_
                                 ((lambda (_%prototype102791%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102791%_)
                                  _%$e102788%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102760%_
                                    _%klass102766%_
                                    _%obj-klass102772%_))))))
                      ((lambda (_%prototype102797%_ _%obj102798%_)
                         (if _%prototype102797%_
                             (let ((_%instance102800%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype102797%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance102800%_
                                  _%obj102798%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance102800%_)
                             '#f))
                       _%prototype102795%_
                       _%obj102762%_))))))))
    (define satisfies?
      (lambda (_%descriptor102720%_ _%obj102722%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102726%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102720%_ '1 '#f '#f)))
               (_%klass-id102729%_
                (let () (declare (not safe)) (##type-id _%klass102726%_)))
               (_%obj-klass102732%_
                (let () (declare (not safe)) (class-of _%obj102722%_)))
               (_%obj-klass-id102735%_
                (let () (declare (not safe)) (##type-id _%obj-klass102732%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102729%_ _%obj-klass-id102735%_))
              _%obj102722%_
              (if (interface-subclass? _%obj-klass102732%_)
                  (satisfies?
                   _%descriptor102720%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102722%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102744%_ ()
                        (if (let ((__tmp103486
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103486 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102744%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102729%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102735%_))
                    (let ((_%prototype102755%_
                           (let ((_%$e102748%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102748%_
                                 ((lambda (_%prototype102751%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102751%_)
                                  _%$e102748%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102720%_
                                    _%klass102726%_
                                    _%obj-klass102732%_))))))
                      ((lambda (_%prototype102757%_ _%obj102758%_)
                         (if _%prototype102757%_ '#t '#f))
                       _%prototype102755%_
                       _%obj102722%_))))))))))
