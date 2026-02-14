(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771092626)
  (begin
    (define CastError::t
      (let ((__tmp144546 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp144546
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args144460%_
        (apply make-instance CastError::t _%$args144460%_)))
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
      (lambda (_%where144334%_ _%message144335%_ . _%irritants144336%_)
        (let ((__tmp144547
               (let ((__obj144541
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj144541
                    _%message144335%_
                    'where:
                    _%where144334%_
                    'irritants:
                    _%irritants144336%_))
                 __obj144541)))
          (declare (not safe))
          (raise __tmp144547))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp144549 (list)) (__tmp144548 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp144549
         '(object)
         __tmp144548
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args144331%_
        (apply make-instance interface-instance::t _%$args144331%_)))
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
      (let ((__tmp144551 (list))
            (__tmp144550
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp144551
         '(type methods index)
         __tmp144550
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args144328%_
        (apply make-instance interface-descriptor::t _%$args144328%_)))
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
          (let _%again144306%_ ((_%spin144309%_ '0))
            (if (let ((__tmp144552
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp144552 '0))
                (let ((__tmp144553 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp144553))
                (if (let () (declare (not safe)) (##fx< _%spin144309%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again144306%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin144309%_ '1))))
                    (let ((_%owner144315%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner144315%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner144315%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again144306%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r144323%_
               (let ((_%index144321%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index144321%_ '1)))
                 _%index144321%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r144323%_)))
    (define interface-descriptor:::init!
      (lambda (_%self144287%_ _%type144288%_ _%methods144289%_)
        (let ((_%self144292%_ _%self144287%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144292%_
             _%type144288%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144292%_
             _%methods144289%_
             '2
             '#f
             '#f))
          (let ((__tmp144554 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144292%_
             __tmp144554
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
      (let ((__tmp144556 (list))
            (__tmp144555
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp144556
         '(lock table)
         __tmp144555
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args144162%_
        (apply make-instance prototype-table::t _%$args144162%_)))
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
      (lambda (_%self144148%_)
        (let ((_%self144151%_ _%self144148%_))
          (let ((__tmp144557 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self144151%_ __tmp144557 '1 '#f '#f))
          (let ((__tmp144558
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144151%_
             __tmp144558
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
      (lambda (_%prototable143977%_ _%descriptor143978%_)
        (let* ((_%prototable143981%_ _%prototable143977%_)
               (_%descriptor143989%_ _%descriptor143978%_))
          (declare (not safe))
          (let ((_%lock143999%_
                 (##unchecked-structure-ref _%prototable143981%_ '1 '#f '#f))
                (_%index144000%_
                 (##unchecked-structure-ref _%descriptor143989%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144004%_ ((_%spin144007%_ '0))
                (if (##fx= (##vector-cas! _%lock143999%_ '0 '1 '0) '0)
                    (##vector-set! _%lock143999%_ '1 (current-thread))
                    (if (##fx< _%spin144007%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144004%_ (##fx+ _%spin144007%_ '1)))
                        (let ((_%owner144013%_
                               (##vector-ref _%lock143999%_ '1)))
                          (if (eq? _%owner144013%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144013%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144004%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144021%_
                   (let ((_%tab144019%_
                          (##unchecked-structure-ref
                           _%prototable143981%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144000%_ (vector-length _%tab144019%_))
                         (vector-ref _%tab144019%_ _%index144000%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock143999%_ '1 '#f)
                  (##vector-cas! _%lock143999%_ '0 '0 '1)))
              _%$r144021%_)))))
    (define __prototype-table-get
      (lambda (_%prototable141956%_ _%descriptor141957%_)
        (let* ((_%prototable141960%_ _%prototable141956%_)
               (_%descriptor141968%_ _%descriptor141957%_))
          (____prototype-table-get
           _%prototable141960%_
           _%descriptor141968%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable143922%_ _%descriptor143923%_ _%prototype143924%_)
        (let* ((_%prototable143927%_ _%prototable143922%_)
               (_%descriptor143935%_ _%descriptor143923%_))
          (declare (not safe))
          (let ((_%lock143945%_
                 (##unchecked-structure-ref _%prototable143927%_ '1 '#f '#f))
                (_%index143946%_
                 (##unchecked-structure-ref _%descriptor143935%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again143950%_ ((_%spin143953%_ '0))
                (if (##fx= (##vector-cas! _%lock143945%_ '0 '1 '0) '0)
                    (##vector-set! _%lock143945%_ '1 (current-thread))
                    (if (##fx< _%spin143953%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again143950%_ (##fx+ _%spin143953%_ '1)))
                        (let ((_%owner143959%_
                               (##vector-ref _%lock143945%_ '1)))
                          (if (eq? _%owner143959%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner143959%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again143950%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r143972%_
                   (let ((_%tab143965%_
                          (##unchecked-structure-ref
                           _%prototable143927%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index143946%_ (vector-length _%tab143965%_))
                         (vector-set!
                          _%tab143965%_
                          _%index143946%_
                          _%prototype143924%_)
                         (let* ((_%new-size143967%_ __next-interface-index)
                                (_%new-tab143969%_
                                 (##make-vector _%new-size143967%_ '#f)))
                           (subvector-move!
                            _%tab143965%_
                            '0
                            (vector-length _%tab143965%_)
                            _%new-tab143969%_
                            '0)
                           (vector-set!
                            _%new-tab143969%_
                            _%index143946%_
                            _%prototype143924%_)
                           (##unchecked-structure-set!
                            _%prototable143927%_
                            _%new-tab143969%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock143945%_ '1 '#f)
                  (##vector-cas! _%lock143945%_ '0 '0 '1)))
              _%$r143972%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable142097%_ _%descriptor142098%_ _%prototype142099%_)
        (let* ((_%prototable142102%_ _%prototable142097%_)
               (_%descriptor142110%_ _%descriptor142098%_))
          (____prototype-table-set!
           _%prototable142102%_
           _%descriptor142110%_
           _%prototype142099%_))))
    (define interface-subclass?
      (lambda (_%klass143915%_)
        (let ((_%super143916143918%_
               (let () (declare (not safe)) (##type-super _%klass143915%_))))
          (if _%super143916143918%_
              (let ((_%super143920%_ _%super143916143918%_))
                (eq? (let () (declare (not safe)) (##type-id _%super143920%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass143907%_)
        (let ((_%$e143909%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass143907%_ '13 '#f '#f))))
          (if _%$e143909%_
              _%$e143909%_
              (let ((_%tab143913%_
                     (let ((__obj144545
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj144545)
                       __obj144545)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass143907%_
                   _%tab143913%_
                   '13
                   '#f
                   '#f))
                _%tab143913%_)))))
    (define create-prototype
      (lambda (_%descriptor143590%_ _%klass143591%_ _%obj-klass143592%_)
        (let ((_%method-table143610%_
               (let ((_%klass143594%_ _%obj-klass143592%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143594%_ 'class))
                     (let ((_%klass143599%_ _%klass143594%_))
                       (declare (not safe))
                       (__specialize-class _%klass143599%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143594%_)
                       '#!void)))))
          (let _%loop143613%_ ((_%rest143616%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143590%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143618%_ '0)
                               (_%methods143620%_ '()))
            (let* ((_%rest143622143630%_ _%rest143616%_)
                   (_%else143624143757%_
                    (lambda ()
                      (let ((_%prototype143673%_
                             (let* ((_%klass143638%_ _%klass143591%_)
                                    (_%k143641%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143618%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143638%_
                                      'class))
                                   (let* ((_%klass143646%_ _%klass143638%_)
                                          (_%k143663%_ _%k143641%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143646%_
                                      _%k143663%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143638%_)
                                     '#!void)))))
                        (let _%loop143676%_ ((_%rest143678%_ _%methods143620%_)
                                             (_%off143679%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143618%_ '1))))
                          (let* ((_%rest143681143689%_ _%rest143678%_)
                                 (_%else143683143738%_
                                  (lambda ()
                                    (let ((_%tab143697%_
                                           (class-type-interface-table
                                            _%obj-klass143592%_)))
                                      (let* ((_%prototable143700%_
                                              _%tab143697%_)
                                             (_%descriptor143703%_
                                              _%descriptor143590%_)
                                             (_%prototype143706%_
                                              _%prototype143673%_)
                                             (_%prototable143710%_
                                              _%prototable143700%_)
                                             (_%descriptor143727%_
                                              _%descriptor143703%_))
                                        (____prototype-table-set!
                                         _%prototable143710%_
                                         _%descriptor143727%_
                                         _%prototype143706%_))
                                      ((lambda (_%prototype143736%_)
                                         _%prototype143736%_)
                                       _%prototype143673%_))))
                                 (_%K143685143745%_
                                  (lambda (_%rest143741%_ _%method143742%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143673%_
                                       _%method143742%_
                                       _%off143679%_
                                       _%klass143591%_
                                       '#f))
                                    (_%loop143676%_
                                     _%rest143741%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143679%_ '1))))))
                            (if (pair? _%rest143681143689%_)
                                (let ((_%hd143686143748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143681143689%_)))
                                      (_%tl143687143750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143681143689%_))))
                                  (let* ((_%method143753%_ _%hd143686143748%_)
                                         (_%rest143755%_ _%tl143687143750%_))
                                    (_%K143685143745%_
                                     _%rest143755%_
                                     _%method143753%_)))
                                (_%else143683143738%_)))))))
                   (_%K143626143895%_
                    (lambda (_%rest143760%_ _%method-spec143761%_)
                      (if (pair? _%method-spec143761%_)
                          (let _%loop-inner143765%_ ((_%methods-rest143768%_
                                                      _%method-spec143761%_))
                            (let* ((_%methods-rest143770143778%_
                                    _%methods-rest143768%_)
                                   (_%else143772143828%_
                                    (lambda ()
                                      (let ((_%tab143786%_
                                             (class-type-interface-table
                                              _%obj-klass143592%_)))
                                        (let* ((_%prototable143788%_
                                                _%tab143786%_)
                                               (_%descriptor143791%_
                                                _%descriptor143590%_)
                                               (_%prototype143794%_ '#!void)
                                               (_%prototable143798%_
                                                _%prototable143788%_)
                                               (_%descriptor143817%_
                                                _%descriptor143791%_))
                                          (____prototype-table-set!
                                           _%prototable143798%_
                                           _%descriptor143817%_
                                           _%prototype143794%_))
                                        ((lambda (_%method143826%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor143590%_
                                            'class:
                                            _%obj-klass143592%_
                                            'method:
                                            _%method143826%_)
                                           '#!void)
                                         _%method-spec143761%_))))
                                   (_%K143774143841%_
                                    (lambda (_%methods-rest143831%_
                                             _%method-name143832%_)
                                      (let ((_%$e143835%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143610%_
                                                _%method-name143832%_
                                                '#f))))
                                        (if _%$e143835%_
                                            ((lambda (_%method143838%_)
                                               (_%loop143613%_
                                                _%rest143760%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143618%_ '1))
                                                (cons _%method143838%_
                                                      _%methods143620%_)))
                                             _%$e143835%_)
                                            (_%loop-inner143765%_
                                             _%methods-rest143831%_))))))
                              (if (pair? _%methods-rest143770143778%_)
                                  (let ((_%hd143775143844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143770143778%_)))
                                        (_%tl143776143846%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143770143778%_))))
                                    (let* ((_%method-name143849%_
                                            _%hd143775143844%_)
                                           (_%methods-rest143851%_
                                            _%tl143776143846%_))
                                      (_%K143774143841%_
                                       _%methods-rest143851%_
                                       _%method-name143849%_)))
                                  (_%else143772143828%_))))
                          (let ((_%$e143853%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143610%_
                                    _%method-spec143761%_
                                    '#f))))
                            (if _%$e143853%_
                                ((lambda (_%method143856%_)
                                   (_%loop143613%_
                                    _%rest143760%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143618%_ '1))
                                    (cons _%method143856%_ _%methods143620%_)))
                                 _%$e143853%_)
                                (let ((_%tab143859%_
                                       (class-type-interface-table
                                        _%obj-klass143592%_)))
                                  (let* ((_%prototable143861%_ _%tab143859%_)
                                         (_%descriptor143864%_
                                          _%descriptor143590%_)
                                         (_%prototype143867%_ '#!void)
                                         (_%prototable143871%_
                                          _%prototable143861%_)
                                         (_%descriptor143884%_
                                          _%descriptor143864%_))
                                    (____prototype-table-set!
                                     _%prototable143871%_
                                     _%descriptor143884%_
                                     _%prototype143867%_))
                                  ((lambda (_%method143893%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor143590%_
                                      'class:
                                      _%obj-klass143592%_
                                      'method:
                                      _%method143893%_)
                                     '#!void)
                                   _%method-spec143761%_))))))))
              (if (pair? _%rest143622143630%_)
                  (let ((_%hd143627143898%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143622143630%_)))
                        (_%tl143628143900%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143622143630%_))))
                    (let* ((_%method-spec143903%_ _%hd143627143898%_)
                           (_%rest143905%_ _%tl143628143900%_))
                      (_%K143626143895%_
                       _%rest143905%_
                       _%method-spec143903%_)))
                  (_%else143624143757%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor143273%_ _%klass143274%_ _%obj-klass143275%_)
        (let ((_%method-table143293%_
               (let ((_%klass143277%_ _%obj-klass143275%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143277%_ 'class))
                     (let ((_%klass143282%_ _%klass143277%_))
                       (declare (not safe))
                       (__specialize-class _%klass143282%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143277%_)
                       '#!void)))))
          (let _%loop143296%_ ((_%rest143299%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143273%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143301%_ '0)
                               (_%methods143303%_ '()))
            (let* ((_%rest143305143313%_ _%rest143299%_)
                   (_%else143307143440%_
                    (lambda ()
                      (let ((_%prototype143356%_
                             (let* ((_%klass143321%_ _%klass143274%_)
                                    (_%k143324%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143301%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143321%_
                                      'class))
                                   (let* ((_%klass143329%_ _%klass143321%_)
                                          (_%k143346%_ _%k143324%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143329%_
                                      _%k143346%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143321%_)
                                     '#!void)))))
                        (let _%loop143359%_ ((_%rest143361%_ _%methods143303%_)
                                             (_%off143362%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143301%_ '1))))
                          (let* ((_%rest143364143372%_ _%rest143361%_)
                                 (_%else143366143421%_
                                  (lambda ()
                                    (let ((_%tab143380%_
                                           (class-type-interface-table
                                            _%obj-klass143275%_)))
                                      (let* ((_%prototable143383%_
                                              _%tab143380%_)
                                             (_%descriptor143386%_
                                              _%descriptor143273%_)
                                             (_%prototype143389%_
                                              _%prototype143356%_)
                                             (_%prototable143393%_
                                              _%prototable143383%_)
                                             (_%descriptor143410%_
                                              _%descriptor143386%_))
                                        (____prototype-table-set!
                                         _%prototable143393%_
                                         _%descriptor143410%_
                                         _%prototype143389%_))
                                      ((lambda (_%prototype143419%_)
                                         _%prototype143419%_)
                                       _%prototype143356%_))))
                                 (_%K143368143428%_
                                  (lambda (_%rest143424%_ _%method143425%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143356%_
                                       _%method143425%_
                                       _%off143362%_
                                       _%klass143274%_
                                       '#f))
                                    (_%loop143359%_
                                     _%rest143424%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143362%_ '1))))))
                            (if (pair? _%rest143364143372%_)
                                (let ((_%hd143369143431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143364143372%_)))
                                      (_%tl143370143433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143364143372%_))))
                                  (let* ((_%method143436%_ _%hd143369143431%_)
                                         (_%rest143438%_ _%tl143370143433%_))
                                    (_%K143368143428%_
                                     _%rest143438%_
                                     _%method143436%_)))
                                (_%else143366143421%_)))))))
                   (_%K143309143578%_
                    (lambda (_%rest143443%_ _%method-spec143444%_)
                      (if (pair? _%method-spec143444%_)
                          (let _%loop-inner143448%_ ((_%methods-rest143451%_
                                                      _%method-spec143444%_))
                            (let* ((_%methods-rest143453143461%_
                                    _%methods-rest143451%_)
                                   (_%else143455143511%_
                                    (lambda ()
                                      (let ((_%tab143469%_
                                             (class-type-interface-table
                                              _%obj-klass143275%_)))
                                        (let* ((_%prototable143471%_
                                                _%tab143469%_)
                                               (_%descriptor143474%_
                                                _%descriptor143273%_)
                                               (_%prototype143477%_ '#!void)
                                               (_%prototable143481%_
                                                _%prototable143471%_)
                                               (_%descriptor143500%_
                                                _%descriptor143474%_))
                                          (____prototype-table-set!
                                           _%prototable143481%_
                                           _%descriptor143500%_
                                           _%prototype143477%_))
                                        ((lambda (_%method143509%_) '#f)
                                         _%method-spec143444%_))))
                                   (_%K143457143524%_
                                    (lambda (_%methods-rest143514%_
                                             _%method-name143515%_)
                                      (let ((_%$e143518%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143293%_
                                                _%method-name143515%_
                                                '#f))))
                                        (if _%$e143518%_
                                            ((lambda (_%method143521%_)
                                               (_%loop143296%_
                                                _%rest143443%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143301%_ '1))
                                                (cons _%method143521%_
                                                      _%methods143303%_)))
                                             _%$e143518%_)
                                            (_%loop-inner143448%_
                                             _%methods-rest143514%_))))))
                              (if (pair? _%methods-rest143453143461%_)
                                  (let ((_%hd143458143527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143453143461%_)))
                                        (_%tl143459143529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143453143461%_))))
                                    (let* ((_%method-name143532%_
                                            _%hd143458143527%_)
                                           (_%methods-rest143534%_
                                            _%tl143459143529%_))
                                      (_%K143457143524%_
                                       _%methods-rest143534%_
                                       _%method-name143532%_)))
                                  (_%else143455143511%_))))
                          (let ((_%$e143536%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143293%_
                                    _%method-spec143444%_
                                    '#f))))
                            (if _%$e143536%_
                                ((lambda (_%method143539%_)
                                   (_%loop143296%_
                                    _%rest143443%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143301%_ '1))
                                    (cons _%method143539%_ _%methods143303%_)))
                                 _%$e143536%_)
                                (let ((_%tab143542%_
                                       (class-type-interface-table
                                        _%obj-klass143275%_)))
                                  (let* ((_%prototable143544%_ _%tab143542%_)
                                         (_%descriptor143547%_
                                          _%descriptor143273%_)
                                         (_%prototype143550%_ '#!void)
                                         (_%prototable143554%_
                                          _%prototable143544%_)
                                         (_%descriptor143567%_
                                          _%descriptor143547%_))
                                    (____prototype-table-set!
                                     _%prototable143554%_
                                     _%descriptor143567%_
                                     _%prototype143550%_))
                                  ((lambda (_%method143576%_) '#f)
                                   _%method-spec143444%_))))))))
              (if (pair? _%rest143305143313%_)
                  (let ((_%hd143310143581%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143305143313%_)))
                        (_%tl143311143583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143305143313%_))))
                    (let* ((_%method-spec143586%_ _%hd143310143581%_)
                           (_%rest143588%_ _%tl143311143583%_))
                      (_%K143309143578%_
                       _%rest143588%_
                       _%method-spec143586%_)))
                  (_%else143307143440%_)))))))
    (define cast
      (lambda (_%descriptor143115%_ _%obj143117%_)
        (let* ((_%klass143120%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143115%_ '1 '#f '#f)))
               (_%klass-id143123%_
                (let () (declare (not safe)) (##type-id _%klass143120%_))))
          (let _%loop143127%_ ((_%obj143130%_ _%obj143117%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143133%_
                    (let () (declare (not safe)) (class-of _%obj143130%_)))
                   (_%obj-klass-id143136%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143133%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143123%_ _%obj-klass-id143136%_))
                  ((lambda (_%obj143141%_) _%obj143141%_) _%obj143130%_)
                  (if (interface-subclass? _%obj-klass143133%_)
                      (let* ((_%tab143144%_
                              (class-type-interface-table _%obj-klass143133%_))
                             (_%$e143184%_
                              (let* ((_%prototable143147%_ _%tab143144%_)
                                     (_%descriptor143150%_
                                      _%descriptor143115%_)
                                     (_%prototable143154%_
                                      _%prototable143147%_)
                                     (_%descriptor143175%_
                                      _%descriptor143150%_))
                                (____prototype-table-get
                                 _%prototable143154%_
                                 _%descriptor143175%_))))
                        (if _%$e143184%_
                            ((lambda (_%prototype143187%_)
                               (if (eq? _%prototype143187%_ '#!void)
                                   (_%loop143127%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143130%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143190%_
                                             _%prototype143191%_
                                             _%obj143192%_)
                                      (if _%prototype143191%_
                                          (let ((_%instance143194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143191%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143194%_
                                               _%obj143192%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143194%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143190%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143192%_)))
                                            '#!void)))
                                    _%descriptor143115%_
                                    _%prototype143187%_
                                    _%obj143130%_)))
                             _%$e143184%_)
                            (let ((_%$e143196%_
                                   (try-create-prototype
                                    _%descriptor143115%_
                                    _%klass143120%_
                                    _%obj-klass143133%_)))
                              (if _%$e143196%_
                                  ((lambda (_%prototype143199%_)
                                     ((lambda (_%descriptor143201%_
                                               _%prototype143202%_
                                               _%obj143203%_)
                                        (if _%prototype143202%_
                                            (let ((_%instance143205%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143202%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143205%_
                                                 _%obj143203%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143205%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143201%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143203%_)))
                                              '#!void)))
                                      _%descriptor143115%_
                                      _%prototype143199%_
                                      _%obj143130%_))
                                   _%$e143196%_)
                                  (_%loop143127%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143130%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143209%_
                              (class-type-interface-table _%obj-klass143133%_))
                             (_%$e143238%_
                              (let* ((_%prototable143211%_ _%tab143209%_)
                                     (_%descriptor143214%_
                                      _%descriptor143115%_)
                                     (_%prototable143218%_
                                      _%prototable143211%_)
                                     (_%descriptor143229%_
                                      _%descriptor143214%_))
                                (____prototype-table-get
                                 _%prototable143218%_
                                 _%descriptor143229%_))))
                        (if _%$e143238%_
                            ((lambda (_%prototype143241%_)
                               (if (eq? _%prototype143241%_ '#!void)
                                   ((lambda (_%descriptor143243%_
                                             _%prototype143244%_
                                             _%obj143245%_)
                                      (if _%prototype143244%_
                                          (let ((_%instance143247%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143244%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143247%_
                                               _%obj143245%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143247%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143243%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143245%_)))
                                            '#!void)))
                                    _%descriptor143115%_
                                    '#f
                                    _%obj143130%_)
                                   ((lambda (_%descriptor143249%_
                                             _%prototype143250%_
                                             _%obj143251%_)
                                      (if _%prototype143250%_
                                          (let ((_%instance143253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143250%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143253%_
                                               _%obj143251%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143253%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143249%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143251%_)))
                                            '#!void)))
                                    _%descriptor143115%_
                                    _%prototype143241%_
                                    _%obj143130%_)))
                             _%$e143238%_)
                            (let ((_%$e143255%_
                                   (create-prototype
                                    _%descriptor143115%_
                                    _%klass143120%_
                                    _%obj-klass143133%_)))
                              (if _%$e143255%_
                                  ((lambda (_%prototype143258%_)
                                     ((lambda (_%descriptor143260%_
                                               _%prototype143261%_
                                               _%obj143262%_)
                                        (if _%prototype143261%_
                                            (let ((_%instance143264%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143261%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143264%_
                                                 _%obj143262%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143264%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143260%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143262%_)))
                                              '#!void)))
                                      _%descriptor143115%_
                                      _%prototype143258%_
                                      _%obj143130%_))
                                   _%$e143255%_)
                                  ((lambda (_%descriptor143267%_
                                            _%prototype143268%_
                                            _%obj143269%_)
                                     (if _%prototype143268%_
                                         (let ((_%instance143271%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143268%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143271%_
                                              _%obj143269%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143271%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor143267%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj143269%_)))
                                           '#!void)))
                                   _%descriptor143115%_
                                   '#f
                                   _%obj143130%_))))))))))))
    (define try-cast
      (lambda (_%descriptor142957%_ _%obj142959%_)
        (let* ((_%klass142962%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142957%_ '1 '#f '#f)))
               (_%klass-id142965%_
                (let () (declare (not safe)) (##type-id _%klass142962%_))))
          (let _%loop142969%_ ((_%obj142972%_ _%obj142959%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142975%_
                    (let () (declare (not safe)) (class-of _%obj142972%_)))
                   (_%obj-klass-id142978%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142975%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142965%_ _%obj-klass-id142978%_))
                  ((lambda (_%obj142983%_) _%obj142983%_) _%obj142972%_)
                  (if (interface-subclass? _%obj-klass142975%_)
                      (let* ((_%tab142986%_
                              (class-type-interface-table _%obj-klass142975%_))
                             (_%$e143026%_
                              (let* ((_%prototable142989%_ _%tab142986%_)
                                     (_%descriptor142992%_
                                      _%descriptor142957%_)
                                     (_%prototable142996%_
                                      _%prototable142989%_)
                                     (_%descriptor143017%_
                                      _%descriptor142992%_))
                                (____prototype-table-get
                                 _%prototable142996%_
                                 _%descriptor143017%_))))
                        (if _%$e143026%_
                            ((lambda (_%prototype143029%_)
                               (if (eq? _%prototype143029%_ '#!void)
                                   (_%loop142969%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142972%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143032%_
                                             _%prototype143033%_
                                             _%obj143034%_)
                                      (if _%prototype143033%_
                                          (let ((_%instance143036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143033%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143036%_
                                               _%obj143034%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143036%_)
                                          '#f))
                                    _%descriptor142957%_
                                    _%prototype143029%_
                                    _%obj142972%_)))
                             _%$e143026%_)
                            (let ((_%$e143038%_
                                   (try-create-prototype
                                    _%descriptor142957%_
                                    _%klass142962%_
                                    _%obj-klass142975%_)))
                              (if _%$e143038%_
                                  ((lambda (_%prototype143041%_)
                                     ((lambda (_%descriptor143043%_
                                               _%prototype143044%_
                                               _%obj143045%_)
                                        (if _%prototype143044%_
                                            (let ((_%instance143047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143044%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143047%_
                                                 _%obj143045%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143047%_)
                                            '#f))
                                      _%descriptor142957%_
                                      _%prototype143041%_
                                      _%obj142972%_))
                                   _%$e143038%_)
                                  (_%loop142969%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142972%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143051%_
                              (class-type-interface-table _%obj-klass142975%_))
                             (_%$e143080%_
                              (let* ((_%prototable143053%_ _%tab143051%_)
                                     (_%descriptor143056%_
                                      _%descriptor142957%_)
                                     (_%prototable143060%_
                                      _%prototable143053%_)
                                     (_%descriptor143071%_
                                      _%descriptor143056%_))
                                (____prototype-table-get
                                 _%prototable143060%_
                                 _%descriptor143071%_))))
                        (if _%$e143080%_
                            ((lambda (_%prototype143083%_)
                               (if (eq? _%prototype143083%_ '#!void)
                                   ((lambda (_%descriptor143085%_
                                             _%prototype143086%_
                                             _%obj143087%_)
                                      (if _%prototype143086%_
                                          (let ((_%instance143089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143086%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143089%_
                                               _%obj143087%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143089%_)
                                          '#f))
                                    _%descriptor142957%_
                                    '#f
                                    _%obj142972%_)
                                   ((lambda (_%descriptor143091%_
                                             _%prototype143092%_
                                             _%obj143093%_)
                                      (if _%prototype143092%_
                                          (let ((_%instance143095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143092%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143095%_
                                               _%obj143093%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143095%_)
                                          '#f))
                                    _%descriptor142957%_
                                    _%prototype143083%_
                                    _%obj142972%_)))
                             _%$e143080%_)
                            (let ((_%$e143097%_
                                   (try-create-prototype
                                    _%descriptor142957%_
                                    _%klass142962%_
                                    _%obj-klass142975%_)))
                              (if _%$e143097%_
                                  ((lambda (_%prototype143100%_)
                                     ((lambda (_%descriptor143102%_
                                               _%prototype143103%_
                                               _%obj143104%_)
                                        (if _%prototype143103%_
                                            (let ((_%instance143106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143103%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143106%_
                                                 _%obj143104%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143106%_)
                                            '#f))
                                      _%descriptor142957%_
                                      _%prototype143100%_
                                      _%obj142972%_))
                                   _%$e143097%_)
                                  ((lambda (_%descriptor143109%_
                                            _%prototype143110%_
                                            _%obj143111%_)
                                     (if _%prototype143110%_
                                         (let ((_%instance143113%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143110%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143113%_
                                              _%obj143111%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143113%_)
                                         '#f))
                                   _%descriptor142957%_
                                   '#f
                                   _%obj142972%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor142811%_ _%obj142813%_)
        (let* ((_%klass142816%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142811%_ '1 '#f '#f)))
               (_%klass-id142819%_
                (let () (declare (not safe)) (##type-id _%klass142816%_))))
          (let _%loop142823%_ ((_%obj142826%_ _%obj142813%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142829%_
                    (let () (declare (not safe)) (class-of _%obj142826%_)))
                   (_%obj-klass-id142832%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142829%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142819%_ _%obj-klass-id142832%_))
                  ((lambda (_%obj142837%_) '#t) _%obj142826%_)
                  (if (interface-subclass? _%obj-klass142829%_)
                      (let* ((_%tab142840%_
                              (class-type-interface-table _%obj-klass142829%_))
                             (_%$e142880%_
                              (let* ((_%prototable142843%_ _%tab142840%_)
                                     (_%descriptor142846%_
                                      _%descriptor142811%_)
                                     (_%prototable142850%_
                                      _%prototable142843%_)
                                     (_%descriptor142871%_
                                      _%descriptor142846%_))
                                (____prototype-table-get
                                 _%prototable142850%_
                                 _%descriptor142871%_))))
                        (if _%$e142880%_
                            ((lambda (_%prototype142883%_)
                               (if (eq? _%prototype142883%_ '#!void)
                                   (_%loop142823%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142826%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor142886%_
                                             _%prototype142887%_
                                             _%obj142888%_)
                                      (if _%prototype142887%_ '#t '#f))
                                    _%descriptor142811%_
                                    _%prototype142883%_
                                    _%obj142826%_)))
                             _%$e142880%_)
                            (let ((_%$e142890%_
                                   (try-create-prototype
                                    _%descriptor142811%_
                                    _%klass142816%_
                                    _%obj-klass142829%_)))
                              (if _%$e142890%_
                                  ((lambda (_%prototype142893%_)
                                     ((lambda (_%descriptor142895%_
                                               _%prototype142896%_
                                               _%obj142897%_)
                                        (if _%prototype142896%_ '#t '#f))
                                      _%descriptor142811%_
                                      _%prototype142893%_
                                      _%obj142826%_))
                                   _%$e142890%_)
                                  (_%loop142823%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142826%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142901%_
                              (class-type-interface-table _%obj-klass142829%_))
                             (_%$e142930%_
                              (let* ((_%prototable142903%_ _%tab142901%_)
                                     (_%descriptor142906%_
                                      _%descriptor142811%_)
                                     (_%prototable142910%_
                                      _%prototable142903%_)
                                     (_%descriptor142921%_
                                      _%descriptor142906%_))
                                (____prototype-table-get
                                 _%prototable142910%_
                                 _%descriptor142921%_))))
                        (if _%$e142930%_
                            ((lambda (_%prototype142933%_)
                               (if (eq? _%prototype142933%_ '#!void)
                                   ((lambda (_%descriptor142935%_
                                             _%prototype142936%_
                                             _%obj142937%_)
                                      (if _%prototype142936%_ '#t '#f))
                                    _%descriptor142811%_
                                    '#f
                                    _%obj142826%_)
                                   ((lambda (_%descriptor142939%_
                                             _%prototype142940%_
                                             _%obj142941%_)
                                      (if _%prototype142940%_ '#t '#f))
                                    _%descriptor142811%_
                                    _%prototype142933%_
                                    _%obj142826%_)))
                             _%$e142930%_)
                            (let ((_%$e142943%_
                                   (try-create-prototype
                                    _%descriptor142811%_
                                    _%klass142816%_
                                    _%obj-klass142829%_)))
                              (if _%$e142943%_
                                  ((lambda (_%prototype142946%_)
                                     ((lambda (_%descriptor142948%_
                                               _%prototype142949%_
                                               _%obj142950%_)
                                        (if _%prototype142949%_ '#t '#f))
                                      _%descriptor142811%_
                                      _%prototype142946%_
                                      _%obj142826%_))
                                   _%$e142943%_)
                                  ((lambda (_%descriptor142953%_
                                            _%prototype142954%_
                                            _%obj142955%_)
                                     (if _%prototype142954%_ '#t '#f))
                                   _%descriptor142811%_
                                   '#f
                                   _%obj142826%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor142663%_
               _%obj142664%_
               _%with-prototype+receiver142665%_
               _%with-receiver142666%_)
        (let* ((_%descriptor142669%_ _%descriptor142663%_)
               (_%with-prototype+receiver142677%_
                _%with-prototype+receiver142665%_)
               (_%with-receiver142685%_ _%with-receiver142666%_)
               (_%klass142694%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor142669%_ '1 '#f '#f)))
               (_%klass-id142697%_
                (let () (declare (not safe)) (##type-id _%klass142694%_))))
          (let _%loop142701%_ ((_%obj142704%_ _%obj142664%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass142707%_
                    (let () (declare (not safe)) (class-of _%obj142704%_)))
                   (_%obj-klass-id142710%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass142707%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id142697%_ _%obj-klass-id142710%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver142685%_ _%obj142704%_))
                  (if (interface-subclass? _%obj-klass142707%_)
                      (let* ((_%tab142716%_
                              (class-type-interface-table _%obj-klass142707%_))
                             (_%$e142758%_
                              (let* ((_%prototable142719%_ _%tab142716%_)
                                     (_%descriptor142722%_
                                      _%descriptor142669%_)
                                     (_%prototable142726%_
                                      _%prototable142719%_)
                                     (_%descriptor142749%_
                                      _%descriptor142722%_))
                                (____prototype-table-get
                                 _%prototable142726%_
                                 _%descriptor142749%_))))
                        (if _%$e142758%_
                            ((lambda (_%prototype142761%_)
                               (if (eq? _%prototype142761%_ '#!void)
                                   (_%loop142701%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj142704%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142677%_
                                      _%descriptor142669%_
                                      _%prototype142761%_
                                      _%obj142704%_))))
                             _%$e142758%_)
                            (let ((_%$e142764%_
                                   (try-create-prototype
                                    _%descriptor142669%_
                                    _%klass142694%_
                                    _%obj-klass142707%_)))
                              (if _%$e142764%_
                                  ((lambda (_%prototype142767%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142677%_
                                        _%descriptor142669%_
                                        _%prototype142767%_
                                        _%obj142704%_)))
                                   _%$e142764%_)
                                  (_%loop142701%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj142704%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab142771%_
                              (class-type-interface-table _%obj-klass142707%_))
                             (_%$e142800%_
                              (let* ((_%prototable142773%_ _%tab142771%_)
                                     (_%descriptor142776%_
                                      _%descriptor142669%_)
                                     (_%prototable142780%_
                                      _%prototable142773%_)
                                     (_%descriptor142791%_
                                      _%descriptor142776%_))
                                (____prototype-table-get
                                 _%prototable142780%_
                                 _%descriptor142791%_))))
                        (if _%$e142800%_
                            ((lambda (_%prototype142803%_)
                               (if (eq? _%prototype142803%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142677%_
                                      _%descriptor142669%_
                                      '#f
                                      _%obj142704%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver142677%_
                                      _%descriptor142669%_
                                      _%prototype142803%_
                                      _%obj142704%_))))
                             _%$e142800%_)
                            (let ((_%$e142805%_
                                   (create-prototype
                                    _%descriptor142669%_
                                    _%klass142694%_
                                    _%obj-klass142707%_)))
                              (if _%$e142805%_
                                  ((lambda (_%prototype142808%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver142677%_
                                        _%descriptor142669%_
                                        _%prototype142808%_
                                        _%obj142704%_)))
                                   _%$e142805%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver142677%_
                                     _%descriptor142669%_
                                     '#f
                                     _%obj142704%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor142626%_
               _%obj142627%_
               _%with-prototype+receiver142628%_
               _%with-receiver142629%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor142626%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor142633%_ _%descriptor142626%_))
              (if (procedure? _%with-prototype+receiver142628%_)
                  (let ((_%with-prototype+receiver142643%_
                         _%with-prototype+receiver142628%_))
                    (if (procedure? _%with-receiver142629%_)
                        (let ((_%with-receiver142653%_
                               _%with-receiver142629%_))
                          (__with-prototype
                           _%descriptor142633%_
                           _%obj142627%_
                           _%with-prototype+receiver142643%_
                           _%with-receiver142653%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver142629%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver142628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor142626%_)
              '#!void))))))
