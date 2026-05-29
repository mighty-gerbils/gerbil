(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1779967241)
  (begin
    (define CastError::t
      (let ((__tmp146682 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp146682
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args146596%_
        (apply make-instance CastError::t _%$args146596%_)))
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
      (lambda (_%where146470%_ _%message146471%_ . _%irritants146472%_)
        (let ((__tmp146683
               (let ((__obj146677
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj146677
                    _%message146471%_
                    'where:
                    _%where146470%_
                    'irritants:
                    _%irritants146472%_))
                 __obj146677)))
          (declare (not safe))
          (raise __tmp146683))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp146685 (list))
            (__tmp146684 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp146685
         '(object)
         __tmp146684
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args146467%_
        (apply make-instance interface-instance::t _%$args146467%_)))
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
      (let ((__tmp146687 (list))
            (__tmp146686
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp146687
         '(type methods index)
         __tmp146686
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args146464%_
        (apply make-instance interface-descriptor::t _%$args146464%_)))
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
          (let _%again146442%_ ((_%spin146445%_ '0))
            (if (let ((__tmp146688
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp146688 '0))
                (let ((__tmp146689 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp146689))
                (if (let () (declare (not safe)) (##fx< _%spin146445%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again146442%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin146445%_ '1))))
                    (let ((_%owner146451%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner146451%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner146451%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again146442%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r146459%_
               (let ((_%index146457%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index146457%_ '1)))
                 _%index146457%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r146459%_)))
    (define interface-descriptor:::init!
      (lambda (_%self146423%_ _%type146424%_ _%methods146425%_)
        (let ((_%self146428%_ _%self146423%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146428%_
             _%type146424%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146428%_
             _%methods146425%_
             '2
             '#f
             '#f))
          (let ((__tmp146690 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146428%_
             __tmp146690
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
      (let ((__tmp146692 (list))
            (__tmp146691
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp146692
         '(lock table)
         __tmp146691
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args146298%_
        (apply make-instance prototype-table::t _%$args146298%_)))
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
      (lambda (_%self146284%_)
        (let ((_%self146287%_ _%self146284%_))
          (let ((__tmp146693 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self146287%_ __tmp146693 '1 '#f '#f))
          (let ((__tmp146694
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146287%_
             __tmp146694
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
      (lambda (_%prototable146137%_ _%descriptor146138%_)
        (let* ((_%prototable146141%_ _%prototable146137%_)
               (_%descriptor146149%_ _%descriptor146138%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab146159%_
                 (##unchecked-structure-ref _%prototable146141%_ '2 '#f '#f))
                (_%index146160%_
                 (##unchecked-structure-ref _%descriptor146149%_ '3 '#f '#f)))
            (if (##fx< _%index146160%_ (vector-length _%tab146159%_))
                (vector-ref _%tab146159%_ _%index146160%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable146116%_ _%descriptor146117%_)
        (let* ((_%prototable146120%_ _%prototable146116%_)
               (_%descriptor146128%_ _%descriptor146117%_))
          (____prototype-table-get
           _%prototable146120%_
           _%descriptor146128%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable146062%_ _%descriptor146063%_ _%prototype146064%_)
        (let* ((_%prototable146067%_ _%prototable146062%_)
               (_%descriptor146075%_ _%descriptor146063%_))
          (declare (not safe))
          (let ((_%lock146085%_
                 (##unchecked-structure-ref _%prototable146067%_ '1 '#f '#f))
                (_%index146086%_
                 (##unchecked-structure-ref _%descriptor146075%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again146090%_ ((_%spin146093%_ '0))
                (if (##fx= (##vector-cas! _%lock146085%_ '0 '1 '0) '0)
                    (##vector-set! _%lock146085%_ '1 (current-thread))
                    (if (##fx< _%spin146093%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again146090%_ (##fx+ _%spin146093%_ '1)))
                        (let ((_%owner146099%_
                               (##vector-ref _%lock146085%_ '1)))
                          (if (eq? _%owner146099%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner146099%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again146090%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r146111%_
                   (let ((_%tab146105%_
                          (##unchecked-structure-ref
                           _%prototable146067%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index146086%_ (vector-length _%tab146105%_))
                         (vector-set!
                          _%tab146105%_
                          _%index146086%_
                          _%prototype146064%_)
                         (let ((_%new-size146107%_ __next-interface-index))
                           (if (##fx< _%index146086%_ _%new-size146107%_)
                               (let ((_%new-tab146109%_
                                      (##make-vector _%new-size146107%_ '#f)))
                                 (subvector-move!
                                  _%tab146105%_
                                  '0
                                  (vector-length _%tab146105%_)
                                  _%new-tab146109%_
                                  '0)
                                 (vector-set!
                                  _%new-tab146109%_
                                  _%index146086%_
                                  _%prototype146064%_)
                                 (##unchecked-structure-set!
                                  _%prototable146067%_
                                  _%new-tab146109%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor146075%_
                                      'index:
                                      _%index146086%_
                                      'max-index:
                                      _%new-size146107%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock146085%_ '1 '#f)
                  (##vector-cas! _%lock146085%_ '0 '0 '1)))
              _%$r146111%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable146040%_ _%descriptor146041%_ _%prototype146042%_)
        (let* ((_%prototable146045%_ _%prototable146040%_)
               (_%descriptor146053%_ _%descriptor146041%_))
          (____prototype-table-set!
           _%prototable146045%_
           _%descriptor146053%_
           _%prototype146042%_))))
    (define interface-subclass?
      (lambda (_%klass146033%_)
        (let ((_%super146034146036%_
               (let () (declare (not safe)) (##type-super _%klass146033%_))))
          (if _%super146034146036%_
              (let ((_%super146038%_ _%super146034146036%_))
                (eq? (let () (declare (not safe)) (##type-id _%super146038%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass146025%_)
        (let ((_%$e146027%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass146025%_ '13 '#f '#f))))
          (if _%$e146027%_
              _%$e146027%_
              (let ((_%tab146031%_
                     (let ((__obj146681
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj146681)
                       __obj146681)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass146025%_
                   _%tab146031%_
                   '13
                   '#f
                   '#f))
                _%tab146031%_)))))
    (define create-prototype
      (lambda (_%descriptor145708%_ _%klass145709%_ _%obj-klass145710%_)
        (let ((_%method-table145728%_
               (let ((_%klass145712%_ _%obj-klass145710%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145712%_ 'class))
                     (let ((_%klass145717%_ _%klass145712%_))
                       (declare (not safe))
                       (__specialize-class _%klass145717%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145712%_)
                       '#!void)))))
          (let _%loop145731%_ ((_%rest145734%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145708%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145736%_ '0)
                               (_%methods145738%_ '()))
            (let* ((_%rest145740145748%_ _%rest145734%_)
                   (_%else145742145875%_
                    (lambda ()
                      (let ((_%prototype145791%_
                             (let* ((_%klass145756%_ _%klass145709%_)
                                    (_%k145759%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145736%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145756%_
                                      'class))
                                   (let* ((_%klass145764%_ _%klass145756%_)
                                          (_%k145781%_ _%k145759%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145764%_
                                      _%k145781%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145756%_)
                                     '#!void)))))
                        (let _%loop145794%_ ((_%rest145796%_ _%methods145738%_)
                                             (_%off145797%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145736%_ '1))))
                          (let* ((_%rest145799145807%_ _%rest145796%_)
                                 (_%else145801145856%_
                                  (lambda ()
                                    (let ((_%tab145815%_
                                           (class-type-interface-table
                                            _%obj-klass145710%_)))
                                      (let* ((_%prototable145818%_
                                              _%tab145815%_)
                                             (_%descriptor145821%_
                                              _%descriptor145708%_)
                                             (_%prototype145824%_
                                              _%prototype145791%_)
                                             (_%prototable145828%_
                                              _%prototable145818%_)
                                             (_%descriptor145845%_
                                              _%descriptor145821%_))
                                        (____prototype-table-set!
                                         _%prototable145828%_
                                         _%descriptor145845%_
                                         _%prototype145824%_))
                                      _%prototype145791%_)))
                                 (_%K145803145863%_
                                  (lambda (_%rest145859%_ _%method145860%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145791%_
                                       _%method145860%_
                                       _%off145797%_
                                       _%klass145709%_
                                       '#f))
                                    (_%loop145794%_
                                     _%rest145859%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145797%_ '1))))))
                            (if (pair? _%rest145799145807%_)
                                (let ((_%hd145804145866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest145799145807%_)))
                                      (_%tl145805145868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest145799145807%_))))
                                  (let* ((_%method145871%_ _%hd145804145866%_)
                                         (_%rest145873%_ _%tl145805145868%_))
                                    (_%K145803145863%_
                                     _%rest145873%_
                                     _%method145871%_)))
                                (_%else145801145856%_)))))))
                   (_%K145744146013%_
                    (lambda (_%rest145878%_ _%method-spec145879%_)
                      (if (pair? _%method-spec145879%_)
                          (let _%loop-inner145883%_ ((_%methods-rest145886%_
                                                      _%method-spec145879%_))
                            (let* ((_%methods-rest145888145896%_
                                    _%methods-rest145886%_)
                                   (_%else145890145946%_
                                    (lambda ()
                                      (let ((_%tab145904%_
                                             (class-type-interface-table
                                              _%obj-klass145710%_)))
                                        (let* ((_%prototable145906%_
                                                _%tab145904%_)
                                               (_%descriptor145909%_
                                                _%descriptor145708%_)
                                               (_%prototype145912%_ '#!void)
                                               (_%prototable145916%_
                                                _%prototable145906%_)
                                               (_%descriptor145935%_
                                                _%descriptor145909%_))
                                          (____prototype-table-set!
                                           _%prototable145916%_
                                           _%descriptor145935%_
                                           _%prototype145912%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor145708%_
                                           'class:
                                           _%obj-klass145710%_
                                           'method:
                                           _%method-spec145879%_)
                                          '#!void))))
                                   (_%K145892145959%_
                                    (lambda (_%methods-rest145949%_
                                             _%method-name145950%_)
                                      (let ((_%$e145953%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145728%_
                                                _%method-name145950%_
                                                '#f))))
                                        (if _%$e145953%_
                                            (_%loop145731%_
                                             _%rest145878%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145736%_ '1))
                                             (cons _%$e145953%_
                                                   _%methods145738%_))
                                            (_%loop-inner145883%_
                                             _%methods-rest145949%_))))))
                              (if (pair? _%methods-rest145888145896%_)
                                  (let ((_%hd145893145962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest145888145896%_)))
                                        (_%tl145894145964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest145888145896%_))))
                                    (let* ((_%method-name145967%_
                                            _%hd145893145962%_)
                                           (_%methods-rest145969%_
                                            _%tl145894145964%_))
                                      (_%K145892145959%_
                                       _%methods-rest145969%_
                                       _%method-name145967%_)))
                                  (_%else145890145946%_))))
                          (let ((_%$e145971%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145728%_
                                    _%method-spec145879%_
                                    '#f))))
                            (if _%$e145971%_
                                (_%loop145731%_
                                 _%rest145878%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145736%_ '1))
                                 (cons _%$e145971%_ _%methods145738%_))
                                (let ((_%tab145977%_
                                       (class-type-interface-table
                                        _%obj-klass145710%_)))
                                  (let* ((_%prototable145979%_ _%tab145977%_)
                                         (_%descriptor145982%_
                                          _%descriptor145708%_)
                                         (_%prototype145985%_ '#!void)
                                         (_%prototable145989%_
                                          _%prototable145979%_)
                                         (_%descriptor146002%_
                                          _%descriptor145982%_))
                                    (____prototype-table-set!
                                     _%prototable145989%_
                                     _%descriptor146002%_
                                     _%prototype145985%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor145708%_
                                     'class:
                                     _%obj-klass145710%_
                                     'method:
                                     _%method-spec145879%_)
                                    '#!void))))))))
              (if (pair? _%rest145740145748%_)
                  (let ((_%hd145745146016%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest145740145748%_)))
                        (_%tl145746146018%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest145740145748%_))))
                    (let* ((_%method-spec146021%_ _%hd145745146016%_)
                           (_%rest146023%_ _%tl145746146018%_))
                      (_%K145744146013%_
                       _%rest146023%_
                       _%method-spec146021%_)))
                  (_%else145742145875%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor145391%_ _%klass145392%_ _%obj-klass145393%_)
        (let ((_%method-table145411%_
               (let ((_%klass145395%_ _%obj-klass145393%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145395%_ 'class))
                     (let ((_%klass145400%_ _%klass145395%_))
                       (declare (not safe))
                       (__specialize-class _%klass145400%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145395%_)
                       '#!void)))))
          (let _%loop145414%_ ((_%rest145417%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145391%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145419%_ '0)
                               (_%methods145421%_ '()))
            (let* ((_%rest145423145431%_ _%rest145417%_)
                   (_%else145425145558%_
                    (lambda ()
                      (let ((_%prototype145474%_
                             (let* ((_%klass145439%_ _%klass145392%_)
                                    (_%k145442%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145419%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145439%_
                                      'class))
                                   (let* ((_%klass145447%_ _%klass145439%_)
                                          (_%k145464%_ _%k145442%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145447%_
                                      _%k145464%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145439%_)
                                     '#!void)))))
                        (let _%loop145477%_ ((_%rest145479%_ _%methods145421%_)
                                             (_%off145480%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145419%_ '1))))
                          (let* ((_%rest145482145490%_ _%rest145479%_)
                                 (_%else145484145539%_
                                  (lambda ()
                                    (let ((_%tab145498%_
                                           (class-type-interface-table
                                            _%obj-klass145393%_)))
                                      (let* ((_%prototable145501%_
                                              _%tab145498%_)
                                             (_%descriptor145504%_
                                              _%descriptor145391%_)
                                             (_%prototype145507%_
                                              _%prototype145474%_)
                                             (_%prototable145511%_
                                              _%prototable145501%_)
                                             (_%descriptor145528%_
                                              _%descriptor145504%_))
                                        (____prototype-table-set!
                                         _%prototable145511%_
                                         _%descriptor145528%_
                                         _%prototype145507%_))
                                      _%prototype145474%_)))
                                 (_%K145486145546%_
                                  (lambda (_%rest145542%_ _%method145543%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145474%_
                                       _%method145543%_
                                       _%off145480%_
                                       _%klass145392%_
                                       '#f))
                                    (_%loop145477%_
                                     _%rest145542%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145480%_ '1))))))
                            (if (pair? _%rest145482145490%_)
                                (let ((_%hd145487145549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest145482145490%_)))
                                      (_%tl145488145551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest145482145490%_))))
                                  (let* ((_%method145554%_ _%hd145487145549%_)
                                         (_%rest145556%_ _%tl145488145551%_))
                                    (_%K145486145546%_
                                     _%rest145556%_
                                     _%method145554%_)))
                                (_%else145484145539%_)))))))
                   (_%K145427145696%_
                    (lambda (_%rest145561%_ _%method-spec145562%_)
                      (if (pair? _%method-spec145562%_)
                          (let _%loop-inner145566%_ ((_%methods-rest145569%_
                                                      _%method-spec145562%_))
                            (let* ((_%methods-rest145571145579%_
                                    _%methods-rest145569%_)
                                   (_%else145573145629%_
                                    (lambda ()
                                      (let ((_%tab145587%_
                                             (class-type-interface-table
                                              _%obj-klass145393%_)))
                                        (let* ((_%prototable145589%_
                                                _%tab145587%_)
                                               (_%descriptor145592%_
                                                _%descriptor145391%_)
                                               (_%prototype145595%_ '#!void)
                                               (_%prototable145599%_
                                                _%prototable145589%_)
                                               (_%descriptor145618%_
                                                _%descriptor145592%_))
                                          (____prototype-table-set!
                                           _%prototable145599%_
                                           _%descriptor145618%_
                                           _%prototype145595%_))
                                        '#f)))
                                   (_%K145575145642%_
                                    (lambda (_%methods-rest145632%_
                                             _%method-name145633%_)
                                      (let ((_%$e145636%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145411%_
                                                _%method-name145633%_
                                                '#f))))
                                        (if _%$e145636%_
                                            (_%loop145414%_
                                             _%rest145561%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145419%_ '1))
                                             (cons _%$e145636%_
                                                   _%methods145421%_))
                                            (_%loop-inner145566%_
                                             _%methods-rest145632%_))))))
                              (if (pair? _%methods-rest145571145579%_)
                                  (let ((_%hd145576145645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest145571145579%_)))
                                        (_%tl145577145647%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest145571145579%_))))
                                    (let* ((_%method-name145650%_
                                            _%hd145576145645%_)
                                           (_%methods-rest145652%_
                                            _%tl145577145647%_))
                                      (_%K145575145642%_
                                       _%methods-rest145652%_
                                       _%method-name145650%_)))
                                  (_%else145573145629%_))))
                          (let ((_%$e145654%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145411%_
                                    _%method-spec145562%_
                                    '#f))))
                            (if _%$e145654%_
                                (_%loop145414%_
                                 _%rest145561%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145419%_ '1))
                                 (cons _%$e145654%_ _%methods145421%_))
                                (let ((_%tab145660%_
                                       (class-type-interface-table
                                        _%obj-klass145393%_)))
                                  (let* ((_%prototable145662%_ _%tab145660%_)
                                         (_%descriptor145665%_
                                          _%descriptor145391%_)
                                         (_%prototype145668%_ '#!void)
                                         (_%prototable145672%_
                                          _%prototable145662%_)
                                         (_%descriptor145685%_
                                          _%descriptor145665%_))
                                    (____prototype-table-set!
                                     _%prototable145672%_
                                     _%descriptor145685%_
                                     _%prototype145668%_))
                                  '#f)))))))
              (if (pair? _%rest145423145431%_)
                  (let ((_%hd145428145699%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest145423145431%_)))
                        (_%tl145429145701%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest145423145431%_))))
                    (let* ((_%method-spec145704%_ _%hd145428145699%_)
                           (_%rest145706%_ _%tl145429145701%_))
                      (_%K145427145696%_
                       _%rest145706%_
                       _%method-spec145704%_)))
                  (_%else145425145558%_)))))))
    (define cast
      (lambda (_%descriptor145225%_ _%obj145227%_)
        (let* ((_%klass145230%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor145225%_ '1 '#f '#f)))
               (_%klass-id145233%_
                (let () (declare (not safe)) (##type-id _%klass145230%_))))
          (let _%loop145237%_ ((_%obj145240%_ _%obj145227%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass145243%_
                    (let () (declare (not safe)) (class-of _%obj145240%_)))
                   (_%obj-klass-id145246%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass145243%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id145233%_ _%obj-klass-id145246%_))
                  _%obj145240%_
                  (if (interface-subclass? _%obj-klass145243%_)
                      (let _%loop-interface145254%_ ((_%iface-klass145257%_
                                                      _%obj-klass145243%_))
                        (if _%iface-klass145257%_
                            (let* ((_%tab145260%_
                                    (class-type-interface-table
                                     _%iface-klass145257%_))
                                   (_%$e145302%_
                                    (let* ((_%prototable145263%_ _%tab145260%_)
                                           (_%descriptor145266%_
                                            _%descriptor145225%_)
                                           (_%prototable145270%_
                                            _%prototable145263%_)
                                           (_%descriptor145293%_
                                            _%descriptor145266%_))
                                      (____prototype-table-get
                                       _%prototable145270%_
                                       _%descriptor145293%_))))
                              (if _%$e145302%_
                                  (if (eq? _%$e145302%_ '#!void)
                                      (_%loop-interface145254%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass145257%_)))
                                      (if _%$e145302%_
                                          (let ((_%instance145312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e145302%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance145312%_
                                               _%obj145240%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance145312%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor145225%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj145240%_)))
                                            '#!void)))
                                  (let ((_%$e145314%_
                                         (try-create-prototype
                                          _%descriptor145225%_
                                          _%klass145230%_
                                          _%iface-klass145257%_)))
                                    (if _%$e145314%_
                                        (if _%$e145314%_
                                            (let ((_%instance145323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e145314%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance145323%_
                                                 _%obj145240%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance145323%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor145225%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj145240%_)))
                                              '#!void))
                                        (_%loop-interface145254%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass145257%_)))))))
                            (_%loop145237%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj145240%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145327%_
                              (class-type-interface-table _%obj-klass145243%_))
                             (_%$e145356%_
                              (let* ((_%prototable145329%_ _%tab145327%_)
                                     (_%descriptor145332%_
                                      _%descriptor145225%_)
                                     (_%prototable145336%_
                                      _%prototable145329%_)
                                     (_%descriptor145347%_
                                      _%descriptor145332%_))
                                (____prototype-table-get
                                 _%prototable145336%_
                                 _%descriptor145347%_))))
                        (if _%$e145356%_
                            (if (eq? _%$e145356%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor145225%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj145240%_)))
                                  '#!void)
                                (if _%$e145356%_
                                    (let ((_%instance145371%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e145356%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance145371%_
                                         _%obj145240%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance145371%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor145225%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj145240%_)))
                                      '#!void)))
                            (let ((_%$e145373%_
                                   (create-prototype
                                    _%descriptor145225%_
                                    _%klass145230%_
                                    _%obj-klass145243%_)))
                              (if _%$e145373%_
                                  (if _%$e145373%_
                                      (let ((_%instance145382%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e145373%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance145382%_
                                           _%obj145240%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance145382%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor145225%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj145240%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor145225%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj145240%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor145059%_ _%obj145061%_)
        (let* ((_%klass145064%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor145059%_ '1 '#f '#f)))
               (_%klass-id145067%_
                (let () (declare (not safe)) (##type-id _%klass145064%_))))
          (let _%loop145071%_ ((_%obj145074%_ _%obj145061%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass145077%_
                    (let () (declare (not safe)) (class-of _%obj145074%_)))
                   (_%obj-klass-id145080%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass145077%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id145067%_ _%obj-klass-id145080%_))
                  _%obj145074%_
                  (if (interface-subclass? _%obj-klass145077%_)
                      (let _%loop-interface145088%_ ((_%iface-klass145091%_
                                                      _%obj-klass145077%_))
                        (if _%iface-klass145091%_
                            (let* ((_%tab145094%_
                                    (class-type-interface-table
                                     _%iface-klass145091%_))
                                   (_%$e145136%_
                                    (let* ((_%prototable145097%_ _%tab145094%_)
                                           (_%descriptor145100%_
                                            _%descriptor145059%_)
                                           (_%prototable145104%_
                                            _%prototable145097%_)
                                           (_%descriptor145127%_
                                            _%descriptor145100%_))
                                      (____prototype-table-get
                                       _%prototable145104%_
                                       _%descriptor145127%_))))
                              (if _%$e145136%_
                                  (if (eq? _%$e145136%_ '#!void)
                                      (_%loop-interface145088%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass145091%_)))
                                      (if _%$e145136%_
                                          (let ((_%instance145146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e145136%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance145146%_
                                               _%obj145074%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance145146%_)
                                          '#f))
                                  (let ((_%$e145148%_
                                         (try-create-prototype
                                          _%descriptor145059%_
                                          _%klass145064%_
                                          _%iface-klass145091%_)))
                                    (if _%$e145148%_
                                        (if _%$e145148%_
                                            (let ((_%instance145157%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e145148%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance145157%_
                                                 _%obj145074%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance145157%_)
                                            '#f)
                                        (_%loop-interface145088%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass145091%_)))))))
                            (_%loop145071%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj145074%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145161%_
                              (class-type-interface-table _%obj-klass145077%_))
                             (_%$e145190%_
                              (let* ((_%prototable145163%_ _%tab145161%_)
                                     (_%descriptor145166%_
                                      _%descriptor145059%_)
                                     (_%prototable145170%_
                                      _%prototable145163%_)
                                     (_%descriptor145181%_
                                      _%descriptor145166%_))
                                (____prototype-table-get
                                 _%prototable145170%_
                                 _%descriptor145181%_))))
                        (if _%$e145190%_
                            (if (eq? _%$e145190%_ '#!void)
                                '#f
                                (if _%$e145190%_
                                    (let ((_%instance145205%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e145190%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance145205%_
                                         _%obj145074%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance145205%_)
                                    '#f))
                            (let ((_%$e145207%_
                                   (try-create-prototype
                                    _%descriptor145059%_
                                    _%klass145064%_
                                    _%obj-klass145077%_)))
                              (if _%$e145207%_
                                  (if _%$e145207%_
                                      (let ((_%instance145216%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e145207%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance145216%_
                                           _%obj145074%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance145216%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor144905%_ _%obj144907%_)
        (let* ((_%klass144910%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144905%_ '1 '#f '#f)))
               (_%klass-id144913%_
                (let () (declare (not safe)) (##type-id _%klass144910%_))))
          (let _%loop144917%_ ((_%obj144920%_ _%obj144907%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144923%_
                    (let () (declare (not safe)) (class-of _%obj144920%_)))
                   (_%obj-klass-id144926%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144923%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144913%_ _%obj-klass-id144926%_))
                  '#t
                  (if (interface-subclass? _%obj-klass144923%_)
                      (let _%loop-interface144934%_ ((_%iface-klass144937%_
                                                      _%obj-klass144923%_))
                        (if _%iface-klass144937%_
                            (let* ((_%tab144940%_
                                    (class-type-interface-table
                                     _%iface-klass144937%_))
                                   (_%$e144982%_
                                    (let* ((_%prototable144943%_ _%tab144940%_)
                                           (_%descriptor144946%_
                                            _%descriptor144905%_)
                                           (_%prototable144950%_
                                            _%prototable144943%_)
                                           (_%descriptor144973%_
                                            _%descriptor144946%_))
                                      (____prototype-table-get
                                       _%prototable144950%_
                                       _%descriptor144973%_))))
                              (if _%$e144982%_
                                  (if (eq? _%$e144982%_ '#!void)
                                      (_%loop-interface144934%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144937%_)))
                                      (if _%$e144982%_ '#t '#f))
                                  (let ((_%$e144992%_
                                         (try-create-prototype
                                          _%descriptor144905%_
                                          _%klass144910%_
                                          _%iface-klass144937%_)))
                                    (if _%$e144992%_
                                        (if _%$e144992%_ '#t '#f)
                                        (_%loop-interface144934%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144937%_)))))))
                            (_%loop144917%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144920%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145003%_
                              (class-type-interface-table _%obj-klass144923%_))
                             (_%$e145032%_
                              (let* ((_%prototable145005%_ _%tab145003%_)
                                     (_%descriptor145008%_
                                      _%descriptor144905%_)
                                     (_%prototable145012%_
                                      _%prototable145005%_)
                                     (_%descriptor145023%_
                                      _%descriptor145008%_))
                                (____prototype-table-get
                                 _%prototable145012%_
                                 _%descriptor145023%_))))
                        (if _%$e145032%_
                            (if (eq? _%$e145032%_ '#!void)
                                '#f
                                (if _%$e145032%_ '#t '#f))
                            (let ((_%$e145045%_
                                   (try-create-prototype
                                    _%descriptor144905%_
                                    _%klass144910%_
                                    _%obj-klass144923%_)))
                              (if _%$e145045%_
                                  (if _%$e145045%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor144749%_
               _%obj144750%_
               _%with-prototype+receiver144751%_
               _%with-receiver144752%_)
        (let* ((_%descriptor144755%_ _%descriptor144749%_)
               (_%with-prototype+receiver144763%_
                _%with-prototype+receiver144751%_)
               (_%with-receiver144771%_ _%with-receiver144752%_)
               (_%klass144780%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144755%_ '1 '#f '#f)))
               (_%klass-id144783%_
                (let () (declare (not safe)) (##type-id _%klass144780%_))))
          (let _%loop144787%_ ((_%obj144790%_ _%obj144750%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144793%_
                    (let () (declare (not safe)) (class-of _%obj144790%_)))
                   (_%obj-klass-id144796%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144793%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144783%_ _%obj-klass-id144796%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver144771%_ _%obj144790%_))
                  (if (interface-subclass? _%obj-klass144793%_)
                      (let _%loop-interface144802%_ ((_%iface-klass144805%_
                                                      _%obj-klass144793%_))
                        (if _%iface-klass144805%_
                            (let* ((_%tab144808%_
                                    (class-type-interface-table
                                     _%iface-klass144805%_))
                                   (_%$e144852%_
                                    (let* ((_%prototable144811%_ _%tab144808%_)
                                           (_%descriptor144814%_
                                            _%descriptor144755%_)
                                           (_%prototable144818%_
                                            _%prototable144811%_)
                                           (_%descriptor144843%_
                                            _%descriptor144814%_))
                                      (____prototype-table-get
                                       _%prototable144818%_
                                       _%descriptor144843%_))))
                              (if _%$e144852%_
                                  (if (eq? _%$e144852%_ '#!void)
                                      (_%loop-interface144802%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144805%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver144763%_
                                         _%descriptor144755%_
                                         _%$e144852%_
                                         _%obj144790%_)))
                                  (let ((_%$e144858%_
                                         (try-create-prototype
                                          _%descriptor144755%_
                                          _%klass144780%_
                                          _%iface-klass144805%_)))
                                    (if _%$e144858%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver144763%_
                                           _%descriptor144755%_
                                           _%$e144858%_
                                           _%obj144790%_))
                                        (_%loop-interface144802%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144805%_)))))))
                            (_%loop144787%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144790%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144865%_
                              (class-type-interface-table _%obj-klass144793%_))
                             (_%$e144894%_
                              (let* ((_%prototable144867%_ _%tab144865%_)
                                     (_%descriptor144870%_
                                      _%descriptor144755%_)
                                     (_%prototable144874%_
                                      _%prototable144867%_)
                                     (_%descriptor144885%_
                                      _%descriptor144870%_))
                                (____prototype-table-get
                                 _%prototable144874%_
                                 _%descriptor144885%_))))
                        (if _%$e144894%_
                            (if (eq? _%$e144894%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144763%_
                                   _%descriptor144755%_
                                   '#f
                                   _%obj144790%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144763%_
                                   _%descriptor144755%_
                                   _%$e144894%_
                                   _%obj144790%_)))
                            (let ((_%$e144899%_
                                   (create-prototype
                                    _%descriptor144755%_
                                    _%klass144780%_
                                    _%obj-klass144793%_)))
                              (if _%$e144899%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144763%_
                                     _%descriptor144755%_
                                     _%$e144899%_
                                     _%obj144790%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144763%_
                                     _%descriptor144755%_
                                     '#f
                                     _%obj144790%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor144712%_
               _%obj144713%_
               _%with-prototype+receiver144714%_
               _%with-receiver144715%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor144712%_
               'interface-descriptor::t))
            (let ((_%descriptor144719%_ _%descriptor144712%_))
              (if (procedure? _%with-prototype+receiver144714%_)
                  (let ((_%with-prototype+receiver144729%_
                         _%with-prototype+receiver144714%_))
                    (if (procedure? _%with-receiver144715%_)
                        (let ((_%with-receiver144739%_
                               _%with-receiver144715%_))
                          (__with-prototype
                           _%descriptor144719%_
                           _%obj144713%_
                           _%with-prototype+receiver144729%_
                           _%with-receiver144739%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver144715%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver144714%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor144712%_)
              '#!void))))))
