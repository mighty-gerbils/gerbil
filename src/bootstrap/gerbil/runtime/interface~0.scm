(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1783939347)
  (begin
    (define CastError::t
      (let ((__tmp149531 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp149531
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args149445%_
        (apply make-instance CastError::t _%$args149445%_)))
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
      (lambda (_%where149319%_ _%message149320%_ . _%irritants149321%_)
        (let ((__tmp149532
               (let ((__obj149526
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj149526
                    _%message149320%_
                    'where:
                    _%where149319%_
                    'irritants:
                    _%irritants149321%_))
                 __obj149526)))
          (declare (not safe))
          (raise __tmp149532))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp149534 (list))
            (__tmp149533 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp149534
         '(object)
         __tmp149533
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args149316%_
        (apply make-instance interface-instance::t _%$args149316%_)))
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
      (let ((__tmp149536 (list))
            (__tmp149535
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp149536
         '(type methods index)
         __tmp149535
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args149313%_
        (apply make-instance interface-descriptor::t _%$args149313%_)))
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
          (let _%again149291%_ ((_%spin149294%_ '0))
            (if (let ((__tmp149537
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp149537 '0))
                (let ((__tmp149538 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp149538))
                (if (let () (declare (not safe)) (##fx< _%spin149294%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again149291%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin149294%_ '1))))
                    (let ((_%owner149300%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner149300%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner149300%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again149291%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r149308%_
               (let ((_%index149306%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index149306%_ '1)))
                 _%index149306%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r149308%_)))
    (define interface-descriptor:::init!
      (lambda (_%self149272%_ _%type149273%_ _%methods149274%_)
        (let ((_%self149277%_ _%self149272%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149277%_
             _%type149273%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149277%_
             _%methods149274%_
             '2
             '#f
             '#f))
          (let ((__tmp149539 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149277%_
             __tmp149539
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
      (let ((__tmp149541 (list))
            (__tmp149540
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp149541
         '(lock table)
         __tmp149540
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args149147%_
        (apply make-instance prototype-table::t _%$args149147%_)))
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
      (lambda (_%self149133%_)
        (let ((_%self149136%_ _%self149133%_))
          (let ((__tmp149542 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self149136%_ __tmp149542 '1 '#f '#f))
          (let ((__tmp149543
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149136%_
             __tmp149543
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
      (lambda (_%prototable148986%_ _%descriptor148987%_)
        (let* ((_%prototable148990%_ _%prototable148986%_)
               (_%descriptor148998%_ _%descriptor148987%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab149008%_
                 (##unchecked-structure-ref _%prototable148990%_ '2 '#f '#f))
                (_%index149009%_
                 (##unchecked-structure-ref _%descriptor148998%_ '3 '#f '#f)))
            (if (##fx< _%index149009%_ (vector-length _%tab149008%_))
                (vector-ref _%tab149008%_ _%index149009%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable148965%_ _%descriptor148966%_)
        (let* ((_%prototable148969%_ _%prototable148965%_)
               (_%descriptor148977%_ _%descriptor148966%_))
          (____prototype-table-get
           _%prototable148969%_
           _%descriptor148977%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable148911%_ _%descriptor148912%_ _%prototype148913%_)
        (let* ((_%prototable148916%_ _%prototable148911%_)
               (_%descriptor148924%_ _%descriptor148912%_))
          (declare (not safe))
          (let ((_%lock148934%_
                 (##unchecked-structure-ref _%prototable148916%_ '1 '#f '#f))
                (_%index148935%_
                 (##unchecked-structure-ref _%descriptor148924%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again148939%_ ((_%spin148942%_ '0))
                (if (##fx= (##vector-cas! _%lock148934%_ '0 '1 '0) '0)
                    (##vector-set! _%lock148934%_ '1 (current-thread))
                    (if (##fx< _%spin148942%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again148939%_ (##fx+ _%spin148942%_ '1)))
                        (let ((_%owner148948%_
                               (##vector-ref _%lock148934%_ '1)))
                          (if (eq? _%owner148948%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner148948%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again148939%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r148960%_
                   (let ((_%tab148954%_
                          (##unchecked-structure-ref
                           _%prototable148916%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index148935%_ (vector-length _%tab148954%_))
                         (vector-set!
                          _%tab148954%_
                          _%index148935%_
                          _%prototype148913%_)
                         (let ((_%new-size148956%_ __next-interface-index))
                           (if (##fx< _%index148935%_ _%new-size148956%_)
                               (let ((_%new-tab148958%_
                                      (##make-vector _%new-size148956%_ '#f)))
                                 (subvector-move!
                                  _%tab148954%_
                                  '0
                                  (vector-length _%tab148954%_)
                                  _%new-tab148958%_
                                  '0)
                                 (vector-set!
                                  _%new-tab148958%_
                                  _%index148935%_
                                  _%prototype148913%_)
                                 (##unchecked-structure-set!
                                  _%prototable148916%_
                                  _%new-tab148958%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor148924%_
                                      'index:
                                      _%index148935%_
                                      'max-index:
                                      _%new-size148956%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock148934%_ '1 '#f)
                  (##vector-cas! _%lock148934%_ '0 '0 '1)))
              _%$r148960%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable148889%_ _%descriptor148890%_ _%prototype148891%_)
        (let* ((_%prototable148894%_ _%prototable148889%_)
               (_%descriptor148902%_ _%descriptor148890%_))
          (____prototype-table-set!
           _%prototable148894%_
           _%descriptor148902%_
           _%prototype148891%_))))
    (define interface-subclass?
      (lambda (_%klass148882%_)
        (let ((_%$%super148883148885%_
               (let () (declare (not safe)) (##type-super _%klass148882%_))))
          (if _%$%super148883148885%_
              (let ((_%super148887%_ _%$%super148883148885%_))
                (eq? (let () (declare (not safe)) (##type-id _%super148887%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass148874%_)
        (let ((_%$e148876%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass148874%_ '13 '#f '#f))))
          (if _%$e148876%_
              _%$e148876%_
              (let ((_%tab148880%_
                     (let ((__obj149530
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj149530)
                       __obj149530)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass148874%_
                   _%tab148880%_
                   '13
                   '#f
                   '#f))
                _%tab148880%_)))))
    (define create-prototype
      (lambda (_%descriptor148557%_ _%klass148558%_ _%obj-klass148559%_)
        (let ((_%method-table148577%_
               (let ((_%klass148561%_ _%obj-klass148559%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass148561%_ 'class))
                     (let ((_%klass148566%_ _%klass148561%_))
                       (declare (not safe))
                       (__specialize-class _%klass148566%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass148561%_)
                       '#!void)))))
          (let _%loop148580%_ ((_%rest148583%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor148557%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count148585%_ '0)
                               (_%methods148587%_ '()))
            (let* ((_%$%rest148589148597%_ _%rest148583%_)
                   (_%$%else148591148724%_
                    (lambda ()
                      (let ((_%prototype148640%_
                             (let* ((_%klass148605%_ _%klass148558%_)
                                    (_%k148608%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count148585%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass148605%_
                                      'class))
                                   (let* ((_%klass148613%_ _%klass148605%_)
                                          (_%k148630%_ _%k148608%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass148613%_
                                      _%k148630%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass148605%_)
                                     '#!void)))))
                        (let _%loop148643%_ ((_%rest148645%_ _%methods148587%_)
                                             (_%off148646%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count148585%_ '1))))
                          (let* ((_%$%rest148648148656%_ _%rest148645%_)
                                 (_%$%else148650148705%_
                                  (lambda ()
                                    (let ((_%tab148664%_
                                           (class-type-interface-table
                                            _%obj-klass148559%_)))
                                      (let* ((_%prototable148667%_
                                              _%tab148664%_)
                                             (_%descriptor148670%_
                                              _%descriptor148557%_)
                                             (_%prototype148673%_
                                              _%prototype148640%_)
                                             (_%prototable148677%_
                                              _%prototable148667%_)
                                             (_%descriptor148694%_
                                              _%descriptor148670%_))
                                        (____prototype-table-set!
                                         _%prototable148677%_
                                         _%descriptor148694%_
                                         _%prototype148673%_))
                                      _%prototype148640%_)))
                                 (_%$%K148652148712%_
                                  (lambda (_%rest148708%_ _%method148709%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype148640%_
                                       _%method148709%_
                                       _%off148646%_
                                       _%klass148558%_
                                       '#f))
                                    (_%loop148643%_
                                     _%rest148708%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off148646%_ '1))))))
                            (if (pair? _%$%rest148648148656%_)
                                (let ((_%$%hd148653148715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest148648148656%_)))
                                      (_%$%tl148654148717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest148648148656%_))))
                                  (let* ((_%method148720%_
                                          _%$%hd148653148715%_)
                                         (_%rest148722%_ _%$%tl148654148717%_))
                                    (_%$%K148652148712%_
                                     _%rest148722%_
                                     _%method148720%_)))
                                (_%$%else148650148705%_)))))))
                   (_%$%K148593148862%_
                    (lambda (_%rest148727%_ _%method-spec148728%_)
                      (if (pair? _%method-spec148728%_)
                          (let _%loop-inner148732%_ ((_%methods-rest148735%_
                                                      _%method-spec148728%_))
                            (let* ((_%$%methods-rest148737148745%_
                                    _%methods-rest148735%_)
                                   (_%$%else148739148795%_
                                    (lambda ()
                                      (let ((_%tab148753%_
                                             (class-type-interface-table
                                              _%obj-klass148559%_)))
                                        (let* ((_%prototable148755%_
                                                _%tab148753%_)
                                               (_%descriptor148758%_
                                                _%descriptor148557%_)
                                               (_%prototype148761%_ '#!void)
                                               (_%prototable148765%_
                                                _%prototable148755%_)
                                               (_%descriptor148784%_
                                                _%descriptor148758%_))
                                          (____prototype-table-set!
                                           _%prototable148765%_
                                           _%descriptor148784%_
                                           _%prototype148761%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor148557%_
                                           'class:
                                           _%obj-klass148559%_
                                           'method:
                                           _%method-spec148728%_)
                                          '#!void))))
                                   (_%$%K148741148808%_
                                    (lambda (_%methods-rest148798%_
                                             _%method-name148799%_)
                                      (let ((_%$e148802%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table148577%_
                                                _%method-name148799%_
                                                '#f))))
                                        (if _%$e148802%_
                                            (_%loop148580%_
                                             _%rest148727%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count148585%_ '1))
                                             (cons _%$e148802%_
                                                   _%methods148587%_))
                                            (_%loop-inner148732%_
                                             _%methods-rest148798%_))))))
                              (if (pair? _%$%methods-rest148737148745%_)
                                  (let ((_%$%hd148742148811%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest148737148745%_)))
                                        (_%$%tl148743148813%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest148737148745%_))))
                                    (let* ((_%method-name148816%_
                                            _%$%hd148742148811%_)
                                           (_%methods-rest148818%_
                                            _%$%tl148743148813%_))
                                      (_%$%K148741148808%_
                                       _%methods-rest148818%_
                                       _%method-name148816%_)))
                                  (_%$%else148739148795%_))))
                          (let ((_%$e148820%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table148577%_
                                    _%method-spec148728%_
                                    '#f))))
                            (if _%$e148820%_
                                (_%loop148580%_
                                 _%rest148727%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count148585%_ '1))
                                 (cons _%$e148820%_ _%methods148587%_))
                                (let ((_%tab148826%_
                                       (class-type-interface-table
                                        _%obj-klass148559%_)))
                                  (let* ((_%prototable148828%_ _%tab148826%_)
                                         (_%descriptor148831%_
                                          _%descriptor148557%_)
                                         (_%prototype148834%_ '#!void)
                                         (_%prototable148838%_
                                          _%prototable148828%_)
                                         (_%descriptor148851%_
                                          _%descriptor148831%_))
                                    (____prototype-table-set!
                                     _%prototable148838%_
                                     _%descriptor148851%_
                                     _%prototype148834%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor148557%_
                                     'class:
                                     _%obj-klass148559%_
                                     'method:
                                     _%method-spec148728%_)
                                    '#!void))))))))
              (if (pair? _%$%rest148589148597%_)
                  (let ((_%$%hd148594148865%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest148589148597%_)))
                        (_%$%tl148595148867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest148589148597%_))))
                    (let* ((_%method-spec148870%_ _%$%hd148594148865%_)
                           (_%rest148872%_ _%$%tl148595148867%_))
                      (_%$%K148593148862%_
                       _%rest148872%_
                       _%method-spec148870%_)))
                  (_%$%else148591148724%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor148240%_ _%klass148241%_ _%obj-klass148242%_)
        (let ((_%method-table148260%_
               (let ((_%klass148244%_ _%obj-klass148242%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass148244%_ 'class))
                     (let ((_%klass148249%_ _%klass148244%_))
                       (declare (not safe))
                       (__specialize-class _%klass148249%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass148244%_)
                       '#!void)))))
          (let _%loop148263%_ ((_%rest148266%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor148240%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count148268%_ '0)
                               (_%methods148270%_ '()))
            (let* ((_%$%rest148272148280%_ _%rest148266%_)
                   (_%$%else148274148407%_
                    (lambda ()
                      (let ((_%prototype148323%_
                             (let* ((_%klass148288%_ _%klass148241%_)
                                    (_%k148291%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count148268%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass148288%_
                                      'class))
                                   (let* ((_%klass148296%_ _%klass148288%_)
                                          (_%k148313%_ _%k148291%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass148296%_
                                      _%k148313%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass148288%_)
                                     '#!void)))))
                        (let _%loop148326%_ ((_%rest148328%_ _%methods148270%_)
                                             (_%off148329%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count148268%_ '1))))
                          (let* ((_%$%rest148331148339%_ _%rest148328%_)
                                 (_%$%else148333148388%_
                                  (lambda ()
                                    (let ((_%tab148347%_
                                           (class-type-interface-table
                                            _%obj-klass148242%_)))
                                      (let* ((_%prototable148350%_
                                              _%tab148347%_)
                                             (_%descriptor148353%_
                                              _%descriptor148240%_)
                                             (_%prototype148356%_
                                              _%prototype148323%_)
                                             (_%prototable148360%_
                                              _%prototable148350%_)
                                             (_%descriptor148377%_
                                              _%descriptor148353%_))
                                        (____prototype-table-set!
                                         _%prototable148360%_
                                         _%descriptor148377%_
                                         _%prototype148356%_))
                                      _%prototype148323%_)))
                                 (_%$%K148335148395%_
                                  (lambda (_%rest148391%_ _%method148392%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype148323%_
                                       _%method148392%_
                                       _%off148329%_
                                       _%klass148241%_
                                       '#f))
                                    (_%loop148326%_
                                     _%rest148391%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off148329%_ '1))))))
                            (if (pair? _%$%rest148331148339%_)
                                (let ((_%$%hd148336148398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest148331148339%_)))
                                      (_%$%tl148337148400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest148331148339%_))))
                                  (let* ((_%method148403%_
                                          _%$%hd148336148398%_)
                                         (_%rest148405%_ _%$%tl148337148400%_))
                                    (_%$%K148335148395%_
                                     _%rest148405%_
                                     _%method148403%_)))
                                (_%$%else148333148388%_)))))))
                   (_%$%K148276148545%_
                    (lambda (_%rest148410%_ _%method-spec148411%_)
                      (if (pair? _%method-spec148411%_)
                          (let _%loop-inner148415%_ ((_%methods-rest148418%_
                                                      _%method-spec148411%_))
                            (let* ((_%$%methods-rest148420148428%_
                                    _%methods-rest148418%_)
                                   (_%$%else148422148478%_
                                    (lambda ()
                                      (let ((_%tab148436%_
                                             (class-type-interface-table
                                              _%obj-klass148242%_)))
                                        (let* ((_%prototable148438%_
                                                _%tab148436%_)
                                               (_%descriptor148441%_
                                                _%descriptor148240%_)
                                               (_%prototype148444%_ '#!void)
                                               (_%prototable148448%_
                                                _%prototable148438%_)
                                               (_%descriptor148467%_
                                                _%descriptor148441%_))
                                          (____prototype-table-set!
                                           _%prototable148448%_
                                           _%descriptor148467%_
                                           _%prototype148444%_))
                                        '#f)))
                                   (_%$%K148424148491%_
                                    (lambda (_%methods-rest148481%_
                                             _%method-name148482%_)
                                      (let ((_%$e148485%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table148260%_
                                                _%method-name148482%_
                                                '#f))))
                                        (if _%$e148485%_
                                            (_%loop148263%_
                                             _%rest148410%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count148268%_ '1))
                                             (cons _%$e148485%_
                                                   _%methods148270%_))
                                            (_%loop-inner148415%_
                                             _%methods-rest148481%_))))))
                              (if (pair? _%$%methods-rest148420148428%_)
                                  (let ((_%$%hd148425148494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest148420148428%_)))
                                        (_%$%tl148426148496%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest148420148428%_))))
                                    (let* ((_%method-name148499%_
                                            _%$%hd148425148494%_)
                                           (_%methods-rest148501%_
                                            _%$%tl148426148496%_))
                                      (_%$%K148424148491%_
                                       _%methods-rest148501%_
                                       _%method-name148499%_)))
                                  (_%$%else148422148478%_))))
                          (let ((_%$e148503%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table148260%_
                                    _%method-spec148411%_
                                    '#f))))
                            (if _%$e148503%_
                                (_%loop148263%_
                                 _%rest148410%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count148268%_ '1))
                                 (cons _%$e148503%_ _%methods148270%_))
                                (let ((_%tab148509%_
                                       (class-type-interface-table
                                        _%obj-klass148242%_)))
                                  (let* ((_%prototable148511%_ _%tab148509%_)
                                         (_%descriptor148514%_
                                          _%descriptor148240%_)
                                         (_%prototype148517%_ '#!void)
                                         (_%prototable148521%_
                                          _%prototable148511%_)
                                         (_%descriptor148534%_
                                          _%descriptor148514%_))
                                    (____prototype-table-set!
                                     _%prototable148521%_
                                     _%descriptor148534%_
                                     _%prototype148517%_))
                                  '#f)))))))
              (if (pair? _%$%rest148272148280%_)
                  (let ((_%$%hd148277148548%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest148272148280%_)))
                        (_%$%tl148278148550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest148272148280%_))))
                    (let* ((_%method-spec148553%_ _%$%hd148277148548%_)
                           (_%rest148555%_ _%$%tl148278148550%_))
                      (_%$%K148276148545%_
                       _%rest148555%_
                       _%method-spec148553%_)))
                  (_%$%else148274148407%_)))))))
    (define cast
      (lambda (_%descriptor148074%_ _%obj148076%_)
        (let* ((_%klass148079%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor148074%_ '1 '#f '#f)))
               (_%klass-id148082%_
                (let () (declare (not safe)) (##type-id _%klass148079%_))))
          (let _%loop148086%_ ((_%obj148089%_ _%obj148076%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass148092%_
                    (let () (declare (not safe)) (class-of _%obj148089%_)))
                   (_%obj-klass-id148095%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass148092%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id148082%_ _%obj-klass-id148095%_))
                  _%obj148089%_
                  (if (interface-subclass? _%obj-klass148092%_)
                      (let _%loop-interface148103%_ ((_%iface-klass148106%_
                                                      _%obj-klass148092%_))
                        (if _%iface-klass148106%_
                            (let* ((_%tab148109%_
                                    (class-type-interface-table
                                     _%iface-klass148106%_))
                                   (_%$e148151%_
                                    (let* ((_%prototable148112%_ _%tab148109%_)
                                           (_%descriptor148115%_
                                            _%descriptor148074%_)
                                           (_%prototable148119%_
                                            _%prototable148112%_)
                                           (_%descriptor148142%_
                                            _%descriptor148115%_))
                                      (____prototype-table-get
                                       _%prototable148119%_
                                       _%descriptor148142%_))))
                              (if _%$e148151%_
                                  (if (eq? _%$e148151%_ '#!void)
                                      (_%loop-interface148103%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass148106%_)))
                                      (if _%$e148151%_
                                          (let ((_%instance148161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e148151%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance148161%_
                                               _%obj148089%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance148161%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor148074%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj148089%_)))
                                            '#!void)))
                                  (let ((_%$e148163%_
                                         (try-create-prototype
                                          _%descriptor148074%_
                                          _%klass148079%_
                                          _%iface-klass148106%_)))
                                    (if _%$e148163%_
                                        (if _%$e148163%_
                                            (let ((_%instance148172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e148163%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance148172%_
                                                 _%obj148089%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance148172%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor148074%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj148089%_)))
                                              '#!void))
                                        (_%loop-interface148103%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass148106%_)))))))
                            (_%loop148086%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj148089%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab148176%_
                              (class-type-interface-table _%obj-klass148092%_))
                             (_%$e148205%_
                              (let* ((_%prototable148178%_ _%tab148176%_)
                                     (_%descriptor148181%_
                                      _%descriptor148074%_)
                                     (_%prototable148185%_
                                      _%prototable148178%_)
                                     (_%descriptor148196%_
                                      _%descriptor148181%_))
                                (____prototype-table-get
                                 _%prototable148185%_
                                 _%descriptor148196%_))))
                        (if _%$e148205%_
                            (if (eq? _%$e148205%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor148074%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj148089%_)))
                                  '#!void)
                                (if _%$e148205%_
                                    (let ((_%instance148220%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e148205%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance148220%_
                                         _%obj148089%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance148220%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor148074%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj148089%_)))
                                      '#!void)))
                            (let ((_%$e148222%_
                                   (create-prototype
                                    _%descriptor148074%_
                                    _%klass148079%_
                                    _%obj-klass148092%_)))
                              (if _%$e148222%_
                                  (if _%$e148222%_
                                      (let ((_%instance148231%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e148222%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance148231%_
                                           _%obj148089%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance148231%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor148074%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj148089%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor148074%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj148089%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor147908%_ _%obj147910%_)
        (let* ((_%klass147913%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147908%_ '1 '#f '#f)))
               (_%klass-id147916%_
                (let () (declare (not safe)) (##type-id _%klass147913%_))))
          (let _%loop147920%_ ((_%obj147923%_ _%obj147910%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147926%_
                    (let () (declare (not safe)) (class-of _%obj147923%_)))
                   (_%obj-klass-id147929%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147926%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147916%_ _%obj-klass-id147929%_))
                  _%obj147923%_
                  (if (interface-subclass? _%obj-klass147926%_)
                      (let _%loop-interface147937%_ ((_%iface-klass147940%_
                                                      _%obj-klass147926%_))
                        (if _%iface-klass147940%_
                            (let* ((_%tab147943%_
                                    (class-type-interface-table
                                     _%iface-klass147940%_))
                                   (_%$e147985%_
                                    (let* ((_%prototable147946%_ _%tab147943%_)
                                           (_%descriptor147949%_
                                            _%descriptor147908%_)
                                           (_%prototable147953%_
                                            _%prototable147946%_)
                                           (_%descriptor147976%_
                                            _%descriptor147949%_))
                                      (____prototype-table-get
                                       _%prototable147953%_
                                       _%descriptor147976%_))))
                              (if _%$e147985%_
                                  (if (eq? _%$e147985%_ '#!void)
                                      (_%loop-interface147937%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147940%_)))
                                      (if _%$e147985%_
                                          (let ((_%instance147995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e147985%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance147995%_
                                               _%obj147923%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance147995%_)
                                          '#f))
                                  (let ((_%$e147997%_
                                         (try-create-prototype
                                          _%descriptor147908%_
                                          _%klass147913%_
                                          _%iface-klass147940%_)))
                                    (if _%$e147997%_
                                        (if _%$e147997%_
                                            (let ((_%instance148006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e147997%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance148006%_
                                                 _%obj147923%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance148006%_)
                                            '#f)
                                        (_%loop-interface147937%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147940%_)))))))
                            (_%loop147920%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147923%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab148010%_
                              (class-type-interface-table _%obj-klass147926%_))
                             (_%$e148039%_
                              (let* ((_%prototable148012%_ _%tab148010%_)
                                     (_%descriptor148015%_
                                      _%descriptor147908%_)
                                     (_%prototable148019%_
                                      _%prototable148012%_)
                                     (_%descriptor148030%_
                                      _%descriptor148015%_))
                                (____prototype-table-get
                                 _%prototable148019%_
                                 _%descriptor148030%_))))
                        (if _%$e148039%_
                            (if (eq? _%$e148039%_ '#!void)
                                '#f
                                (if _%$e148039%_
                                    (let ((_%instance148054%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e148039%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance148054%_
                                         _%obj147923%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance148054%_)
                                    '#f))
                            (let ((_%$e148056%_
                                   (try-create-prototype
                                    _%descriptor147908%_
                                    _%klass147913%_
                                    _%obj-klass147926%_)))
                              (if _%$e148056%_
                                  (if _%$e148056%_
                                      (let ((_%instance148065%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e148056%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance148065%_
                                           _%obj147923%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance148065%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor147754%_ _%obj147756%_)
        (let* ((_%klass147759%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147754%_ '1 '#f '#f)))
               (_%klass-id147762%_
                (let () (declare (not safe)) (##type-id _%klass147759%_))))
          (let _%loop147766%_ ((_%obj147769%_ _%obj147756%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147772%_
                    (let () (declare (not safe)) (class-of _%obj147769%_)))
                   (_%obj-klass-id147775%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147772%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147762%_ _%obj-klass-id147775%_))
                  '#t
                  (if (interface-subclass? _%obj-klass147772%_)
                      (let _%loop-interface147783%_ ((_%iface-klass147786%_
                                                      _%obj-klass147772%_))
                        (if _%iface-klass147786%_
                            (let* ((_%tab147789%_
                                    (class-type-interface-table
                                     _%iface-klass147786%_))
                                   (_%$e147831%_
                                    (let* ((_%prototable147792%_ _%tab147789%_)
                                           (_%descriptor147795%_
                                            _%descriptor147754%_)
                                           (_%prototable147799%_
                                            _%prototable147792%_)
                                           (_%descriptor147822%_
                                            _%descriptor147795%_))
                                      (____prototype-table-get
                                       _%prototable147799%_
                                       _%descriptor147822%_))))
                              (if _%$e147831%_
                                  (if (eq? _%$e147831%_ '#!void)
                                      (_%loop-interface147783%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147786%_)))
                                      (if _%$e147831%_ '#t '#f))
                                  (let ((_%$e147841%_
                                         (try-create-prototype
                                          _%descriptor147754%_
                                          _%klass147759%_
                                          _%iface-klass147786%_)))
                                    (if _%$e147841%_
                                        (if _%$e147841%_ '#t '#f)
                                        (_%loop-interface147783%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147786%_)))))))
                            (_%loop147766%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147769%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab147852%_
                              (class-type-interface-table _%obj-klass147772%_))
                             (_%$e147881%_
                              (let* ((_%prototable147854%_ _%tab147852%_)
                                     (_%descriptor147857%_
                                      _%descriptor147754%_)
                                     (_%prototable147861%_
                                      _%prototable147854%_)
                                     (_%descriptor147872%_
                                      _%descriptor147857%_))
                                (____prototype-table-get
                                 _%prototable147861%_
                                 _%descriptor147872%_))))
                        (if _%$e147881%_
                            (if (eq? _%$e147881%_ '#!void)
                                '#f
                                (if _%$e147881%_ '#t '#f))
                            (let ((_%$e147894%_
                                   (try-create-prototype
                                    _%descriptor147754%_
                                    _%klass147759%_
                                    _%obj-klass147772%_)))
                              (if _%$e147894%_
                                  (if _%$e147894%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor147598%_
               _%obj147599%_
               _%with-prototype+receiver147600%_
               _%with-receiver147601%_)
        (let* ((_%descriptor147604%_ _%descriptor147598%_)
               (_%with-prototype+receiver147612%_
                _%with-prototype+receiver147600%_)
               (_%with-receiver147620%_ _%with-receiver147601%_)
               (_%klass147629%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor147604%_ '1 '#f '#f)))
               (_%klass-id147632%_
                (let () (declare (not safe)) (##type-id _%klass147629%_))))
          (let _%loop147636%_ ((_%obj147639%_ _%obj147599%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass147642%_
                    (let () (declare (not safe)) (class-of _%obj147639%_)))
                   (_%obj-klass-id147645%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass147642%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id147632%_ _%obj-klass-id147645%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver147620%_ _%obj147639%_))
                  (if (interface-subclass? _%obj-klass147642%_)
                      (let _%loop-interface147651%_ ((_%iface-klass147654%_
                                                      _%obj-klass147642%_))
                        (if _%iface-klass147654%_
                            (let* ((_%tab147657%_
                                    (class-type-interface-table
                                     _%iface-klass147654%_))
                                   (_%$e147701%_
                                    (let* ((_%prototable147660%_ _%tab147657%_)
                                           (_%descriptor147663%_
                                            _%descriptor147604%_)
                                           (_%prototable147667%_
                                            _%prototable147660%_)
                                           (_%descriptor147692%_
                                            _%descriptor147663%_))
                                      (____prototype-table-get
                                       _%prototable147667%_
                                       _%descriptor147692%_))))
                              (if _%$e147701%_
                                  (if (eq? _%$e147701%_ '#!void)
                                      (_%loop-interface147651%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass147654%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver147612%_
                                         _%descriptor147604%_
                                         _%$e147701%_
                                         _%obj147639%_)))
                                  (let ((_%$e147707%_
                                         (try-create-prototype
                                          _%descriptor147604%_
                                          _%klass147629%_
                                          _%iface-klass147654%_)))
                                    (if _%$e147707%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver147612%_
                                           _%descriptor147604%_
                                           _%$e147707%_
                                           _%obj147639%_))
                                        (_%loop-interface147651%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass147654%_)))))))
                            (_%loop147636%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj147639%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab147714%_
                              (class-type-interface-table _%obj-klass147642%_))
                             (_%$e147743%_
                              (let* ((_%prototable147716%_ _%tab147714%_)
                                     (_%descriptor147719%_
                                      _%descriptor147604%_)
                                     (_%prototable147723%_
                                      _%prototable147716%_)
                                     (_%descriptor147734%_
                                      _%descriptor147719%_))
                                (____prototype-table-get
                                 _%prototable147723%_
                                 _%descriptor147734%_))))
                        (if _%$e147743%_
                            (if (eq? _%$e147743%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver147612%_
                                   _%descriptor147604%_
                                   '#f
                                   _%obj147639%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver147612%_
                                   _%descriptor147604%_
                                   _%$e147743%_
                                   _%obj147639%_)))
                            (let ((_%$e147748%_
                                   (create-prototype
                                    _%descriptor147604%_
                                    _%klass147629%_
                                    _%obj-klass147642%_)))
                              (if _%$e147748%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver147612%_
                                     _%descriptor147604%_
                                     _%$e147748%_
                                     _%obj147639%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver147612%_
                                     _%descriptor147604%_
                                     '#f
                                     _%obj147639%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor147561%_
               _%obj147562%_
               _%with-prototype+receiver147563%_
               _%with-receiver147564%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor147561%_
               'interface-descriptor::t))
            (let ((_%descriptor147568%_ _%descriptor147561%_))
              (if (procedure? _%with-prototype+receiver147563%_)
                  (let ((_%with-prototype+receiver147578%_
                         _%with-prototype+receiver147563%_))
                    (if (procedure? _%with-receiver147564%_)
                        (let ((_%with-receiver147588%_
                               _%with-receiver147564%_))
                          (__with-prototype
                           _%descriptor147568%_
                           _%obj147562%_
                           _%with-prototype+receiver147578%_
                           _%with-receiver147588%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver147564%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver147563%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor147561%_)
              '#!void))))))
