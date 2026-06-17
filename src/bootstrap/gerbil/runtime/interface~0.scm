(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1781697559)
  (begin
    (define CastError::t
      (let ((__tmp148235 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp148235
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args148149%_
        (apply make-instance CastError::t _%$args148149%_)))
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
      (lambda (_%where148023%_ _%message148024%_ . _%irritants148025%_)
        (let ((__tmp148236
               (let ((__obj148230
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj148230
                    _%message148024%_
                    'where:
                    _%where148023%_
                    'irritants:
                    _%irritants148025%_))
                 __obj148230)))
          (declare (not safe))
          (raise __tmp148236))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp148238 (list))
            (__tmp148237 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp148238
         '(object)
         __tmp148237
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args148020%_
        (apply make-instance interface-instance::t _%$args148020%_)))
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
      (let ((__tmp148240 (list))
            (__tmp148239
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp148240
         '(type methods index)
         __tmp148239
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args148017%_
        (apply make-instance interface-descriptor::t _%$args148017%_)))
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
          (let _%again147995%_ ((_%spin147998%_ '0))
            (if (let ((__tmp148241
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp148241 '0))
                (let ((__tmp148242 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp148242))
                (if (let () (declare (not safe)) (##fx< _%spin147998%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again147995%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin147998%_ '1))))
                    (let ((_%owner148004%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner148004%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner148004%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again147995%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r148012%_
               (let ((_%index148010%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index148010%_ '1)))
                 _%index148010%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r148012%_)))
    (define interface-descriptor:::init!
      (lambda (_%self147976%_ _%type147977%_ _%methods147978%_)
        (let ((_%self147981%_ _%self147976%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147981%_
             _%type147977%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147981%_
             _%methods147978%_
             '2
             '#f
             '#f))
          (let ((__tmp148243 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147981%_
             __tmp148243
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
      (let ((__tmp148245 (list))
            (__tmp148244
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp148245
         '(lock table)
         __tmp148244
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args147851%_
        (apply make-instance prototype-table::t _%$args147851%_)))
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
      (lambda (_%self147837%_)
        (let ((_%self147840%_ _%self147837%_))
          (let ((__tmp148246 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self147840%_ __tmp148246 '1 '#f '#f))
          (let ((__tmp148247
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147840%_
             __tmp148247
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
      (lambda (_%prototable147690%_ _%descriptor147691%_)
        (let* ((_%prototable147694%_ _%prototable147690%_)
               (_%descriptor147702%_ _%descriptor147691%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab147712%_
                 (##unchecked-structure-ref _%prototable147694%_ '2 '#f '#f))
                (_%index147713%_
                 (##unchecked-structure-ref _%descriptor147702%_ '3 '#f '#f)))
            (if (##fx< _%index147713%_ (vector-length _%tab147712%_))
                (vector-ref _%tab147712%_ _%index147713%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable147669%_ _%descriptor147670%_)
        (let* ((_%prototable147673%_ _%prototable147669%_)
               (_%descriptor147681%_ _%descriptor147670%_))
          (____prototype-table-get
           _%prototable147673%_
           _%descriptor147681%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable147615%_ _%descriptor147616%_ _%prototype147617%_)
        (let* ((_%prototable147620%_ _%prototable147615%_)
               (_%descriptor147628%_ _%descriptor147616%_))
          (declare (not safe))
          (let ((_%lock147638%_
                 (##unchecked-structure-ref _%prototable147620%_ '1 '#f '#f))
                (_%index147639%_
                 (##unchecked-structure-ref _%descriptor147628%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again147643%_ ((_%spin147646%_ '0))
                (if (##fx= (##vector-cas! _%lock147638%_ '0 '1 '0) '0)
                    (##vector-set! _%lock147638%_ '1 (current-thread))
                    (if (##fx< _%spin147646%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again147643%_ (##fx+ _%spin147646%_ '1)))
                        (let ((_%owner147652%_
                               (##vector-ref _%lock147638%_ '1)))
                          (if (eq? _%owner147652%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner147652%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again147643%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r147664%_
                   (let ((_%tab147658%_
                          (##unchecked-structure-ref
                           _%prototable147620%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index147639%_ (vector-length _%tab147658%_))
                         (vector-set!
                          _%tab147658%_
                          _%index147639%_
                          _%prototype147617%_)
                         (let ((_%new-size147660%_ __next-interface-index))
                           (if (##fx< _%index147639%_ _%new-size147660%_)
                               (let ((_%new-tab147662%_
                                      (##make-vector _%new-size147660%_ '#f)))
                                 (subvector-move!
                                  _%tab147658%_
                                  '0
                                  (vector-length _%tab147658%_)
                                  _%new-tab147662%_
                                  '0)
                                 (vector-set!
                                  _%new-tab147662%_
                                  _%index147639%_
                                  _%prototype147617%_)
                                 (##unchecked-structure-set!
                                  _%prototable147620%_
                                  _%new-tab147662%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor147628%_
                                      'index:
                                      _%index147639%_
                                      'max-index:
                                      _%new-size147660%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock147638%_ '1 '#f)
                  (##vector-cas! _%lock147638%_ '0 '0 '1)))
              _%$r147664%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable147593%_ _%descriptor147594%_ _%prototype147595%_)
        (let* ((_%prototable147598%_ _%prototable147593%_)
               (_%descriptor147606%_ _%descriptor147594%_))
          (____prototype-table-set!
           _%prototable147598%_
           _%descriptor147606%_
           _%prototype147595%_))))
    (define interface-subclass?
      (lambda (_%klass147586%_)
        (let ((_%$%super147587147589%_
               (let () (declare (not safe)) (##type-super _%klass147586%_))))
          (if _%$%super147587147589%_
              (let ((_%super147591%_ _%$%super147587147589%_))
                (eq? (let () (declare (not safe)) (##type-id _%super147591%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass147578%_)
        (let ((_%$e147580%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass147578%_ '13 '#f '#f))))
          (if _%$e147580%_
              _%$e147580%_
              (let ((_%tab147584%_
                     (let ((__obj148234
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj148234)
                       __obj148234)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass147578%_
                   _%tab147584%_
                   '13
                   '#f
                   '#f))
                _%tab147584%_)))))
    (define create-prototype
      (lambda (_%descriptor147261%_ _%klass147262%_ _%obj-klass147263%_)
        (let ((_%method-table147281%_
               (let ((_%klass147265%_ _%obj-klass147263%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass147265%_ 'class))
                     (let ((_%klass147270%_ _%klass147265%_))
                       (declare (not safe))
                       (__specialize-class _%klass147270%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass147265%_)
                       '#!void)))))
          (let _%loop147284%_ ((_%rest147287%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor147261%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count147289%_ '0)
                               (_%methods147291%_ '()))
            (let* ((_%$%rest147293147301%_ _%rest147287%_)
                   (_%$%else147295147428%_
                    (lambda ()
                      (let ((_%prototype147344%_
                             (let* ((_%klass147309%_ _%klass147262%_)
                                    (_%k147312%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count147289%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass147309%_
                                      'class))
                                   (let* ((_%klass147317%_ _%klass147309%_)
                                          (_%k147334%_ _%k147312%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass147317%_
                                      _%k147334%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass147309%_)
                                     '#!void)))))
                        (let _%loop147347%_ ((_%rest147349%_ _%methods147291%_)
                                             (_%off147350%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count147289%_ '1))))
                          (let* ((_%$%rest147352147360%_ _%rest147349%_)
                                 (_%$%else147354147409%_
                                  (lambda ()
                                    (let ((_%tab147368%_
                                           (class-type-interface-table
                                            _%obj-klass147263%_)))
                                      (let* ((_%prototable147371%_
                                              _%tab147368%_)
                                             (_%descriptor147374%_
                                              _%descriptor147261%_)
                                             (_%prototype147377%_
                                              _%prototype147344%_)
                                             (_%prototable147381%_
                                              _%prototable147371%_)
                                             (_%descriptor147398%_
                                              _%descriptor147374%_))
                                        (____prototype-table-set!
                                         _%prototable147381%_
                                         _%descriptor147398%_
                                         _%prototype147377%_))
                                      _%prototype147344%_)))
                                 (_%$%K147356147416%_
                                  (lambda (_%rest147412%_ _%method147413%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype147344%_
                                       _%method147413%_
                                       _%off147350%_
                                       _%klass147262%_
                                       '#f))
                                    (_%loop147347%_
                                     _%rest147412%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off147350%_ '1))))))
                            (if (pair? _%$%rest147352147360%_)
                                (let ((_%$%hd147357147419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest147352147360%_)))
                                      (_%$%tl147358147421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest147352147360%_))))
                                  (let* ((_%method147424%_
                                          _%$%hd147357147419%_)
                                         (_%rest147426%_ _%$%tl147358147421%_))
                                    (_%$%K147356147416%_
                                     _%rest147426%_
                                     _%method147424%_)))
                                (_%$%else147354147409%_)))))))
                   (_%$%K147297147566%_
                    (lambda (_%rest147431%_ _%method-spec147432%_)
                      (if (pair? _%method-spec147432%_)
                          (let _%loop-inner147436%_ ((_%methods-rest147439%_
                                                      _%method-spec147432%_))
                            (let* ((_%$%methods-rest147441147449%_
                                    _%methods-rest147439%_)
                                   (_%$%else147443147499%_
                                    (lambda ()
                                      (let ((_%tab147457%_
                                             (class-type-interface-table
                                              _%obj-klass147263%_)))
                                        (let* ((_%prototable147459%_
                                                _%tab147457%_)
                                               (_%descriptor147462%_
                                                _%descriptor147261%_)
                                               (_%prototype147465%_ '#!void)
                                               (_%prototable147469%_
                                                _%prototable147459%_)
                                               (_%descriptor147488%_
                                                _%descriptor147462%_))
                                          (____prototype-table-set!
                                           _%prototable147469%_
                                           _%descriptor147488%_
                                           _%prototype147465%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor147261%_
                                           'class:
                                           _%obj-klass147263%_
                                           'method:
                                           _%method-spec147432%_)
                                          '#!void))))
                                   (_%$%K147445147512%_
                                    (lambda (_%methods-rest147502%_
                                             _%method-name147503%_)
                                      (let ((_%$e147506%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table147281%_
                                                _%method-name147503%_
                                                '#f))))
                                        (if _%$e147506%_
                                            (_%loop147284%_
                                             _%rest147431%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count147289%_ '1))
                                             (cons _%$e147506%_
                                                   _%methods147291%_))
                                            (_%loop-inner147436%_
                                             _%methods-rest147502%_))))))
                              (if (pair? _%$%methods-rest147441147449%_)
                                  (let ((_%$%hd147446147515%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest147441147449%_)))
                                        (_%$%tl147447147517%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest147441147449%_))))
                                    (let* ((_%method-name147520%_
                                            _%$%hd147446147515%_)
                                           (_%methods-rest147522%_
                                            _%$%tl147447147517%_))
                                      (_%$%K147445147512%_
                                       _%methods-rest147522%_
                                       _%method-name147520%_)))
                                  (_%$%else147443147499%_))))
                          (let ((_%$e147524%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table147281%_
                                    _%method-spec147432%_
                                    '#f))))
                            (if _%$e147524%_
                                (_%loop147284%_
                                 _%rest147431%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count147289%_ '1))
                                 (cons _%$e147524%_ _%methods147291%_))
                                (let ((_%tab147530%_
                                       (class-type-interface-table
                                        _%obj-klass147263%_)))
                                  (let* ((_%prototable147532%_ _%tab147530%_)
                                         (_%descriptor147535%_
                                          _%descriptor147261%_)
                                         (_%prototype147538%_ '#!void)
                                         (_%prototable147542%_
                                          _%prototable147532%_)
                                         (_%descriptor147555%_
                                          _%descriptor147535%_))
                                    (____prototype-table-set!
                                     _%prototable147542%_
                                     _%descriptor147555%_
                                     _%prototype147538%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor147261%_
                                     'class:
                                     _%obj-klass147263%_
                                     'method:
                                     _%method-spec147432%_)
                                    '#!void))))))))
              (if (pair? _%$%rest147293147301%_)
                  (let ((_%$%hd147298147569%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest147293147301%_)))
                        (_%$%tl147299147571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest147293147301%_))))
                    (let* ((_%method-spec147574%_ _%$%hd147298147569%_)
                           (_%rest147576%_ _%$%tl147299147571%_))
                      (_%$%K147297147566%_
                       _%rest147576%_
                       _%method-spec147574%_)))
                  (_%$%else147295147428%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor146944%_ _%klass146945%_ _%obj-klass146946%_)
        (let ((_%method-table146964%_
               (let ((_%klass146948%_ _%obj-klass146946%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass146948%_ 'class))
                     (let ((_%klass146953%_ _%klass146948%_))
                       (declare (not safe))
                       (__specialize-class _%klass146953%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass146948%_)
                       '#!void)))))
          (let _%loop146967%_ ((_%rest146970%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor146944%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count146972%_ '0)
                               (_%methods146974%_ '()))
            (let* ((_%$%rest146976146984%_ _%rest146970%_)
                   (_%$%else146978147111%_
                    (lambda ()
                      (let ((_%prototype147027%_
                             (let* ((_%klass146992%_ _%klass146945%_)
                                    (_%k146995%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count146972%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass146992%_
                                      'class))
                                   (let* ((_%klass147000%_ _%klass146992%_)
                                          (_%k147017%_ _%k146995%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass147000%_
                                      _%k147017%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass146992%_)
                                     '#!void)))))
                        (let _%loop147030%_ ((_%rest147032%_ _%methods146974%_)
                                             (_%off147033%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count146972%_ '1))))
                          (let* ((_%$%rest147035147043%_ _%rest147032%_)
                                 (_%$%else147037147092%_
                                  (lambda ()
                                    (let ((_%tab147051%_
                                           (class-type-interface-table
                                            _%obj-klass146946%_)))
                                      (let* ((_%prototable147054%_
                                              _%tab147051%_)
                                             (_%descriptor147057%_
                                              _%descriptor146944%_)
                                             (_%prototype147060%_
                                              _%prototype147027%_)
                                             (_%prototable147064%_
                                              _%prototable147054%_)
                                             (_%descriptor147081%_
                                              _%descriptor147057%_))
                                        (____prototype-table-set!
                                         _%prototable147064%_
                                         _%descriptor147081%_
                                         _%prototype147060%_))
                                      _%prototype147027%_)))
                                 (_%$%K147039147099%_
                                  (lambda (_%rest147095%_ _%method147096%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype147027%_
                                       _%method147096%_
                                       _%off147033%_
                                       _%klass146945%_
                                       '#f))
                                    (_%loop147030%_
                                     _%rest147095%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off147033%_ '1))))))
                            (if (pair? _%$%rest147035147043%_)
                                (let ((_%$%hd147040147102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest147035147043%_)))
                                      (_%$%tl147041147104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest147035147043%_))))
                                  (let* ((_%method147107%_
                                          _%$%hd147040147102%_)
                                         (_%rest147109%_ _%$%tl147041147104%_))
                                    (_%$%K147039147099%_
                                     _%rest147109%_
                                     _%method147107%_)))
                                (_%$%else147037147092%_)))))))
                   (_%$%K146980147249%_
                    (lambda (_%rest147114%_ _%method-spec147115%_)
                      (if (pair? _%method-spec147115%_)
                          (let _%loop-inner147119%_ ((_%methods-rest147122%_
                                                      _%method-spec147115%_))
                            (let* ((_%$%methods-rest147124147132%_
                                    _%methods-rest147122%_)
                                   (_%$%else147126147182%_
                                    (lambda ()
                                      (let ((_%tab147140%_
                                             (class-type-interface-table
                                              _%obj-klass146946%_)))
                                        (let* ((_%prototable147142%_
                                                _%tab147140%_)
                                               (_%descriptor147145%_
                                                _%descriptor146944%_)
                                               (_%prototype147148%_ '#!void)
                                               (_%prototable147152%_
                                                _%prototable147142%_)
                                               (_%descriptor147171%_
                                                _%descriptor147145%_))
                                          (____prototype-table-set!
                                           _%prototable147152%_
                                           _%descriptor147171%_
                                           _%prototype147148%_))
                                        '#f)))
                                   (_%$%K147128147195%_
                                    (lambda (_%methods-rest147185%_
                                             _%method-name147186%_)
                                      (let ((_%$e147189%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table146964%_
                                                _%method-name147186%_
                                                '#f))))
                                        (if _%$e147189%_
                                            (_%loop146967%_
                                             _%rest147114%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count146972%_ '1))
                                             (cons _%$e147189%_
                                                   _%methods146974%_))
                                            (_%loop-inner147119%_
                                             _%methods-rest147185%_))))))
                              (if (pair? _%$%methods-rest147124147132%_)
                                  (let ((_%$%hd147129147198%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest147124147132%_)))
                                        (_%$%tl147130147200%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest147124147132%_))))
                                    (let* ((_%method-name147203%_
                                            _%$%hd147129147198%_)
                                           (_%methods-rest147205%_
                                            _%$%tl147130147200%_))
                                      (_%$%K147128147195%_
                                       _%methods-rest147205%_
                                       _%method-name147203%_)))
                                  (_%$%else147126147182%_))))
                          (let ((_%$e147207%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table146964%_
                                    _%method-spec147115%_
                                    '#f))))
                            (if _%$e147207%_
                                (_%loop146967%_
                                 _%rest147114%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count146972%_ '1))
                                 (cons _%$e147207%_ _%methods146974%_))
                                (let ((_%tab147213%_
                                       (class-type-interface-table
                                        _%obj-klass146946%_)))
                                  (let* ((_%prototable147215%_ _%tab147213%_)
                                         (_%descriptor147218%_
                                          _%descriptor146944%_)
                                         (_%prototype147221%_ '#!void)
                                         (_%prototable147225%_
                                          _%prototable147215%_)
                                         (_%descriptor147238%_
                                          _%descriptor147218%_))
                                    (____prototype-table-set!
                                     _%prototable147225%_
                                     _%descriptor147238%_
                                     _%prototype147221%_))
                                  '#f)))))))
              (if (pair? _%$%rest146976146984%_)
                  (let ((_%$%hd146981147252%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest146976146984%_)))
                        (_%$%tl146982147254%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest146976146984%_))))
                    (let* ((_%method-spec147257%_ _%$%hd146981147252%_)
                           (_%rest147259%_ _%$%tl146982147254%_))
                      (_%$%K146980147249%_
                       _%rest147259%_
                       _%method-spec147257%_)))
                  (_%$%else146978147111%_)))))))
    (define cast
      (lambda (_%descriptor146778%_ _%obj146780%_)
        (let* ((_%klass146783%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor146778%_ '1 '#f '#f)))
               (_%klass-id146786%_
                (let () (declare (not safe)) (##type-id _%klass146783%_))))
          (let _%loop146790%_ ((_%obj146793%_ _%obj146780%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass146796%_
                    (let () (declare (not safe)) (class-of _%obj146793%_)))
                   (_%obj-klass-id146799%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass146796%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id146786%_ _%obj-klass-id146799%_))
                  _%obj146793%_
                  (if (interface-subclass? _%obj-klass146796%_)
                      (let _%loop-interface146807%_ ((_%iface-klass146810%_
                                                      _%obj-klass146796%_))
                        (if _%iface-klass146810%_
                            (let* ((_%tab146813%_
                                    (class-type-interface-table
                                     _%iface-klass146810%_))
                                   (_%$e146855%_
                                    (let* ((_%prototable146816%_ _%tab146813%_)
                                           (_%descriptor146819%_
                                            _%descriptor146778%_)
                                           (_%prototable146823%_
                                            _%prototable146816%_)
                                           (_%descriptor146846%_
                                            _%descriptor146819%_))
                                      (____prototype-table-get
                                       _%prototable146823%_
                                       _%descriptor146846%_))))
                              (if _%$e146855%_
                                  (if (eq? _%$e146855%_ '#!void)
                                      (_%loop-interface146807%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass146810%_)))
                                      (if _%$e146855%_
                                          (let ((_%instance146865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e146855%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance146865%_
                                               _%obj146793%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance146865%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor146778%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj146793%_)))
                                            '#!void)))
                                  (let ((_%$e146867%_
                                         (try-create-prototype
                                          _%descriptor146778%_
                                          _%klass146783%_
                                          _%iface-klass146810%_)))
                                    (if _%$e146867%_
                                        (if _%$e146867%_
                                            (let ((_%instance146876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e146867%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance146876%_
                                                 _%obj146793%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance146876%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor146778%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj146793%_)))
                                              '#!void))
                                        (_%loop-interface146807%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass146810%_)))))))
                            (_%loop146790%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj146793%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab146880%_
                              (class-type-interface-table _%obj-klass146796%_))
                             (_%$e146909%_
                              (let* ((_%prototable146882%_ _%tab146880%_)
                                     (_%descriptor146885%_
                                      _%descriptor146778%_)
                                     (_%prototable146889%_
                                      _%prototable146882%_)
                                     (_%descriptor146900%_
                                      _%descriptor146885%_))
                                (____prototype-table-get
                                 _%prototable146889%_
                                 _%descriptor146900%_))))
                        (if _%$e146909%_
                            (if (eq? _%$e146909%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor146778%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj146793%_)))
                                  '#!void)
                                (if _%$e146909%_
                                    (let ((_%instance146924%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e146909%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance146924%_
                                         _%obj146793%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance146924%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor146778%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj146793%_)))
                                      '#!void)))
                            (let ((_%$e146926%_
                                   (create-prototype
                                    _%descriptor146778%_
                                    _%klass146783%_
                                    _%obj-klass146796%_)))
                              (if _%$e146926%_
                                  (if _%$e146926%_
                                      (let ((_%instance146935%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e146926%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance146935%_
                                           _%obj146793%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance146935%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor146778%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj146793%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor146778%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj146793%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor146612%_ _%obj146614%_)
        (let* ((_%klass146617%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor146612%_ '1 '#f '#f)))
               (_%klass-id146620%_
                (let () (declare (not safe)) (##type-id _%klass146617%_))))
          (let _%loop146624%_ ((_%obj146627%_ _%obj146614%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass146630%_
                    (let () (declare (not safe)) (class-of _%obj146627%_)))
                   (_%obj-klass-id146633%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass146630%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id146620%_ _%obj-klass-id146633%_))
                  _%obj146627%_
                  (if (interface-subclass? _%obj-klass146630%_)
                      (let _%loop-interface146641%_ ((_%iface-klass146644%_
                                                      _%obj-klass146630%_))
                        (if _%iface-klass146644%_
                            (let* ((_%tab146647%_
                                    (class-type-interface-table
                                     _%iface-klass146644%_))
                                   (_%$e146689%_
                                    (let* ((_%prototable146650%_ _%tab146647%_)
                                           (_%descriptor146653%_
                                            _%descriptor146612%_)
                                           (_%prototable146657%_
                                            _%prototable146650%_)
                                           (_%descriptor146680%_
                                            _%descriptor146653%_))
                                      (____prototype-table-get
                                       _%prototable146657%_
                                       _%descriptor146680%_))))
                              (if _%$e146689%_
                                  (if (eq? _%$e146689%_ '#!void)
                                      (_%loop-interface146641%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass146644%_)))
                                      (if _%$e146689%_
                                          (let ((_%instance146699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e146689%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance146699%_
                                               _%obj146627%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance146699%_)
                                          '#f))
                                  (let ((_%$e146701%_
                                         (try-create-prototype
                                          _%descriptor146612%_
                                          _%klass146617%_
                                          _%iface-klass146644%_)))
                                    (if _%$e146701%_
                                        (if _%$e146701%_
                                            (let ((_%instance146710%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e146701%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance146710%_
                                                 _%obj146627%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance146710%_)
                                            '#f)
                                        (_%loop-interface146641%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass146644%_)))))))
                            (_%loop146624%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj146627%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab146714%_
                              (class-type-interface-table _%obj-klass146630%_))
                             (_%$e146743%_
                              (let* ((_%prototable146716%_ _%tab146714%_)
                                     (_%descriptor146719%_
                                      _%descriptor146612%_)
                                     (_%prototable146723%_
                                      _%prototable146716%_)
                                     (_%descriptor146734%_
                                      _%descriptor146719%_))
                                (____prototype-table-get
                                 _%prototable146723%_
                                 _%descriptor146734%_))))
                        (if _%$e146743%_
                            (if (eq? _%$e146743%_ '#!void)
                                '#f
                                (if _%$e146743%_
                                    (let ((_%instance146758%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e146743%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance146758%_
                                         _%obj146627%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance146758%_)
                                    '#f))
                            (let ((_%$e146760%_
                                   (try-create-prototype
                                    _%descriptor146612%_
                                    _%klass146617%_
                                    _%obj-klass146630%_)))
                              (if _%$e146760%_
                                  (if _%$e146760%_
                                      (let ((_%instance146769%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e146760%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance146769%_
                                           _%obj146627%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance146769%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor146458%_ _%obj146460%_)
        (let* ((_%klass146463%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor146458%_ '1 '#f '#f)))
               (_%klass-id146466%_
                (let () (declare (not safe)) (##type-id _%klass146463%_))))
          (let _%loop146470%_ ((_%obj146473%_ _%obj146460%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass146476%_
                    (let () (declare (not safe)) (class-of _%obj146473%_)))
                   (_%obj-klass-id146479%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass146476%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id146466%_ _%obj-klass-id146479%_))
                  '#t
                  (if (interface-subclass? _%obj-klass146476%_)
                      (let _%loop-interface146487%_ ((_%iface-klass146490%_
                                                      _%obj-klass146476%_))
                        (if _%iface-klass146490%_
                            (let* ((_%tab146493%_
                                    (class-type-interface-table
                                     _%iface-klass146490%_))
                                   (_%$e146535%_
                                    (let* ((_%prototable146496%_ _%tab146493%_)
                                           (_%descriptor146499%_
                                            _%descriptor146458%_)
                                           (_%prototable146503%_
                                            _%prototable146496%_)
                                           (_%descriptor146526%_
                                            _%descriptor146499%_))
                                      (____prototype-table-get
                                       _%prototable146503%_
                                       _%descriptor146526%_))))
                              (if _%$e146535%_
                                  (if (eq? _%$e146535%_ '#!void)
                                      (_%loop-interface146487%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass146490%_)))
                                      (if _%$e146535%_ '#t '#f))
                                  (let ((_%$e146545%_
                                         (try-create-prototype
                                          _%descriptor146458%_
                                          _%klass146463%_
                                          _%iface-klass146490%_)))
                                    (if _%$e146545%_
                                        (if _%$e146545%_ '#t '#f)
                                        (_%loop-interface146487%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass146490%_)))))))
                            (_%loop146470%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj146473%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab146556%_
                              (class-type-interface-table _%obj-klass146476%_))
                             (_%$e146585%_
                              (let* ((_%prototable146558%_ _%tab146556%_)
                                     (_%descriptor146561%_
                                      _%descriptor146458%_)
                                     (_%prototable146565%_
                                      _%prototable146558%_)
                                     (_%descriptor146576%_
                                      _%descriptor146561%_))
                                (____prototype-table-get
                                 _%prototable146565%_
                                 _%descriptor146576%_))))
                        (if _%$e146585%_
                            (if (eq? _%$e146585%_ '#!void)
                                '#f
                                (if _%$e146585%_ '#t '#f))
                            (let ((_%$e146598%_
                                   (try-create-prototype
                                    _%descriptor146458%_
                                    _%klass146463%_
                                    _%obj-klass146476%_)))
                              (if _%$e146598%_
                                  (if _%$e146598%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor146302%_
               _%obj146303%_
               _%with-prototype+receiver146304%_
               _%with-receiver146305%_)
        (let* ((_%descriptor146308%_ _%descriptor146302%_)
               (_%with-prototype+receiver146316%_
                _%with-prototype+receiver146304%_)
               (_%with-receiver146324%_ _%with-receiver146305%_)
               (_%klass146333%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor146308%_ '1 '#f '#f)))
               (_%klass-id146336%_
                (let () (declare (not safe)) (##type-id _%klass146333%_))))
          (let _%loop146340%_ ((_%obj146343%_ _%obj146303%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass146346%_
                    (let () (declare (not safe)) (class-of _%obj146343%_)))
                   (_%obj-klass-id146349%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass146346%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id146336%_ _%obj-klass-id146349%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver146324%_ _%obj146343%_))
                  (if (interface-subclass? _%obj-klass146346%_)
                      (let _%loop-interface146355%_ ((_%iface-klass146358%_
                                                      _%obj-klass146346%_))
                        (if _%iface-klass146358%_
                            (let* ((_%tab146361%_
                                    (class-type-interface-table
                                     _%iface-klass146358%_))
                                   (_%$e146405%_
                                    (let* ((_%prototable146364%_ _%tab146361%_)
                                           (_%descriptor146367%_
                                            _%descriptor146308%_)
                                           (_%prototable146371%_
                                            _%prototable146364%_)
                                           (_%descriptor146396%_
                                            _%descriptor146367%_))
                                      (____prototype-table-get
                                       _%prototable146371%_
                                       _%descriptor146396%_))))
                              (if _%$e146405%_
                                  (if (eq? _%$e146405%_ '#!void)
                                      (_%loop-interface146355%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass146358%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver146316%_
                                         _%descriptor146308%_
                                         _%$e146405%_
                                         _%obj146343%_)))
                                  (let ((_%$e146411%_
                                         (try-create-prototype
                                          _%descriptor146308%_
                                          _%klass146333%_
                                          _%iface-klass146358%_)))
                                    (if _%$e146411%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver146316%_
                                           _%descriptor146308%_
                                           _%$e146411%_
                                           _%obj146343%_))
                                        (_%loop-interface146355%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass146358%_)))))))
                            (_%loop146340%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj146343%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab146418%_
                              (class-type-interface-table _%obj-klass146346%_))
                             (_%$e146447%_
                              (let* ((_%prototable146420%_ _%tab146418%_)
                                     (_%descriptor146423%_
                                      _%descriptor146308%_)
                                     (_%prototable146427%_
                                      _%prototable146420%_)
                                     (_%descriptor146438%_
                                      _%descriptor146423%_))
                                (____prototype-table-get
                                 _%prototable146427%_
                                 _%descriptor146438%_))))
                        (if _%$e146447%_
                            (if (eq? _%$e146447%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver146316%_
                                   _%descriptor146308%_
                                   '#f
                                   _%obj146343%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver146316%_
                                   _%descriptor146308%_
                                   _%$e146447%_
                                   _%obj146343%_)))
                            (let ((_%$e146452%_
                                   (create-prototype
                                    _%descriptor146308%_
                                    _%klass146333%_
                                    _%obj-klass146346%_)))
                              (if _%$e146452%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver146316%_
                                     _%descriptor146308%_
                                     _%$e146452%_
                                     _%obj146343%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver146316%_
                                     _%descriptor146308%_
                                     '#f
                                     _%obj146343%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor146265%_
               _%obj146266%_
               _%with-prototype+receiver146267%_
               _%with-receiver146268%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor146265%_
               'interface-descriptor::t))
            (let ((_%descriptor146272%_ _%descriptor146265%_))
              (if (procedure? _%with-prototype+receiver146267%_)
                  (let ((_%with-prototype+receiver146282%_
                         _%with-prototype+receiver146267%_))
                    (if (procedure? _%with-receiver146268%_)
                        (let ((_%with-receiver146292%_
                               _%with-receiver146268%_))
                          (__with-prototype
                           _%descriptor146272%_
                           _%obj146266%_
                           _%with-prototype+receiver146282%_
                           _%with-receiver146292%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver146268%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver146267%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor146265%_)
              '#!void))))))
