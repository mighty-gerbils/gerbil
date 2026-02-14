(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771036671)
  (begin
    (define CastError::t
      (let ((__tmp327368 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp327368
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args327282%_
        (apply make-instance CastError::t _%$args327282%_)))
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
      (lambda (_%where327156%_ _%message327157%_ . _%irritants327158%_)
        (let ((__tmp327369
               (let ((__obj327363
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj327363
                    _%message327157%_
                    'where:
                    _%where327156%_
                    'irritants:
                    _%irritants327158%_))
                 __obj327363)))
          (declare (not safe))
          (raise __tmp327369))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp327371 (list)) (__tmp327370 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp327371
         '(object)
         __tmp327370
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args327153%_
        (apply make-instance interface-instance::t _%$args327153%_)))
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
      (let ((__tmp327373 (list))
            (__tmp327372
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp327373
         '(type methods index)
         __tmp327372
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args327150%_
        (apply make-instance interface-descriptor::t _%$args327150%_)))
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
          (let _%again327128%_ ((_%spin327131%_ '0))
            (if (let ((__tmp327374
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp327374 '0))
                (let ((__tmp327375 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp327375))
                (if (let () (declare (not safe)) (##fx< _%spin327131%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again327128%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin327131%_ '1))))
                    (let ((_%owner327137%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner327137%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner327137%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again327128%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r327145%_
               (let ((_%index327143%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index327143%_ '1)))
                 _%index327143%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r327145%_)))
    (define interface-descriptor:::init!
      (lambda (_%self327109%_ _%type327110%_ _%methods327111%_)
        (let ((_%self327114%_ _%self327109%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self327114%_
             _%type327110%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self327114%_
             _%methods327111%_
             '2
             '#f
             '#f))
          (let ((__tmp327376 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self327114%_
             __tmp327376
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
      (let ((__tmp327378 (list))
            (__tmp327377
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp327378
         '(lock table)
         __tmp327377
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args326984%_
        (apply make-instance prototype-table::t _%$args326984%_)))
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
      (lambda (_%self326970%_)
        (let ((_%self326973%_ _%self326970%_))
          (let ((__tmp327379 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self326973%_ __tmp327379 '1 '#f '#f))
          (let ((__tmp327380
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self326973%_
             __tmp327380
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
      (lambda (_%prototable326799%_ _%descriptor326800%_)
        (let* ((_%prototable326803%_ _%prototable326799%_)
               (_%descriptor326811%_ _%descriptor326800%_))
          (declare (not safe))
          (let ((_%lock326821%_
                 (##unchecked-structure-ref _%prototable326803%_ '1 '#f '#f))
                (_%index326822%_
                 (##unchecked-structure-ref _%descriptor326811%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again326826%_ ((_%spin326829%_ '0))
                (if (##fx= (##vector-cas! _%lock326821%_ '0 '1 '0) '0)
                    (##vector-set! _%lock326821%_ '1 (current-thread))
                    (if (##fx< _%spin326829%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again326826%_ (##fx+ _%spin326829%_ '1)))
                        (let ((_%owner326835%_
                               (##vector-ref _%lock326821%_ '1)))
                          (if (eq? _%owner326835%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner326835%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again326826%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r326843%_
                   (let ((_%tab326841%_
                          (##unchecked-structure-ref
                           _%prototable326803%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index326822%_ (vector-length _%tab326841%_))
                         (vector-ref _%tab326841%_ _%index326822%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock326821%_ '1 '#f)
                  (##vector-cas! _%lock326821%_ '0 '0 '1)))
              _%$r326843%_)))))
    (define __prototype-table-get
      (lambda (_%prototable324778%_ _%descriptor324779%_)
        (let* ((_%prototable324782%_ _%prototable324778%_)
               (_%descriptor324790%_ _%descriptor324779%_))
          (____prototype-table-get
           _%prototable324782%_
           _%descriptor324790%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable326744%_ _%descriptor326745%_ _%prototype326746%_)
        (let* ((_%prototable326749%_ _%prototable326744%_)
               (_%descriptor326757%_ _%descriptor326745%_))
          (declare (not safe))
          (let ((_%lock326767%_
                 (##unchecked-structure-ref _%prototable326749%_ '1 '#f '#f))
                (_%index326768%_
                 (##unchecked-structure-ref _%descriptor326757%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again326772%_ ((_%spin326775%_ '0))
                (if (##fx= (##vector-cas! _%lock326767%_ '0 '1 '0) '0)
                    (##vector-set! _%lock326767%_ '1 (current-thread))
                    (if (##fx< _%spin326775%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again326772%_ (##fx+ _%spin326775%_ '1)))
                        (let ((_%owner326781%_
                               (##vector-ref _%lock326767%_ '1)))
                          (if (eq? _%owner326781%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner326781%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again326772%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r326794%_
                   (let ((_%tab326787%_
                          (##unchecked-structure-ref
                           _%prototable326749%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index326768%_ (vector-length _%tab326787%_))
                         (vector-set!
                          _%tab326787%_
                          _%index326768%_
                          _%prototype326746%_)
                         (let* ((_%new-size326789%_ __next-interface-index)
                                (_%new-tab326791%_
                                 (##make-vector _%new-size326789%_ '#f)))
                           (subvector-move!
                            _%tab326787%_
                            '0
                            (vector-length _%tab326787%_)
                            _%new-tab326791%_
                            '0)
                           (vector-set!
                            _%new-tab326791%_
                            _%index326768%_
                            _%prototype326746%_)
                           (##unchecked-structure-set!
                            _%prototable326749%_
                            _%new-tab326791%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock326767%_ '1 '#f)
                  (##vector-cas! _%lock326767%_ '0 '0 '1)))
              _%$r326794%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable324919%_ _%descriptor324920%_ _%prototype324921%_)
        (let* ((_%prototable324924%_ _%prototable324919%_)
               (_%descriptor324932%_ _%descriptor324920%_))
          (____prototype-table-set!
           _%prototable324924%_
           _%descriptor324932%_
           _%prototype324921%_))))
    (define interface-subclass?
      (lambda (_%klass326737%_)
        (let ((_%super326738326740%_
               (let () (declare (not safe)) (##type-super _%klass326737%_))))
          (if _%super326738326740%_
              (let ((_%super326742%_ _%super326738326740%_))
                (eq? (let () (declare (not safe)) (##type-id _%super326742%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass326729%_)
        (let ((_%$e326731%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass326729%_ '13 '#f '#f))))
          (if _%$e326731%_
              _%$e326731%_
              (let ((_%tab326735%_
                     (let ((__obj327367
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj327367)
                       __obj327367)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass326729%_
                   _%tab326735%_
                   '13
                   '#f
                   '#f))
                _%tab326735%_)))))
    (define create-prototype
      (lambda (_%descriptor326412%_ _%klass326413%_ _%obj-klass326414%_)
        (let ((_%method-table326432%_
               (let ((_%klass326416%_ _%obj-klass326414%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass326416%_ 'class))
                     (let ((_%klass326421%_ _%klass326416%_))
                       (declare (not safe))
                       (__specialize-class _%klass326421%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass326416%_)
                       '#!void)))))
          (let _%loop326435%_ ((_%rest326438%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor326412%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count326440%_ '0)
                               (_%methods326442%_ '()))
            (let* ((_%rest326444326452%_ _%rest326438%_)
                   (_%else326446326579%_
                    (lambda ()
                      (let ((_%prototype326495%_
                             (let* ((_%klass326460%_ _%klass326413%_)
                                    (_%k326463%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count326440%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass326460%_
                                      'class))
                                   (let* ((_%klass326468%_ _%klass326460%_)
                                          (_%k326485%_ _%k326463%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass326468%_
                                      _%k326485%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass326460%_)
                                     '#!void)))))
                        (let _%loop326498%_ ((_%rest326500%_ _%methods326442%_)
                                             (_%off326501%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count326440%_ '1))))
                          (let* ((_%rest326503326511%_ _%rest326500%_)
                                 (_%else326505326560%_
                                  (lambda ()
                                    (let ((_%tab326519%_
                                           (class-type-interface-table
                                            _%obj-klass326414%_)))
                                      (let* ((_%prototable326522%_
                                              _%tab326519%_)
                                             (_%descriptor326525%_
                                              _%descriptor326412%_)
                                             (_%prototype326528%_
                                              _%prototype326495%_)
                                             (_%prototable326532%_
                                              _%prototable326522%_)
                                             (_%descriptor326549%_
                                              _%descriptor326525%_))
                                        (____prototype-table-set!
                                         _%prototable326532%_
                                         _%descriptor326549%_
                                         _%prototype326528%_))
                                      ((lambda (_%prototype326558%_)
                                         _%prototype326558%_)
                                       _%prototype326495%_))))
                                 (_%K326507326567%_
                                  (lambda (_%rest326563%_ _%method326564%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype326495%_
                                       _%method326564%_
                                       _%off326501%_
                                       _%klass326413%_
                                       '#f))
                                    (_%loop326498%_
                                     _%rest326563%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off326501%_ '1))))))
                            (if (pair? _%rest326503326511%_)
                                (let ((_%hd326508326570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest326503326511%_)))
                                      (_%tl326509326572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest326503326511%_))))
                                  (let* ((_%method326575%_ _%hd326508326570%_)
                                         (_%rest326577%_ _%tl326509326572%_))
                                    (_%K326507326567%_
                                     _%rest326577%_
                                     _%method326575%_)))
                                (_%else326505326560%_)))))))
                   (_%K326448326717%_
                    (lambda (_%rest326582%_ _%method-spec326583%_)
                      (if (pair? _%method-spec326583%_)
                          (let _%loop-inner326587%_ ((_%methods-rest326590%_
                                                      _%method-spec326583%_))
                            (let* ((_%methods-rest326592326600%_
                                    _%methods-rest326590%_)
                                   (_%else326594326650%_
                                    (lambda ()
                                      (let ((_%tab326608%_
                                             (class-type-interface-table
                                              _%obj-klass326414%_)))
                                        (let* ((_%prototable326610%_
                                                _%tab326608%_)
                                               (_%descriptor326613%_
                                                _%descriptor326412%_)
                                               (_%prototype326616%_ '#!void)
                                               (_%prototable326620%_
                                                _%prototable326610%_)
                                               (_%descriptor326639%_
                                                _%descriptor326613%_))
                                          (____prototype-table-set!
                                           _%prototable326620%_
                                           _%descriptor326639%_
                                           _%prototype326616%_))
                                        ((lambda (_%method326648%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor326412%_
                                            'class:
                                            _%obj-klass326414%_
                                            'method:
                                            _%method326648%_)
                                           '#!void)
                                         _%method-spec326583%_))))
                                   (_%K326596326663%_
                                    (lambda (_%methods-rest326653%_
                                             _%method-name326654%_)
                                      (let ((_%$e326657%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table326432%_
                                                _%method-name326654%_
                                                '#f))))
                                        (if _%$e326657%_
                                            ((lambda (_%method326660%_)
                                               (_%loop326435%_
                                                _%rest326582%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count326440%_ '1))
                                                (cons _%method326660%_
                                                      _%methods326442%_)))
                                             _%$e326657%_)
                                            (_%loop-inner326587%_
                                             _%methods-rest326653%_))))))
                              (if (pair? _%methods-rest326592326600%_)
                                  (let ((_%hd326597326666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest326592326600%_)))
                                        (_%tl326598326668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest326592326600%_))))
                                    (let* ((_%method-name326671%_
                                            _%hd326597326666%_)
                                           (_%methods-rest326673%_
                                            _%tl326598326668%_))
                                      (_%K326596326663%_
                                       _%methods-rest326673%_
                                       _%method-name326671%_)))
                                  (_%else326594326650%_))))
                          (let ((_%$e326675%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table326432%_
                                    _%method-spec326583%_
                                    '#f))))
                            (if _%$e326675%_
                                ((lambda (_%method326678%_)
                                   (_%loop326435%_
                                    _%rest326582%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count326440%_ '1))
                                    (cons _%method326678%_ _%methods326442%_)))
                                 _%$e326675%_)
                                (let ((_%tab326681%_
                                       (class-type-interface-table
                                        _%obj-klass326414%_)))
                                  (let* ((_%prototable326683%_ _%tab326681%_)
                                         (_%descriptor326686%_
                                          _%descriptor326412%_)
                                         (_%prototype326689%_ '#!void)
                                         (_%prototable326693%_
                                          _%prototable326683%_)
                                         (_%descriptor326706%_
                                          _%descriptor326686%_))
                                    (____prototype-table-set!
                                     _%prototable326693%_
                                     _%descriptor326706%_
                                     _%prototype326689%_))
                                  ((lambda (_%method326715%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor326412%_
                                      'class:
                                      _%obj-klass326414%_
                                      'method:
                                      _%method326715%_)
                                     '#!void)
                                   _%method-spec326583%_))))))))
              (if (pair? _%rest326444326452%_)
                  (let ((_%hd326449326720%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest326444326452%_)))
                        (_%tl326450326722%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest326444326452%_))))
                    (let* ((_%method-spec326725%_ _%hd326449326720%_)
                           (_%rest326727%_ _%tl326450326722%_))
                      (_%K326448326717%_
                       _%rest326727%_
                       _%method-spec326725%_)))
                  (_%else326446326579%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor326095%_ _%klass326096%_ _%obj-klass326097%_)
        (let ((_%method-table326115%_
               (let ((_%klass326099%_ _%obj-klass326097%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass326099%_ 'class))
                     (let ((_%klass326104%_ _%klass326099%_))
                       (declare (not safe))
                       (__specialize-class _%klass326104%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass326099%_)
                       '#!void)))))
          (let _%loop326118%_ ((_%rest326121%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor326095%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count326123%_ '0)
                               (_%methods326125%_ '()))
            (let* ((_%rest326127326135%_ _%rest326121%_)
                   (_%else326129326262%_
                    (lambda ()
                      (let ((_%prototype326178%_
                             (let* ((_%klass326143%_ _%klass326096%_)
                                    (_%k326146%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count326123%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass326143%_
                                      'class))
                                   (let* ((_%klass326151%_ _%klass326143%_)
                                          (_%k326168%_ _%k326146%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass326151%_
                                      _%k326168%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass326143%_)
                                     '#!void)))))
                        (let _%loop326181%_ ((_%rest326183%_ _%methods326125%_)
                                             (_%off326184%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count326123%_ '1))))
                          (let* ((_%rest326186326194%_ _%rest326183%_)
                                 (_%else326188326243%_
                                  (lambda ()
                                    (let ((_%tab326202%_
                                           (class-type-interface-table
                                            _%obj-klass326097%_)))
                                      (let* ((_%prototable326205%_
                                              _%tab326202%_)
                                             (_%descriptor326208%_
                                              _%descriptor326095%_)
                                             (_%prototype326211%_
                                              _%prototype326178%_)
                                             (_%prototable326215%_
                                              _%prototable326205%_)
                                             (_%descriptor326232%_
                                              _%descriptor326208%_))
                                        (____prototype-table-set!
                                         _%prototable326215%_
                                         _%descriptor326232%_
                                         _%prototype326211%_))
                                      ((lambda (_%prototype326241%_)
                                         _%prototype326241%_)
                                       _%prototype326178%_))))
                                 (_%K326190326250%_
                                  (lambda (_%rest326246%_ _%method326247%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype326178%_
                                       _%method326247%_
                                       _%off326184%_
                                       _%klass326096%_
                                       '#f))
                                    (_%loop326181%_
                                     _%rest326246%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off326184%_ '1))))))
                            (if (pair? _%rest326186326194%_)
                                (let ((_%hd326191326253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest326186326194%_)))
                                      (_%tl326192326255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest326186326194%_))))
                                  (let* ((_%method326258%_ _%hd326191326253%_)
                                         (_%rest326260%_ _%tl326192326255%_))
                                    (_%K326190326250%_
                                     _%rest326260%_
                                     _%method326258%_)))
                                (_%else326188326243%_)))))))
                   (_%K326131326400%_
                    (lambda (_%rest326265%_ _%method-spec326266%_)
                      (if (pair? _%method-spec326266%_)
                          (let _%loop-inner326270%_ ((_%methods-rest326273%_
                                                      _%method-spec326266%_))
                            (let* ((_%methods-rest326275326283%_
                                    _%methods-rest326273%_)
                                   (_%else326277326333%_
                                    (lambda ()
                                      (let ((_%tab326291%_
                                             (class-type-interface-table
                                              _%obj-klass326097%_)))
                                        (let* ((_%prototable326293%_
                                                _%tab326291%_)
                                               (_%descriptor326296%_
                                                _%descriptor326095%_)
                                               (_%prototype326299%_ '#!void)
                                               (_%prototable326303%_
                                                _%prototable326293%_)
                                               (_%descriptor326322%_
                                                _%descriptor326296%_))
                                          (____prototype-table-set!
                                           _%prototable326303%_
                                           _%descriptor326322%_
                                           _%prototype326299%_))
                                        ((lambda (_%method326331%_) '#f)
                                         _%method-spec326266%_))))
                                   (_%K326279326346%_
                                    (lambda (_%methods-rest326336%_
                                             _%method-name326337%_)
                                      (let ((_%$e326340%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table326115%_
                                                _%method-name326337%_
                                                '#f))))
                                        (if _%$e326340%_
                                            ((lambda (_%method326343%_)
                                               (_%loop326118%_
                                                _%rest326265%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count326123%_ '1))
                                                (cons _%method326343%_
                                                      _%methods326125%_)))
                                             _%$e326340%_)
                                            (_%loop-inner326270%_
                                             _%methods-rest326336%_))))))
                              (if (pair? _%methods-rest326275326283%_)
                                  (let ((_%hd326280326349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest326275326283%_)))
                                        (_%tl326281326351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest326275326283%_))))
                                    (let* ((_%method-name326354%_
                                            _%hd326280326349%_)
                                           (_%methods-rest326356%_
                                            _%tl326281326351%_))
                                      (_%K326279326346%_
                                       _%methods-rest326356%_
                                       _%method-name326354%_)))
                                  (_%else326277326333%_))))
                          (let ((_%$e326358%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table326115%_
                                    _%method-spec326266%_
                                    '#f))))
                            (if _%$e326358%_
                                ((lambda (_%method326361%_)
                                   (_%loop326118%_
                                    _%rest326265%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count326123%_ '1))
                                    (cons _%method326361%_ _%methods326125%_)))
                                 _%$e326358%_)
                                (let ((_%tab326364%_
                                       (class-type-interface-table
                                        _%obj-klass326097%_)))
                                  (let* ((_%prototable326366%_ _%tab326364%_)
                                         (_%descriptor326369%_
                                          _%descriptor326095%_)
                                         (_%prototype326372%_ '#!void)
                                         (_%prototable326376%_
                                          _%prototable326366%_)
                                         (_%descriptor326389%_
                                          _%descriptor326369%_))
                                    (____prototype-table-set!
                                     _%prototable326376%_
                                     _%descriptor326389%_
                                     _%prototype326372%_))
                                  ((lambda (_%method326398%_) '#f)
                                   _%method-spec326266%_))))))))
              (if (pair? _%rest326127326135%_)
                  (let ((_%hd326132326403%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest326127326135%_)))
                        (_%tl326133326405%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest326127326135%_))))
                    (let* ((_%method-spec326408%_ _%hd326132326403%_)
                           (_%rest326410%_ _%tl326133326405%_))
                      (_%K326131326400%_
                       _%rest326410%_
                       _%method-spec326408%_)))
                  (_%else326129326262%_)))))))
    (define cast
      (lambda (_%descriptor325937%_ _%obj325939%_)
        (let* ((_%klass325942%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor325937%_ '1 '#f '#f)))
               (_%klass-id325945%_
                (let () (declare (not safe)) (##type-id _%klass325942%_))))
          (let _%loop325949%_ ((_%obj325952%_ _%obj325939%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass325955%_
                    (let () (declare (not safe)) (class-of _%obj325952%_)))
                   (_%obj-klass-id325958%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass325955%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id325945%_ _%obj-klass-id325958%_))
                  ((lambda (_%obj325963%_) _%obj325963%_) _%obj325952%_)
                  (if (interface-subclass? _%obj-klass325955%_)
                      (let* ((_%tab325966%_
                              (class-type-interface-table _%obj-klass325955%_))
                             (_%$e326006%_
                              (let* ((_%prototable325969%_ _%tab325966%_)
                                     (_%descriptor325972%_
                                      _%descriptor325937%_)
                                     (_%prototable325976%_
                                      _%prototable325969%_)
                                     (_%descriptor325997%_
                                      _%descriptor325972%_))
                                (____prototype-table-get
                                 _%prototable325976%_
                                 _%descriptor325997%_))))
                        (if _%$e326006%_
                            ((lambda (_%prototype326009%_)
                               (if (eq? _%prototype326009%_ '#!void)
                                   (_%loop325949%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj325952%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor326012%_
                                             _%prototype326013%_
                                             _%obj326014%_)
                                      (if _%prototype326013%_
                                          (let ((_%instance326016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype326013%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance326016%_
                                               _%obj326014%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance326016%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor326012%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj326014%_)))
                                            '#!void)))
                                    _%descriptor325937%_
                                    _%prototype326009%_
                                    _%obj325952%_)))
                             _%$e326006%_)
                            (let ((_%$e326018%_
                                   (try-create-prototype
                                    _%descriptor325937%_
                                    _%klass325942%_
                                    _%obj-klass325955%_)))
                              (if _%$e326018%_
                                  ((lambda (_%prototype326021%_)
                                     ((lambda (_%descriptor326023%_
                                               _%prototype326024%_
                                               _%obj326025%_)
                                        (if _%prototype326024%_
                                            (let ((_%instance326027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype326024%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance326027%_
                                                 _%obj326025%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance326027%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor326023%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj326025%_)))
                                              '#!void)))
                                      _%descriptor325937%_
                                      _%prototype326021%_
                                      _%obj325952%_))
                                   _%$e326018%_)
                                  (_%loop325949%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj325952%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab326031%_
                              (class-type-interface-table _%obj-klass325955%_))
                             (_%$e326060%_
                              (let* ((_%prototable326033%_ _%tab326031%_)
                                     (_%descriptor326036%_
                                      _%descriptor325937%_)
                                     (_%prototable326040%_
                                      _%prototable326033%_)
                                     (_%descriptor326051%_
                                      _%descriptor326036%_))
                                (____prototype-table-get
                                 _%prototable326040%_
                                 _%descriptor326051%_))))
                        (if _%$e326060%_
                            ((lambda (_%prototype326063%_)
                               (if (eq? _%prototype326063%_ '#!void)
                                   ((lambda (_%descriptor326065%_
                                             _%prototype326066%_
                                             _%obj326067%_)
                                      (if _%prototype326066%_
                                          (let ((_%instance326069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype326066%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance326069%_
                                               _%obj326067%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance326069%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor326065%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj326067%_)))
                                            '#!void)))
                                    _%descriptor325937%_
                                    '#f
                                    _%obj325952%_)
                                   ((lambda (_%descriptor326071%_
                                             _%prototype326072%_
                                             _%obj326073%_)
                                      (if _%prototype326072%_
                                          (let ((_%instance326075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype326072%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance326075%_
                                               _%obj326073%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance326075%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor326071%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj326073%_)))
                                            '#!void)))
                                    _%descriptor325937%_
                                    _%prototype326063%_
                                    _%obj325952%_)))
                             _%$e326060%_)
                            (let ((_%$e326077%_
                                   (create-prototype
                                    _%descriptor325937%_
                                    _%klass325942%_
                                    _%obj-klass325955%_)))
                              (if _%$e326077%_
                                  ((lambda (_%prototype326080%_)
                                     ((lambda (_%descriptor326082%_
                                               _%prototype326083%_
                                               _%obj326084%_)
                                        (if _%prototype326083%_
                                            (let ((_%instance326086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype326083%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance326086%_
                                                 _%obj326084%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance326086%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor326082%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj326084%_)))
                                              '#!void)))
                                      _%descriptor325937%_
                                      _%prototype326080%_
                                      _%obj325952%_))
                                   _%$e326077%_)
                                  ((lambda (_%descriptor326089%_
                                            _%prototype326090%_
                                            _%obj326091%_)
                                     (if _%prototype326090%_
                                         (let ((_%instance326093%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype326090%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance326093%_
                                              _%obj326091%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance326093%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor326089%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj326091%_)))
                                           '#!void)))
                                   _%descriptor325937%_
                                   '#f
                                   _%obj325952%_))))))))))))
    (define try-cast
      (lambda (_%descriptor325779%_ _%obj325781%_)
        (let* ((_%klass325784%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor325779%_ '1 '#f '#f)))
               (_%klass-id325787%_
                (let () (declare (not safe)) (##type-id _%klass325784%_))))
          (let _%loop325791%_ ((_%obj325794%_ _%obj325781%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass325797%_
                    (let () (declare (not safe)) (class-of _%obj325794%_)))
                   (_%obj-klass-id325800%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass325797%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id325787%_ _%obj-klass-id325800%_))
                  ((lambda (_%obj325805%_) _%obj325805%_) _%obj325794%_)
                  (if (interface-subclass? _%obj-klass325797%_)
                      (let* ((_%tab325808%_
                              (class-type-interface-table _%obj-klass325797%_))
                             (_%$e325848%_
                              (let* ((_%prototable325811%_ _%tab325808%_)
                                     (_%descriptor325814%_
                                      _%descriptor325779%_)
                                     (_%prototable325818%_
                                      _%prototable325811%_)
                                     (_%descriptor325839%_
                                      _%descriptor325814%_))
                                (____prototype-table-get
                                 _%prototable325818%_
                                 _%descriptor325839%_))))
                        (if _%$e325848%_
                            ((lambda (_%prototype325851%_)
                               (if (eq? _%prototype325851%_ '#!void)
                                   (_%loop325791%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj325794%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor325854%_
                                             _%prototype325855%_
                                             _%obj325856%_)
                                      (if _%prototype325855%_
                                          (let ((_%instance325858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype325855%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance325858%_
                                               _%obj325856%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance325858%_)
                                          '#f))
                                    _%descriptor325779%_
                                    _%prototype325851%_
                                    _%obj325794%_)))
                             _%$e325848%_)
                            (let ((_%$e325860%_
                                   (try-create-prototype
                                    _%descriptor325779%_
                                    _%klass325784%_
                                    _%obj-klass325797%_)))
                              (if _%$e325860%_
                                  ((lambda (_%prototype325863%_)
                                     ((lambda (_%descriptor325865%_
                                               _%prototype325866%_
                                               _%obj325867%_)
                                        (if _%prototype325866%_
                                            (let ((_%instance325869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype325866%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance325869%_
                                                 _%obj325867%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance325869%_)
                                            '#f))
                                      _%descriptor325779%_
                                      _%prototype325863%_
                                      _%obj325794%_))
                                   _%$e325860%_)
                                  (_%loop325791%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj325794%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab325873%_
                              (class-type-interface-table _%obj-klass325797%_))
                             (_%$e325902%_
                              (let* ((_%prototable325875%_ _%tab325873%_)
                                     (_%descriptor325878%_
                                      _%descriptor325779%_)
                                     (_%prototable325882%_
                                      _%prototable325875%_)
                                     (_%descriptor325893%_
                                      _%descriptor325878%_))
                                (____prototype-table-get
                                 _%prototable325882%_
                                 _%descriptor325893%_))))
                        (if _%$e325902%_
                            ((lambda (_%prototype325905%_)
                               (if (eq? _%prototype325905%_ '#!void)
                                   ((lambda (_%descriptor325907%_
                                             _%prototype325908%_
                                             _%obj325909%_)
                                      (if _%prototype325908%_
                                          (let ((_%instance325911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype325908%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance325911%_
                                               _%obj325909%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance325911%_)
                                          '#f))
                                    _%descriptor325779%_
                                    '#f
                                    _%obj325794%_)
                                   ((lambda (_%descriptor325913%_
                                             _%prototype325914%_
                                             _%obj325915%_)
                                      (if _%prototype325914%_
                                          (let ((_%instance325917%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype325914%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance325917%_
                                               _%obj325915%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance325917%_)
                                          '#f))
                                    _%descriptor325779%_
                                    _%prototype325905%_
                                    _%obj325794%_)))
                             _%$e325902%_)
                            (let ((_%$e325919%_
                                   (try-create-prototype
                                    _%descriptor325779%_
                                    _%klass325784%_
                                    _%obj-klass325797%_)))
                              (if _%$e325919%_
                                  ((lambda (_%prototype325922%_)
                                     ((lambda (_%descriptor325924%_
                                               _%prototype325925%_
                                               _%obj325926%_)
                                        (if _%prototype325925%_
                                            (let ((_%instance325928%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype325925%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance325928%_
                                                 _%obj325926%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance325928%_)
                                            '#f))
                                      _%descriptor325779%_
                                      _%prototype325922%_
                                      _%obj325794%_))
                                   _%$e325919%_)
                                  ((lambda (_%descriptor325931%_
                                            _%prototype325932%_
                                            _%obj325933%_)
                                     (if _%prototype325932%_
                                         (let ((_%instance325935%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype325932%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance325935%_
                                              _%obj325933%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance325935%_)
                                         '#f))
                                   _%descriptor325779%_
                                   '#f
                                   _%obj325794%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor325633%_ _%obj325635%_)
        (let* ((_%klass325638%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor325633%_ '1 '#f '#f)))
               (_%klass-id325641%_
                (let () (declare (not safe)) (##type-id _%klass325638%_))))
          (let _%loop325645%_ ((_%obj325648%_ _%obj325635%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass325651%_
                    (let () (declare (not safe)) (class-of _%obj325648%_)))
                   (_%obj-klass-id325654%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass325651%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id325641%_ _%obj-klass-id325654%_))
                  ((lambda (_%obj325659%_) '#t) _%obj325648%_)
                  (if (interface-subclass? _%obj-klass325651%_)
                      (let* ((_%tab325662%_
                              (class-type-interface-table _%obj-klass325651%_))
                             (_%$e325702%_
                              (let* ((_%prototable325665%_ _%tab325662%_)
                                     (_%descriptor325668%_
                                      _%descriptor325633%_)
                                     (_%prototable325672%_
                                      _%prototable325665%_)
                                     (_%descriptor325693%_
                                      _%descriptor325668%_))
                                (____prototype-table-get
                                 _%prototable325672%_
                                 _%descriptor325693%_))))
                        (if _%$e325702%_
                            ((lambda (_%prototype325705%_)
                               (if (eq? _%prototype325705%_ '#!void)
                                   (_%loop325645%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj325648%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor325708%_
                                             _%prototype325709%_
                                             _%obj325710%_)
                                      (if _%prototype325709%_ '#t '#f))
                                    _%descriptor325633%_
                                    _%prototype325705%_
                                    _%obj325648%_)))
                             _%$e325702%_)
                            (let ((_%$e325712%_
                                   (try-create-prototype
                                    _%descriptor325633%_
                                    _%klass325638%_
                                    _%obj-klass325651%_)))
                              (if _%$e325712%_
                                  ((lambda (_%prototype325715%_)
                                     ((lambda (_%descriptor325717%_
                                               _%prototype325718%_
                                               _%obj325719%_)
                                        (if _%prototype325718%_ '#t '#f))
                                      _%descriptor325633%_
                                      _%prototype325715%_
                                      _%obj325648%_))
                                   _%$e325712%_)
                                  (_%loop325645%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj325648%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab325723%_
                              (class-type-interface-table _%obj-klass325651%_))
                             (_%$e325752%_
                              (let* ((_%prototable325725%_ _%tab325723%_)
                                     (_%descriptor325728%_
                                      _%descriptor325633%_)
                                     (_%prototable325732%_
                                      _%prototable325725%_)
                                     (_%descriptor325743%_
                                      _%descriptor325728%_))
                                (____prototype-table-get
                                 _%prototable325732%_
                                 _%descriptor325743%_))))
                        (if _%$e325752%_
                            ((lambda (_%prototype325755%_)
                               (if (eq? _%prototype325755%_ '#!void)
                                   ((lambda (_%descriptor325757%_
                                             _%prototype325758%_
                                             _%obj325759%_)
                                      (if _%prototype325758%_ '#t '#f))
                                    _%descriptor325633%_
                                    '#f
                                    _%obj325648%_)
                                   ((lambda (_%descriptor325761%_
                                             _%prototype325762%_
                                             _%obj325763%_)
                                      (if _%prototype325762%_ '#t '#f))
                                    _%descriptor325633%_
                                    _%prototype325755%_
                                    _%obj325648%_)))
                             _%$e325752%_)
                            (let ((_%$e325765%_
                                   (try-create-prototype
                                    _%descriptor325633%_
                                    _%klass325638%_
                                    _%obj-klass325651%_)))
                              (if _%$e325765%_
                                  ((lambda (_%prototype325768%_)
                                     ((lambda (_%descriptor325770%_
                                               _%prototype325771%_
                                               _%obj325772%_)
                                        (if _%prototype325771%_ '#t '#f))
                                      _%descriptor325633%_
                                      _%prototype325768%_
                                      _%obj325648%_))
                                   _%$e325765%_)
                                  ((lambda (_%descriptor325775%_
                                            _%prototype325776%_
                                            _%obj325777%_)
                                     (if _%prototype325776%_ '#t '#f))
                                   _%descriptor325633%_
                                   '#f
                                   _%obj325648%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor325485%_
               _%obj325486%_
               _%with-prototype+receiver325487%_
               _%with-receiver325488%_)
        (let* ((_%descriptor325491%_ _%descriptor325485%_)
               (_%with-prototype+receiver325499%_
                _%with-prototype+receiver325487%_)
               (_%with-receiver325507%_ _%with-receiver325488%_)
               (_%klass325516%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor325491%_ '1 '#f '#f)))
               (_%klass-id325519%_
                (let () (declare (not safe)) (##type-id _%klass325516%_))))
          (let _%loop325523%_ ((_%obj325526%_ _%obj325486%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass325529%_
                    (let () (declare (not safe)) (class-of _%obj325526%_)))
                   (_%obj-klass-id325532%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass325529%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id325519%_ _%obj-klass-id325532%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver325507%_ _%obj325526%_))
                  (if (interface-subclass? _%obj-klass325529%_)
                      (let* ((_%tab325538%_
                              (class-type-interface-table _%obj-klass325529%_))
                             (_%$e325580%_
                              (let* ((_%prototable325541%_ _%tab325538%_)
                                     (_%descriptor325544%_
                                      _%descriptor325491%_)
                                     (_%prototable325548%_
                                      _%prototable325541%_)
                                     (_%descriptor325571%_
                                      _%descriptor325544%_))
                                (____prototype-table-get
                                 _%prototable325548%_
                                 _%descriptor325571%_))))
                        (if _%$e325580%_
                            ((lambda (_%prototype325583%_)
                               (if (eq? _%prototype325583%_ '#!void)
                                   (_%loop325523%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj325526%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver325499%_
                                      _%descriptor325491%_
                                      _%prototype325583%_
                                      _%obj325526%_))))
                             _%$e325580%_)
                            (let ((_%$e325586%_
                                   (try-create-prototype
                                    _%descriptor325491%_
                                    _%klass325516%_
                                    _%obj-klass325529%_)))
                              (if _%$e325586%_
                                  ((lambda (_%prototype325589%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver325499%_
                                        _%descriptor325491%_
                                        _%prototype325589%_
                                        _%obj325526%_)))
                                   _%$e325586%_)
                                  (_%loop325523%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj325526%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab325593%_
                              (class-type-interface-table _%obj-klass325529%_))
                             (_%$e325622%_
                              (let* ((_%prototable325595%_ _%tab325593%_)
                                     (_%descriptor325598%_
                                      _%descriptor325491%_)
                                     (_%prototable325602%_
                                      _%prototable325595%_)
                                     (_%descriptor325613%_
                                      _%descriptor325598%_))
                                (____prototype-table-get
                                 _%prototable325602%_
                                 _%descriptor325613%_))))
                        (if _%$e325622%_
                            ((lambda (_%prototype325625%_)
                               (if (eq? _%prototype325625%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver325499%_
                                      _%descriptor325491%_
                                      '#f
                                      _%obj325526%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver325499%_
                                      _%descriptor325491%_
                                      _%prototype325625%_
                                      _%obj325526%_))))
                             _%$e325622%_)
                            (let ((_%$e325627%_
                                   (create-prototype
                                    _%descriptor325491%_
                                    _%klass325516%_
                                    _%obj-klass325529%_)))
                              (if _%$e325627%_
                                  ((lambda (_%prototype325630%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver325499%_
                                        _%descriptor325491%_
                                        _%prototype325630%_
                                        _%obj325526%_)))
                                   _%$e325627%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver325499%_
                                     _%descriptor325491%_
                                     '#f
                                     _%obj325526%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor325448%_
               _%obj325449%_
               _%with-prototype+receiver325450%_
               _%with-receiver325451%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor325448%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor325455%_ _%descriptor325448%_))
              (if (procedure? _%with-prototype+receiver325450%_)
                  (let ((_%with-prototype+receiver325465%_
                         _%with-prototype+receiver325450%_))
                    (if (procedure? _%with-receiver325451%_)
                        (let ((_%with-receiver325475%_
                               _%with-receiver325451%_))
                          (__with-prototype
                           _%descriptor325455%_
                           _%obj325449%_
                           _%with-prototype+receiver325465%_
                           _%with-receiver325475%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver325451%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver325450%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor325448%_)
              '#!void))))))
