(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1713004409)
  (begin
    (define CastError::t
      (let ((__tmp103552 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp103552
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args103545%_
        (apply make-instance CastError::t _%$args103545%_)))
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
      (lambda (_%where103419%_ _%message103420%_ . _%irritants103421%_)
        (let ((__tmp103553
               (let ((__obj103548
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj103548
                    _%message103420%_
                    'where:
                    _%where103419%_
                    'irritants:
                    _%irritants103421%_))
                 __obj103548)))
          (declare (not safe))
          (raise __tmp103553))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp103555 (list)) (__tmp103554 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp103555
         '(__object)
         __tmp103554
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
      (let ((__tmp103557 (list))
            (__tmp103556
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp103557
         '(type methods)
         __tmp103556
         '#f)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args103416%_
        (apply make-instance interface-descriptor::t _%$args103416%_)))
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
      (lambda (_%key103414%_)
        (let ((__tmp103559
               (macro-slot
                '1
                (let () (declare (not safe)) (##car _%key103414%_))))
              (__tmp103558
               (macro-slot
                '1
                (let () (declare (not safe)) (##cdr _%key103414%_)))))
          (declare (not safe))
          (##fxxor __tmp103559 __tmp103558))))
    (define __interface-test-key
      (lambda (_%a103411%_ _%b103412%_)
        (if (let ((__tmp103561
                   (let () (declare (not safe)) (##car _%a103411%_)))
                  (__tmp103560
                   (let () (declare (not safe)) (##car _%b103412%_))))
              (declare (not safe))
              (##eq? __tmp103561 __tmp103560))
            (let ((__tmp103563
                   (let () (declare (not safe)) (##cdr _%a103411%_)))
                  (__tmp103562
                   (let () (declare (not safe)) (##cdr _%b103412%_))))
              (declare (not safe))
              (##eq? __tmp103563 __tmp103562))
            '#f)))
    (define make-prototype-table__%
      (lambda (_%size-hint103392%_ _%seed103394%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103392%_
           __interface-hash-key
           __interface-test-key
           _%seed103394%_))))
    (define make-prototype-table__0
      (lambda ()
        (let* ((_%size-hint103400%_ '#f) (_%seed103402%_ '0))
          (make-prototype-table__% _%size-hint103400%_ _%seed103402%_))))
    (define make-prototype-table__1
      (lambda (_%size-hint103404%_)
        (let ((_%seed103406%_ '0))
          (make-prototype-table__% _%size-hint103404%_ _%seed103406%_))))
    (define make-prototype-table
      (lambda _g103565_
        (let ((_g103564_ (let () (declare (not safe)) (##length _g103565_))))
          (cond ((let () (declare (not safe)) (##fx= _g103564_ 0))
                 (apply make-prototype-table__0 _g103565_))
                ((let () (declare (not safe)) (##fx= _g103564_ 1))
                 (apply make-prototype-table__1 _g103565_))
                ((let () (declare (not safe)) (##fx= _g103564_ 2))
                 (apply make-prototype-table__% _g103565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-prototype-table
                  _g103565_))))))
    (define prototype-table-ref
      (lambda (_%tab103345%_ _%key103346%_ _%default103347%_)
        (let ((_%table103349%_
               (let () (declare (not safe)) (&raw-table-table _%tab103345%_)))
              (_%seed103350%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103345%_))))
          (let* ((_%h103352%_
                  (fxxor (__interface-hash-key _%key103346%_) _%seed103350%_))
                 (_%size103355%_ (vector-length _%table103349%_))
                 (_%entries103358%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103355%_ '2)))
                 (_%start103361%_
                  (let ((__tmp103566
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103352%_ _%entries103358%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103566 '1))))
            (let _%loop103365%_ ((_%probe103368%_ _%start103361%_)
                                 (_%i103370%_ '1)
                                 (_%deleted103372%_ '#f))
              (let ((_%k103375%_ (vector-ref _%table103349%_ _%probe103368%_)))
                (if (eq? _%k103375%_ (macro-unused-obj))
                    _%default103347%_
                    (if (eq? _%k103375%_ (macro-deleted-obj))
                        (_%loop103365%_
                         (let ((_%next-probe103380%_
                                (fx+ _%start103361%_
                                     _%i103370%_
                                     (fx* _%i103370%_ _%i103370%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103380%_ _%size103355%_))
                         (let () (declare (not safe)) (##fx+ _%i103370%_ '1))
                         (let ((_%$e103383%_ _%deleted103372%_))
                           (if _%$e103383%_ _%$e103383%_ _%probe103368%_)))
                        (if (__interface-test-key _%key103346%_ _%k103375%_)
                            (vector-ref
                             _%table103349%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103368%_ '1)))
                            (_%loop103365%_
                             (let ((_%next-probe103388%_
                                    (fx+ _%start103361%_
                                         _%i103370%_
                                         (fx* _%i103370%_ _%i103370%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103388%_
                                _%size103355%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103370%_ '1))
                             _%deleted103372%_))))))))))
    (define prototype-table-set!
      (lambda (_%tab103341%_ _%key103342%_ _%value103343%_)
        (if (let ((__tmp103569
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103341%_)))
                  (__tmp103567
                   (let ((__tmp103568
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103341%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103568 '4))))
              (declare (not safe))
              (##fx< __tmp103569 __tmp103567))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103341%_))
            '#!void)
        (__prototype-table-set! _%tab103341%_ _%key103342%_ _%value103343%_)))
    (define __prototype-table-set!
      (lambda (_%tab103292%_ _%key103293%_ _%value103294%_)
        (let ((_%table103297%_
               (let () (declare (not safe)) (&raw-table-table _%tab103292%_)))
              (_%seed103298%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103292%_))))
          (let* ((_%h103300%_
                  (fxxor (__interface-hash-key _%key103293%_) _%seed103298%_))
                 (_%size103303%_ (vector-length _%table103297%_))
                 (_%entries103306%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103303%_ '2)))
                 (_%start103309%_
                  (let ((__tmp103570
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103300%_ _%entries103306%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103570 '1))))
            (let _%loop103313%_ ((_%probe103316%_ _%start103309%_)
                                 (_%i103318%_ '1)
                                 (_%deleted103320%_ '#f))
              (let ((_%k103323%_ (vector-ref _%table103297%_ _%probe103316%_)))
                (if (eq? _%k103323%_ (macro-unused-obj))
                    (if _%deleted103320%_
                        (begin
                          (vector-set!
                           _%table103297%_
                           _%deleted103320%_
                           _%key103293%_)
                          (vector-set!
                           _%table103297%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103320%_ '1))
                           _%value103294%_)
                          ((lambda ()
                             (let ((__tmp103571
                                    (let ((__tmp103572
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103292%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103572 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103292%_
                                __tmp103571)))))
                        (begin
                          (vector-set!
                           _%table103297%_
                           _%probe103316%_
                           _%key103293%_)
                          (vector-set!
                           _%table103297%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103316%_ '1))
                           _%value103294%_)
                          ((lambda ()
                             (let ((__tmp103573
                                    (let ((__tmp103574
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103292%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103574 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103292%_
                                __tmp103573))
                             (let ((__tmp103575
                                    (let ((__tmp103576
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103292%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103576 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103292%_
                                __tmp103575))))))
                    (if (eq? _%k103323%_ (macro-deleted-obj))
                        (_%loop103313%_
                         (let ((_%next-probe103330%_
                                (fx+ _%start103309%_
                                     _%i103318%_
                                     (fx* _%i103318%_ _%i103318%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103330%_ _%size103303%_))
                         (let () (declare (not safe)) (##fx+ _%i103318%_ '1))
                         (let ((_%$e103333%_ _%deleted103320%_))
                           (if _%$e103333%_ _%$e103333%_ _%probe103316%_)))
                        (if (__interface-test-key _%key103293%_ _%k103323%_)
                            (let ()
                              (vector-set!
                               _%table103297%_
                               _%probe103316%_
                               _%key103293%_)
                              (vector-set!
                               _%table103297%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103316%_ '1))
                               _%value103294%_))
                            (_%loop103313%_
                             (let ((_%next-probe103338%_
                                    (fx+ _%start103309%_
                                         _%i103318%_
                                         (fx* _%i103318%_ _%i103318%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103338%_
                                _%size103303%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103318%_ '1))
                             _%deleted103320%_))))))))))
    (define prototype-table-update!
      (lambda (_%tab103287%_
               _%key103288%_
               _%prototype-table-update!103289%_
               _%default103290%_)
        (if (let ((__tmp103579
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103287%_)))
                  (__tmp103577
                   (let ((__tmp103578
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103287%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp103578 '4))))
              (declare (not safe))
              (##fx< __tmp103579 __tmp103577))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103287%_))
            '#!void)
        (__prototype-table-update!
         _%tab103287%_
         _%key103288%_
         _%prototype-table-update!103289%_
         _%default103290%_)))
    (define __prototype-table-update!
      (lambda (_%tab103237%_
               _%key103238%_
               _%prototype-table-update!103239%_
               _%default103240%_)
        (let ((_%table103243%_
               (let () (declare (not safe)) (&raw-table-table _%tab103237%_)))
              (_%seed103244%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103237%_))))
          (let* ((_%h103246%_
                  (fxxor (__interface-hash-key _%key103238%_) _%seed103244%_))
                 (_%size103249%_ (vector-length _%table103243%_))
                 (_%entries103252%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103249%_ '2)))
                 (_%start103255%_
                  (let ((__tmp103580
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103246%_ _%entries103252%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103580 '1))))
            (let _%loop103259%_ ((_%probe103262%_ _%start103255%_)
                                 (_%i103264%_ '1)
                                 (_%deleted103266%_ '#f))
              (let ((_%k103269%_ (vector-ref _%table103243%_ _%probe103262%_)))
                (if (eq? _%k103269%_ (macro-unused-obj))
                    (if _%deleted103266%_
                        (begin
                          (vector-set!
                           _%table103243%_
                           _%deleted103266%_
                           _%key103238%_)
                          (vector-set!
                           _%table103243%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103266%_ '1))
                           (_%prototype-table-update!103239%_
                            _%default103240%_))
                          ((lambda ()
                             (let ((__tmp103581
                                    (let ((__tmp103582
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103237%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103582 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103237%_
                                __tmp103581)))))
                        (begin
                          (vector-set!
                           _%table103243%_
                           _%probe103262%_
                           _%key103238%_)
                          (vector-set!
                           _%table103243%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103262%_ '1))
                           (_%prototype-table-update!103239%_
                            _%default103240%_))
                          ((lambda ()
                             (let ((__tmp103583
                                    (let ((__tmp103584
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103237%_))))
                                      (declare (not safe))
                                      (##fx- __tmp103584 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103237%_
                                __tmp103583))
                             (let ((__tmp103585
                                    (let ((__tmp103586
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103237%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp103586 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103237%_
                                __tmp103585))))))
                    (if (eq? _%k103269%_ (macro-deleted-obj))
                        (_%loop103259%_
                         (let ((_%next-probe103276%_
                                (fx+ _%start103255%_
                                     _%i103264%_
                                     (fx* _%i103264%_ _%i103264%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103276%_ _%size103249%_))
                         (let () (declare (not safe)) (##fx+ _%i103264%_ '1))
                         (let ((_%$e103279%_ _%deleted103266%_))
                           (if _%$e103279%_ _%$e103279%_ _%probe103262%_)))
                        (if (__interface-test-key _%key103238%_ _%k103269%_)
                            (let ()
                              (vector-set!
                               _%table103243%_
                               _%probe103262%_
                               _%key103238%_)
                              (vector-set!
                               _%table103243%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103262%_ '1))
                               (_%prototype-table-update!103239%_
                                (vector-ref
                                 _%table103243%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103262%_ '1))))))
                            (_%loop103259%_
                             (let ((_%next-probe103284%_
                                    (fx+ _%start103255%_
                                         _%i103264%_
                                         (fx* _%i103264%_ _%i103264%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103284%_
                                _%size103249%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103264%_ '1))
                             _%deleted103266%_))))))))))
    (define prototype-table-delete!
      (lambda (_%tab103192%_ _%key103194%_)
        (let ((_%table103197%_
               (let () (declare (not safe)) (&raw-table-table _%tab103192%_)))
              (_%seed103199%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103192%_))))
          (let* ((_%h103202%_
                  (fxxor (__interface-hash-key _%key103194%_) _%seed103199%_))
                 (_%size103205%_ (vector-length _%table103197%_))
                 (_%entries103208%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103205%_ '2)))
                 (_%start103211%_
                  (let ((__tmp103587
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103202%_ _%entries103208%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp103587 '1))))
            (let _%loop103215%_ ((_%probe103218%_ _%start103211%_)
                                 (_%i103220%_ '1))
              (let ((_%k103223%_ (vector-ref _%table103197%_ _%probe103218%_)))
                (if (eq? _%k103223%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103223%_ (macro-deleted-obj))
                        (_%loop103215%_
                         (let ((_%next-probe103228%_
                                (fx+ _%start103211%_
                                     _%i103220%_
                                     (fx* _%i103220%_ _%i103220%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103228%_ _%size103205%_))
                         (let () (declare (not safe)) (##fx+ _%i103220%_ '1)))
                        (if (__interface-test-key _%key103194%_ _%k103223%_)
                            (let ()
                              (vector-set!
                               _%table103197%_
                               _%probe103218%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103197%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103218%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp103588
                                        (let ((__tmp103589
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103192%_))))
                                          (declare (not safe))
                                          (##fx- __tmp103589 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103192%_
                                    __tmp103588)))))
                            (_%loop103215%_
                             (let ((_%next-probe103234%_
                                    (fx+ _%start103211%_
                                         _%i103220%_
                                         (fx* _%i103220%_ _%i103220%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103234%_
                                _%size103205%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103220%_ '1))))))))))))
    (define __interface-prototypes-mx (vector '0))
    (define __interface-prototypes (make-prototype-table__% '#f '0))
    (define __interface-prototypes-key (cons '#f '#f))
    (define interface-subclass?
      (lambda (_%klass103184%_)
        (let ((_%super103185103187%_
               (let () (declare (not safe)) (##type-super _%klass103184%_))))
          (if _%super103185103187%_
              (let ((_%super103190%_ _%super103185103187%_))
                (eq? (let () (declare (not safe)) (##type-id _%super103190%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define create-prototype
      (lambda (_%descriptor103069%_ _%klass103070%_ _%obj-klass103071%_)
        (let ((_%method-table103073%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass103071%_))))
          (let _%loop103076%_ ((_%rest103079%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor103069%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count103081%_ '0)
                               (_%methods103083%_ '()))
            (let* ((_%rest103085103093%_ _%rest103079%_)
                   (_%else103087103155%_
                    (lambda ()
                      (let ((_%prototype103101%_
                             (let ((__obj103550
                                    (let ((__tmp103590
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count103081%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass103070%_
                                       __tmp103590))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103550 '#f))
                               __obj103550)))
                        (let _%loop103104%_ ((_%rest103106%_ _%methods103083%_)
                                             (_%off103107%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count103081%_ '1))))
                          (let* ((_%rest103109103117%_ _%rest103106%_)
                                 (_%else103111103136%_
                                  (lambda ()
                                    (let ((_%prototype-key103125%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass103070%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass103071%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103130%_ ()
                                          (if (let ((__tmp103591
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103591 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103130%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103125%_
                                       _%prototype103101%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103134%_)
                                         _%prototype103134%_)
                                       _%prototype103101%_))))
                                 (_%K103113103143%_
                                  (lambda (_%rest103139%_ _%method103140%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype103101%_
                                       _%method103140%_
                                       _%off103107%_
                                       _%klass103070%_
                                       '#f))
                                    (_%loop103104%_
                                     _%rest103139%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off103107%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest103109103117%_))
                                (let ((_%hd103114103146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest103109103117%_)))
                                      (_%tl103115103148%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103109103117%_))))
                                  (let* ((_%method103151%_ _%hd103114103146%_)
                                         (_%rest103153%_ _%tl103115103148%_))
                                    (_%K103113103143%_
                                     _%rest103153%_
                                     _%method103151%_)))
                                (_%else103111103136%_)))))))
                   (_%K103089103172%_
                    (lambda (_%rest103158%_ _%method-name103159%_)
                      (let ((_%$e103162%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table103073%_
                                _%method-name103159%_
                                '#f))))
                        (if _%$e103162%_
                            ((lambda (_%method103165%_)
                               (_%loop103076%_
                                _%rest103158%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count103081%_ '1))
                                (cons _%method103165%_ _%methods103083%_)))
                             _%$e103162%_)
                            ((lambda (_%klass103168%_
                                      _%obj-klass103169%_
                                      _%method-name103170%_)
                               (raise-cast-error
                                'create-prototype
                                '"cannot create interface instance; missing method"
                                'interface:
                                _%klass103168%_
                                'interface-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%klass103168%_))
                                'class:
                                _%obj-klass103169%_
                                'class-id:
                                (let ()
                                  (declare (not safe))
                                  (##type-id _%obj-klass103169%_))
                                'method:
                                _%method-name103170%_)
                               '#!void)
                             _%klass103070%_
                             _%obj-klass103071%_
                             _%method-name103159%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest103085103093%_))
                  (let ((_%hd103090103175%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest103085103093%_)))
                        (_%tl103091103177%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest103085103093%_))))
                    (let* ((_%method-name103180%_ _%hd103090103175%_)
                           (_%rest103182%_ _%tl103091103177%_))
                      (_%K103089103172%_
                       _%rest103182%_
                       _%method-name103180%_)))
                  (_%else103087103155%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor102954%_ _%klass102955%_ _%obj-klass102956%_)
        (let ((_%method-table102958%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass102956%_))))
          (let _%loop102961%_ ((_%rest102964%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor102954%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count102966%_ '0)
                               (_%methods102968%_ '()))
            (let* ((_%rest102970102978%_ _%rest102964%_)
                   (_%else102972103040%_
                    (lambda ()
                      (let ((_%prototype102986%_
                             (let ((__obj103551
                                    (let ((__tmp103592
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count102966%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass102955%_
                                       __tmp103592))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj103551 '#f))
                               __obj103551)))
                        (let _%loop102989%_ ((_%rest102991%_ _%methods102968%_)
                                             (_%off102992%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count102966%_ '1))))
                          (let* ((_%rest102994103002%_ _%rest102991%_)
                                 (_%else102996103021%_
                                  (lambda ()
                                    (let ((_%prototype-key103010%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass102955%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%obj-klass102956%_)))))
                                      (let ()
                                        (declare (not interrupts-enabled))
                                        (let _%again103015%_ ()
                                          (if (let ((__tmp103593
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-cas!
                                                        __interface-prototypes-mx
                                                        '0
                                                        '1
                                                        '0))))
                                                (declare (not safe))
                                                (##fx= __tmp103593 '0))
                                              '#!void
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (##thread-yield!))
                                                (_%again103015%_)))))
                                      (prototype-table-set!
                                       __interface-prototypes
                                       _%prototype-key103010%_
                                       _%prototype102986%_)
                                      (let ()
                                        (declare (not safe))
                                        (##vector-cas!
                                         __interface-prototypes-mx
                                         '0
                                         '0
                                         '1))
                                      ((lambda (_%prototype103019%_)
                                         _%prototype103019%_)
                                       _%prototype102986%_))))
                                 (_%K102998103028%_
                                  (lambda (_%rest103024%_ _%method103025%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype102986%_
                                       _%method103025%_
                                       _%off102992%_
                                       _%klass102955%_
                                       '#f))
                                    (_%loop102989%_
                                     _%rest103024%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off102992%_ '1))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest102994103002%_))
                                (let ((_%hd102999103031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest102994103002%_)))
                                      (_%tl103000103033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest102994103002%_))))
                                  (let* ((_%method103036%_ _%hd102999103031%_)
                                         (_%rest103038%_ _%tl103000103033%_))
                                    (_%K102998103028%_
                                     _%rest103038%_
                                     _%method103036%_)))
                                (_%else102996103021%_)))))))
                   (_%K102974103057%_
                    (lambda (_%rest103043%_ _%method-name103044%_)
                      (let ((_%$e103047%_
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _%method-table102958%_
                                _%method-name103044%_
                                '#f))))
                        (if _%$e103047%_
                            ((lambda (_%method103050%_)
                               (_%loop102961%_
                                _%rest103043%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%count102966%_ '1))
                                (cons _%method103050%_ _%methods102968%_)))
                             _%$e103047%_)
                            ((lambda (_%klass103053%_
                                      _%obj-klass103054%_
                                      _%method-name103055%_)
                               '#f)
                             _%klass102955%_
                             _%obj-klass102956%_
                             _%method-name103044%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest102970102978%_))
                  (let ((_%hd102975103060%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest102970102978%_)))
                        (_%tl102976103062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest102970102978%_))))
                    (let* ((_%method-name103065%_ _%hd102975103060%_)
                           (_%rest103067%_ _%tl102976103062%_))
                      (_%K102974103057%_
                       _%rest103067%_
                       _%method-name103065%_)))
                  (_%else102972103040%_)))))))
    (define cast
      (lambda (_%descriptor102912%_ _%obj102914%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102918%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102912%_ '1 '#f '#f)))
               (_%klass-id102921%_
                (let () (declare (not safe)) (##type-id _%klass102918%_)))
               (_%obj-klass102924%_
                (let () (declare (not safe)) (class-of _%obj102914%_)))
               (_%obj-klass-id102927%_
                (let () (declare (not safe)) (##type-id _%obj-klass102924%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102921%_ _%obj-klass-id102927%_))
              _%obj102914%_
              (if (interface-subclass? _%obj-klass102924%_)
                  (cast _%descriptor102912%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%obj102914%_
                           '1
                           '#f
                           '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102936%_ ()
                        (if (let ((__tmp103594
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103594 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102936%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102921%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102927%_))
                    (let ((_%prototype102947%_
                           (let ((_%$e102940%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102940%_
                                 ((lambda (_%prototype102943%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102943%_)
                                  _%$e102940%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (create-prototype
                                    _%descriptor102912%_
                                    _%klass102918%_
                                    _%obj-klass102924%_))))))
                      ((lambda (_%prototype102949%_ _%obj102950%_)
                         (let ((_%instance102952%_
                                (let ()
                                  (declare (not safe))
                                  (##structure-copy _%prototype102949%_))))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%instance102952%_
                              _%obj102950%_
                              '1
                              '#f
                              'cast))
                           _%instance102952%_))
                       _%prototype102947%_
                       _%obj102914%_))))))))
    (define try-cast
      (lambda (_%descriptor102870%_ _%obj102872%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102876%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102870%_ '1 '#f '#f)))
               (_%klass-id102879%_
                (let () (declare (not safe)) (##type-id _%klass102876%_)))
               (_%obj-klass102882%_
                (let () (declare (not safe)) (class-of _%obj102872%_)))
               (_%obj-klass-id102885%_
                (let () (declare (not safe)) (##type-id _%obj-klass102882%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102879%_ _%obj-klass-id102885%_))
              _%obj102872%_
              (if (interface-subclass? _%obj-klass102882%_)
                  (try-cast
                   _%descriptor102870%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102872%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102894%_ ()
                        (if (let ((__tmp103595
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103595 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102894%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102879%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102885%_))
                    (let ((_%prototype102905%_
                           (let ((_%$e102898%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102898%_
                                 ((lambda (_%prototype102901%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102901%_)
                                  _%$e102898%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102870%_
                                    _%klass102876%_
                                    _%obj-klass102882%_))))))
                      ((lambda (_%prototype102907%_ _%obj102908%_)
                         (if _%prototype102907%_
                             (let ((_%instance102910%_
                                    (let ()
                                      (declare (not safe))
                                      (##structure-copy _%prototype102907%_))))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-set!
                                  _%instance102910%_
                                  _%obj102908%_
                                  '1
                                  '#f
                                  'cast))
                               _%instance102910%_)
                             '#f))
                       _%prototype102905%_
                       _%obj102872%_))))))))
    (define satisfies?
      (lambda (_%descriptor102830%_ _%obj102832%_)
        (declare (not interrupts-enabled))
        (let* ((_%klass102836%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor102830%_ '1 '#f '#f)))
               (_%klass-id102839%_
                (let () (declare (not safe)) (##type-id _%klass102836%_)))
               (_%obj-klass102842%_
                (let () (declare (not safe)) (class-of _%obj102832%_)))
               (_%obj-klass-id102845%_
                (let () (declare (not safe)) (##type-id _%obj-klass102842%_))))
          (if (let ()
                (declare (not safe))
                (##eq? _%klass-id102839%_ _%obj-klass-id102845%_))
              _%obj102832%_
              (if (interface-subclass? _%obj-klass102842%_)
                  (satisfies?
                   _%descriptor102830%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%obj102832%_ '1 '#f '#f)))
                  (let ()
                    (let ()
                      (declare (not interrupts-enabled))
                      (let _%again102854%_ ()
                        (if (let ((__tmp103596
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '1
                                      '0))))
                              (declare (not safe))
                              (##fx= __tmp103596 '0))
                            '#!void
                            (begin
                              (let () (declare (not safe)) (##thread-yield!))
                              (_%again102854%_)))))
                    (let ()
                      (declare (not safe))
                      (##set-car!
                       __interface-prototypes-key
                       _%klass-id102839%_))
                    (let ()
                      (declare (not safe))
                      (##set-cdr!
                       __interface-prototypes-key
                       _%obj-klass-id102845%_))
                    (let ((_%prototype102865%_
                           (let ((_%$e102858%_
                                  (prototype-table-ref
                                   __interface-prototypes
                                   __interface-prototypes-key
                                   '#f)))
                             (if _%$e102858%_
                                 ((lambda (_%prototype102861%_)
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __interface-prototypes-mx
                                       '0
                                       '0
                                       '1))
                                    _%prototype102861%_)
                                  _%$e102858%_)
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##vector-cas!
                                      __interface-prototypes-mx
                                      '0
                                      '0
                                      '1))
                                   (try-create-prototype
                                    _%descriptor102830%_
                                    _%klass102836%_
                                    _%obj-klass102842%_))))))
                      ((lambda (_%prototype102867%_ _%obj102868%_)
                         (if _%prototype102867%_ '#t '#f))
                       _%prototype102865%_
                       _%obj102832%_))))))))))
