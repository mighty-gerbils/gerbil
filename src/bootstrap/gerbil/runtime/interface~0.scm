(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1755903075)
  (begin
    (define CastError::t
      (let ((__tmp109534 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp109534
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args109527%_
        (apply make-instance CastError::t _%$args109527%_)))
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
      (lambda (_%where109401%_ _%message109402%_ . _%irritants109403%_)
        (let ((__tmp109535
               (let ((__obj109530
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj109530
                    _%message109402%_
                    'where:
                    _%where109401%_
                    'irritants:
                    _%irritants109403%_))
                 __obj109530)))
          (declare (not safe))
          (raise __tmp109535))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp109537 (list)) (__tmp109536 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp109537
         '(__object)
         __tmp109536
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
      (let ((__tmp109539 (list))
            (__tmp109538
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp109539
         '(type methods)
         __tmp109538
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args109398%_
        (apply make-instance interface-descriptor::t _%$args109398%_)))
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
      (lambda (_%key109396%_)
        (let ((__tmp109542
               (let ((__tmp109543
                      (let () (declare (not safe)) (##car _%key109396%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp109543)))
              (__tmp109540
               (let ((__tmp109541
                      (let () (declare (not safe)) (##cdr _%key109396%_))))
                 (declare (not safe))
                 (##symbol-hash __tmp109541))))
          (declare (not safe))
          (##fxxor __tmp109542 __tmp109540))))
    (define __interface-test-key
      (lambda (_%a109393%_ _%b109394%_)
        (if (let ((__tmp109545
                   (let () (declare (not safe)) (##car _%a109393%_)))
                  (__tmp109544
                   (let () (declare (not safe)) (##car _%b109394%_))))
              (declare (not safe))
              (##eq? __tmp109545 __tmp109544))
            (let ((__tmp109547
                   (let () (declare (not safe)) (##cdr _%a109393%_)))
                  (__tmp109546
                   (let () (declare (not safe)) (##cdr _%b109394%_))))
              (declare (not safe))
              (##eq? __tmp109547 __tmp109546))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint109374%_ _%seed109376%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint109374%_
           __interface-hash-key
           __interface-test-key
           _%seed109376%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint109382%_ '#f) (_%seed109384%_ '0))
          (make-prototype-table__% _%size-hint109382%_ _%seed109384%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint109386%_)
        (let ((_%seed109388%_ '0))
          (make-prototype-table__% _%size-hint109386%_ _%seed109388%_))))
    (define make-prototype-table
      (lambda _g109548_
        (let ((_g109549_ (let () (declare (not safe)) (##length _g109548_))))
          (cond ((let () (declare (not safe)) (##fx= _g109549_ 0))
                 (apply make-prototype-table__0 _g109548_))
                ((let () (declare (not safe)) (##fx= _g109549_ 1))
                 (apply make-prototype-table__1 _g109548_))
                ((let () (declare (not safe)) (##fx= _g109549_ 2))
                 (apply make-prototype-table__% _g109548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g109548_))))))
    (define prototype-table-ref
      (lambda (_%tab109327%_ _%key109328%_ _%default109329%_)
        (let ((_%table109331%_
               (let () (declare (not safe)) (&raw-table-table _%tab109327%_)))
              (_%seed109332%_
               (let () (declare (not safe)) (&raw-table-seed _%tab109327%_))))
          (let* ((_%h109334%_
                  (fxxor (__interface-hash-key _%key109328%_) _%seed109332%_))
                 (_%size109337%_ (vector-length _%table109331%_))
                 (_%entries109340%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size109337%_ '2)))
                 (_%start109343%_
                  (let ((__tmp109550
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h109334%_ _%entries109340%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109550 '1))))
            (let _%loop109347%_ ((_%probe109350%_ _%start109343%_)
                                 (_%i109352%_ '1)
                                 (_%deleted109354%_ '#f))
              (let ((_%k109357%_ (vector-ref _%table109331%_ _%probe109350%_)))
                (if (eq? _%k109357%_ (macro-unused-obj))
                    _%default109329%_
                    (if (eq? _%k109357%_ (macro-deleted-obj))
                        (_%loop109347%_
                         (let ((_%next-probe109362%_
                                (fx+ _%start109343%_
                                     _%i109352%_
                                     (fx* _%i109352%_ _%i109352%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe109362%_ _%size109337%_))
                         (let () (declare (not safe)) (##fx+ _%i109352%_ '1))
                         (let ((_%$e109365%_ _%deleted109354%_))
                           (if _%$e109365%_ _%$e109365%_ _%probe109350%_)))
                        (if (__interface-test-key _%key109328%_ _%k109357%_)
                            (vector-ref
                             _%table109331%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe109350%_ '1)))
                            (_%loop109347%_
                             (let ((_%next-probe109370%_
                                    (fx+ _%start109343%_
                                         _%i109352%_
                                         (fx* _%i109352%_ _%i109352%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe109370%_
                                _%size109337%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i109352%_ '1))
                             _%deleted109354%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab109323%_ _%key109324%_ _%value109325%_)
        (if (let ((__tmp109553
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab109323%_)))
                  (__tmp109551
                   (let ((__tmp109552
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab109323%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109552 '4))))
              (declare (not safe))
              (##fx< __tmp109553 __tmp109551))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab109323%_))
            '#!void)
        (__prototype-table-set! _%tab109323%_ _%key109324%_ _%value109325%_)))
    (define __prototype-table-set!
      (lambda (_%tab109274%_ _%key109275%_ _%value109276%_)
        (let ((_%table109279%_
               (let () (declare (not safe)) (&raw-table-table _%tab109274%_)))
              (_%seed109280%_
               (let () (declare (not safe)) (&raw-table-seed _%tab109274%_))))
          (let* ((_%h109282%_
                  (fxxor (__interface-hash-key _%key109275%_) _%seed109280%_))
                 (_%size109285%_ (vector-length _%table109279%_))
                 (_%entries109288%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size109285%_ '2)))
                 (_%start109291%_
                  (let ((__tmp109554
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h109282%_ _%entries109288%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109554 '1))))
            (let _%loop109295%_ ((_%probe109298%_ _%start109291%_)
                                 (_%i109300%_ '1)
                                 (_%deleted109302%_ '#f))
              (let ((_%k109305%_ (vector-ref _%table109279%_ _%probe109298%_)))
                (if (eq? _%k109305%_ (macro-unused-obj))
                    (if _%deleted109302%_
                        (begin
                          (vector-set!
                           _%table109279%_
                           _%deleted109302%_
                           _%key109275%_)
                          (vector-set!
                           _%table109279%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted109302%_ '1))
                           _%value109276%_)
                          ((lambda ()
                             (let ((__tmp109555
                                    (let ((__tmp109556
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab109274%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109556 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab109274%_
                                __tmp109555)))))
                        (begin
                          (vector-set!
                           _%table109279%_
                           _%probe109298%_
                           _%key109275%_)
                          (vector-set!
                           _%table109279%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe109298%_ '1))
                           _%value109276%_)
                          ((lambda ()
                             (let ((__tmp109557
                                    (let ((__tmp109558
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab109274%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109558 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab109274%_
                                __tmp109557))
                             (let ((__tmp109559
                                    (let ((__tmp109560
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab109274%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109560 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab109274%_
                                __tmp109559))))))
                    (if (eq? _%k109305%_ (macro-deleted-obj))
                        (_%loop109295%_
                         (let ((_%next-probe109312%_
                                (fx+ _%start109291%_
                                     _%i109300%_
                                     (fx* _%i109300%_ _%i109300%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe109312%_ _%size109285%_))
                         (let () (declare (not safe)) (##fx+ _%i109300%_ '1))
                         (let ((_%$e109315%_ _%deleted109302%_))
                           (if _%$e109315%_ _%$e109315%_ _%probe109298%_)))
                        (if (__interface-test-key _%key109275%_ _%k109305%_)
                            (let ()
                              (vector-set!
                               _%table109279%_
                               _%probe109298%_
                               _%key109275%_)
                              (vector-set!
                               _%table109279%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe109298%_ '1))
                               _%value109276%_))
                            (_%loop109295%_
                             (let ((_%next-probe109320%_
                                    (fx+ _%start109291%_
                                         _%i109300%_
                                         (fx* _%i109300%_ _%i109300%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe109320%_
                                _%size109285%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i109300%_ '1))
                             _%deleted109302%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab109269%_
               _%key109270%_
               _%prototype-table-update!109271%_
               _%default109272%_)
        (if (let ((__tmp109563
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab109269%_)))
                  (__tmp109561
                   (let ((__tmp109562
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab109269%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109562 '4))))
              (declare (not safe))
              (##fx< __tmp109563 __tmp109561))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab109269%_))
            '#!void)
        (__prototype-table-update!
         _%tab109269%_
         _%key109270%_
         _%prototype-table-update!109271%_
         _%default109272%_)))
    (define __prototype-table-update!
      (lambda (_%tab109219%_
               _%key109220%_
               _%prototype-table-update!109221%_
               _%default109222%_)
        (let ((_%table109225%_
               (let () (declare (not safe)) (&raw-table-table _%tab109219%_)))
              (_%seed109226%_
               (let () (declare (not safe)) (&raw-table-seed _%tab109219%_))))
          (let* ((_%h109228%_
                  (fxxor (__interface-hash-key _%key109220%_) _%seed109226%_))
                 (_%size109231%_ (vector-length _%table109225%_))
                 (_%entries109234%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size109231%_ '2)))
                 (_%start109237%_
                  (let ((__tmp109564
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h109228%_ _%entries109234%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109564 '1))))
            (let _%loop109241%_ ((_%probe109244%_ _%start109237%_)
                                 (_%i109246%_ '1)
                                 (_%deleted109248%_ '#f))
              (let ((_%k109251%_ (vector-ref _%table109225%_ _%probe109244%_)))
                (if (eq? _%k109251%_ (macro-unused-obj))
                    (if _%deleted109248%_
                        (begin
                          (vector-set!
                           _%table109225%_
                           _%deleted109248%_
                           _%key109220%_)
                          (vector-set!
                           _%table109225%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted109248%_ '1))
                           (_%prototype-table-update!109221%_
                            _%default109222%_))
                          ((lambda ()
                             (let ((__tmp109565
                                    (let ((__tmp109566
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab109219%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109566 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab109219%_
                                __tmp109565)))))
                        (begin
                          (vector-set!
                           _%table109225%_
                           _%probe109244%_
                           _%key109220%_)
                          (vector-set!
                           _%table109225%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe109244%_ '1))
                           (_%prototype-table-update!109221%_
                            _%default109222%_))
                          ((lambda ()
                             (let ((__tmp109567
                                    (let ((__tmp109568
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab109219%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109568 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab109219%_
                                __tmp109567))
                             (let ((__tmp109569
                                    (let ((__tmp109570
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab109219%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109570 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab109219%_
                                __tmp109569))))))
                    (if (eq? _%k109251%_ (macro-deleted-obj))
                        (_%loop109241%_
                         (let ((_%next-probe109258%_
                                (fx+ _%start109237%_
                                     _%i109246%_
                                     (fx* _%i109246%_ _%i109246%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe109258%_ _%size109231%_))
                         (let () (declare (not safe)) (##fx+ _%i109246%_ '1))
                         (let ((_%$e109261%_ _%deleted109248%_))
                           (if _%$e109261%_ _%$e109261%_ _%probe109244%_)))
                        (if (__interface-test-key _%key109220%_ _%k109251%_)
                            (let ()
                              (vector-set!
                               _%table109225%_
                               _%probe109244%_
                               _%key109220%_)
                              (vector-set!
                               _%table109225%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe109244%_ '1))
                               (_%prototype-table-update!109221%_
                                (vector-ref
                                 _%table109225%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe109244%_ '1))))))
                            (_%loop109241%_
                             (let ((_%next-probe109266%_
                                    (fx+ _%start109237%_
                                         _%i109246%_
                                         (fx* _%i109246%_ _%i109246%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe109266%_
                                _%size109231%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i109246%_ '1))
                             _%deleted109248%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab109174%_ _%key109176%_)
        (let ((_%table109179%_
               (let () (declare (not safe)) (&raw-table-table _%tab109174%_)))
              (_%seed109181%_
               (let () (declare (not safe)) (&raw-table-seed _%tab109174%_))))
          (let* ((_%h109184%_
                  (fxxor (__interface-hash-key _%key109176%_) _%seed109181%_))
                 (_%size109187%_ (vector-length _%table109179%_))
                 (_%entries109190%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size109187%_ '2)))
                 (_%start109193%_
                  (let ((__tmp109571
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h109184%_ _%entries109190%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109571 '1))))
            (let _%loop109197%_ ((_%probe109200%_ _%start109193%_)
                                 (_%i109202%_ '1))
              (let ((_%k109205%_ (vector-ref _%table109179%_ _%probe109200%_)))
                (if (eq? _%k109205%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k109205%_ (macro-deleted-obj))
                        (_%loop109197%_
                         (let ((_%next-probe109210%_
                                (fx+ _%start109193%_
                                     _%i109202%_
                                     (fx* _%i109202%_ _%i109202%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe109210%_ _%size109187%_))
                         (let () (declare (not safe)) (##fx+ _%i109202%_ '1)))
                        (if (__interface-test-key _%key109176%_ _%k109205%_)
                            (let ()
                              (vector-set!
                               _%table109179%_
                               _%probe109200%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table109179%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe109200%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109572
                                        (let ((__tmp109573
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab109174%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109573 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab109174%_
                                    __tmp109572)))))
                            (_%loop109197%_
                             (let ((_%next-probe109216%_
                                    (fx+ _%start109193%_
                                         _%i109202%_
                                         (fx* _%i109202%_ _%i109202%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe109216%_
                                _%size109187%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i109202%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass109166%_)
        (let ((_%super109167109169%_
               (let () (declare (not safe)) (##type-super _%klass109166%_))))
          (if _%super109167109169%_
              (let ((_%super109172%_ _%super109167109169%_))
                (eq? (let () (declare (not safe)) (##type-id _%super109172%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor109000%_ _%klass109001%_ _%obj-klass109002%_)
        (let ((_%method-table109004%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass109002%_))))
          (let _%loop109007%_ ((_%rest109010%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor109000%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count109012%_ '0)
                               (_%methods109014%_ '()))
            (let* ((_%rest109016109024%_ _%rest109010%_)
                   (_%else109018109086%_
                    (lambda ()
                      (let ((_%prototype109032%_
                             (let ((__obj109532
                                    (let ((__tmp109574
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count109012%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass109001%_
                                       __tmp109574))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj109532 '#f))
                               __obj109532)))
                        (let _%loop109035%_ ((_%rest109037%_ _%methods109014%_)
                                             (_%off109038%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count109012%_ '1))))
                          (let* ((_%rest109040109048%_ _%rest109037%_)
                                 (_%else109042109067%_
                                  (lambda ()
                                    (let ((_%prototype-key109056%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass109001%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass109002%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again109061%_ ()
                                          (if (let ((__tmp109575
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp109575 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again109061%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key109056%_
                                       _%prototype109032%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype109065%_)
                                         _%prototype109065%_)
                                       _%prototype109032%_))))
                                 (_%K109044109074%_
                                  (lambda (_%rest109070%_ _%method109071%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype109032%_
                                       _%method109071%_
                                       _%off109038%_
                                       _%klass109001%_
                                       '#f))
                                    (_%loop109035%_
                                     _%rest109070%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off109038%_ '1))))))
                            (if (pair? _%rest109040109048%_)
                                (let ((_%hd109045109077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest109040109048%_)))
                                      (_%tl109046109079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest109040109048%_))))
                                  (let* ((_%method109082%_ _%hd109045109077%_)
                                         (_%rest109084%_ _%tl109046109079%_))
                                    (_%K109044109074%_
                                     _%rest109084%_
                                     _%method109082%_)))
                                (_%else109042109067%_)))))))
                   (_%K109020109154%_
                    (lambda (_%rest109089%_ _%method-spec109090%_)
                      (if (pair? _%method-spec109090%_)
                          (let _%loop-inner109094%_ ((_%methods-rest109097%_
                                                      _%method-spec109090%_))
                            (let* ((_%methods-rest109099109107%_
                                    _%methods-rest109097%_)
                                   (_%else109101109119%_
                                    (lambda ()
                                      ((lambda (_%klass109115%_
                                                _%obj-klass109116%_
                                                _%method-name109117%_)
                                         (raise-cast-error
                                          'create-prototype
                                          '"cannot create interface instance; missing method"
                                          'interface:
                                          _%klass109115%_
                                          'interface-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%klass109115%_))
                                          'class:
                                          _%obj-klass109116%_
                                          'class-id:
                                          (let ()
                                            (declare (not safe))
                                            (##type-id _%obj-klass109116%_))
                                          'method:
                                          _%method-name109117%_)
                                         '#!void)
                                       _%klass109001%_
                                       _%obj-klass109002%_
                                       _%method-spec109090%_)))
                                   (_%K109103109132%_
                                    (lambda (_%methods-rest109122%_
                                             _%method-name109123%_)
                                      (let ((_%$e109126%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table109004%_
                                                _%method-name109123%_
                                                '#f))))
                                        (if _%$e109126%_
                                            ((lambda (_%method109129%_)
                                               (_%loop109007%_
                                                _%rest109089%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count109012%_ '1))
                                                (cons _%method109129%_
                                                      _%methods109014%_)))
                                             _%$e109126%_)
                                            (_%loop-inner109094%_
                                             _%methods-rest109122%_))))))
                              (if (pair? _%methods-rest109099109107%_)
                                  (let ((_%hd109104109135%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest109099109107%_)))
                                        (_%tl109105109137%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest109099109107%_))))
                                    (let* ((_%method-name109140%_
                                            _%hd109104109135%_)
                                           (_%methods-rest109142%_
                                            _%tl109105109137%_))
                                      (_%K109103109132%_
                                       _%methods-rest109142%_
                                       _%method-name109140%_)))
                                  (_%else109101109119%_))))
                          (let ((_%$e109144%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table109004%_
                                    _%method-spec109090%_
                                    '#f))))
                            (if _%$e109144%_
                                ((lambda (_%method109147%_)
                                   (_%loop109007%_
                                    _%rest109089%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count109012%_ '1))
                                    (cons _%method109147%_ _%methods109014%_)))
                                 _%$e109144%_)
                                ((lambda (_%klass109150%_
                                          _%obj-klass109151%_
                                          _%method-name109152%_)
                                   (raise-cast-error
                                    'create-prototype
                                    '"cannot create interface instance; missing method"
                                    'interface:
                                    _%klass109150%_
                                    'interface-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%klass109150%_))
                                    'class:
                                    _%obj-klass109151%_
                                    'class-id:
                                    (let ()
                                      (declare (not safe))
                                      (##type-id _%obj-klass109151%_))
                                    'method:
                                    _%method-name109152%_)
                                   '#!void)
                                 _%klass109001%_
                                 _%obj-klass109002%_
                                 _%method-spec109090%_)))))))
              (if (pair? _%rest109016109024%_)
                  (let ((_%hd109021109157%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest109016109024%_)))
                        (_%tl109022109159%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest109016109024%_))))
                    (let* ((_%method-spec109162%_ _%hd109021109157%_)
                           (_%rest109164%_ _%tl109022109159%_))
                      (_%K109020109154%_
                       _%rest109164%_
                       _%method-spec109162%_)))
                  (_%else109018109086%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor108834%_ _%klass108835%_ _%obj-klass108836%_)
        (let ((_%method-table108838%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass108836%_))))
          (let _%loop108841%_ ((_%rest108844%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor108834%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count108846%_ '0)
                               (_%methods108848%_ '()))
            (let* ((_%rest108850108858%_ _%rest108844%_)
                   (_%else108852108920%_
                    (lambda ()
                      (let ((_%prototype108866%_
                             (let ((__obj109533
                                    (let ((__tmp109576
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count108846%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass108835%_
                                       __tmp109576))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj109533 '#f))
                               __obj109533)))
                        (let _%loop108869%_ ((_%rest108871%_ _%methods108848%_)
                                             (_%off108872%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count108846%_ '1))))
                          (let* ((_%rest108874108882%_ _%rest108871%_)
                                 (_%else108876108901%_
                                  (lambda ()
                                    (let ((_%prototype-key108890%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass108835%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass108836%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again108895%_ ()
                                          (if (let ((__tmp109577
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp109577 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again108895%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key108890%_
                                       _%prototype108866%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype108899%_)
                                         _%prototype108899%_)
                                       _%prototype108866%_))))
                                 (_%K108878108908%_
                                  (lambda (_%rest108904%_ _%method108905%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype108866%_
                                       _%method108905%_
                                       _%off108872%_
                                       _%klass108835%_
                                       '#f))
                                    (_%loop108869%_
                                     _%rest108904%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off108872%_ '1))))))
                            (if (pair? _%rest108874108882%_)
                                (let ((_%hd108879108911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest108874108882%_)))
                                      (_%tl108880108913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest108874108882%_))))
                                  (let* ((_%method108916%_ _%hd108879108911%_)
                                         (_%rest108918%_ _%tl108880108913%_))
                                    (_%K108878108908%_
                                     _%rest108918%_
                                     _%method108916%_)))
                                (_%else108876108901%_)))))))
                   (_%K108854108988%_
                    (lambda (_%rest108923%_ _%method-spec108924%_)
                      (if (pair? _%method-spec108924%_)
                          (let _%loop-inner108928%_ ((_%methods-rest108931%_
                                                      _%method-spec108924%_))
                            (let* ((_%methods-rest108933108941%_
                                    _%methods-rest108931%_)
                                   (_%else108935108953%_
                                    (lambda ()
                                      ((lambda (_%klass108949%_
                                                _%obj-klass108950%_
                                                _%method-name108951%_)
                                         '#f)
                                       _%klass108835%_
                                       _%obj-klass108836%_
                                       _%method-spec108924%_)))
                                   (_%K108937108966%_
                                    (lambda (_%methods-rest108956%_
                                             _%method-name108957%_)
                                      (let ((_%$e108960%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table108838%_
                                                _%method-name108957%_
                                                '#f))))
                                        (if _%$e108960%_
                                            ((lambda (_%method108963%_)
                                               (_%loop108841%_
                                                _%rest108923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count108846%_ '1))
                                                (cons _%method108963%_
                                                      _%methods108848%_)))
                                             _%$e108960%_)
                                            (_%loop-inner108928%_
                                             _%methods-rest108956%_))))))
                              (if (pair? _%methods-rest108933108941%_)
                                  (let ((_%hd108938108969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest108933108941%_)))
                                        (_%tl108939108971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest108933108941%_))))
                                    (let* ((_%method-name108974%_
                                            _%hd108938108969%_)
                                           (_%methods-rest108976%_
                                            _%tl108939108971%_))
                                      (_%K108937108966%_
                                       _%methods-rest108976%_
                                       _%method-name108974%_)))
                                  (_%else108935108953%_))))
                          (let ((_%$e108978%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table108838%_
                                    _%method-spec108924%_
                                    '#f))))
                            (if _%$e108978%_
                                ((lambda (_%method108981%_)
                                   (_%loop108841%_
                                    _%rest108923%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count108846%_ '1))
                                    (cons _%method108981%_ _%methods108848%_)))
                                 _%$e108978%_)
                                ((lambda (_%klass108984%_
                                          _%obj-klass108985%_
                                          _%method-name108986%_)
                                   '#f)
                                 _%klass108835%_
                                 _%obj-klass108836%_
                                 _%method-spec108924%_)))))))
              (if (pair? _%rest108850108858%_)
                  (let ((_%hd108855108991%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest108850108858%_)))
                        (_%tl108856108993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest108850108858%_))))
                    (let* ((_%method-spec108996%_ _%hd108855108991%_)
                           (_%rest108998%_ _%tl108856108993%_))
                      (_%K108854108988%_
                       _%rest108998%_
                       _%method-spec108996%_)))
                  (_%else108852108920%_)))))))
    (define cast
      (lambda (_%descriptor108792%_ _%obj108794%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass108798%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor108792%_ '1 '#f '#f)))
               (_%klass-id108801%_
                (let () (declare (not safe)) (##type-id _%klass108798%_)))
               (_%obj-klass108804%_
                (let () (declare (not safe)) (class-of _%obj108794%_)))
               (_%obj-klass-id108807%_
                (let () (declare (not safe)) (##type-id _%obj-klass108804%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id108801%_ _%obj-klass-id108807%_))
              _%obj108794%_
              (if (interface-subclass? _%obj-klass108804%_)
                  (cast _%descriptor108792%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj108794%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again108816%_ ()
                        (if (let ((__tmp109578
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp109578 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again108816%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id108801%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id108807%_))
                    (let ((_%prototype108827%_
                           (let ((_%$e108820%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e108820%_
                                 ((lambda (_%prototype108823%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype108823%_)
                                  _%$e108820%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor108792%_
                                    _%klass108798%_
                                    _%obj-klass108804%_))))))
                      ((lambda (_%prototype108829%_ _%obj108830%_)
                         (let ((_%instance108832%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype108829%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance108832%_
                              _%obj108830%_
                              '1
                              '#f
                              'cast))
                           _%instance108832%_))
                       _%prototype108827%_
                       _%obj108794%_))))))))
    (define try-cast
      (lambda (_%descriptor108750%_ _%obj108752%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass108756%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor108750%_ '1 '#f '#f)))
               (_%klass-id108759%_
                (let () (declare (not safe)) (##type-id _%klass108756%_)))
               (_%obj-klass108762%_
                (let () (declare (not safe)) (class-of _%obj108752%_)))
               (_%obj-klass-id108765%_
                (let () (declare (not safe)) (##type-id _%obj-klass108762%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id108759%_ _%obj-klass-id108765%_))
              _%obj108752%_
              (if (interface-subclass? _%obj-klass108762%_)
                  (try-cast
                   _%descriptor108750%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj108752%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again108774%_ ()
                        (if (let ((__tmp109579
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp109579 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again108774%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id108759%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id108765%_))
                    (let ((_%prototype108785%_
                           (let ((_%$e108778%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e108778%_
                                 ((lambda (_%prototype108781%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype108781%_)
                                  _%$e108778%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor108750%_
                                    _%klass108756%_
                                    _%obj-klass108762%_))))))
                      ((lambda (_%prototype108787%_ _%obj108788%_)
                         (if _%prototype108787%_
                             (let ((_%instance108790%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype108787%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance108790%_
                                  _%obj108788%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance108790%_)
                             '#f))
                       _%prototype108785%_
                       _%obj108752%_))))))))
    (define satisfies?
      (lambda (_%descriptor108710%_ _%obj108712%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass108716%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor108710%_ '1 '#f '#f)))
               (_%klass-id108719%_
                (let () (declare (not safe)) (##type-id _%klass108716%_)))
               (_%obj-klass108722%_
                (let () (declare (not safe)) (class-of _%obj108712%_)))
               (_%obj-klass-id108725%_
                (let () (declare (not safe)) (##type-id _%obj-klass108722%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id108719%_ _%obj-klass-id108725%_))
              _%obj108712%_
              (if (interface-subclass? _%obj-klass108722%_)
                  (satisfies?
                   _%descriptor108710%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj108712%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again108734%_ ()
                        (if (let ((__tmp109580
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp109580 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again108734%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id108719%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id108725%_))
                    (let ((_%prototype108745%_
                           (let ((_%$e108738%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e108738%_
                                 ((lambda (_%prototype108741%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype108741%_)
                                  _%$e108738%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor108710%_
                                    _%klass108716%_
                                    _%obj-klass108722%_))))))
                      ((lambda (_%prototype108747%_ _%obj108748%_)
                         (if _%prototype108747%_ '#t '#f))
                       _%prototype108745%_
                       _%obj108712%_))))))))))
