(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771093447)
  (begin
    (define CastError::t
      (let ((__tmp144550 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp144550
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args144464%_
        (apply make-instance CastError::t _%$args144464%_)))
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
      (lambda (_%where144338%_ _%message144339%_ . _%irritants144340%_)
        (let ((__tmp144551
               (let ((__obj144545
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj144545
                    _%message144339%_
                    'where:
                    _%where144338%_
                    'irritants:
                    _%irritants144340%_))
                 __obj144545)))
          (declare (not safe))
          (raise __tmp144551))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp144553 (list)) (__tmp144552 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp144553
         '(object)
         __tmp144552
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args144335%_
        (apply make-instance interface-instance::t _%$args144335%_)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t 'object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t 'object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-instance::t 'object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t 'object)))
    (define interface-descriptor::t
      (let ((__tmp144555 (list))
            (__tmp144554
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp144555
         '(type methods index)
         __tmp144554
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args144332%_
        (apply make-instance interface-descriptor::t _%$args144332%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'index)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'index)))
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
    (define &interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'index)))
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
    (define &interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'index)))
    (define __next-interface-index '0)
    (define __next-interface-index-lock (vector '0 '#f))
    (define __get-next-interface-index
      (lambda ()
        (let ()
          (declare (not interrupts-enabled))
          (let _%again144310%_ ((_%spin144313%_ '0))
            (if (let ((__tmp144556
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp144556 '0))
                (let ((__tmp144557 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp144557))
                (if (let () (declare (not safe)) (##fx< _%spin144313%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again144310%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin144313%_ '1))))
                    (let ((_%owner144319%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner144319%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner144319%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again144310%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r144327%_
               (let ((_%index144325%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index144325%_ '1)))
                 _%index144325%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r144327%_)))
    (define interface-descriptor:::init!
      (lambda (_%self144291%_ _%type144292%_ _%methods144293%_)
        (let ((_%self144296%_ _%self144291%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144296%_
             _%type144292%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144296%_
             _%methods144293%_
             '2
             '#f
             '#f))
          (let ((__tmp144558 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144296%_
             __tmp144558
             '3
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       interface-descriptor::t
       ':init!
       interface-descriptor:::init!
       '#f))
    (define prototype-table::t
      (let ((__tmp144560 (list))
            (__tmp144559
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp144560
         '(lock table)
         __tmp144559
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args144166%_
        (apply make-instance prototype-table::t _%$args144166%_)))
    (define prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'lock)))
    (define prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'table)))
    (define prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'lock)))
    (define prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'table)))
    (define &prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'lock)))
    (define &prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'table)))
    (define &prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'lock)))
    (define &prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'table)))
    (define prototype-table:::init!
      (lambda (_%self144152%_)
        (let ((_%self144155%_ _%self144152%_))
          (let ((__tmp144561 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self144155%_ __tmp144561 '1 '#f '#f))
          (let ((__tmp144562
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144155%_
             __tmp144562
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       prototype-table::t
       ':init!
       prototype-table:::init!
       '#f))
    (define ____prototype-table-get
      (lambda (_%prototable143981%_ _%descriptor143982%_)
        (let* ((_%prototable143985%_ _%prototable143981%_)
               (_%descriptor143993%_ _%descriptor143982%_))
          (declare (not safe))
          (let ((_%lock144003%_
                 (##unchecked-structure-ref _%prototable143985%_ '1 '#f '#f))
                (_%index144004%_
                 (##unchecked-structure-ref _%descriptor143993%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144008%_ ((_%spin144011%_ '0))
                (if (##fx= (##vector-cas! _%lock144003%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144003%_ '1 (current-thread))
                    (if (##fx< _%spin144011%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144008%_ (##fx+ _%spin144011%_ '1)))
                        (let ((_%owner144017%_
                               (##vector-ref _%lock144003%_ '1)))
                          (if (eq? _%owner144017%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144017%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144008%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144025%_
                   (let ((_%tab144023%_
                          (##unchecked-structure-ref
                           _%prototable143985%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144004%_ (vector-length _%tab144023%_))
                         (vector-ref _%tab144023%_ _%index144004%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144003%_ '1 '#f)
                  (##vector-cas! _%lock144003%_ '0 '0 '1)))
              _%$r144025%_)))))
    (define __prototype-table-get
      (lambda (_%prototable141960%_ _%descriptor141961%_)
        (let* ((_%prototable141964%_ _%prototable141960%_)
               (_%descriptor141972%_ _%descriptor141961%_))
          (____prototype-table-get
           _%prototable141964%_
           _%descriptor141972%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable143926%_ _%descriptor143927%_ _%prototype143928%_)
        (let* ((_%prototable143931%_ _%prototable143926%_)
               (_%descriptor143939%_ _%descriptor143927%_))
          (declare (not safe))
          (let ((_%lock143949%_
                 (##unchecked-structure-ref _%prototable143931%_ '1 '#f '#f))
                (_%index143950%_
                 (##unchecked-structure-ref _%descriptor143939%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again143954%_ ((_%spin143957%_ '0))
                (if (##fx= (##vector-cas! _%lock143949%_ '0 '1 '0) '0)
                    (##vector-set! _%lock143949%_ '1 (current-thread))
                    (if (##fx< _%spin143957%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again143954%_ (##fx+ _%spin143957%_ '1)))
                        (let ((_%owner143963%_
                               (##vector-ref _%lock143949%_ '1)))
                          (if (eq? _%owner143963%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner143963%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again143954%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r143976%_
                   (let ((_%tab143969%_
                          (##unchecked-structure-ref
                           _%prototable143931%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index143950%_ (vector-length _%tab143969%_))
                         (vector-set!
                          _%tab143969%_
                          _%index143950%_
                          _%prototype143928%_)
                         (let* ((_%new-size143971%_ __next-interface-index)
                                (_%new-tab143973%_
                                 (##make-vector _%new-size143971%_ '#f)))
                           (subvector-move!
                            _%tab143969%_
                            '0
                            (vector-length _%tab143969%_)
                            _%new-tab143973%_
                            '0)
                           (vector-set!
                            _%new-tab143973%_
                            _%index143950%_
                            _%prototype143928%_)
                           (##unchecked-structure-set!
                            _%prototable143931%_
                            _%new-tab143973%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock143949%_ '1 '#f)
                  (##vector-cas! _%lock143949%_ '0 '0 '1)))
              _%$r143976%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable142101%_ _%descriptor142102%_ _%prototype142103%_)
        (let* ((_%prototable142106%_ _%prototable142101%_)
               (_%descriptor142114%_ _%descriptor142102%_))
          (____prototype-table-set!
           _%prototable142106%_
           _%descriptor142114%_
           _%prototype142103%_))))
    (define interface-subclass?
      (lambda (_%klass143919%_)
        (let ((_%super143920143922%_
               (let () (declare (not safe)) (##type-super _%klass143919%_))))
          (if _%super143920143922%_
              (let ((_%super143924%_ _%super143920143922%_))
                (eq? (let () (declare (not safe)) (##type-id _%super143924%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass143911%_)
        (let ((_%$e143913%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass143911%_ '13 '#f '#f))))
          (if _%$e143913%_
              _%$e143913%_
              (let ((_%tab143917%_
                     (let ((__obj144549
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj144549)
                       __obj144549)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass143911%_
                   _%tab143917%_
                   '13
                   '#f
                   '#f))
                _%tab143917%_)))))
    (define create-prototype
      (lambda (_%descriptor143594%_ _%klass143595%_ _%obj-klass143596%_)
        (let ((_%method-table143614%_
               (let ((_%klass143598%_ _%obj-klass143596%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143598%_ 'class))
                     (let ((_%klass143603%_ _%klass143598%_))
                       (declare (not safe))
                       (__specialize-class _%klass143603%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143598%_)
                       '#!void)))))
          (let _%loop143617%_ ((_%rest143620%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143594%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143622%_ '0)
                               (_%methods143624%_ '()))
            (let* ((_%rest143626143634%_ _%rest143620%_)
                   (_%else143628143761%_
                    (lambda ()
                      (let ((_%prototype143677%_
                             (let* ((_%klass143642%_ _%klass143595%_)
                                    (_%k143645%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143622%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143642%_
                                      'class))
                                   (let* ((_%klass143650%_ _%klass143642%_)
                                          (_%k143667%_ _%k143645%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143650%_
                                      _%k143667%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143642%_)
                                     '#!void)))))
                        (let _%loop143680%_ ((_%rest143682%_ _%methods143624%_)
                                             (_%off143683%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143622%_ '1))))
                          (let* ((_%rest143685143693%_ _%rest143682%_)
                                 (_%else143687143742%_
                                  (lambda ()
                                    (let ((_%tab143701%_
                                           (class-type-interface-table
                                            _%obj-klass143596%_)))
                                      (let* ((_%prototable143704%_
                                              _%tab143701%_)
                                             (_%descriptor143707%_
                                              _%descriptor143594%_)
                                             (_%prototype143710%_
                                              _%prototype143677%_)
                                             (_%prototable143714%_
                                              _%prototable143704%_)
                                             (_%descriptor143731%_
                                              _%descriptor143707%_))
                                        (____prototype-table-set!
                                         _%prototable143714%_
                                         _%descriptor143731%_
                                         _%prototype143710%_))
                                      ((lambda (_%prototype143740%_)
                                         _%prototype143740%_)
                                       _%prototype143677%_))))
                                 (_%K143689143749%_
                                  (lambda (_%rest143745%_ _%method143746%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143677%_
                                       _%method143746%_
                                       _%off143683%_
                                       _%klass143595%_
                                       '#f))
                                    (_%loop143680%_
                                     _%rest143745%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143683%_ '1))))))
                            (if (pair? _%rest143685143693%_)
                                (let ((_%hd143690143752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143685143693%_)))
                                      (_%tl143691143754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143685143693%_))))
                                  (let* ((_%method143757%_ _%hd143690143752%_)
                                         (_%rest143759%_ _%tl143691143754%_))
                                    (_%K143689143749%_
                                     _%rest143759%_
                                     _%method143757%_)))
                                (_%else143687143742%_)))))))
                   (_%K143630143899%_
                    (lambda (_%rest143764%_ _%method-spec143765%_)
                      (if (pair? _%method-spec143765%_)
                          (let _%loop-inner143769%_ ((_%methods-rest143772%_
                                                      _%method-spec143765%_))
                            (let* ((_%methods-rest143774143782%_
                                    _%methods-rest143772%_)
                                   (_%else143776143832%_
                                    (lambda ()
                                      (let ((_%tab143790%_
                                             (class-type-interface-table
                                              _%obj-klass143596%_)))
                                        (let* ((_%prototable143792%_
                                                _%tab143790%_)
                                               (_%descriptor143795%_
                                                _%descriptor143594%_)
                                               (_%prototype143798%_ '#!void)
                                               (_%prototable143802%_
                                                _%prototable143792%_)
                                               (_%descriptor143821%_
                                                _%descriptor143795%_))
                                          (____prototype-table-set!
                                           _%prototable143802%_
                                           _%descriptor143821%_
                                           _%prototype143798%_))
                                        ((lambda (_%method143830%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor143594%_
                                            'class:
                                            _%obj-klass143596%_
                                            'method:
                                            _%method143830%_)
                                           '#!void)
                                         _%method-spec143765%_))))
                                   (_%K143778143845%_
                                    (lambda (_%methods-rest143835%_
                                             _%method-name143836%_)
                                      (let ((_%$e143839%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143614%_
                                                _%method-name143836%_
                                                '#f))))
                                        (if _%$e143839%_
                                            ((lambda (_%method143842%_)
                                               (_%loop143617%_
                                                _%rest143764%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143622%_ '1))
                                                (cons _%method143842%_
                                                      _%methods143624%_)))
                                             _%$e143839%_)
                                            (_%loop-inner143769%_
                                             _%methods-rest143835%_))))))
                              (if (pair? _%methods-rest143774143782%_)
                                  (let ((_%hd143779143848%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143774143782%_)))
                                        (_%tl143780143850%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143774143782%_))))
                                    (let* ((_%method-name143853%_
                                            _%hd143779143848%_)
                                           (_%methods-rest143855%_
                                            _%tl143780143850%_))
                                      (_%K143778143845%_
                                       _%methods-rest143855%_
                                       _%method-name143853%_)))
                                  (_%else143776143832%_))))
                          (let ((_%$e143857%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143614%_
                                    _%method-spec143765%_
                                    '#f))))
                            (if _%$e143857%_
                                ((lambda (_%method143860%_)
                                   (_%loop143617%_
                                    _%rest143764%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143622%_ '1))
                                    (cons _%method143860%_ _%methods143624%_)))
                                 _%$e143857%_)
                                (let ((_%tab143863%_
                                       (class-type-interface-table
                                        _%obj-klass143596%_)))
                                  (let* ((_%prototable143865%_ _%tab143863%_)
                                         (_%descriptor143868%_
                                          _%descriptor143594%_)
                                         (_%prototype143871%_ '#!void)
                                         (_%prototable143875%_
                                          _%prototable143865%_)
                                         (_%descriptor143888%_
                                          _%descriptor143868%_))
                                    (____prototype-table-set!
                                     _%prototable143875%_
                                     _%descriptor143888%_
                                     _%prototype143871%_))
                                  ((lambda (_%method143897%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor143594%_
                                      'class:
                                      _%obj-klass143596%_
                                      'method:
                                      _%method143897%_)
                                     '#!void)
                                   _%method-spec143765%_))))))))
              (if (pair? _%rest143626143634%_)
                  (let ((_%hd143631143902%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143626143634%_)))
                        (_%tl143632143904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143626143634%_))))
                    (let* ((_%method-spec143907%_ _%hd143631143902%_)
                           (_%rest143909%_ _%tl143632143904%_))
                      (_%K143630143899%_
                       _%rest143909%_
                       _%method-spec143907%_)))
                  (_%else143628143761%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor143277%_ _%klass143278%_ _%obj-klass143279%_)
        (let ((_%method-table143297%_
               (let ((_%klass143281%_ _%obj-klass143279%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143281%_ 'class))
                     (let ((_%klass143286%_ _%klass143281%_))
                       (declare (not safe))
                       (__specialize-class _%klass143286%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143281%_)
                       '#!void)))))
          (let _%loop143300%_ ((_%rest143303%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143277%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143305%_ '0)
                               (_%methods143307%_ '()))
            (let* ((_%rest143309143317%_ _%rest143303%_)
                   (_%else143311143444%_
                    (lambda ()
                      (let ((_%prototype143360%_
                             (let* ((_%klass143325%_ _%klass143278%_)
                                    (_%k143328%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143305%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143325%_
                                      'class))
                                   (let* ((_%klass143333%_ _%klass143325%_)
                                          (_%k143350%_ _%k143328%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143333%_
                                      _%k143350%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143325%_)
                                     '#!void)))))
                        (let _%loop143363%_ ((_%rest143365%_ _%methods143307%_)
                                             (_%off143366%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143305%_ '1))))
                          (let* ((_%rest143368143376%_ _%rest143365%_)
                                 (_%else143370143425%_
                                  (lambda ()
                                    (let ((_%tab143384%_
                                           (class-type-interface-table
                                            _%obj-klass143279%_)))
                                      (let* ((_%prototable143387%_
                                              _%tab143384%_)
                                             (_%descriptor143390%_
                                              _%descriptor143277%_)
                                             (_%prototype143393%_
                                              _%prototype143360%_)
                                             (_%prototable143397%_
                                              _%prototable143387%_)
                                             (_%descriptor143414%_
                                              _%descriptor143390%_))
                                        (____prototype-table-set!
                                         _%prototable143397%_
                                         _%descriptor143414%_
                                         _%prototype143393%_))
                                      ((lambda (_%prototype143423%_)
                                         _%prototype143423%_)
                                       _%prototype143360%_))))
                                 (_%K143372143432%_
                                  (lambda (_%rest143428%_ _%method143429%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143360%_
                                       _%method143429%_
                                       _%off143366%_
                                       _%klass143278%_
                                       '#f))
                                    (_%loop143363%_
                                     _%rest143428%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143366%_ '1))))))
                            (if (pair? _%rest143368143376%_)
                                (let ((_%hd143373143435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143368143376%_)))
                                      (_%tl143374143437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143368143376%_))))
                                  (let* ((_%method143440%_ _%hd143373143435%_)
                                         (_%rest143442%_ _%tl143374143437%_))
                                    (_%K143372143432%_
                                     _%rest143442%_
                                     _%method143440%_)))
                                (_%else143370143425%_)))))))
                   (_%K143313143582%_
                    (lambda (_%rest143447%_ _%method-spec143448%_)
                      (if (pair? _%method-spec143448%_)
                          (let _%loop-inner143452%_ ((_%methods-rest143455%_
                                                      _%method-spec143448%_))
                            (let* ((_%methods-rest143457143465%_
                                    _%methods-rest143455%_)
                                   (_%else143459143515%_
                                    (lambda ()
                                      (let ((_%tab143473%_
                                             (class-type-interface-table
                                              _%obj-klass143279%_)))
                                        (let* ((_%prototable143475%_
                                                _%tab143473%_)
                                               (_%descriptor143478%_
                                                _%descriptor143277%_)
                                               (_%prototype143481%_ '#!void)
                                               (_%prototable143485%_
                                                _%prototable143475%_)
                                               (_%descriptor143504%_
                                                _%descriptor143478%_))
                                          (____prototype-table-set!
                                           _%prototable143485%_
                                           _%descriptor143504%_
                                           _%prototype143481%_))
                                        ((lambda (_%method143513%_) '#f)
                                         _%method-spec143448%_))))
                                   (_%K143461143528%_
                                    (lambda (_%methods-rest143518%_
                                             _%method-name143519%_)
                                      (let ((_%$e143522%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143297%_
                                                _%method-name143519%_
                                                '#f))))
                                        (if _%$e143522%_
                                            ((lambda (_%method143525%_)
                                               (_%loop143300%_
                                                _%rest143447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143305%_ '1))
                                                (cons _%method143525%_
                                                      _%methods143307%_)))
                                             _%$e143522%_)
                                            (_%loop-inner143452%_
                                             _%methods-rest143518%_))))))
                              (if (pair? _%methods-rest143457143465%_)
                                  (let ((_%hd143462143531%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143457143465%_)))
                                        (_%tl143463143533%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143457143465%_))))
                                    (let* ((_%method-name143536%_
                                            _%hd143462143531%_)
                                           (_%methods-rest143538%_
                                            _%tl143463143533%_))
                                      (_%K143461143528%_
                                       _%methods-rest143538%_
                                       _%method-name143536%_)))
                                  (_%else143459143515%_))))
                          (let ((_%$e143540%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143297%_
                                    _%method-spec143448%_
                                    '#f))))
                            (if _%$e143540%_
                                ((lambda (_%method143543%_)
                                   (_%loop143300%_
                                    _%rest143447%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143305%_ '1))
                                    (cons _%method143543%_ _%methods143307%_)))
                                 _%$e143540%_)
                                (let ((_%tab143546%_
                                       (class-type-interface-table
                                        _%obj-klass143279%_)))
                                  (let* ((_%prototable143548%_ _%tab143546%_)
                                         (_%descriptor143551%_
                                          _%descriptor143277%_)
                                         (_%prototype143554%_ '#!void)
                                         (_%prototable143558%_
                                          _%prototable143548%_)
                                         (_%descriptor143571%_
                                          _%descriptor143551%_))
                                    (____prototype-table-set!
                                     _%prototable143558%_
                                     _%descriptor143571%_
                                     _%prototype143554%_))
                                  ((lambda (_%method143580%_) '#f)
                                   _%method-spec143448%_))))))))
              (if (pair? _%rest143309143317%_)
                  (let ((_%hd143314143585%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143309143317%_)))
                        (_%tl143315143587%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143309143317%_))))
                    (let* ((_%method-spec143590%_ _%hd143314143585%_)
                           (_%rest143592%_ _%tl143315143587%_))
                      (_%K143313143582%_
                       _%rest143592%_
                       _%method-spec143590%_)))
                  (_%else143311143444%_)))))))
    (define cast
      (lambda (_%descriptor143119%_ _%obj143121%_)
        (let* ((_%klass143124%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143119%_ '1 '#f '#f)))
               (_%klass-id143127%_
                (let () (declare (not safe)) (##type-id _%klass143124%_))))
          (let _%loop143131%_ ((_%obj143134%_ _%obj143121%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143137%_
                    (let () (declare (not safe)) (class-of _%obj143134%_)))
                   (_%obj-klass-id143140%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143137%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143127%_ _%obj-klass-id143140%_))
                  ((lambda (_%obj143145%_) _%obj143145%_) _%obj143134%_)
                  (if (interface-subclass? _%obj-klass143137%_)
                      (let* ((_%tab143148%_
                              (class-type-interface-table _%obj-klass143137%_))
                             (_%$e143188%_
                              (let* ((_%prototable143151%_ _%tab143148%_)
                                     (_%descriptor143154%_
                                      _%descriptor143119%_)
                                     (_%prototable143158%_
                                      _%prototable143151%_)
                                     (_%descriptor143179%_
                                      _%descriptor143154%_))
                                (____prototype-table-get
                                 _%prototable143158%_
                                 _%descriptor143179%_))))
                        (if _%$e143188%_
                            ((lambda (_%prototype143191%_)
                               (if (eq? _%prototype143191%_ '#!void)
                                   (_%loop143131%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143134%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143194%_
                                             _%prototype143195%_
                                             _%obj143196%_)
                                      (if _%prototype143195%_
                                          (let ((_%instance143198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143195%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143198%_
                                               _%obj143196%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143198%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143194%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143196%_)))
                                            '#!void)))
                                    _%descriptor143119%_
                                    _%prototype143191%_
                                    _%obj143134%_)))
                             _%$e143188%_)
                            (let ((_%$e143200%_
                                   (try-create-prototype
                                    _%descriptor143119%_
                                    _%klass143124%_
                                    _%obj-klass143137%_)))
                              (if _%$e143200%_
                                  ((lambda (_%prototype143203%_)
                                     ((lambda (_%descriptor143205%_
                                               _%prototype143206%_
                                               _%obj143207%_)
                                        (if _%prototype143206%_
                                            (let ((_%instance143209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143206%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143209%_
                                                 _%obj143207%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143209%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143205%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143207%_)))
                                              '#!void)))
                                      _%descriptor143119%_
                                      _%prototype143203%_
                                      _%obj143134%_))
                                   _%$e143200%_)
                                  (_%loop143131%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143134%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143213%_
                              (class-type-interface-table _%obj-klass143137%_))
                             (_%$e143242%_
                              (let* ((_%prototable143215%_ _%tab143213%_)
                                     (_%descriptor143218%_
                                      _%descriptor143119%_)
                                     (_%prototable143222%_
                                      _%prototable143215%_)
                                     (_%descriptor143233%_
                                      _%descriptor143218%_))
                                (____prototype-table-get
                                 _%prototable143222%_
                                 _%descriptor143233%_))))
                        (if _%$e143242%_
                            ((lambda (_%prototype143245%_)
                               (if (eq? _%prototype143245%_ '#!void)
                                   ((lambda (_%descriptor143247%_
                                             _%prototype143248%_
                                             _%obj143249%_)
                                      (if _%prototype143248%_
                                          (let ((_%instance143251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143248%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143251%_
                                               _%obj143249%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143251%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143247%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143249%_)))
                                            '#!void)))
                                    _%descriptor143119%_
                                    '#f
                                    _%obj143134%_)
                                   ((lambda (_%descriptor143253%_
                                             _%prototype143254%_
                                             _%obj143255%_)
                                      (if _%prototype143254%_
                                          (let ((_%instance143257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143254%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143257%_
                                               _%obj143255%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143257%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143253%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143255%_)))
                                            '#!void)))
                                    _%descriptor143119%_
                                    _%prototype143245%_
                                    _%obj143134%_)))
                             _%$e143242%_)
                            (let ((_%$e143259%_
                                   (create-prototype
                                    _%descriptor143119%_
                                    _%klass143124%_
                                    _%obj-klass143137%_)))
                              (if _%$e143259%_
                                  ((lambda (_%prototype143262%_)
                                     ((lambda (_%descriptor143264%_
                                               _%prototype143265%_
                                               _%obj143266%_)
                                        (if _%prototype143265%_
                                            (let ((_%instance143268%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143265%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143268%_
                                                 _%obj143266%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143268%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143264%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143266%_)))
                                              '#!void)))
                                      _%descriptor143119%_
                                      _%prototype143262%_
                                      _%obj143134%_))
                                   _%$e143259%_)
                                  ((lambda (_%descriptor143271%_
                                            _%prototype143272%_
                                            _%obj143273%_)
                                     (if _%prototype143272%_
                                         (let ((_%instance143275%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143272%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143275%_
                                              _%obj143273%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143275%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor143271%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj143273%_)))
                                           '#!void)))
                                   _%descriptor143119%_
                                   '#f
                                   _%obj143134%_))))))))))))
    (define try-cast
      (lambda (_%descriptor142961%_ _%obj142963%_)
        (let* ((_%klass142966%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142961%_ '1 '#f '#f)))
               (_%klass-id142969%_
                (let () (declare (not safe)) (##type-id _%klass142966%_))))
          (let _%loop142973%_ ((_%obj142976%_ _%obj142963%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142979%_
                    (let () (declare (not safe)) (class-of _%obj142976%_)))
                   (_%obj-klass-id142982%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142979%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142969%_ _%obj-klass-id142982%_))
                  ((lambda (_%obj142987%_) _%obj142987%_) _%obj142976%_)
                  (if (interface-subclass? _%obj-klass142979%_)
                      (let* ((_%tab142990%_
                              (class-type-interface-table _%obj-klass142979%_))
                             (_%$e143030%_
                              (let* ((_%prototable142993%_ _%tab142990%_)
                                     (_%descriptor142996%_
                                      _%descriptor142961%_)
                                     (_%prototable143000%_
                                      _%prototable142993%_)
                                     (_%descriptor143021%_
                                      _%descriptor142996%_))
                                (____prototype-table-get
                                 _%prototable143000%_
                                 _%descriptor143021%_))))
                        (if _%$e143030%_
                            ((lambda (_%prototype143033%_)
                               (if (eq? _%prototype143033%_ '#!void)
                                   (_%loop142973%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142976%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143036%_
                                             _%prototype143037%_
                                             _%obj143038%_)
                                      (if _%prototype143037%_
                                          (let ((_%instance143040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143037%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143040%_
                                               _%obj143038%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143040%_)
                                          '#f))
                                    _%descriptor142961%_
                                    _%prototype143033%_
                                    _%obj142976%_)))
                             _%$e143030%_)
                            (let ((_%$e143042%_
                                   (try-create-prototype
                                    _%descriptor142961%_
                                    _%klass142966%_
                                    _%obj-klass142979%_)))
                              (if _%$e143042%_
                                  ((lambda (_%prototype143045%_)
                                     ((lambda (_%descriptor143047%_
                                               _%prototype143048%_
                                               _%obj143049%_)
                                        (if _%prototype143048%_
                                            (let ((_%instance143051%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143048%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143051%_
                                                 _%obj143049%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143051%_)
                                            '#f))
                                      _%descriptor142961%_
                                      _%prototype143045%_
                                      _%obj142976%_))
                                   _%$e143042%_)
                                  (_%loop142973%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142976%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143055%_
                              (class-type-interface-table _%obj-klass142979%_))
                             (_%$e143084%_
                              (let* ((_%prototable143057%_ _%tab143055%_)
                                     (_%descriptor143060%_
                                      _%descriptor142961%_)
                                     (_%prototable143064%_
                                      _%prototable143057%_)
                                     (_%descriptor143075%_
                                      _%descriptor143060%_))
                                (____prototype-table-get
                                 _%prototable143064%_
                                 _%descriptor143075%_))))
                        (if _%$e143084%_
                            ((lambda (_%prototype143087%_)
                               (if (eq? _%prototype143087%_ '#!void)
                                   ((lambda (_%descriptor143089%_
                                             _%prototype143090%_
                                             _%obj143091%_)
                                      (if _%prototype143090%_
                                          (let ((_%instance143093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143090%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143093%_
                                               _%obj143091%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143093%_)
                                          '#f))
                                    _%descriptor142961%_
                                    '#f
                                    _%obj142976%_)
                                   ((lambda (_%descriptor143095%_
                                             _%prototype143096%_
                                             _%obj143097%_)
                                      (if _%prototype143096%_
                                          (let ((_%instance143099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143096%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143099%_
                                               _%obj143097%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143099%_)
                                          '#f))
                                    _%descriptor142961%_
                                    _%prototype143087%_
                                    _%obj142976%_)))
                             _%$e143084%_)
                            (let ((_%$e143101%_
                                   (try-create-prototype
                                    _%descriptor142961%_
                                    _%klass142966%_
                                    _%obj-klass142979%_)))
                              (if _%$e143101%_
                                  ((lambda (_%prototype143104%_)
                                     ((lambda (_%descriptor143106%_
                                               _%prototype143107%_
                                               _%obj143108%_)
                                        (if _%prototype143107%_
                                            (let ((_%instance143110%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143107%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143110%_
                                                 _%obj143108%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143110%_)
                                            '#f))
                                      _%descriptor142961%_
                                      _%prototype143104%_
                                      _%obj142976%_))
                                   _%$e143101%_)
                                  ((lambda (_%descriptor143113%_
                                            _%prototype143114%_
                                            _%obj143115%_)
                                     (if _%prototype143114%_
                                         (let ((_%instance143117%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143114%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143117%_
                                              _%obj143115%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143117%_)
                                         '#f))
                                   _%descriptor142961%_
                                   '#f
                                   _%obj142976%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor142815%_ _%obj142817%_)
        (let* ((_%klass142820%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142815%_ '1 '#f '#f)))
               (_%klass-id142823%_
                (let () (declare (not safe)) (##type-id _%klass142820%_))))
          (let _%loop142827%_ ((_%obj142830%_ _%obj142817%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142833%_
                    (let () (declare (not safe)) (class-of _%obj142830%_)))
                   (_%obj-klass-id142836%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142833%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142823%_ _%obj-klass-id142836%_))
                  ((lambda (_%obj142841%_) '#t) _%obj142830%_)
                  (if (interface-subclass? _%obj-klass142833%_)
                      (let* ((_%tab142844%_
                              (class-type-interface-table _%obj-klass142833%_))
                             (_%$e142884%_
                              (let* ((_%prototable142847%_ _%tab142844%_)
                                     (_%descriptor142850%_
                                      _%descriptor142815%_)
                                     (_%prototable142854%_
                                      _%prototable142847%_)
                                     (_%descriptor142875%_
                                      _%descriptor142850%_))
                                (____prototype-table-get
                                 _%prototable142854%_
                                 _%descriptor142875%_))))
                        (if _%$e142884%_
                            ((lambda (_%prototype142887%_)
                               (if (eq? _%prototype142887%_ '#!void)
                                   (_%loop142827%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142830%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor142890%_
                                             _%prototype142891%_
                                             _%obj142892%_)
                                      (if _%prototype142891%_ '#t '#f))
                                    _%descriptor142815%_
                                    _%prototype142887%_
                                    _%obj142830%_)))
                             _%$e142884%_)
                            (let ((_%$e142894%_
                                   (try-create-prototype
                                    _%descriptor142815%_
                                    _%klass142820%_
                                    _%obj-klass142833%_)))
                              (if _%$e142894%_
                                  ((lambda (_%prototype142897%_)
                                     ((lambda (_%descriptor142899%_
                                               _%prototype142900%_
                                               _%obj142901%_)
                                        (if _%prototype142900%_ '#t '#f))
                                      _%descriptor142815%_
                                      _%prototype142897%_
                                      _%obj142830%_))
                                   _%$e142894%_)
                                  (_%loop142827%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142830%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142905%_
                              (class-type-interface-table _%obj-klass142833%_))
                             (_%$e142934%_
                              (let* ((_%prototable142907%_ _%tab142905%_)
                                     (_%descriptor142910%_
                                      _%descriptor142815%_)
                                     (_%prototable142914%_
                                      _%prototable142907%_)
                                     (_%descriptor142925%_
                                      _%descriptor142910%_))
                                (____prototype-table-get
                                 _%prototable142914%_
                                 _%descriptor142925%_))))
                        (if _%$e142934%_
                            ((lambda (_%prototype142937%_)
                               (if (eq? _%prototype142937%_ '#!void)
                                   ((lambda (_%descriptor142939%_
                                             _%prototype142940%_
                                             _%obj142941%_)
                                      (if _%prototype142940%_ '#t '#f))
                                    _%descriptor142815%_
                                    '#f
                                    _%obj142830%_)
                                   ((lambda (_%descriptor142943%_
                                             _%prototype142944%_
                                             _%obj142945%_)
                                      (if _%prototype142944%_ '#t '#f))
                                    _%descriptor142815%_
                                    _%prototype142937%_
                                    _%obj142830%_)))
                             _%$e142934%_)
                            (let ((_%$e142947%_
                                   (try-create-prototype
                                    _%descriptor142815%_
                                    _%klass142820%_
                                    _%obj-klass142833%_)))
                              (if _%$e142947%_
                                  ((lambda (_%prototype142950%_)
                                     ((lambda (_%descriptor142952%_
                                               _%prototype142953%_
                                               _%obj142954%_)
                                        (if _%prototype142953%_ '#t '#f))
                                      _%descriptor142815%_
                                      _%prototype142950%_
                                      _%obj142830%_))
                                   _%$e142947%_)
                                  ((lambda (_%descriptor142957%_
                                            _%prototype142958%_
                                            _%obj142959%_)
                                     (if _%prototype142958%_ '#t '#f))
                                   _%descriptor142815%_
                                   '#f
                                   _%obj142830%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor142667%_
               _%obj142668%_
               _%with-prototype+receiver142669%_
               _%with-receiver142670%_)
        (let* ((_%descriptor142673%_ _%descriptor142667%_)
               (_%with-prototype+receiver142681%_
                _%with-prototype+receiver142669%_)
               (_%with-receiver142689%_ _%with-receiver142670%_)
               (_%klass142698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142673%_ '1 '#f '#f)))
               (_%klass-id142701%_
                (let () (declare (not safe)) (##type-id _%klass142698%_))))
          (let _%loop142705%_ ((_%obj142708%_ _%obj142668%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142711%_
                    (let () (declare (not safe)) (class-of _%obj142708%_)))
                   (_%obj-klass-id142714%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142711%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142701%_ _%obj-klass-id142714%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver142689%_ _%obj142708%_))
                  (if (interface-subclass? _%obj-klass142711%_)
                      (let* ((_%tab142720%_
                              (class-type-interface-table _%obj-klass142711%_))
                             (_%$e142762%_
                              (let* ((_%prototable142723%_ _%tab142720%_)
                                     (_%descriptor142726%_
                                      _%descriptor142673%_)
                                     (_%prototable142730%_
                                      _%prototable142723%_)
                                     (_%descriptor142753%_
                                      _%descriptor142726%_))
                                (____prototype-table-get
                                 _%prototable142730%_
                                 _%descriptor142753%_))))
                        (if _%$e142762%_
                            ((lambda (_%prototype142765%_)
                               (if (eq? _%prototype142765%_ '#!void)
                                   (_%loop142705%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142708%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142681%_
                                      _%descriptor142673%_
                                      _%prototype142765%_
                                      _%obj142708%_))))
                             _%$e142762%_)
                            (let ((_%$e142768%_
                                   (try-create-prototype
                                    _%descriptor142673%_
                                    _%klass142698%_
                                    _%obj-klass142711%_)))
                              (if _%$e142768%_
                                  ((lambda (_%prototype142771%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142681%_
                                        _%descriptor142673%_
                                        _%prototype142771%_
                                        _%obj142708%_)))
                                   _%$e142768%_)
                                  (_%loop142705%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142708%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142775%_
                              (class-type-interface-table _%obj-klass142711%_))
                             (_%$e142804%_
                              (let* ((_%prototable142777%_ _%tab142775%_)
                                     (_%descriptor142780%_
                                      _%descriptor142673%_)
                                     (_%prototable142784%_
                                      _%prototable142777%_)
                                     (_%descriptor142795%_
                                      _%descriptor142780%_))
                                (____prototype-table-get
                                 _%prototable142784%_
                                 _%descriptor142795%_))))
                        (if _%$e142804%_
                            ((lambda (_%prototype142807%_)
                               (if (eq? _%prototype142807%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142681%_
                                      _%descriptor142673%_
                                      '#f
                                      _%obj142708%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142681%_
                                      _%descriptor142673%_
                                      _%prototype142807%_
                                      _%obj142708%_))))
                             _%$e142804%_)
                            (let ((_%$e142809%_
                                   (create-prototype
                                    _%descriptor142673%_
                                    _%klass142698%_
                                    _%obj-klass142711%_)))
                              (if _%$e142809%_
                                  ((lambda (_%prototype142812%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142681%_
                                        _%descriptor142673%_
                                        _%prototype142812%_
                                        _%obj142708%_)))
                                   _%$e142809%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver142681%_
                                     _%descriptor142673%_
                                     '#f
                                     _%obj142708%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor142630%_
               _%obj142631%_
               _%with-prototype+receiver142632%_
               _%with-receiver142633%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor142630%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor142637%_ _%descriptor142630%_))
              (if (procedure? _%with-prototype+receiver142632%_)
                  (let ((_%with-prototype+receiver142647%_
                         _%with-prototype+receiver142632%_))
                    (if (procedure? _%with-receiver142633%_)
                        (let ((_%with-receiver142657%_
                               _%with-receiver142633%_))
                          (__with-prototype
                           _%descriptor142637%_
                           _%obj142631%_
                           _%with-prototype+receiver142647%_
                           _%with-receiver142657%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver142633%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver142632%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor142630%_)
              '#!void))))))
