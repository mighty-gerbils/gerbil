(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771104503)
  (begin
    (define CastError::t
      (let ((__tmp145077 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp145077
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args144991%_
        (apply make-instance CastError::t _%$args144991%_)))
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
      (lambda (_%where144865%_ _%message144866%_ . _%irritants144867%_)
        (let ((__tmp145078
               (let ((__obj145072
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj145072
                    _%message144866%_
                    'where:
                    _%where144865%_
                    'irritants:
                    _%irritants144867%_))
                 __obj145072)))
          (declare (not safe))
          (raise __tmp145078))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp145080 (list)) (__tmp145079 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp145080
         '(object)
         __tmp145079
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args144862%_
        (apply make-instance interface-instance::t _%$args144862%_)))
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
      (let ((__tmp145082 (list))
            (__tmp145081
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp145082
         '(type methods index)
         __tmp145081
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args144859%_
        (apply make-instance interface-descriptor::t _%$args144859%_)))
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
          (let _%again144837%_ ((_%spin144840%_ '0))
            (if (let ((__tmp145083
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp145083 '0))
                (let ((__tmp145084 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp145084))
                (if (let () (declare (not safe)) (##fx< _%spin144840%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again144837%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin144840%_ '1))))
                    (let ((_%owner144846%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner144846%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner144846%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again144837%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r144854%_
               (let ((_%index144852%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index144852%_ '1)))
                 _%index144852%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r144854%_)))
    (define interface-descriptor:::init!
      (lambda (_%self144818%_ _%type144819%_ _%methods144820%_)
        (let ((_%self144823%_ _%self144818%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144823%_
             _%type144819%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144823%_
             _%methods144820%_
             '2
             '#f
             '#f))
          (let ((__tmp145085 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144823%_
             __tmp145085
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
      (let ((__tmp145087 (list))
            (__tmp145086
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp145087
         '(lock table)
         __tmp145086
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args144693%_
        (apply make-instance prototype-table::t _%$args144693%_)))
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
      (lambda (_%self144679%_)
        (let ((_%self144682%_ _%self144679%_))
          (let ((__tmp145088 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self144682%_ __tmp145088 '1 '#f '#f))
          (let ((__tmp145089
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144682%_
             __tmp145089
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
      (lambda (_%prototable144508%_ _%descriptor144509%_)
        (let* ((_%prototable144512%_ _%prototable144508%_)
               (_%descriptor144520%_ _%descriptor144509%_))
          (declare (not safe))
          (let ((_%lock144530%_
                 (##unchecked-structure-ref _%prototable144512%_ '1 '#f '#f))
                (_%index144531%_
                 (##unchecked-structure-ref _%descriptor144520%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144535%_ ((_%spin144538%_ '0))
                (if (##fx= (##vector-cas! _%lock144530%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144530%_ '1 (current-thread))
                    (if (##fx< _%spin144538%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144535%_ (##fx+ _%spin144538%_ '1)))
                        (let ((_%owner144544%_
                               (##vector-ref _%lock144530%_ '1)))
                          (if (eq? _%owner144544%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144544%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144535%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144552%_
                   (let ((_%tab144550%_
                          (##unchecked-structure-ref
                           _%prototable144512%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144531%_ (vector-length _%tab144550%_))
                         (vector-ref _%tab144550%_ _%index144531%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144530%_ '1 '#f)
                  (##vector-cas! _%lock144530%_ '0 '0 '1)))
              _%$r144552%_)))))
    (define __prototype-table-get
      (lambda (_%prototable142487%_ _%descriptor142488%_)
        (let* ((_%prototable142491%_ _%prototable142487%_)
               (_%descriptor142499%_ _%descriptor142488%_))
          (____prototype-table-get
           _%prototable142491%_
           _%descriptor142499%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable144453%_ _%descriptor144454%_ _%prototype144455%_)
        (let* ((_%prototable144458%_ _%prototable144453%_)
               (_%descriptor144466%_ _%descriptor144454%_))
          (declare (not safe))
          (let ((_%lock144476%_
                 (##unchecked-structure-ref _%prototable144458%_ '1 '#f '#f))
                (_%index144477%_
                 (##unchecked-structure-ref _%descriptor144466%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144481%_ ((_%spin144484%_ '0))
                (if (##fx= (##vector-cas! _%lock144476%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144476%_ '1 (current-thread))
                    (if (##fx< _%spin144484%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144481%_ (##fx+ _%spin144484%_ '1)))
                        (let ((_%owner144490%_
                               (##vector-ref _%lock144476%_ '1)))
                          (if (eq? _%owner144490%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144490%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144481%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144503%_
                   (let ((_%tab144496%_
                          (##unchecked-structure-ref
                           _%prototable144458%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144477%_ (vector-length _%tab144496%_))
                         (vector-set!
                          _%tab144496%_
                          _%index144477%_
                          _%prototype144455%_)
                         (let* ((_%new-size144498%_ __next-interface-index)
                                (_%new-tab144500%_
                                 (##make-vector _%new-size144498%_ '#f)))
                           (subvector-move!
                            _%tab144496%_
                            '0
                            (vector-length _%tab144496%_)
                            _%new-tab144500%_
                            '0)
                           (vector-set!
                            _%new-tab144500%_
                            _%index144477%_
                            _%prototype144455%_)
                           (##unchecked-structure-set!
                            _%prototable144458%_
                            _%new-tab144500%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144476%_ '1 '#f)
                  (##vector-cas! _%lock144476%_ '0 '0 '1)))
              _%$r144503%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable142628%_ _%descriptor142629%_ _%prototype142630%_)
        (let* ((_%prototable142633%_ _%prototable142628%_)
               (_%descriptor142641%_ _%descriptor142629%_))
          (____prototype-table-set!
           _%prototable142633%_
           _%descriptor142641%_
           _%prototype142630%_))))
    (define interface-subclass?
      (lambda (_%klass144446%_)
        (let ((_%super144447144449%_
               (let () (declare (not safe)) (##type-super _%klass144446%_))))
          (if _%super144447144449%_
              (let ((_%super144451%_ _%super144447144449%_))
                (eq? (let () (declare (not safe)) (##type-id _%super144451%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass144438%_)
        (let ((_%$e144440%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass144438%_ '13 '#f '#f))))
          (if _%$e144440%_
              _%$e144440%_
              (let ((_%tab144444%_
                     (let ((__obj145076
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj145076)
                       __obj145076)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass144438%_
                   _%tab144444%_
                   '13
                   '#f
                   '#f))
                _%tab144444%_)))))
    (define create-prototype
      (lambda (_%descriptor144121%_ _%klass144122%_ _%obj-klass144123%_)
        (let ((_%method-table144141%_
               (let ((_%klass144125%_ _%obj-klass144123%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144125%_ 'class))
                     (let ((_%klass144130%_ _%klass144125%_))
                       (declare (not safe))
                       (__specialize-class _%klass144130%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144125%_)
                       '#!void)))))
          (let _%loop144144%_ ((_%rest144147%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144121%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144149%_ '0)
                               (_%methods144151%_ '()))
            (let* ((_%rest144153144161%_ _%rest144147%_)
                   (_%else144155144288%_
                    (lambda ()
                      (let ((_%prototype144204%_
                             (let* ((_%klass144169%_ _%klass144122%_)
                                    (_%k144172%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144149%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144169%_
                                      'class))
                                   (let* ((_%klass144177%_ _%klass144169%_)
                                          (_%k144194%_ _%k144172%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144177%_
                                      _%k144194%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144169%_)
                                     '#!void)))))
                        (let _%loop144207%_ ((_%rest144209%_ _%methods144151%_)
                                             (_%off144210%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144149%_ '1))))
                          (let* ((_%rest144212144220%_ _%rest144209%_)
                                 (_%else144214144269%_
                                  (lambda ()
                                    (let ((_%tab144228%_
                                           (class-type-interface-table
                                            _%obj-klass144123%_)))
                                      (let* ((_%prototable144231%_
                                              _%tab144228%_)
                                             (_%descriptor144234%_
                                              _%descriptor144121%_)
                                             (_%prototype144237%_
                                              _%prototype144204%_)
                                             (_%prototable144241%_
                                              _%prototable144231%_)
                                             (_%descriptor144258%_
                                              _%descriptor144234%_))
                                        (____prototype-table-set!
                                         _%prototable144241%_
                                         _%descriptor144258%_
                                         _%prototype144237%_))
                                      ((lambda (_%prototype144267%_)
                                         _%prototype144267%_)
                                       _%prototype144204%_))))
                                 (_%K144216144276%_
                                  (lambda (_%rest144272%_ _%method144273%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144204%_
                                       _%method144273%_
                                       _%off144210%_
                                       _%klass144122%_
                                       '#f))
                                    (_%loop144207%_
                                     _%rest144272%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144210%_ '1))))))
                            (if (pair? _%rest144212144220%_)
                                (let ((_%hd144217144279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144212144220%_)))
                                      (_%tl144218144281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144212144220%_))))
                                  (let* ((_%method144284%_ _%hd144217144279%_)
                                         (_%rest144286%_ _%tl144218144281%_))
                                    (_%K144216144276%_
                                     _%rest144286%_
                                     _%method144284%_)))
                                (_%else144214144269%_)))))))
                   (_%K144157144426%_
                    (lambda (_%rest144291%_ _%method-spec144292%_)
                      (if (pair? _%method-spec144292%_)
                          (let _%loop-inner144296%_ ((_%methods-rest144299%_
                                                      _%method-spec144292%_))
                            (let* ((_%methods-rest144301144309%_
                                    _%methods-rest144299%_)
                                   (_%else144303144359%_
                                    (lambda ()
                                      (let ((_%tab144317%_
                                             (class-type-interface-table
                                              _%obj-klass144123%_)))
                                        (let* ((_%prototable144319%_
                                                _%tab144317%_)
                                               (_%descriptor144322%_
                                                _%descriptor144121%_)
                                               (_%prototype144325%_ '#!void)
                                               (_%prototable144329%_
                                                _%prototable144319%_)
                                               (_%descriptor144348%_
                                                _%descriptor144322%_))
                                          (____prototype-table-set!
                                           _%prototable144329%_
                                           _%descriptor144348%_
                                           _%prototype144325%_))
                                        ((lambda (_%method144357%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144121%_
                                            'class:
                                            _%obj-klass144123%_
                                            'method:
                                            _%method144357%_)
                                           '#!void)
                                         _%method-spec144292%_))))
                                   (_%K144305144372%_
                                    (lambda (_%methods-rest144362%_
                                             _%method-name144363%_)
                                      (let ((_%$e144366%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144141%_
                                                _%method-name144363%_
                                                '#f))))
                                        (if _%$e144366%_
                                            ((lambda (_%method144369%_)
                                               (_%loop144144%_
                                                _%rest144291%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144149%_ '1))
                                                (cons _%method144369%_
                                                      _%methods144151%_)))
                                             _%$e144366%_)
                                            (_%loop-inner144296%_
                                             _%methods-rest144362%_))))))
                              (if (pair? _%methods-rest144301144309%_)
                                  (let ((_%hd144306144375%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144301144309%_)))
                                        (_%tl144307144377%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144301144309%_))))
                                    (let* ((_%method-name144380%_
                                            _%hd144306144375%_)
                                           (_%methods-rest144382%_
                                            _%tl144307144377%_))
                                      (_%K144305144372%_
                                       _%methods-rest144382%_
                                       _%method-name144380%_)))
                                  (_%else144303144359%_))))
                          (let ((_%$e144384%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144141%_
                                    _%method-spec144292%_
                                    '#f))))
                            (if _%$e144384%_
                                ((lambda (_%method144387%_)
                                   (_%loop144144%_
                                    _%rest144291%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144149%_ '1))
                                    (cons _%method144387%_ _%methods144151%_)))
                                 _%$e144384%_)
                                (let ((_%tab144390%_
                                       (class-type-interface-table
                                        _%obj-klass144123%_)))
                                  (let* ((_%prototable144392%_ _%tab144390%_)
                                         (_%descriptor144395%_
                                          _%descriptor144121%_)
                                         (_%prototype144398%_ '#!void)
                                         (_%prototable144402%_
                                          _%prototable144392%_)
                                         (_%descriptor144415%_
                                          _%descriptor144395%_))
                                    (____prototype-table-set!
                                     _%prototable144402%_
                                     _%descriptor144415%_
                                     _%prototype144398%_))
                                  ((lambda (_%method144424%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144121%_
                                      'class:
                                      _%obj-klass144123%_
                                      'method:
                                      _%method144424%_)
                                     '#!void)
                                   _%method-spec144292%_))))))))
              (if (pair? _%rest144153144161%_)
                  (let ((_%hd144158144429%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144153144161%_)))
                        (_%tl144159144431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144153144161%_))))
                    (let* ((_%method-spec144434%_ _%hd144158144429%_)
                           (_%rest144436%_ _%tl144159144431%_))
                      (_%K144157144426%_
                       _%rest144436%_
                       _%method-spec144434%_)))
                  (_%else144155144288%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor143804%_ _%klass143805%_ _%obj-klass143806%_)
        (let ((_%method-table143824%_
               (let ((_%klass143808%_ _%obj-klass143806%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143808%_ 'class))
                     (let ((_%klass143813%_ _%klass143808%_))
                       (declare (not safe))
                       (__specialize-class _%klass143813%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143808%_)
                       '#!void)))))
          (let _%loop143827%_ ((_%rest143830%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143804%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143832%_ '0)
                               (_%methods143834%_ '()))
            (let* ((_%rest143836143844%_ _%rest143830%_)
                   (_%else143838143971%_
                    (lambda ()
                      (let ((_%prototype143887%_
                             (let* ((_%klass143852%_ _%klass143805%_)
                                    (_%k143855%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143832%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143852%_
                                      'class))
                                   (let* ((_%klass143860%_ _%klass143852%_)
                                          (_%k143877%_ _%k143855%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143860%_
                                      _%k143877%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143852%_)
                                     '#!void)))))
                        (let _%loop143890%_ ((_%rest143892%_ _%methods143834%_)
                                             (_%off143893%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143832%_ '1))))
                          (let* ((_%rest143895143903%_ _%rest143892%_)
                                 (_%else143897143952%_
                                  (lambda ()
                                    (let ((_%tab143911%_
                                           (class-type-interface-table
                                            _%obj-klass143806%_)))
                                      (let* ((_%prototable143914%_
                                              _%tab143911%_)
                                             (_%descriptor143917%_
                                              _%descriptor143804%_)
                                             (_%prototype143920%_
                                              _%prototype143887%_)
                                             (_%prototable143924%_
                                              _%prototable143914%_)
                                             (_%descriptor143941%_
                                              _%descriptor143917%_))
                                        (____prototype-table-set!
                                         _%prototable143924%_
                                         _%descriptor143941%_
                                         _%prototype143920%_))
                                      ((lambda (_%prototype143950%_)
                                         _%prototype143950%_)
                                       _%prototype143887%_))))
                                 (_%K143899143959%_
                                  (lambda (_%rest143955%_ _%method143956%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143887%_
                                       _%method143956%_
                                       _%off143893%_
                                       _%klass143805%_
                                       '#f))
                                    (_%loop143890%_
                                     _%rest143955%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143893%_ '1))))))
                            (if (pair? _%rest143895143903%_)
                                (let ((_%hd143900143962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143895143903%_)))
                                      (_%tl143901143964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143895143903%_))))
                                  (let* ((_%method143967%_ _%hd143900143962%_)
                                         (_%rest143969%_ _%tl143901143964%_))
                                    (_%K143899143959%_
                                     _%rest143969%_
                                     _%method143967%_)))
                                (_%else143897143952%_)))))))
                   (_%K143840144109%_
                    (lambda (_%rest143974%_ _%method-spec143975%_)
                      (if (pair? _%method-spec143975%_)
                          (let _%loop-inner143979%_ ((_%methods-rest143982%_
                                                      _%method-spec143975%_))
                            (let* ((_%methods-rest143984143992%_
                                    _%methods-rest143982%_)
                                   (_%else143986144042%_
                                    (lambda ()
                                      (let ((_%tab144000%_
                                             (class-type-interface-table
                                              _%obj-klass143806%_)))
                                        (let* ((_%prototable144002%_
                                                _%tab144000%_)
                                               (_%descriptor144005%_
                                                _%descriptor143804%_)
                                               (_%prototype144008%_ '#!void)
                                               (_%prototable144012%_
                                                _%prototable144002%_)
                                               (_%descriptor144031%_
                                                _%descriptor144005%_))
                                          (____prototype-table-set!
                                           _%prototable144012%_
                                           _%descriptor144031%_
                                           _%prototype144008%_))
                                        ((lambda (_%method144040%_) '#f)
                                         _%method-spec143975%_))))
                                   (_%K143988144055%_
                                    (lambda (_%methods-rest144045%_
                                             _%method-name144046%_)
                                      (let ((_%$e144049%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143824%_
                                                _%method-name144046%_
                                                '#f))))
                                        (if _%$e144049%_
                                            ((lambda (_%method144052%_)
                                               (_%loop143827%_
                                                _%rest143974%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143832%_ '1))
                                                (cons _%method144052%_
                                                      _%methods143834%_)))
                                             _%$e144049%_)
                                            (_%loop-inner143979%_
                                             _%methods-rest144045%_))))))
                              (if (pair? _%methods-rest143984143992%_)
                                  (let ((_%hd143989144058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143984143992%_)))
                                        (_%tl143990144060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143984143992%_))))
                                    (let* ((_%method-name144063%_
                                            _%hd143989144058%_)
                                           (_%methods-rest144065%_
                                            _%tl143990144060%_))
                                      (_%K143988144055%_
                                       _%methods-rest144065%_
                                       _%method-name144063%_)))
                                  (_%else143986144042%_))))
                          (let ((_%$e144067%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143824%_
                                    _%method-spec143975%_
                                    '#f))))
                            (if _%$e144067%_
                                ((lambda (_%method144070%_)
                                   (_%loop143827%_
                                    _%rest143974%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143832%_ '1))
                                    (cons _%method144070%_ _%methods143834%_)))
                                 _%$e144067%_)
                                (let ((_%tab144073%_
                                       (class-type-interface-table
                                        _%obj-klass143806%_)))
                                  (let* ((_%prototable144075%_ _%tab144073%_)
                                         (_%descriptor144078%_
                                          _%descriptor143804%_)
                                         (_%prototype144081%_ '#!void)
                                         (_%prototable144085%_
                                          _%prototable144075%_)
                                         (_%descriptor144098%_
                                          _%descriptor144078%_))
                                    (____prototype-table-set!
                                     _%prototable144085%_
                                     _%descriptor144098%_
                                     _%prototype144081%_))
                                  ((lambda (_%method144107%_) '#f)
                                   _%method-spec143975%_))))))))
              (if (pair? _%rest143836143844%_)
                  (let ((_%hd143841144112%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143836143844%_)))
                        (_%tl143842144114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143836143844%_))))
                    (let* ((_%method-spec144117%_ _%hd143841144112%_)
                           (_%rest144119%_ _%tl143842144114%_))
                      (_%K143840144109%_
                       _%rest144119%_
                       _%method-spec144117%_)))
                  (_%else143838143971%_)))))))
    (define cast
      (lambda (_%descriptor143646%_ _%obj143648%_)
        (let* ((_%klass143651%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143646%_ '1 '#f '#f)))
               (_%klass-id143654%_
                (let () (declare (not safe)) (##type-id _%klass143651%_))))
          (let _%loop143658%_ ((_%obj143661%_ _%obj143648%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143664%_
                    (let () (declare (not safe)) (class-of _%obj143661%_)))
                   (_%obj-klass-id143667%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143664%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143654%_ _%obj-klass-id143667%_))
                  ((lambda (_%obj143672%_) _%obj143672%_) _%obj143661%_)
                  (if (interface-subclass? _%obj-klass143664%_)
                      (let* ((_%tab143675%_
                              (class-type-interface-table _%obj-klass143664%_))
                             (_%$e143715%_
                              (let* ((_%prototable143678%_ _%tab143675%_)
                                     (_%descriptor143681%_
                                      _%descriptor143646%_)
                                     (_%prototable143685%_
                                      _%prototable143678%_)
                                     (_%descriptor143706%_
                                      _%descriptor143681%_))
                                (____prototype-table-get
                                 _%prototable143685%_
                                 _%descriptor143706%_))))
                        (if _%$e143715%_
                            ((lambda (_%prototype143718%_)
                               (if (eq? _%prototype143718%_ '#!void)
                                   (_%loop143658%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143661%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143721%_
                                             _%prototype143722%_
                                             _%obj143723%_)
                                      (if _%prototype143722%_
                                          (let ((_%instance143725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143722%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143725%_
                                               _%obj143723%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143725%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143721%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143723%_)))
                                            '#!void)))
                                    _%descriptor143646%_
                                    _%prototype143718%_
                                    _%obj143661%_)))
                             _%$e143715%_)
                            (let ((_%$e143727%_
                                   (try-create-prototype
                                    _%descriptor143646%_
                                    _%klass143651%_
                                    _%obj-klass143664%_)))
                              (if _%$e143727%_
                                  ((lambda (_%prototype143730%_)
                                     ((lambda (_%descriptor143732%_
                                               _%prototype143733%_
                                               _%obj143734%_)
                                        (if _%prototype143733%_
                                            (let ((_%instance143736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143733%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143736%_
                                                 _%obj143734%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143736%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143732%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143734%_)))
                                              '#!void)))
                                      _%descriptor143646%_
                                      _%prototype143730%_
                                      _%obj143661%_))
                                   _%$e143727%_)
                                  (_%loop143658%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143661%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143740%_
                              (class-type-interface-table _%obj-klass143664%_))
                             (_%$e143769%_
                              (let* ((_%prototable143742%_ _%tab143740%_)
                                     (_%descriptor143745%_
                                      _%descriptor143646%_)
                                     (_%prototable143749%_
                                      _%prototable143742%_)
                                     (_%descriptor143760%_
                                      _%descriptor143745%_))
                                (____prototype-table-get
                                 _%prototable143749%_
                                 _%descriptor143760%_))))
                        (if _%$e143769%_
                            ((lambda (_%prototype143772%_)
                               (if (eq? _%prototype143772%_ '#!void)
                                   ((lambda (_%descriptor143774%_
                                             _%prototype143775%_
                                             _%obj143776%_)
                                      (if _%prototype143775%_
                                          (let ((_%instance143778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143775%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143778%_
                                               _%obj143776%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143778%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143774%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143776%_)))
                                            '#!void)))
                                    _%descriptor143646%_
                                    '#f
                                    _%obj143661%_)
                                   ((lambda (_%descriptor143780%_
                                             _%prototype143781%_
                                             _%obj143782%_)
                                      (if _%prototype143781%_
                                          (let ((_%instance143784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143781%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143784%_
                                               _%obj143782%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143784%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143780%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143782%_)))
                                            '#!void)))
                                    _%descriptor143646%_
                                    _%prototype143772%_
                                    _%obj143661%_)))
                             _%$e143769%_)
                            (let ((_%$e143786%_
                                   (create-prototype
                                    _%descriptor143646%_
                                    _%klass143651%_
                                    _%obj-klass143664%_)))
                              (if _%$e143786%_
                                  ((lambda (_%prototype143789%_)
                                     ((lambda (_%descriptor143791%_
                                               _%prototype143792%_
                                               _%obj143793%_)
                                        (if _%prototype143792%_
                                            (let ((_%instance143795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143792%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143795%_
                                                 _%obj143793%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143795%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143791%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143793%_)))
                                              '#!void)))
                                      _%descriptor143646%_
                                      _%prototype143789%_
                                      _%obj143661%_))
                                   _%$e143786%_)
                                  ((lambda (_%descriptor143798%_
                                            _%prototype143799%_
                                            _%obj143800%_)
                                     (if _%prototype143799%_
                                         (let ((_%instance143802%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143799%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143802%_
                                              _%obj143800%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143802%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor143798%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj143800%_)))
                                           '#!void)))
                                   _%descriptor143646%_
                                   '#f
                                   _%obj143661%_))))))))))))
    (define try-cast
      (lambda (_%descriptor143488%_ _%obj143490%_)
        (let* ((_%klass143493%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143488%_ '1 '#f '#f)))
               (_%klass-id143496%_
                (let () (declare (not safe)) (##type-id _%klass143493%_))))
          (let _%loop143500%_ ((_%obj143503%_ _%obj143490%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143506%_
                    (let () (declare (not safe)) (class-of _%obj143503%_)))
                   (_%obj-klass-id143509%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143506%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143496%_ _%obj-klass-id143509%_))
                  ((lambda (_%obj143514%_) _%obj143514%_) _%obj143503%_)
                  (if (interface-subclass? _%obj-klass143506%_)
                      (let* ((_%tab143517%_
                              (class-type-interface-table _%obj-klass143506%_))
                             (_%$e143557%_
                              (let* ((_%prototable143520%_ _%tab143517%_)
                                     (_%descriptor143523%_
                                      _%descriptor143488%_)
                                     (_%prototable143527%_
                                      _%prototable143520%_)
                                     (_%descriptor143548%_
                                      _%descriptor143523%_))
                                (____prototype-table-get
                                 _%prototable143527%_
                                 _%descriptor143548%_))))
                        (if _%$e143557%_
                            ((lambda (_%prototype143560%_)
                               (if (eq? _%prototype143560%_ '#!void)
                                   (_%loop143500%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143503%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143563%_
                                             _%prototype143564%_
                                             _%obj143565%_)
                                      (if _%prototype143564%_
                                          (let ((_%instance143567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143564%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143567%_
                                               _%obj143565%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143567%_)
                                          '#f))
                                    _%descriptor143488%_
                                    _%prototype143560%_
                                    _%obj143503%_)))
                             _%$e143557%_)
                            (let ((_%$e143569%_
                                   (try-create-prototype
                                    _%descriptor143488%_
                                    _%klass143493%_
                                    _%obj-klass143506%_)))
                              (if _%$e143569%_
                                  ((lambda (_%prototype143572%_)
                                     ((lambda (_%descriptor143574%_
                                               _%prototype143575%_
                                               _%obj143576%_)
                                        (if _%prototype143575%_
                                            (let ((_%instance143578%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143575%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143578%_
                                                 _%obj143576%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143578%_)
                                            '#f))
                                      _%descriptor143488%_
                                      _%prototype143572%_
                                      _%obj143503%_))
                                   _%$e143569%_)
                                  (_%loop143500%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143503%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143582%_
                              (class-type-interface-table _%obj-klass143506%_))
                             (_%$e143611%_
                              (let* ((_%prototable143584%_ _%tab143582%_)
                                     (_%descriptor143587%_
                                      _%descriptor143488%_)
                                     (_%prototable143591%_
                                      _%prototable143584%_)
                                     (_%descriptor143602%_
                                      _%descriptor143587%_))
                                (____prototype-table-get
                                 _%prototable143591%_
                                 _%descriptor143602%_))))
                        (if _%$e143611%_
                            ((lambda (_%prototype143614%_)
                               (if (eq? _%prototype143614%_ '#!void)
                                   ((lambda (_%descriptor143616%_
                                             _%prototype143617%_
                                             _%obj143618%_)
                                      (if _%prototype143617%_
                                          (let ((_%instance143620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143617%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143620%_
                                               _%obj143618%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143620%_)
                                          '#f))
                                    _%descriptor143488%_
                                    '#f
                                    _%obj143503%_)
                                   ((lambda (_%descriptor143622%_
                                             _%prototype143623%_
                                             _%obj143624%_)
                                      (if _%prototype143623%_
                                          (let ((_%instance143626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143623%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143626%_
                                               _%obj143624%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143626%_)
                                          '#f))
                                    _%descriptor143488%_
                                    _%prototype143614%_
                                    _%obj143503%_)))
                             _%$e143611%_)
                            (let ((_%$e143628%_
                                   (try-create-prototype
                                    _%descriptor143488%_
                                    _%klass143493%_
                                    _%obj-klass143506%_)))
                              (if _%$e143628%_
                                  ((lambda (_%prototype143631%_)
                                     ((lambda (_%descriptor143633%_
                                               _%prototype143634%_
                                               _%obj143635%_)
                                        (if _%prototype143634%_
                                            (let ((_%instance143637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143634%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143637%_
                                                 _%obj143635%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143637%_)
                                            '#f))
                                      _%descriptor143488%_
                                      _%prototype143631%_
                                      _%obj143503%_))
                                   _%$e143628%_)
                                  ((lambda (_%descriptor143640%_
                                            _%prototype143641%_
                                            _%obj143642%_)
                                     (if _%prototype143641%_
                                         (let ((_%instance143644%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143641%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143644%_
                                              _%obj143642%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143644%_)
                                         '#f))
                                   _%descriptor143488%_
                                   '#f
                                   _%obj143503%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor143342%_ _%obj143344%_)
        (let* ((_%klass143347%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143342%_ '1 '#f '#f)))
               (_%klass-id143350%_
                (let () (declare (not safe)) (##type-id _%klass143347%_))))
          (let _%loop143354%_ ((_%obj143357%_ _%obj143344%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143360%_
                    (let () (declare (not safe)) (class-of _%obj143357%_)))
                   (_%obj-klass-id143363%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143360%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143350%_ _%obj-klass-id143363%_))
                  ((lambda (_%obj143368%_) '#t) _%obj143357%_)
                  (if (interface-subclass? _%obj-klass143360%_)
                      (let* ((_%tab143371%_
                              (class-type-interface-table _%obj-klass143360%_))
                             (_%$e143411%_
                              (let* ((_%prototable143374%_ _%tab143371%_)
                                     (_%descriptor143377%_
                                      _%descriptor143342%_)
                                     (_%prototable143381%_
                                      _%prototable143374%_)
                                     (_%descriptor143402%_
                                      _%descriptor143377%_))
                                (____prototype-table-get
                                 _%prototable143381%_
                                 _%descriptor143402%_))))
                        (if _%$e143411%_
                            ((lambda (_%prototype143414%_)
                               (if (eq? _%prototype143414%_ '#!void)
                                   (_%loop143354%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143357%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143417%_
                                             _%prototype143418%_
                                             _%obj143419%_)
                                      (if _%prototype143418%_ '#t '#f))
                                    _%descriptor143342%_
                                    _%prototype143414%_
                                    _%obj143357%_)))
                             _%$e143411%_)
                            (let ((_%$e143421%_
                                   (try-create-prototype
                                    _%descriptor143342%_
                                    _%klass143347%_
                                    _%obj-klass143360%_)))
                              (if _%$e143421%_
                                  ((lambda (_%prototype143424%_)
                                     ((lambda (_%descriptor143426%_
                                               _%prototype143427%_
                                               _%obj143428%_)
                                        (if _%prototype143427%_ '#t '#f))
                                      _%descriptor143342%_
                                      _%prototype143424%_
                                      _%obj143357%_))
                                   _%$e143421%_)
                                  (_%loop143354%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143357%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143432%_
                              (class-type-interface-table _%obj-klass143360%_))
                             (_%$e143461%_
                              (let* ((_%prototable143434%_ _%tab143432%_)
                                     (_%descriptor143437%_
                                      _%descriptor143342%_)
                                     (_%prototable143441%_
                                      _%prototable143434%_)
                                     (_%descriptor143452%_
                                      _%descriptor143437%_))
                                (____prototype-table-get
                                 _%prototable143441%_
                                 _%descriptor143452%_))))
                        (if _%$e143461%_
                            ((lambda (_%prototype143464%_)
                               (if (eq? _%prototype143464%_ '#!void)
                                   ((lambda (_%descriptor143466%_
                                             _%prototype143467%_
                                             _%obj143468%_)
                                      (if _%prototype143467%_ '#t '#f))
                                    _%descriptor143342%_
                                    '#f
                                    _%obj143357%_)
                                   ((lambda (_%descriptor143470%_
                                             _%prototype143471%_
                                             _%obj143472%_)
                                      (if _%prototype143471%_ '#t '#f))
                                    _%descriptor143342%_
                                    _%prototype143464%_
                                    _%obj143357%_)))
                             _%$e143461%_)
                            (let ((_%$e143474%_
                                   (try-create-prototype
                                    _%descriptor143342%_
                                    _%klass143347%_
                                    _%obj-klass143360%_)))
                              (if _%$e143474%_
                                  ((lambda (_%prototype143477%_)
                                     ((lambda (_%descriptor143479%_
                                               _%prototype143480%_
                                               _%obj143481%_)
                                        (if _%prototype143480%_ '#t '#f))
                                      _%descriptor143342%_
                                      _%prototype143477%_
                                      _%obj143357%_))
                                   _%$e143474%_)
                                  ((lambda (_%descriptor143484%_
                                            _%prototype143485%_
                                            _%obj143486%_)
                                     (if _%prototype143485%_ '#t '#f))
                                   _%descriptor143342%_
                                   '#f
                                   _%obj143357%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor143194%_
               _%obj143195%_
               _%with-prototype+receiver143196%_
               _%with-receiver143197%_)
        (let* ((_%descriptor143200%_ _%descriptor143194%_)
               (_%with-prototype+receiver143208%_
                _%with-prototype+receiver143196%_)
               (_%with-receiver143216%_ _%with-receiver143197%_)
               (_%klass143225%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143200%_ '1 '#f '#f)))
               (_%klass-id143228%_
                (let () (declare (not safe)) (##type-id _%klass143225%_))))
          (let _%loop143232%_ ((_%obj143235%_ _%obj143195%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143238%_
                    (let () (declare (not safe)) (class-of _%obj143235%_)))
                   (_%obj-klass-id143241%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143238%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143228%_ _%obj-klass-id143241%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver143216%_ _%obj143235%_))
                  (if (interface-subclass? _%obj-klass143238%_)
                      (let* ((_%tab143247%_
                              (class-type-interface-table _%obj-klass143238%_))
                             (_%$e143289%_
                              (let* ((_%prototable143250%_ _%tab143247%_)
                                     (_%descriptor143253%_
                                      _%descriptor143200%_)
                                     (_%prototable143257%_
                                      _%prototable143250%_)
                                     (_%descriptor143280%_
                                      _%descriptor143253%_))
                                (____prototype-table-get
                                 _%prototable143257%_
                                 _%descriptor143280%_))))
                        (if _%$e143289%_
                            ((lambda (_%prototype143292%_)
                               (if (eq? _%prototype143292%_ '#!void)
                                   (_%loop143232%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143235%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143208%_
                                      _%descriptor143200%_
                                      _%prototype143292%_
                                      _%obj143235%_))))
                             _%$e143289%_)
                            (let ((_%$e143295%_
                                   (try-create-prototype
                                    _%descriptor143200%_
                                    _%klass143225%_
                                    _%obj-klass143238%_)))
                              (if _%$e143295%_
                                  ((lambda (_%prototype143298%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143208%_
                                        _%descriptor143200%_
                                        _%prototype143298%_
                                        _%obj143235%_)))
                                   _%$e143295%_)
                                  (_%loop143232%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143235%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143302%_
                              (class-type-interface-table _%obj-klass143238%_))
                             (_%$e143331%_
                              (let* ((_%prototable143304%_ _%tab143302%_)
                                     (_%descriptor143307%_
                                      _%descriptor143200%_)
                                     (_%prototable143311%_
                                      _%prototable143304%_)
                                     (_%descriptor143322%_
                                      _%descriptor143307%_))
                                (____prototype-table-get
                                 _%prototable143311%_
                                 _%descriptor143322%_))))
                        (if _%$e143331%_
                            ((lambda (_%prototype143334%_)
                               (if (eq? _%prototype143334%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143208%_
                                      _%descriptor143200%_
                                      '#f
                                      _%obj143235%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143208%_
                                      _%descriptor143200%_
                                      _%prototype143334%_
                                      _%obj143235%_))))
                             _%$e143331%_)
                            (let ((_%$e143336%_
                                   (create-prototype
                                    _%descriptor143200%_
                                    _%klass143225%_
                                    _%obj-klass143238%_)))
                              (if _%$e143336%_
                                  ((lambda (_%prototype143339%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143208%_
                                        _%descriptor143200%_
                                        _%prototype143339%_
                                        _%obj143235%_)))
                                   _%$e143336%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver143208%_
                                     _%descriptor143200%_
                                     '#f
                                     _%obj143235%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143157%_
               _%obj143158%_
               _%with-prototype+receiver143159%_
               _%with-receiver143160%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143157%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor143164%_ _%descriptor143157%_))
              (if (procedure? _%with-prototype+receiver143159%_)
                  (let ((_%with-prototype+receiver143174%_
                         _%with-prototype+receiver143159%_))
                    (if (procedure? _%with-receiver143160%_)
                        (let ((_%with-receiver143184%_
                               _%with-receiver143160%_))
                          (__with-prototype
                           _%descriptor143164%_
                           _%obj143158%_
                           _%with-prototype+receiver143174%_
                           _%with-receiver143184%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143160%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143159%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143157%_)
              '#!void))))))
