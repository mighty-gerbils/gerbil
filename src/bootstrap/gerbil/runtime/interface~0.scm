(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771022574)
  (begin
    (define CastError::t
      (let ((__tmp143956 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp143956
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args143870%_
        (apply make-instance CastError::t _%$args143870%_)))
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
      (lambda (_%where143744%_ _%message143745%_ . _%irritants143746%_)
        (let ((__tmp143957
               (let ((__obj143951
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj143951
                    _%message143745%_
                    'where:
                    _%where143744%_
                    'irritants:
                    _%irritants143746%_))
                 __obj143951)))
          (declare (not safe))
          (raise __tmp143957))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp143959 (list)) (__tmp143958 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp143959
         '(object)
         __tmp143958
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args143741%_
        (apply make-instance interface-instance::t _%$args143741%_)))
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
      (let ((__tmp143961 (list))
            (__tmp143960
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp143961
         '(type methods index)
         __tmp143960
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args143738%_
        (apply make-instance interface-descriptor::t _%$args143738%_)))
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
          (let _%again143716%_ ((_%spin143719%_ '0))
            (if (let ((__tmp143962
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp143962 '0))
                (let ((__tmp143963 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp143963))
                (if (let () (declare (not safe)) (##fx< _%spin143719%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again143716%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin143719%_ '1))))
                    (let ((_%owner143725%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner143725%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner143725%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again143716%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r143733%_
               (let ((_%index143731%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index143731%_ '1)))
                 _%index143731%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r143733%_)))
    (define interface-descriptor:::init!
      (lambda (_%self143697%_ _%type143698%_ _%methods143699%_)
        (let ((_%self143702%_ _%self143697%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self143702%_
             _%type143698%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self143702%_
             _%methods143699%_
             '2
             '#f
             '#f))
          (let ((__tmp143964 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self143702%_
             __tmp143964
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
      (let ((__tmp143966 (list))
            (__tmp143965
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp143966
         '(lock table)
         __tmp143965
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args143572%_
        (apply make-instance prototype-table::t _%$args143572%_)))
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
      (lambda (_%self143558%_)
        (let ((_%self143561%_ _%self143558%_))
          (let ((__tmp143967 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self143561%_ __tmp143967 '1 '#f '#f))
          (let ((__tmp143968
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self143561%_
             __tmp143968
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
      (lambda (_%prototable143387%_ _%descriptor143388%_)
        (let* ((_%prototable143391%_ _%prototable143387%_)
               (_%descriptor143399%_ _%descriptor143388%_))
          (declare (not safe))
          (let ((_%lock143409%_
                 (##unchecked-structure-ref _%prototable143391%_ '1 '#f '#f))
                (_%index143410%_
                 (##unchecked-structure-ref _%descriptor143399%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again143414%_ ((_%spin143417%_ '0))
                (if (##fx= (##vector-cas! _%lock143409%_ '0 '1 '0) '0)
                    (##vector-set! _%lock143409%_ '1 (current-thread))
                    (if (##fx< _%spin143417%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again143414%_ (##fx+ _%spin143417%_ '1)))
                        (let ((_%owner143423%_
                               (##vector-ref _%lock143409%_ '1)))
                          (if (eq? _%owner143423%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner143423%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again143414%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r143431%_
                   (let ((_%tab143429%_
                          (##unchecked-structure-ref
                           _%prototable143391%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index143410%_ (vector-length _%tab143429%_))
                         (vector-ref _%tab143429%_ _%index143410%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock143409%_ '1 '#f)
                  (##vector-cas! _%lock143409%_ '0 '0 '1)))
              _%$r143431%_)))))
    (define __prototype-table-get
      (lambda (_%prototable141366%_ _%descriptor141367%_)
        (let* ((_%prototable141370%_ _%prototable141366%_)
               (_%descriptor141378%_ _%descriptor141367%_))
          (____prototype-table-get
           _%prototable141370%_
           _%descriptor141378%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable143332%_ _%descriptor143333%_ _%prototype143334%_)
        (let* ((_%prototable143337%_ _%prototable143332%_)
               (_%descriptor143345%_ _%descriptor143333%_))
          (declare (not safe))
          (let ((_%lock143355%_
                 (##unchecked-structure-ref _%prototable143337%_ '1 '#f '#f))
                (_%index143356%_
                 (##unchecked-structure-ref _%descriptor143345%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again143360%_ ((_%spin143363%_ '0))
                (if (##fx= (##vector-cas! _%lock143355%_ '0 '1 '0) '0)
                    (##vector-set! _%lock143355%_ '1 (current-thread))
                    (if (##fx< _%spin143363%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again143360%_ (##fx+ _%spin143363%_ '1)))
                        (let ((_%owner143369%_
                               (##vector-ref _%lock143355%_ '1)))
                          (if (eq? _%owner143369%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner143369%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again143360%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r143382%_
                   (let ((_%tab143375%_
                          (##unchecked-structure-ref
                           _%prototable143337%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index143356%_ (vector-length _%tab143375%_))
                         (vector-set!
                          _%tab143375%_
                          _%index143356%_
                          _%prototype143334%_)
                         (let* ((_%new-size143377%_ __next-interface-index)
                                (_%new-tab143379%_
                                 (##make-vector _%new-size143377%_ '#f)))
                           (subvector-move!
                            _%tab143375%_
                            '0
                            (vector-length _%tab143375%_)
                            _%new-tab143379%_
                            '0)
                           (vector-set!
                            _%new-tab143379%_
                            _%index143356%_
                            _%prototype143334%_)
                           (##unchecked-structure-set!
                            _%prototable143337%_
                            _%new-tab143379%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock143355%_ '1 '#f)
                  (##vector-cas! _%lock143355%_ '0 '0 '1)))
              _%$r143382%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable141507%_ _%descriptor141508%_ _%prototype141509%_)
        (let* ((_%prototable141512%_ _%prototable141507%_)
               (_%descriptor141520%_ _%descriptor141508%_))
          (____prototype-table-set!
           _%prototable141512%_
           _%descriptor141520%_
           _%prototype141509%_))))
    (define interface-subclass?
      (lambda (_%klass143325%_)
        (let ((_%super143326143328%_
               (let () (declare (not safe)) (##type-super _%klass143325%_))))
          (if _%super143326143328%_
              (let ((_%super143330%_ _%super143326143328%_))
                (eq? (let () (declare (not safe)) (##type-id _%super143330%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass143317%_)
        (let ((_%$e143319%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass143317%_ '13 '#f '#f))))
          (if _%$e143319%_
              _%$e143319%_
              (let ((_%tab143323%_
                     (let ((__obj143955
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj143955)
                       __obj143955)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass143317%_
                   _%tab143323%_
                   '13
                   '#f
                   '#f))
                _%tab143323%_)))))
    (define create-prototype
      (lambda (_%descriptor143000%_ _%klass143001%_ _%obj-klass143002%_)
        (let ((_%method-table143020%_
               (let ((_%klass143004%_ _%obj-klass143002%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143004%_ 'class))
                     (let ((_%klass143009%_ _%klass143004%_))
                       (declare (not safe))
                       (__specialize-class _%klass143009%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143004%_)
                       '#!void)))))
          (let _%loop143023%_ ((_%rest143026%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143000%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143028%_ '0)
                               (_%methods143030%_ '()))
            (let* ((_%rest143032143040%_ _%rest143026%_)
                   (_%else143034143167%_
                    (lambda ()
                      (let ((_%prototype143083%_
                             (let* ((_%klass143048%_ _%klass143001%_)
                                    (_%k143051%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143028%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143048%_
                                      'class))
                                   (let* ((_%klass143056%_ _%klass143048%_)
                                          (_%k143073%_ _%k143051%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143056%_
                                      _%k143073%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143048%_)
                                     '#!void)))))
                        (let _%loop143086%_ ((_%rest143088%_ _%methods143030%_)
                                             (_%off143089%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143028%_ '1))))
                          (let* ((_%rest143091143099%_ _%rest143088%_)
                                 (_%else143093143148%_
                                  (lambda ()
                                    (let ((_%tab143107%_
                                           (class-type-interface-table
                                            _%obj-klass143002%_)))
                                      (let* ((_%prototable143110%_
                                              _%tab143107%_)
                                             (_%descriptor143113%_
                                              _%descriptor143000%_)
                                             (_%prototype143116%_
                                              _%prototype143083%_)
                                             (_%prototable143120%_
                                              _%prototable143110%_)
                                             (_%descriptor143137%_
                                              _%descriptor143113%_))
                                        (____prototype-table-set!
                                         _%prototable143120%_
                                         _%descriptor143137%_
                                         _%prototype143116%_))
                                      ((lambda (_%prototype143146%_)
                                         _%prototype143146%_)
                                       _%prototype143083%_))))
                                 (_%K143095143155%_
                                  (lambda (_%rest143151%_ _%method143152%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143083%_
                                       _%method143152%_
                                       _%off143089%_
                                       _%klass143001%_
                                       '#f))
                                    (_%loop143086%_
                                     _%rest143151%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143089%_ '1))))))
                            (if (pair? _%rest143091143099%_)
                                (let ((_%hd143096143158%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143091143099%_)))
                                      (_%tl143097143160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143091143099%_))))
                                  (let* ((_%method143163%_ _%hd143096143158%_)
                                         (_%rest143165%_ _%tl143097143160%_))
                                    (_%K143095143155%_
                                     _%rest143165%_
                                     _%method143163%_)))
                                (_%else143093143148%_)))))))
                   (_%K143036143305%_
                    (lambda (_%rest143170%_ _%method-spec143171%_)
                      (if (pair? _%method-spec143171%_)
                          (let _%loop-inner143175%_ ((_%methods-rest143178%_
                                                      _%method-spec143171%_))
                            (let* ((_%methods-rest143180143188%_
                                    _%methods-rest143178%_)
                                   (_%else143182143238%_
                                    (lambda ()
                                      (let ((_%tab143196%_
                                             (class-type-interface-table
                                              _%obj-klass143002%_)))
                                        (let* ((_%prototable143198%_
                                                _%tab143196%_)
                                               (_%descriptor143201%_
                                                _%descriptor143000%_)
                                               (_%prototype143204%_ '#!void)
                                               (_%prototable143208%_
                                                _%prototable143198%_)
                                               (_%descriptor143227%_
                                                _%descriptor143201%_))
                                          (____prototype-table-set!
                                           _%prototable143208%_
                                           _%descriptor143227%_
                                           _%prototype143204%_))
                                        ((lambda (_%method143236%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor143000%_
                                            'class:
                                            _%obj-klass143002%_
                                            'method:
                                            _%method143236%_)
                                           '#!void)
                                         _%method-spec143171%_))))
                                   (_%K143184143251%_
                                    (lambda (_%methods-rest143241%_
                                             _%method-name143242%_)
                                      (let ((_%$e143245%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143020%_
                                                _%method-name143242%_
                                                '#f))))
                                        (if _%$e143245%_
                                            ((lambda (_%method143248%_)
                                               (_%loop143023%_
                                                _%rest143170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143028%_ '1))
                                                (cons _%method143248%_
                                                      _%methods143030%_)))
                                             _%$e143245%_)
                                            (_%loop-inner143175%_
                                             _%methods-rest143241%_))))))
                              (if (pair? _%methods-rest143180143188%_)
                                  (let ((_%hd143185143254%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143180143188%_)))
                                        (_%tl143186143256%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143180143188%_))))
                                    (let* ((_%method-name143259%_
                                            _%hd143185143254%_)
                                           (_%methods-rest143261%_
                                            _%tl143186143256%_))
                                      (_%K143184143251%_
                                       _%methods-rest143261%_
                                       _%method-name143259%_)))
                                  (_%else143182143238%_))))
                          (let ((_%$e143263%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143020%_
                                    _%method-spec143171%_
                                    '#f))))
                            (if _%$e143263%_
                                ((lambda (_%method143266%_)
                                   (_%loop143023%_
                                    _%rest143170%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143028%_ '1))
                                    (cons _%method143266%_ _%methods143030%_)))
                                 _%$e143263%_)
                                (let ((_%tab143269%_
                                       (class-type-interface-table
                                        _%obj-klass143002%_)))
                                  (let* ((_%prototable143271%_ _%tab143269%_)
                                         (_%descriptor143274%_
                                          _%descriptor143000%_)
                                         (_%prototype143277%_ '#!void)
                                         (_%prototable143281%_
                                          _%prototable143271%_)
                                         (_%descriptor143294%_
                                          _%descriptor143274%_))
                                    (____prototype-table-set!
                                     _%prototable143281%_
                                     _%descriptor143294%_
                                     _%prototype143277%_))
                                  ((lambda (_%method143303%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor143000%_
                                      'class:
                                      _%obj-klass143002%_
                                      'method:
                                      _%method143303%_)
                                     '#!void)
                                   _%method-spec143171%_))))))))
              (if (pair? _%rest143032143040%_)
                  (let ((_%hd143037143308%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143032143040%_)))
                        (_%tl143038143310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143032143040%_))))
                    (let* ((_%method-spec143313%_ _%hd143037143308%_)
                           (_%rest143315%_ _%tl143038143310%_))
                      (_%K143036143305%_
                       _%rest143315%_
                       _%method-spec143313%_)))
                  (_%else143034143167%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor142683%_ _%klass142684%_ _%obj-klass142685%_)
        (let ((_%method-table142703%_
               (let ((_%klass142687%_ _%obj-klass142685%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass142687%_ 'class))
                     (let ((_%klass142692%_ _%klass142687%_))
                       (declare (not safe))
                       (__specialize-class _%klass142692%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass142687%_)
                       '#!void)))))
          (let _%loop142706%_ ((_%rest142709%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor142683%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count142711%_ '0)
                               (_%methods142713%_ '()))
            (let* ((_%rest142715142723%_ _%rest142709%_)
                   (_%else142717142850%_
                    (lambda ()
                      (let ((_%prototype142766%_
                             (let* ((_%klass142731%_ _%klass142684%_)
                                    (_%k142734%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count142711%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass142731%_
                                      'class))
                                   (let* ((_%klass142739%_ _%klass142731%_)
                                          (_%k142756%_ _%k142734%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass142739%_
                                      _%k142756%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass142731%_)
                                     '#!void)))))
                        (let _%loop142769%_ ((_%rest142771%_ _%methods142713%_)
                                             (_%off142772%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count142711%_ '1))))
                          (let* ((_%rest142774142782%_ _%rest142771%_)
                                 (_%else142776142831%_
                                  (lambda ()
                                    (let ((_%tab142790%_
                                           (class-type-interface-table
                                            _%obj-klass142685%_)))
                                      (let* ((_%prototable142793%_
                                              _%tab142790%_)
                                             (_%descriptor142796%_
                                              _%descriptor142683%_)
                                             (_%prototype142799%_
                                              _%prototype142766%_)
                                             (_%prototable142803%_
                                              _%prototable142793%_)
                                             (_%descriptor142820%_
                                              _%descriptor142796%_))
                                        (____prototype-table-set!
                                         _%prototable142803%_
                                         _%descriptor142820%_
                                         _%prototype142799%_))
                                      ((lambda (_%prototype142829%_)
                                         _%prototype142829%_)
                                       _%prototype142766%_))))
                                 (_%K142778142838%_
                                  (lambda (_%rest142834%_ _%method142835%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype142766%_
                                       _%method142835%_
                                       _%off142772%_
                                       _%klass142684%_
                                       '#f))
                                    (_%loop142769%_
                                     _%rest142834%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off142772%_ '1))))))
                            (if (pair? _%rest142774142782%_)
                                (let ((_%hd142779142841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest142774142782%_)))
                                      (_%tl142780142843%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest142774142782%_))))
                                  (let* ((_%method142846%_ _%hd142779142841%_)
                                         (_%rest142848%_ _%tl142780142843%_))
                                    (_%K142778142838%_
                                     _%rest142848%_
                                     _%method142846%_)))
                                (_%else142776142831%_)))))))
                   (_%K142719142988%_
                    (lambda (_%rest142853%_ _%method-spec142854%_)
                      (if (pair? _%method-spec142854%_)
                          (let _%loop-inner142858%_ ((_%methods-rest142861%_
                                                      _%method-spec142854%_))
                            (let* ((_%methods-rest142863142871%_
                                    _%methods-rest142861%_)
                                   (_%else142865142921%_
                                    (lambda ()
                                      (let ((_%tab142879%_
                                             (class-type-interface-table
                                              _%obj-klass142685%_)))
                                        (let* ((_%prototable142881%_
                                                _%tab142879%_)
                                               (_%descriptor142884%_
                                                _%descriptor142683%_)
                                               (_%prototype142887%_ '#!void)
                                               (_%prototable142891%_
                                                _%prototable142881%_)
                                               (_%descriptor142910%_
                                                _%descriptor142884%_))
                                          (____prototype-table-set!
                                           _%prototable142891%_
                                           _%descriptor142910%_
                                           _%prototype142887%_))
                                        ((lambda (_%method142919%_) '#f)
                                         _%method-spec142854%_))))
                                   (_%K142867142934%_
                                    (lambda (_%methods-rest142924%_
                                             _%method-name142925%_)
                                      (let ((_%$e142928%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table142703%_
                                                _%method-name142925%_
                                                '#f))))
                                        (if _%$e142928%_
                                            ((lambda (_%method142931%_)
                                               (_%loop142706%_
                                                _%rest142853%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count142711%_ '1))
                                                (cons _%method142931%_
                                                      _%methods142713%_)))
                                             _%$e142928%_)
                                            (_%loop-inner142858%_
                                             _%methods-rest142924%_))))))
                              (if (pair? _%methods-rest142863142871%_)
                                  (let ((_%hd142868142937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest142863142871%_)))
                                        (_%tl142869142939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest142863142871%_))))
                                    (let* ((_%method-name142942%_
                                            _%hd142868142937%_)
                                           (_%methods-rest142944%_
                                            _%tl142869142939%_))
                                      (_%K142867142934%_
                                       _%methods-rest142944%_
                                       _%method-name142942%_)))
                                  (_%else142865142921%_))))
                          (let ((_%$e142946%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table142703%_
                                    _%method-spec142854%_
                                    '#f))))
                            (if _%$e142946%_
                                ((lambda (_%method142949%_)
                                   (_%loop142706%_
                                    _%rest142853%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count142711%_ '1))
                                    (cons _%method142949%_ _%methods142713%_)))
                                 _%$e142946%_)
                                (let ((_%tab142952%_
                                       (class-type-interface-table
                                        _%obj-klass142685%_)))
                                  (let* ((_%prototable142954%_ _%tab142952%_)
                                         (_%descriptor142957%_
                                          _%descriptor142683%_)
                                         (_%prototype142960%_ '#!void)
                                         (_%prototable142964%_
                                          _%prototable142954%_)
                                         (_%descriptor142977%_
                                          _%descriptor142957%_))
                                    (____prototype-table-set!
                                     _%prototable142964%_
                                     _%descriptor142977%_
                                     _%prototype142960%_))
                                  ((lambda (_%method142986%_) '#f)
                                   _%method-spec142854%_))))))))
              (if (pair? _%rest142715142723%_)
                  (let ((_%hd142720142991%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest142715142723%_)))
                        (_%tl142721142993%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest142715142723%_))))
                    (let* ((_%method-spec142996%_ _%hd142720142991%_)
                           (_%rest142998%_ _%tl142721142993%_))
                      (_%K142719142988%_
                       _%rest142998%_
                       _%method-spec142996%_)))
                  (_%else142717142850%_)))))))
    (define cast
      (lambda (_%descriptor142525%_ _%obj142527%_)
        (let* ((_%klass142530%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142525%_ '1 '#f '#f)))
               (_%klass-id142533%_
                (let () (declare (not safe)) (##type-id _%klass142530%_))))
          (let _%loop142537%_ ((_%obj142540%_ _%obj142527%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142543%_
                    (let () (declare (not safe)) (class-of _%obj142540%_)))
                   (_%obj-klass-id142546%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142543%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142533%_ _%obj-klass-id142546%_))
                  ((lambda (_%obj142551%_) _%obj142551%_) _%obj142540%_)
                  (if (interface-subclass? _%obj-klass142543%_)
                      (let* ((_%tab142554%_
                              (class-type-interface-table _%obj-klass142543%_))
                             (_%$e142594%_
                              (let* ((_%prototable142557%_ _%tab142554%_)
                                     (_%descriptor142560%_
                                      _%descriptor142525%_)
                                     (_%prototable142564%_
                                      _%prototable142557%_)
                                     (_%descriptor142585%_
                                      _%descriptor142560%_))
                                (____prototype-table-get
                                 _%prototable142564%_
                                 _%descriptor142585%_))))
                        (if _%$e142594%_
                            ((lambda (_%prototype142597%_)
                               (if (eq? _%prototype142597%_ '#!void)
                                   (_%loop142537%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142540%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor142600%_
                                             _%prototype142601%_
                                             _%obj142602%_)
                                      (if _%prototype142601%_
                                          (let ((_%instance142604%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142601%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142604%_
                                               _%obj142602%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142604%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor142600%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj142602%_)))
                                            '#!void)))
                                    _%descriptor142525%_
                                    _%prototype142597%_
                                    _%obj142540%_)))
                             _%$e142594%_)
                            (let ((_%$e142606%_
                                   (try-create-prototype
                                    _%descriptor142525%_
                                    _%klass142530%_
                                    _%obj-klass142543%_)))
                              (if _%$e142606%_
                                  ((lambda (_%prototype142609%_)
                                     ((lambda (_%descriptor142611%_
                                               _%prototype142612%_
                                               _%obj142613%_)
                                        (if _%prototype142612%_
                                            (let ((_%instance142615%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype142612%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance142615%_
                                                 _%obj142613%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance142615%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor142611%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj142613%_)))
                                              '#!void)))
                                      _%descriptor142525%_
                                      _%prototype142609%_
                                      _%obj142540%_))
                                   _%$e142606%_)
                                  (_%loop142537%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142540%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142619%_
                              (class-type-interface-table _%obj-klass142543%_))
                             (_%$e142648%_
                              (let* ((_%prototable142621%_ _%tab142619%_)
                                     (_%descriptor142624%_
                                      _%descriptor142525%_)
                                     (_%prototable142628%_
                                      _%prototable142621%_)
                                     (_%descriptor142639%_
                                      _%descriptor142624%_))
                                (____prototype-table-get
                                 _%prototable142628%_
                                 _%descriptor142639%_))))
                        (if _%$e142648%_
                            ((lambda (_%prototype142651%_)
                               (if (eq? _%prototype142651%_ '#!void)
                                   ((lambda (_%descriptor142653%_
                                             _%prototype142654%_
                                             _%obj142655%_)
                                      (if _%prototype142654%_
                                          (let ((_%instance142657%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142654%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142657%_
                                               _%obj142655%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142657%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor142653%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj142655%_)))
                                            '#!void)))
                                    _%descriptor142525%_
                                    '#f
                                    _%obj142540%_)
                                   ((lambda (_%descriptor142659%_
                                             _%prototype142660%_
                                             _%obj142661%_)
                                      (if _%prototype142660%_
                                          (let ((_%instance142663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142660%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142663%_
                                               _%obj142661%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142663%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor142659%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj142661%_)))
                                            '#!void)))
                                    _%descriptor142525%_
                                    _%prototype142651%_
                                    _%obj142540%_)))
                             _%$e142648%_)
                            (let ((_%$e142665%_
                                   (create-prototype
                                    _%descriptor142525%_
                                    _%klass142530%_
                                    _%obj-klass142543%_)))
                              (if _%$e142665%_
                                  ((lambda (_%prototype142668%_)
                                     ((lambda (_%descriptor142670%_
                                               _%prototype142671%_
                                               _%obj142672%_)
                                        (if _%prototype142671%_
                                            (let ((_%instance142674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype142671%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance142674%_
                                                 _%obj142672%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance142674%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor142670%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj142672%_)))
                                              '#!void)))
                                      _%descriptor142525%_
                                      _%prototype142668%_
                                      _%obj142540%_))
                                   _%$e142665%_)
                                  ((lambda (_%descriptor142677%_
                                            _%prototype142678%_
                                            _%obj142679%_)
                                     (if _%prototype142678%_
                                         (let ((_%instance142681%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype142678%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance142681%_
                                              _%obj142679%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance142681%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor142677%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj142679%_)))
                                           '#!void)))
                                   _%descriptor142525%_
                                   '#f
                                   _%obj142540%_))))))))))))
    (define try-cast
      (lambda (_%descriptor142367%_ _%obj142369%_)
        (let* ((_%klass142372%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142367%_ '1 '#f '#f)))
               (_%klass-id142375%_
                (let () (declare (not safe)) (##type-id _%klass142372%_))))
          (let _%loop142379%_ ((_%obj142382%_ _%obj142369%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142385%_
                    (let () (declare (not safe)) (class-of _%obj142382%_)))
                   (_%obj-klass-id142388%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142385%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142375%_ _%obj-klass-id142388%_))
                  ((lambda (_%obj142393%_) _%obj142393%_) _%obj142382%_)
                  (if (interface-subclass? _%obj-klass142385%_)
                      (let* ((_%tab142396%_
                              (class-type-interface-table _%obj-klass142385%_))
                             (_%$e142436%_
                              (let* ((_%prototable142399%_ _%tab142396%_)
                                     (_%descriptor142402%_
                                      _%descriptor142367%_)
                                     (_%prototable142406%_
                                      _%prototable142399%_)
                                     (_%descriptor142427%_
                                      _%descriptor142402%_))
                                (____prototype-table-get
                                 _%prototable142406%_
                                 _%descriptor142427%_))))
                        (if _%$e142436%_
                            ((lambda (_%prototype142439%_)
                               (if (eq? _%prototype142439%_ '#!void)
                                   (_%loop142379%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142382%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor142442%_
                                             _%prototype142443%_
                                             _%obj142444%_)
                                      (if _%prototype142443%_
                                          (let ((_%instance142446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142443%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142446%_
                                               _%obj142444%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142446%_)
                                          '#f))
                                    _%descriptor142367%_
                                    _%prototype142439%_
                                    _%obj142382%_)))
                             _%$e142436%_)
                            (let ((_%$e142448%_
                                   (try-create-prototype
                                    _%descriptor142367%_
                                    _%klass142372%_
                                    _%obj-klass142385%_)))
                              (if _%$e142448%_
                                  ((lambda (_%prototype142451%_)
                                     ((lambda (_%descriptor142453%_
                                               _%prototype142454%_
                                               _%obj142455%_)
                                        (if _%prototype142454%_
                                            (let ((_%instance142457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype142454%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance142457%_
                                                 _%obj142455%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance142457%_)
                                            '#f))
                                      _%descriptor142367%_
                                      _%prototype142451%_
                                      _%obj142382%_))
                                   _%$e142448%_)
                                  (_%loop142379%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142382%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142461%_
                              (class-type-interface-table _%obj-klass142385%_))
                             (_%$e142490%_
                              (let* ((_%prototable142463%_ _%tab142461%_)
                                     (_%descriptor142466%_
                                      _%descriptor142367%_)
                                     (_%prototable142470%_
                                      _%prototable142463%_)
                                     (_%descriptor142481%_
                                      _%descriptor142466%_))
                                (____prototype-table-get
                                 _%prototable142470%_
                                 _%descriptor142481%_))))
                        (if _%$e142490%_
                            ((lambda (_%prototype142493%_)
                               (if (eq? _%prototype142493%_ '#!void)
                                   ((lambda (_%descriptor142495%_
                                             _%prototype142496%_
                                             _%obj142497%_)
                                      (if _%prototype142496%_
                                          (let ((_%instance142499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142496%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142499%_
                                               _%obj142497%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142499%_)
                                          '#f))
                                    _%descriptor142367%_
                                    '#f
                                    _%obj142382%_)
                                   ((lambda (_%descriptor142501%_
                                             _%prototype142502%_
                                             _%obj142503%_)
                                      (if _%prototype142502%_
                                          (let ((_%instance142505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype142502%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance142505%_
                                               _%obj142503%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance142505%_)
                                          '#f))
                                    _%descriptor142367%_
                                    _%prototype142493%_
                                    _%obj142382%_)))
                             _%$e142490%_)
                            (let ((_%$e142507%_
                                   (try-create-prototype
                                    _%descriptor142367%_
                                    _%klass142372%_
                                    _%obj-klass142385%_)))
                              (if _%$e142507%_
                                  ((lambda (_%prototype142510%_)
                                     ((lambda (_%descriptor142512%_
                                               _%prototype142513%_
                                               _%obj142514%_)
                                        (if _%prototype142513%_
                                            (let ((_%instance142516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype142513%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance142516%_
                                                 _%obj142514%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance142516%_)
                                            '#f))
                                      _%descriptor142367%_
                                      _%prototype142510%_
                                      _%obj142382%_))
                                   _%$e142507%_)
                                  ((lambda (_%descriptor142519%_
                                            _%prototype142520%_
                                            _%obj142521%_)
                                     (if _%prototype142520%_
                                         (let ((_%instance142523%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype142520%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance142523%_
                                              _%obj142521%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance142523%_)
                                         '#f))
                                   _%descriptor142367%_
                                   '#f
                                   _%obj142382%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor142221%_ _%obj142223%_)
        (let* ((_%klass142226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142221%_ '1 '#f '#f)))
               (_%klass-id142229%_
                (let () (declare (not safe)) (##type-id _%klass142226%_))))
          (let _%loop142233%_ ((_%obj142236%_ _%obj142223%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142239%_
                    (let () (declare (not safe)) (class-of _%obj142236%_)))
                   (_%obj-klass-id142242%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142239%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142229%_ _%obj-klass-id142242%_))
                  ((lambda (_%obj142247%_) '#t) _%obj142236%_)
                  (if (interface-subclass? _%obj-klass142239%_)
                      (let* ((_%tab142250%_
                              (class-type-interface-table _%obj-klass142239%_))
                             (_%$e142290%_
                              (let* ((_%prototable142253%_ _%tab142250%_)
                                     (_%descriptor142256%_
                                      _%descriptor142221%_)
                                     (_%prototable142260%_
                                      _%prototable142253%_)
                                     (_%descriptor142281%_
                                      _%descriptor142256%_))
                                (____prototype-table-get
                                 _%prototable142260%_
                                 _%descriptor142281%_))))
                        (if _%$e142290%_
                            ((lambda (_%prototype142293%_)
                               (if (eq? _%prototype142293%_ '#!void)
                                   (_%loop142233%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142236%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor142296%_
                                             _%prototype142297%_
                                             _%obj142298%_)
                                      (if _%prototype142297%_ '#t '#f))
                                    _%descriptor142221%_
                                    _%prototype142293%_
                                    _%obj142236%_)))
                             _%$e142290%_)
                            (let ((_%$e142300%_
                                   (try-create-prototype
                                    _%descriptor142221%_
                                    _%klass142226%_
                                    _%obj-klass142239%_)))
                              (if _%$e142300%_
                                  ((lambda (_%prototype142303%_)
                                     ((lambda (_%descriptor142305%_
                                               _%prototype142306%_
                                               _%obj142307%_)
                                        (if _%prototype142306%_ '#t '#f))
                                      _%descriptor142221%_
                                      _%prototype142303%_
                                      _%obj142236%_))
                                   _%$e142300%_)
                                  (_%loop142233%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142236%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142311%_
                              (class-type-interface-table _%obj-klass142239%_))
                             (_%$e142340%_
                              (let* ((_%prototable142313%_ _%tab142311%_)
                                     (_%descriptor142316%_
                                      _%descriptor142221%_)
                                     (_%prototable142320%_
                                      _%prototable142313%_)
                                     (_%descriptor142331%_
                                      _%descriptor142316%_))
                                (____prototype-table-get
                                 _%prototable142320%_
                                 _%descriptor142331%_))))
                        (if _%$e142340%_
                            ((lambda (_%prototype142343%_)
                               (if (eq? _%prototype142343%_ '#!void)
                                   ((lambda (_%descriptor142345%_
                                             _%prototype142346%_
                                             _%obj142347%_)
                                      (if _%prototype142346%_ '#t '#f))
                                    _%descriptor142221%_
                                    '#f
                                    _%obj142236%_)
                                   ((lambda (_%descriptor142349%_
                                             _%prototype142350%_
                                             _%obj142351%_)
                                      (if _%prototype142350%_ '#t '#f))
                                    _%descriptor142221%_
                                    _%prototype142343%_
                                    _%obj142236%_)))
                             _%$e142340%_)
                            (let ((_%$e142353%_
                                   (try-create-prototype
                                    _%descriptor142221%_
                                    _%klass142226%_
                                    _%obj-klass142239%_)))
                              (if _%$e142353%_
                                  ((lambda (_%prototype142356%_)
                                     ((lambda (_%descriptor142358%_
                                               _%prototype142359%_
                                               _%obj142360%_)
                                        (if _%prototype142359%_ '#t '#f))
                                      _%descriptor142221%_
                                      _%prototype142356%_
                                      _%obj142236%_))
                                   _%$e142353%_)
                                  ((lambda (_%descriptor142363%_
                                            _%prototype142364%_
                                            _%obj142365%_)
                                     (if _%prototype142364%_ '#t '#f))
                                   _%descriptor142221%_
                                   '#f
                                   _%obj142236%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor142073%_
               _%obj142074%_
               _%with-prototype+receiver142075%_
               _%with-receiver142076%_)
        (let* ((_%descriptor142079%_ _%descriptor142073%_)
               (_%with-prototype+receiver142087%_
                _%with-prototype+receiver142075%_)
               (_%with-receiver142095%_ _%with-receiver142076%_)
               (_%klass142104%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142079%_ '1 '#f '#f)))
               (_%klass-id142107%_
                (let () (declare (not safe)) (##type-id _%klass142104%_))))
          (let _%loop142111%_ ((_%obj142114%_ _%obj142074%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142117%_
                    (let () (declare (not safe)) (class-of _%obj142114%_)))
                   (_%obj-klass-id142120%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142117%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142107%_ _%obj-klass-id142120%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver142095%_ _%obj142114%_))
                  (if (interface-subclass? _%obj-klass142117%_)
                      (let* ((_%tab142126%_
                              (class-type-interface-table _%obj-klass142117%_))
                             (_%$e142168%_
                              (let* ((_%prototable142129%_ _%tab142126%_)
                                     (_%descriptor142132%_
                                      _%descriptor142079%_)
                                     (_%prototable142136%_
                                      _%prototable142129%_)
                                     (_%descriptor142159%_
                                      _%descriptor142132%_))
                                (____prototype-table-get
                                 _%prototable142136%_
                                 _%descriptor142159%_))))
                        (if _%$e142168%_
                            ((lambda (_%prototype142171%_)
                               (if (eq? _%prototype142171%_ '#!void)
                                   (_%loop142111%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142114%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142087%_
                                      _%descriptor142079%_
                                      _%prototype142171%_
                                      _%obj142114%_))))
                             _%$e142168%_)
                            (let ((_%$e142174%_
                                   (try-create-prototype
                                    _%descriptor142079%_
                                    _%klass142104%_
                                    _%obj-klass142117%_)))
                              (if _%$e142174%_
                                  ((lambda (_%prototype142177%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142087%_
                                        _%descriptor142079%_
                                        _%prototype142177%_
                                        _%obj142114%_)))
                                   _%$e142174%_)
                                  (_%loop142111%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142114%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142181%_
                              (class-type-interface-table _%obj-klass142117%_))
                             (_%$e142210%_
                              (let* ((_%prototable142183%_ _%tab142181%_)
                                     (_%descriptor142186%_
                                      _%descriptor142079%_)
                                     (_%prototable142190%_
                                      _%prototable142183%_)
                                     (_%descriptor142201%_
                                      _%descriptor142186%_))
                                (____prototype-table-get
                                 _%prototable142190%_
                                 _%descriptor142201%_))))
                        (if _%$e142210%_
                            ((lambda (_%prototype142213%_)
                               (if (eq? _%prototype142213%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142087%_
                                      _%descriptor142079%_
                                      '#f
                                      _%obj142114%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142087%_
                                      _%descriptor142079%_
                                      _%prototype142213%_
                                      _%obj142114%_))))
                             _%$e142210%_)
                            (let ((_%$e142215%_
                                   (create-prototype
                                    _%descriptor142079%_
                                    _%klass142104%_
                                    _%obj-klass142117%_)))
                              (if _%$e142215%_
                                  ((lambda (_%prototype142218%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142087%_
                                        _%descriptor142079%_
                                        _%prototype142218%_
                                        _%obj142114%_)))
                                   _%$e142215%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver142087%_
                                     _%descriptor142079%_
                                     '#f
                                     _%obj142114%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor142036%_
               _%obj142037%_
               _%with-prototype+receiver142038%_
               _%with-receiver142039%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor142036%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor142043%_ _%descriptor142036%_))
              (if (procedure? _%with-prototype+receiver142038%_)
                  (let ((_%with-prototype+receiver142053%_
                         _%with-prototype+receiver142038%_))
                    (if (procedure? _%with-receiver142039%_)
                        (let ((_%with-receiver142063%_
                               _%with-receiver142039%_))
                          (__with-prototype
                           _%descriptor142043%_
                           _%obj142037%_
                           _%with-prototype+receiver142053%_
                           _%with-receiver142063%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver142039%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver142038%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor142036%_)
              '#!void))))))
