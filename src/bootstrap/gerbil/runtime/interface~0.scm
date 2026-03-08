(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1773009263)
  (begin
    (define CastError::t
      (let ((__tmp145615 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp145615
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args145529%_
        (apply make-instance CastError::t _%$args145529%_)))
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
      (lambda (_%where145403%_ _%message145404%_ . _%irritants145405%_)
        (let ((__tmp145616
               (let ((__obj145610
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj145610
                    _%message145404%_
                    'where:
                    _%where145403%_
                    'irritants:
                    _%irritants145405%_))
                 __obj145610)))
          (declare (not safe))
          (raise __tmp145616))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp145618 (list)) (__tmp145617 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp145618
         '(object)
         __tmp145617
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args145400%_
        (apply make-instance interface-instance::t _%$args145400%_)))
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
      (let ((__tmp145620 (list))
            (__tmp145619
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp145620
         '(type methods index)
         __tmp145619
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args145397%_
        (apply make-instance interface-descriptor::t _%$args145397%_)))
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
          (let _%again145375%_ ((_%spin145378%_ '0))
            (if (let ((__tmp145621
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp145621 '0))
                (let ((__tmp145622 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp145622))
                (if (let () (declare (not safe)) (##fx< _%spin145378%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again145375%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin145378%_ '1))))
                    (let ((_%owner145384%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner145384%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner145384%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again145375%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r145392%_
               (let ((_%index145390%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index145390%_ '1)))
                 _%index145390%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r145392%_)))
    (define interface-descriptor:::init!
      (lambda (_%self145356%_ _%type145357%_ _%methods145358%_)
        (let ((_%self145361%_ _%self145356%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145361%_
             _%type145357%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145361%_
             _%methods145358%_
             '2
             '#f
             '#f))
          (let ((__tmp145623 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145361%_
             __tmp145623
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
      (let ((__tmp145625 (list))
            (__tmp145624
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp145625
         '(lock table)
         __tmp145624
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args145231%_
        (apply make-instance prototype-table::t _%$args145231%_)))
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
      (lambda (_%self145217%_)
        (let ((_%self145220%_ _%self145217%_))
          (let ((__tmp145626 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self145220%_ __tmp145626 '1 '#f '#f))
          (let ((__tmp145627
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145220%_
             __tmp145627
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
      (lambda (_%prototable145070%_ _%descriptor145071%_)
        (let* ((_%prototable145074%_ _%prototable145070%_)
               (_%descriptor145082%_ _%descriptor145071%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab145092%_
                 (##unchecked-structure-ref _%prototable145074%_ '2 '#f '#f))
                (_%index145093%_
                 (##unchecked-structure-ref _%descriptor145082%_ '3 '#f '#f)))
            (if (##fx< _%index145093%_ (vector-length _%tab145092%_))
                (vector-ref _%tab145092%_ _%index145093%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable143050%_ _%descriptor143051%_)
        (let* ((_%prototable143054%_ _%prototable143050%_)
               (_%descriptor143062%_ _%descriptor143051%_))
          (____prototype-table-get
           _%prototable143054%_
           _%descriptor143062%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable145016%_ _%descriptor145017%_ _%prototype145018%_)
        (let* ((_%prototable145021%_ _%prototable145016%_)
               (_%descriptor145029%_ _%descriptor145017%_))
          (declare (not safe))
          (let ((_%lock145039%_
                 (##unchecked-structure-ref _%prototable145021%_ '1 '#f '#f))
                (_%index145040%_
                 (##unchecked-structure-ref _%descriptor145029%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again145044%_ ((_%spin145047%_ '0))
                (if (##fx= (##vector-cas! _%lock145039%_ '0 '1 '0) '0)
                    (##vector-set! _%lock145039%_ '1 (current-thread))
                    (if (##fx< _%spin145047%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again145044%_ (##fx+ _%spin145047%_ '1)))
                        (let ((_%owner145053%_
                               (##vector-ref _%lock145039%_ '1)))
                          (if (eq? _%owner145053%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner145053%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again145044%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r145065%_
                   (let ((_%tab145059%_
                          (##unchecked-structure-ref
                           _%prototable145021%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index145040%_ (vector-length _%tab145059%_))
                         (vector-set!
                          _%tab145059%_
                          _%index145040%_
                          _%prototype145018%_)
                         (let ((_%new-size145061%_ __next-interface-index))
                           (if (##fx< _%index145040%_ _%new-size145061%_)
                               (let ((_%new-tab145063%_
                                      (##make-vector _%new-size145061%_ '#f)))
                                 (subvector-move!
                                  _%tab145059%_
                                  '0
                                  (vector-length _%tab145059%_)
                                  _%new-tab145063%_
                                  '0)
                                 (vector-set!
                                  _%new-tab145063%_
                                  _%index145040%_
                                  _%prototype145018%_)
                                 (##unchecked-structure-set!
                                  _%prototable145021%_
                                  _%new-tab145063%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor145029%_
                                      'index:
                                      _%index145040%_
                                      'max-index:
                                      _%new-size145061%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock145039%_ '1 '#f)
                  (##vector-cas! _%lock145039%_ '0 '0 '1)))
              _%$r145065%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable143191%_ _%descriptor143192%_ _%prototype143193%_)
        (let* ((_%prototable143196%_ _%prototable143191%_)
               (_%descriptor143204%_ _%descriptor143192%_))
          (____prototype-table-set!
           _%prototable143196%_
           _%descriptor143204%_
           _%prototype143193%_))))
    (define interface-subclass?
      (lambda (_%klass145009%_)
        (let ((_%super145010145012%_
               (let () (declare (not safe)) (##type-super _%klass145009%_))))
          (if _%super145010145012%_
              (let ((_%super145014%_ _%super145010145012%_))
                (eq? (let () (declare (not safe)) (##type-id _%super145014%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass145001%_)
        (let ((_%$e145003%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass145001%_ '13 '#f '#f))))
          (if _%$e145003%_
              _%$e145003%_
              (let ((_%tab145007%_
                     (let ((__obj145614
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj145614)
                       __obj145614)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass145001%_
                   _%tab145007%_
                   '13
                   '#f
                   '#f))
                _%tab145007%_)))))
    (define create-prototype
      (lambda (_%descriptor144684%_ _%klass144685%_ _%obj-klass144686%_)
        (let ((_%method-table144704%_
               (let ((_%klass144688%_ _%obj-klass144686%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144688%_ 'class))
                     (let ((_%klass144693%_ _%klass144688%_))
                       (declare (not safe))
                       (__specialize-class _%klass144693%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144688%_)
                       '#!void)))))
          (let _%loop144707%_ ((_%rest144710%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144684%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144712%_ '0)
                               (_%methods144714%_ '()))
            (let* ((_%rest144716144724%_ _%rest144710%_)
                   (_%else144718144851%_
                    (lambda ()
                      (let ((_%prototype144767%_
                             (let* ((_%klass144732%_ _%klass144685%_)
                                    (_%k144735%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144712%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144732%_
                                      'class))
                                   (let* ((_%klass144740%_ _%klass144732%_)
                                          (_%k144757%_ _%k144735%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144740%_
                                      _%k144757%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144732%_)
                                     '#!void)))))
                        (let _%loop144770%_ ((_%rest144772%_ _%methods144714%_)
                                             (_%off144773%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144712%_ '1))))
                          (let* ((_%rest144775144783%_ _%rest144772%_)
                                 (_%else144777144832%_
                                  (lambda ()
                                    (let ((_%tab144791%_
                                           (class-type-interface-table
                                            _%obj-klass144686%_)))
                                      (let* ((_%prototable144794%_
                                              _%tab144791%_)
                                             (_%descriptor144797%_
                                              _%descriptor144684%_)
                                             (_%prototype144800%_
                                              _%prototype144767%_)
                                             (_%prototable144804%_
                                              _%prototable144794%_)
                                             (_%descriptor144821%_
                                              _%descriptor144797%_))
                                        (____prototype-table-set!
                                         _%prototable144804%_
                                         _%descriptor144821%_
                                         _%prototype144800%_))
                                      ((lambda (_%prototype144830%_)
                                         _%prototype144830%_)
                                       _%prototype144767%_))))
                                 (_%K144779144839%_
                                  (lambda (_%rest144835%_ _%method144836%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144767%_
                                       _%method144836%_
                                       _%off144773%_
                                       _%klass144685%_
                                       '#f))
                                    (_%loop144770%_
                                     _%rest144835%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144773%_ '1))))))
                            (if (pair? _%rest144775144783%_)
                                (let ((_%hd144780144842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144775144783%_)))
                                      (_%tl144781144844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144775144783%_))))
                                  (let* ((_%method144847%_ _%hd144780144842%_)
                                         (_%rest144849%_ _%tl144781144844%_))
                                    (_%K144779144839%_
                                     _%rest144849%_
                                     _%method144847%_)))
                                (_%else144777144832%_)))))))
                   (_%K144720144989%_
                    (lambda (_%rest144854%_ _%method-spec144855%_)
                      (if (pair? _%method-spec144855%_)
                          (let _%loop-inner144859%_ ((_%methods-rest144862%_
                                                      _%method-spec144855%_))
                            (let* ((_%methods-rest144864144872%_
                                    _%methods-rest144862%_)
                                   (_%else144866144922%_
                                    (lambda ()
                                      (let ((_%tab144880%_
                                             (class-type-interface-table
                                              _%obj-klass144686%_)))
                                        (let* ((_%prototable144882%_
                                                _%tab144880%_)
                                               (_%descriptor144885%_
                                                _%descriptor144684%_)
                                               (_%prototype144888%_ '#!void)
                                               (_%prototable144892%_
                                                _%prototable144882%_)
                                               (_%descriptor144911%_
                                                _%descriptor144885%_))
                                          (____prototype-table-set!
                                           _%prototable144892%_
                                           _%descriptor144911%_
                                           _%prototype144888%_))
                                        ((lambda (_%method144920%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor144684%_
                                            'class:
                                            _%obj-klass144686%_
                                            'method:
                                            _%method144920%_)
                                           '#!void)
                                         _%method-spec144855%_))))
                                   (_%K144868144935%_
                                    (lambda (_%methods-rest144925%_
                                             _%method-name144926%_)
                                      (let ((_%$e144929%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144704%_
                                                _%method-name144926%_
                                                '#f))))
                                        (if _%$e144929%_
                                            ((lambda (_%method144932%_)
                                               (_%loop144707%_
                                                _%rest144854%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144712%_ '1))
                                                (cons _%method144932%_
                                                      _%methods144714%_)))
                                             _%$e144929%_)
                                            (_%loop-inner144859%_
                                             _%methods-rest144925%_))))))
                              (if (pair? _%methods-rest144864144872%_)
                                  (let ((_%hd144869144938%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144864144872%_)))
                                        (_%tl144870144940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144864144872%_))))
                                    (let* ((_%method-name144943%_
                                            _%hd144869144938%_)
                                           (_%methods-rest144945%_
                                            _%tl144870144940%_))
                                      (_%K144868144935%_
                                       _%methods-rest144945%_
                                       _%method-name144943%_)))
                                  (_%else144866144922%_))))
                          (let ((_%$e144947%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144704%_
                                    _%method-spec144855%_
                                    '#f))))
                            (if _%$e144947%_
                                ((lambda (_%method144950%_)
                                   (_%loop144707%_
                                    _%rest144854%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144712%_ '1))
                                    (cons _%method144950%_ _%methods144714%_)))
                                 _%$e144947%_)
                                (let ((_%tab144953%_
                                       (class-type-interface-table
                                        _%obj-klass144686%_)))
                                  (let* ((_%prototable144955%_ _%tab144953%_)
                                         (_%descriptor144958%_
                                          _%descriptor144684%_)
                                         (_%prototype144961%_ '#!void)
                                         (_%prototable144965%_
                                          _%prototable144955%_)
                                         (_%descriptor144978%_
                                          _%descriptor144958%_))
                                    (____prototype-table-set!
                                     _%prototable144965%_
                                     _%descriptor144978%_
                                     _%prototype144961%_))
                                  ((lambda (_%method144987%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor144684%_
                                      'class:
                                      _%obj-klass144686%_
                                      'method:
                                      _%method144987%_)
                                     '#!void)
                                   _%method-spec144855%_))))))))
              (if (pair? _%rest144716144724%_)
                  (let ((_%hd144721144992%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144716144724%_)))
                        (_%tl144722144994%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144716144724%_))))
                    (let* ((_%method-spec144997%_ _%hd144721144992%_)
                           (_%rest144999%_ _%tl144722144994%_))
                      (_%K144720144989%_
                       _%rest144999%_
                       _%method-spec144997%_)))
                  (_%else144718144851%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor144367%_ _%klass144368%_ _%obj-klass144369%_)
        (let ((_%method-table144387%_
               (let ((_%klass144371%_ _%obj-klass144369%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass144371%_ 'class))
                     (let ((_%klass144376%_ _%klass144371%_))
                       (declare (not safe))
                       (__specialize-class _%klass144376%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass144371%_)
                       '#!void)))))
          (let _%loop144390%_ ((_%rest144393%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor144367%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count144395%_ '0)
                               (_%methods144397%_ '()))
            (let* ((_%rest144399144407%_ _%rest144393%_)
                   (_%else144401144534%_
                    (lambda ()
                      (let ((_%prototype144450%_
                             (let* ((_%klass144415%_ _%klass144368%_)
                                    (_%k144418%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count144395%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144415%_
                                      'class))
                                   (let* ((_%klass144423%_ _%klass144415%_)
                                          (_%k144440%_ _%k144418%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass144423%_
                                      _%k144440%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144415%_)
                                     '#!void)))))
                        (let _%loop144453%_ ((_%rest144455%_ _%methods144397%_)
                                             (_%off144456%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count144395%_ '1))))
                          (let* ((_%rest144458144466%_ _%rest144455%_)
                                 (_%else144460144515%_
                                  (lambda ()
                                    (let ((_%tab144474%_
                                           (class-type-interface-table
                                            _%obj-klass144369%_)))
                                      (let* ((_%prototable144477%_
                                              _%tab144474%_)
                                             (_%descriptor144480%_
                                              _%descriptor144367%_)
                                             (_%prototype144483%_
                                              _%prototype144450%_)
                                             (_%prototable144487%_
                                              _%prototable144477%_)
                                             (_%descriptor144504%_
                                              _%descriptor144480%_))
                                        (____prototype-table-set!
                                         _%prototable144487%_
                                         _%descriptor144504%_
                                         _%prototype144483%_))
                                      ((lambda (_%prototype144513%_)
                                         _%prototype144513%_)
                                       _%prototype144450%_))))
                                 (_%K144462144522%_
                                  (lambda (_%rest144518%_ _%method144519%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype144450%_
                                       _%method144519%_
                                       _%off144456%_
                                       _%klass144368%_
                                       '#f))
                                    (_%loop144453%_
                                     _%rest144518%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off144456%_ '1))))))
                            (if (pair? _%rest144458144466%_)
                                (let ((_%hd144463144525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest144458144466%_)))
                                      (_%tl144464144527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest144458144466%_))))
                                  (let* ((_%method144530%_ _%hd144463144525%_)
                                         (_%rest144532%_ _%tl144464144527%_))
                                    (_%K144462144522%_
                                     _%rest144532%_
                                     _%method144530%_)))
                                (_%else144460144515%_)))))))
                   (_%K144403144672%_
                    (lambda (_%rest144537%_ _%method-spec144538%_)
                      (if (pair? _%method-spec144538%_)
                          (let _%loop-inner144542%_ ((_%methods-rest144545%_
                                                      _%method-spec144538%_))
                            (let* ((_%methods-rest144547144555%_
                                    _%methods-rest144545%_)
                                   (_%else144549144605%_
                                    (lambda ()
                                      (let ((_%tab144563%_
                                             (class-type-interface-table
                                              _%obj-klass144369%_)))
                                        (let* ((_%prototable144565%_
                                                _%tab144563%_)
                                               (_%descriptor144568%_
                                                _%descriptor144367%_)
                                               (_%prototype144571%_ '#!void)
                                               (_%prototable144575%_
                                                _%prototable144565%_)
                                               (_%descriptor144594%_
                                                _%descriptor144568%_))
                                          (____prototype-table-set!
                                           _%prototable144575%_
                                           _%descriptor144594%_
                                           _%prototype144571%_))
                                        ((lambda (_%method144603%_) '#f)
                                         _%method-spec144538%_))))
                                   (_%K144551144618%_
                                    (lambda (_%methods-rest144608%_
                                             _%method-name144609%_)
                                      (let ((_%$e144612%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table144387%_
                                                _%method-name144609%_
                                                '#f))))
                                        (if _%$e144612%_
                                            ((lambda (_%method144615%_)
                                               (_%loop144390%_
                                                _%rest144537%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count144395%_ '1))
                                                (cons _%method144615%_
                                                      _%methods144397%_)))
                                             _%$e144612%_)
                                            (_%loop-inner144542%_
                                             _%methods-rest144608%_))))))
                              (if (pair? _%methods-rest144547144555%_)
                                  (let ((_%hd144552144621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest144547144555%_)))
                                        (_%tl144553144623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest144547144555%_))))
                                    (let* ((_%method-name144626%_
                                            _%hd144552144621%_)
                                           (_%methods-rest144628%_
                                            _%tl144553144623%_))
                                      (_%K144551144618%_
                                       _%methods-rest144628%_
                                       _%method-name144626%_)))
                                  (_%else144549144605%_))))
                          (let ((_%$e144630%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table144387%_
                                    _%method-spec144538%_
                                    '#f))))
                            (if _%$e144630%_
                                ((lambda (_%method144633%_)
                                   (_%loop144390%_
                                    _%rest144537%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count144395%_ '1))
                                    (cons _%method144633%_ _%methods144397%_)))
                                 _%$e144630%_)
                                (let ((_%tab144636%_
                                       (class-type-interface-table
                                        _%obj-klass144369%_)))
                                  (let* ((_%prototable144638%_ _%tab144636%_)
                                         (_%descriptor144641%_
                                          _%descriptor144367%_)
                                         (_%prototype144644%_ '#!void)
                                         (_%prototable144648%_
                                          _%prototable144638%_)
                                         (_%descriptor144661%_
                                          _%descriptor144641%_))
                                    (____prototype-table-set!
                                     _%prototable144648%_
                                     _%descriptor144661%_
                                     _%prototype144644%_))
                                  ((lambda (_%method144670%_) '#f)
                                   _%method-spec144538%_))))))))
              (if (pair? _%rest144399144407%_)
                  (let ((_%hd144404144675%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest144399144407%_)))
                        (_%tl144405144677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest144399144407%_))))
                    (let* ((_%method-spec144680%_ _%hd144404144675%_)
                           (_%rest144682%_ _%tl144405144677%_))
                      (_%K144403144672%_
                       _%rest144682%_
                       _%method-spec144680%_)))
                  (_%else144401144534%_)))))))
    (define cast
      (lambda (_%descriptor144209%_ _%obj144211%_)
        (let* ((_%klass144214%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144209%_ '1 '#f '#f)))
               (_%klass-id144217%_
                (let () (declare (not safe)) (##type-id _%klass144214%_))))
          (let _%loop144221%_ ((_%obj144224%_ _%obj144211%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144227%_
                    (let () (declare (not safe)) (class-of _%obj144224%_)))
                   (_%obj-klass-id144230%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144227%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144217%_ _%obj-klass-id144230%_))
                  ((lambda (_%obj144235%_) _%obj144235%_) _%obj144224%_)
                  (if (interface-subclass? _%obj-klass144227%_)
                      (let* ((_%tab144238%_
                              (class-type-interface-table _%obj-klass144227%_))
                             (_%$e144278%_
                              (let* ((_%prototable144241%_ _%tab144238%_)
                                     (_%descriptor144244%_
                                      _%descriptor144209%_)
                                     (_%prototable144248%_
                                      _%prototable144241%_)
                                     (_%descriptor144269%_
                                      _%descriptor144244%_))
                                (____prototype-table-get
                                 _%prototable144248%_
                                 _%descriptor144269%_))))
                        (if _%$e144278%_
                            ((lambda (_%prototype144281%_)
                               (if (eq? _%prototype144281%_ '#!void)
                                   (_%loop144221%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj144224%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor144284%_
                                             _%prototype144285%_
                                             _%obj144286%_)
                                      (if _%prototype144285%_
                                          (let ((_%instance144288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144285%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144288%_
                                               _%obj144286%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144288%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144284%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144286%_)))
                                            '#!void)))
                                    _%descriptor144209%_
                                    _%prototype144281%_
                                    _%obj144224%_)))
                             _%$e144278%_)
                            (let ((_%$e144290%_
                                   (try-create-prototype
                                    _%descriptor144209%_
                                    _%klass144214%_
                                    _%obj-klass144227%_)))
                              (if _%$e144290%_
                                  ((lambda (_%prototype144293%_)
                                     ((lambda (_%descriptor144295%_
                                               _%prototype144296%_
                                               _%obj144297%_)
                                        (if _%prototype144296%_
                                            (let ((_%instance144299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144296%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144299%_
                                                 _%obj144297%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144299%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144295%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144297%_)))
                                              '#!void)))
                                      _%descriptor144209%_
                                      _%prototype144293%_
                                      _%obj144224%_))
                                   _%$e144290%_)
                                  (_%loop144221%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj144224%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab144303%_
                              (class-type-interface-table _%obj-klass144227%_))
                             (_%$e144332%_
                              (let* ((_%prototable144305%_ _%tab144303%_)
                                     (_%descriptor144308%_
                                      _%descriptor144209%_)
                                     (_%prototable144312%_
                                      _%prototable144305%_)
                                     (_%descriptor144323%_
                                      _%descriptor144308%_))
                                (____prototype-table-get
                                 _%prototable144312%_
                                 _%descriptor144323%_))))
                        (if _%$e144332%_
                            ((lambda (_%prototype144335%_)
                               (if (eq? _%prototype144335%_ '#!void)
                                   ((lambda (_%descriptor144337%_
                                             _%prototype144338%_
                                             _%obj144339%_)
                                      (if _%prototype144338%_
                                          (let ((_%instance144341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144338%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144341%_
                                               _%obj144339%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144341%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144337%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144339%_)))
                                            '#!void)))
                                    _%descriptor144209%_
                                    '#f
                                    _%obj144224%_)
                                   ((lambda (_%descriptor144343%_
                                             _%prototype144344%_
                                             _%obj144345%_)
                                      (if _%prototype144344%_
                                          (let ((_%instance144347%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144344%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144347%_
                                               _%obj144345%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144347%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor144343%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj144345%_)))
                                            '#!void)))
                                    _%descriptor144209%_
                                    _%prototype144335%_
                                    _%obj144224%_)))
                             _%$e144332%_)
                            (let ((_%$e144349%_
                                   (create-prototype
                                    _%descriptor144209%_
                                    _%klass144214%_
                                    _%obj-klass144227%_)))
                              (if _%$e144349%_
                                  ((lambda (_%prototype144352%_)
                                     ((lambda (_%descriptor144354%_
                                               _%prototype144355%_
                                               _%obj144356%_)
                                        (if _%prototype144355%_
                                            (let ((_%instance144358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144355%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144358%_
                                                 _%obj144356%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144358%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor144354%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj144356%_)))
                                              '#!void)))
                                      _%descriptor144209%_
                                      _%prototype144352%_
                                      _%obj144224%_))
                                   _%$e144349%_)
                                  ((lambda (_%descriptor144361%_
                                            _%prototype144362%_
                                            _%obj144363%_)
                                     (if _%prototype144362%_
                                         (let ((_%instance144365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144362%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144365%_
                                              _%obj144363%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144365%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor144361%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj144363%_)))
                                           '#!void)))
                                   _%descriptor144209%_
                                   '#f
                                   _%obj144224%_))))))))))))
    (define try-cast
      (lambda (_%descriptor144051%_ _%obj144053%_)
        (let* ((_%klass144056%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144051%_ '1 '#f '#f)))
               (_%klass-id144059%_
                (let () (declare (not safe)) (##type-id _%klass144056%_))))
          (let _%loop144063%_ ((_%obj144066%_ _%obj144053%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144069%_
                    (let () (declare (not safe)) (class-of _%obj144066%_)))
                   (_%obj-klass-id144072%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144069%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144059%_ _%obj-klass-id144072%_))
                  ((lambda (_%obj144077%_) _%obj144077%_) _%obj144066%_)
                  (if (interface-subclass? _%obj-klass144069%_)
                      (let* ((_%tab144080%_
                              (class-type-interface-table _%obj-klass144069%_))
                             (_%$e144120%_
                              (let* ((_%prototable144083%_ _%tab144080%_)
                                     (_%descriptor144086%_
                                      _%descriptor144051%_)
                                     (_%prototable144090%_
                                      _%prototable144083%_)
                                     (_%descriptor144111%_
                                      _%descriptor144086%_))
                                (____prototype-table-get
                                 _%prototable144090%_
                                 _%descriptor144111%_))))
                        (if _%$e144120%_
                            ((lambda (_%prototype144123%_)
                               (if (eq? _%prototype144123%_ '#!void)
                                   (_%loop144063%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj144066%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor144126%_
                                             _%prototype144127%_
                                             _%obj144128%_)
                                      (if _%prototype144127%_
                                          (let ((_%instance144130%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144127%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144130%_
                                               _%obj144128%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144130%_)
                                          '#f))
                                    _%descriptor144051%_
                                    _%prototype144123%_
                                    _%obj144066%_)))
                             _%$e144120%_)
                            (let ((_%$e144132%_
                                   (try-create-prototype
                                    _%descriptor144051%_
                                    _%klass144056%_
                                    _%obj-klass144069%_)))
                              (if _%$e144132%_
                                  ((lambda (_%prototype144135%_)
                                     ((lambda (_%descriptor144137%_
                                               _%prototype144138%_
                                               _%obj144139%_)
                                        (if _%prototype144138%_
                                            (let ((_%instance144141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144138%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144141%_
                                                 _%obj144139%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144141%_)
                                            '#f))
                                      _%descriptor144051%_
                                      _%prototype144135%_
                                      _%obj144066%_))
                                   _%$e144132%_)
                                  (_%loop144063%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj144066%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab144145%_
                              (class-type-interface-table _%obj-klass144069%_))
                             (_%$e144174%_
                              (let* ((_%prototable144147%_ _%tab144145%_)
                                     (_%descriptor144150%_
                                      _%descriptor144051%_)
                                     (_%prototable144154%_
                                      _%prototable144147%_)
                                     (_%descriptor144165%_
                                      _%descriptor144150%_))
                                (____prototype-table-get
                                 _%prototable144154%_
                                 _%descriptor144165%_))))
                        (if _%$e144174%_
                            ((lambda (_%prototype144177%_)
                               (if (eq? _%prototype144177%_ '#!void)
                                   ((lambda (_%descriptor144179%_
                                             _%prototype144180%_
                                             _%obj144181%_)
                                      (if _%prototype144180%_
                                          (let ((_%instance144183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144180%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144183%_
                                               _%obj144181%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144183%_)
                                          '#f))
                                    _%descriptor144051%_
                                    '#f
                                    _%obj144066%_)
                                   ((lambda (_%descriptor144185%_
                                             _%prototype144186%_
                                             _%obj144187%_)
                                      (if _%prototype144186%_
                                          (let ((_%instance144189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype144186%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance144189%_
                                               _%obj144187%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance144189%_)
                                          '#f))
                                    _%descriptor144051%_
                                    _%prototype144177%_
                                    _%obj144066%_)))
                             _%$e144174%_)
                            (let ((_%$e144191%_
                                   (try-create-prototype
                                    _%descriptor144051%_
                                    _%klass144056%_
                                    _%obj-klass144069%_)))
                              (if _%$e144191%_
                                  ((lambda (_%prototype144194%_)
                                     ((lambda (_%descriptor144196%_
                                               _%prototype144197%_
                                               _%obj144198%_)
                                        (if _%prototype144197%_
                                            (let ((_%instance144200%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype144197%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance144200%_
                                                 _%obj144198%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance144200%_)
                                            '#f))
                                      _%descriptor144051%_
                                      _%prototype144194%_
                                      _%obj144066%_))
                                   _%$e144191%_)
                                  ((lambda (_%descriptor144203%_
                                            _%prototype144204%_
                                            _%obj144205%_)
                                     (if _%prototype144204%_
                                         (let ((_%instance144207%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype144204%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance144207%_
                                              _%obj144205%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance144207%_)
                                         '#f))
                                   _%descriptor144051%_
                                   '#f
                                   _%obj144066%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor143905%_ _%obj143907%_)
        (let* ((_%klass143910%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143905%_ '1 '#f '#f)))
               (_%klass-id143913%_
                (let () (declare (not safe)) (##type-id _%klass143910%_))))
          (let _%loop143917%_ ((_%obj143920%_ _%obj143907%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143923%_
                    (let () (declare (not safe)) (class-of _%obj143920%_)))
                   (_%obj-klass-id143926%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143923%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143913%_ _%obj-klass-id143926%_))
                  ((lambda (_%obj143931%_) '#t) _%obj143920%_)
                  (if (interface-subclass? _%obj-klass143923%_)
                      (let* ((_%tab143934%_
                              (class-type-interface-table _%obj-klass143923%_))
                             (_%$e143974%_
                              (let* ((_%prototable143937%_ _%tab143934%_)
                                     (_%descriptor143940%_
                                      _%descriptor143905%_)
                                     (_%prototable143944%_
                                      _%prototable143937%_)
                                     (_%descriptor143965%_
                                      _%descriptor143940%_))
                                (____prototype-table-get
                                 _%prototable143944%_
                                 _%descriptor143965%_))))
                        (if _%$e143974%_
                            ((lambda (_%prototype143977%_)
                               (if (eq? _%prototype143977%_ '#!void)
                                   (_%loop143917%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143920%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor143980%_
                                             _%prototype143981%_
                                             _%obj143982%_)
                                      (if _%prototype143981%_ '#t '#f))
                                    _%descriptor143905%_
                                    _%prototype143977%_
                                    _%obj143920%_)))
                             _%$e143974%_)
                            (let ((_%$e143984%_
                                   (try-create-prototype
                                    _%descriptor143905%_
                                    _%klass143910%_
                                    _%obj-klass143923%_)))
                              (if _%$e143984%_
                                  ((lambda (_%prototype143987%_)
                                     ((lambda (_%descriptor143989%_
                                               _%prototype143990%_
                                               _%obj143991%_)
                                        (if _%prototype143990%_ '#t '#f))
                                      _%descriptor143905%_
                                      _%prototype143987%_
                                      _%obj143920%_))
                                   _%$e143984%_)
                                  (_%loop143917%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143920%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143995%_
                              (class-type-interface-table _%obj-klass143923%_))
                             (_%$e144024%_
                              (let* ((_%prototable143997%_ _%tab143995%_)
                                     (_%descriptor144000%_
                                      _%descriptor143905%_)
                                     (_%prototable144004%_
                                      _%prototable143997%_)
                                     (_%descriptor144015%_
                                      _%descriptor144000%_))
                                (____prototype-table-get
                                 _%prototable144004%_
                                 _%descriptor144015%_))))
                        (if _%$e144024%_
                            ((lambda (_%prototype144027%_)
                               (if (eq? _%prototype144027%_ '#!void)
                                   ((lambda (_%descriptor144029%_
                                             _%prototype144030%_
                                             _%obj144031%_)
                                      (if _%prototype144030%_ '#t '#f))
                                    _%descriptor143905%_
                                    '#f
                                    _%obj143920%_)
                                   ((lambda (_%descriptor144033%_
                                             _%prototype144034%_
                                             _%obj144035%_)
                                      (if _%prototype144034%_ '#t '#f))
                                    _%descriptor143905%_
                                    _%prototype144027%_
                                    _%obj143920%_)))
                             _%$e144024%_)
                            (let ((_%$e144037%_
                                   (try-create-prototype
                                    _%descriptor143905%_
                                    _%klass143910%_
                                    _%obj-klass143923%_)))
                              (if _%$e144037%_
                                  ((lambda (_%prototype144040%_)
                                     ((lambda (_%descriptor144042%_
                                               _%prototype144043%_
                                               _%obj144044%_)
                                        (if _%prototype144043%_ '#t '#f))
                                      _%descriptor143905%_
                                      _%prototype144040%_
                                      _%obj143920%_))
                                   _%$e144037%_)
                                  ((lambda (_%descriptor144047%_
                                            _%prototype144048%_
                                            _%obj144049%_)
                                     (if _%prototype144048%_ '#t '#f))
                                   _%descriptor143905%_
                                   '#f
                                   _%obj143920%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor143757%_
               _%obj143758%_
               _%with-prototype+receiver143759%_
               _%with-receiver143760%_)
        (let* ((_%descriptor143763%_ _%descriptor143757%_)
               (_%with-prototype+receiver143771%_
                _%with-prototype+receiver143759%_)
               (_%with-receiver143779%_ _%with-receiver143760%_)
               (_%klass143788%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor143763%_ '1 '#f '#f)))
               (_%klass-id143791%_
                (let () (declare (not safe)) (##type-id _%klass143788%_))))
          (let _%loop143795%_ ((_%obj143798%_ _%obj143758%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass143801%_
                    (let () (declare (not safe)) (class-of _%obj143798%_)))
                   (_%obj-klass-id143804%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass143801%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id143791%_ _%obj-klass-id143804%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver143779%_ _%obj143798%_))
                  (if (interface-subclass? _%obj-klass143801%_)
                      (let* ((_%tab143810%_
                              (class-type-interface-table _%obj-klass143801%_))
                             (_%$e143852%_
                              (let* ((_%prototable143813%_ _%tab143810%_)
                                     (_%descriptor143816%_
                                      _%descriptor143763%_)
                                     (_%prototable143820%_
                                      _%prototable143813%_)
                                     (_%descriptor143843%_
                                      _%descriptor143816%_))
                                (____prototype-table-get
                                 _%prototable143820%_
                                 _%descriptor143843%_))))
                        (if _%$e143852%_
                            ((lambda (_%prototype143855%_)
                               (if (eq? _%prototype143855%_ '#!void)
                                   (_%loop143795%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj143798%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143771%_
                                      _%descriptor143763%_
                                      _%prototype143855%_
                                      _%obj143798%_))))
                             _%$e143852%_)
                            (let ((_%$e143858%_
                                   (try-create-prototype
                                    _%descriptor143763%_
                                    _%klass143788%_
                                    _%obj-klass143801%_)))
                              (if _%$e143858%_
                                  ((lambda (_%prototype143861%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143771%_
                                        _%descriptor143763%_
                                        _%prototype143861%_
                                        _%obj143798%_)))
                                   _%$e143858%_)
                                  (_%loop143795%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj143798%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab143865%_
                              (class-type-interface-table _%obj-klass143801%_))
                             (_%$e143894%_
                              (let* ((_%prototable143867%_ _%tab143865%_)
                                     (_%descriptor143870%_
                                      _%descriptor143763%_)
                                     (_%prototable143874%_
                                      _%prototable143867%_)
                                     (_%descriptor143885%_
                                      _%descriptor143870%_))
                                (____prototype-table-get
                                 _%prototable143874%_
                                 _%descriptor143885%_))))
                        (if _%$e143894%_
                            ((lambda (_%prototype143897%_)
                               (if (eq? _%prototype143897%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143771%_
                                      _%descriptor143763%_
                                      '#f
                                      _%obj143798%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver143771%_
                                      _%descriptor143763%_
                                      _%prototype143897%_
                                      _%obj143798%_))))
                             _%$e143894%_)
                            (let ((_%$e143899%_
                                   (create-prototype
                                    _%descriptor143763%_
                                    _%klass143788%_
                                    _%obj-klass143801%_)))
                              (if _%$e143899%_
                                  ((lambda (_%prototype143902%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver143771%_
                                        _%descriptor143763%_
                                        _%prototype143902%_
                                        _%obj143798%_)))
                                   _%$e143899%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver143771%_
                                     _%descriptor143763%_
                                     '#f
                                     _%obj143798%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor143720%_
               _%obj143721%_
               _%with-prototype+receiver143722%_
               _%with-receiver143723%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor143720%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor143727%_ _%descriptor143720%_))
              (if (procedure? _%with-prototype+receiver143722%_)
                  (let ((_%with-prototype+receiver143737%_
                         _%with-prototype+receiver143722%_))
                    (if (procedure? _%with-receiver143723%_)
                        (let ((_%with-receiver143747%_
                               _%with-receiver143723%_))
                          (__with-prototype
                           _%descriptor143727%_
                           _%obj143721%_
                           _%with-prototype+receiver143737%_
                           _%with-receiver143747%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver143723%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver143722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor143720%_)
              '#!void))))))
