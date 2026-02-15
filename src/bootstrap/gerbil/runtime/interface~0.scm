(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771178563)
  (begin
    (define CastError::t
      (let ((__tmp145026 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp145026
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args144940%_
        (apply make-instance CastError::t _%$args144940%_)))
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
      (lambda (_%where144814%_ _%message144815%_ . _%irritants144816%_)
        (let ((__tmp145027
               (let ((__obj145021
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj145021
                    _%message144815%_
                    'where:
                    _%where144814%_
                    'irritants:
                    _%irritants144816%_))
                 __obj145021)))
          (declare (not safe))
          (raise __tmp145027))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp145029 (list)) (__tmp145028 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp145029
         '(object)
         __tmp145028
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args144811%_
        (apply make-instance interface-instance::t _%$args144811%_)))
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
      (let ((__tmp145031 (list))
            (__tmp145030
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp145031
         '(type methods index)
         __tmp145030
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args144808%_
        (apply make-instance interface-descriptor::t _%$args144808%_)))
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
          (let _%again144786%_ ((_%spin144789%_ '0))
            (if (let ((__tmp145032
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp145032 '0))
                (let ((__tmp145033 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp145033))
                (if (let () (declare (not safe)) (##fx< _%spin144789%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again144786%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin144789%_ '1))))
                    (let ((_%owner144795%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner144795%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner144795%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again144786%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r144803%_
               (let ((_%index144801%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index144801%_ '1)))
                 _%index144801%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r144803%_)))
    (define interface-descriptor:::init!
      (lambda (_%self144767%_ _%type144768%_ _%methods144769%_)
        (let ((_%self144772%_ _%self144767%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144772%_
             _%type144768%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144772%_
             _%methods144769%_
             '2
             '#f
             '#f))
          (let ((__tmp145034 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144772%_
             __tmp145034
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
      (let ((__tmp145036 (list))
            (__tmp145035
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp145036
         '(lock table)
         __tmp145035
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args144642%_
        (apply make-instance prototype-table::t _%$args144642%_)))
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
      (lambda (_%self144628%_)
        (let ((_%self144631%_ _%self144628%_))
          (let ((__tmp145037 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self144631%_ __tmp145037 '1 '#f '#f))
          (let ((__tmp145038
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self144631%_
             __tmp145038
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
      (lambda (_%prototable144457%_ _%descriptor144458%_)
        (let* ((_%prototable144461%_ _%prototable144457%_)
               (_%descriptor144469%_ _%descriptor144458%_))
          (declare (not safe))
          (let ((_%lock144479%_
                 (##unchecked-structure-ref _%prototable144461%_ '1 '#f '#f))
                (_%index144480%_
                 (##unchecked-structure-ref _%descriptor144469%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144484%_ ((_%spin144487%_ '0))
                (if (##fx= (##vector-cas! _%lock144479%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144479%_ '1 (current-thread))
                    (if (##fx< _%spin144487%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144484%_ (##fx+ _%spin144487%_ '1)))
                        (let ((_%owner144493%_
                               (##vector-ref _%lock144479%_ '1)))
                          (if (eq? _%owner144493%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144493%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144484%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144501%_
                   (let ((_%tab144499%_
                          (##unchecked-structure-ref
                           _%prototable144461%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144480%_ (vector-length _%tab144499%_))
                         (vector-ref _%tab144499%_ _%index144480%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144479%_ '1 '#f)
                  (##vector-cas! _%lock144479%_ '0 '0 '1)))
              _%$r144501%_)))))
    (define __prototype-table-get
      (lambda (_%prototable142436%_ _%descriptor142437%_)
        (let* ((_%prototable142440%_ _%prototable142436%_)
               (_%descriptor142448%_ _%descriptor142437%_))
          (____prototype-table-get
           _%prototable142440%_
           _%descriptor142448%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable144402%_ _%descriptor144403%_ _%prototype144404%_)
        (let* ((_%prototable144407%_ _%prototable144402%_)
               (_%descriptor144415%_ _%descriptor144403%_))
          (declare (not safe))
          (let ((_%lock144425%_
                 (##unchecked-structure-ref _%prototable144407%_ '1 '#f '#f))
                (_%index144426%_
                 (##unchecked-structure-ref _%descriptor144415%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again144430%_ ((_%spin144433%_ '0))
                (if (##fx= (##vector-cas! _%lock144425%_ '0 '1 '0) '0)
                    (##vector-set! _%lock144425%_ '1 (current-thread))
                    (if (##fx< _%spin144433%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again144430%_ (##fx+ _%spin144433%_ '1)))
                        (let ((_%owner144439%_
                               (##vector-ref _%lock144425%_ '1)))
                          (if (eq? _%owner144439%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner144439%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again144430%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r144452%_
                   (let ((_%tab144445%_
                          (##unchecked-structure-ref
                           _%prototable144407%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index144426%_ (vector-length _%tab144445%_))
                         (vector-set!
                          _%tab144445%_
                          _%index144426%_
                          _%prototype144404%_)
                         (let* ((_%new-size144447%_ __next-interface-index)
                                (_%new-tab144449%_
                                 (##make-vector _%new-size144447%_ '#f)))
                           (subvector-move!
                            _%tab144445%_
                            '0
                            (vector-length _%tab144445%_)
                            _%new-tab144449%_
                            '0)
                           (vector-set!
                            _%new-tab144449%_
                            _%index144426%_
                            _%prototype144404%_)
                           (##unchecked-structure-set!
                            _%prototable144407%_
                            _%new-tab144449%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock144425%_ '1 '#f)
                  (##vector-cas! _%lock144425%_ '0 '0 '1)))
              _%$r144452%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable142577%_ _%descriptor142578%_ _%prototype142579%_)
        (let* ((_%prototable142582%_ _%prototable142577%_)
               (_%descriptor142590%_ _%descriptor142578%_))
          (____prototype-table-set!
           _%prototable142582%_
           _%descriptor142590%_
           _%prototype142579%_))))
    (define interface-subclass?
      (lambda (_%klass144395%_)
        (let ((_%super144396144398%_
               (let () (declare (not safe)) (##type-super _%klass144395%_))))
          (if _%super144396144398%_
              (let ((_%super144400%_ _%super144396144398%_))
                (eq? (let () (declare (not safe)) (##type-id _%super144400%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass144387%_)
        (let ((_%$e144389%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass144387%_ '13 '#f '#f))))
          (if _%$e144389%_
              _%$e144389%_
              (let ((_%tab144393%_
                     (let ((__obj145025
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj145025)
                       __obj145025)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass144387%_
                   _%tab144393%_
                   '13
                   '#f
                   '#f))
                _%tab144393%_)))))
    (define create-prototype
      (lambda (_%descriptor144070%_ _%klass144071%_ _%obj-klass144072%_)
        (let ((_%method-table144090%_
               (let ((_%klass144074%_ _%obj-klass144072%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144074%_ 'class))
                     (let ((_%klass144079%_ _%klass144074%_))
                       (declare (not safe))
                       (__specialize-class _%klass144079%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144074%_)
                       '#!void)))))
          (let _%loop144093%_ ((_%rest144096%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144070%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144098%_ '0)
                               (_%methods144100%_ '()))
            (let* ((_%rest144102144110%_ _%rest144096%_)
                   (_%else144104144237%_
                    (lambda ()
                      (let ((_%prototype144153%_
                             (let* ((_%klass144118%_ _%klass144071%_)
                                    (_%k144121%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144098%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144118%_
                                      'class))
                                   (let* ((_%klass144126%_ _%klass144118%_)
                                          (_%k144143%_ _%k144121%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144126%_
                                      _%k144143%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144118%_)
                                     '#!void)))))
                        (let _%loop144156%_ ((_%rest144158%_ _%methods144100%_)
                                             (_%off144159%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144098%_ '1))))
                          (let* ((_%rest144161144169%_ _%rest144158%_)
                                 (_%else144163144218%_
                                  (lambda ()
                                    (let ((_%tab144177%_
                                           (class-type-interface-table
                                            _%obj-klass144072%_)))
                                      (let* ((_%prototable144180%_
                                              _%tab144177%_)
                                             (_%descriptor144183%_
                                              _%descriptor144070%_)
                                             (_%prototype144186%_
                                              _%prototype144153%_)
                                             (_%prototable144190%_
                                              _%prototable144180%_)
                                             (_%descriptor144207%_
                                              _%descriptor144183%_))
                                        (____prototype-table-set!
                                         _%prototable144190%_
                                         _%descriptor144207%_
                                         _%prototype144186%_))
                                      ((lambda (_%prototype144216%_)
                                         _%prototype144216%_)
                                       _%prototype144153%_))))
                                 (_%K144165144225%_
                                  (lambda (_%rest144221%_ _%method144222%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144153%_
                                       _%method144222%_
                                       _%off144159%_
                                       _%klass144071%_
                                       '#f))
                                    (_%loop144156%_
                                     _%rest144221%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144159%_ '1))))))
                            (if (pair? _%rest144161144169%_)
                                (let ((_%hd144166144228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144161144169%_)))
                                      (_%tl144167144230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144161144169%_))))
                                  (let* ((_%method144233%_ _%hd144166144228%_)
                                         (_%rest144235%_ _%tl144167144230%_))
                                    (_%K144165144225%_
                                     _%rest144235%_
                                     _%method144233%_)))
                                (_%else144163144218%_)))))))
                   (_%K144106144375%_
                    (lambda (_%rest144240%_ _%method-spec144241%_)
                      (if (pair? _%method-spec144241%_)
                          (let _%loop-inner144245%_ ((_%methods-rest144248%_
                                                      _%method-spec144241%_))
                            (let* ((_%methods-rest144250144258%_
                                    _%methods-rest144248%_)
                                   (_%else144252144308%_
                                    (lambda ()
                                      (let ((_%tab144266%_
                                             (class-type-interface-table
                                              _%obj-klass144072%_)))
                                        (let* ((_%prototable144268%_
                                                _%tab144266%_)
                                               (_%descriptor144271%_
                                                _%descriptor144070%_)
                                               (_%prototype144274%_ '#!void)
                                               (_%prototable144278%_
                                                _%prototable144268%_)
                                               (_%descriptor144297%_
                                                _%descriptor144271%_))
                                          (____prototype-table-set!
                                           _%prototable144278%_
                                           _%descriptor144297%_
                                           _%prototype144274%_))
                                        ((lambda (_%method144306%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144070%_
                                            'class:
                                            _%obj-klass144072%_
                                            'method:
                                            _%method144306%_)
                                           '#!void)
                                         _%method-spec144241%_))))
                                   (_%K144254144321%_
                                    (lambda (_%methods-rest144311%_
                                             _%method-name144312%_)
                                      (let ((_%$e144315%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144090%_
                                                _%method-name144312%_
                                                '#f))))
                                        (if _%$e144315%_
                                            ((lambda (_%method144318%_)
                                               (_%loop144093%_
                                                _%rest144240%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144098%_ '1))
                                                (cons _%method144318%_
                                                      _%methods144100%_)))
                                             _%$e144315%_)
                                            (_%loop-inner144245%_
                                             _%methods-rest144311%_))))))
                              (if (pair? _%methods-rest144250144258%_)
                                  (let ((_%hd144255144324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144250144258%_)))
                                        (_%tl144256144326%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144250144258%_))))
                                    (let* ((_%method-name144329%_
                                            _%hd144255144324%_)
                                           (_%methods-rest144331%_
                                            _%tl144256144326%_))
                                      (_%K144254144321%_
                                       _%methods-rest144331%_
                                       _%method-name144329%_)))
                                  (_%else144252144308%_))))
                          (let ((_%$e144333%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144090%_
                                    _%method-spec144241%_
                                    '#f))))
                            (if _%$e144333%_
                                ((lambda (_%method144336%_)
                                   (_%loop144093%_
                                    _%rest144240%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144098%_ '1))
                                    (cons _%method144336%_ _%methods144100%_)))
                                 _%$e144333%_)
                                (let ((_%tab144339%_
                                       (class-type-interface-table
                                        _%obj-klass144072%_)))
                                  (let* ((_%prototable144341%_ _%tab144339%_)
                                         (_%descriptor144344%_
                                          _%descriptor144070%_)
                                         (_%prototype144347%_ '#!void)
                                         (_%prototable144351%_
                                          _%prototable144341%_)
                                         (_%descriptor144364%_
                                          _%descriptor144344%_))
                                    (____prototype-table-set!
                                     _%prototable144351%_
                                     _%descriptor144364%_
                                     _%prototype144347%_))
                                  ((lambda (_%method144373%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144070%_
                                      'class:
                                      _%obj-klass144072%_
                                      'method:
                                      _%method144373%_)
                                     '#!void)
                                   _%method-spec144241%_))))))))
              (if (pair? _%rest144102144110%_)
                  (let ((_%hd144107144378%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144102144110%_)))
                        (_%tl144108144380%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144102144110%_))))
                    (let* ((_%method-spec144383%_ _%hd144107144378%_)
                           (_%rest144385%_ _%tl144108144380%_))
                      (_%K144106144375%_
                       _%rest144385%_
                       _%method-spec144383%_)))
                  (_%else144104144237%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor143753%_ _%klass143754%_ _%obj-klass143755%_)
        (let ((_%method-table143773%_
               (let ((_%klass143757%_ _%obj-klass143755%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass143757%_ 'class))
                     (let ((_%klass143762%_ _%klass143757%_))
                       (declare (not safe))
                       (__specialize-class _%klass143762%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass143757%_)
                       '#!void)))))
          (let _%loop143776%_ ((_%rest143779%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor143753%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count143781%_ '0)
                               (_%methods143783%_ '()))
            (let* ((_%rest143785143793%_ _%rest143779%_)
                   (_%else143787143920%_
                    (lambda ()
                      (let ((_%prototype143836%_
                             (let* ((_%klass143801%_ _%klass143754%_)
                                    (_%k143804%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count143781%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass143801%_
                                      'class))
                                   (let* ((_%klass143809%_ _%klass143801%_)
                                          (_%k143826%_ _%k143804%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass143809%_
                                      _%k143826%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass143801%_)
                                     '#!void)))))
                        (let _%loop143839%_ ((_%rest143841%_ _%methods143783%_)
                                             (_%off143842%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count143781%_ '1))))
                          (let* ((_%rest143844143852%_ _%rest143841%_)
                                 (_%else143846143901%_
                                  (lambda ()
                                    (let ((_%tab143860%_
                                           (class-type-interface-table
                                            _%obj-klass143755%_)))
                                      (let* ((_%prototable143863%_
                                              _%tab143860%_)
                                             (_%descriptor143866%_
                                              _%descriptor143753%_)
                                             (_%prototype143869%_
                                              _%prototype143836%_)
                                             (_%prototable143873%_
                                              _%prototable143863%_)
                                             (_%descriptor143890%_
                                              _%descriptor143866%_))
                                        (____prototype-table-set!
                                         _%prototable143873%_
                                         _%descriptor143890%_
                                         _%prototype143869%_))
                                      ((lambda (_%prototype143899%_)
                                         _%prototype143899%_)
                                       _%prototype143836%_))))
                                 (_%K143848143908%_
                                  (lambda (_%rest143904%_ _%method143905%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype143836%_
                                       _%method143905%_
                                       _%off143842%_
                                       _%klass143754%_
                                       '#f))
                                    (_%loop143839%_
                                     _%rest143904%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off143842%_ '1))))))
                            (if (pair? _%rest143844143852%_)
                                (let ((_%hd143849143911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest143844143852%_)))
                                      (_%tl143850143913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest143844143852%_))))
                                  (let* ((_%method143916%_ _%hd143849143911%_)
                                         (_%rest143918%_ _%tl143850143913%_))
                                    (_%K143848143908%_
                                     _%rest143918%_
                                     _%method143916%_)))
                                (_%else143846143901%_)))))))
                   (_%K143789144058%_
                    (lambda (_%rest143923%_ _%method-spec143924%_)
                      (if (pair? _%method-spec143924%_)
                          (let _%loop-inner143928%_ ((_%methods-rest143931%_
                                                      _%method-spec143924%_))
                            (let* ((_%methods-rest143933143941%_
                                    _%methods-rest143931%_)
                                   (_%else143935143991%_
                                    (lambda ()
                                      (let ((_%tab143949%_
                                             (class-type-interface-table
                                              _%obj-klass143755%_)))
                                        (let* ((_%prototable143951%_
                                                _%tab143949%_)
                                               (_%descriptor143954%_
                                                _%descriptor143753%_)
                                               (_%prototype143957%_ '#!void)
                                               (_%prototable143961%_
                                                _%prototable143951%_)
                                               (_%descriptor143980%_
                                                _%descriptor143954%_))
                                          (____prototype-table-set!
                                           _%prototable143961%_
                                           _%descriptor143980%_
                                           _%prototype143957%_))
                                        ((lambda (_%method143989%_) '#f)
                                         _%method-spec143924%_))))
                                   (_%K143937144004%_
                                    (lambda (_%methods-rest143994%_
                                             _%method-name143995%_)
                                      (let ((_%$e143998%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table143773%_
                                                _%method-name143995%_
                                                '#f))))
                                        (if _%$e143998%_
                                            ((lambda (_%method144001%_)
                                               (_%loop143776%_
                                                _%rest143923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count143781%_ '1))
                                                (cons _%method144001%_
                                                      _%methods143783%_)))
                                             _%$e143998%_)
                                            (_%loop-inner143928%_
                                             _%methods-rest143994%_))))))
                              (if (pair? _%methods-rest143933143941%_)
                                  (let ((_%hd143938144007%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest143933143941%_)))
                                        (_%tl143939144009%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest143933143941%_))))
                                    (let* ((_%method-name144012%_
                                            _%hd143938144007%_)
                                           (_%methods-rest144014%_
                                            _%tl143939144009%_))
                                      (_%K143937144004%_
                                       _%methods-rest144014%_
                                       _%method-name144012%_)))
                                  (_%else143935143991%_))))
                          (let ((_%$e144016%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table143773%_
                                    _%method-spec143924%_
                                    '#f))))
                            (if _%$e144016%_
                                ((lambda (_%method144019%_)
                                   (_%loop143776%_
                                    _%rest143923%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count143781%_ '1))
                                    (cons _%method144019%_ _%methods143783%_)))
                                 _%$e144016%_)
                                (let ((_%tab144022%_
                                       (class-type-interface-table
                                        _%obj-klass143755%_)))
                                  (let* ((_%prototable144024%_ _%tab144022%_)
                                         (_%descriptor144027%_
                                          _%descriptor143753%_)
                                         (_%prototype144030%_ '#!void)
                                         (_%prototable144034%_
                                          _%prototable144024%_)
                                         (_%descriptor144047%_
                                          _%descriptor144027%_))
                                    (____prototype-table-set!
                                     _%prototable144034%_
                                     _%descriptor144047%_
                                     _%prototype144030%_))
                                  ((lambda (_%method144056%_) '#f)
                                   _%method-spec143924%_))))))))
              (if (pair? _%rest143785143793%_)
                  (let ((_%hd143790144061%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest143785143793%_)))
                        (_%tl143791144063%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest143785143793%_))))
                    (let* ((_%method-spec144066%_ _%hd143790144061%_)
                           (_%rest144068%_ _%tl143791144063%_))
                      (_%K143789144058%_
                       _%rest144068%_
                       _%method-spec144066%_)))
                  (_%else143787143920%_)))))))
    (define cast
      (lambda (_%descriptor143595%_ _%obj143597%_)
        (let* ((_%klass143600%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143595%_ '1 '#f '#f)))
               (_%klass-id143603%_
                (let () (declare (not safe)) (##type-id _%klass143600%_))))
          (let _%loop143607%_ ((_%obj143610%_ _%obj143597%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143613%_
                    (let () (declare (not safe)) (class-of _%obj143610%_)))
                   (_%obj-klass-id143616%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143613%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143603%_ _%obj-klass-id143616%_))
                  ((lambda (_%obj143621%_) _%obj143621%_) _%obj143610%_)
                  (if (interface-subclass? _%obj-klass143613%_)
                      (let* ((_%tab143624%_
                              (class-type-interface-table _%obj-klass143613%_))
                             (_%$e143664%_
                              (let* ((_%prototable143627%_ _%tab143624%_)
                                     (_%descriptor143630%_
                                      _%descriptor143595%_)
                                     (_%prototable143634%_
                                      _%prototable143627%_)
                                     (_%descriptor143655%_
                                      _%descriptor143630%_))
                                (____prototype-table-get
                                 _%prototable143634%_
                                 _%descriptor143655%_))))
                        (if _%$e143664%_
                            ((lambda (_%prototype143667%_)
                               (if (eq? _%prototype143667%_ '#!void)
                                   (_%loop143607%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143610%_
                                       '1
                                       '#f
                                       '#f)))
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
                                    _%descriptor143595%_
                                    _%prototype143667%_
                                    _%obj143610%_)))
                             _%$e143664%_)
                            (let ((_%$e143676%_
                                   (try-create-prototype
                                    _%descriptor143595%_
                                    _%klass143600%_
                                    _%obj-klass143613%_)))
                              (if _%$e143676%_
                                  ((lambda (_%prototype143679%_)
                                     ((lambda (_%descriptor143681%_
                                               _%prototype143682%_
                                               _%obj143683%_)
                                        (if _%prototype143682%_
                                            (let ((_%instance143685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143682%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143685%_
                                                 _%obj143683%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143685%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143681%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143683%_)))
                                              '#!void)))
                                      _%descriptor143595%_
                                      _%prototype143679%_
                                      _%obj143610%_))
                                   _%$e143676%_)
                                  (_%loop143607%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143610%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143689%_
                              (class-type-interface-table _%obj-klass143613%_))
                             (_%$e143718%_
                              (let* ((_%prototable143691%_ _%tab143689%_)
                                     (_%descriptor143694%_
                                      _%descriptor143595%_)
                                     (_%prototable143698%_
                                      _%prototable143691%_)
                                     (_%descriptor143709%_
                                      _%descriptor143694%_))
                                (____prototype-table-get
                                 _%prototable143698%_
                                 _%descriptor143709%_))))
                        (if _%$e143718%_
                            ((lambda (_%prototype143721%_)
                               (if (eq? _%prototype143721%_ '#!void)
                                   ((lambda (_%descriptor143723%_
                                             _%prototype143724%_
                                             _%obj143725%_)
                                      (if _%prototype143724%_
                                          (let ((_%instance143727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143724%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143727%_
                                               _%obj143725%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143727%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143723%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143725%_)))
                                            '#!void)))
                                    _%descriptor143595%_
                                    '#f
                                    _%obj143610%_)
                                   ((lambda (_%descriptor143729%_
                                             _%prototype143730%_
                                             _%obj143731%_)
                                      (if _%prototype143730%_
                                          (let ((_%instance143733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143730%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143733%_
                                               _%obj143731%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143733%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor143729%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj143731%_)))
                                            '#!void)))
                                    _%descriptor143595%_
                                    _%prototype143721%_
                                    _%obj143610%_)))
                             _%$e143718%_)
                            (let ((_%$e143735%_
                                   (create-prototype
                                    _%descriptor143595%_
                                    _%klass143600%_
                                    _%obj-klass143613%_)))
                              (if _%$e143735%_
                                  ((lambda (_%prototype143738%_)
                                     ((lambda (_%descriptor143740%_
                                               _%prototype143741%_
                                               _%obj143742%_)
                                        (if _%prototype143741%_
                                            (let ((_%instance143744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143741%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143744%_
                                                 _%obj143742%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143744%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor143740%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj143742%_)))
                                              '#!void)))
                                      _%descriptor143595%_
                                      _%prototype143738%_
                                      _%obj143610%_))
                                   _%$e143735%_)
                                  ((lambda (_%descriptor143747%_
                                            _%prototype143748%_
                                            _%obj143749%_)
                                     (if _%prototype143748%_
                                         (let ((_%instance143751%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143748%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143751%_
                                              _%obj143749%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143751%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor143747%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj143749%_)))
                                           '#!void)))
                                   _%descriptor143595%_
                                   '#f
                                   _%obj143610%_))))))))))))
    (define try-cast
      (lambda (_%descriptor143437%_ _%obj143439%_)
        (let* ((_%klass143442%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143437%_ '1 '#f '#f)))
               (_%klass-id143445%_
                (let () (declare (not safe)) (##type-id _%klass143442%_))))
          (let _%loop143449%_ ((_%obj143452%_ _%obj143439%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143455%_
                    (let () (declare (not safe)) (class-of _%obj143452%_)))
                   (_%obj-klass-id143458%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143455%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143445%_ _%obj-klass-id143458%_))
                  ((lambda (_%obj143463%_) _%obj143463%_) _%obj143452%_)
                  (if (interface-subclass? _%obj-klass143455%_)
                      (let* ((_%tab143466%_
                              (class-type-interface-table _%obj-klass143455%_))
                             (_%$e143506%_
                              (let* ((_%prototable143469%_ _%tab143466%_)
                                     (_%descriptor143472%_
                                      _%descriptor143437%_)
                                     (_%prototable143476%_
                                      _%prototable143469%_)
                                     (_%descriptor143497%_
                                      _%descriptor143472%_))
                                (____prototype-table-get
                                 _%prototable143476%_
                                 _%descriptor143497%_))))
                        (if _%$e143506%_
                            ((lambda (_%prototype143509%_)
                               (if (eq? _%prototype143509%_ '#!void)
                                   (_%loop143449%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143452%_
                                       '1
                                       '#f
                                       '#f)))
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
                                    _%descriptor143437%_
                                    _%prototype143509%_
                                    _%obj143452%_)))
                             _%$e143506%_)
                            (let ((_%$e143518%_
                                   (try-create-prototype
                                    _%descriptor143437%_
                                    _%klass143442%_
                                    _%obj-klass143455%_)))
                              (if _%$e143518%_
                                  ((lambda (_%prototype143521%_)
                                     ((lambda (_%descriptor143523%_
                                               _%prototype143524%_
                                               _%obj143525%_)
                                        (if _%prototype143524%_
                                            (let ((_%instance143527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143524%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143527%_
                                                 _%obj143525%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143527%_)
                                            '#f))
                                      _%descriptor143437%_
                                      _%prototype143521%_
                                      _%obj143452%_))
                                   _%$e143518%_)
                                  (_%loop143449%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143452%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143531%_
                              (class-type-interface-table _%obj-klass143455%_))
                             (_%$e143560%_
                              (let* ((_%prototable143533%_ _%tab143531%_)
                                     (_%descriptor143536%_
                                      _%descriptor143437%_)
                                     (_%prototable143540%_
                                      _%prototable143533%_)
                                     (_%descriptor143551%_
                                      _%descriptor143536%_))
                                (____prototype-table-get
                                 _%prototable143540%_
                                 _%descriptor143551%_))))
                        (if _%$e143560%_
                            ((lambda (_%prototype143563%_)
                               (if (eq? _%prototype143563%_ '#!void)
                                   ((lambda (_%descriptor143565%_
                                             _%prototype143566%_
                                             _%obj143567%_)
                                      (if _%prototype143566%_
                                          (let ((_%instance143569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143566%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143569%_
                                               _%obj143567%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143569%_)
                                          '#f))
                                    _%descriptor143437%_
                                    '#f
                                    _%obj143452%_)
                                   ((lambda (_%descriptor143571%_
                                             _%prototype143572%_
                                             _%obj143573%_)
                                      (if _%prototype143572%_
                                          (let ((_%instance143575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype143572%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance143575%_
                                               _%obj143573%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance143575%_)
                                          '#f))
                                    _%descriptor143437%_
                                    _%prototype143563%_
                                    _%obj143452%_)))
                             _%$e143560%_)
                            (let ((_%$e143577%_
                                   (try-create-prototype
                                    _%descriptor143437%_
                                    _%klass143442%_
                                    _%obj-klass143455%_)))
                              (if _%$e143577%_
                                  ((lambda (_%prototype143580%_)
                                     ((lambda (_%descriptor143582%_
                                               _%prototype143583%_
                                               _%obj143584%_)
                                        (if _%prototype143583%_
                                            (let ((_%instance143586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype143583%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance143586%_
                                                 _%obj143584%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance143586%_)
                                            '#f))
                                      _%descriptor143437%_
                                      _%prototype143580%_
                                      _%obj143452%_))
                                   _%$e143577%_)
                                  ((lambda (_%descriptor143589%_
                                            _%prototype143590%_
                                            _%obj143591%_)
                                     (if _%prototype143590%_
                                         (let ((_%instance143593%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype143590%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance143593%_
                                              _%obj143591%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance143593%_)
                                         '#f))
                                   _%descriptor143437%_
                                   '#f
                                   _%obj143452%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor143291%_ _%obj143293%_)
        (let* ((_%klass143296%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143291%_ '1 '#f '#f)))
               (_%klass-id143299%_
                (let () (declare (not safe)) (##type-id _%klass143296%_))))
          (let _%loop143303%_ ((_%obj143306%_ _%obj143293%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143309%_
                    (let () (declare (not safe)) (class-of _%obj143306%_)))
                   (_%obj-klass-id143312%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143309%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143299%_ _%obj-klass-id143312%_))
                  ((lambda (_%obj143317%_) '#t) _%obj143306%_)
                  (if (interface-subclass? _%obj-klass143309%_)
                      (let* ((_%tab143320%_
                              (class-type-interface-table _%obj-klass143309%_))
                             (_%$e143360%_
                              (let* ((_%prototable143323%_ _%tab143320%_)
                                     (_%descriptor143326%_
                                      _%descriptor143291%_)
                                     (_%prototable143330%_
                                      _%prototable143323%_)
                                     (_%descriptor143351%_
                                      _%descriptor143326%_))
                                (____prototype-table-get
                                 _%prototable143330%_
                                 _%descriptor143351%_))))
                        (if _%$e143360%_
                            ((lambda (_%prototype143363%_)
                               (if (eq? _%prototype143363%_ '#!void)
                                   (_%loop143303%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143306%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143366%_
                                             _%prototype143367%_
                                             _%obj143368%_)
                                      (if _%prototype143367%_ '#t '#f))
                                    _%descriptor143291%_
                                    _%prototype143363%_
                                    _%obj143306%_)))
                             _%$e143360%_)
                            (let ((_%$e143370%_
                                   (try-create-prototype
                                    _%descriptor143291%_
                                    _%klass143296%_
                                    _%obj-klass143309%_)))
                              (if _%$e143370%_
                                  ((lambda (_%prototype143373%_)
                                     ((lambda (_%descriptor143375%_
                                               _%prototype143376%_
                                               _%obj143377%_)
                                        (if _%prototype143376%_ '#t '#f))
                                      _%descriptor143291%_
                                      _%prototype143373%_
                                      _%obj143306%_))
                                   _%$e143370%_)
                                  (_%loop143303%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143306%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143381%_
                              (class-type-interface-table _%obj-klass143309%_))
                             (_%$e143410%_
                              (let* ((_%prototable143383%_ _%tab143381%_)
                                     (_%descriptor143386%_
                                      _%descriptor143291%_)
                                     (_%prototable143390%_
                                      _%prototable143383%_)
                                     (_%descriptor143401%_
                                      _%descriptor143386%_))
                                (____prototype-table-get
                                 _%prototable143390%_
                                 _%descriptor143401%_))))
                        (if _%$e143410%_
                            ((lambda (_%prototype143413%_)
                               (if (eq? _%prototype143413%_ '#!void)
                                   ((lambda (_%descriptor143415%_
                                             _%prototype143416%_
                                             _%obj143417%_)
                                      (if _%prototype143416%_ '#t '#f))
                                    _%descriptor143291%_
                                    '#f
                                    _%obj143306%_)
                                   ((lambda (_%descriptor143419%_
                                             _%prototype143420%_
                                             _%obj143421%_)
                                      (if _%prototype143420%_ '#t '#f))
                                    _%descriptor143291%_
                                    _%prototype143413%_
                                    _%obj143306%_)))
                             _%$e143410%_)
                            (let ((_%$e143423%_
                                   (try-create-prototype
                                    _%descriptor143291%_
                                    _%klass143296%_
                                    _%obj-klass143309%_)))
                              (if _%$e143423%_
                                  ((lambda (_%prototype143426%_)
                                     ((lambda (_%descriptor143428%_
                                               _%prototype143429%_
                                               _%obj143430%_)
                                        (if _%prototype143429%_ '#t '#f))
                                      _%descriptor143291%_
                                      _%prototype143426%_
                                      _%obj143306%_))
                                   _%$e143423%_)
                                  ((lambda (_%descriptor143433%_
                                            _%prototype143434%_
                                            _%obj143435%_)
                                     (if _%prototype143434%_ '#t '#f))
                                   _%descriptor143291%_
                                   '#f
                                   _%obj143306%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor143143%_
               _%obj143144%_
               _%with-prototype+receiver143145%_
               _%with-receiver143146%_)
        (let* ((_%descriptor143149%_ _%descriptor143143%_)
               (_%with-prototype+receiver143157%_
                _%with-prototype+receiver143145%_)
               (_%with-receiver143165%_ _%with-receiver143146%_)
               (_%klass143174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143149%_ '1 '#f '#f)))
               (_%klass-id143177%_
                (let () (declare (not safe)) (##type-id _%klass143174%_))))
          (let _%loop143181%_ ((_%obj143184%_ _%obj143144%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143187%_
                    (let () (declare (not safe)) (class-of _%obj143184%_)))
                   (_%obj-klass-id143190%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143187%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143177%_ _%obj-klass-id143190%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver143165%_ _%obj143184%_))
                  (if (interface-subclass? _%obj-klass143187%_)
                      (let* ((_%tab143196%_
                              (class-type-interface-table _%obj-klass143187%_))
                             (_%$e143238%_
                              (let* ((_%prototable143199%_ _%tab143196%_)
                                     (_%descriptor143202%_
                                      _%descriptor143149%_)
                                     (_%prototable143206%_
                                      _%prototable143199%_)
                                     (_%descriptor143229%_
                                      _%descriptor143202%_))
                                (____prototype-table-get
                                 _%prototable143206%_
                                 _%descriptor143229%_))))
                        (if _%$e143238%_
                            ((lambda (_%prototype143241%_)
                               (if (eq? _%prototype143241%_ '#!void)
                                   (_%loop143181%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143184%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143157%_
                                      _%descriptor143149%_
                                      _%prototype143241%_
                                      _%obj143184%_))))
                             _%$e143238%_)
                            (let ((_%$e143244%_
                                   (try-create-prototype
                                    _%descriptor143149%_
                                    _%klass143174%_
                                    _%obj-klass143187%_)))
                              (if _%$e143244%_
                                  ((lambda (_%prototype143247%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143157%_
                                        _%descriptor143149%_
                                        _%prototype143247%_
                                        _%obj143184%_)))
                                   _%$e143244%_)
                                  (_%loop143181%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143184%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143251%_
                              (class-type-interface-table _%obj-klass143187%_))
                             (_%$e143280%_
                              (let* ((_%prototable143253%_ _%tab143251%_)
                                     (_%descriptor143256%_
                                      _%descriptor143149%_)
                                     (_%prototable143260%_
                                      _%prototable143253%_)
                                     (_%descriptor143271%_
                                      _%descriptor143256%_))
                                (____prototype-table-get
                                 _%prototable143260%_
                                 _%descriptor143271%_))))
                        (if _%$e143280%_
                            ((lambda (_%prototype143283%_)
                               (if (eq? _%prototype143283%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143157%_
                                      _%descriptor143149%_
                                      '#f
                                      _%obj143184%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143157%_
                                      _%descriptor143149%_
                                      _%prototype143283%_
                                      _%obj143184%_))))
                             _%$e143280%_)
                            (let ((_%$e143285%_
                                   (create-prototype
                                    _%descriptor143149%_
                                    _%klass143174%_
                                    _%obj-klass143187%_)))
                              (if _%$e143285%_
                                  ((lambda (_%prototype143288%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143157%_
                                        _%descriptor143149%_
                                        _%prototype143288%_
                                        _%obj143184%_)))
                                   _%$e143285%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver143157%_
                                     _%descriptor143149%_
                                     '#f
                                     _%obj143184%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143106%_
               _%obj143107%_
               _%with-prototype+receiver143108%_
               _%with-receiver143109%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143106%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor143113%_ _%descriptor143106%_))
              (if (procedure? _%with-prototype+receiver143108%_)
                  (let ((_%with-prototype+receiver143123%_
                         _%with-prototype+receiver143108%_))
                    (if (procedure? _%with-receiver143109%_)
                        (let ((_%with-receiver143133%_
                               _%with-receiver143109%_))
                          (__with-prototype
                           _%descriptor143113%_
                           _%obj143107%_
                           _%with-prototype+receiver143123%_
                           _%with-receiver143133%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143109%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143108%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143106%_)
              '#!void))))))
