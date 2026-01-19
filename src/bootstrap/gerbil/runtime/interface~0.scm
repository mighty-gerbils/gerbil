(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1768863411)
  (begin
    (define CastError::t
      (let ((__tmp116118 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp116118
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args116108%_
        (apply make-instance CastError::t _%$args116108%_)))
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
      (lambda (_%where115982%_ _%message115983%_ . _%irritants115984%_)
        (let ((__tmp116119
               (let ((__obj116111
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj116111
                    _%message115983%_
                    'where:
                    _%where115982%_
                    'irritants:
                    _%irritants115984%_))
                 __obj116111)))
          (declare (not safe))
          (raise __tmp116119))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp116121 (list)) (__tmp116120 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp116121
         '(object)
         __tmp116120
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args115979%_
        (apply make-instance interface-instance::t _%$args115979%_)))
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
      (let ((__tmp116123 (list))
            (__tmp116122
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp116123
         '(type methods index)
         __tmp116122
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args115976%_
        (apply make-instance interface-descriptor::t _%$args115976%_)))
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
          (let _%again115956%_ ((_%spin115959%_ '0))
            (if (let ((__tmp116124
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp116124 '0))
                (let ((__tmp116125 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp116125))
                (if (let () (declare (not safe)) (##fx< _%spin115959%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again115956%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin115959%_ '1))))
                    (let ((_%owner115965%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner115965%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner115965%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again115956%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r115973%_
               (let ((_%index115971%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index115971%_ '1)))
                 _%index115971%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r115973%_)))
    (define interface-descriptor:::init!
      (lambda (_%self115937%_ _%type115938%_ _%methods115939%_)
        (let ((_%self115942%_ _%self115937%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115942%_
             _%type115938%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115942%_
             _%methods115939%_
             '2
             '#f
             '#f))
          (let ((__tmp116126 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115942%_
             __tmp116126
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
      (let ((__tmp116128 (list))
            (__tmp116127
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp116128
         '(lock table)
         __tmp116127
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args115812%_
        (apply make-instance prototype-table::t _%$args115812%_)))
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
      (lambda (_%self115798%_)
        (let ((_%self115801%_ _%self115798%_))
          (let ((__tmp116129 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self115801%_ __tmp116129 '1 '#f '#f))
          (let ((__tmp116130
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115801%_
             __tmp116130
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
    (define __prototype-table-get
      (lambda (_%prototable115655%_ _%descriptor115656%_)
        (let* ((_%prototable115659%_ _%prototable115655%_)
               (_%descriptor115667%_ _%descriptor115656%_))
          (____prototype-table-get
           _%prototable115659%_
           _%descriptor115667%_))))
    (define ____prototype-table-get
      (lambda (_%prototable115608%_ _%descriptor115609%_)
        (let* ((_%prototable115612%_ _%prototable115608%_)
               (_%descriptor115620%_ _%descriptor115609%_))
          (declare (not safe))
          (let ((_%lock115630%_
                 (##unchecked-structure-ref _%prototable115612%_ '1 '#f '#f))
                (_%index115631%_
                 (##unchecked-structure-ref _%descriptor115620%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115635%_ ((_%spin115638%_ '0))
                (if (##fx= (##vector-cas! _%lock115630%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115630%_ '1 (current-thread))
                    (if (##fx< _%spin115638%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115635%_ (##fx+ _%spin115638%_ '1)))
                        (let ((_%owner115644%_
                               (##vector-ref _%lock115630%_ '1)))
                          (if (eq? _%owner115644%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115644%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115635%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115652%_
                   (let ((_%tab115650%_
                          (##unchecked-structure-ref
                           _%prototable115612%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115631%_ (vector-length _%tab115650%_))
                         (vector-ref _%tab115650%_ _%index115631%_)
                         '#f))))
              (##vector-set! _%lock115630%_ '1 '#f)
              (##vector-cas! _%lock115630%_ '0 '0 '1)
              _%$r115652%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable115586%_ _%descriptor115587%_ _%prototype115588%_)
        (let* ((_%prototable115591%_ _%prototable115586%_)
               (_%descriptor115599%_ _%descriptor115587%_))
          (____prototype-table-set!
           _%prototable115591%_
           _%descriptor115599%_
           _%prototype115588%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable115533%_ _%descriptor115534%_ _%prototype115535%_)
        (let* ((_%prototable115538%_ _%prototable115533%_)
               (_%descriptor115546%_ _%descriptor115534%_))
          (declare (not safe))
          (let ((_%lock115556%_
                 (##unchecked-structure-ref _%prototable115538%_ '1 '#f '#f))
                (_%index115557%_
                 (##unchecked-structure-ref _%descriptor115546%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115561%_ ((_%spin115564%_ '0))
                (if (##fx= (##vector-cas! _%lock115556%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115556%_ '1 (current-thread))
                    (if (##fx< _%spin115564%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115561%_ (##fx+ _%spin115564%_ '1)))
                        (let ((_%owner115570%_
                               (##vector-ref _%lock115556%_ '1)))
                          (if (eq? _%owner115570%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115570%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115561%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115583%_
                   (let ((_%tab115576%_
                          (##unchecked-structure-ref
                           _%prototable115538%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115557%_ (vector-length _%tab115576%_))
                         (vector-set!
                          _%tab115576%_
                          _%index115557%_
                          _%prototype115535%_)
                         (let* ((_%new-size115578%_ __next-interface-index)
                                (_%new-tab115580%_
                                 (##make-vector _%new-size115578%_ '#f)))
                           (subvector-move!
                            _%tab115576%_
                            '0
                            (vector-length _%tab115576%_)
                            _%new-tab115580%_
                            '0)
                           (vector-set!
                            _%new-tab115580%_
                            _%index115557%_
                            _%prototype115535%_)
                           (##unchecked-structure-set!
                            _%prototable115538%_
                            _%new-tab115580%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock115556%_ '1 '#f)
              (##vector-cas! _%lock115556%_ '0 '0 '1)
              _%$r115583%_)))))
    (define interface-subclass?
      (lambda (_%klass115525%_)
        (let ((_%super115526115528%_
               (let () (declare (not safe)) (##type-super _%klass115525%_))))
          (if _%super115526115528%_
              (let ((_%super115531%_ _%super115526115528%_))
                (eq? (let () (declare (not safe)) (##type-id _%super115531%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass115517%_)
        (let ((_%$e115519%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass115517%_ '13 '#f '#f))))
          (if _%$e115519%_
              _%$e115519%_
              (let ((_%tab115523%_
                     (let ((__obj116115
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj116115)
                       __obj116115)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass115517%_
                   _%tab115523%_
                   '13
                   '#f
                   '#f))
                _%tab115523%_)))))
    (define create-prototype
      (lambda (_%descriptor115357%_ _%klass115358%_ _%obj-klass115359%_)
        (let ((_%method-table115361%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115359%_))))
          (let _%loop115364%_ ((_%rest115367%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115357%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115369%_ '0)
                               (_%methods115371%_ '()))
            (let* ((_%rest115373115381%_ _%rest115367%_)
                   (_%else115375115437%_
                    (lambda ()
                      (let ((_%prototype115389%_
                             (let ((__obj116116
                                    (let ((__tmp116131
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115369%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115358%_
                                       __tmp116131))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116116 '#f))
                               __obj116116)))
                        (let _%loop115392%_ ((_%rest115394%_ _%methods115371%_)
                                             (_%off115395%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115369%_ '1))))
                          (let* ((_%rest115397115405%_ _%rest115394%_)
                                 (_%else115399115418%_
                                  (lambda ()
                                    (let ((_%tab115413%_
                                           (class-type-interface-table
                                            _%obj-klass115359%_)))
                                      (____prototype-table-set!
                                       _%tab115413%_
                                       _%descriptor115357%_
                                       _%prototype115389%_)
                                      ((lambda (_%prototype115416%_)
                                         _%prototype115416%_)
                                       _%prototype115389%_))))
                                 (_%K115401115425%_
                                  (lambda (_%rest115421%_ _%method115422%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115389%_
                                       _%method115422%_
                                       _%off115395%_
                                       _%klass115358%_
                                       '#f))
                                    (_%loop115392%_
                                     _%rest115421%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115395%_ '1))))))
                            (if (pair? _%rest115397115405%_)
                                (let ((_%hd115402115428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115397115405%_)))
                                      (_%tl115403115430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115397115405%_))))
                                  (let* ((_%method115433%_ _%hd115402115428%_)
                                         (_%rest115435%_ _%tl115403115430%_))
                                    (_%K115401115425%_
                                     _%rest115435%_
                                     _%method115433%_)))
                                (_%else115399115418%_)))))))
                   (_%K115377115505%_
                    (lambda (_%rest115440%_ _%method-spec115441%_)
                      (if (pair? _%method-spec115441%_)
                          (let _%loop-inner115445%_ ((_%methods-rest115448%_
                                                      _%method-spec115441%_))
                            (let* ((_%methods-rest115450115458%_
                                    _%methods-rest115448%_)
                                   (_%else115452115470%_
                                    (lambda ()
                                      (let ((_%tab115466%_
                                             (class-type-interface-table
                                              _%obj-klass115359%_)))
                                        (____prototype-table-set!
                                         _%tab115466%_
                                         _%descriptor115357%_
                                         '#!void)
                                        ((lambda (_%method115468%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor115357%_
                                            'class:
                                            _%obj-klass115359%_
                                            'method:
                                            _%method115468%_)
                                           '#!void)
                                         _%method-spec115441%_))))
                                   (_%K115454115483%_
                                    (lambda (_%methods-rest115473%_
                                             _%method-name115474%_)
                                      (let ((_%$e115477%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115361%_
                                                _%method-name115474%_
                                                '#f))))
                                        (if _%$e115477%_
                                            ((lambda (_%method115480%_)
                                               (_%loop115364%_
                                                _%rest115440%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115369%_ '1))
                                                (cons _%method115480%_
                                                      _%methods115371%_)))
                                             _%$e115477%_)
                                            (_%loop-inner115445%_
                                             _%methods-rest115473%_))))))
                              (if (pair? _%methods-rest115450115458%_)
                                  (let ((_%hd115455115486%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115450115458%_)))
                                        (_%tl115456115488%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115450115458%_))))
                                    (let* ((_%method-name115491%_
                                            _%hd115455115486%_)
                                           (_%methods-rest115493%_
                                            _%tl115456115488%_))
                                      (_%K115454115483%_
                                       _%methods-rest115493%_
                                       _%method-name115491%_)))
                                  (_%else115452115470%_))))
                          (let ((_%$e115495%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115361%_
                                    _%method-spec115441%_
                                    '#f))))
                            (if _%$e115495%_
                                ((lambda (_%method115498%_)
                                   (_%loop115364%_
                                    _%rest115440%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115369%_ '1))
                                    (cons _%method115498%_ _%methods115371%_)))
                                 _%$e115495%_)
                                (let ((_%tab115501%_
                                       (class-type-interface-table
                                        _%obj-klass115359%_)))
                                  (____prototype-table-set!
                                   _%tab115501%_
                                   _%descriptor115357%_
                                   '#!void)
                                  ((lambda (_%method115503%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor115357%_
                                      'class:
                                      _%obj-klass115359%_
                                      'method:
                                      _%method115503%_)
                                     '#!void)
                                   _%method-spec115441%_))))))))
              (if (pair? _%rest115373115381%_)
                  (let ((_%hd115378115508%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115373115381%_)))
                        (_%tl115379115510%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115373115381%_))))
                    (let* ((_%method-spec115513%_ _%hd115378115508%_)
                           (_%rest115515%_ _%tl115379115510%_))
                      (_%K115377115505%_
                       _%rest115515%_
                       _%method-spec115513%_)))
                  (_%else115375115437%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor115197%_ _%klass115198%_ _%obj-klass115199%_)
        (let ((_%method-table115201%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115199%_))))
          (let _%loop115204%_ ((_%rest115207%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115197%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115209%_ '0)
                               (_%methods115211%_ '()))
            (let* ((_%rest115213115221%_ _%rest115207%_)
                   (_%else115215115277%_
                    (lambda ()
                      (let ((_%prototype115229%_
                             (let ((__obj116117
                                    (let ((__tmp116132
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115209%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115198%_
                                       __tmp116132))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116117 '#f))
                               __obj116117)))
                        (let _%loop115232%_ ((_%rest115234%_ _%methods115211%_)
                                             (_%off115235%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115209%_ '1))))
                          (let* ((_%rest115237115245%_ _%rest115234%_)
                                 (_%else115239115258%_
                                  (lambda ()
                                    (let ((_%tab115253%_
                                           (class-type-interface-table
                                            _%obj-klass115199%_)))
                                      (____prototype-table-set!
                                       _%tab115253%_
                                       _%descriptor115197%_
                                       _%prototype115229%_)
                                      ((lambda (_%prototype115256%_)
                                         _%prototype115256%_)
                                       _%prototype115229%_))))
                                 (_%K115241115265%_
                                  (lambda (_%rest115261%_ _%method115262%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115229%_
                                       _%method115262%_
                                       _%off115235%_
                                       _%klass115198%_
                                       '#f))
                                    (_%loop115232%_
                                     _%rest115261%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115235%_ '1))))))
                            (if (pair? _%rest115237115245%_)
                                (let ((_%hd115242115268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115237115245%_)))
                                      (_%tl115243115270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115237115245%_))))
                                  (let* ((_%method115273%_ _%hd115242115268%_)
                                         (_%rest115275%_ _%tl115243115270%_))
                                    (_%K115241115265%_
                                     _%rest115275%_
                                     _%method115273%_)))
                                (_%else115239115258%_)))))))
                   (_%K115217115345%_
                    (lambda (_%rest115280%_ _%method-spec115281%_)
                      (if (pair? _%method-spec115281%_)
                          (let _%loop-inner115285%_ ((_%methods-rest115288%_
                                                      _%method-spec115281%_))
                            (let* ((_%methods-rest115290115298%_
                                    _%methods-rest115288%_)
                                   (_%else115292115310%_
                                    (lambda ()
                                      (let ((_%tab115306%_
                                             (class-type-interface-table
                                              _%obj-klass115199%_)))
                                        (____prototype-table-set!
                                         _%tab115306%_
                                         _%descriptor115197%_
                                         '#!void)
                                        ((lambda (_%method115308%_) '#f)
                                         _%method-spec115281%_))))
                                   (_%K115294115323%_
                                    (lambda (_%methods-rest115313%_
                                             _%method-name115314%_)
                                      (let ((_%$e115317%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115201%_
                                                _%method-name115314%_
                                                '#f))))
                                        (if _%$e115317%_
                                            ((lambda (_%method115320%_)
                                               (_%loop115204%_
                                                _%rest115280%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115209%_ '1))
                                                (cons _%method115320%_
                                                      _%methods115211%_)))
                                             _%$e115317%_)
                                            (_%loop-inner115285%_
                                             _%methods-rest115313%_))))))
                              (if (pair? _%methods-rest115290115298%_)
                                  (let ((_%hd115295115326%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115290115298%_)))
                                        (_%tl115296115328%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115290115298%_))))
                                    (let* ((_%method-name115331%_
                                            _%hd115295115326%_)
                                           (_%methods-rest115333%_
                                            _%tl115296115328%_))
                                      (_%K115294115323%_
                                       _%methods-rest115333%_
                                       _%method-name115331%_)))
                                  (_%else115292115310%_))))
                          (let ((_%$e115335%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115201%_
                                    _%method-spec115281%_
                                    '#f))))
                            (if _%$e115335%_
                                ((lambda (_%method115338%_)
                                   (_%loop115204%_
                                    _%rest115280%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115209%_ '1))
                                    (cons _%method115338%_ _%methods115211%_)))
                                 _%$e115335%_)
                                (let ((_%tab115341%_
                                       (class-type-interface-table
                                        _%obj-klass115199%_)))
                                  (____prototype-table-set!
                                   _%tab115341%_
                                   _%descriptor115197%_
                                   '#!void)
                                  ((lambda (_%method115343%_) '#f)
                                   _%method-spec115281%_))))))))
              (if (pair? _%rest115213115221%_)
                  (let ((_%hd115218115348%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115213115221%_)))
                        (_%tl115219115350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115213115221%_))))
                    (let* ((_%method-spec115353%_ _%hd115218115348%_)
                           (_%rest115355%_ _%tl115219115350%_))
                      (_%K115217115345%_
                       _%rest115355%_
                       _%method-spec115353%_)))
                  (_%else115215115277%_)))))))
    (define cast
      (lambda (_%descriptor115103%_ _%obj115105%_)
        (let* ((_%klass115108%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115103%_ '1 '#f '#f)))
               (_%klass-id115111%_
                (let () (declare (not safe)) (##type-id _%klass115108%_))))
          (let _%loop115115%_ ((_%obj115118%_ _%obj115105%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115121%_
                    (let () (declare (not safe)) (class-of _%obj115118%_)))
                   (_%obj-klass-id115124%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115121%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115111%_ _%obj-klass-id115124%_))
                  ((lambda (_%obj115129%_) _%obj115129%_) _%obj115118%_)
                  (if (interface-subclass? _%obj-klass115121%_)
                      (let* ((_%tab115132%_
                              (class-type-interface-table _%obj-klass115121%_))
                             (_%$e115135%_
                              (____prototype-table-get
                               _%tab115132%_
                               _%descriptor115103%_)))
                        (if _%$e115135%_
                            ((lambda (_%prototype115138%_)
                               (if (eq? _%prototype115138%_ '#!void)
                                   (_%loop115115%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115118%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115141%_
                                             _%prototype115142%_
                                             _%obj115143%_)
                                      (if _%prototype115142%_
                                          (let ((_%instance115145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115142%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115145%_
                                               _%obj115143%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115145%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115141%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115143%_)))
                                            '#!void)))
                                    _%descriptor115103%_
                                    _%prototype115138%_
                                    _%obj115118%_)))
                             _%$e115135%_)
                            (let ((_%$e115147%_
                                   (try-create-prototype
                                    _%descriptor115103%_
                                    _%klass115108%_
                                    _%obj-klass115121%_)))
                              (if _%$e115147%_
                                  ((lambda (_%prototype115150%_)
                                     ((lambda (_%descriptor115152%_
                                               _%prototype115153%_
                                               _%obj115154%_)
                                        (if _%prototype115153%_
                                            (let ((_%instance115156%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115153%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115156%_
                                                 _%obj115154%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115156%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115152%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115154%_)))
                                              '#!void)))
                                      _%descriptor115103%_
                                      _%prototype115150%_
                                      _%obj115118%_))
                                   _%$e115147%_)
                                  (_%loop115115%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115118%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115160%_
                              (class-type-interface-table _%obj-klass115121%_))
                             (_%$e115162%_
                              (____prototype-table-get
                               _%tab115160%_
                               _%descriptor115103%_)))
                        (if _%$e115162%_
                            ((lambda (_%prototype115165%_)
                               (if (eq? _%prototype115165%_ '#!void)
                                   ((lambda (_%descriptor115167%_
                                             _%prototype115168%_
                                             _%obj115169%_)
                                      (if _%prototype115168%_
                                          (let ((_%instance115171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115168%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115171%_
                                               _%obj115169%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115171%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115167%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115169%_)))
                                            '#!void)))
                                    _%descriptor115103%_
                                    '#f
                                    _%obj115118%_)
                                   ((lambda (_%descriptor115173%_
                                             _%prototype115174%_
                                             _%obj115175%_)
                                      (if _%prototype115174%_
                                          (let ((_%instance115177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115174%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115177%_
                                               _%obj115175%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115177%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115173%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115175%_)))
                                            '#!void)))
                                    _%descriptor115103%_
                                    _%prototype115165%_
                                    _%obj115118%_)))
                             _%$e115162%_)
                            (let ((_%$e115179%_
                                   (create-prototype
                                    _%descriptor115103%_
                                    _%klass115108%_
                                    _%obj-klass115121%_)))
                              (if _%$e115179%_
                                  ((lambda (_%prototype115182%_)
                                     ((lambda (_%descriptor115184%_
                                               _%prototype115185%_
                                               _%obj115186%_)
                                        (if _%prototype115185%_
                                            (let ((_%instance115188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115185%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115188%_
                                                 _%obj115186%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115188%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115184%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115186%_)))
                                              '#!void)))
                                      _%descriptor115103%_
                                      _%prototype115182%_
                                      _%obj115118%_))
                                   _%$e115179%_)
                                  ((lambda (_%descriptor115191%_
                                            _%prototype115192%_
                                            _%obj115193%_)
                                     (if _%prototype115192%_
                                         (let ((_%instance115195%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115192%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115195%_
                                              _%obj115193%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115195%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor115191%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj115193%_)))
                                           '#!void)))
                                   _%descriptor115103%_
                                   '#f
                                   _%obj115118%_))))))))))))
    (define try-cast
      (lambda (_%descriptor115009%_ _%obj115011%_)
        (let* ((_%klass115014%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115009%_ '1 '#f '#f)))
               (_%klass-id115017%_
                (let () (declare (not safe)) (##type-id _%klass115014%_))))
          (let _%loop115021%_ ((_%obj115024%_ _%obj115011%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115027%_
                    (let () (declare (not safe)) (class-of _%obj115024%_)))
                   (_%obj-klass-id115030%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115027%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115017%_ _%obj-klass-id115030%_))
                  ((lambda (_%obj115035%_) _%obj115035%_) _%obj115024%_)
                  (if (interface-subclass? _%obj-klass115027%_)
                      (let* ((_%tab115038%_
                              (class-type-interface-table _%obj-klass115027%_))
                             (_%$e115041%_
                              (____prototype-table-get
                               _%tab115038%_
                               _%descriptor115009%_)))
                        (if _%$e115041%_
                            ((lambda (_%prototype115044%_)
                               (if (eq? _%prototype115044%_ '#!void)
                                   (_%loop115021%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115024%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115047%_
                                             _%prototype115048%_
                                             _%obj115049%_)
                                      (if _%prototype115048%_
                                          (let ((_%instance115051%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115048%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115051%_
                                               _%obj115049%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115051%_)
                                          '#f))
                                    _%descriptor115009%_
                                    _%prototype115044%_
                                    _%obj115024%_)))
                             _%$e115041%_)
                            (let ((_%$e115053%_
                                   (try-create-prototype
                                    _%descriptor115009%_
                                    _%klass115014%_
                                    _%obj-klass115027%_)))
                              (if _%$e115053%_
                                  ((lambda (_%prototype115056%_)
                                     ((lambda (_%descriptor115058%_
                                               _%prototype115059%_
                                               _%obj115060%_)
                                        (if _%prototype115059%_
                                            (let ((_%instance115062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115059%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115062%_
                                                 _%obj115060%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115062%_)
                                            '#f))
                                      _%descriptor115009%_
                                      _%prototype115056%_
                                      _%obj115024%_))
                                   _%$e115053%_)
                                  (_%loop115021%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115024%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115066%_
                              (class-type-interface-table _%obj-klass115027%_))
                             (_%$e115068%_
                              (____prototype-table-get
                               _%tab115066%_
                               _%descriptor115009%_)))
                        (if _%$e115068%_
                            ((lambda (_%prototype115071%_)
                               (if (eq? _%prototype115071%_ '#!void)
                                   ((lambda (_%descriptor115073%_
                                             _%prototype115074%_
                                             _%obj115075%_)
                                      (if _%prototype115074%_
                                          (let ((_%instance115077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115074%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115077%_
                                               _%obj115075%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115077%_)
                                          '#f))
                                    _%descriptor115009%_
                                    '#f
                                    _%obj115024%_)
                                   ((lambda (_%descriptor115079%_
                                             _%prototype115080%_
                                             _%obj115081%_)
                                      (if _%prototype115080%_
                                          (let ((_%instance115083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115080%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115083%_
                                               _%obj115081%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115083%_)
                                          '#f))
                                    _%descriptor115009%_
                                    _%prototype115071%_
                                    _%obj115024%_)))
                             _%$e115068%_)
                            (let ((_%$e115085%_
                                   (try-create-prototype
                                    _%descriptor115009%_
                                    _%klass115014%_
                                    _%obj-klass115027%_)))
                              (if _%$e115085%_
                                  ((lambda (_%prototype115088%_)
                                     ((lambda (_%descriptor115090%_
                                               _%prototype115091%_
                                               _%obj115092%_)
                                        (if _%prototype115091%_
                                            (let ((_%instance115094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115091%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115094%_
                                                 _%obj115092%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115094%_)
                                            '#f))
                                      _%descriptor115009%_
                                      _%prototype115088%_
                                      _%obj115024%_))
                                   _%$e115085%_)
                                  ((lambda (_%descriptor115097%_
                                            _%prototype115098%_
                                            _%obj115099%_)
                                     (if _%prototype115098%_
                                         (let ((_%instance115101%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115098%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115101%_
                                              _%obj115099%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115101%_)
                                         '#f))
                                   _%descriptor115009%_
                                   '#f
                                   _%obj115024%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor114927%_ _%obj114929%_)
        (let* ((_%klass114932%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114927%_ '1 '#f '#f)))
               (_%klass-id114935%_
                (let () (declare (not safe)) (##type-id _%klass114932%_))))
          (let _%loop114939%_ ((_%obj114942%_ _%obj114929%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114945%_
                    (let () (declare (not safe)) (class-of _%obj114942%_)))
                   (_%obj-klass-id114948%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114945%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114935%_ _%obj-klass-id114948%_))
                  ((lambda (_%obj114953%_) '#t) _%obj114942%_)
                  (if (interface-subclass? _%obj-klass114945%_)
                      (let* ((_%tab114956%_
                              (class-type-interface-table _%obj-klass114945%_))
                             (_%$e114959%_
                              (____prototype-table-get
                               _%tab114956%_
                               _%descriptor114927%_)))
                        (if _%$e114959%_
                            ((lambda (_%prototype114962%_)
                               (if (eq? _%prototype114962%_ '#!void)
                                   (_%loop114939%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114942%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor114965%_
                                             _%prototype114966%_
                                             _%obj114967%_)
                                      (if _%prototype114966%_ '#t '#f))
                                    _%descriptor114927%_
                                    _%prototype114962%_
                                    _%obj114942%_)))
                             _%$e114959%_)
                            (let ((_%$e114969%_
                                   (try-create-prototype
                                    _%descriptor114927%_
                                    _%klass114932%_
                                    _%obj-klass114945%_)))
                              (if _%$e114969%_
                                  ((lambda (_%prototype114972%_)
                                     ((lambda (_%descriptor114974%_
                                               _%prototype114975%_
                                               _%obj114976%_)
                                        (if _%prototype114975%_ '#t '#f))
                                      _%descriptor114927%_
                                      _%prototype114972%_
                                      _%obj114942%_))
                                   _%$e114969%_)
                                  (_%loop114939%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114942%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab114980%_
                              (class-type-interface-table _%obj-klass114945%_))
                             (_%$e114982%_
                              (____prototype-table-get
                               _%tab114980%_
                               _%descriptor114927%_)))
                        (if _%$e114982%_
                            ((lambda (_%prototype114985%_)
                               (if (eq? _%prototype114985%_ '#!void)
                                   ((lambda (_%descriptor114987%_
                                             _%prototype114988%_
                                             _%obj114989%_)
                                      (if _%prototype114988%_ '#t '#f))
                                    _%descriptor114927%_
                                    '#f
                                    _%obj114942%_)
                                   ((lambda (_%descriptor114991%_
                                             _%prototype114992%_
                                             _%obj114993%_)
                                      (if _%prototype114992%_ '#t '#f))
                                    _%descriptor114927%_
                                    _%prototype114985%_
                                    _%obj114942%_)))
                             _%$e114982%_)
                            (let ((_%$e114995%_
                                   (try-create-prototype
                                    _%descriptor114927%_
                                    _%klass114932%_
                                    _%obj-klass114945%_)))
                              (if _%$e114995%_
                                  ((lambda (_%prototype114998%_)
                                     ((lambda (_%descriptor115000%_
                                               _%prototype115001%_
                                               _%obj115002%_)
                                        (if _%prototype115001%_ '#t '#f))
                                      _%descriptor114927%_
                                      _%prototype114998%_
                                      _%obj114942%_))
                                   _%$e114995%_)
                                  ((lambda (_%descriptor115005%_
                                            _%prototype115006%_
                                            _%obj115007%_)
                                     (if _%prototype115006%_ '#t '#f))
                                   _%descriptor114927%_
                                   '#f
                                   _%obj114942%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor114890%_
               _%obj114891%_
               _%with-prototype+receiver114892%_
               _%with-receiver114893%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor114890%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor114897%_ _%descriptor114890%_))
              (if (procedure? _%with-prototype+receiver114892%_)
                  (let ((_%with-prototype+receiver114907%_
                         _%with-prototype+receiver114892%_))
                    (if (procedure? _%with-receiver114893%_)
                        (let ((_%with-receiver114917%_
                               _%with-receiver114893%_))
                          (__with-prototype
                           _%descriptor114897%_
                           _%obj114891%_
                           _%with-prototype+receiver114907%_
                           _%with-receiver114917%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver114893%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver114892%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor114890%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor114808%_
               _%obj114809%_
               _%with-prototype+receiver114810%_
               _%with-receiver114811%_)
        (let* ((_%descriptor114814%_ _%descriptor114808%_)
               (_%with-prototype+receiver114822%_
                _%with-prototype+receiver114810%_)
               (_%with-receiver114830%_ _%with-receiver114811%_)
               (_%klass114839%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114814%_ '1 '#f '#f)))
               (_%klass-id114842%_
                (let () (declare (not safe)) (##type-id _%klass114839%_))))
          (let _%loop114846%_ ((_%obj114849%_ _%obj114809%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114852%_
                    (let () (declare (not safe)) (class-of _%obj114849%_)))
                   (_%obj-klass-id114855%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114852%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114842%_ _%obj-klass-id114855%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver114830%_ _%obj114849%_))
                  (if (interface-subclass? _%obj-klass114852%_)
                      (let* ((_%tab114861%_
                              (class-type-interface-table _%obj-klass114852%_))
                             (_%$e114864%_
                              (____prototype-table-get
                               _%tab114861%_
                               _%descriptor114814%_)))
                        (if _%$e114864%_
                            ((lambda (_%prototype114867%_)
                               (if (eq? _%prototype114867%_ '#!void)
                                   (_%loop114846%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114849%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114822%_
                                      _%descriptor114814%_
                                      _%prototype114867%_
                                      _%obj114849%_))))
                             _%$e114864%_)
                            (let ((_%$e114870%_
                                   (try-create-prototype
                                    _%descriptor114814%_
                                    _%klass114839%_
                                    _%obj-klass114852%_)))
                              (if _%$e114870%_
                                  ((lambda (_%prototype114873%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114822%_
                                        _%descriptor114814%_
                                        _%prototype114873%_
                                        _%obj114849%_)))
                                   _%$e114870%_)
                                  (_%loop114846%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114849%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab114877%_
                              (class-type-interface-table _%obj-klass114852%_))
                             (_%$e114879%_
                              (____prototype-table-get
                               _%tab114877%_
                               _%descriptor114814%_)))
                        (if _%$e114879%_
                            ((lambda (_%prototype114882%_)
                               (if (eq? _%prototype114882%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114822%_
                                      _%descriptor114814%_
                                      '#f
                                      _%obj114849%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114822%_
                                      _%descriptor114814%_
                                      _%prototype114882%_
                                      _%obj114849%_))))
                             _%$e114879%_)
                            (let ((_%$e114884%_
                                   (create-prototype
                                    _%descriptor114814%_
                                    _%klass114839%_
                                    _%obj-klass114852%_)))
                              (if _%$e114884%_
                                  ((lambda (_%prototype114887%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114822%_
                                        _%descriptor114814%_
                                        _%prototype114887%_
                                        _%obj114849%_)))
                                   _%$e114884%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver114822%_
                                     _%descriptor114814%_
                                     '#f
                                     _%obj114849%_)))))))))))))))
