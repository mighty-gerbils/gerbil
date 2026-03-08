(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1773012983)
  (begin
    (define CastError::t
      (let ((__tmp145625 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp145625
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args145539%_
        (apply make-instance CastError::t _%$args145539%_)))
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
      (lambda (_%where145413%_ _%message145414%_ . _%irritants145415%_)
        (let ((__tmp145626
               (let ((__obj145620
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj145620
                    _%message145414%_
                    'where:
                    _%where145413%_
                    'irritants:
                    _%irritants145415%_))
                 __obj145620)))
          (declare (not safe))
          (raise __tmp145626))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp145628 (list)) (__tmp145627 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp145628
         '(object)
         __tmp145627
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args145410%_
        (apply make-instance interface-instance::t _%$args145410%_)))
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
      (let ((__tmp145630 (list))
            (__tmp145629
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp145630
         '(type methods index)
         __tmp145629
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args145407%_
        (apply make-instance interface-descriptor::t _%$args145407%_)))
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
          (let _%again145385%_ ((_%spin145388%_ '0))
            (if (let ((__tmp145631
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp145631 '0))
                (let ((__tmp145632 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp145632))
                (if (let () (declare (not safe)) (##fx< _%spin145388%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again145385%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin145388%_ '1))))
                    (let ((_%owner145394%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner145394%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner145394%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again145385%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r145402%_
               (let ((_%index145400%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index145400%_ '1)))
                 _%index145400%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r145402%_)))
    (define interface-descriptor:::init!
      (lambda (_%self145366%_ _%type145367%_ _%methods145368%_)
        (let ((_%self145371%_ _%self145366%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145371%_
             _%type145367%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145371%_
             _%methods145368%_
             '2
             '#f
             '#f))
          (let ((__tmp145633 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145371%_
             __tmp145633
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
      (let ((__tmp145635 (list))
            (__tmp145634
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp145635
         '(lock table)
         __tmp145634
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args145241%_
        (apply make-instance prototype-table::t _%$args145241%_)))
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
      (lambda (_%self145227%_)
        (let ((_%self145230%_ _%self145227%_))
          (let ((__tmp145636 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self145230%_ __tmp145636 '1 '#f '#f))
          (let ((__tmp145637
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145230%_
             __tmp145637
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
      (lambda (_%prototable145080%_ _%descriptor145081%_)
        (let* ((_%prototable145084%_ _%prototable145080%_)
               (_%descriptor145092%_ _%descriptor145081%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab145102%_
                 (##unchecked-structure-ref _%prototable145084%_ '2 '#f '#f))
                (_%index145103%_
                 (##unchecked-structure-ref _%descriptor145092%_ '3 '#f '#f)))
            (if (##fx< _%index145103%_ (vector-length _%tab145102%_))
                (vector-ref _%tab145102%_ _%index145103%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable143060%_ _%descriptor143061%_)
        (let* ((_%prototable143064%_ _%prototable143060%_)
               (_%descriptor143072%_ _%descriptor143061%_))
          (____prototype-table-get
           _%prototable143064%_
           _%descriptor143072%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable145026%_ _%descriptor145027%_ _%prototype145028%_)
        (let* ((_%prototable145031%_ _%prototable145026%_)
               (_%descriptor145039%_ _%descriptor145027%_))
          (declare (not safe))
          (let ((_%lock145049%_
                 (##unchecked-structure-ref _%prototable145031%_ '1 '#f '#f))
                (_%index145050%_
                 (##unchecked-structure-ref _%descriptor145039%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again145054%_ ((_%spin145057%_ '0))
                (if (##fx= (##vector-cas! _%lock145049%_ '0 '1 '0) '0)
                    (##vector-set! _%lock145049%_ '1 (current-thread))
                    (if (##fx< _%spin145057%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again145054%_ (##fx+ _%spin145057%_ '1)))
                        (let ((_%owner145063%_
                               (##vector-ref _%lock145049%_ '1)))
                          (if (eq? _%owner145063%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner145063%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again145054%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r145075%_
                   (let ((_%tab145069%_
                          (##unchecked-structure-ref
                           _%prototable145031%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index145050%_ (vector-length _%tab145069%_))
                         (vector-set!
                          _%tab145069%_
                          _%index145050%_
                          _%prototype145028%_)
                         (let ((_%new-size145071%_ __next-interface-index))
                           (if (##fx< _%index145050%_ _%new-size145071%_)
                               (let ((_%new-tab145073%_
                                      (##make-vector _%new-size145071%_ '#f)))
                                 (subvector-move!
                                  _%tab145069%_
                                  '0
                                  (vector-length _%tab145069%_)
                                  _%new-tab145073%_
                                  '0)
                                 (vector-set!
                                  _%new-tab145073%_
                                  _%index145050%_
                                  _%prototype145028%_)
                                 (##unchecked-structure-set!
                                  _%prototable145031%_
                                  _%new-tab145073%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor145039%_
                                      'index:
                                      _%index145050%_
                                      'max-index:
                                      _%new-size145071%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock145049%_ '1 '#f)
                  (##vector-cas! _%lock145049%_ '0 '0 '1)))
              _%$r145075%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable143201%_ _%descriptor143202%_ _%prototype143203%_)
        (let* ((_%prototable143206%_ _%prototable143201%_)
               (_%descriptor143214%_ _%descriptor143202%_))
          (____prototype-table-set!
           _%prototable143206%_
           _%descriptor143214%_
           _%prototype143203%_))))
    (define interface-subclass?
      (lambda (_%klass145019%_)
        (let ((_%super145020145022%_
               (let () (declare (not safe)) (##type-super _%klass145019%_))))
          (if _%super145020145022%_
              (let ((_%super145024%_ _%super145020145022%_))
                (eq? (let () (declare (not safe)) (##type-id _%super145024%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass145011%_)
        (let ((_%$e145013%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass145011%_ '13 '#f '#f))))
          (if _%$e145013%_
              _%$e145013%_
              (let ((_%tab145017%_
                     (let ((__obj145624
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj145624)
                       __obj145624)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass145011%_
                   _%tab145017%_
                   '13
                   '#f
                   '#f))
                _%tab145017%_)))))
    (define create-prototype
      (lambda (_%descriptor144694%_ _%klass144695%_ _%obj-klass144696%_)
        (let ((_%method-table144714%_
               (let ((_%klass144698%_ _%obj-klass144696%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144698%_ 'class))
                     (let ((_%klass144703%_ _%klass144698%_))
                       (declare (not safe))
                       (__specialize-class _%klass144703%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144698%_)
                       '#!void)))))
          (let _%loop144717%_ ((_%rest144720%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144694%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144722%_ '0)
                               (_%methods144724%_ '()))
            (let* ((_%rest144726144734%_ _%rest144720%_)
                   (_%else144728144861%_
                    (lambda ()
                      (let ((_%prototype144777%_
                             (let* ((_%klass144742%_ _%klass144695%_)
                                    (_%k144745%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144722%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144742%_
                                      'class))
                                   (let* ((_%klass144750%_ _%klass144742%_)
                                          (_%k144767%_ _%k144745%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144750%_
                                      _%k144767%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144742%_)
                                     '#!void)))))
                        (let _%loop144780%_ ((_%rest144782%_ _%methods144724%_)
                                             (_%off144783%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144722%_ '1))))
                          (let* ((_%rest144785144793%_ _%rest144782%_)
                                 (_%else144787144842%_
                                  (lambda ()
                                    (let ((_%tab144801%_
                                           (class-type-interface-table
                                            _%obj-klass144696%_)))
                                      (let* ((_%prototable144804%_
                                              _%tab144801%_)
                                             (_%descriptor144807%_
                                              _%descriptor144694%_)
                                             (_%prototype144810%_
                                              _%prototype144777%_)
                                             (_%prototable144814%_
                                              _%prototable144804%_)
                                             (_%descriptor144831%_
                                              _%descriptor144807%_))
                                        (____prototype-table-set!
                                         _%prototable144814%_
                                         _%descriptor144831%_
                                         _%prototype144810%_))
                                      ((lambda (_%prototype144840%_)
                                         _%prototype144840%_)
                                       _%prototype144777%_))))
                                 (_%K144789144849%_
                                  (lambda (_%rest144845%_ _%method144846%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144777%_
                                       _%method144846%_
                                       _%off144783%_
                                       _%klass144695%_
                                       '#f))
                                    (_%loop144780%_
                                     _%rest144845%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144783%_ '1))))))
                            (if (pair? _%rest144785144793%_)
                                (let ((_%hd144790144852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144785144793%_)))
                                      (_%tl144791144854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144785144793%_))))
                                  (let* ((_%method144857%_ _%hd144790144852%_)
                                         (_%rest144859%_ _%tl144791144854%_))
                                    (_%K144789144849%_
                                     _%rest144859%_
                                     _%method144857%_)))
                                (_%else144787144842%_)))))))
                   (_%K144730144999%_
                    (lambda (_%rest144864%_ _%method-spec144865%_)
                      (if (pair? _%method-spec144865%_)
                          (let _%loop-inner144869%_ ((_%methods-rest144872%_
                                                      _%method-spec144865%_))
                            (let* ((_%methods-rest144874144882%_
                                    _%methods-rest144872%_)
                                   (_%else144876144932%_
                                    (lambda ()
                                      (let ((_%tab144890%_
                                             (class-type-interface-table
                                              _%obj-klass144696%_)))
                                        (let* ((_%prototable144892%_
                                                _%tab144890%_)
                                               (_%descriptor144895%_
                                                _%descriptor144694%_)
                                               (_%prototype144898%_ '#!void)
                                               (_%prototable144902%_
                                                _%prototable144892%_)
                                               (_%descriptor144921%_
                                                _%descriptor144895%_))
                                          (____prototype-table-set!
                                           _%prototable144902%_
                                           _%descriptor144921%_
                                           _%prototype144898%_))
                                        ((lambda (_%method144930%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144694%_
                                            'class:
                                            _%obj-klass144696%_
                                            'method:
                                            _%method144930%_)
                                           '#!void)
                                         _%method-spec144865%_))))
                                   (_%K144878144945%_
                                    (lambda (_%methods-rest144935%_
                                             _%method-name144936%_)
                                      (let ((_%$e144939%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144714%_
                                                _%method-name144936%_
                                                '#f))))
                                        (if _%$e144939%_
                                            ((lambda (_%method144942%_)
                                               (_%loop144717%_
                                                _%rest144864%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144722%_ '1))
                                                (cons _%method144942%_
                                                      _%methods144724%_)))
                                             _%$e144939%_)
                                            (_%loop-inner144869%_
                                             _%methods-rest144935%_))))))
                              (if (pair? _%methods-rest144874144882%_)
                                  (let ((_%hd144879144948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144874144882%_)))
                                        (_%tl144880144950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144874144882%_))))
                                    (let* ((_%method-name144953%_
                                            _%hd144879144948%_)
                                           (_%methods-rest144955%_
                                            _%tl144880144950%_))
                                      (_%K144878144945%_
                                       _%methods-rest144955%_
                                       _%method-name144953%_)))
                                  (_%else144876144932%_))))
                          (let ((_%$e144957%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144714%_
                                    _%method-spec144865%_
                                    '#f))))
                            (if _%$e144957%_
                                ((lambda (_%method144960%_)
                                   (_%loop144717%_
                                    _%rest144864%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144722%_ '1))
                                    (cons _%method144960%_ _%methods144724%_)))
                                 _%$e144957%_)
                                (let ((_%tab144963%_
                                       (class-type-interface-table
                                        _%obj-klass144696%_)))
                                  (let* ((_%prototable144965%_ _%tab144963%_)
                                         (_%descriptor144968%_
                                          _%descriptor144694%_)
                                         (_%prototype144971%_ '#!void)
                                         (_%prototable144975%_
                                          _%prototable144965%_)
                                         (_%descriptor144988%_
                                          _%descriptor144968%_))
                                    (____prototype-table-set!
                                     _%prototable144975%_
                                     _%descriptor144988%_
                                     _%prototype144971%_))
                                  ((lambda (_%method144997%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144694%_
                                      'class:
                                      _%obj-klass144696%_
                                      'method:
                                      _%method144997%_)
                                     '#!void)
                                   _%method-spec144865%_))))))))
              (if (pair? _%rest144726144734%_)
                  (let ((_%hd144731145002%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144726144734%_)))
                        (_%tl144732145004%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144726144734%_))))
                    (let* ((_%method-spec145007%_ _%hd144731145002%_)
                           (_%rest145009%_ _%tl144732145004%_))
                      (_%K144730144999%_
                       _%rest145009%_
                       _%method-spec145007%_)))
                  (_%else144728144861%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor144377%_ _%klass144378%_ _%obj-klass144379%_)
        (let ((_%method-table144397%_
               (let ((_%klass144381%_ _%obj-klass144379%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144381%_ 'class))
                     (let ((_%klass144386%_ _%klass144381%_))
                       (declare (not safe))
                       (__specialize-class _%klass144386%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144381%_)
                       '#!void)))))
          (let _%loop144400%_ ((_%rest144403%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144377%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144405%_ '0)
                               (_%methods144407%_ '()))
            (let* ((_%rest144409144417%_ _%rest144403%_)
                   (_%else144411144544%_
                    (lambda ()
                      (let ((_%prototype144460%_
                             (let* ((_%klass144425%_ _%klass144378%_)
                                    (_%k144428%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144405%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144425%_
                                      'class))
                                   (let* ((_%klass144433%_ _%klass144425%_)
                                          (_%k144450%_ _%k144428%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144433%_
                                      _%k144450%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144425%_)
                                     '#!void)))))
                        (let _%loop144463%_ ((_%rest144465%_ _%methods144407%_)
                                             (_%off144466%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144405%_ '1))))
                          (let* ((_%rest144468144476%_ _%rest144465%_)
                                 (_%else144470144525%_
                                  (lambda ()
                                    (let ((_%tab144484%_
                                           (class-type-interface-table
                                            _%obj-klass144379%_)))
                                      (let* ((_%prototable144487%_
                                              _%tab144484%_)
                                             (_%descriptor144490%_
                                              _%descriptor144377%_)
                                             (_%prototype144493%_
                                              _%prototype144460%_)
                                             (_%prototable144497%_
                                              _%prototable144487%_)
                                             (_%descriptor144514%_
                                              _%descriptor144490%_))
                                        (____prototype-table-set!
                                         _%prototable144497%_
                                         _%descriptor144514%_
                                         _%prototype144493%_))
                                      ((lambda (_%prototype144523%_)
                                         _%prototype144523%_)
                                       _%prototype144460%_))))
                                 (_%K144472144532%_
                                  (lambda (_%rest144528%_ _%method144529%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144460%_
                                       _%method144529%_
                                       _%off144466%_
                                       _%klass144378%_
                                       '#f))
                                    (_%loop144463%_
                                     _%rest144528%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144466%_ '1))))))
                            (if (pair? _%rest144468144476%_)
                                (let ((_%hd144473144535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144468144476%_)))
                                      (_%tl144474144537%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144468144476%_))))
                                  (let* ((_%method144540%_ _%hd144473144535%_)
                                         (_%rest144542%_ _%tl144474144537%_))
                                    (_%K144472144532%_
                                     _%rest144542%_
                                     _%method144540%_)))
                                (_%else144470144525%_)))))))
                   (_%K144413144682%_
                    (lambda (_%rest144547%_ _%method-spec144548%_)
                      (if (pair? _%method-spec144548%_)
                          (let _%loop-inner144552%_ ((_%methods-rest144555%_
                                                      _%method-spec144548%_))
                            (let* ((_%methods-rest144557144565%_
                                    _%methods-rest144555%_)
                                   (_%else144559144615%_
                                    (lambda ()
                                      (let ((_%tab144573%_
                                             (class-type-interface-table
                                              _%obj-klass144379%_)))
                                        (let* ((_%prototable144575%_
                                                _%tab144573%_)
                                               (_%descriptor144578%_
                                                _%descriptor144377%_)
                                               (_%prototype144581%_ '#!void)
                                               (_%prototable144585%_
                                                _%prototable144575%_)
                                               (_%descriptor144604%_
                                                _%descriptor144578%_))
                                          (____prototype-table-set!
                                           _%prototable144585%_
                                           _%descriptor144604%_
                                           _%prototype144581%_))
                                        ((lambda (_%method144613%_) '#f)
                                         _%method-spec144548%_))))
                                   (_%K144561144628%_
                                    (lambda (_%methods-rest144618%_
                                             _%method-name144619%_)
                                      (let ((_%$e144622%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144397%_
                                                _%method-name144619%_
                                                '#f))))
                                        (if _%$e144622%_
                                            ((lambda (_%method144625%_)
                                               (_%loop144400%_
                                                _%rest144547%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144405%_ '1))
                                                (cons _%method144625%_
                                                      _%methods144407%_)))
                                             _%$e144622%_)
                                            (_%loop-inner144552%_
                                             _%methods-rest144618%_))))))
                              (if (pair? _%methods-rest144557144565%_)
                                  (let ((_%hd144562144631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144557144565%_)))
                                        (_%tl144563144633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144557144565%_))))
                                    (let* ((_%method-name144636%_
                                            _%hd144562144631%_)
                                           (_%methods-rest144638%_
                                            _%tl144563144633%_))
                                      (_%K144561144628%_
                                       _%methods-rest144638%_
                                       _%method-name144636%_)))
                                  (_%else144559144615%_))))
                          (let ((_%$e144640%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144397%_
                                    _%method-spec144548%_
                                    '#f))))
                            (if _%$e144640%_
                                ((lambda (_%method144643%_)
                                   (_%loop144400%_
                                    _%rest144547%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144405%_ '1))
                                    (cons _%method144643%_ _%methods144407%_)))
                                 _%$e144640%_)
                                (let ((_%tab144646%_
                                       (class-type-interface-table
                                        _%obj-klass144379%_)))
                                  (let* ((_%prototable144648%_ _%tab144646%_)
                                         (_%descriptor144651%_
                                          _%descriptor144377%_)
                                         (_%prototype144654%_ '#!void)
                                         (_%prototable144658%_
                                          _%prototable144648%_)
                                         (_%descriptor144671%_
                                          _%descriptor144651%_))
                                    (____prototype-table-set!
                                     _%prototable144658%_
                                     _%descriptor144671%_
                                     _%prototype144654%_))
                                  ((lambda (_%method144680%_) '#f)
                                   _%method-spec144548%_))))))))
              (if (pair? _%rest144409144417%_)
                  (let ((_%hd144414144685%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144409144417%_)))
                        (_%tl144415144687%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144409144417%_))))
                    (let* ((_%method-spec144690%_ _%hd144414144685%_)
                           (_%rest144692%_ _%tl144415144687%_))
                      (_%K144413144682%_
                       _%rest144692%_
                       _%method-spec144690%_)))
                  (_%else144411144544%_)))))))
    (define cast
      (lambda (_%descriptor144219%_ _%obj144221%_)
        (let* ((_%klass144224%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144219%_ '1 '#f '#f)))
               (_%klass-id144227%_
                (let () (declare (not safe)) (##type-id _%klass144224%_))))
          (let _%loop144231%_ ((_%obj144234%_ _%obj144221%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144237%_
                    (let () (declare (not safe)) (class-of _%obj144234%_)))
                   (_%obj-klass-id144240%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144237%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144227%_ _%obj-klass-id144240%_))
                  ((lambda (_%obj144245%_) _%obj144245%_) _%obj144234%_)
                  (if (interface-subclass? _%obj-klass144237%_)
                      (let* ((_%tab144248%_
                              (class-type-interface-table _%obj-klass144237%_))
                             (_%$e144288%_
                              (let* ((_%prototable144251%_ _%tab144248%_)
                                     (_%descriptor144254%_
                                      _%descriptor144219%_)
                                     (_%prototable144258%_
                                      _%prototable144251%_)
                                     (_%descriptor144279%_
                                      _%descriptor144254%_))
                                (____prototype-table-get
                                 _%prototable144258%_
                                 _%descriptor144279%_))))
                        (if _%$e144288%_
                            ((lambda (_%prototype144291%_)
                               (if (eq? _%prototype144291%_ '#!void)
                                   (_%loop144231%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj144234%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor144294%_
                                             _%prototype144295%_
                                             _%obj144296%_)
                                      (if _%prototype144295%_
                                          (let ((_%instance144298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144295%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144298%_
                                               _%obj144296%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144298%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144294%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144296%_)))
                                            '#!void)))
                                    _%descriptor144219%_
                                    _%prototype144291%_
                                    _%obj144234%_)))
                             _%$e144288%_)
                            (let ((_%$e144300%_
                                   (try-create-prototype
                                    _%descriptor144219%_
                                    _%klass144224%_
                                    _%obj-klass144237%_)))
                              (if _%$e144300%_
                                  ((lambda (_%prototype144303%_)
                                     ((lambda (_%descriptor144305%_
                                               _%prototype144306%_
                                               _%obj144307%_)
                                        (if _%prototype144306%_
                                            (let ((_%instance144309%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144306%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144309%_
                                                 _%obj144307%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144309%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144305%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144307%_)))
                                              '#!void)))
                                      _%descriptor144219%_
                                      _%prototype144303%_
                                      _%obj144234%_))
                                   _%$e144300%_)
                                  (_%loop144231%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj144234%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab144313%_
                              (class-type-interface-table _%obj-klass144237%_))
                             (_%$e144342%_
                              (let* ((_%prototable144315%_ _%tab144313%_)
                                     (_%descriptor144318%_
                                      _%descriptor144219%_)
                                     (_%prototable144322%_
                                      _%prototable144315%_)
                                     (_%descriptor144333%_
                                      _%descriptor144318%_))
                                (____prototype-table-get
                                 _%prototable144322%_
                                 _%descriptor144333%_))))
                        (if _%$e144342%_
                            ((lambda (_%prototype144345%_)
                               (if (eq? _%prototype144345%_ '#!void)
                                   ((lambda (_%descriptor144347%_
                                             _%prototype144348%_
                                             _%obj144349%_)
                                      (if _%prototype144348%_
                                          (let ((_%instance144351%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144348%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144351%_
                                               _%obj144349%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144351%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144347%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144349%_)))
                                            '#!void)))
                                    _%descriptor144219%_
                                    '#f
                                    _%obj144234%_)
                                   ((lambda (_%descriptor144353%_
                                             _%prototype144354%_
                                             _%obj144355%_)
                                      (if _%prototype144354%_
                                          (let ((_%instance144357%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144354%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144357%_
                                               _%obj144355%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144357%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144353%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144355%_)))
                                            '#!void)))
                                    _%descriptor144219%_
                                    _%prototype144345%_
                                    _%obj144234%_)))
                             _%$e144342%_)
                            (let ((_%$e144359%_
                                   (create-prototype
                                    _%descriptor144219%_
                                    _%klass144224%_
                                    _%obj-klass144237%_)))
                              (if _%$e144359%_
                                  ((lambda (_%prototype144362%_)
                                     ((lambda (_%descriptor144364%_
                                               _%prototype144365%_
                                               _%obj144366%_)
                                        (if _%prototype144365%_
                                            (let ((_%instance144368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144365%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144368%_
                                                 _%obj144366%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144368%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144364%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144366%_)))
                                              '#!void)))
                                      _%descriptor144219%_
                                      _%prototype144362%_
                                      _%obj144234%_))
                                   _%$e144359%_)
                                  ((lambda (_%descriptor144371%_
                                            _%prototype144372%_
                                            _%obj144373%_)
                                     (if _%prototype144372%_
                                         (let ((_%instance144375%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144372%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144375%_
                                              _%obj144373%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144375%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor144371%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj144373%_)))
                                           '#!void)))
                                   _%descriptor144219%_
                                   '#f
                                   _%obj144234%_))))))))))))
    (define try-cast
      (lambda (_%descriptor144061%_ _%obj144063%_)
        (let* ((_%klass144066%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144061%_ '1 '#f '#f)))
               (_%klass-id144069%_
                (let () (declare (not safe)) (##type-id _%klass144066%_))))
          (let _%loop144073%_ ((_%obj144076%_ _%obj144063%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144079%_
                    (let () (declare (not safe)) (class-of _%obj144076%_)))
                   (_%obj-klass-id144082%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144079%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144069%_ _%obj-klass-id144082%_))
                  ((lambda (_%obj144087%_) _%obj144087%_) _%obj144076%_)
                  (if (interface-subclass? _%obj-klass144079%_)
                      (let* ((_%tab144090%_
                              (class-type-interface-table _%obj-klass144079%_))
                             (_%$e144130%_
                              (let* ((_%prototable144093%_ _%tab144090%_)
                                     (_%descriptor144096%_
                                      _%descriptor144061%_)
                                     (_%prototable144100%_
                                      _%prototable144093%_)
                                     (_%descriptor144121%_
                                      _%descriptor144096%_))
                                (____prototype-table-get
                                 _%prototable144100%_
                                 _%descriptor144121%_))))
                        (if _%$e144130%_
                            ((lambda (_%prototype144133%_)
                               (if (eq? _%prototype144133%_ '#!void)
                                   (_%loop144073%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj144076%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor144136%_
                                             _%prototype144137%_
                                             _%obj144138%_)
                                      (if _%prototype144137%_
                                          (let ((_%instance144140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144137%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144140%_
                                               _%obj144138%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144140%_)
                                          '#f))
                                    _%descriptor144061%_
                                    _%prototype144133%_
                                    _%obj144076%_)))
                             _%$e144130%_)
                            (let ((_%$e144142%_
                                   (try-create-prototype
                                    _%descriptor144061%_
                                    _%klass144066%_
                                    _%obj-klass144079%_)))
                              (if _%$e144142%_
                                  ((lambda (_%prototype144145%_)
                                     ((lambda (_%descriptor144147%_
                                               _%prototype144148%_
                                               _%obj144149%_)
                                        (if _%prototype144148%_
                                            (let ((_%instance144151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144148%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144151%_
                                                 _%obj144149%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144151%_)
                                            '#f))
                                      _%descriptor144061%_
                                      _%prototype144145%_
                                      _%obj144076%_))
                                   _%$e144142%_)
                                  (_%loop144073%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj144076%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab144155%_
                              (class-type-interface-table _%obj-klass144079%_))
                             (_%$e144184%_
                              (let* ((_%prototable144157%_ _%tab144155%_)
                                     (_%descriptor144160%_
                                      _%descriptor144061%_)
                                     (_%prototable144164%_
                                      _%prototable144157%_)
                                     (_%descriptor144175%_
                                      _%descriptor144160%_))
                                (____prototype-table-get
                                 _%prototable144164%_
                                 _%descriptor144175%_))))
                        (if _%$e144184%_
                            ((lambda (_%prototype144187%_)
                               (if (eq? _%prototype144187%_ '#!void)
                                   ((lambda (_%descriptor144189%_
                                             _%prototype144190%_
                                             _%obj144191%_)
                                      (if _%prototype144190%_
                                          (let ((_%instance144193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144190%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144193%_
                                               _%obj144191%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144193%_)
                                          '#f))
                                    _%descriptor144061%_
                                    '#f
                                    _%obj144076%_)
                                   ((lambda (_%descriptor144195%_
                                             _%prototype144196%_
                                             _%obj144197%_)
                                      (if _%prototype144196%_
                                          (let ((_%instance144199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144196%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144199%_
                                               _%obj144197%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144199%_)
                                          '#f))
                                    _%descriptor144061%_
                                    _%prototype144187%_
                                    _%obj144076%_)))
                             _%$e144184%_)
                            (let ((_%$e144201%_
                                   (try-create-prototype
                                    _%descriptor144061%_
                                    _%klass144066%_
                                    _%obj-klass144079%_)))
                              (if _%$e144201%_
                                  ((lambda (_%prototype144204%_)
                                     ((lambda (_%descriptor144206%_
                                               _%prototype144207%_
                                               _%obj144208%_)
                                        (if _%prototype144207%_
                                            (let ((_%instance144210%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144207%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144210%_
                                                 _%obj144208%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144210%_)
                                            '#f))
                                      _%descriptor144061%_
                                      _%prototype144204%_
                                      _%obj144076%_))
                                   _%$e144201%_)
                                  ((lambda (_%descriptor144213%_
                                            _%prototype144214%_
                                            _%obj144215%_)
                                     (if _%prototype144214%_
                                         (let ((_%instance144217%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144214%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144217%_
                                              _%obj144215%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144217%_)
                                         '#f))
                                   _%descriptor144061%_
                                   '#f
                                   _%obj144076%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor143915%_ _%obj143917%_)
        (let* ((_%klass143920%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143915%_ '1 '#f '#f)))
               (_%klass-id143923%_
                (let () (declare (not safe)) (##type-id _%klass143920%_))))
          (let _%loop143927%_ ((_%obj143930%_ _%obj143917%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143933%_
                    (let () (declare (not safe)) (class-of _%obj143930%_)))
                   (_%obj-klass-id143936%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143933%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143923%_ _%obj-klass-id143936%_))
                  ((lambda (_%obj143941%_) '#t) _%obj143930%_)
                  (if (interface-subclass? _%obj-klass143933%_)
                      (let* ((_%tab143944%_
                              (class-type-interface-table _%obj-klass143933%_))
                             (_%$e143984%_
                              (let* ((_%prototable143947%_ _%tab143944%_)
                                     (_%descriptor143950%_
                                      _%descriptor143915%_)
                                     (_%prototable143954%_
                                      _%prototable143947%_)
                                     (_%descriptor143975%_
                                      _%descriptor143950%_))
                                (____prototype-table-get
                                 _%prototable143954%_
                                 _%descriptor143975%_))))
                        (if _%$e143984%_
                            ((lambda (_%prototype143987%_)
                               (if (eq? _%prototype143987%_ '#!void)
                                   (_%loop143927%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143930%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143990%_
                                             _%prototype143991%_
                                             _%obj143992%_)
                                      (if _%prototype143991%_ '#t '#f))
                                    _%descriptor143915%_
                                    _%prototype143987%_
                                    _%obj143930%_)))
                             _%$e143984%_)
                            (let ((_%$e143994%_
                                   (try-create-prototype
                                    _%descriptor143915%_
                                    _%klass143920%_
                                    _%obj-klass143933%_)))
                              (if _%$e143994%_
                                  ((lambda (_%prototype143997%_)
                                     ((lambda (_%descriptor143999%_
                                               _%prototype144000%_
                                               _%obj144001%_)
                                        (if _%prototype144000%_ '#t '#f))
                                      _%descriptor143915%_
                                      _%prototype143997%_
                                      _%obj143930%_))
                                   _%$e143994%_)
                                  (_%loop143927%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143930%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab144005%_
                              (class-type-interface-table _%obj-klass143933%_))
                             (_%$e144034%_
                              (let* ((_%prototable144007%_ _%tab144005%_)
                                     (_%descriptor144010%_
                                      _%descriptor143915%_)
                                     (_%prototable144014%_
                                      _%prototable144007%_)
                                     (_%descriptor144025%_
                                      _%descriptor144010%_))
                                (____prototype-table-get
                                 _%prototable144014%_
                                 _%descriptor144025%_))))
                        (if _%$e144034%_
                            ((lambda (_%prototype144037%_)
                               (if (eq? _%prototype144037%_ '#!void)
                                   ((lambda (_%descriptor144039%_
                                             _%prototype144040%_
                                             _%obj144041%_)
                                      (if _%prototype144040%_ '#t '#f))
                                    _%descriptor143915%_
                                    '#f
                                    _%obj143930%_)
                                   ((lambda (_%descriptor144043%_
                                             _%prototype144044%_
                                             _%obj144045%_)
                                      (if _%prototype144044%_ '#t '#f))
                                    _%descriptor143915%_
                                    _%prototype144037%_
                                    _%obj143930%_)))
                             _%$e144034%_)
                            (let ((_%$e144047%_
                                   (try-create-prototype
                                    _%descriptor143915%_
                                    _%klass143920%_
                                    _%obj-klass143933%_)))
                              (if _%$e144047%_
                                  ((lambda (_%prototype144050%_)
                                     ((lambda (_%descriptor144052%_
                                               _%prototype144053%_
                                               _%obj144054%_)
                                        (if _%prototype144053%_ '#t '#f))
                                      _%descriptor143915%_
                                      _%prototype144050%_
                                      _%obj143930%_))
                                   _%$e144047%_)
                                  ((lambda (_%descriptor144057%_
                                            _%prototype144058%_
                                            _%obj144059%_)
                                     (if _%prototype144058%_ '#t '#f))
                                   _%descriptor143915%_
                                   '#f
                                   _%obj143930%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor143767%_
               _%obj143768%_
               _%with-prototype+receiver143769%_
               _%with-receiver143770%_)
        (let* ((_%descriptor143773%_ _%descriptor143767%_)
               (_%with-prototype+receiver143781%_
                _%with-prototype+receiver143769%_)
               (_%with-receiver143789%_ _%with-receiver143770%_)
               (_%klass143798%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143773%_ '1 '#f '#f)))
               (_%klass-id143801%_
                (let () (declare (not safe)) (##type-id _%klass143798%_))))
          (let _%loop143805%_ ((_%obj143808%_ _%obj143768%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143811%_
                    (let () (declare (not safe)) (class-of _%obj143808%_)))
                   (_%obj-klass-id143814%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143811%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143801%_ _%obj-klass-id143814%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver143789%_ _%obj143808%_))
                  (if (interface-subclass? _%obj-klass143811%_)
                      (let* ((_%tab143820%_
                              (class-type-interface-table _%obj-klass143811%_))
                             (_%$e143862%_
                              (let* ((_%prototable143823%_ _%tab143820%_)
                                     (_%descriptor143826%_
                                      _%descriptor143773%_)
                                     (_%prototable143830%_
                                      _%prototable143823%_)
                                     (_%descriptor143853%_
                                      _%descriptor143826%_))
                                (____prototype-table-get
                                 _%prototable143830%_
                                 _%descriptor143853%_))))
                        (if _%$e143862%_
                            ((lambda (_%prototype143865%_)
                               (if (eq? _%prototype143865%_ '#!void)
                                   (_%loop143805%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143808%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143781%_
                                      _%descriptor143773%_
                                      _%prototype143865%_
                                      _%obj143808%_))))
                             _%$e143862%_)
                            (let ((_%$e143868%_
                                   (try-create-prototype
                                    _%descriptor143773%_
                                    _%klass143798%_
                                    _%obj-klass143811%_)))
                              (if _%$e143868%_
                                  ((lambda (_%prototype143871%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143781%_
                                        _%descriptor143773%_
                                        _%prototype143871%_
                                        _%obj143808%_)))
                                   _%$e143868%_)
                                  (_%loop143805%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143808%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143875%_
                              (class-type-interface-table _%obj-klass143811%_))
                             (_%$e143904%_
                              (let* ((_%prototable143877%_ _%tab143875%_)
                                     (_%descriptor143880%_
                                      _%descriptor143773%_)
                                     (_%prototable143884%_
                                      _%prototable143877%_)
                                     (_%descriptor143895%_
                                      _%descriptor143880%_))
                                (____prototype-table-get
                                 _%prototable143884%_
                                 _%descriptor143895%_))))
                        (if _%$e143904%_
                            ((lambda (_%prototype143907%_)
                               (if (eq? _%prototype143907%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143781%_
                                      _%descriptor143773%_
                                      '#f
                                      _%obj143808%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143781%_
                                      _%descriptor143773%_
                                      _%prototype143907%_
                                      _%obj143808%_))))
                             _%$e143904%_)
                            (let ((_%$e143909%_
                                   (create-prototype
                                    _%descriptor143773%_
                                    _%klass143798%_
                                    _%obj-klass143811%_)))
                              (if _%$e143909%_
                                  ((lambda (_%prototype143912%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143781%_
                                        _%descriptor143773%_
                                        _%prototype143912%_
                                        _%obj143808%_)))
                                   _%$e143909%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver143781%_
                                     _%descriptor143773%_
                                     '#f
                                     _%obj143808%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143730%_
               _%obj143731%_
               _%with-prototype+receiver143732%_
               _%with-receiver143733%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143730%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor143737%_ _%descriptor143730%_))
              (if (procedure? _%with-prototype+receiver143732%_)
                  (let ((_%with-prototype+receiver143747%_
                         _%with-prototype+receiver143732%_))
                    (if (procedure? _%with-receiver143733%_)
                        (let ((_%with-receiver143757%_
                               _%with-receiver143733%_))
                          (__with-prototype
                           _%descriptor143737%_
                           _%obj143731%_
                           _%with-prototype+receiver143747%_
                           _%with-receiver143757%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143733%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143732%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143730%_)
              '#!void))))))
