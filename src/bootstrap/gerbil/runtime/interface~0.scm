(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1768864947)
  (begin
    (define CastError::t
      (let ((__tmp116145 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp116145
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args116135%_
        (apply make-instance CastError::t _%$args116135%_)))
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
      (lambda (_%where116009%_ _%message116010%_ . _%irritants116011%_)
        (let ((__tmp116146
               (let ((__obj116138
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj116138
                    _%message116010%_
                    'where:
                    _%where116009%_
                    'irritants:
                    _%irritants116011%_))
                 __obj116138)))
          (declare (not safe))
          (raise __tmp116146))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp116148 (list)) (__tmp116147 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp116148
         '(object)
         __tmp116147
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args116006%_
        (apply make-instance interface-instance::t _%$args116006%_)))
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
      (let ((__tmp116150 (list))
            (__tmp116149
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp116150
         '(type methods index)
         __tmp116149
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args116003%_
        (apply make-instance interface-descriptor::t _%$args116003%_)))
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
          (let _%again115983%_ ((_%spin115986%_ '0))
            (if (let ((__tmp116151
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp116151 '0))
                (let ((__tmp116152 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp116152))
                (if (let () (declare (not safe)) (##fx< _%spin115986%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again115983%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin115986%_ '1))))
                    (let ((_%owner115992%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner115992%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner115992%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again115983%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r116000%_
               (let ((_%index115998%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index115998%_ '1)))
                 _%index115998%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r116000%_)))
    (define interface-descriptor:::init!
      (lambda (_%self115964%_ _%type115965%_ _%methods115966%_)
        (let ((_%self115969%_ _%self115964%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115969%_
             _%type115965%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115969%_
             _%methods115966%_
             '2
             '#f
             '#f))
          (let ((__tmp116153 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115969%_
             __tmp116153
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
      (let ((__tmp116155 (list))
            (__tmp116154
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp116155
         '(lock table)
         __tmp116154
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args115839%_
        (apply make-instance prototype-table::t _%$args115839%_)))
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
      (lambda (_%self115825%_)
        (let ((_%self115828%_ _%self115825%_))
          (let ((__tmp116156 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self115828%_ __tmp116156 '1 '#f '#f))
          (let ((__tmp116157
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self115828%_
             __tmp116157
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
      (lambda (_%prototable115682%_ _%descriptor115683%_)
        (let* ((_%prototable115686%_ _%prototable115682%_)
               (_%descriptor115694%_ _%descriptor115683%_))
          (____prototype-table-get
           _%prototable115686%_
           _%descriptor115694%_))))
    (define ____prototype-table-get
      (lambda (_%prototable115635%_ _%descriptor115636%_)
        (let* ((_%prototable115639%_ _%prototable115635%_)
               (_%descriptor115647%_ _%descriptor115636%_))
          (declare (not safe))
          (let ((_%lock115657%_
                 (##unchecked-structure-ref _%prototable115639%_ '1 '#f '#f))
                (_%index115658%_
                 (##unchecked-structure-ref _%descriptor115647%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115662%_ ((_%spin115665%_ '0))
                (if (##fx= (##vector-cas! _%lock115657%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115657%_ '1 (current-thread))
                    (if (##fx< _%spin115665%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115662%_ (##fx+ _%spin115665%_ '1)))
                        (let ((_%owner115671%_
                               (##vector-ref _%lock115657%_ '1)))
                          (if (eq? _%owner115671%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115671%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115662%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115679%_
                   (let ((_%tab115677%_
                          (##unchecked-structure-ref
                           _%prototable115639%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115658%_ (vector-length _%tab115677%_))
                         (vector-ref _%tab115677%_ _%index115658%_)
                         '#f))))
              (##vector-set! _%lock115657%_ '1 '#f)
              (##vector-cas! _%lock115657%_ '0 '0 '1)
              _%$r115679%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable115613%_ _%descriptor115614%_ _%prototype115615%_)
        (let* ((_%prototable115618%_ _%prototable115613%_)
               (_%descriptor115626%_ _%descriptor115614%_))
          (____prototype-table-set!
           _%prototable115618%_
           _%descriptor115626%_
           _%prototype115615%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable115560%_ _%descriptor115561%_ _%prototype115562%_)
        (let* ((_%prototable115565%_ _%prototable115560%_)
               (_%descriptor115573%_ _%descriptor115561%_))
          (declare (not safe))
          (let ((_%lock115583%_
                 (##unchecked-structure-ref _%prototable115565%_ '1 '#f '#f))
                (_%index115584%_
                 (##unchecked-structure-ref _%descriptor115573%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again115588%_ ((_%spin115591%_ '0))
                (if (##fx= (##vector-cas! _%lock115583%_ '0 '1 '0) '0)
                    (##vector-set! _%lock115583%_ '1 (current-thread))
                    (if (##fx< _%spin115591%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again115588%_ (##fx+ _%spin115591%_ '1)))
                        (let ((_%owner115597%_
                               (##vector-ref _%lock115583%_ '1)))
                          (if (eq? _%owner115597%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner115597%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again115588%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r115610%_
                   (let ((_%tab115603%_
                          (##unchecked-structure-ref
                           _%prototable115565%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index115584%_ (vector-length _%tab115603%_))
                         (vector-set!
                          _%tab115603%_
                          _%index115584%_
                          _%prototype115562%_)
                         (let* ((_%new-size115605%_ __next-interface-index)
                                (_%new-tab115607%_
                                 (##make-vector _%new-size115605%_ '#f)))
                           (subvector-move!
                            _%tab115603%_
                            '0
                            (vector-length _%tab115603%_)
                            _%new-tab115607%_
                            '0)
                           (vector-set!
                            _%new-tab115607%_
                            _%index115584%_
                            _%prototype115562%_)
                           (##unchecked-structure-set!
                            _%prototable115565%_
                            _%new-tab115607%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock115583%_ '1 '#f)
              (##vector-cas! _%lock115583%_ '0 '0 '1)
              _%$r115610%_)))))
    (define interface-subclass?
      (lambda (_%klass115552%_)
        (let ((_%super115553115555%_
               (let () (declare (not safe)) (##type-super _%klass115552%_))))
          (if _%super115553115555%_
              (let ((_%super115558%_ _%super115553115555%_))
                (eq? (let () (declare (not safe)) (##type-id _%super115558%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass115544%_)
        (let ((_%$e115546%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass115544%_ '13 '#f '#f))))
          (if _%$e115546%_
              _%$e115546%_
              (let ((_%tab115550%_
                     (let ((__obj116142
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj116142)
                       __obj116142)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass115544%_
                   _%tab115550%_
                   '13
                   '#f
                   '#f))
                _%tab115550%_)))))
    (define create-prototype
      (lambda (_%descriptor115384%_ _%klass115385%_ _%obj-klass115386%_)
        (let ((_%method-table115388%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115386%_))))
          (let _%loop115391%_ ((_%rest115394%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115384%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115396%_ '0)
                               (_%methods115398%_ '()))
            (let* ((_%rest115400115408%_ _%rest115394%_)
                   (_%else115402115464%_
                    (lambda ()
                      (let ((_%prototype115416%_
                             (let ((__obj116143
                                    (let ((__tmp116158
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115396%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115385%_
                                       __tmp116158))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116143 '#f))
                               __obj116143)))
                        (let _%loop115419%_ ((_%rest115421%_ _%methods115398%_)
                                             (_%off115422%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115396%_ '1))))
                          (let* ((_%rest115424115432%_ _%rest115421%_)
                                 (_%else115426115445%_
                                  (lambda ()
                                    (let ((_%tab115440%_
                                           (class-type-interface-table
                                            _%obj-klass115386%_)))
                                      (____prototype-table-set!
                                       _%tab115440%_
                                       _%descriptor115384%_
                                       _%prototype115416%_)
                                      ((lambda (_%prototype115443%_)
                                         _%prototype115443%_)
                                       _%prototype115416%_))))
                                 (_%K115428115452%_
                                  (lambda (_%rest115448%_ _%method115449%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115416%_
                                       _%method115449%_
                                       _%off115422%_
                                       _%klass115385%_
                                       '#f))
                                    (_%loop115419%_
                                     _%rest115448%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115422%_ '1))))))
                            (if (pair? _%rest115424115432%_)
                                (let ((_%hd115429115455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115424115432%_)))
                                      (_%tl115430115457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115424115432%_))))
                                  (let* ((_%method115460%_ _%hd115429115455%_)
                                         (_%rest115462%_ _%tl115430115457%_))
                                    (_%K115428115452%_
                                     _%rest115462%_
                                     _%method115460%_)))
                                (_%else115426115445%_)))))))
                   (_%K115404115532%_
                    (lambda (_%rest115467%_ _%method-spec115468%_)
                      (if (pair? _%method-spec115468%_)
                          (let _%loop-inner115472%_ ((_%methods-rest115475%_
                                                      _%method-spec115468%_))
                            (let* ((_%methods-rest115477115485%_
                                    _%methods-rest115475%_)
                                   (_%else115479115497%_
                                    (lambda ()
                                      (let ((_%tab115493%_
                                             (class-type-interface-table
                                              _%obj-klass115386%_)))
                                        (____prototype-table-set!
                                         _%tab115493%_
                                         _%descriptor115384%_
                                         '#!void)
                                        ((lambda (_%method115495%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor115384%_
                                            'class:
                                            _%obj-klass115386%_
                                            'method:
                                            _%method115495%_)
                                           '#!void)
                                         _%method-spec115468%_))))
                                   (_%K115481115510%_
                                    (lambda (_%methods-rest115500%_
                                             _%method-name115501%_)
                                      (let ((_%$e115504%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115388%_
                                                _%method-name115501%_
                                                '#f))))
                                        (if _%$e115504%_
                                            ((lambda (_%method115507%_)
                                               (_%loop115391%_
                                                _%rest115467%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115396%_ '1))
                                                (cons _%method115507%_
                                                      _%methods115398%_)))
                                             _%$e115504%_)
                                            (_%loop-inner115472%_
                                             _%methods-rest115500%_))))))
                              (if (pair? _%methods-rest115477115485%_)
                                  (let ((_%hd115482115513%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115477115485%_)))
                                        (_%tl115483115515%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115477115485%_))))
                                    (let* ((_%method-name115518%_
                                            _%hd115482115513%_)
                                           (_%methods-rest115520%_
                                            _%tl115483115515%_))
                                      (_%K115481115510%_
                                       _%methods-rest115520%_
                                       _%method-name115518%_)))
                                  (_%else115479115497%_))))
                          (let ((_%$e115522%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115388%_
                                    _%method-spec115468%_
                                    '#f))))
                            (if _%$e115522%_
                                ((lambda (_%method115525%_)
                                   (_%loop115391%_
                                    _%rest115467%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115396%_ '1))
                                    (cons _%method115525%_ _%methods115398%_)))
                                 _%$e115522%_)
                                (let ((_%tab115528%_
                                       (class-type-interface-table
                                        _%obj-klass115386%_)))
                                  (____prototype-table-set!
                                   _%tab115528%_
                                   _%descriptor115384%_
                                   '#!void)
                                  ((lambda (_%method115530%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor115384%_
                                      'class:
                                      _%obj-klass115386%_
                                      'method:
                                      _%method115530%_)
                                     '#!void)
                                   _%method-spec115468%_))))))))
              (if (pair? _%rest115400115408%_)
                  (let ((_%hd115405115535%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115400115408%_)))
                        (_%tl115406115537%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115400115408%_))))
                    (let* ((_%method-spec115540%_ _%hd115405115535%_)
                           (_%rest115542%_ _%tl115406115537%_))
                      (_%K115404115532%_
                       _%rest115542%_
                       _%method-spec115540%_)))
                  (_%else115402115464%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor115224%_ _%klass115225%_ _%obj-klass115226%_)
        (let ((_%method-table115228%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115226%_))))
          (let _%loop115231%_ ((_%rest115234%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115224%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115236%_ '0)
                               (_%methods115238%_ '()))
            (let* ((_%rest115240115248%_ _%rest115234%_)
                   (_%else115242115304%_
                    (lambda ()
                      (let ((_%prototype115256%_
                             (let ((__obj116144
                                    (let ((__tmp116159
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115236%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115225%_
                                       __tmp116159))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116144 '#f))
                               __obj116144)))
                        (let _%loop115259%_ ((_%rest115261%_ _%methods115238%_)
                                             (_%off115262%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115236%_ '1))))
                          (let* ((_%rest115264115272%_ _%rest115261%_)
                                 (_%else115266115285%_
                                  (lambda ()
                                    (let ((_%tab115280%_
                                           (class-type-interface-table
                                            _%obj-klass115226%_)))
                                      (____prototype-table-set!
                                       _%tab115280%_
                                       _%descriptor115224%_
                                       _%prototype115256%_)
                                      ((lambda (_%prototype115283%_)
                                         _%prototype115283%_)
                                       _%prototype115256%_))))
                                 (_%K115268115292%_
                                  (lambda (_%rest115288%_ _%method115289%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115256%_
                                       _%method115289%_
                                       _%off115262%_
                                       _%klass115225%_
                                       '#f))
                                    (_%loop115259%_
                                     _%rest115288%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115262%_ '1))))))
                            (if (pair? _%rest115264115272%_)
                                (let ((_%hd115269115295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115264115272%_)))
                                      (_%tl115270115297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115264115272%_))))
                                  (let* ((_%method115300%_ _%hd115269115295%_)
                                         (_%rest115302%_ _%tl115270115297%_))
                                    (_%K115268115292%_
                                     _%rest115302%_
                                     _%method115300%_)))
                                (_%else115266115285%_)))))))
                   (_%K115244115372%_
                    (lambda (_%rest115307%_ _%method-spec115308%_)
                      (if (pair? _%method-spec115308%_)
                          (let _%loop-inner115312%_ ((_%methods-rest115315%_
                                                      _%method-spec115308%_))
                            (let* ((_%methods-rest115317115325%_
                                    _%methods-rest115315%_)
                                   (_%else115319115337%_
                                    (lambda ()
                                      (let ((_%tab115333%_
                                             (class-type-interface-table
                                              _%obj-klass115226%_)))
                                        (____prototype-table-set!
                                         _%tab115333%_
                                         _%descriptor115224%_
                                         '#!void)
                                        ((lambda (_%method115335%_) '#f)
                                         _%method-spec115308%_))))
                                   (_%K115321115350%_
                                    (lambda (_%methods-rest115340%_
                                             _%method-name115341%_)
                                      (let ((_%$e115344%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115228%_
                                                _%method-name115341%_
                                                '#f))))
                                        (if _%$e115344%_
                                            ((lambda (_%method115347%_)
                                               (_%loop115231%_
                                                _%rest115307%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115236%_ '1))
                                                (cons _%method115347%_
                                                      _%methods115238%_)))
                                             _%$e115344%_)
                                            (_%loop-inner115312%_
                                             _%methods-rest115340%_))))))
                              (if (pair? _%methods-rest115317115325%_)
                                  (let ((_%hd115322115353%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115317115325%_)))
                                        (_%tl115323115355%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115317115325%_))))
                                    (let* ((_%method-name115358%_
                                            _%hd115322115353%_)
                                           (_%methods-rest115360%_
                                            _%tl115323115355%_))
                                      (_%K115321115350%_
                                       _%methods-rest115360%_
                                       _%method-name115358%_)))
                                  (_%else115319115337%_))))
                          (let ((_%$e115362%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115228%_
                                    _%method-spec115308%_
                                    '#f))))
                            (if _%$e115362%_
                                ((lambda (_%method115365%_)
                                   (_%loop115231%_
                                    _%rest115307%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115236%_ '1))
                                    (cons _%method115365%_ _%methods115238%_)))
                                 _%$e115362%_)
                                (let ((_%tab115368%_
                                       (class-type-interface-table
                                        _%obj-klass115226%_)))
                                  (____prototype-table-set!
                                   _%tab115368%_
                                   _%descriptor115224%_
                                   '#!void)
                                  ((lambda (_%method115370%_) '#f)
                                   _%method-spec115308%_))))))))
              (if (pair? _%rest115240115248%_)
                  (let ((_%hd115245115375%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115240115248%_)))
                        (_%tl115246115377%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115240115248%_))))
                    (let* ((_%method-spec115380%_ _%hd115245115375%_)
                           (_%rest115382%_ _%tl115246115377%_))
                      (_%K115244115372%_
                       _%rest115382%_
                       _%method-spec115380%_)))
                  (_%else115242115304%_)))))))
    (define cast
      (lambda (_%descriptor115130%_ _%obj115132%_)
        (let* ((_%klass115135%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115130%_ '1 '#f '#f)))
               (_%klass-id115138%_
                (let () (declare (not safe)) (##type-id _%klass115135%_))))
          (let _%loop115142%_ ((_%obj115145%_ _%obj115132%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115148%_
                    (let () (declare (not safe)) (class-of _%obj115145%_)))
                   (_%obj-klass-id115151%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115148%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115138%_ _%obj-klass-id115151%_))
                  ((lambda (_%obj115156%_) _%obj115156%_) _%obj115145%_)
                  (if (interface-subclass? _%obj-klass115148%_)
                      (let* ((_%tab115159%_
                              (class-type-interface-table _%obj-klass115148%_))
                             (_%$e115162%_
                              (____prototype-table-get
                               _%tab115159%_
                               _%descriptor115130%_)))
                        (if _%$e115162%_
                            ((lambda (_%prototype115165%_)
                               (if (eq? _%prototype115165%_ '#!void)
                                   (_%loop115142%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115145%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115168%_
                                             _%prototype115169%_
                                             _%obj115170%_)
                                      (if _%prototype115169%_
                                          (let ((_%instance115172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115169%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115172%_
                                               _%obj115170%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115172%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115168%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115170%_)))
                                            '#!void)))
                                    _%descriptor115130%_
                                    _%prototype115165%_
                                    _%obj115145%_)))
                             _%$e115162%_)
                            (let ((_%$e115174%_
                                   (try-create-prototype
                                    _%descriptor115130%_
                                    _%klass115135%_
                                    _%obj-klass115148%_)))
                              (if _%$e115174%_
                                  ((lambda (_%prototype115177%_)
                                     ((lambda (_%descriptor115179%_
                                               _%prototype115180%_
                                               _%obj115181%_)
                                        (if _%prototype115180%_
                                            (let ((_%instance115183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115180%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115183%_
                                                 _%obj115181%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115183%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115179%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115181%_)))
                                              '#!void)))
                                      _%descriptor115130%_
                                      _%prototype115177%_
                                      _%obj115145%_))
                                   _%$e115174%_)
                                  (_%loop115142%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115145%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115187%_
                              (class-type-interface-table _%obj-klass115148%_))
                             (_%$e115189%_
                              (____prototype-table-get
                               _%tab115187%_
                               _%descriptor115130%_)))
                        (if _%$e115189%_
                            ((lambda (_%prototype115192%_)
                               (if (eq? _%prototype115192%_ '#!void)
                                   ((lambda (_%descriptor115194%_
                                             _%prototype115195%_
                                             _%obj115196%_)
                                      (if _%prototype115195%_
                                          (let ((_%instance115198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115195%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115198%_
                                               _%obj115196%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115198%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115194%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115196%_)))
                                            '#!void)))
                                    _%descriptor115130%_
                                    '#f
                                    _%obj115145%_)
                                   ((lambda (_%descriptor115200%_
                                             _%prototype115201%_
                                             _%obj115202%_)
                                      (if _%prototype115201%_
                                          (let ((_%instance115204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115201%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115204%_
                                               _%obj115202%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115204%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115200%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115202%_)))
                                            '#!void)))
                                    _%descriptor115130%_
                                    _%prototype115192%_
                                    _%obj115145%_)))
                             _%$e115189%_)
                            (let ((_%$e115206%_
                                   (create-prototype
                                    _%descriptor115130%_
                                    _%klass115135%_
                                    _%obj-klass115148%_)))
                              (if _%$e115206%_
                                  ((lambda (_%prototype115209%_)
                                     ((lambda (_%descriptor115211%_
                                               _%prototype115212%_
                                               _%obj115213%_)
                                        (if _%prototype115212%_
                                            (let ((_%instance115215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115212%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115215%_
                                                 _%obj115213%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115215%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115211%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115213%_)))
                                              '#!void)))
                                      _%descriptor115130%_
                                      _%prototype115209%_
                                      _%obj115145%_))
                                   _%$e115206%_)
                                  ((lambda (_%descriptor115218%_
                                            _%prototype115219%_
                                            _%obj115220%_)
                                     (if _%prototype115219%_
                                         (let ((_%instance115222%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115219%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115222%_
                                              _%obj115220%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115222%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor115218%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj115220%_)))
                                           '#!void)))
                                   _%descriptor115130%_
                                   '#f
                                   _%obj115145%_))))))))))))
    (define try-cast
      (lambda (_%descriptor115036%_ _%obj115038%_)
        (let* ((_%klass115041%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115036%_ '1 '#f '#f)))
               (_%klass-id115044%_
                (let () (declare (not safe)) (##type-id _%klass115041%_))))
          (let _%loop115048%_ ((_%obj115051%_ _%obj115038%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115054%_
                    (let () (declare (not safe)) (class-of _%obj115051%_)))
                   (_%obj-klass-id115057%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115054%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115044%_ _%obj-klass-id115057%_))
                  ((lambda (_%obj115062%_) _%obj115062%_) _%obj115051%_)
                  (if (interface-subclass? _%obj-klass115054%_)
                      (let* ((_%tab115065%_
                              (class-type-interface-table _%obj-klass115054%_))
                             (_%$e115068%_
                              (____prototype-table-get
                               _%tab115065%_
                               _%descriptor115036%_)))
                        (if _%$e115068%_
                            ((lambda (_%prototype115071%_)
                               (if (eq? _%prototype115071%_ '#!void)
                                   (_%loop115048%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115051%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115074%_
                                             _%prototype115075%_
                                             _%obj115076%_)
                                      (if _%prototype115075%_
                                          (let ((_%instance115078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115075%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115078%_
                                               _%obj115076%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115078%_)
                                          '#f))
                                    _%descriptor115036%_
                                    _%prototype115071%_
                                    _%obj115051%_)))
                             _%$e115068%_)
                            (let ((_%$e115080%_
                                   (try-create-prototype
                                    _%descriptor115036%_
                                    _%klass115041%_
                                    _%obj-klass115054%_)))
                              (if _%$e115080%_
                                  ((lambda (_%prototype115083%_)
                                     ((lambda (_%descriptor115085%_
                                               _%prototype115086%_
                                               _%obj115087%_)
                                        (if _%prototype115086%_
                                            (let ((_%instance115089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115086%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115089%_
                                                 _%obj115087%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115089%_)
                                            '#f))
                                      _%descriptor115036%_
                                      _%prototype115083%_
                                      _%obj115051%_))
                                   _%$e115080%_)
                                  (_%loop115048%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115051%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115093%_
                              (class-type-interface-table _%obj-klass115054%_))
                             (_%$e115095%_
                              (____prototype-table-get
                               _%tab115093%_
                               _%descriptor115036%_)))
                        (if _%$e115095%_
                            ((lambda (_%prototype115098%_)
                               (if (eq? _%prototype115098%_ '#!void)
                                   ((lambda (_%descriptor115100%_
                                             _%prototype115101%_
                                             _%obj115102%_)
                                      (if _%prototype115101%_
                                          (let ((_%instance115104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115101%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115104%_
                                               _%obj115102%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115104%_)
                                          '#f))
                                    _%descriptor115036%_
                                    '#f
                                    _%obj115051%_)
                                   ((lambda (_%descriptor115106%_
                                             _%prototype115107%_
                                             _%obj115108%_)
                                      (if _%prototype115107%_
                                          (let ((_%instance115110%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115107%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115110%_
                                               _%obj115108%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115110%_)
                                          '#f))
                                    _%descriptor115036%_
                                    _%prototype115098%_
                                    _%obj115051%_)))
                             _%$e115095%_)
                            (let ((_%$e115112%_
                                   (try-create-prototype
                                    _%descriptor115036%_
                                    _%klass115041%_
                                    _%obj-klass115054%_)))
                              (if _%$e115112%_
                                  ((lambda (_%prototype115115%_)
                                     ((lambda (_%descriptor115117%_
                                               _%prototype115118%_
                                               _%obj115119%_)
                                        (if _%prototype115118%_
                                            (let ((_%instance115121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115118%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115121%_
                                                 _%obj115119%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115121%_)
                                            '#f))
                                      _%descriptor115036%_
                                      _%prototype115115%_
                                      _%obj115051%_))
                                   _%$e115112%_)
                                  ((lambda (_%descriptor115124%_
                                            _%prototype115125%_
                                            _%obj115126%_)
                                     (if _%prototype115125%_
                                         (let ((_%instance115128%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115125%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115128%_
                                              _%obj115126%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115128%_)
                                         '#f))
                                   _%descriptor115036%_
                                   '#f
                                   _%obj115051%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor114954%_ _%obj114956%_)
        (let* ((_%klass114959%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114954%_ '1 '#f '#f)))
               (_%klass-id114962%_
                (let () (declare (not safe)) (##type-id _%klass114959%_))))
          (let _%loop114966%_ ((_%obj114969%_ _%obj114956%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114972%_
                    (let () (declare (not safe)) (class-of _%obj114969%_)))
                   (_%obj-klass-id114975%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114972%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114962%_ _%obj-klass-id114975%_))
                  ((lambda (_%obj114980%_) '#t) _%obj114969%_)
                  (if (interface-subclass? _%obj-klass114972%_)
                      (let* ((_%tab114983%_
                              (class-type-interface-table _%obj-klass114972%_))
                             (_%$e114986%_
                              (____prototype-table-get
                               _%tab114983%_
                               _%descriptor114954%_)))
                        (if _%$e114986%_
                            ((lambda (_%prototype114989%_)
                               (if (eq? _%prototype114989%_ '#!void)
                                   (_%loop114966%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114969%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor114992%_
                                             _%prototype114993%_
                                             _%obj114994%_)
                                      (if _%prototype114993%_ '#t '#f))
                                    _%descriptor114954%_
                                    _%prototype114989%_
                                    _%obj114969%_)))
                             _%$e114986%_)
                            (let ((_%$e114996%_
                                   (try-create-prototype
                                    _%descriptor114954%_
                                    _%klass114959%_
                                    _%obj-klass114972%_)))
                              (if _%$e114996%_
                                  ((lambda (_%prototype114999%_)
                                     ((lambda (_%descriptor115001%_
                                               _%prototype115002%_
                                               _%obj115003%_)
                                        (if _%prototype115002%_ '#t '#f))
                                      _%descriptor114954%_
                                      _%prototype114999%_
                                      _%obj114969%_))
                                   _%$e114996%_)
                                  (_%loop114966%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114969%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115007%_
                              (class-type-interface-table _%obj-klass114972%_))
                             (_%$e115009%_
                              (____prototype-table-get
                               _%tab115007%_
                               _%descriptor114954%_)))
                        (if _%$e115009%_
                            ((lambda (_%prototype115012%_)
                               (if (eq? _%prototype115012%_ '#!void)
                                   ((lambda (_%descriptor115014%_
                                             _%prototype115015%_
                                             _%obj115016%_)
                                      (if _%prototype115015%_ '#t '#f))
                                    _%descriptor114954%_
                                    '#f
                                    _%obj114969%_)
                                   ((lambda (_%descriptor115018%_
                                             _%prototype115019%_
                                             _%obj115020%_)
                                      (if _%prototype115019%_ '#t '#f))
                                    _%descriptor114954%_
                                    _%prototype115012%_
                                    _%obj114969%_)))
                             _%$e115009%_)
                            (let ((_%$e115022%_
                                   (try-create-prototype
                                    _%descriptor114954%_
                                    _%klass114959%_
                                    _%obj-klass114972%_)))
                              (if _%$e115022%_
                                  ((lambda (_%prototype115025%_)
                                     ((lambda (_%descriptor115027%_
                                               _%prototype115028%_
                                               _%obj115029%_)
                                        (if _%prototype115028%_ '#t '#f))
                                      _%descriptor114954%_
                                      _%prototype115025%_
                                      _%obj114969%_))
                                   _%$e115022%_)
                                  ((lambda (_%descriptor115032%_
                                            _%prototype115033%_
                                            _%obj115034%_)
                                     (if _%prototype115033%_ '#t '#f))
                                   _%descriptor114954%_
                                   '#f
                                   _%obj114969%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor114917%_
               _%obj114918%_
               _%with-prototype+receiver114919%_
               _%with-receiver114920%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor114917%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor114924%_ _%descriptor114917%_))
              (if (procedure? _%with-prototype+receiver114919%_)
                  (let ((_%with-prototype+receiver114934%_
                         _%with-prototype+receiver114919%_))
                    (if (procedure? _%with-receiver114920%_)
                        (let ((_%with-receiver114944%_
                               _%with-receiver114920%_))
                          (__with-prototype
                           _%descriptor114924%_
                           _%obj114918%_
                           _%with-prototype+receiver114934%_
                           _%with-receiver114944%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver114920%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver114919%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor114917%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor114835%_
               _%obj114836%_
               _%with-prototype+receiver114837%_
               _%with-receiver114838%_)
        (let* ((_%descriptor114841%_ _%descriptor114835%_)
               (_%with-prototype+receiver114849%_
                _%with-prototype+receiver114837%_)
               (_%with-receiver114857%_ _%with-receiver114838%_)
               (_%klass114866%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor114841%_ '1 '#f '#f)))
               (_%klass-id114869%_
                (let () (declare (not safe)) (##type-id _%klass114866%_))))
          (let _%loop114873%_ ((_%obj114876%_ _%obj114836%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass114879%_
                    (let () (declare (not safe)) (class-of _%obj114876%_)))
                   (_%obj-klass-id114882%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass114879%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id114869%_ _%obj-klass-id114882%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver114857%_ _%obj114876%_))
                  (if (interface-subclass? _%obj-klass114879%_)
                      (let* ((_%tab114888%_
                              (class-type-interface-table _%obj-klass114879%_))
                             (_%$e114891%_
                              (____prototype-table-get
                               _%tab114888%_
                               _%descriptor114841%_)))
                        (if _%$e114891%_
                            ((lambda (_%prototype114894%_)
                               (if (eq? _%prototype114894%_ '#!void)
                                   (_%loop114873%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj114876%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114849%_
                                      _%descriptor114841%_
                                      _%prototype114894%_
                                      _%obj114876%_))))
                             _%$e114891%_)
                            (let ((_%$e114897%_
                                   (try-create-prototype
                                    _%descriptor114841%_
                                    _%klass114866%_
                                    _%obj-klass114879%_)))
                              (if _%$e114897%_
                                  ((lambda (_%prototype114900%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114849%_
                                        _%descriptor114841%_
                                        _%prototype114900%_
                                        _%obj114876%_)))
                                   _%$e114897%_)
                                  (_%loop114873%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj114876%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab114904%_
                              (class-type-interface-table _%obj-klass114879%_))
                             (_%$e114906%_
                              (____prototype-table-get
                               _%tab114904%_
                               _%descriptor114841%_)))
                        (if _%$e114906%_
                            ((lambda (_%prototype114909%_)
                               (if (eq? _%prototype114909%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114849%_
                                      _%descriptor114841%_
                                      '#f
                                      _%obj114876%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver114849%_
                                      _%descriptor114841%_
                                      _%prototype114909%_
                                      _%obj114876%_))))
                             _%$e114906%_)
                            (let ((_%$e114911%_
                                   (create-prototype
                                    _%descriptor114841%_
                                    _%klass114866%_
                                    _%obj-klass114879%_)))
                              (if _%$e114911%_
                                  ((lambda (_%prototype114914%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver114849%_
                                        _%descriptor114841%_
                                        _%prototype114914%_
                                        _%obj114876%_)))
                                   _%$e114911%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver114849%_
                                     _%descriptor114841%_
                                     '#f
                                     _%obj114876%_)))))))))))))))
