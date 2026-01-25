(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1769382893)
  (begin
    (define CastError::t
      (let ((__tmp116593 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp116593
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args116583%_
        (apply make-instance CastError::t _%$args116583%_)))
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
      (lambda (_%where116457%_ _%message116458%_ . _%irritants116459%_)
        (let ((__tmp116594
               (let ((__obj116586
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj116586
                    _%message116458%_
                    'where:
                    _%where116457%_
                    'irritants:
                    _%irritants116459%_))
                 __obj116586)))
          (declare (not safe))
          (raise __tmp116594))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp116596 (list)) (__tmp116595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp116596
         '(object)
         __tmp116595
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args116454%_
        (apply make-instance interface-instance::t _%$args116454%_)))
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
      (let ((__tmp116598 (list))
            (__tmp116597
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp116598
         '(type methods index)
         __tmp116597
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args116451%_
        (apply make-instance interface-descriptor::t _%$args116451%_)))
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
          (let _%again116431%_ ((_%spin116434%_ '0))
            (if (let ((__tmp116599
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp116599 '0))
                (let ((__tmp116600 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp116600))
                (if (let () (declare (not safe)) (##fx< _%spin116434%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again116431%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin116434%_ '1))))
                    (let ((_%owner116440%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner116440%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner116440%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again116431%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r116448%_
               (let ((_%index116446%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index116446%_ '1)))
                 _%index116446%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r116448%_)))
    (define interface-descriptor:::init!
      (lambda (_%self116412%_ _%type116413%_ _%methods116414%_)
        (let ((_%self116417%_ _%self116412%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116417%_
             _%type116413%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116417%_
             _%methods116414%_
             '2
             '#f
             '#f))
          (let ((__tmp116601 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116417%_
             __tmp116601
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
      (let ((__tmp116603 (list))
            (__tmp116602
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp116603
         '(lock table)
         __tmp116602
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args116287%_
        (apply make-instance prototype-table::t _%$args116287%_)))
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
      (lambda (_%self116273%_)
        (let ((_%self116276%_ _%self116273%_))
          (let ((__tmp116604 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self116276%_ __tmp116604 '1 '#f '#f))
          (let ((__tmp116605
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116276%_
             __tmp116605
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
      (lambda (_%prototable116130%_ _%descriptor116131%_)
        (let* ((_%prototable116134%_ _%prototable116130%_)
               (_%descriptor116142%_ _%descriptor116131%_))
          (____prototype-table-get
           _%prototable116134%_
           _%descriptor116142%_))))
    (define ____prototype-table-get
      (lambda (_%prototable116083%_ _%descriptor116084%_)
        (let* ((_%prototable116087%_ _%prototable116083%_)
               (_%descriptor116095%_ _%descriptor116084%_))
          (declare (not safe))
          (let ((_%lock116105%_
                 (##unchecked-structure-ref _%prototable116087%_ '1 '#f '#f))
                (_%index116106%_
                 (##unchecked-structure-ref _%descriptor116095%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again116110%_ ((_%spin116113%_ '0))
                (if (##fx= (##vector-cas! _%lock116105%_ '0 '1 '0) '0)
                    (##vector-set! _%lock116105%_ '1 (current-thread))
                    (if (##fx< _%spin116113%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again116110%_ (##fx+ _%spin116113%_ '1)))
                        (let ((_%owner116119%_
                               (##vector-ref _%lock116105%_ '1)))
                          (if (eq? _%owner116119%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner116119%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again116110%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r116127%_
                   (let ((_%tab116125%_
                          (##unchecked-structure-ref
                           _%prototable116087%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index116106%_ (vector-length _%tab116125%_))
                         (vector-ref _%tab116125%_ _%index116106%_)
                         '#f))))
              (##vector-set! _%lock116105%_ '1 '#f)
              (##vector-cas! _%lock116105%_ '0 '0 '1)
              _%$r116127%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable116061%_ _%descriptor116062%_ _%prototype116063%_)
        (let* ((_%prototable116066%_ _%prototable116061%_)
               (_%descriptor116074%_ _%descriptor116062%_))
          (____prototype-table-set!
           _%prototable116066%_
           _%descriptor116074%_
           _%prototype116063%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable116008%_ _%descriptor116009%_ _%prototype116010%_)
        (let* ((_%prototable116013%_ _%prototable116008%_)
               (_%descriptor116021%_ _%descriptor116009%_))
          (declare (not safe))
          (let ((_%lock116031%_
                 (##unchecked-structure-ref _%prototable116013%_ '1 '#f '#f))
                (_%index116032%_
                 (##unchecked-structure-ref _%descriptor116021%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again116036%_ ((_%spin116039%_ '0))
                (if (##fx= (##vector-cas! _%lock116031%_ '0 '1 '0) '0)
                    (##vector-set! _%lock116031%_ '1 (current-thread))
                    (if (##fx< _%spin116039%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again116036%_ (##fx+ _%spin116039%_ '1)))
                        (let ((_%owner116045%_
                               (##vector-ref _%lock116031%_ '1)))
                          (if (eq? _%owner116045%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner116045%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again116036%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r116058%_
                   (let ((_%tab116051%_
                          (##unchecked-structure-ref
                           _%prototable116013%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index116032%_ (vector-length _%tab116051%_))
                         (vector-set!
                          _%tab116051%_
                          _%index116032%_
                          _%prototype116010%_)
                         (let* ((_%new-size116053%_ __next-interface-index)
                                (_%new-tab116055%_
                                 (##make-vector _%new-size116053%_ '#f)))
                           (subvector-move!
                            _%tab116051%_
                            '0
                            (vector-length _%tab116051%_)
                            _%new-tab116055%_
                            '0)
                           (vector-set!
                            _%new-tab116055%_
                            _%index116032%_
                            _%prototype116010%_)
                           (##unchecked-structure-set!
                            _%prototable116013%_
                            _%new-tab116055%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock116031%_ '1 '#f)
              (##vector-cas! _%lock116031%_ '0 '0 '1)
              _%$r116058%_)))))
    (define interface-subclass?
      (lambda (_%klass116001%_)
        (let ((_%super116002116004%_
               (let () (declare (not safe)) (##type-super _%klass116001%_))))
          (if _%super116002116004%_
              (let ((_%super116006%_ _%super116002116004%_))
                (eq? (let () (declare (not safe)) (##type-id _%super116006%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass115993%_)
        (let ((_%$e115995%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass115993%_ '13 '#f '#f))))
          (if _%$e115995%_
              _%$e115995%_
              (let ((_%tab115999%_
                     (let ((__obj116590
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj116590)
                       __obj116590)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass115993%_
                   _%tab115999%_
                   '13
                   '#f
                   '#f))
                _%tab115999%_)))))
    (define create-prototype
      (lambda (_%descriptor115833%_ _%klass115834%_ _%obj-klass115835%_)
        (let ((_%method-table115837%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115835%_))))
          (let _%loop115840%_ ((_%rest115843%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115833%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115845%_ '0)
                               (_%methods115847%_ '()))
            (let* ((_%rest115849115857%_ _%rest115843%_)
                   (_%else115851115913%_
                    (lambda ()
                      (let ((_%prototype115865%_
                             (let ((__obj116591
                                    (let ((__tmp116606
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115845%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115834%_
                                       __tmp116606))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116591 '#f))
                               __obj116591)))
                        (let _%loop115868%_ ((_%rest115870%_ _%methods115847%_)
                                             (_%off115871%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115845%_ '1))))
                          (let* ((_%rest115873115881%_ _%rest115870%_)
                                 (_%else115875115894%_
                                  (lambda ()
                                    (let ((_%tab115889%_
                                           (class-type-interface-table
                                            _%obj-klass115835%_)))
                                      (____prototype-table-set!
                                       _%tab115889%_
                                       _%descriptor115833%_
                                       _%prototype115865%_)
                                      ((lambda (_%prototype115892%_)
                                         _%prototype115892%_)
                                       _%prototype115865%_))))
                                 (_%K115877115901%_
                                  (lambda (_%rest115897%_ _%method115898%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115865%_
                                       _%method115898%_
                                       _%off115871%_
                                       _%klass115834%_
                                       '#f))
                                    (_%loop115868%_
                                     _%rest115897%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115871%_ '1))))))
                            (if (pair? _%rest115873115881%_)
                                (let ((_%hd115878115904%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115873115881%_)))
                                      (_%tl115879115906%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115873115881%_))))
                                  (let* ((_%method115909%_ _%hd115878115904%_)
                                         (_%rest115911%_ _%tl115879115906%_))
                                    (_%K115877115901%_
                                     _%rest115911%_
                                     _%method115909%_)))
                                (_%else115875115894%_)))))))
                   (_%K115853115981%_
                    (lambda (_%rest115916%_ _%method-spec115917%_)
                      (if (pair? _%method-spec115917%_)
                          (let _%loop-inner115921%_ ((_%methods-rest115924%_
                                                      _%method-spec115917%_))
                            (let* ((_%methods-rest115926115934%_
                                    _%methods-rest115924%_)
                                   (_%else115928115946%_
                                    (lambda ()
                                      (let ((_%tab115942%_
                                             (class-type-interface-table
                                              _%obj-klass115835%_)))
                                        (____prototype-table-set!
                                         _%tab115942%_
                                         _%descriptor115833%_
                                         '#!void)
                                        ((lambda (_%method115944%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor115833%_
                                            'class:
                                            _%obj-klass115835%_
                                            'method:
                                            _%method115944%_)
                                           '#!void)
                                         _%method-spec115917%_))))
                                   (_%K115930115959%_
                                    (lambda (_%methods-rest115949%_
                                             _%method-name115950%_)
                                      (let ((_%$e115953%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115837%_
                                                _%method-name115950%_
                                                '#f))))
                                        (if _%$e115953%_
                                            ((lambda (_%method115956%_)
                                               (_%loop115840%_
                                                _%rest115916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115845%_ '1))
                                                (cons _%method115956%_
                                                      _%methods115847%_)))
                                             _%$e115953%_)
                                            (_%loop-inner115921%_
                                             _%methods-rest115949%_))))))
                              (if (pair? _%methods-rest115926115934%_)
                                  (let ((_%hd115931115962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115926115934%_)))
                                        (_%tl115932115964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115926115934%_))))
                                    (let* ((_%method-name115967%_
                                            _%hd115931115962%_)
                                           (_%methods-rest115969%_
                                            _%tl115932115964%_))
                                      (_%K115930115959%_
                                       _%methods-rest115969%_
                                       _%method-name115967%_)))
                                  (_%else115928115946%_))))
                          (let ((_%$e115971%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115837%_
                                    _%method-spec115917%_
                                    '#f))))
                            (if _%$e115971%_
                                ((lambda (_%method115974%_)
                                   (_%loop115840%_
                                    _%rest115916%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115845%_ '1))
                                    (cons _%method115974%_ _%methods115847%_)))
                                 _%$e115971%_)
                                (let ((_%tab115977%_
                                       (class-type-interface-table
                                        _%obj-klass115835%_)))
                                  (____prototype-table-set!
                                   _%tab115977%_
                                   _%descriptor115833%_
                                   '#!void)
                                  ((lambda (_%method115979%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor115833%_
                                      'class:
                                      _%obj-klass115835%_
                                      'method:
                                      _%method115979%_)
                                     '#!void)
                                   _%method-spec115917%_))))))))
              (if (pair? _%rest115849115857%_)
                  (let ((_%hd115854115984%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115849115857%_)))
                        (_%tl115855115986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115849115857%_))))
                    (let* ((_%method-spec115989%_ _%hd115854115984%_)
                           (_%rest115991%_ _%tl115855115986%_))
                      (_%K115853115981%_
                       _%rest115991%_
                       _%method-spec115989%_)))
                  (_%else115851115913%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor115673%_ _%klass115674%_ _%obj-klass115675%_)
        (let ((_%method-table115677%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115675%_))))
          (let _%loop115680%_ ((_%rest115683%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115673%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115685%_ '0)
                               (_%methods115687%_ '()))
            (let* ((_%rest115689115697%_ _%rest115683%_)
                   (_%else115691115753%_
                    (lambda ()
                      (let ((_%prototype115705%_
                             (let ((__obj116592
                                    (let ((__tmp116607
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115685%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115674%_
                                       __tmp116607))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116592 '#f))
                               __obj116592)))
                        (let _%loop115708%_ ((_%rest115710%_ _%methods115687%_)
                                             (_%off115711%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115685%_ '1))))
                          (let* ((_%rest115713115721%_ _%rest115710%_)
                                 (_%else115715115734%_
                                  (lambda ()
                                    (let ((_%tab115729%_
                                           (class-type-interface-table
                                            _%obj-klass115675%_)))
                                      (____prototype-table-set!
                                       _%tab115729%_
                                       _%descriptor115673%_
                                       _%prototype115705%_)
                                      ((lambda (_%prototype115732%_)
                                         _%prototype115732%_)
                                       _%prototype115705%_))))
                                 (_%K115717115741%_
                                  (lambda (_%rest115737%_ _%method115738%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115705%_
                                       _%method115738%_
                                       _%off115711%_
                                       _%klass115674%_
                                       '#f))
                                    (_%loop115708%_
                                     _%rest115737%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115711%_ '1))))))
                            (if (pair? _%rest115713115721%_)
                                (let ((_%hd115718115744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115713115721%_)))
                                      (_%tl115719115746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115713115721%_))))
                                  (let* ((_%method115749%_ _%hd115718115744%_)
                                         (_%rest115751%_ _%tl115719115746%_))
                                    (_%K115717115741%_
                                     _%rest115751%_
                                     _%method115749%_)))
                                (_%else115715115734%_)))))))
                   (_%K115693115821%_
                    (lambda (_%rest115756%_ _%method-spec115757%_)
                      (if (pair? _%method-spec115757%_)
                          (let _%loop-inner115761%_ ((_%methods-rest115764%_
                                                      _%method-spec115757%_))
                            (let* ((_%methods-rest115766115774%_
                                    _%methods-rest115764%_)
                                   (_%else115768115786%_
                                    (lambda ()
                                      (let ((_%tab115782%_
                                             (class-type-interface-table
                                              _%obj-klass115675%_)))
                                        (____prototype-table-set!
                                         _%tab115782%_
                                         _%descriptor115673%_
                                         '#!void)
                                        ((lambda (_%method115784%_) '#f)
                                         _%method-spec115757%_))))
                                   (_%K115770115799%_
                                    (lambda (_%methods-rest115789%_
                                             _%method-name115790%_)
                                      (let ((_%$e115793%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115677%_
                                                _%method-name115790%_
                                                '#f))))
                                        (if _%$e115793%_
                                            ((lambda (_%method115796%_)
                                               (_%loop115680%_
                                                _%rest115756%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115685%_ '1))
                                                (cons _%method115796%_
                                                      _%methods115687%_)))
                                             _%$e115793%_)
                                            (_%loop-inner115761%_
                                             _%methods-rest115789%_))))))
                              (if (pair? _%methods-rest115766115774%_)
                                  (let ((_%hd115771115802%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115766115774%_)))
                                        (_%tl115772115804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115766115774%_))))
                                    (let* ((_%method-name115807%_
                                            _%hd115771115802%_)
                                           (_%methods-rest115809%_
                                            _%tl115772115804%_))
                                      (_%K115770115799%_
                                       _%methods-rest115809%_
                                       _%method-name115807%_)))
                                  (_%else115768115786%_))))
                          (let ((_%$e115811%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115677%_
                                    _%method-spec115757%_
                                    '#f))))
                            (if _%$e115811%_
                                ((lambda (_%method115814%_)
                                   (_%loop115680%_
                                    _%rest115756%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115685%_ '1))
                                    (cons _%method115814%_ _%methods115687%_)))
                                 _%$e115811%_)
                                (let ((_%tab115817%_
                                       (class-type-interface-table
                                        _%obj-klass115675%_)))
                                  (____prototype-table-set!
                                   _%tab115817%_
                                   _%descriptor115673%_
                                   '#!void)
                                  ((lambda (_%method115819%_) '#f)
                                   _%method-spec115757%_))))))))
              (if (pair? _%rest115689115697%_)
                  (let ((_%hd115694115824%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115689115697%_)))
                        (_%tl115695115826%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115689115697%_))))
                    (let* ((_%method-spec115829%_ _%hd115694115824%_)
                           (_%rest115831%_ _%tl115695115826%_))
                      (_%K115693115821%_
                       _%rest115831%_
                       _%method-spec115829%_)))
                  (_%else115691115753%_)))))))
    (define cast
      (lambda (_%descriptor115579%_ _%obj115581%_)
        (let* ((_%klass115584%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115579%_ '1 '#f '#f)))
               (_%klass-id115587%_
                (let () (declare (not safe)) (##type-id _%klass115584%_))))
          (let _%loop115591%_ ((_%obj115594%_ _%obj115581%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115597%_
                    (let () (declare (not safe)) (class-of _%obj115594%_)))
                   (_%obj-klass-id115600%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115597%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115587%_ _%obj-klass-id115600%_))
                  ((lambda (_%obj115605%_) _%obj115605%_) _%obj115594%_)
                  (if (interface-subclass? _%obj-klass115597%_)
                      (let* ((_%tab115608%_
                              (class-type-interface-table _%obj-klass115597%_))
                             (_%$e115611%_
                              (____prototype-table-get
                               _%tab115608%_
                               _%descriptor115579%_)))
                        (if _%$e115611%_
                            ((lambda (_%prototype115614%_)
                               (if (eq? _%prototype115614%_ '#!void)
                                   (_%loop115591%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115594%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115617%_
                                             _%prototype115618%_
                                             _%obj115619%_)
                                      (if _%prototype115618%_
                                          (let ((_%instance115621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115618%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115621%_
                                               _%obj115619%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115621%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115617%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115619%_)))
                                            '#!void)))
                                    _%descriptor115579%_
                                    _%prototype115614%_
                                    _%obj115594%_)))
                             _%$e115611%_)
                            (let ((_%$e115623%_
                                   (try-create-prototype
                                    _%descriptor115579%_
                                    _%klass115584%_
                                    _%obj-klass115597%_)))
                              (if _%$e115623%_
                                  ((lambda (_%prototype115626%_)
                                     ((lambda (_%descriptor115628%_
                                               _%prototype115629%_
                                               _%obj115630%_)
                                        (if _%prototype115629%_
                                            (let ((_%instance115632%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115629%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115632%_
                                                 _%obj115630%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115632%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115628%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115630%_)))
                                              '#!void)))
                                      _%descriptor115579%_
                                      _%prototype115626%_
                                      _%obj115594%_))
                                   _%$e115623%_)
                                  (_%loop115591%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115594%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115636%_
                              (class-type-interface-table _%obj-klass115597%_))
                             (_%$e115638%_
                              (____prototype-table-get
                               _%tab115636%_
                               _%descriptor115579%_)))
                        (if _%$e115638%_
                            ((lambda (_%prototype115641%_)
                               (if (eq? _%prototype115641%_ '#!void)
                                   ((lambda (_%descriptor115643%_
                                             _%prototype115644%_
                                             _%obj115645%_)
                                      (if _%prototype115644%_
                                          (let ((_%instance115647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115644%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115647%_
                                               _%obj115645%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115647%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115643%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115645%_)))
                                            '#!void)))
                                    _%descriptor115579%_
                                    '#f
                                    _%obj115594%_)
                                   ((lambda (_%descriptor115649%_
                                             _%prototype115650%_
                                             _%obj115651%_)
                                      (if _%prototype115650%_
                                          (let ((_%instance115653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115650%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115653%_
                                               _%obj115651%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115653%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115649%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115651%_)))
                                            '#!void)))
                                    _%descriptor115579%_
                                    _%prototype115641%_
                                    _%obj115594%_)))
                             _%$e115638%_)
                            (let ((_%$e115655%_
                                   (create-prototype
                                    _%descriptor115579%_
                                    _%klass115584%_
                                    _%obj-klass115597%_)))
                              (if _%$e115655%_
                                  ((lambda (_%prototype115658%_)
                                     ((lambda (_%descriptor115660%_
                                               _%prototype115661%_
                                               _%obj115662%_)
                                        (if _%prototype115661%_
                                            (let ((_%instance115664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115661%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115664%_
                                                 _%obj115662%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115664%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115660%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115662%_)))
                                              '#!void)))
                                      _%descriptor115579%_
                                      _%prototype115658%_
                                      _%obj115594%_))
                                   _%$e115655%_)
                                  ((lambda (_%descriptor115667%_
                                            _%prototype115668%_
                                            _%obj115669%_)
                                     (if _%prototype115668%_
                                         (let ((_%instance115671%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115668%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115671%_
                                              _%obj115669%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115671%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor115667%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj115669%_)))
                                           '#!void)))
                                   _%descriptor115579%_
                                   '#f
                                   _%obj115594%_))))))))))))
    (define try-cast
      (lambda (_%descriptor115485%_ _%obj115487%_)
        (let* ((_%klass115490%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115485%_ '1 '#f '#f)))
               (_%klass-id115493%_
                (let () (declare (not safe)) (##type-id _%klass115490%_))))
          (let _%loop115497%_ ((_%obj115500%_ _%obj115487%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115503%_
                    (let () (declare (not safe)) (class-of _%obj115500%_)))
                   (_%obj-klass-id115506%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115503%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115493%_ _%obj-klass-id115506%_))
                  ((lambda (_%obj115511%_) _%obj115511%_) _%obj115500%_)
                  (if (interface-subclass? _%obj-klass115503%_)
                      (let* ((_%tab115514%_
                              (class-type-interface-table _%obj-klass115503%_))
                             (_%$e115517%_
                              (____prototype-table-get
                               _%tab115514%_
                               _%descriptor115485%_)))
                        (if _%$e115517%_
                            ((lambda (_%prototype115520%_)
                               (if (eq? _%prototype115520%_ '#!void)
                                   (_%loop115497%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115500%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115523%_
                                             _%prototype115524%_
                                             _%obj115525%_)
                                      (if _%prototype115524%_
                                          (let ((_%instance115527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115524%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115527%_
                                               _%obj115525%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115527%_)
                                          '#f))
                                    _%descriptor115485%_
                                    _%prototype115520%_
                                    _%obj115500%_)))
                             _%$e115517%_)
                            (let ((_%$e115529%_
                                   (try-create-prototype
                                    _%descriptor115485%_
                                    _%klass115490%_
                                    _%obj-klass115503%_)))
                              (if _%$e115529%_
                                  ((lambda (_%prototype115532%_)
                                     ((lambda (_%descriptor115534%_
                                               _%prototype115535%_
                                               _%obj115536%_)
                                        (if _%prototype115535%_
                                            (let ((_%instance115538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115535%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115538%_
                                                 _%obj115536%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115538%_)
                                            '#f))
                                      _%descriptor115485%_
                                      _%prototype115532%_
                                      _%obj115500%_))
                                   _%$e115529%_)
                                  (_%loop115497%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115500%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115542%_
                              (class-type-interface-table _%obj-klass115503%_))
                             (_%$e115544%_
                              (____prototype-table-get
                               _%tab115542%_
                               _%descriptor115485%_)))
                        (if _%$e115544%_
                            ((lambda (_%prototype115547%_)
                               (if (eq? _%prototype115547%_ '#!void)
                                   ((lambda (_%descriptor115549%_
                                             _%prototype115550%_
                                             _%obj115551%_)
                                      (if _%prototype115550%_
                                          (let ((_%instance115553%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115550%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115553%_
                                               _%obj115551%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115553%_)
                                          '#f))
                                    _%descriptor115485%_
                                    '#f
                                    _%obj115500%_)
                                   ((lambda (_%descriptor115555%_
                                             _%prototype115556%_
                                             _%obj115557%_)
                                      (if _%prototype115556%_
                                          (let ((_%instance115559%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115556%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115559%_
                                               _%obj115557%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115559%_)
                                          '#f))
                                    _%descriptor115485%_
                                    _%prototype115547%_
                                    _%obj115500%_)))
                             _%$e115544%_)
                            (let ((_%$e115561%_
                                   (try-create-prototype
                                    _%descriptor115485%_
                                    _%klass115490%_
                                    _%obj-klass115503%_)))
                              (if _%$e115561%_
                                  ((lambda (_%prototype115564%_)
                                     ((lambda (_%descriptor115566%_
                                               _%prototype115567%_
                                               _%obj115568%_)
                                        (if _%prototype115567%_
                                            (let ((_%instance115570%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115567%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115570%_
                                                 _%obj115568%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115570%_)
                                            '#f))
                                      _%descriptor115485%_
                                      _%prototype115564%_
                                      _%obj115500%_))
                                   _%$e115561%_)
                                  ((lambda (_%descriptor115573%_
                                            _%prototype115574%_
                                            _%obj115575%_)
                                     (if _%prototype115574%_
                                         (let ((_%instance115577%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115574%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115577%_
                                              _%obj115575%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115577%_)
                                         '#f))
                                   _%descriptor115485%_
                                   '#f
                                   _%obj115500%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor115403%_ _%obj115405%_)
        (let* ((_%klass115408%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115403%_ '1 '#f '#f)))
               (_%klass-id115411%_
                (let () (declare (not safe)) (##type-id _%klass115408%_))))
          (let _%loop115415%_ ((_%obj115418%_ _%obj115405%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115421%_
                    (let () (declare (not safe)) (class-of _%obj115418%_)))
                   (_%obj-klass-id115424%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115421%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115411%_ _%obj-klass-id115424%_))
                  ((lambda (_%obj115429%_) '#t) _%obj115418%_)
                  (if (interface-subclass? _%obj-klass115421%_)
                      (let* ((_%tab115432%_
                              (class-type-interface-table _%obj-klass115421%_))
                             (_%$e115435%_
                              (____prototype-table-get
                               _%tab115432%_
                               _%descriptor115403%_)))
                        (if _%$e115435%_
                            ((lambda (_%prototype115438%_)
                               (if (eq? _%prototype115438%_ '#!void)
                                   (_%loop115415%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115418%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115441%_
                                             _%prototype115442%_
                                             _%obj115443%_)
                                      (if _%prototype115442%_ '#t '#f))
                                    _%descriptor115403%_
                                    _%prototype115438%_
                                    _%obj115418%_)))
                             _%$e115435%_)
                            (let ((_%$e115445%_
                                   (try-create-prototype
                                    _%descriptor115403%_
                                    _%klass115408%_
                                    _%obj-klass115421%_)))
                              (if _%$e115445%_
                                  ((lambda (_%prototype115448%_)
                                     ((lambda (_%descriptor115450%_
                                               _%prototype115451%_
                                               _%obj115452%_)
                                        (if _%prototype115451%_ '#t '#f))
                                      _%descriptor115403%_
                                      _%prototype115448%_
                                      _%obj115418%_))
                                   _%$e115445%_)
                                  (_%loop115415%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115418%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115456%_
                              (class-type-interface-table _%obj-klass115421%_))
                             (_%$e115458%_
                              (____prototype-table-get
                               _%tab115456%_
                               _%descriptor115403%_)))
                        (if _%$e115458%_
                            ((lambda (_%prototype115461%_)
                               (if (eq? _%prototype115461%_ '#!void)
                                   ((lambda (_%descriptor115463%_
                                             _%prototype115464%_
                                             _%obj115465%_)
                                      (if _%prototype115464%_ '#t '#f))
                                    _%descriptor115403%_
                                    '#f
                                    _%obj115418%_)
                                   ((lambda (_%descriptor115467%_
                                             _%prototype115468%_
                                             _%obj115469%_)
                                      (if _%prototype115468%_ '#t '#f))
                                    _%descriptor115403%_
                                    _%prototype115461%_
                                    _%obj115418%_)))
                             _%$e115458%_)
                            (let ((_%$e115471%_
                                   (try-create-prototype
                                    _%descriptor115403%_
                                    _%klass115408%_
                                    _%obj-klass115421%_)))
                              (if _%$e115471%_
                                  ((lambda (_%prototype115474%_)
                                     ((lambda (_%descriptor115476%_
                                               _%prototype115477%_
                                               _%obj115478%_)
                                        (if _%prototype115477%_ '#t '#f))
                                      _%descriptor115403%_
                                      _%prototype115474%_
                                      _%obj115418%_))
                                   _%$e115471%_)
                                  ((lambda (_%descriptor115481%_
                                            _%prototype115482%_
                                            _%obj115483%_)
                                     (if _%prototype115482%_ '#t '#f))
                                   _%descriptor115403%_
                                   '#f
                                   _%obj115418%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor115366%_
               _%obj115367%_
               _%with-prototype+receiver115368%_
               _%with-receiver115369%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor115366%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor115373%_ _%descriptor115366%_))
              (if (procedure? _%with-prototype+receiver115368%_)
                  (let ((_%with-prototype+receiver115383%_
                         _%with-prototype+receiver115368%_))
                    (if (procedure? _%with-receiver115369%_)
                        (let ((_%with-receiver115393%_
                               _%with-receiver115369%_))
                          (__with-prototype
                           _%descriptor115373%_
                           _%obj115367%_
                           _%with-prototype+receiver115383%_
                           _%with-receiver115393%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver115369%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver115368%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor115366%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor115284%_
               _%obj115285%_
               _%with-prototype+receiver115286%_
               _%with-receiver115287%_)
        (let* ((_%descriptor115290%_ _%descriptor115284%_)
               (_%with-prototype+receiver115298%_
                _%with-prototype+receiver115286%_)
               (_%with-receiver115306%_ _%with-receiver115287%_)
               (_%klass115315%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115290%_ '1 '#f '#f)))
               (_%klass-id115318%_
                (let () (declare (not safe)) (##type-id _%klass115315%_))))
          (let _%loop115322%_ ((_%obj115325%_ _%obj115285%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115328%_
                    (let () (declare (not safe)) (class-of _%obj115325%_)))
                   (_%obj-klass-id115331%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115328%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115318%_ _%obj-klass-id115331%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver115306%_ _%obj115325%_))
                  (if (interface-subclass? _%obj-klass115328%_)
                      (let* ((_%tab115337%_
                              (class-type-interface-table _%obj-klass115328%_))
                             (_%$e115340%_
                              (____prototype-table-get
                               _%tab115337%_
                               _%descriptor115290%_)))
                        (if _%$e115340%_
                            ((lambda (_%prototype115343%_)
                               (if (eq? _%prototype115343%_ '#!void)
                                   (_%loop115322%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115325%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115298%_
                                      _%descriptor115290%_
                                      _%prototype115343%_
                                      _%obj115325%_))))
                             _%$e115340%_)
                            (let ((_%$e115346%_
                                   (try-create-prototype
                                    _%descriptor115290%_
                                    _%klass115315%_
                                    _%obj-klass115328%_)))
                              (if _%$e115346%_
                                  ((lambda (_%prototype115349%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver115298%_
                                        _%descriptor115290%_
                                        _%prototype115349%_
                                        _%obj115325%_)))
                                   _%$e115346%_)
                                  (_%loop115322%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115325%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115353%_
                              (class-type-interface-table _%obj-klass115328%_))
                             (_%$e115355%_
                              (____prototype-table-get
                               _%tab115353%_
                               _%descriptor115290%_)))
                        (if _%$e115355%_
                            ((lambda (_%prototype115358%_)
                               (if (eq? _%prototype115358%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115298%_
                                      _%descriptor115290%_
                                      '#f
                                      _%obj115325%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115298%_
                                      _%descriptor115290%_
                                      _%prototype115358%_
                                      _%obj115325%_))))
                             _%$e115355%_)
                            (let ((_%$e115360%_
                                   (create-prototype
                                    _%descriptor115290%_
                                    _%klass115315%_
                                    _%obj-klass115328%_)))
                              (if _%$e115360%_
                                  ((lambda (_%prototype115363%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver115298%_
                                        _%descriptor115290%_
                                        _%prototype115363%_
                                        _%obj115325%_)))
                                   _%$e115360%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver115298%_
                                     _%descriptor115290%_
                                     '#f
                                     _%obj115325%_)))))))))))))))
