(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1784279014)
  (begin
    (define CastError::t
      (let ((__tmp152273 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp152273
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args152187%_
        (apply make-instance CastError::t _%$args152187%_)))
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
      (lambda (_%where152061%_ _%message152062%_ . _%irritants152063%_)
        (let ((__tmp152274
               (let ((__obj152268
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj152268
                    _%message152062%_
                    'where:
                    _%where152061%_
                    'irritants:
                    _%irritants152063%_))
                 __obj152268)))
          (declare (not safe))
          (raise __tmp152274))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp152276 (list))
            (__tmp152275 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp152276
         '(object)
         __tmp152275
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args152058%_
        (apply make-instance interface-instance::t _%$args152058%_)))
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
      (let ((__tmp152278 (list))
            (__tmp152277
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp152278
         '(type methods index)
         __tmp152277
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args152055%_
        (apply make-instance interface-descriptor::t _%$args152055%_)))
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
          (let _%again152033%_ ((_%spin152036%_ '0))
            (if (let ((__tmp152279
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp152279 '0))
                (let ((__tmp152280 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp152280))
                (if (let () (declare (not safe)) (##fx< _%spin152036%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again152033%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin152036%_ '1))))
                    (let ((_%owner152042%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner152042%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner152042%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again152033%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r152050%_
               (let ((_%index152048%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index152048%_ '1)))
                 _%index152048%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r152050%_)))
    (define interface-descriptor:::init!
      (lambda (_%self152014%_ _%type152015%_ _%methods152016%_)
        (let ((_%self152019%_ _%self152014%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152019%_
             _%type152015%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152019%_
             _%methods152016%_
             '2
             '#f
             '#f))
          (let ((__tmp152281 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152019%_
             __tmp152281
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
      (let ((__tmp152283 (list))
            (__tmp152282
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp152283
         '(lock table)
         __tmp152282
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args151889%_
        (apply make-instance prototype-table::t _%$args151889%_)))
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
      (lambda (_%self151875%_)
        (let ((_%self151878%_ _%self151875%_))
          (let ((__tmp152284 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self151878%_ __tmp152284 '1 '#f '#f))
          (let ((__tmp152285
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151878%_
             __tmp152285
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
      (lambda (_%prototable151728%_ _%descriptor151729%_)
        (let* ((_%prototable151732%_ _%prototable151728%_)
               (_%descriptor151740%_ _%descriptor151729%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab151750%_
                 (##unchecked-structure-ref _%prototable151732%_ '2 '#f '#f))
                (_%index151751%_
                 (##unchecked-structure-ref _%descriptor151740%_ '3 '#f '#f)))
            (if (##fx< _%index151751%_ (vector-length _%tab151750%_))
                (vector-ref _%tab151750%_ _%index151751%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable151707%_ _%descriptor151708%_)
        (let* ((_%prototable151711%_ _%prototable151707%_)
               (_%descriptor151719%_ _%descriptor151708%_))
          (____prototype-table-get
           _%prototable151711%_
           _%descriptor151719%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable151653%_ _%descriptor151654%_ _%prototype151655%_)
        (let* ((_%prototable151658%_ _%prototable151653%_)
               (_%descriptor151666%_ _%descriptor151654%_))
          (declare (not safe))
          (let ((_%lock151676%_
                 (##unchecked-structure-ref _%prototable151658%_ '1 '#f '#f))
                (_%index151677%_
                 (##unchecked-structure-ref _%descriptor151666%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again151681%_ ((_%spin151684%_ '0))
                (if (##fx= (##vector-cas! _%lock151676%_ '0 '1 '0) '0)
                    (##vector-set! _%lock151676%_ '1 (current-thread))
                    (if (##fx< _%spin151684%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again151681%_ (##fx+ _%spin151684%_ '1)))
                        (let ((_%owner151690%_
                               (##vector-ref _%lock151676%_ '1)))
                          (if (eq? _%owner151690%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner151690%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again151681%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r151702%_
                   (let ((_%tab151696%_
                          (##unchecked-structure-ref
                           _%prototable151658%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index151677%_ (vector-length _%tab151696%_))
                         (vector-set!
                          _%tab151696%_
                          _%index151677%_
                          _%prototype151655%_)
                         (let ((_%new-size151698%_ __next-interface-index))
                           (if (##fx< _%index151677%_ _%new-size151698%_)
                               (let ((_%new-tab151700%_
                                      (##make-vector _%new-size151698%_ '#f)))
                                 (subvector-move!
                                  _%tab151696%_
                                  '0
                                  (vector-length _%tab151696%_)
                                  _%new-tab151700%_
                                  '0)
                                 (vector-set!
                                  _%new-tab151700%_
                                  _%index151677%_
                                  _%prototype151655%_)
                                 (##unchecked-structure-set!
                                  _%prototable151658%_
                                  _%new-tab151700%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor151666%_
                                      'index:
                                      _%index151677%_
                                      'max-index:
                                      _%new-size151698%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock151676%_ '1 '#f)
                  (##vector-cas! _%lock151676%_ '0 '0 '1)))
              _%$r151702%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151631%_ _%descriptor151632%_ _%prototype151633%_)
        (let* ((_%prototable151636%_ _%prototable151631%_)
               (_%descriptor151644%_ _%descriptor151632%_))
          (____prototype-table-set!
           _%prototable151636%_
           _%descriptor151644%_
           _%prototype151633%_))))
    (define interface-subclass?
      (lambda (_%klass151624%_)
        (let ((_%$%super151625151627%_
               (let () (declare (not safe)) (##type-super _%klass151624%_))))
          (if _%$%super151625151627%_
              (let ((_%super151629%_ _%$%super151625151627%_))
                (eq? (let () (declare (not safe)) (##type-id _%super151629%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass151616%_)
        (let ((_%$e151618%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass151616%_ '13 '#f '#f))))
          (if _%$e151618%_
              _%$e151618%_
              (let ((_%tab151622%_
                     (let ((__obj152272
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj152272)
                       __obj152272)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass151616%_
                   _%tab151622%_
                   '13
                   '#f
                   '#f))
                _%tab151622%_)))))
    (define create-prototype
      (lambda (_%descriptor151299%_ _%klass151300%_ _%obj-klass151301%_)
        (let ((_%method-table151319%_
               (let ((_%klass151303%_ _%obj-klass151301%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151303%_ 'class))
                     (let ((_%klass151308%_ _%klass151303%_))
                       (declare (not safe))
                       (__specialize-class _%klass151308%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151303%_)
                       '#!void)))))
          (let _%loop151322%_ ((_%rest151325%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151299%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151327%_ '0)
                               (_%methods151329%_ '()))
            (let* ((_%$%rest151331151339%_ _%rest151325%_)
                   (_%$%else151333151466%_
                    (lambda ()
                      (let ((_%prototype151382%_
                             (let* ((_%klass151347%_ _%klass151300%_)
                                    (_%k151350%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151327%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151347%_
                                      'class))
                                   (let* ((_%klass151355%_ _%klass151347%_)
                                          (_%k151372%_ _%k151350%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151355%_
                                      _%k151372%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151347%_)
                                     '#!void)))))
                        (let _%loop151385%_ ((_%rest151387%_ _%methods151329%_)
                                             (_%off151388%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151327%_ '1))))
                          (let* ((_%$%rest151390151398%_ _%rest151387%_)
                                 (_%$%else151392151447%_
                                  (lambda ()
                                    (let ((_%tab151406%_
                                           (class-type-interface-table
                                            _%obj-klass151301%_)))
                                      (let* ((_%prototable151409%_
                                              _%tab151406%_)
                                             (_%descriptor151412%_
                                              _%descriptor151299%_)
                                             (_%prototype151415%_
                                              _%prototype151382%_)
                                             (_%prototable151419%_
                                              _%prototable151409%_)
                                             (_%descriptor151436%_
                                              _%descriptor151412%_))
                                        (____prototype-table-set!
                                         _%prototable151419%_
                                         _%descriptor151436%_
                                         _%prototype151415%_))
                                      _%prototype151382%_)))
                                 (_%$%K151394151454%_
                                  (lambda (_%rest151450%_ _%method151451%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151382%_
                                       _%method151451%_
                                       _%off151388%_
                                       _%klass151300%_
                                       '#f))
                                    (_%loop151385%_
                                     _%rest151450%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151388%_ '1))))))
                            (if (pair? _%$%rest151390151398%_)
                                (let ((_%$%hd151395151457%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151390151398%_)))
                                      (_%$%tl151396151459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151390151398%_))))
                                  (let* ((_%method151462%_
                                          _%$%hd151395151457%_)
                                         (_%rest151464%_ _%$%tl151396151459%_))
                                    (_%$%K151394151454%_
                                     _%rest151464%_
                                     _%method151462%_)))
                                (_%$%else151392151447%_)))))))
                   (_%$%K151335151604%_
                    (lambda (_%rest151469%_ _%method-spec151470%_)
                      (if (pair? _%method-spec151470%_)
                          (let _%loop-inner151474%_ ((_%methods-rest151477%_
                                                      _%method-spec151470%_))
                            (let* ((_%$%methods-rest151479151487%_
                                    _%methods-rest151477%_)
                                   (_%$%else151481151537%_
                                    (lambda ()
                                      (let ((_%tab151495%_
                                             (class-type-interface-table
                                              _%obj-klass151301%_)))
                                        (let* ((_%prototable151497%_
                                                _%tab151495%_)
                                               (_%descriptor151500%_
                                                _%descriptor151299%_)
                                               (_%prototype151503%_ '#!void)
                                               (_%prototable151507%_
                                                _%prototable151497%_)
                                               (_%descriptor151526%_
                                                _%descriptor151500%_))
                                          (____prototype-table-set!
                                           _%prototable151507%_
                                           _%descriptor151526%_
                                           _%prototype151503%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor151299%_
                                           'class:
                                           _%obj-klass151301%_
                                           'method:
                                           _%method-spec151470%_)
                                          '#!void))))
                                   (_%$%K151483151550%_
                                    (lambda (_%methods-rest151540%_
                                             _%method-name151541%_)
                                      (let ((_%$e151544%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151319%_
                                                _%method-name151541%_
                                                '#f))))
                                        (if _%$e151544%_
                                            (_%loop151322%_
                                             _%rest151469%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151327%_ '1))
                                             (cons _%$e151544%_
                                                   _%methods151329%_))
                                            (_%loop-inner151474%_
                                             _%methods-rest151540%_))))))
                              (if (pair? _%$%methods-rest151479151487%_)
                                  (let ((_%$%hd151484151553%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151479151487%_)))
                                        (_%$%tl151485151555%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151479151487%_))))
                                    (let* ((_%method-name151558%_
                                            _%$%hd151484151553%_)
                                           (_%methods-rest151560%_
                                            _%$%tl151485151555%_))
                                      (_%$%K151483151550%_
                                       _%methods-rest151560%_
                                       _%method-name151558%_)))
                                  (_%$%else151481151537%_))))
                          (let ((_%$e151562%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151319%_
                                    _%method-spec151470%_
                                    '#f))))
                            (if _%$e151562%_
                                (_%loop151322%_
                                 _%rest151469%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151327%_ '1))
                                 (cons _%$e151562%_ _%methods151329%_))
                                (let ((_%tab151568%_
                                       (class-type-interface-table
                                        _%obj-klass151301%_)))
                                  (let* ((_%prototable151570%_ _%tab151568%_)
                                         (_%descriptor151573%_
                                          _%descriptor151299%_)
                                         (_%prototype151576%_ '#!void)
                                         (_%prototable151580%_
                                          _%prototable151570%_)
                                         (_%descriptor151593%_
                                          _%descriptor151573%_))
                                    (____prototype-table-set!
                                     _%prototable151580%_
                                     _%descriptor151593%_
                                     _%prototype151576%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor151299%_
                                     'class:
                                     _%obj-klass151301%_
                                     'method:
                                     _%method-spec151470%_)
                                    '#!void))))))))
              (if (pair? _%$%rest151331151339%_)
                  (let ((_%$%hd151336151607%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151331151339%_)))
                        (_%$%tl151337151609%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151331151339%_))))
                    (let* ((_%method-spec151612%_ _%$%hd151336151607%_)
                           (_%rest151614%_ _%$%tl151337151609%_))
                      (_%$%K151335151604%_
                       _%rest151614%_
                       _%method-spec151612%_)))
                  (_%$%else151333151466%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor150982%_ _%klass150983%_ _%obj-klass150984%_)
        (let ((_%method-table151002%_
               (let ((_%klass150986%_ _%obj-klass150984%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass150986%_ 'class))
                     (let ((_%klass150991%_ _%klass150986%_))
                       (declare (not safe))
                       (__specialize-class _%klass150991%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass150986%_)
                       '#!void)))))
          (let _%loop151005%_ ((_%rest151008%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor150982%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151010%_ '0)
                               (_%methods151012%_ '()))
            (let* ((_%$%rest151014151022%_ _%rest151008%_)
                   (_%$%else151016151149%_
                    (lambda ()
                      (let ((_%prototype151065%_
                             (let* ((_%klass151030%_ _%klass150983%_)
                                    (_%k151033%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151010%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151030%_
                                      'class))
                                   (let* ((_%klass151038%_ _%klass151030%_)
                                          (_%k151055%_ _%k151033%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151038%_
                                      _%k151055%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151030%_)
                                     '#!void)))))
                        (let _%loop151068%_ ((_%rest151070%_ _%methods151012%_)
                                             (_%off151071%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151010%_ '1))))
                          (let* ((_%$%rest151073151081%_ _%rest151070%_)
                                 (_%$%else151075151130%_
                                  (lambda ()
                                    (let ((_%tab151089%_
                                           (class-type-interface-table
                                            _%obj-klass150984%_)))
                                      (let* ((_%prototable151092%_
                                              _%tab151089%_)
                                             (_%descriptor151095%_
                                              _%descriptor150982%_)
                                             (_%prototype151098%_
                                              _%prototype151065%_)
                                             (_%prototable151102%_
                                              _%prototable151092%_)
                                             (_%descriptor151119%_
                                              _%descriptor151095%_))
                                        (____prototype-table-set!
                                         _%prototable151102%_
                                         _%descriptor151119%_
                                         _%prototype151098%_))
                                      _%prototype151065%_)))
                                 (_%$%K151077151137%_
                                  (lambda (_%rest151133%_ _%method151134%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151065%_
                                       _%method151134%_
                                       _%off151071%_
                                       _%klass150983%_
                                       '#f))
                                    (_%loop151068%_
                                     _%rest151133%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151071%_ '1))))))
                            (if (pair? _%$%rest151073151081%_)
                                (let ((_%$%hd151078151140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151073151081%_)))
                                      (_%$%tl151079151142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151073151081%_))))
                                  (let* ((_%method151145%_
                                          _%$%hd151078151140%_)
                                         (_%rest151147%_ _%$%tl151079151142%_))
                                    (_%$%K151077151137%_
                                     _%rest151147%_
                                     _%method151145%_)))
                                (_%$%else151075151130%_)))))))
                   (_%$%K151018151287%_
                    (lambda (_%rest151152%_ _%method-spec151153%_)
                      (if (pair? _%method-spec151153%_)
                          (let _%loop-inner151157%_ ((_%methods-rest151160%_
                                                      _%method-spec151153%_))
                            (let* ((_%$%methods-rest151162151170%_
                                    _%methods-rest151160%_)
                                   (_%$%else151164151220%_
                                    (lambda ()
                                      (let ((_%tab151178%_
                                             (class-type-interface-table
                                              _%obj-klass150984%_)))
                                        (let* ((_%prototable151180%_
                                                _%tab151178%_)
                                               (_%descriptor151183%_
                                                _%descriptor150982%_)
                                               (_%prototype151186%_ '#!void)
                                               (_%prototable151190%_
                                                _%prototable151180%_)
                                               (_%descriptor151209%_
                                                _%descriptor151183%_))
                                          (____prototype-table-set!
                                           _%prototable151190%_
                                           _%descriptor151209%_
                                           _%prototype151186%_))
                                        '#f)))
                                   (_%$%K151166151233%_
                                    (lambda (_%methods-rest151223%_
                                             _%method-name151224%_)
                                      (let ((_%$e151227%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151002%_
                                                _%method-name151224%_
                                                '#f))))
                                        (if _%$e151227%_
                                            (_%loop151005%_
                                             _%rest151152%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151010%_ '1))
                                             (cons _%$e151227%_
                                                   _%methods151012%_))
                                            (_%loop-inner151157%_
                                             _%methods-rest151223%_))))))
                              (if (pair? _%$%methods-rest151162151170%_)
                                  (let ((_%$%hd151167151236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151162151170%_)))
                                        (_%$%tl151168151238%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151162151170%_))))
                                    (let* ((_%method-name151241%_
                                            _%$%hd151167151236%_)
                                           (_%methods-rest151243%_
                                            _%$%tl151168151238%_))
                                      (_%$%K151166151233%_
                                       _%methods-rest151243%_
                                       _%method-name151241%_)))
                                  (_%$%else151164151220%_))))
                          (let ((_%$e151245%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151002%_
                                    _%method-spec151153%_
                                    '#f))))
                            (if _%$e151245%_
                                (_%loop151005%_
                                 _%rest151152%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151010%_ '1))
                                 (cons _%$e151245%_ _%methods151012%_))
                                (let ((_%tab151251%_
                                       (class-type-interface-table
                                        _%obj-klass150984%_)))
                                  (let* ((_%prototable151253%_ _%tab151251%_)
                                         (_%descriptor151256%_
                                          _%descriptor150982%_)
                                         (_%prototype151259%_ '#!void)
                                         (_%prototable151263%_
                                          _%prototable151253%_)
                                         (_%descriptor151276%_
                                          _%descriptor151256%_))
                                    (____prototype-table-set!
                                     _%prototable151263%_
                                     _%descriptor151276%_
                                     _%prototype151259%_))
                                  '#f)))))))
              (if (pair? _%$%rest151014151022%_)
                  (let ((_%$%hd151019151290%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151014151022%_)))
                        (_%$%tl151020151292%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151014151022%_))))
                    (let* ((_%method-spec151295%_ _%$%hd151019151290%_)
                           (_%rest151297%_ _%$%tl151020151292%_))
                      (_%$%K151018151287%_
                       _%rest151297%_
                       _%method-spec151295%_)))
                  (_%$%else151016151149%_)))))))
    (define cast
      (lambda (_%descriptor150816%_ _%obj150818%_)
        (let* ((_%klass150821%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150816%_ '1 '#f '#f)))
               (_%klass-id150824%_
                (let () (declare (not safe)) (##type-id _%klass150821%_))))
          (let _%loop150828%_ ((_%obj150831%_ _%obj150818%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150834%_
                    (let () (declare (not safe)) (class-of _%obj150831%_)))
                   (_%obj-klass-id150837%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150834%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150824%_ _%obj-klass-id150837%_))
                  _%obj150831%_
                  (if (interface-subclass? _%obj-klass150834%_)
                      (let _%loop-interface150845%_ ((_%iface-klass150848%_
                                                      _%obj-klass150834%_))
                        (if _%iface-klass150848%_
                            (let* ((_%tab150851%_
                                    (class-type-interface-table
                                     _%iface-klass150848%_))
                                   (_%$e150893%_
                                    (let* ((_%prototable150854%_ _%tab150851%_)
                                           (_%descriptor150857%_
                                            _%descriptor150816%_)
                                           (_%prototable150861%_
                                            _%prototable150854%_)
                                           (_%descriptor150884%_
                                            _%descriptor150857%_))
                                      (____prototype-table-get
                                       _%prototable150861%_
                                       _%descriptor150884%_))))
                              (if _%$e150893%_
                                  (if (eq? _%$e150893%_ '#!void)
                                      (_%loop-interface150845%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150848%_)))
                                      (if _%$e150893%_
                                          (let ((_%instance150903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150893%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150903%_
                                               _%obj150831%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150903%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor150816%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj150831%_)))
                                            '#!void)))
                                  (let ((_%$e150905%_
                                         (try-create-prototype
                                          _%descriptor150816%_
                                          _%klass150821%_
                                          _%iface-klass150848%_)))
                                    (if _%$e150905%_
                                        (if _%$e150905%_
                                            (let ((_%instance150914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150905%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150914%_
                                                 _%obj150831%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150914%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor150816%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj150831%_)))
                                              '#!void))
                                        (_%loop-interface150845%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150848%_)))))))
                            (_%loop150828%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150831%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150918%_
                              (class-type-interface-table _%obj-klass150834%_))
                             (_%$e150947%_
                              (let* ((_%prototable150920%_ _%tab150918%_)
                                     (_%descriptor150923%_
                                      _%descriptor150816%_)
                                     (_%prototable150927%_
                                      _%prototable150920%_)
                                     (_%descriptor150938%_
                                      _%descriptor150923%_))
                                (____prototype-table-get
                                 _%prototable150927%_
                                 _%descriptor150938%_))))
                        (if _%$e150947%_
                            (if (eq? _%$e150947%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor150816%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj150831%_)))
                                  '#!void)
                                (if _%$e150947%_
                                    (let ((_%instance150962%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150947%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150962%_
                                         _%obj150831%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150962%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor150816%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj150831%_)))
                                      '#!void)))
                            (let ((_%$e150964%_
                                   (create-prototype
                                    _%descriptor150816%_
                                    _%klass150821%_
                                    _%obj-klass150834%_)))
                              (if _%$e150964%_
                                  (if _%$e150964%_
                                      (let ((_%instance150973%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150964%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150973%_
                                           _%obj150831%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150973%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor150816%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj150831%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor150816%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj150831%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor150650%_ _%obj150652%_)
        (let* ((_%klass150655%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150650%_ '1 '#f '#f)))
               (_%klass-id150658%_
                (let () (declare (not safe)) (##type-id _%klass150655%_))))
          (let _%loop150662%_ ((_%obj150665%_ _%obj150652%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150668%_
                    (let () (declare (not safe)) (class-of _%obj150665%_)))
                   (_%obj-klass-id150671%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150668%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150658%_ _%obj-klass-id150671%_))
                  _%obj150665%_
                  (if (interface-subclass? _%obj-klass150668%_)
                      (let _%loop-interface150679%_ ((_%iface-klass150682%_
                                                      _%obj-klass150668%_))
                        (if _%iface-klass150682%_
                            (let* ((_%tab150685%_
                                    (class-type-interface-table
                                     _%iface-klass150682%_))
                                   (_%$e150727%_
                                    (let* ((_%prototable150688%_ _%tab150685%_)
                                           (_%descriptor150691%_
                                            _%descriptor150650%_)
                                           (_%prototable150695%_
                                            _%prototable150688%_)
                                           (_%descriptor150718%_
                                            _%descriptor150691%_))
                                      (____prototype-table-get
                                       _%prototable150695%_
                                       _%descriptor150718%_))))
                              (if _%$e150727%_
                                  (if (eq? _%$e150727%_ '#!void)
                                      (_%loop-interface150679%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150682%_)))
                                      (if _%$e150727%_
                                          (let ((_%instance150737%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150727%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150737%_
                                               _%obj150665%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150737%_)
                                          '#f))
                                  (let ((_%$e150739%_
                                         (try-create-prototype
                                          _%descriptor150650%_
                                          _%klass150655%_
                                          _%iface-klass150682%_)))
                                    (if _%$e150739%_
                                        (if _%$e150739%_
                                            (let ((_%instance150748%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150739%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150748%_
                                                 _%obj150665%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150748%_)
                                            '#f)
                                        (_%loop-interface150679%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150682%_)))))))
                            (_%loop150662%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150665%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150752%_
                              (class-type-interface-table _%obj-klass150668%_))
                             (_%$e150781%_
                              (let* ((_%prototable150754%_ _%tab150752%_)
                                     (_%descriptor150757%_
                                      _%descriptor150650%_)
                                     (_%prototable150761%_
                                      _%prototable150754%_)
                                     (_%descriptor150772%_
                                      _%descriptor150757%_))
                                (____prototype-table-get
                                 _%prototable150761%_
                                 _%descriptor150772%_))))
                        (if _%$e150781%_
                            (if (eq? _%$e150781%_ '#!void)
                                '#f
                                (if _%$e150781%_
                                    (let ((_%instance150796%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150781%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150796%_
                                         _%obj150665%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150796%_)
                                    '#f))
                            (let ((_%$e150798%_
                                   (try-create-prototype
                                    _%descriptor150650%_
                                    _%klass150655%_
                                    _%obj-klass150668%_)))
                              (if _%$e150798%_
                                  (if _%$e150798%_
                                      (let ((_%instance150807%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150798%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150807%_
                                           _%obj150665%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150807%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor150496%_ _%obj150498%_)
        (let* ((_%klass150501%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150496%_ '1 '#f '#f)))
               (_%klass-id150504%_
                (let () (declare (not safe)) (##type-id _%klass150501%_))))
          (let _%loop150508%_ ((_%obj150511%_ _%obj150498%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150514%_
                    (let () (declare (not safe)) (class-of _%obj150511%_)))
                   (_%obj-klass-id150517%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150514%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150504%_ _%obj-klass-id150517%_))
                  '#t
                  (if (interface-subclass? _%obj-klass150514%_)
                      (let _%loop-interface150525%_ ((_%iface-klass150528%_
                                                      _%obj-klass150514%_))
                        (if _%iface-klass150528%_
                            (let* ((_%tab150531%_
                                    (class-type-interface-table
                                     _%iface-klass150528%_))
                                   (_%$e150573%_
                                    (let* ((_%prototable150534%_ _%tab150531%_)
                                           (_%descriptor150537%_
                                            _%descriptor150496%_)
                                           (_%prototable150541%_
                                            _%prototable150534%_)
                                           (_%descriptor150564%_
                                            _%descriptor150537%_))
                                      (____prototype-table-get
                                       _%prototable150541%_
                                       _%descriptor150564%_))))
                              (if _%$e150573%_
                                  (if (eq? _%$e150573%_ '#!void)
                                      (_%loop-interface150525%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150528%_)))
                                      (if _%$e150573%_ '#t '#f))
                                  (let ((_%$e150583%_
                                         (try-create-prototype
                                          _%descriptor150496%_
                                          _%klass150501%_
                                          _%iface-klass150528%_)))
                                    (if _%$e150583%_
                                        (if _%$e150583%_ '#t '#f)
                                        (_%loop-interface150525%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150528%_)))))))
                            (_%loop150508%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150511%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150594%_
                              (class-type-interface-table _%obj-klass150514%_))
                             (_%$e150623%_
                              (let* ((_%prototable150596%_ _%tab150594%_)
                                     (_%descriptor150599%_
                                      _%descriptor150496%_)
                                     (_%prototable150603%_
                                      _%prototable150596%_)
                                     (_%descriptor150614%_
                                      _%descriptor150599%_))
                                (____prototype-table-get
                                 _%prototable150603%_
                                 _%descriptor150614%_))))
                        (if _%$e150623%_
                            (if (eq? _%$e150623%_ '#!void)
                                '#f
                                (if _%$e150623%_ '#t '#f))
                            (let ((_%$e150636%_
                                   (try-create-prototype
                                    _%descriptor150496%_
                                    _%klass150501%_
                                    _%obj-klass150514%_)))
                              (if _%$e150636%_
                                  (if _%$e150636%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor150340%_
               _%obj150341%_
               _%with-prototype+receiver150342%_
               _%with-receiver150343%_)
        (let* ((_%descriptor150346%_ _%descriptor150340%_)
               (_%with-prototype+receiver150354%_
                _%with-prototype+receiver150342%_)
               (_%with-receiver150362%_ _%with-receiver150343%_)
               (_%klass150371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150346%_ '1 '#f '#f)))
               (_%klass-id150374%_
                (let () (declare (not safe)) (##type-id _%klass150371%_))))
          (let _%loop150378%_ ((_%obj150381%_ _%obj150341%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150384%_
                    (let () (declare (not safe)) (class-of _%obj150381%_)))
                   (_%obj-klass-id150387%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150384%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150374%_ _%obj-klass-id150387%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver150362%_ _%obj150381%_))
                  (if (interface-subclass? _%obj-klass150384%_)
                      (let _%loop-interface150393%_ ((_%iface-klass150396%_
                                                      _%obj-klass150384%_))
                        (if _%iface-klass150396%_
                            (let* ((_%tab150399%_
                                    (class-type-interface-table
                                     _%iface-klass150396%_))
                                   (_%$e150443%_
                                    (let* ((_%prototable150402%_ _%tab150399%_)
                                           (_%descriptor150405%_
                                            _%descriptor150346%_)
                                           (_%prototable150409%_
                                            _%prototable150402%_)
                                           (_%descriptor150434%_
                                            _%descriptor150405%_))
                                      (____prototype-table-get
                                       _%prototable150409%_
                                       _%descriptor150434%_))))
                              (if _%$e150443%_
                                  (if (eq? _%$e150443%_ '#!void)
                                      (_%loop-interface150393%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150396%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver150354%_
                                         _%descriptor150346%_
                                         _%$e150443%_
                                         _%obj150381%_)))
                                  (let ((_%$e150449%_
                                         (try-create-prototype
                                          _%descriptor150346%_
                                          _%klass150371%_
                                          _%iface-klass150396%_)))
                                    (if _%$e150449%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver150354%_
                                           _%descriptor150346%_
                                           _%$e150449%_
                                           _%obj150381%_))
                                        (_%loop-interface150393%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150396%_)))))))
                            (_%loop150378%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150381%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150456%_
                              (class-type-interface-table _%obj-klass150384%_))
                             (_%$e150485%_
                              (let* ((_%prototable150458%_ _%tab150456%_)
                                     (_%descriptor150461%_
                                      _%descriptor150346%_)
                                     (_%prototable150465%_
                                      _%prototable150458%_)
                                     (_%descriptor150476%_
                                      _%descriptor150461%_))
                                (____prototype-table-get
                                 _%prototable150465%_
                                 _%descriptor150476%_))))
                        (if _%$e150485%_
                            (if (eq? _%$e150485%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150354%_
                                   _%descriptor150346%_
                                   '#f
                                   _%obj150381%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150354%_
                                   _%descriptor150346%_
                                   _%$e150485%_
                                   _%obj150381%_)))
                            (let ((_%$e150490%_
                                   (create-prototype
                                    _%descriptor150346%_
                                    _%klass150371%_
                                    _%obj-klass150384%_)))
                              (if _%$e150490%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150354%_
                                     _%descriptor150346%_
                                     _%$e150490%_
                                     _%obj150381%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150354%_
                                     _%descriptor150346%_
                                     '#f
                                     _%obj150381%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor150303%_
               _%obj150304%_
               _%with-prototype+receiver150305%_
               _%with-receiver150306%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor150303%_
               'interface-descriptor::t))
            (let ((_%descriptor150310%_ _%descriptor150303%_))
              (if (procedure? _%with-prototype+receiver150305%_)
                  (let ((_%with-prototype+receiver150320%_
                         _%with-prototype+receiver150305%_))
                    (if (procedure? _%with-receiver150306%_)
                        (let ((_%with-receiver150330%_
                               _%with-receiver150306%_))
                          (__with-prototype
                           _%descriptor150310%_
                           _%obj150304%_
                           _%with-prototype+receiver150320%_
                           _%with-receiver150330%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver150306%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver150305%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor150303%_)
              '#!void))))))
