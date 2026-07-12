(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1783878475)
  (begin
    (define CastError::t
      (let ((__tmp149476 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp149476
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args149390%_
        (apply make-instance CastError::t _%$args149390%_)))
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
      (lambda (_%where149264%_ _%message149265%_ . _%irritants149266%_)
        (let ((__tmp149477
               (let ((__obj149471
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj149471
                    _%message149265%_
                    'where:
                    _%where149264%_
                    'irritants:
                    _%irritants149266%_))
                 __obj149471)))
          (declare (not safe))
          (raise __tmp149477))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp149479 (list))
            (__tmp149478 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp149479
         '(object)
         __tmp149478
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args149261%_
        (apply make-instance interface-instance::t _%$args149261%_)))
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
      (let ((__tmp149481 (list))
            (__tmp149480
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp149481
         '(type methods index)
         __tmp149480
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args149258%_
        (apply make-instance interface-descriptor::t _%$args149258%_)))
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
          (let _%again149236%_ ((_%spin149239%_ '0))
            (if (let ((__tmp149482
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp149482 '0))
                (let ((__tmp149483 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp149483))
                (if (let () (declare (not safe)) (##fx< _%spin149239%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again149236%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin149239%_ '1))))
                    (let ((_%owner149245%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner149245%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner149245%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again149236%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r149253%_
               (let ((_%index149251%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index149251%_ '1)))
                 _%index149251%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r149253%_)))
    (define interface-descriptor:::init!
      (lambda (_%self149217%_ _%type149218%_ _%methods149219%_)
        (let ((_%self149222%_ _%self149217%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149222%_
             _%type149218%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149222%_
             _%methods149219%_
             '2
             '#f
             '#f))
          (let ((__tmp149484 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149222%_
             __tmp149484
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
      (let ((__tmp149486 (list))
            (__tmp149485
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp149486
         '(lock table)
         __tmp149485
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args149092%_
        (apply make-instance prototype-table::t _%$args149092%_)))
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
      (lambda (_%self149078%_)
        (let ((_%self149081%_ _%self149078%_))
          (let ((__tmp149487 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self149081%_ __tmp149487 '1 '#f '#f))
          (let ((__tmp149488
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149081%_
             __tmp149488
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
      (lambda (_%prototable148931%_ _%descriptor148932%_)
        (let* ((_%prototable148935%_ _%prototable148931%_)
               (_%descriptor148943%_ _%descriptor148932%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab148953%_
                 (##unchecked-structure-ref _%prototable148935%_ '2 '#f '#f))
                (_%index148954%_
                 (##unchecked-structure-ref _%descriptor148943%_ '3 '#f '#f)))
            (if (##fx< _%index148954%_ (vector-length _%tab148953%_))
                (vector-ref _%tab148953%_ _%index148954%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable148910%_ _%descriptor148911%_)
        (let* ((_%prototable148914%_ _%prototable148910%_)
               (_%descriptor148922%_ _%descriptor148911%_))
          (____prototype-table-get
           _%prototable148914%_
           _%descriptor148922%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable148856%_ _%descriptor148857%_ _%prototype148858%_)
        (let* ((_%prototable148861%_ _%prototable148856%_)
               (_%descriptor148869%_ _%descriptor148857%_))
          (declare (not safe))
          (let ((_%lock148879%_
                 (##unchecked-structure-ref _%prototable148861%_ '1 '#f '#f))
                (_%index148880%_
                 (##unchecked-structure-ref _%descriptor148869%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again148884%_ ((_%spin148887%_ '0))
                (if (##fx= (##vector-cas! _%lock148879%_ '0 '1 '0) '0)
                    (##vector-set! _%lock148879%_ '1 (current-thread))
                    (if (##fx< _%spin148887%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again148884%_ (##fx+ _%spin148887%_ '1)))
                        (let ((_%owner148893%_
                               (##vector-ref _%lock148879%_ '1)))
                          (if (eq? _%owner148893%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner148893%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again148884%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r148905%_
                   (let ((_%tab148899%_
                          (##unchecked-structure-ref
                           _%prototable148861%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index148880%_ (vector-length _%tab148899%_))
                         (vector-set!
                          _%tab148899%_
                          _%index148880%_
                          _%prototype148858%_)
                         (let ((_%new-size148901%_ __next-interface-index))
                           (if (##fx< _%index148880%_ _%new-size148901%_)
                               (let ((_%new-tab148903%_
                                      (##make-vector _%new-size148901%_ '#f)))
                                 (subvector-move!
                                  _%tab148899%_
                                  '0
                                  (vector-length _%tab148899%_)
                                  _%new-tab148903%_
                                  '0)
                                 (vector-set!
                                  _%new-tab148903%_
                                  _%index148880%_
                                  _%prototype148858%_)
                                 (##unchecked-structure-set!
                                  _%prototable148861%_
                                  _%new-tab148903%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor148869%_
                                      'index:
                                      _%index148880%_
                                      'max-index:
                                      _%new-size148901%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock148879%_ '1 '#f)
                  (##vector-cas! _%lock148879%_ '0 '0 '1)))
              _%$r148905%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable148834%_ _%descriptor148835%_ _%prototype148836%_)
        (let* ((_%prototable148839%_ _%prototable148834%_)
               (_%descriptor148847%_ _%descriptor148835%_))
          (____prototype-table-set!
           _%prototable148839%_
           _%descriptor148847%_
           _%prototype148836%_))))
    (define interface-subclass?
      (lambda (_%klass148827%_)
        (let ((_%$%super148828148830%_
               (let () (declare (not safe)) (##type-super _%klass148827%_))))
          (if _%$%super148828148830%_
              (let ((_%super148832%_ _%$%super148828148830%_))
                (eq? (let () (declare (not safe)) (##type-id _%super148832%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass148819%_)
        (let ((_%$e148821%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass148819%_ '13 '#f '#f))))
          (if _%$e148821%_
              _%$e148821%_
              (let ((_%tab148825%_
                     (let ((__obj149475
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj149475)
                       __obj149475)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass148819%_
                   _%tab148825%_
                   '13
                   '#f
                   '#f))
                _%tab148825%_)))))
    (define create-prototype
      (lambda (_%descriptor148502%_ _%klass148503%_ _%obj-klass148504%_)
        (let ((_%method-table148522%_
               (let ((_%klass148506%_ _%obj-klass148504%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass148506%_ 'class))
                     (let ((_%klass148511%_ _%klass148506%_))
                       (declare (not safe))
                       (__specialize-class _%klass148511%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass148506%_)
                       '#!void)))))
          (let _%loop148525%_ ((_%rest148528%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor148502%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count148530%_ '0)
                               (_%methods148532%_ '()))
            (let* ((_%$%rest148534148542%_ _%rest148528%_)
                   (_%$%else148536148669%_
                    (lambda ()
                      (let ((_%prototype148585%_
                             (let* ((_%klass148550%_ _%klass148503%_)
                                    (_%k148553%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count148530%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass148550%_
                                      'class))
                                   (let* ((_%klass148558%_ _%klass148550%_)
                                          (_%k148575%_ _%k148553%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass148558%_
                                      _%k148575%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass148550%_)
                                     '#!void)))))
                        (let _%loop148588%_ ((_%rest148590%_ _%methods148532%_)
                                             (_%off148591%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count148530%_ '1))))
                          (let* ((_%$%rest148593148601%_ _%rest148590%_)
                                 (_%$%else148595148650%_
                                  (lambda ()
                                    (let ((_%tab148609%_
                                           (class-type-interface-table
                                            _%obj-klass148504%_)))
                                      (let* ((_%prototable148612%_
                                              _%tab148609%_)
                                             (_%descriptor148615%_
                                              _%descriptor148502%_)
                                             (_%prototype148618%_
                                              _%prototype148585%_)
                                             (_%prototable148622%_
                                              _%prototable148612%_)
                                             (_%descriptor148639%_
                                              _%descriptor148615%_))
                                        (____prototype-table-set!
                                         _%prototable148622%_
                                         _%descriptor148639%_
                                         _%prototype148618%_))
                                      _%prototype148585%_)))
                                 (_%$%K148597148657%_
                                  (lambda (_%rest148653%_ _%method148654%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype148585%_
                                       _%method148654%_
                                       _%off148591%_
                                       _%klass148503%_
                                       '#f))
                                    (_%loop148588%_
                                     _%rest148653%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off148591%_ '1))))))
                            (if (pair? _%$%rest148593148601%_)
                                (let ((_%$%hd148598148660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest148593148601%_)))
                                      (_%$%tl148599148662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest148593148601%_))))
                                  (let* ((_%method148665%_
                                          _%$%hd148598148660%_)
                                         (_%rest148667%_ _%$%tl148599148662%_))
                                    (_%$%K148597148657%_
                                     _%rest148667%_
                                     _%method148665%_)))
                                (_%$%else148595148650%_)))))))
                   (_%$%K148538148807%_
                    (lambda (_%rest148672%_ _%method-spec148673%_)
                      (if (pair? _%method-spec148673%_)
                          (let _%loop-inner148677%_ ((_%methods-rest148680%_
                                                      _%method-spec148673%_))
                            (let* ((_%$%methods-rest148682148690%_
                                    _%methods-rest148680%_)
                                   (_%$%else148684148740%_
                                    (lambda ()
                                      (let ((_%tab148698%_
                                             (class-type-interface-table
                                              _%obj-klass148504%_)))
                                        (let* ((_%prototable148700%_
                                                _%tab148698%_)
                                               (_%descriptor148703%_
                                                _%descriptor148502%_)
                                               (_%prototype148706%_ '#!void)
                                               (_%prototable148710%_
                                                _%prototable148700%_)
                                               (_%descriptor148729%_
                                                _%descriptor148703%_))
                                          (____prototype-table-set!
                                           _%prototable148710%_
                                           _%descriptor148729%_
                                           _%prototype148706%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor148502%_
                                           'class:
                                           _%obj-klass148504%_
                                           'method:
                                           _%method-spec148673%_)
                                          '#!void))))
                                   (_%$%K148686148753%_
                                    (lambda (_%methods-rest148743%_
                                             _%method-name148744%_)
                                      (let ((_%$e148747%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table148522%_
                                                _%method-name148744%_
                                                '#f))))
                                        (if _%$e148747%_
                                            (_%loop148525%_
                                             _%rest148672%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count148530%_ '1))
                                             (cons _%$e148747%_
                                                   _%methods148532%_))
                                            (_%loop-inner148677%_
                                             _%methods-rest148743%_))))))
                              (if (pair? _%$%methods-rest148682148690%_)
                                  (let ((_%$%hd148687148756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest148682148690%_)))
                                        (_%$%tl148688148758%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest148682148690%_))))
                                    (let* ((_%method-name148761%_
                                            _%$%hd148687148756%_)
                                           (_%methods-rest148763%_
                                            _%$%tl148688148758%_))
                                      (_%$%K148686148753%_
                                       _%methods-rest148763%_
                                       _%method-name148761%_)))
                                  (_%$%else148684148740%_))))
                          (let ((_%$e148765%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table148522%_
                                    _%method-spec148673%_
                                    '#f))))
                            (if _%$e148765%_
                                (_%loop148525%_
                                 _%rest148672%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count148530%_ '1))
                                 (cons _%$e148765%_ _%methods148532%_))
                                (let ((_%tab148771%_
                                       (class-type-interface-table
                                        _%obj-klass148504%_)))
                                  (let* ((_%prototable148773%_ _%tab148771%_)
                                         (_%descriptor148776%_
                                          _%descriptor148502%_)
                                         (_%prototype148779%_ '#!void)
                                         (_%prototable148783%_
                                          _%prototable148773%_)
                                         (_%descriptor148796%_
                                          _%descriptor148776%_))
                                    (____prototype-table-set!
                                     _%prototable148783%_
                                     _%descriptor148796%_
                                     _%prototype148779%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor148502%_
                                     'class:
                                     _%obj-klass148504%_
                                     'method:
                                     _%method-spec148673%_)
                                    '#!void))))))))
              (if (pair? _%$%rest148534148542%_)
                  (let ((_%$%hd148539148810%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest148534148542%_)))
                        (_%$%tl148540148812%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest148534148542%_))))
                    (let* ((_%method-spec148815%_ _%$%hd148539148810%_)
                           (_%rest148817%_ _%$%tl148540148812%_))
                      (_%$%K148538148807%_
                       _%rest148817%_
                       _%method-spec148815%_)))
                  (_%$%else148536148669%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor148185%_ _%klass148186%_ _%obj-klass148187%_)
        (let ((_%method-table148205%_
               (let ((_%klass148189%_ _%obj-klass148187%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass148189%_ 'class))
                     (let ((_%klass148194%_ _%klass148189%_))
                       (declare (not safe))
                       (__specialize-class _%klass148194%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass148189%_)
                       '#!void)))))
          (let _%loop148208%_ ((_%rest148211%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor148185%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count148213%_ '0)
                               (_%methods148215%_ '()))
            (let* ((_%$%rest148217148225%_ _%rest148211%_)
                   (_%$%else148219148352%_
                    (lambda ()
                      (let ((_%prototype148268%_
                             (let* ((_%klass148233%_ _%klass148186%_)
                                    (_%k148236%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count148213%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass148233%_
                                      'class))
                                   (let* ((_%klass148241%_ _%klass148233%_)
                                          (_%k148258%_ _%k148236%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass148241%_
                                      _%k148258%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass148233%_)
                                     '#!void)))))
                        (let _%loop148271%_ ((_%rest148273%_ _%methods148215%_)
                                             (_%off148274%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count148213%_ '1))))
                          (let* ((_%$%rest148276148284%_ _%rest148273%_)
                                 (_%$%else148278148333%_
                                  (lambda ()
                                    (let ((_%tab148292%_
                                           (class-type-interface-table
                                            _%obj-klass148187%_)))
                                      (let* ((_%prototable148295%_
                                              _%tab148292%_)
                                             (_%descriptor148298%_
                                              _%descriptor148185%_)
                                             (_%prototype148301%_
                                              _%prototype148268%_)
                                             (_%prototable148305%_
                                              _%prototable148295%_)
                                             (_%descriptor148322%_
                                              _%descriptor148298%_))
                                        (____prototype-table-set!
                                         _%prototable148305%_
                                         _%descriptor148322%_
                                         _%prototype148301%_))
                                      _%prototype148268%_)))
                                 (_%$%K148280148340%_
                                  (lambda (_%rest148336%_ _%method148337%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype148268%_
                                       _%method148337%_
                                       _%off148274%_
                                       _%klass148186%_
                                       '#f))
                                    (_%loop148271%_
                                     _%rest148336%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off148274%_ '1))))))
                            (if (pair? _%$%rest148276148284%_)
                                (let ((_%$%hd148281148343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest148276148284%_)))
                                      (_%$%tl148282148345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest148276148284%_))))
                                  (let* ((_%method148348%_
                                          _%$%hd148281148343%_)
                                         (_%rest148350%_ _%$%tl148282148345%_))
                                    (_%$%K148280148340%_
                                     _%rest148350%_
                                     _%method148348%_)))
                                (_%$%else148278148333%_)))))))
                   (_%$%K148221148490%_
                    (lambda (_%rest148355%_ _%method-spec148356%_)
                      (if (pair? _%method-spec148356%_)
                          (let _%loop-inner148360%_ ((_%methods-rest148363%_
                                                      _%method-spec148356%_))
                            (let* ((_%$%methods-rest148365148373%_
                                    _%methods-rest148363%_)
                                   (_%$%else148367148423%_
                                    (lambda ()
                                      (let ((_%tab148381%_
                                             (class-type-interface-table
                                              _%obj-klass148187%_)))
                                        (let* ((_%prototable148383%_
                                                _%tab148381%_)
                                               (_%descriptor148386%_
                                                _%descriptor148185%_)
                                               (_%prototype148389%_ '#!void)
                                               (_%prototable148393%_
                                                _%prototable148383%_)
                                               (_%descriptor148412%_
                                                _%descriptor148386%_))
                                          (____prototype-table-set!
                                           _%prototable148393%_
                                           _%descriptor148412%_
                                           _%prototype148389%_))
                                        '#f)))
                                   (_%$%K148369148436%_
                                    (lambda (_%methods-rest148426%_
                                             _%method-name148427%_)
                                      (let ((_%$e148430%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table148205%_
                                                _%method-name148427%_
                                                '#f))))
                                        (if _%$e148430%_
                                            (_%loop148208%_
                                             _%rest148355%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count148213%_ '1))
                                             (cons _%$e148430%_
                                                   _%methods148215%_))
                                            (_%loop-inner148360%_
                                             _%methods-rest148426%_))))))
                              (if (pair? _%$%methods-rest148365148373%_)
                                  (let ((_%$%hd148370148439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest148365148373%_)))
                                        (_%$%tl148371148441%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest148365148373%_))))
                                    (let* ((_%method-name148444%_
                                            _%$%hd148370148439%_)
                                           (_%methods-rest148446%_
                                            _%$%tl148371148441%_))
                                      (_%$%K148369148436%_
                                       _%methods-rest148446%_
                                       _%method-name148444%_)))
                                  (_%$%else148367148423%_))))
                          (let ((_%$e148448%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table148205%_
                                    _%method-spec148356%_
                                    '#f))))
                            (if _%$e148448%_
                                (_%loop148208%_
                                 _%rest148355%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count148213%_ '1))
                                 (cons _%$e148448%_ _%methods148215%_))
                                (let ((_%tab148454%_
                                       (class-type-interface-table
                                        _%obj-klass148187%_)))
                                  (let* ((_%prototable148456%_ _%tab148454%_)
                                         (_%descriptor148459%_
                                          _%descriptor148185%_)
                                         (_%prototype148462%_ '#!void)
                                         (_%prototable148466%_
                                          _%prototable148456%_)
                                         (_%descriptor148479%_
                                          _%descriptor148459%_))
                                    (____prototype-table-set!
                                     _%prototable148466%_
                                     _%descriptor148479%_
                                     _%prototype148462%_))
                                  '#f)))))))
              (if (pair? _%$%rest148217148225%_)
                  (let ((_%$%hd148222148493%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest148217148225%_)))
                        (_%$%tl148223148495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest148217148225%_))))
                    (let* ((_%method-spec148498%_ _%$%hd148222148493%_)
                           (_%rest148500%_ _%$%tl148223148495%_))
                      (_%$%K148221148490%_
                       _%rest148500%_
                       _%method-spec148498%_)))
                  (_%$%else148219148352%_)))))))
    (define cast
      (lambda (_%descriptor148019%_ _%obj148021%_)
        (let* ((_%klass148024%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor148019%_ '1 '#f '#f)))
               (_%klass-id148027%_
                (let () (declare (not safe)) (##type-id _%klass148024%_))))
          (let _%loop148031%_ ((_%obj148034%_ _%obj148021%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass148037%_
                    (let () (declare (not safe)) (class-of _%obj148034%_)))
                   (_%obj-klass-id148040%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass148037%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id148027%_ _%obj-klass-id148040%_))
                  _%obj148034%_
                  (if (interface-subclass? _%obj-klass148037%_)
                      (let _%loop-interface148048%_ ((_%iface-klass148051%_
                                                      _%obj-klass148037%_))
                        (if _%iface-klass148051%_
                            (let* ((_%tab148054%_
                                    (class-type-interface-table
                                     _%iface-klass148051%_))
                                   (_%$e148096%_
                                    (let* ((_%prototable148057%_ _%tab148054%_)
                                           (_%descriptor148060%_
                                            _%descriptor148019%_)
                                           (_%prototable148064%_
                                            _%prototable148057%_)
                                           (_%descriptor148087%_
                                            _%descriptor148060%_))
                                      (____prototype-table-get
                                       _%prototable148064%_
                                       _%descriptor148087%_))))
                              (if _%$e148096%_
                                  (if (eq? _%$e148096%_ '#!void)
                                      (_%loop-interface148048%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass148051%_)))
                                      (if _%$e148096%_
                                          (let ((_%instance148106%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e148096%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance148106%_
                                               _%obj148034%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance148106%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor148019%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj148034%_)))
                                            '#!void)))
                                  (let ((_%$e148108%_
                                         (try-create-prototype
                                          _%descriptor148019%_
                                          _%klass148024%_
                                          _%iface-klass148051%_)))
                                    (if _%$e148108%_
                                        (if _%$e148108%_
                                            (let ((_%instance148117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e148108%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance148117%_
                                                 _%obj148034%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance148117%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor148019%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj148034%_)))
                                              '#!void))
                                        (_%loop-interface148048%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass148051%_)))))))
                            (_%loop148031%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj148034%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab148121%_
                              (class-type-interface-table _%obj-klass148037%_))
                             (_%$e148150%_
                              (let* ((_%prototable148123%_ _%tab148121%_)
                                     (_%descriptor148126%_
                                      _%descriptor148019%_)
                                     (_%prototable148130%_
                                      _%prototable148123%_)
                                     (_%descriptor148141%_
                                      _%descriptor148126%_))
                                (____prototype-table-get
                                 _%prototable148130%_
                                 _%descriptor148141%_))))
                        (if _%$e148150%_
                            (if (eq? _%$e148150%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor148019%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj148034%_)))
                                  '#!void)
                                (if _%$e148150%_
                                    (let ((_%instance148165%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e148150%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance148165%_
                                         _%obj148034%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance148165%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor148019%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj148034%_)))
                                      '#!void)))
                            (let ((_%$e148167%_
                                   (create-prototype
                                    _%descriptor148019%_
                                    _%klass148024%_
                                    _%obj-klass148037%_)))
                              (if _%$e148167%_
                                  (if _%$e148167%_
                                      (let ((_%instance148176%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e148167%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance148176%_
                                           _%obj148034%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance148176%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor148019%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj148034%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor148019%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj148034%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor147853%_ _%obj147855%_)
        (let* ((_%klass147858%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147853%_ '1 '#f '#f)))
               (_%klass-id147861%_
                (let () (declare (not safe)) (##type-id _%klass147858%_))))
          (let _%loop147865%_ ((_%obj147868%_ _%obj147855%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147871%_
                    (let () (declare (not safe)) (class-of _%obj147868%_)))
                   (_%obj-klass-id147874%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147871%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147861%_ _%obj-klass-id147874%_))
                  _%obj147868%_
                  (if (interface-subclass? _%obj-klass147871%_)
                      (let _%loop-interface147882%_ ((_%iface-klass147885%_
                                                      _%obj-klass147871%_))
                        (if _%iface-klass147885%_
                            (let* ((_%tab147888%_
                                    (class-type-interface-table
                                     _%iface-klass147885%_))
                                   (_%$e147930%_
                                    (let* ((_%prototable147891%_ _%tab147888%_)
                                           (_%descriptor147894%_
                                            _%descriptor147853%_)
                                           (_%prototable147898%_
                                            _%prototable147891%_)
                                           (_%descriptor147921%_
                                            _%descriptor147894%_))
                                      (____prototype-table-get
                                       _%prototable147898%_
                                       _%descriptor147921%_))))
                              (if _%$e147930%_
                                  (if (eq? _%$e147930%_ '#!void)
                                      (_%loop-interface147882%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147885%_)))
                                      (if _%$e147930%_
                                          (let ((_%instance147940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e147930%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance147940%_
                                               _%obj147868%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance147940%_)
                                          '#f))
                                  (let ((_%$e147942%_
                                         (try-create-prototype
                                          _%descriptor147853%_
                                          _%klass147858%_
                                          _%iface-klass147885%_)))
                                    (if _%$e147942%_
                                        (if _%$e147942%_
                                            (let ((_%instance147951%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e147942%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance147951%_
                                                 _%obj147868%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance147951%_)
                                            '#f)
                                        (_%loop-interface147882%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147885%_)))))))
                            (_%loop147865%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147868%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab147955%_
                              (class-type-interface-table _%obj-klass147871%_))
                             (_%$e147984%_
                              (let* ((_%prototable147957%_ _%tab147955%_)
                                     (_%descriptor147960%_
                                      _%descriptor147853%_)
                                     (_%prototable147964%_
                                      _%prototable147957%_)
                                     (_%descriptor147975%_
                                      _%descriptor147960%_))
                                (____prototype-table-get
                                 _%prototable147964%_
                                 _%descriptor147975%_))))
                        (if _%$e147984%_
                            (if (eq? _%$e147984%_ '#!void)
                                '#f
                                (if _%$e147984%_
                                    (let ((_%instance147999%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e147984%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance147999%_
                                         _%obj147868%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance147999%_)
                                    '#f))
                            (let ((_%$e148001%_
                                   (try-create-prototype
                                    _%descriptor147853%_
                                    _%klass147858%_
                                    _%obj-klass147871%_)))
                              (if _%$e148001%_
                                  (if _%$e148001%_
                                      (let ((_%instance148010%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e148001%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance148010%_
                                           _%obj147868%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance148010%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor147699%_ _%obj147701%_)
        (let* ((_%klass147704%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147699%_ '1 '#f '#f)))
               (_%klass-id147707%_
                (let () (declare (not safe)) (##type-id _%klass147704%_))))
          (let _%loop147711%_ ((_%obj147714%_ _%obj147701%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147717%_
                    (let () (declare (not safe)) (class-of _%obj147714%_)))
                   (_%obj-klass-id147720%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147717%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147707%_ _%obj-klass-id147720%_))
                  '#t
                  (if (interface-subclass? _%obj-klass147717%_)
                      (let _%loop-interface147728%_ ((_%iface-klass147731%_
                                                      _%obj-klass147717%_))
                        (if _%iface-klass147731%_
                            (let* ((_%tab147734%_
                                    (class-type-interface-table
                                     _%iface-klass147731%_))
                                   (_%$e147776%_
                                    (let* ((_%prototable147737%_ _%tab147734%_)
                                           (_%descriptor147740%_
                                            _%descriptor147699%_)
                                           (_%prototable147744%_
                                            _%prototable147737%_)
                                           (_%descriptor147767%_
                                            _%descriptor147740%_))
                                      (____prototype-table-get
                                       _%prototable147744%_
                                       _%descriptor147767%_))))
                              (if _%$e147776%_
                                  (if (eq? _%$e147776%_ '#!void)
                                      (_%loop-interface147728%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147731%_)))
                                      (if _%$e147776%_ '#t '#f))
                                  (let ((_%$e147786%_
                                         (try-create-prototype
                                          _%descriptor147699%_
                                          _%klass147704%_
                                          _%iface-klass147731%_)))
                                    (if _%$e147786%_
                                        (if _%$e147786%_ '#t '#f)
                                        (_%loop-interface147728%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147731%_)))))))
                            (_%loop147711%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147714%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab147797%_
                              (class-type-interface-table _%obj-klass147717%_))
                             (_%$e147826%_
                              (let* ((_%prototable147799%_ _%tab147797%_)
                                     (_%descriptor147802%_
                                      _%descriptor147699%_)
                                     (_%prototable147806%_
                                      _%prototable147799%_)
                                     (_%descriptor147817%_
                                      _%descriptor147802%_))
                                (____prototype-table-get
                                 _%prototable147806%_
                                 _%descriptor147817%_))))
                        (if _%$e147826%_
                            (if (eq? _%$e147826%_ '#!void)
                                '#f
                                (if _%$e147826%_ '#t '#f))
                            (let ((_%$e147839%_
                                   (try-create-prototype
                                    _%descriptor147699%_
                                    _%klass147704%_
                                    _%obj-klass147717%_)))
                              (if _%$e147839%_
                                  (if _%$e147839%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor147543%_
               _%obj147544%_
               _%with-prototype+receiver147545%_
               _%with-receiver147546%_)
        (let* ((_%descriptor147549%_ _%descriptor147543%_)
               (_%with-prototype+receiver147557%_
                _%with-prototype+receiver147545%_)
               (_%with-receiver147565%_ _%with-receiver147546%_)
               (_%klass147574%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147549%_ '1 '#f '#f)))
               (_%klass-id147577%_
                (let () (declare (not safe)) (##type-id _%klass147574%_))))
          (let _%loop147581%_ ((_%obj147584%_ _%obj147544%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147587%_
                    (let () (declare (not safe)) (class-of _%obj147584%_)))
                   (_%obj-klass-id147590%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147587%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147577%_ _%obj-klass-id147590%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver147565%_ _%obj147584%_))
                  (if (interface-subclass? _%obj-klass147587%_)
                      (let _%loop-interface147596%_ ((_%iface-klass147599%_
                                                      _%obj-klass147587%_))
                        (if _%iface-klass147599%_
                            (let* ((_%tab147602%_
                                    (class-type-interface-table
                                     _%iface-klass147599%_))
                                   (_%$e147646%_
                                    (let* ((_%prototable147605%_ _%tab147602%_)
                                           (_%descriptor147608%_
                                            _%descriptor147549%_)
                                           (_%prototable147612%_
                                            _%prototable147605%_)
                                           (_%descriptor147637%_
                                            _%descriptor147608%_))
                                      (____prototype-table-get
                                       _%prototable147612%_
                                       _%descriptor147637%_))))
                              (if _%$e147646%_
                                  (if (eq? _%$e147646%_ '#!void)
                                      (_%loop-interface147596%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147599%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver147557%_
                                         _%descriptor147549%_
                                         _%$e147646%_
                                         _%obj147584%_)))
                                  (let ((_%$e147652%_
                                         (try-create-prototype
                                          _%descriptor147549%_
                                          _%klass147574%_
                                          _%iface-klass147599%_)))
                                    (if _%$e147652%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver147557%_
                                           _%descriptor147549%_
                                           _%$e147652%_
                                           _%obj147584%_))
                                        (_%loop-interface147596%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147599%_)))))))
                            (_%loop147581%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147584%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab147659%_
                              (class-type-interface-table _%obj-klass147587%_))
                             (_%$e147688%_
                              (let* ((_%prototable147661%_ _%tab147659%_)
                                     (_%descriptor147664%_
                                      _%descriptor147549%_)
                                     (_%prototable147668%_
                                      _%prototable147661%_)
                                     (_%descriptor147679%_
                                      _%descriptor147664%_))
                                (____prototype-table-get
                                 _%prototable147668%_
                                 _%descriptor147679%_))))
                        (if _%$e147688%_
                            (if (eq? _%$e147688%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver147557%_
                                   _%descriptor147549%_
                                   '#f
                                   _%obj147584%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver147557%_
                                   _%descriptor147549%_
                                   _%$e147688%_
                                   _%obj147584%_)))
                            (let ((_%$e147693%_
                                   (create-prototype
                                    _%descriptor147549%_
                                    _%klass147574%_
                                    _%obj-klass147587%_)))
                              (if _%$e147693%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver147557%_
                                     _%descriptor147549%_
                                     _%$e147693%_
                                     _%obj147584%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver147557%_
                                     _%descriptor147549%_
                                     '#f
                                     _%obj147584%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor147506%_
               _%obj147507%_
               _%with-prototype+receiver147508%_
               _%with-receiver147509%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor147506%_
               'interface-descriptor::t))
            (let ((_%descriptor147513%_ _%descriptor147506%_))
              (if (procedure? _%with-prototype+receiver147508%_)
                  (let ((_%with-prototype+receiver147523%_
                         _%with-prototype+receiver147508%_))
                    (if (procedure? _%with-receiver147509%_)
                        (let ((_%with-receiver147533%_
                               _%with-receiver147509%_))
                          (__with-prototype
                           _%descriptor147513%_
                           _%obj147507%_
                           _%with-prototype+receiver147523%_
                           _%with-receiver147533%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver147509%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver147508%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor147506%_)
              '#!void))))))
