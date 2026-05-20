(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1779289637)
  (begin
    (define CastError::t
      (let ((__tmp146351 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp146351
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args146265%_
        (apply make-instance CastError::t _%$args146265%_)))
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
      (lambda (_%where146139%_ _%message146140%_ . _%irritants146141%_)
        (let ((__tmp146352
               (let ((__obj146346
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj146346
                    _%message146140%_
                    'where:
                    _%where146139%_
                    'irritants:
                    _%irritants146141%_))
                 __obj146346)))
          (declare (not safe))
          (raise __tmp146352))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp146354 (list))
            (__tmp146353 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-instance::t
         'interface-instance
         __tmp146354
         '(object)
         __tmp146353
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args146136%_
        (apply make-instance interface-instance::t _%$args146136%_)))
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
      (let ((__tmp146356 (list))
            (__tmp146355
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#interface-descriptor::t
         'interface-descriptor
         __tmp146356
         '(type methods index)
         __tmp146355
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args146133%_
        (apply make-instance interface-descriptor::t _%$args146133%_)))
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
          (let _%again146111%_ ((_%spin146114%_ '0))
            (if (let ((__tmp146357
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp146357 '0))
                (let ((__tmp146358 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp146358))
                (if (let () (declare (not safe)) (##fx< _%spin146114%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again146111%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin146114%_ '1))))
                    (let ((_%owner146120%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner146120%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner146120%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again146111%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r146128%_
               (let ((_%index146126%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index146126%_ '1)))
                 _%index146126%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r146128%_)))
    (define interface-descriptor:::init!
      (lambda (_%self146092%_ _%type146093%_ _%methods146094%_)
        (let ((_%self146097%_ _%self146092%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146097%_
             _%type146093%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146097%_
             _%methods146094%_
             '2
             '#f
             '#f))
          (let ((__tmp146359 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146097%_
             __tmp146359
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
      (let ((__tmp146361 (list))
            (__tmp146360
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#prototype-table::t
         'prototype-table
         __tmp146361
         '(lock table)
         __tmp146360
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args145967%_
        (apply make-instance prototype-table::t _%$args145967%_)))
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
      (lambda (_%self145953%_)
        (let ((_%self145956%_ _%self145953%_))
          (let ((__tmp146362 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self145956%_ __tmp146362 '1 '#f '#f))
          (let ((__tmp146363
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145956%_
             __tmp146363
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
      (lambda (_%prototable145806%_ _%descriptor145807%_)
        (let* ((_%prototable145810%_ _%prototable145806%_)
               (_%descriptor145818%_ _%descriptor145807%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab145828%_
                 (##unchecked-structure-ref _%prototable145810%_ '2 '#f '#f))
                (_%index145829%_
                 (##unchecked-structure-ref _%descriptor145818%_ '3 '#f '#f)))
            (if (##fx< _%index145829%_ (vector-length _%tab145828%_))
                (vector-ref _%tab145828%_ _%index145829%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable143754%_ _%descriptor143755%_)
        (let* ((_%prototable143758%_ _%prototable143754%_)
               (_%descriptor143766%_ _%descriptor143755%_))
          (____prototype-table-get
           _%prototable143758%_
           _%descriptor143766%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable145752%_ _%descriptor145753%_ _%prototype145754%_)
        (let* ((_%prototable145757%_ _%prototable145752%_)
               (_%descriptor145765%_ _%descriptor145753%_))
          (declare (not safe))
          (let ((_%lock145775%_
                 (##unchecked-structure-ref _%prototable145757%_ '1 '#f '#f))
                (_%index145776%_
                 (##unchecked-structure-ref _%descriptor145765%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again145780%_ ((_%spin145783%_ '0))
                (if (##fx= (##vector-cas! _%lock145775%_ '0 '1 '0) '0)
                    (##vector-set! _%lock145775%_ '1 (current-thread))
                    (if (##fx< _%spin145783%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again145780%_ (##fx+ _%spin145783%_ '1)))
                        (let ((_%owner145789%_
                               (##vector-ref _%lock145775%_ '1)))
                          (if (eq? _%owner145789%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner145789%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again145780%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r145801%_
                   (let ((_%tab145795%_
                          (##unchecked-structure-ref
                           _%prototable145757%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index145776%_ (vector-length _%tab145795%_))
                         (vector-set!
                          _%tab145795%_
                          _%index145776%_
                          _%prototype145754%_)
                         (let ((_%new-size145797%_ __next-interface-index))
                           (if (##fx< _%index145776%_ _%new-size145797%_)
                               (let ((_%new-tab145799%_
                                      (##make-vector _%new-size145797%_ '#f)))
                                 (subvector-move!
                                  _%tab145795%_
                                  '0
                                  (vector-length _%tab145795%_)
                                  _%new-tab145799%_
                                  '0)
                                 (vector-set!
                                  _%new-tab145799%_
                                  _%index145776%_
                                  _%prototype145754%_)
                                 (##unchecked-structure-set!
                                  _%prototable145757%_
                                  _%new-tab145799%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor145765%_
                                      'index:
                                      _%index145776%_
                                      'max-index:
                                      _%new-size145797%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock145775%_ '1 '#f)
                  (##vector-cas! _%lock145775%_ '0 '0 '1)))
              _%$r145801%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable143895%_ _%descriptor143896%_ _%prototype143897%_)
        (let* ((_%prototable143900%_ _%prototable143895%_)
               (_%descriptor143908%_ _%descriptor143896%_))
          (____prototype-table-set!
           _%prototable143900%_
           _%descriptor143908%_
           _%prototype143897%_))))
    (define interface-subclass?
      (lambda (_%klass145745%_)
        (let ((_%super145746145748%_
               (let () (declare (not safe)) (##type-super _%klass145745%_))))
          (if _%super145746145748%_
              (let ((_%super145750%_ _%super145746145748%_))
                (eq? (let () (declare (not safe)) (##type-id _%super145750%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass145737%_)
        (let ((_%$e145739%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass145737%_ '13 '#f '#f))))
          (if _%$e145739%_
              _%$e145739%_
              (let ((_%tab145743%_
                     (let ((__obj146350
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj146350)
                       __obj146350)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass145737%_
                   _%tab145743%_
                   '13
                   '#f
                   '#f))
                _%tab145743%_)))))
    (define create-prototype
      (lambda (_%descriptor145420%_ _%klass145421%_ _%obj-klass145422%_)
        (let ((_%method-table145440%_
               (let ((_%klass145424%_ _%obj-klass145422%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145424%_ 'class))
                     (let ((_%klass145429%_ _%klass145424%_))
                       (declare (not safe))
                       (__specialize-class _%klass145429%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145424%_)
                       '#!void)))))
          (let _%loop145443%_ ((_%rest145446%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145420%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145448%_ '0)
                               (_%methods145450%_ '()))
            (let* ((_%rest145452145460%_ _%rest145446%_)
                   (_%else145454145587%_
                    (lambda ()
                      (let ((_%prototype145503%_
                             (let* ((_%klass145468%_ _%klass145421%_)
                                    (_%k145471%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145448%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145468%_
                                      'class))
                                   (let* ((_%klass145476%_ _%klass145468%_)
                                          (_%k145493%_ _%k145471%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145476%_
                                      _%k145493%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145468%_)
                                     '#!void)))))
                        (let _%loop145506%_ ((_%rest145508%_ _%methods145450%_)
                                             (_%off145509%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145448%_ '1))))
                          (let* ((_%rest145511145519%_ _%rest145508%_)
                                 (_%else145513145568%_
                                  (lambda ()
                                    (let ((_%tab145527%_
                                           (class-type-interface-table
                                            _%obj-klass145422%_)))
                                      (let* ((_%prototable145530%_
                                              _%tab145527%_)
                                             (_%descriptor145533%_
                                              _%descriptor145420%_)
                                             (_%prototype145536%_
                                              _%prototype145503%_)
                                             (_%prototable145540%_
                                              _%prototable145530%_)
                                             (_%descriptor145557%_
                                              _%descriptor145533%_))
                                        (____prototype-table-set!
                                         _%prototable145540%_
                                         _%descriptor145557%_
                                         _%prototype145536%_))
                                      _%prototype145503%_)))
                                 (_%K145515145575%_
                                  (lambda (_%rest145571%_ _%method145572%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145503%_
                                       _%method145572%_
                                       _%off145509%_
                                       _%klass145421%_
                                       '#f))
                                    (_%loop145506%_
                                     _%rest145571%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145509%_ '1))))))
                            (if (pair? _%rest145511145519%_)
                                (let ((_%hd145516145578%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest145511145519%_)))
                                      (_%tl145517145580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest145511145519%_))))
                                  (let* ((_%method145583%_ _%hd145516145578%_)
                                         (_%rest145585%_ _%tl145517145580%_))
                                    (_%K145515145575%_
                                     _%rest145585%_
                                     _%method145583%_)))
                                (_%else145513145568%_)))))))
                   (_%K145456145725%_
                    (lambda (_%rest145590%_ _%method-spec145591%_)
                      (if (pair? _%method-spec145591%_)
                          (let _%loop-inner145595%_ ((_%methods-rest145598%_
                                                      _%method-spec145591%_))
                            (let* ((_%methods-rest145600145608%_
                                    _%methods-rest145598%_)
                                   (_%else145602145658%_
                                    (lambda ()
                                      (let ((_%tab145616%_
                                             (class-type-interface-table
                                              _%obj-klass145422%_)))
                                        (let* ((_%prototable145618%_
                                                _%tab145616%_)
                                               (_%descriptor145621%_
                                                _%descriptor145420%_)
                                               (_%prototype145624%_ '#!void)
                                               (_%prototable145628%_
                                                _%prototable145618%_)
                                               (_%descriptor145647%_
                                                _%descriptor145621%_))
                                          (____prototype-table-set!
                                           _%prototable145628%_
                                           _%descriptor145647%_
                                           _%prototype145624%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor145420%_
                                           'class:
                                           _%obj-klass145422%_
                                           'method:
                                           _%method-spec145591%_)
                                          '#!void))))
                                   (_%K145604145671%_
                                    (lambda (_%methods-rest145661%_
                                             _%method-name145662%_)
                                      (let ((_%$e145665%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145440%_
                                                _%method-name145662%_
                                                '#f))))
                                        (if _%$e145665%_
                                            (_%loop145443%_
                                             _%rest145590%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145448%_ '1))
                                             (cons _%$e145665%_
                                                   _%methods145450%_))
                                            (_%loop-inner145595%_
                                             _%methods-rest145661%_))))))
                              (if (pair? _%methods-rest145600145608%_)
                                  (let ((_%hd145605145674%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest145600145608%_)))
                                        (_%tl145606145676%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest145600145608%_))))
                                    (let* ((_%method-name145679%_
                                            _%hd145605145674%_)
                                           (_%methods-rest145681%_
                                            _%tl145606145676%_))
                                      (_%K145604145671%_
                                       _%methods-rest145681%_
                                       _%method-name145679%_)))
                                  (_%else145602145658%_))))
                          (let ((_%$e145683%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145440%_
                                    _%method-spec145591%_
                                    '#f))))
                            (if _%$e145683%_
                                (_%loop145443%_
                                 _%rest145590%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145448%_ '1))
                                 (cons _%$e145683%_ _%methods145450%_))
                                (let ((_%tab145689%_
                                       (class-type-interface-table
                                        _%obj-klass145422%_)))
                                  (let* ((_%prototable145691%_ _%tab145689%_)
                                         (_%descriptor145694%_
                                          _%descriptor145420%_)
                                         (_%prototype145697%_ '#!void)
                                         (_%prototable145701%_
                                          _%prototable145691%_)
                                         (_%descriptor145714%_
                                          _%descriptor145694%_))
                                    (____prototype-table-set!
                                     _%prototable145701%_
                                     _%descriptor145714%_
                                     _%prototype145697%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor145420%_
                                     'class:
                                     _%obj-klass145422%_
                                     'method:
                                     _%method-spec145591%_)
                                    '#!void))))))))
              (if (pair? _%rest145452145460%_)
                  (let ((_%hd145457145728%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest145452145460%_)))
                        (_%tl145458145730%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest145452145460%_))))
                    (let* ((_%method-spec145733%_ _%hd145457145728%_)
                           (_%rest145735%_ _%tl145458145730%_))
                      (_%K145456145725%_
                       _%rest145735%_
                       _%method-spec145733%_)))
                  (_%else145454145587%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor145103%_ _%klass145104%_ _%obj-klass145105%_)
        (let ((_%method-table145123%_
               (let ((_%klass145107%_ _%obj-klass145105%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145107%_ 'class))
                     (let ((_%klass145112%_ _%klass145107%_))
                       (declare (not safe))
                       (__specialize-class _%klass145112%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145107%_)
                       '#!void)))))
          (let _%loop145126%_ ((_%rest145129%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145103%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145131%_ '0)
                               (_%methods145133%_ '()))
            (let* ((_%rest145135145143%_ _%rest145129%_)
                   (_%else145137145270%_
                    (lambda ()
                      (let ((_%prototype145186%_
                             (let* ((_%klass145151%_ _%klass145104%_)
                                    (_%k145154%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145131%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145151%_
                                      'class))
                                   (let* ((_%klass145159%_ _%klass145151%_)
                                          (_%k145176%_ _%k145154%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145159%_
                                      _%k145176%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145151%_)
                                     '#!void)))))
                        (let _%loop145189%_ ((_%rest145191%_ _%methods145133%_)
                                             (_%off145192%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145131%_ '1))))
                          (let* ((_%rest145194145202%_ _%rest145191%_)
                                 (_%else145196145251%_
                                  (lambda ()
                                    (let ((_%tab145210%_
                                           (class-type-interface-table
                                            _%obj-klass145105%_)))
                                      (let* ((_%prototable145213%_
                                              _%tab145210%_)
                                             (_%descriptor145216%_
                                              _%descriptor145103%_)
                                             (_%prototype145219%_
                                              _%prototype145186%_)
                                             (_%prototable145223%_
                                              _%prototable145213%_)
                                             (_%descriptor145240%_
                                              _%descriptor145216%_))
                                        (____prototype-table-set!
                                         _%prototable145223%_
                                         _%descriptor145240%_
                                         _%prototype145219%_))
                                      _%prototype145186%_)))
                                 (_%K145198145258%_
                                  (lambda (_%rest145254%_ _%method145255%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145186%_
                                       _%method145255%_
                                       _%off145192%_
                                       _%klass145104%_
                                       '#f))
                                    (_%loop145189%_
                                     _%rest145254%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145192%_ '1))))))
                            (if (pair? _%rest145194145202%_)
                                (let ((_%hd145199145261%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest145194145202%_)))
                                      (_%tl145200145263%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest145194145202%_))))
                                  (let* ((_%method145266%_ _%hd145199145261%_)
                                         (_%rest145268%_ _%tl145200145263%_))
                                    (_%K145198145258%_
                                     _%rest145268%_
                                     _%method145266%_)))
                                (_%else145196145251%_)))))))
                   (_%K145139145408%_
                    (lambda (_%rest145273%_ _%method-spec145274%_)
                      (if (pair? _%method-spec145274%_)
                          (let _%loop-inner145278%_ ((_%methods-rest145281%_
                                                      _%method-spec145274%_))
                            (let* ((_%methods-rest145283145291%_
                                    _%methods-rest145281%_)
                                   (_%else145285145341%_
                                    (lambda ()
                                      (let ((_%tab145299%_
                                             (class-type-interface-table
                                              _%obj-klass145105%_)))
                                        (let* ((_%prototable145301%_
                                                _%tab145299%_)
                                               (_%descriptor145304%_
                                                _%descriptor145103%_)
                                               (_%prototype145307%_ '#!void)
                                               (_%prototable145311%_
                                                _%prototable145301%_)
                                               (_%descriptor145330%_
                                                _%descriptor145304%_))
                                          (____prototype-table-set!
                                           _%prototable145311%_
                                           _%descriptor145330%_
                                           _%prototype145307%_))
                                        '#f)))
                                   (_%K145287145354%_
                                    (lambda (_%methods-rest145344%_
                                             _%method-name145345%_)
                                      (let ((_%$e145348%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145123%_
                                                _%method-name145345%_
                                                '#f))))
                                        (if _%$e145348%_
                                            (_%loop145126%_
                                             _%rest145273%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145131%_ '1))
                                             (cons _%$e145348%_
                                                   _%methods145133%_))
                                            (_%loop-inner145278%_
                                             _%methods-rest145344%_))))))
                              (if (pair? _%methods-rest145283145291%_)
                                  (let ((_%hd145288145357%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest145283145291%_)))
                                        (_%tl145289145359%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest145283145291%_))))
                                    (let* ((_%method-name145362%_
                                            _%hd145288145357%_)
                                           (_%methods-rest145364%_
                                            _%tl145289145359%_))
                                      (_%K145287145354%_
                                       _%methods-rest145364%_
                                       _%method-name145362%_)))
                                  (_%else145285145341%_))))
                          (let ((_%$e145366%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145123%_
                                    _%method-spec145274%_
                                    '#f))))
                            (if _%$e145366%_
                                (_%loop145126%_
                                 _%rest145273%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145131%_ '1))
                                 (cons _%$e145366%_ _%methods145133%_))
                                (let ((_%tab145372%_
                                       (class-type-interface-table
                                        _%obj-klass145105%_)))
                                  (let* ((_%prototable145374%_ _%tab145372%_)
                                         (_%descriptor145377%_
                                          _%descriptor145103%_)
                                         (_%prototype145380%_ '#!void)
                                         (_%prototable145384%_
                                          _%prototable145374%_)
                                         (_%descriptor145397%_
                                          _%descriptor145377%_))
                                    (____prototype-table-set!
                                     _%prototable145384%_
                                     _%descriptor145397%_
                                     _%prototype145380%_))
                                  '#f)))))))
              (if (pair? _%rest145135145143%_)
                  (let ((_%hd145140145411%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest145135145143%_)))
                        (_%tl145141145413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest145135145143%_))))
                    (let* ((_%method-spec145416%_ _%hd145140145411%_)
                           (_%rest145418%_ _%tl145141145413%_))
                      (_%K145139145408%_
                       _%rest145418%_
                       _%method-spec145416%_)))
                  (_%else145137145270%_)))))))
    (define cast
      (lambda (_%descriptor144937%_ _%obj144939%_)
        (let* ((_%klass144942%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144937%_ '1 '#f '#f)))
               (_%klass-id144945%_
                (let () (declare (not safe)) (##type-id _%klass144942%_))))
          (let _%loop144949%_ ((_%obj144952%_ _%obj144939%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144955%_
                    (let () (declare (not safe)) (class-of _%obj144952%_)))
                   (_%obj-klass-id144958%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144955%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144945%_ _%obj-klass-id144958%_))
                  _%obj144952%_
                  (if (interface-subclass? _%obj-klass144955%_)
                      (let _%loop-interface144966%_ ((_%iface-klass144969%_
                                                      _%obj-klass144955%_))
                        (if _%iface-klass144969%_
                            (let* ((_%tab144972%_
                                    (class-type-interface-table
                                     _%iface-klass144969%_))
                                   (_%$e145014%_
                                    (let* ((_%prototable144975%_ _%tab144972%_)
                                           (_%descriptor144978%_
                                            _%descriptor144937%_)
                                           (_%prototable144982%_
                                            _%prototable144975%_)
                                           (_%descriptor145005%_
                                            _%descriptor144978%_))
                                      (____prototype-table-get
                                       _%prototable144982%_
                                       _%descriptor145005%_))))
                              (if _%$e145014%_
                                  (if (eq? _%$e145014%_ '#!void)
                                      (_%loop-interface144966%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144969%_)))
                                      (if _%$e145014%_
                                          (let ((_%instance145024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e145014%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance145024%_
                                               _%obj144952%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance145024%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144937%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144952%_)))
                                            '#!void)))
                                  (let ((_%$e145026%_
                                         (try-create-prototype
                                          _%descriptor144937%_
                                          _%klass144942%_
                                          _%iface-klass144969%_)))
                                    (if _%$e145026%_
                                        (if _%$e145026%_
                                            (let ((_%instance145035%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e145026%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance145035%_
                                                 _%obj144952%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance145035%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144937%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144952%_)))
                                              '#!void))
                                        (_%loop-interface144966%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144969%_)))))))
                            (_%loop144949%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144952%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145039%_
                              (class-type-interface-table _%obj-klass144955%_))
                             (_%$e145068%_
                              (let* ((_%prototable145041%_ _%tab145039%_)
                                     (_%descriptor145044%_
                                      _%descriptor144937%_)
                                     (_%prototable145048%_
                                      _%prototable145041%_)
                                     (_%descriptor145059%_
                                      _%descriptor145044%_))
                                (____prototype-table-get
                                 _%prototable145048%_
                                 _%descriptor145059%_))))
                        (if _%$e145068%_
                            (if (eq? _%$e145068%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor144937%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj144952%_)))
                                  '#!void)
                                (if _%$e145068%_
                                    (let ((_%instance145083%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e145068%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance145083%_
                                         _%obj144952%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance145083%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor144937%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj144952%_)))
                                      '#!void)))
                            (let ((_%$e145085%_
                                   (create-prototype
                                    _%descriptor144937%_
                                    _%klass144942%_
                                    _%obj-klass144955%_)))
                              (if _%$e145085%_
                                  (if _%$e145085%_
                                      (let ((_%instance145094%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e145085%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance145094%_
                                           _%obj144952%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance145094%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor144937%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj144952%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor144937%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj144952%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor144771%_ _%obj144773%_)
        (let* ((_%klass144776%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144771%_ '1 '#f '#f)))
               (_%klass-id144779%_
                (let () (declare (not safe)) (##type-id _%klass144776%_))))
          (let _%loop144783%_ ((_%obj144786%_ _%obj144773%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144789%_
                    (let () (declare (not safe)) (class-of _%obj144786%_)))
                   (_%obj-klass-id144792%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144789%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144779%_ _%obj-klass-id144792%_))
                  _%obj144786%_
                  (if (interface-subclass? _%obj-klass144789%_)
                      (let _%loop-interface144800%_ ((_%iface-klass144803%_
                                                      _%obj-klass144789%_))
                        (if _%iface-klass144803%_
                            (let* ((_%tab144806%_
                                    (class-type-interface-table
                                     _%iface-klass144803%_))
                                   (_%$e144848%_
                                    (let* ((_%prototable144809%_ _%tab144806%_)
                                           (_%descriptor144812%_
                                            _%descriptor144771%_)
                                           (_%prototable144816%_
                                            _%prototable144809%_)
                                           (_%descriptor144839%_
                                            _%descriptor144812%_))
                                      (____prototype-table-get
                                       _%prototable144816%_
                                       _%descriptor144839%_))))
                              (if _%$e144848%_
                                  (if (eq? _%$e144848%_ '#!void)
                                      (_%loop-interface144800%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144803%_)))
                                      (if _%$e144848%_
                                          (let ((_%instance144858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e144848%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144858%_
                                               _%obj144786%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144858%_)
                                          '#f))
                                  (let ((_%$e144860%_
                                         (try-create-prototype
                                          _%descriptor144771%_
                                          _%klass144776%_
                                          _%iface-klass144803%_)))
                                    (if _%$e144860%_
                                        (if _%$e144860%_
                                            (let ((_%instance144869%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e144860%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144869%_
                                                 _%obj144786%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144869%_)
                                            '#f)
                                        (_%loop-interface144800%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144803%_)))))))
                            (_%loop144783%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144786%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144873%_
                              (class-type-interface-table _%obj-klass144789%_))
                             (_%$e144902%_
                              (let* ((_%prototable144875%_ _%tab144873%_)
                                     (_%descriptor144878%_
                                      _%descriptor144771%_)
                                     (_%prototable144882%_
                                      _%prototable144875%_)
                                     (_%descriptor144893%_
                                      _%descriptor144878%_))
                                (____prototype-table-get
                                 _%prototable144882%_
                                 _%descriptor144893%_))))
                        (if _%$e144902%_
                            (if (eq? _%$e144902%_ '#!void)
                                '#f
                                (if _%$e144902%_
                                    (let ((_%instance144917%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e144902%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance144917%_
                                         _%obj144786%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance144917%_)
                                    '#f))
                            (let ((_%$e144919%_
                                   (try-create-prototype
                                    _%descriptor144771%_
                                    _%klass144776%_
                                    _%obj-klass144789%_)))
                              (if _%$e144919%_
                                  (if _%$e144919%_
                                      (let ((_%instance144928%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e144919%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance144928%_
                                           _%obj144786%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance144928%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor144617%_ _%obj144619%_)
        (let* ((_%klass144622%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144617%_ '1 '#f '#f)))
               (_%klass-id144625%_
                (let () (declare (not safe)) (##type-id _%klass144622%_))))
          (let _%loop144629%_ ((_%obj144632%_ _%obj144619%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144635%_
                    (let () (declare (not safe)) (class-of _%obj144632%_)))
                   (_%obj-klass-id144638%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144635%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144625%_ _%obj-klass-id144638%_))
                  '#t
                  (if (interface-subclass? _%obj-klass144635%_)
                      (let _%loop-interface144646%_ ((_%iface-klass144649%_
                                                      _%obj-klass144635%_))
                        (if _%iface-klass144649%_
                            (let* ((_%tab144652%_
                                    (class-type-interface-table
                                     _%iface-klass144649%_))
                                   (_%$e144694%_
                                    (let* ((_%prototable144655%_ _%tab144652%_)
                                           (_%descriptor144658%_
                                            _%descriptor144617%_)
                                           (_%prototable144662%_
                                            _%prototable144655%_)
                                           (_%descriptor144685%_
                                            _%descriptor144658%_))
                                      (____prototype-table-get
                                       _%prototable144662%_
                                       _%descriptor144685%_))))
                              (if _%$e144694%_
                                  (if (eq? _%$e144694%_ '#!void)
                                      (_%loop-interface144646%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144649%_)))
                                      (if _%$e144694%_ '#t '#f))
                                  (let ((_%$e144704%_
                                         (try-create-prototype
                                          _%descriptor144617%_
                                          _%klass144622%_
                                          _%iface-klass144649%_)))
                                    (if _%$e144704%_
                                        (if _%$e144704%_ '#t '#f)
                                        (_%loop-interface144646%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144649%_)))))))
                            (_%loop144629%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144632%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144715%_
                              (class-type-interface-table _%obj-klass144635%_))
                             (_%$e144744%_
                              (let* ((_%prototable144717%_ _%tab144715%_)
                                     (_%descriptor144720%_
                                      _%descriptor144617%_)
                                     (_%prototable144724%_
                                      _%prototable144717%_)
                                     (_%descriptor144735%_
                                      _%descriptor144720%_))
                                (____prototype-table-get
                                 _%prototable144724%_
                                 _%descriptor144735%_))))
                        (if _%$e144744%_
                            (if (eq? _%$e144744%_ '#!void)
                                '#f
                                (if _%$e144744%_ '#t '#f))
                            (let ((_%$e144757%_
                                   (try-create-prototype
                                    _%descriptor144617%_
                                    _%klass144622%_
                                    _%obj-klass144635%_)))
                              (if _%$e144757%_
                                  (if _%$e144757%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor144461%_
               _%obj144462%_
               _%with-prototype+receiver144463%_
               _%with-receiver144464%_)
        (let* ((_%descriptor144467%_ _%descriptor144461%_)
               (_%with-prototype+receiver144475%_
                _%with-prototype+receiver144463%_)
               (_%with-receiver144483%_ _%with-receiver144464%_)
               (_%klass144492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144467%_ '1 '#f '#f)))
               (_%klass-id144495%_
                (let () (declare (not safe)) (##type-id _%klass144492%_))))
          (let _%loop144499%_ ((_%obj144502%_ _%obj144462%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144505%_
                    (let () (declare (not safe)) (class-of _%obj144502%_)))
                   (_%obj-klass-id144508%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144505%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144495%_ _%obj-klass-id144508%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver144483%_ _%obj144502%_))
                  (if (interface-subclass? _%obj-klass144505%_)
                      (let _%loop-interface144514%_ ((_%iface-klass144517%_
                                                      _%obj-klass144505%_))
                        (if _%iface-klass144517%_
                            (let* ((_%tab144520%_
                                    (class-type-interface-table
                                     _%iface-klass144517%_))
                                   (_%$e144564%_
                                    (let* ((_%prototable144523%_ _%tab144520%_)
                                           (_%descriptor144526%_
                                            _%descriptor144467%_)
                                           (_%prototable144530%_
                                            _%prototable144523%_)
                                           (_%descriptor144555%_
                                            _%descriptor144526%_))
                                      (____prototype-table-get
                                       _%prototable144530%_
                                       _%descriptor144555%_))))
                              (if _%$e144564%_
                                  (if (eq? _%$e144564%_ '#!void)
                                      (_%loop-interface144514%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144517%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver144475%_
                                         _%descriptor144467%_
                                         _%$e144564%_
                                         _%obj144502%_)))
                                  (let ((_%$e144570%_
                                         (try-create-prototype
                                          _%descriptor144467%_
                                          _%klass144492%_
                                          _%iface-klass144517%_)))
                                    (if _%$e144570%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver144475%_
                                           _%descriptor144467%_
                                           _%$e144570%_
                                           _%obj144502%_))
                                        (_%loop-interface144514%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144517%_)))))))
                            (_%loop144499%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144502%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144577%_
                              (class-type-interface-table _%obj-klass144505%_))
                             (_%$e144606%_
                              (let* ((_%prototable144579%_ _%tab144577%_)
                                     (_%descriptor144582%_
                                      _%descriptor144467%_)
                                     (_%prototable144586%_
                                      _%prototable144579%_)
                                     (_%descriptor144597%_
                                      _%descriptor144582%_))
                                (____prototype-table-get
                                 _%prototable144586%_
                                 _%descriptor144597%_))))
                        (if _%$e144606%_
                            (if (eq? _%$e144606%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144475%_
                                   _%descriptor144467%_
                                   '#f
                                   _%obj144502%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144475%_
                                   _%descriptor144467%_
                                   _%$e144606%_
                                   _%obj144502%_)))
                            (let ((_%$e144611%_
                                   (create-prototype
                                    _%descriptor144467%_
                                    _%klass144492%_
                                    _%obj-klass144505%_)))
                              (if _%$e144611%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144475%_
                                     _%descriptor144467%_
                                     _%$e144611%_
                                     _%obj144502%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144475%_
                                     _%descriptor144467%_
                                     '#f
                                     _%obj144502%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor144424%_
               _%obj144425%_
               _%with-prototype+receiver144426%_
               _%with-receiver144427%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor144424%_
               'gerbil/runtime/interface#interface-descriptor::t))
            (let ((_%descriptor144431%_ _%descriptor144424%_))
              (if (procedure? _%with-prototype+receiver144426%_)
                  (let ((_%with-prototype+receiver144441%_
                         _%with-prototype+receiver144426%_))
                    (if (procedure? _%with-receiver144427%_)
                        (let ((_%with-receiver144451%_
                               _%with-receiver144427%_))
                          (__with-prototype
                           _%descriptor144431%_
                           _%obj144425%_
                           _%with-prototype+receiver144441%_
                           _%with-receiver144451%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver144427%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver144426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor144424%_)
              '#!void))))))
