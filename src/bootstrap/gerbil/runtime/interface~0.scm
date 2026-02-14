(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771101397)
  (begin
    (define CastError::t
      (let ((__tmp144973 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp144973
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args144887%_
        (apply make-instance CastError::t _%$args144887%_)))
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
      (lambda (_%where144761%_ _%message144762%_ . _%irritants144763%_)
        (let ((__tmp144974
               (let ((__obj144968
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj144968
                    _%message144762%_
                    'where:
                    _%where144761%_
                    'irritants:
                    _%irritants144763%_))
                 __obj144968)))
          (declare (not safe))
          (raise __tmp144974))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp144976 (list)) (__tmp144975 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp144976
         '(object)
         __tmp144975
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args144758%_
        (apply make-instance interface-instance::t _%$args144758%_)))
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
      (let ((__tmp144978 (list))
            (__tmp144977
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp144978
         '(type methods index)
         __tmp144977
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args144755%_
        (apply make-instance interface-descriptor::t _%$args144755%_)))
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
          (let _%again144733%_ ((_%spin144736%_ '0))
            (if (let ((__tmp144979
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp144979 '0))
                (let ((__tmp144980 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp144980))
                (if (let () (declare (not safe)) (##fx< _%spin144736%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again144733%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin144736%_ '1))))
                    (let ((_%owner144742%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner144742%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner144742%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again144733%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r144750%_
               (let ((_%index144748%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index144748%_ '1)))
                 _%index144748%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r144750%_)))
    (define interface-descriptor:::init!
      (lambda (_%self144714%_ _%type144715%_ _%methods144716%_)
        (let ((_%self144719%_ _%self144714%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144719%_
             _%type144715%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144719%_
             _%methods144716%_
             '2
             '#f
             '#f))
          (let ((__tmp144981 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144719%_
             __tmp144981
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
      (let ((__tmp144983 (list))
            (__tmp144982
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp144983
         '(lock table)
         __tmp144982
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args144589%_
        (apply make-instance prototype-table::t _%$args144589%_)))
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
      (lambda (_%self144575%_)
        (let ((_%self144578%_ _%self144575%_))
          (let ((__tmp144984 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self144578%_ __tmp144984 '1 '#f '#f))
          (let ((__tmp144985
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144578%_
             __tmp144985
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
      (lambda (_%prototable144404%_ _%descriptor144405%_)
        (let* ((_%prototable144408%_ _%prototable144404%_)
               (_%descriptor144416%_ _%descriptor144405%_))
          (declare (not safe))
          (let ((_%lock144426%_
                 (##unchecked-structure-ref _%prototable144408%_ '1 '#f '#f))
                (_%index144427%_
                 (##unchecked-structure-ref _%descriptor144416%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144431%_ ((_%spin144434%_ '0))
                (if (##fx= (##vector-cas! _%lock144426%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144426%_ '1 (current-thread))
                    (if (##fx< _%spin144434%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144431%_ (##fx+ _%spin144434%_ '1)))
                        (let ((_%owner144440%_
                               (##vector-ref _%lock144426%_ '1)))
                          (if (eq? _%owner144440%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144440%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144431%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144448%_
                   (let ((_%tab144446%_
                          (##unchecked-structure-ref
                           _%prototable144408%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144427%_ (vector-length _%tab144446%_))
                         (vector-ref _%tab144446%_ _%index144427%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144426%_ '1 '#f)
                  (##vector-cas! _%lock144426%_ '0 '0 '1)))
              _%$r144448%_)))))
    (define __prototype-table-get
      (lambda (_%prototable142383%_ _%descriptor142384%_)
        (let* ((_%prototable142387%_ _%prototable142383%_)
               (_%descriptor142395%_ _%descriptor142384%_))
          (____prototype-table-get
           _%prototable142387%_
           _%descriptor142395%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable144349%_ _%descriptor144350%_ _%prototype144351%_)
        (let* ((_%prototable144354%_ _%prototable144349%_)
               (_%descriptor144362%_ _%descriptor144350%_))
          (declare (not safe))
          (let ((_%lock144372%_
                 (##unchecked-structure-ref _%prototable144354%_ '1 '#f '#f))
                (_%index144373%_
                 (##unchecked-structure-ref _%descriptor144362%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144377%_ ((_%spin144380%_ '0))
                (if (##fx= (##vector-cas! _%lock144372%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144372%_ '1 (current-thread))
                    (if (##fx< _%spin144380%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144377%_ (##fx+ _%spin144380%_ '1)))
                        (let ((_%owner144386%_
                               (##vector-ref _%lock144372%_ '1)))
                          (if (eq? _%owner144386%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144386%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144377%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144399%_
                   (let ((_%tab144392%_
                          (##unchecked-structure-ref
                           _%prototable144354%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144373%_ (vector-length _%tab144392%_))
                         (vector-set!
                          _%tab144392%_
                          _%index144373%_
                          _%prototype144351%_)
                         (let* ((_%new-size144394%_ __next-interface-index)
                                (_%new-tab144396%_
                                 (##make-vector _%new-size144394%_ '#f)))
                           (subvector-move!
                            _%tab144392%_
                            '0
                            (vector-length _%tab144392%_)
                            _%new-tab144396%_
                            '0)
                           (vector-set!
                            _%new-tab144396%_
                            _%index144373%_
                            _%prototype144351%_)
                           (##unchecked-structure-set!
                            _%prototable144354%_
                            _%new-tab144396%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144372%_ '1 '#f)
                  (##vector-cas! _%lock144372%_ '0 '0 '1)))
              _%$r144399%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable142524%_ _%descriptor142525%_ _%prototype142526%_)
        (let* ((_%prototable142529%_ _%prototable142524%_)
               (_%descriptor142537%_ _%descriptor142525%_))
          (____prototype-table-set!
           _%prototable142529%_
           _%descriptor142537%_
           _%prototype142526%_))))
    (define interface-subclass?
      (lambda (_%klass144342%_)
        (let ((_%super144343144345%_
               (let () (declare (not safe)) (##type-super _%klass144342%_))))
          (if _%super144343144345%_
              (let ((_%super144347%_ _%super144343144345%_))
                (eq? (let () (declare (not safe)) (##type-id _%super144347%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass144334%_)
        (let ((_%$e144336%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass144334%_ '13 '#f '#f))))
          (if _%$e144336%_
              _%$e144336%_
              (let ((_%tab144340%_
                     (let ((__obj144972
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj144972)
                       __obj144972)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass144334%_
                   _%tab144340%_
                   '13
                   '#f
                   '#f))
                _%tab144340%_)))))
    (define create-prototype
      (lambda (_%descriptor144017%_ _%klass144018%_ _%obj-klass144019%_)
        (let ((_%method-table144037%_
               (let ((_%klass144021%_ _%obj-klass144019%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144021%_ 'class))
                     (let ((_%klass144026%_ _%klass144021%_))
                       (declare (not safe))
                       (__specialize-class _%klass144026%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144021%_)
                       '#!void)))))
          (let _%loop144040%_ ((_%rest144043%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144017%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144045%_ '0)
                               (_%methods144047%_ '()))
            (let* ((_%rest144049144057%_ _%rest144043%_)
                   (_%else144051144184%_
                    (lambda ()
                      (let ((_%prototype144100%_
                             (let* ((_%klass144065%_ _%klass144018%_)
                                    (_%k144068%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144045%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144065%_
                                      'class))
                                   (let* ((_%klass144073%_ _%klass144065%_)
                                          (_%k144090%_ _%k144068%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144073%_
                                      _%k144090%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144065%_)
                                     '#!void)))))
                        (let _%loop144103%_ ((_%rest144105%_ _%methods144047%_)
                                             (_%off144106%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144045%_ '1))))
                          (let* ((_%rest144108144116%_ _%rest144105%_)
                                 (_%else144110144165%_
                                  (lambda ()
                                    (let ((_%tab144124%_
                                           (class-type-interface-table
                                            _%obj-klass144019%_)))
                                      (let* ((_%prototable144127%_
                                              _%tab144124%_)
                                             (_%descriptor144130%_
                                              _%descriptor144017%_)
                                             (_%prototype144133%_
                                              _%prototype144100%_)
                                             (_%prototable144137%_
                                              _%prototable144127%_)
                                             (_%descriptor144154%_
                                              _%descriptor144130%_))
                                        (____prototype-table-set!
                                         _%prototable144137%_
                                         _%descriptor144154%_
                                         _%prototype144133%_))
                                      ((lambda (_%prototype144163%_)
                                         _%prototype144163%_)
                                       _%prototype144100%_))))
                                 (_%K144112144172%_
                                  (lambda (_%rest144168%_ _%method144169%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144100%_
                                       _%method144169%_
                                       _%off144106%_
                                       _%klass144018%_
                                       '#f))
                                    (_%loop144103%_
                                     _%rest144168%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144106%_ '1))))))
                            (if (pair? _%rest144108144116%_)
                                (let ((_%hd144113144175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144108144116%_)))
                                      (_%tl144114144177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144108144116%_))))
                                  (let* ((_%method144180%_ _%hd144113144175%_)
                                         (_%rest144182%_ _%tl144114144177%_))
                                    (_%K144112144172%_
                                     _%rest144182%_
                                     _%method144180%_)))
                                (_%else144110144165%_)))))))
                   (_%K144053144322%_
                    (lambda (_%rest144187%_ _%method-spec144188%_)
                      (if (pair? _%method-spec144188%_)
                          (let _%loop-inner144192%_ ((_%methods-rest144195%_
                                                      _%method-spec144188%_))
                            (let* ((_%methods-rest144197144205%_
                                    _%methods-rest144195%_)
                                   (_%else144199144255%_
                                    (lambda ()
                                      (let ((_%tab144213%_
                                             (class-type-interface-table
                                              _%obj-klass144019%_)))
                                        (let* ((_%prototable144215%_
                                                _%tab144213%_)
                                               (_%descriptor144218%_
                                                _%descriptor144017%_)
                                               (_%prototype144221%_ '#!void)
                                               (_%prototable144225%_
                                                _%prototable144215%_)
                                               (_%descriptor144244%_
                                                _%descriptor144218%_))
                                          (____prototype-table-set!
                                           _%prototable144225%_
                                           _%descriptor144244%_
                                           _%prototype144221%_))
                                        ((lambda (_%method144253%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144017%_
                                            'class:
                                            _%obj-klass144019%_
                                            'method:
                                            _%method144253%_)
                                           '#!void)
                                         _%method-spec144188%_))))
                                   (_%K144201144268%_
                                    (lambda (_%methods-rest144258%_
                                             _%method-name144259%_)
                                      (let ((_%$e144262%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144037%_
                                                _%method-name144259%_
                                                '#f))))
                                        (if _%$e144262%_
                                            ((lambda (_%method144265%_)
                                               (_%loop144040%_
                                                _%rest144187%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144045%_ '1))
                                                (cons _%method144265%_
                                                      _%methods144047%_)))
                                             _%$e144262%_)
                                            (_%loop-inner144192%_
                                             _%methods-rest144258%_))))))
                              (if (pair? _%methods-rest144197144205%_)
                                  (let ((_%hd144202144271%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144197144205%_)))
                                        (_%tl144203144273%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144197144205%_))))
                                    (let* ((_%method-name144276%_
                                            _%hd144202144271%_)
                                           (_%methods-rest144278%_
                                            _%tl144203144273%_))
                                      (_%K144201144268%_
                                       _%methods-rest144278%_
                                       _%method-name144276%_)))
                                  (_%else144199144255%_))))
                          (let ((_%$e144280%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144037%_
                                    _%method-spec144188%_
                                    '#f))))
                            (if _%$e144280%_
                                ((lambda (_%method144283%_)
                                   (_%loop144040%_
                                    _%rest144187%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144045%_ '1))
                                    (cons _%method144283%_ _%methods144047%_)))
                                 _%$e144280%_)
                                (let ((_%tab144286%_
                                       (class-type-interface-table
                                        _%obj-klass144019%_)))
                                  (let* ((_%prototable144288%_ _%tab144286%_)
                                         (_%descriptor144291%_
                                          _%descriptor144017%_)
                                         (_%prototype144294%_ '#!void)
                                         (_%prototable144298%_
                                          _%prototable144288%_)
                                         (_%descriptor144311%_
                                          _%descriptor144291%_))
                                    (____prototype-table-set!
                                     _%prototable144298%_
                                     _%descriptor144311%_
                                     _%prototype144294%_))
                                  ((lambda (_%method144320%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144017%_
                                      'class:
                                      _%obj-klass144019%_
                                      'method:
                                      _%method144320%_)
                                     '#!void)
                                   _%method-spec144188%_))))))))
              (if (pair? _%rest144049144057%_)
                  (let ((_%hd144054144325%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144049144057%_)))
                        (_%tl144055144327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144049144057%_))))
                    (let* ((_%method-spec144330%_ _%hd144054144325%_)
                           (_%rest144332%_ _%tl144055144327%_))
                      (_%K144053144322%_
                       _%rest144332%_
                       _%method-spec144330%_)))
                  (_%else144051144184%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor143700%_ _%klass143701%_ _%obj-klass143702%_)
        (let ((_%method-table143720%_
               (let ((_%klass143704%_ _%obj-klass143702%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143704%_ 'class))
                     (let ((_%klass143709%_ _%klass143704%_))
                       (declare (not safe))
                       (__specialize-class _%klass143709%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143704%_)
                       '#!void)))))
          (let _%loop143723%_ ((_%rest143726%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143700%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143728%_ '0)
                               (_%methods143730%_ '()))
            (let* ((_%rest143732143740%_ _%rest143726%_)
                   (_%else143734143867%_
                    (lambda ()
                      (let ((_%prototype143783%_
                             (let* ((_%klass143748%_ _%klass143701%_)
                                    (_%k143751%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143728%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143748%_
                                      'class))
                                   (let* ((_%klass143756%_ _%klass143748%_)
                                          (_%k143773%_ _%k143751%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143756%_
                                      _%k143773%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143748%_)
                                     '#!void)))))
                        (let _%loop143786%_ ((_%rest143788%_ _%methods143730%_)
                                             (_%off143789%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143728%_ '1))))
                          (let* ((_%rest143791143799%_ _%rest143788%_)
                                 (_%else143793143848%_
                                  (lambda ()
                                    (let ((_%tab143807%_
                                           (class-type-interface-table
                                            _%obj-klass143702%_)))
                                      (let* ((_%prototable143810%_
                                              _%tab143807%_)
                                             (_%descriptor143813%_
                                              _%descriptor143700%_)
                                             (_%prototype143816%_
                                              _%prototype143783%_)
                                             (_%prototable143820%_
                                              _%prototable143810%_)
                                             (_%descriptor143837%_
                                              _%descriptor143813%_))
                                        (____prototype-table-set!
                                         _%prototable143820%_
                                         _%descriptor143837%_
                                         _%prototype143816%_))
                                      ((lambda (_%prototype143846%_)
                                         _%prototype143846%_)
                                       _%prototype143783%_))))
                                 (_%K143795143855%_
                                  (lambda (_%rest143851%_ _%method143852%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143783%_
                                       _%method143852%_
                                       _%off143789%_
                                       _%klass143701%_
                                       '#f))
                                    (_%loop143786%_
                                     _%rest143851%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143789%_ '1))))))
                            (if (pair? _%rest143791143799%_)
                                (let ((_%hd143796143858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143791143799%_)))
                                      (_%tl143797143860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143791143799%_))))
                                  (let* ((_%method143863%_ _%hd143796143858%_)
                                         (_%rest143865%_ _%tl143797143860%_))
                                    (_%K143795143855%_
                                     _%rest143865%_
                                     _%method143863%_)))
                                (_%else143793143848%_)))))))
                   (_%K143736144005%_
                    (lambda (_%rest143870%_ _%method-spec143871%_)
                      (if (pair? _%method-spec143871%_)
                          (let _%loop-inner143875%_ ((_%methods-rest143878%_
                                                      _%method-spec143871%_))
                            (let* ((_%methods-rest143880143888%_
                                    _%methods-rest143878%_)
                                   (_%else143882143938%_
                                    (lambda ()
                                      (let ((_%tab143896%_
                                             (class-type-interface-table
                                              _%obj-klass143702%_)))
                                        (let* ((_%prototable143898%_
                                                _%tab143896%_)
                                               (_%descriptor143901%_
                                                _%descriptor143700%_)
                                               (_%prototype143904%_ '#!void)
                                               (_%prototable143908%_
                                                _%prototable143898%_)
                                               (_%descriptor143927%_
                                                _%descriptor143901%_))
                                          (____prototype-table-set!
                                           _%prototable143908%_
                                           _%descriptor143927%_
                                           _%prototype143904%_))
                                        ((lambda (_%method143936%_) '#f)
                                         _%method-spec143871%_))))
                                   (_%K143884143951%_
                                    (lambda (_%methods-rest143941%_
                                             _%method-name143942%_)
                                      (let ((_%$e143945%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143720%_
                                                _%method-name143942%_
                                                '#f))))
                                        (if _%$e143945%_
                                            ((lambda (_%method143948%_)
                                               (_%loop143723%_
                                                _%rest143870%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143728%_ '1))
                                                (cons _%method143948%_
                                                      _%methods143730%_)))
                                             _%$e143945%_)
                                            (_%loop-inner143875%_
                                             _%methods-rest143941%_))))))
                              (if (pair? _%methods-rest143880143888%_)
                                  (let ((_%hd143885143954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143880143888%_)))
                                        (_%tl143886143956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143880143888%_))))
                                    (let* ((_%method-name143959%_
                                            _%hd143885143954%_)
                                           (_%methods-rest143961%_
                                            _%tl143886143956%_))
                                      (_%K143884143951%_
                                       _%methods-rest143961%_
                                       _%method-name143959%_)))
                                  (_%else143882143938%_))))
                          (let ((_%$e143963%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143720%_
                                    _%method-spec143871%_
                                    '#f))))
                            (if _%$e143963%_
                                ((lambda (_%method143966%_)
                                   (_%loop143723%_
                                    _%rest143870%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143728%_ '1))
                                    (cons _%method143966%_ _%methods143730%_)))
                                 _%$e143963%_)
                                (let ((_%tab143969%_
                                       (class-type-interface-table
                                        _%obj-klass143702%_)))
                                  (let* ((_%prototable143971%_ _%tab143969%_)
                                         (_%descriptor143974%_
                                          _%descriptor143700%_)
                                         (_%prototype143977%_ '#!void)
                                         (_%prototable143981%_
                                          _%prototable143971%_)
                                         (_%descriptor143994%_
                                          _%descriptor143974%_))
                                    (____prototype-table-set!
                                     _%prototable143981%_
                                     _%descriptor143994%_
                                     _%prototype143977%_))
                                  ((lambda (_%method144003%_) '#f)
                                   _%method-spec143871%_))))))))
              (if (pair? _%rest143732143740%_)
                  (let ((_%hd143737144008%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143732143740%_)))
                        (_%tl143738144010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143732143740%_))))
                    (let* ((_%method-spec144013%_ _%hd143737144008%_)
                           (_%rest144015%_ _%tl143738144010%_))
                      (_%K143736144005%_
                       _%rest144015%_
                       _%method-spec144013%_)))
                  (_%else143734143867%_)))))))
    (define cast
      (lambda (_%descriptor143542%_ _%obj143544%_)
        (let* ((_%klass143547%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143542%_ '1 '#f '#f)))
               (_%klass-id143550%_
                (let () (declare (not safe)) (##type-id _%klass143547%_))))
          (let _%loop143554%_ ((_%obj143557%_ _%obj143544%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143560%_
                    (let () (declare (not safe)) (class-of _%obj143557%_)))
                   (_%obj-klass-id143563%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143560%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143550%_ _%obj-klass-id143563%_))
                  ((lambda (_%obj143568%_) _%obj143568%_) _%obj143557%_)
                  (if (interface-subclass? _%obj-klass143560%_)
                      (let* ((_%tab143571%_
                              (class-type-interface-table _%obj-klass143560%_))
                             (_%$e143611%_
                              (let* ((_%prototable143574%_ _%tab143571%_)
                                     (_%descriptor143577%_
                                      _%descriptor143542%_)
                                     (_%prototable143581%_
                                      _%prototable143574%_)
                                     (_%descriptor143602%_
                                      _%descriptor143577%_))
                                (____prototype-table-get
                                 _%prototable143581%_
                                 _%descriptor143602%_))))
                        (if _%$e143611%_
                            ((lambda (_%prototype143614%_)
                               (if (eq? _%prototype143614%_ '#!void)
                                   (_%loop143554%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143557%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143617%_
                                             _%prototype143618%_
                                             _%obj143619%_)
                                      (if _%prototype143618%_
                                          (let ((_%instance143621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143618%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143621%_
                                               _%obj143619%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143621%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143617%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143619%_)))
                                            '#!void)))
                                    _%descriptor143542%_
                                    _%prototype143614%_
                                    _%obj143557%_)))
                             _%$e143611%_)
                            (let ((_%$e143623%_
                                   (try-create-prototype
                                    _%descriptor143542%_
                                    _%klass143547%_
                                    _%obj-klass143560%_)))
                              (if _%$e143623%_
                                  ((lambda (_%prototype143626%_)
                                     ((lambda (_%descriptor143628%_
                                               _%prototype143629%_
                                               _%obj143630%_)
                                        (if _%prototype143629%_
                                            (let ((_%instance143632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143629%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143632%_
                                                 _%obj143630%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143632%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143628%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143630%_)))
                                              '#!void)))
                                      _%descriptor143542%_
                                      _%prototype143626%_
                                      _%obj143557%_))
                                   _%$e143623%_)
                                  (_%loop143554%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143557%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143636%_
                              (class-type-interface-table _%obj-klass143560%_))
                             (_%$e143665%_
                              (let* ((_%prototable143638%_ _%tab143636%_)
                                     (_%descriptor143641%_
                                      _%descriptor143542%_)
                                     (_%prototable143645%_
                                      _%prototable143638%_)
                                     (_%descriptor143656%_
                                      _%descriptor143641%_))
                                (____prototype-table-get
                                 _%prototable143645%_
                                 _%descriptor143656%_))))
                        (if _%$e143665%_
                            ((lambda (_%prototype143668%_)
                               (if (eq? _%prototype143668%_ '#!void)
                                   ((lambda (_%descriptor143670%_
                                             _%prototype143671%_
                                             _%obj143672%_)
                                      (if _%prototype143671%_
                                          (let ((_%instance143674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143671%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143674%_
                                               _%obj143672%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143674%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143670%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143672%_)))
                                            '#!void)))
                                    _%descriptor143542%_
                                    '#f
                                    _%obj143557%_)
                                   ((lambda (_%descriptor143676%_
                                             _%prototype143677%_
                                             _%obj143678%_)
                                      (if _%prototype143677%_
                                          (let ((_%instance143680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143677%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143680%_
                                               _%obj143678%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143680%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143676%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143678%_)))
                                            '#!void)))
                                    _%descriptor143542%_
                                    _%prototype143668%_
                                    _%obj143557%_)))
                             _%$e143665%_)
                            (let ((_%$e143682%_
                                   (create-prototype
                                    _%descriptor143542%_
                                    _%klass143547%_
                                    _%obj-klass143560%_)))
                              (if _%$e143682%_
                                  ((lambda (_%prototype143685%_)
                                     ((lambda (_%descriptor143687%_
                                               _%prototype143688%_
                                               _%obj143689%_)
                                        (if _%prototype143688%_
                                            (let ((_%instance143691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143688%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143691%_
                                                 _%obj143689%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143691%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143687%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143689%_)))
                                              '#!void)))
                                      _%descriptor143542%_
                                      _%prototype143685%_
                                      _%obj143557%_))
                                   _%$e143682%_)
                                  ((lambda (_%descriptor143694%_
                                            _%prototype143695%_
                                            _%obj143696%_)
                                     (if _%prototype143695%_
                                         (let ((_%instance143698%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143695%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143698%_
                                              _%obj143696%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143698%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor143694%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj143696%_)))
                                           '#!void)))
                                   _%descriptor143542%_
                                   '#f
                                   _%obj143557%_))))))))))))
    (define try-cast
      (lambda (_%descriptor143384%_ _%obj143386%_)
        (let* ((_%klass143389%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143384%_ '1 '#f '#f)))
               (_%klass-id143392%_
                (let () (declare (not safe)) (##type-id _%klass143389%_))))
          (let _%loop143396%_ ((_%obj143399%_ _%obj143386%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143402%_
                    (let () (declare (not safe)) (class-of _%obj143399%_)))
                   (_%obj-klass-id143405%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143402%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143392%_ _%obj-klass-id143405%_))
                  ((lambda (_%obj143410%_) _%obj143410%_) _%obj143399%_)
                  (if (interface-subclass? _%obj-klass143402%_)
                      (let* ((_%tab143413%_
                              (class-type-interface-table _%obj-klass143402%_))
                             (_%$e143453%_
                              (let* ((_%prototable143416%_ _%tab143413%_)
                                     (_%descriptor143419%_
                                      _%descriptor143384%_)
                                     (_%prototable143423%_
                                      _%prototable143416%_)
                                     (_%descriptor143444%_
                                      _%descriptor143419%_))
                                (____prototype-table-get
                                 _%prototable143423%_
                                 _%descriptor143444%_))))
                        (if _%$e143453%_
                            ((lambda (_%prototype143456%_)
                               (if (eq? _%prototype143456%_ '#!void)
                                   (_%loop143396%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143399%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143459%_
                                             _%prototype143460%_
                                             _%obj143461%_)
                                      (if _%prototype143460%_
                                          (let ((_%instance143463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143460%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143463%_
                                               _%obj143461%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143463%_)
                                          '#f))
                                    _%descriptor143384%_
                                    _%prototype143456%_
                                    _%obj143399%_)))
                             _%$e143453%_)
                            (let ((_%$e143465%_
                                   (try-create-prototype
                                    _%descriptor143384%_
                                    _%klass143389%_
                                    _%obj-klass143402%_)))
                              (if _%$e143465%_
                                  ((lambda (_%prototype143468%_)
                                     ((lambda (_%descriptor143470%_
                                               _%prototype143471%_
                                               _%obj143472%_)
                                        (if _%prototype143471%_
                                            (let ((_%instance143474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143471%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143474%_
                                                 _%obj143472%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143474%_)
                                            '#f))
                                      _%descriptor143384%_
                                      _%prototype143468%_
                                      _%obj143399%_))
                                   _%$e143465%_)
                                  (_%loop143396%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143399%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143478%_
                              (class-type-interface-table _%obj-klass143402%_))
                             (_%$e143507%_
                              (let* ((_%prototable143480%_ _%tab143478%_)
                                     (_%descriptor143483%_
                                      _%descriptor143384%_)
                                     (_%prototable143487%_
                                      _%prototable143480%_)
                                     (_%descriptor143498%_
                                      _%descriptor143483%_))
                                (____prototype-table-get
                                 _%prototable143487%_
                                 _%descriptor143498%_))))
                        (if _%$e143507%_
                            ((lambda (_%prototype143510%_)
                               (if (eq? _%prototype143510%_ '#!void)
                                   ((lambda (_%descriptor143512%_
                                             _%prototype143513%_
                                             _%obj143514%_)
                                      (if _%prototype143513%_
                                          (let ((_%instance143516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143513%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143516%_
                                               _%obj143514%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143516%_)
                                          '#f))
                                    _%descriptor143384%_
                                    '#f
                                    _%obj143399%_)
                                   ((lambda (_%descriptor143518%_
                                             _%prototype143519%_
                                             _%obj143520%_)
                                      (if _%prototype143519%_
                                          (let ((_%instance143522%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143519%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143522%_
                                               _%obj143520%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143522%_)
                                          '#f))
                                    _%descriptor143384%_
                                    _%prototype143510%_
                                    _%obj143399%_)))
                             _%$e143507%_)
                            (let ((_%$e143524%_
                                   (try-create-prototype
                                    _%descriptor143384%_
                                    _%klass143389%_
                                    _%obj-klass143402%_)))
                              (if _%$e143524%_
                                  ((lambda (_%prototype143527%_)
                                     ((lambda (_%descriptor143529%_
                                               _%prototype143530%_
                                               _%obj143531%_)
                                        (if _%prototype143530%_
                                            (let ((_%instance143533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143530%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143533%_
                                                 _%obj143531%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143533%_)
                                            '#f))
                                      _%descriptor143384%_
                                      _%prototype143527%_
                                      _%obj143399%_))
                                   _%$e143524%_)
                                  ((lambda (_%descriptor143536%_
                                            _%prototype143537%_
                                            _%obj143538%_)
                                     (if _%prototype143537%_
                                         (let ((_%instance143540%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143537%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143540%_
                                              _%obj143538%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143540%_)
                                         '#f))
                                   _%descriptor143384%_
                                   '#f
                                   _%obj143399%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor143238%_ _%obj143240%_)
        (let* ((_%klass143243%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143238%_ '1 '#f '#f)))
               (_%klass-id143246%_
                (let () (declare (not safe)) (##type-id _%klass143243%_))))
          (let _%loop143250%_ ((_%obj143253%_ _%obj143240%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143256%_
                    (let () (declare (not safe)) (class-of _%obj143253%_)))
                   (_%obj-klass-id143259%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143256%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143246%_ _%obj-klass-id143259%_))
                  ((lambda (_%obj143264%_) '#t) _%obj143253%_)
                  (if (interface-subclass? _%obj-klass143256%_)
                      (let* ((_%tab143267%_
                              (class-type-interface-table _%obj-klass143256%_))
                             (_%$e143307%_
                              (let* ((_%prototable143270%_ _%tab143267%_)
                                     (_%descriptor143273%_
                                      _%descriptor143238%_)
                                     (_%prototable143277%_
                                      _%prototable143270%_)
                                     (_%descriptor143298%_
                                      _%descriptor143273%_))
                                (____prototype-table-get
                                 _%prototable143277%_
                                 _%descriptor143298%_))))
                        (if _%$e143307%_
                            ((lambda (_%prototype143310%_)
                               (if (eq? _%prototype143310%_ '#!void)
                                   (_%loop143250%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143253%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143313%_
                                             _%prototype143314%_
                                             _%obj143315%_)
                                      (if _%prototype143314%_ '#t '#f))
                                    _%descriptor143238%_
                                    _%prototype143310%_
                                    _%obj143253%_)))
                             _%$e143307%_)
                            (let ((_%$e143317%_
                                   (try-create-prototype
                                    _%descriptor143238%_
                                    _%klass143243%_
                                    _%obj-klass143256%_)))
                              (if _%$e143317%_
                                  ((lambda (_%prototype143320%_)
                                     ((lambda (_%descriptor143322%_
                                               _%prototype143323%_
                                               _%obj143324%_)
                                        (if _%prototype143323%_ '#t '#f))
                                      _%descriptor143238%_
                                      _%prototype143320%_
                                      _%obj143253%_))
                                   _%$e143317%_)
                                  (_%loop143250%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143253%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143328%_
                              (class-type-interface-table _%obj-klass143256%_))
                             (_%$e143357%_
                              (let* ((_%prototable143330%_ _%tab143328%_)
                                     (_%descriptor143333%_
                                      _%descriptor143238%_)
                                     (_%prototable143337%_
                                      _%prototable143330%_)
                                     (_%descriptor143348%_
                                      _%descriptor143333%_))
                                (____prototype-table-get
                                 _%prototable143337%_
                                 _%descriptor143348%_))))
                        (if _%$e143357%_
                            ((lambda (_%prototype143360%_)
                               (if (eq? _%prototype143360%_ '#!void)
                                   ((lambda (_%descriptor143362%_
                                             _%prototype143363%_
                                             _%obj143364%_)
                                      (if _%prototype143363%_ '#t '#f))
                                    _%descriptor143238%_
                                    '#f
                                    _%obj143253%_)
                                   ((lambda (_%descriptor143366%_
                                             _%prototype143367%_
                                             _%obj143368%_)
                                      (if _%prototype143367%_ '#t '#f))
                                    _%descriptor143238%_
                                    _%prototype143360%_
                                    _%obj143253%_)))
                             _%$e143357%_)
                            (let ((_%$e143370%_
                                   (try-create-prototype
                                    _%descriptor143238%_
                                    _%klass143243%_
                                    _%obj-klass143256%_)))
                              (if _%$e143370%_
                                  ((lambda (_%prototype143373%_)
                                     ((lambda (_%descriptor143375%_
                                               _%prototype143376%_
                                               _%obj143377%_)
                                        (if _%prototype143376%_ '#t '#f))
                                      _%descriptor143238%_
                                      _%prototype143373%_
                                      _%obj143253%_))
                                   _%$e143370%_)
                                  ((lambda (_%descriptor143380%_
                                            _%prototype143381%_
                                            _%obj143382%_)
                                     (if _%prototype143381%_ '#t '#f))
                                   _%descriptor143238%_
                                   '#f
                                   _%obj143253%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor143090%_
               _%obj143091%_
               _%with-prototype+receiver143092%_
               _%with-receiver143093%_)
        (let* ((_%descriptor143096%_ _%descriptor143090%_)
               (_%with-prototype+receiver143104%_
                _%with-prototype+receiver143092%_)
               (_%with-receiver143112%_ _%with-receiver143093%_)
               (_%klass143121%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143096%_ '1 '#f '#f)))
               (_%klass-id143124%_
                (let () (declare (not safe)) (##type-id _%klass143121%_))))
          (let _%loop143128%_ ((_%obj143131%_ _%obj143091%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143134%_
                    (let () (declare (not safe)) (class-of _%obj143131%_)))
                   (_%obj-klass-id143137%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143134%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143124%_ _%obj-klass-id143137%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver143112%_ _%obj143131%_))
                  (if (interface-subclass? _%obj-klass143134%_)
                      (let* ((_%tab143143%_
                              (class-type-interface-table _%obj-klass143134%_))
                             (_%$e143185%_
                              (let* ((_%prototable143146%_ _%tab143143%_)
                                     (_%descriptor143149%_
                                      _%descriptor143096%_)
                                     (_%prototable143153%_
                                      _%prototable143146%_)
                                     (_%descriptor143176%_
                                      _%descriptor143149%_))
                                (____prototype-table-get
                                 _%prototable143153%_
                                 _%descriptor143176%_))))
                        (if _%$e143185%_
                            ((lambda (_%prototype143188%_)
                               (if (eq? _%prototype143188%_ '#!void)
                                   (_%loop143128%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143131%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143104%_
                                      _%descriptor143096%_
                                      _%prototype143188%_
                                      _%obj143131%_))))
                             _%$e143185%_)
                            (let ((_%$e143191%_
                                   (try-create-prototype
                                    _%descriptor143096%_
                                    _%klass143121%_
                                    _%obj-klass143134%_)))
                              (if _%$e143191%_
                                  ((lambda (_%prototype143194%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143104%_
                                        _%descriptor143096%_
                                        _%prototype143194%_
                                        _%obj143131%_)))
                                   _%$e143191%_)
                                  (_%loop143128%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143131%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143198%_
                              (class-type-interface-table _%obj-klass143134%_))
                             (_%$e143227%_
                              (let* ((_%prototable143200%_ _%tab143198%_)
                                     (_%descriptor143203%_
                                      _%descriptor143096%_)
                                     (_%prototable143207%_
                                      _%prototable143200%_)
                                     (_%descriptor143218%_
                                      _%descriptor143203%_))
                                (____prototype-table-get
                                 _%prototable143207%_
                                 _%descriptor143218%_))))
                        (if _%$e143227%_
                            ((lambda (_%prototype143230%_)
                               (if (eq? _%prototype143230%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143104%_
                                      _%descriptor143096%_
                                      '#f
                                      _%obj143131%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143104%_
                                      _%descriptor143096%_
                                      _%prototype143230%_
                                      _%obj143131%_))))
                             _%$e143227%_)
                            (let ((_%$e143232%_
                                   (create-prototype
                                    _%descriptor143096%_
                                    _%klass143121%_
                                    _%obj-klass143134%_)))
                              (if _%$e143232%_
                                  ((lambda (_%prototype143235%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143104%_
                                        _%descriptor143096%_
                                        _%prototype143235%_
                                        _%obj143131%_)))
                                   _%$e143232%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver143104%_
                                     _%descriptor143096%_
                                     '#f
                                     _%obj143131%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143053%_
               _%obj143054%_
               _%with-prototype+receiver143055%_
               _%with-receiver143056%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143053%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor143060%_ _%descriptor143053%_))
              (if (procedure? _%with-prototype+receiver143055%_)
                  (let ((_%with-prototype+receiver143070%_
                         _%with-prototype+receiver143055%_))
                    (if (procedure? _%with-receiver143056%_)
                        (let ((_%with-receiver143080%_
                               _%with-receiver143056%_))
                          (__with-prototype
                           _%descriptor143060%_
                           _%obj143054%_
                           _%with-prototype+receiver143070%_
                           _%with-receiver143080%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143056%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143055%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143053%_)
              '#!void))))))
