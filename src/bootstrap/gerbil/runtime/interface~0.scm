(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1771037607)
  (begin
    (define CastError::t
      (let ((__tmp153553 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp153553
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args153467%_
        (apply make-instance CastError::t _%$args153467%_)))
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
      (lambda (_%where153341%_ _%message153342%_ . _%irritants153343%_)
        (let ((__tmp153554
               (let ((__obj153548
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj153548
                    _%message153342%_
                    'where:
                    _%where153341%_
                    'irritants:
                    _%irritants153343%_))
                 __obj153548)))
          (declare (not safe))
          (raise __tmp153554))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp153556 (list)) (__tmp153555 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp153556
         '(object)
         __tmp153555
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args153338%_
        (apply make-instance interface-instance::t _%$args153338%_)))
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
      (let ((__tmp153558 (list))
            (__tmp153557
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp153558
         '(type methods index)
         __tmp153557
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args153335%_
        (apply make-instance interface-descriptor::t _%$args153335%_)))
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
          (let _%again153313%_ ((_%spin153316%_ '0))
            (if (let ((__tmp153559
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp153559 '0))
                (let ((__tmp153560 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp153560))
                (if (let () (declare (not safe)) (##fx< _%spin153316%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again153313%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin153316%_ '1))))
                    (let ((_%owner153322%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner153322%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner153322%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again153313%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r153330%_
               (let ((_%index153328%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index153328%_ '1)))
                 _%index153328%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r153330%_)))
    (define interface-descriptor:::init!
      (lambda (_%self153294%_ _%type153295%_ _%methods153296%_)
        (let ((_%self153299%_ _%self153294%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153299%_
             _%type153295%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153299%_
             _%methods153296%_
             '2
             '#f
             '#f))
          (let ((__tmp153561 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153299%_
             __tmp153561
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
      (let ((__tmp153563 (list))
            (__tmp153562
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp153563
         '(lock table)
         __tmp153562
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args153169%_
        (apply make-instance prototype-table::t _%$args153169%_)))
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
      (lambda (_%self153155%_)
        (let ((_%self153158%_ _%self153155%_))
          (let ((__tmp153564 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self153158%_ __tmp153564 '1 '#f '#f))
          (let ((__tmp153565
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153158%_
             __tmp153565
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
      (lambda (_%prototable152984%_ _%descriptor152985%_)
        (let* ((_%prototable152988%_ _%prototable152984%_)
               (_%descriptor152996%_ _%descriptor152985%_))
          (declare (not safe))
          (let ((_%lock153006%_
                 (##unchecked-structure-ref _%prototable152988%_ '1 '#f '#f))
                (_%index153007%_
                 (##unchecked-structure-ref _%descriptor152996%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again153011%_ ((_%spin153014%_ '0))
                (if (##fx= (##vector-cas! _%lock153006%_ '0 '1 '0) '0)
                    (##vector-set! _%lock153006%_ '1 (current-thread))
                    (if (##fx< _%spin153014%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again153011%_ (##fx+ _%spin153014%_ '1)))
                        (let ((_%owner153020%_
                               (##vector-ref _%lock153006%_ '1)))
                          (if (eq? _%owner153020%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner153020%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again153011%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r153028%_
                   (let ((_%tab153026%_
                          (##unchecked-structure-ref
                           _%prototable152988%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index153007%_ (vector-length _%tab153026%_))
                         (vector-ref _%tab153026%_ _%index153007%_)
                         '#f))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock153006%_ '1 '#f)
                  (##vector-cas! _%lock153006%_ '0 '0 '1)))
              _%$r153028%_)))))
    (define __prototype-table-get
      (lambda (_%prototable150963%_ _%descriptor150964%_)
        (let* ((_%prototable150967%_ _%prototable150963%_)
               (_%descriptor150975%_ _%descriptor150964%_))
          (____prototype-table-get
           _%prototable150967%_
           _%descriptor150975%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable152929%_ _%descriptor152930%_ _%prototype152931%_)
        (let* ((_%prototable152934%_ _%prototable152929%_)
               (_%descriptor152942%_ _%descriptor152930%_))
          (declare (not safe))
          (let ((_%lock152952%_
                 (##unchecked-structure-ref _%prototable152934%_ '1 '#f '#f))
                (_%index152953%_
                 (##unchecked-structure-ref _%descriptor152942%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again152957%_ ((_%spin152960%_ '0))
                (if (##fx= (##vector-cas! _%lock152952%_ '0 '1 '0) '0)
                    (##vector-set! _%lock152952%_ '1 (current-thread))
                    (if (##fx< _%spin152960%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again152957%_ (##fx+ _%spin152960%_ '1)))
                        (let ((_%owner152966%_
                               (##vector-ref _%lock152952%_ '1)))
                          (if (eq? _%owner152966%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner152966%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again152957%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r152979%_
                   (let ((_%tab152972%_
                          (##unchecked-structure-ref
                           _%prototable152934%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index152953%_ (vector-length _%tab152972%_))
                         (vector-set!
                          _%tab152972%_
                          _%index152953%_
                          _%prototype152931%_)
                         (let* ((_%new-size152974%_ __next-interface-index)
                                (_%new-tab152976%_
                                 (##make-vector _%new-size152974%_ '#f)))
                           (subvector-move!
                            _%tab152972%_
                            '0
                            (vector-length _%tab152972%_)
                            _%new-tab152976%_
                            '0)
                           (vector-set!
                            _%new-tab152976%_
                            _%index152953%_
                            _%prototype152931%_)
                           (##unchecked-structure-set!
                            _%prototable152934%_
                            _%new-tab152976%_
                            '2
                            '#f
                            '#f))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock152952%_ '1 '#f)
                  (##vector-cas! _%lock152952%_ '0 '0 '1)))
              _%$r152979%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151104%_ _%descriptor151105%_ _%prototype151106%_)
        (let* ((_%prototable151109%_ _%prototable151104%_)
               (_%descriptor151117%_ _%descriptor151105%_))
          (____prototype-table-set!
           _%prototable151109%_
           _%descriptor151117%_
           _%prototype151106%_))))
    (define interface-subclass?
      (lambda (_%klass152922%_)
        (let ((_%super152923152925%_
               (let () (declare (not safe)) (##type-super _%klass152922%_))))
          (if _%super152923152925%_
              (let ((_%super152927%_ _%super152923152925%_))
                (eq? (let () (declare (not safe)) (##type-id _%super152927%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass152914%_)
        (let ((_%$e152916%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass152914%_ '13 '#f '#f))))
          (if _%$e152916%_
              _%$e152916%_
              (let ((_%tab152920%_
                     (let ((__obj153552
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj153552)
                       __obj153552)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass152914%_
                   _%tab152920%_
                   '13
                   '#f
                   '#f))
                _%tab152920%_)))))
    (define create-prototype
      (lambda (_%descriptor152597%_ _%klass152598%_ _%obj-klass152599%_)
        (let ((_%method-table152617%_
               (let ((_%klass152601%_ _%obj-klass152599%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass152601%_ 'class))
                     (let ((_%klass152606%_ _%klass152601%_))
                       (declare (not safe))
                       (__specialize-class _%klass152606%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass152601%_)
                       '#!void)))))
          (let _%loop152620%_ ((_%rest152623%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor152597%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count152625%_ '0)
                               (_%methods152627%_ '()))
            (let* ((_%rest152629152637%_ _%rest152623%_)
                   (_%else152631152764%_
                    (lambda ()
                      (let ((_%prototype152680%_
                             (let* ((_%klass152645%_ _%klass152598%_)
                                    (_%k152648%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count152625%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass152645%_
                                      'class))
                                   (let* ((_%klass152653%_ _%klass152645%_)
                                          (_%k152670%_ _%k152648%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass152653%_
                                      _%k152670%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass152645%_)
                                     '#!void)))))
                        (let _%loop152683%_ ((_%rest152685%_ _%methods152627%_)
                                             (_%off152686%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count152625%_ '1))))
                          (let* ((_%rest152688152696%_ _%rest152685%_)
                                 (_%else152690152745%_
                                  (lambda ()
                                    (let ((_%tab152704%_
                                           (class-type-interface-table
                                            _%obj-klass152599%_)))
                                      (let* ((_%prototable152707%_
                                              _%tab152704%_)
                                             (_%descriptor152710%_
                                              _%descriptor152597%_)
                                             (_%prototype152713%_
                                              _%prototype152680%_)
                                             (_%prototable152717%_
                                              _%prototable152707%_)
                                             (_%descriptor152734%_
                                              _%descriptor152710%_))
                                        (____prototype-table-set!
                                         _%prototable152717%_
                                         _%descriptor152734%_
                                         _%prototype152713%_))
                                      ((lambda (_%prototype152743%_)
                                         _%prototype152743%_)
                                       _%prototype152680%_))))
                                 (_%K152692152752%_
                                  (lambda (_%rest152748%_ _%method152749%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype152680%_
                                       _%method152749%_
                                       _%off152686%_
                                       _%klass152598%_
                                       '#f))
                                    (_%loop152683%_
                                     _%rest152748%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off152686%_ '1))))))
                            (if (pair? _%rest152688152696%_)
                                (let ((_%hd152693152755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152688152696%_)))
                                      (_%tl152694152757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152688152696%_))))
                                  (let* ((_%method152760%_ _%hd152693152755%_)
                                         (_%rest152762%_ _%tl152694152757%_))
                                    (_%K152692152752%_
                                     _%rest152762%_
                                     _%method152760%_)))
                                (_%else152690152745%_)))))))
                   (_%K152633152902%_
                    (lambda (_%rest152767%_ _%method-spec152768%_)
                      (if (pair? _%method-spec152768%_)
                          (let _%loop-inner152772%_ ((_%methods-rest152775%_
                                                      _%method-spec152768%_))
                            (let* ((_%methods-rest152777152785%_
                                    _%methods-rest152775%_)
                                   (_%else152779152835%_
                                    (lambda ()
                                      (let ((_%tab152793%_
                                             (class-type-interface-table
                                              _%obj-klass152599%_)))
                                        (let* ((_%prototable152795%_
                                                _%tab152793%_)
                                               (_%descriptor152798%_
                                                _%descriptor152597%_)
                                               (_%prototype152801%_ '#!void)
                                               (_%prototable152805%_
                                                _%prototable152795%_)
                                               (_%descriptor152824%_
                                                _%descriptor152798%_))
                                          (____prototype-table-set!
                                           _%prototable152805%_
                                           _%descriptor152824%_
                                           _%prototype152801%_))
                                        ((lambda (_%method152833%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor152597%_
                                            'class:
                                            _%obj-klass152599%_
                                            'method:
                                            _%method152833%_)
                                           '#!void)
                                         _%method-spec152768%_))))
                                   (_%K152781152848%_
                                    (lambda (_%methods-rest152838%_
                                             _%method-name152839%_)
                                      (let ((_%$e152842%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table152617%_
                                                _%method-name152839%_
                                                '#f))))
                                        (if _%$e152842%_
                                            ((lambda (_%method152845%_)
                                               (_%loop152620%_
                                                _%rest152767%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count152625%_ '1))
                                                (cons _%method152845%_
                                                      _%methods152627%_)))
                                             _%$e152842%_)
                                            (_%loop-inner152772%_
                                             _%methods-rest152838%_))))))
                              (if (pair? _%methods-rest152777152785%_)
                                  (let ((_%hd152782152851%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest152777152785%_)))
                                        (_%tl152783152853%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest152777152785%_))))
                                    (let* ((_%method-name152856%_
                                            _%hd152782152851%_)
                                           (_%methods-rest152858%_
                                            _%tl152783152853%_))
                                      (_%K152781152848%_
                                       _%methods-rest152858%_
                                       _%method-name152856%_)))
                                  (_%else152779152835%_))))
                          (let ((_%$e152860%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table152617%_
                                    _%method-spec152768%_
                                    '#f))))
                            (if _%$e152860%_
                                ((lambda (_%method152863%_)
                                   (_%loop152620%_
                                    _%rest152767%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count152625%_ '1))
                                    (cons _%method152863%_ _%methods152627%_)))
                                 _%$e152860%_)
                                (let ((_%tab152866%_
                                       (class-type-interface-table
                                        _%obj-klass152599%_)))
                                  (let* ((_%prototable152868%_ _%tab152866%_)
                                         (_%descriptor152871%_
                                          _%descriptor152597%_)
                                         (_%prototype152874%_ '#!void)
                                         (_%prototable152878%_
                                          _%prototable152868%_)
                                         (_%descriptor152891%_
                                          _%descriptor152871%_))
                                    (____prototype-table-set!
                                     _%prototable152878%_
                                     _%descriptor152891%_
                                     _%prototype152874%_))
                                  ((lambda (_%method152900%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor152597%_
                                      'class:
                                      _%obj-klass152599%_
                                      'method:
                                      _%method152900%_)
                                     '#!void)
                                   _%method-spec152768%_))))))))
              (if (pair? _%rest152629152637%_)
                  (let ((_%hd152634152905%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152629152637%_)))
                        (_%tl152635152907%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152629152637%_))))
                    (let* ((_%method-spec152910%_ _%hd152634152905%_)
                           (_%rest152912%_ _%tl152635152907%_))
                      (_%K152633152902%_
                       _%rest152912%_
                       _%method-spec152910%_)))
                  (_%else152631152764%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor152280%_ _%klass152281%_ _%obj-klass152282%_)
        (let ((_%method-table152300%_
               (let ((_%klass152284%_ _%obj-klass152282%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass152284%_ 'class))
                     (let ((_%klass152289%_ _%klass152284%_))
                       (declare (not safe))
                       (__specialize-class _%klass152289%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass152284%_)
                       '#!void)))))
          (let _%loop152303%_ ((_%rest152306%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor152280%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count152308%_ '0)
                               (_%methods152310%_ '()))
            (let* ((_%rest152312152320%_ _%rest152306%_)
                   (_%else152314152447%_
                    (lambda ()
                      (let ((_%prototype152363%_
                             (let* ((_%klass152328%_ _%klass152281%_)
                                    (_%k152331%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count152308%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass152328%_
                                      'class))
                                   (let* ((_%klass152336%_ _%klass152328%_)
                                          (_%k152353%_ _%k152331%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass152336%_
                                      _%k152353%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass152328%_)
                                     '#!void)))))
                        (let _%loop152366%_ ((_%rest152368%_ _%methods152310%_)
                                             (_%off152369%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count152308%_ '1))))
                          (let* ((_%rest152371152379%_ _%rest152368%_)
                                 (_%else152373152428%_
                                  (lambda ()
                                    (let ((_%tab152387%_
                                           (class-type-interface-table
                                            _%obj-klass152282%_)))
                                      (let* ((_%prototable152390%_
                                              _%tab152387%_)
                                             (_%descriptor152393%_
                                              _%descriptor152280%_)
                                             (_%prototype152396%_
                                              _%prototype152363%_)
                                             (_%prototable152400%_
                                              _%prototable152390%_)
                                             (_%descriptor152417%_
                                              _%descriptor152393%_))
                                        (____prototype-table-set!
                                         _%prototable152400%_
                                         _%descriptor152417%_
                                         _%prototype152396%_))
                                      ((lambda (_%prototype152426%_)
                                         _%prototype152426%_)
                                       _%prototype152363%_))))
                                 (_%K152375152435%_
                                  (lambda (_%rest152431%_ _%method152432%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype152363%_
                                       _%method152432%_
                                       _%off152369%_
                                       _%klass152281%_
                                       '#f))
                                    (_%loop152366%_
                                     _%rest152431%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off152369%_ '1))))))
                            (if (pair? _%rest152371152379%_)
                                (let ((_%hd152376152438%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest152371152379%_)))
                                      (_%tl152377152440%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest152371152379%_))))
                                  (let* ((_%method152443%_ _%hd152376152438%_)
                                         (_%rest152445%_ _%tl152377152440%_))
                                    (_%K152375152435%_
                                     _%rest152445%_
                                     _%method152443%_)))
                                (_%else152373152428%_)))))))
                   (_%K152316152585%_
                    (lambda (_%rest152450%_ _%method-spec152451%_)
                      (if (pair? _%method-spec152451%_)
                          (let _%loop-inner152455%_ ((_%methods-rest152458%_
                                                      _%method-spec152451%_))
                            (let* ((_%methods-rest152460152468%_
                                    _%methods-rest152458%_)
                                   (_%else152462152518%_
                                    (lambda ()
                                      (let ((_%tab152476%_
                                             (class-type-interface-table
                                              _%obj-klass152282%_)))
                                        (let* ((_%prototable152478%_
                                                _%tab152476%_)
                                               (_%descriptor152481%_
                                                _%descriptor152280%_)
                                               (_%prototype152484%_ '#!void)
                                               (_%prototable152488%_
                                                _%prototable152478%_)
                                               (_%descriptor152507%_
                                                _%descriptor152481%_))
                                          (____prototype-table-set!
                                           _%prototable152488%_
                                           _%descriptor152507%_
                                           _%prototype152484%_))
                                        ((lambda (_%method152516%_) '#f)
                                         _%method-spec152451%_))))
                                   (_%K152464152531%_
                                    (lambda (_%methods-rest152521%_
                                             _%method-name152522%_)
                                      (let ((_%$e152525%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table152300%_
                                                _%method-name152522%_
                                                '#f))))
                                        (if _%$e152525%_
                                            ((lambda (_%method152528%_)
                                               (_%loop152303%_
                                                _%rest152450%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count152308%_ '1))
                                                (cons _%method152528%_
                                                      _%methods152310%_)))
                                             _%$e152525%_)
                                            (_%loop-inner152455%_
                                             _%methods-rest152521%_))))))
                              (if (pair? _%methods-rest152460152468%_)
                                  (let ((_%hd152465152534%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest152460152468%_)))
                                        (_%tl152466152536%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest152460152468%_))))
                                    (let* ((_%method-name152539%_
                                            _%hd152465152534%_)
                                           (_%methods-rest152541%_
                                            _%tl152466152536%_))
                                      (_%K152464152531%_
                                       _%methods-rest152541%_
                                       _%method-name152539%_)))
                                  (_%else152462152518%_))))
                          (let ((_%$e152543%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table152300%_
                                    _%method-spec152451%_
                                    '#f))))
                            (if _%$e152543%_
                                ((lambda (_%method152546%_)
                                   (_%loop152303%_
                                    _%rest152450%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count152308%_ '1))
                                    (cons _%method152546%_ _%methods152310%_)))
                                 _%$e152543%_)
                                (let ((_%tab152549%_
                                       (class-type-interface-table
                                        _%obj-klass152282%_)))
                                  (let* ((_%prototable152551%_ _%tab152549%_)
                                         (_%descriptor152554%_
                                          _%descriptor152280%_)
                                         (_%prototype152557%_ '#!void)
                                         (_%prototable152561%_
                                          _%prototable152551%_)
                                         (_%descriptor152574%_
                                          _%descriptor152554%_))
                                    (____prototype-table-set!
                                     _%prototable152561%_
                                     _%descriptor152574%_
                                     _%prototype152557%_))
                                  ((lambda (_%method152583%_) '#f)
                                   _%method-spec152451%_))))))))
              (if (pair? _%rest152312152320%_)
                  (let ((_%hd152317152588%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest152312152320%_)))
                        (_%tl152318152590%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest152312152320%_))))
                    (let* ((_%method-spec152593%_ _%hd152317152588%_)
                           (_%rest152595%_ _%tl152318152590%_))
                      (_%K152316152585%_
                       _%rest152595%_
                       _%method-spec152593%_)))
                  (_%else152314152447%_)))))))
    (define cast
      (lambda (_%descriptor152122%_ _%obj152124%_)
        (let* ((_%klass152127%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152122%_ '1 '#f '#f)))
               (_%klass-id152130%_
                (let () (declare (not safe)) (##type-id _%klass152127%_))))
          (let _%loop152134%_ ((_%obj152137%_ _%obj152124%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152140%_
                    (let () (declare (not safe)) (class-of _%obj152137%_)))
                   (_%obj-klass-id152143%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152140%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152130%_ _%obj-klass-id152143%_))
                  ((lambda (_%obj152148%_) _%obj152148%_) _%obj152137%_)
                  (if (interface-subclass? _%obj-klass152140%_)
                      (let* ((_%tab152151%_
                              (class-type-interface-table _%obj-klass152140%_))
                             (_%$e152191%_
                              (let* ((_%prototable152154%_ _%tab152151%_)
                                     (_%descriptor152157%_
                                      _%descriptor152122%_)
                                     (_%prototable152161%_
                                      _%prototable152154%_)
                                     (_%descriptor152182%_
                                      _%descriptor152157%_))
                                (____prototype-table-get
                                 _%prototable152161%_
                                 _%descriptor152182%_))))
                        (if _%$e152191%_
                            ((lambda (_%prototype152194%_)
                               (if (eq? _%prototype152194%_ '#!void)
                                   (_%loop152134%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj152137%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor152197%_
                                             _%prototype152198%_
                                             _%obj152199%_)
                                      (if _%prototype152198%_
                                          (let ((_%instance152201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152198%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152201%_
                                               _%obj152199%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152201%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor152197%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj152199%_)))
                                            '#!void)))
                                    _%descriptor152122%_
                                    _%prototype152194%_
                                    _%obj152137%_)))
                             _%$e152191%_)
                            (let ((_%$e152203%_
                                   (try-create-prototype
                                    _%descriptor152122%_
                                    _%klass152127%_
                                    _%obj-klass152140%_)))
                              (if _%$e152203%_
                                  ((lambda (_%prototype152206%_)
                                     ((lambda (_%descriptor152208%_
                                               _%prototype152209%_
                                               _%obj152210%_)
                                        (if _%prototype152209%_
                                            (let ((_%instance152212%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype152209%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance152212%_
                                                 _%obj152210%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance152212%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor152208%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj152210%_)))
                                              '#!void)))
                                      _%descriptor152122%_
                                      _%prototype152206%_
                                      _%obj152137%_))
                                   _%$e152203%_)
                                  (_%loop152134%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj152137%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab152216%_
                              (class-type-interface-table _%obj-klass152140%_))
                             (_%$e152245%_
                              (let* ((_%prototable152218%_ _%tab152216%_)
                                     (_%descriptor152221%_
                                      _%descriptor152122%_)
                                     (_%prototable152225%_
                                      _%prototable152218%_)
                                     (_%descriptor152236%_
                                      _%descriptor152221%_))
                                (____prototype-table-get
                                 _%prototable152225%_
                                 _%descriptor152236%_))))
                        (if _%$e152245%_
                            ((lambda (_%prototype152248%_)
                               (if (eq? _%prototype152248%_ '#!void)
                                   ((lambda (_%descriptor152250%_
                                             _%prototype152251%_
                                             _%obj152252%_)
                                      (if _%prototype152251%_
                                          (let ((_%instance152254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152251%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152254%_
                                               _%obj152252%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152254%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor152250%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj152252%_)))
                                            '#!void)))
                                    _%descriptor152122%_
                                    '#f
                                    _%obj152137%_)
                                   ((lambda (_%descriptor152256%_
                                             _%prototype152257%_
                                             _%obj152258%_)
                                      (if _%prototype152257%_
                                          (let ((_%instance152260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152257%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152260%_
                                               _%obj152258%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152260%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor152256%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj152258%_)))
                                            '#!void)))
                                    _%descriptor152122%_
                                    _%prototype152248%_
                                    _%obj152137%_)))
                             _%$e152245%_)
                            (let ((_%$e152262%_
                                   (create-prototype
                                    _%descriptor152122%_
                                    _%klass152127%_
                                    _%obj-klass152140%_)))
                              (if _%$e152262%_
                                  ((lambda (_%prototype152265%_)
                                     ((lambda (_%descriptor152267%_
                                               _%prototype152268%_
                                               _%obj152269%_)
                                        (if _%prototype152268%_
                                            (let ((_%instance152271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype152268%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance152271%_
                                                 _%obj152269%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance152271%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor152267%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj152269%_)))
                                              '#!void)))
                                      _%descriptor152122%_
                                      _%prototype152265%_
                                      _%obj152137%_))
                                   _%$e152262%_)
                                  ((lambda (_%descriptor152274%_
                                            _%prototype152275%_
                                            _%obj152276%_)
                                     (if _%prototype152275%_
                                         (let ((_%instance152278%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype152275%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance152278%_
                                              _%obj152276%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance152278%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor152274%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj152276%_)))
                                           '#!void)))
                                   _%descriptor152122%_
                                   '#f
                                   _%obj152137%_))))))))))))
    (define try-cast
      (lambda (_%descriptor151964%_ _%obj151966%_)
        (let* ((_%klass151969%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor151964%_ '1 '#f '#f)))
               (_%klass-id151972%_
                (let () (declare (not safe)) (##type-id _%klass151969%_))))
          (let _%loop151976%_ ((_%obj151979%_ _%obj151966%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass151982%_
                    (let () (declare (not safe)) (class-of _%obj151979%_)))
                   (_%obj-klass-id151985%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass151982%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id151972%_ _%obj-klass-id151985%_))
                  ((lambda (_%obj151990%_) _%obj151990%_) _%obj151979%_)
                  (if (interface-subclass? _%obj-klass151982%_)
                      (let* ((_%tab151993%_
                              (class-type-interface-table _%obj-klass151982%_))
                             (_%$e152033%_
                              (let* ((_%prototable151996%_ _%tab151993%_)
                                     (_%descriptor151999%_
                                      _%descriptor151964%_)
                                     (_%prototable152003%_
                                      _%prototable151996%_)
                                     (_%descriptor152024%_
                                      _%descriptor151999%_))
                                (____prototype-table-get
                                 _%prototable152003%_
                                 _%descriptor152024%_))))
                        (if _%$e152033%_
                            ((lambda (_%prototype152036%_)
                               (if (eq? _%prototype152036%_ '#!void)
                                   (_%loop151976%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj151979%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor152039%_
                                             _%prototype152040%_
                                             _%obj152041%_)
                                      (if _%prototype152040%_
                                          (let ((_%instance152043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152040%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152043%_
                                               _%obj152041%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152043%_)
                                          '#f))
                                    _%descriptor151964%_
                                    _%prototype152036%_
                                    _%obj151979%_)))
                             _%$e152033%_)
                            (let ((_%$e152045%_
                                   (try-create-prototype
                                    _%descriptor151964%_
                                    _%klass151969%_
                                    _%obj-klass151982%_)))
                              (if _%$e152045%_
                                  ((lambda (_%prototype152048%_)
                                     ((lambda (_%descriptor152050%_
                                               _%prototype152051%_
                                               _%obj152052%_)
                                        (if _%prototype152051%_
                                            (let ((_%instance152054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype152051%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance152054%_
                                                 _%obj152052%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance152054%_)
                                            '#f))
                                      _%descriptor151964%_
                                      _%prototype152048%_
                                      _%obj151979%_))
                                   _%$e152045%_)
                                  (_%loop151976%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj151979%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab152058%_
                              (class-type-interface-table _%obj-klass151982%_))
                             (_%$e152087%_
                              (let* ((_%prototable152060%_ _%tab152058%_)
                                     (_%descriptor152063%_
                                      _%descriptor151964%_)
                                     (_%prototable152067%_
                                      _%prototable152060%_)
                                     (_%descriptor152078%_
                                      _%descriptor152063%_))
                                (____prototype-table-get
                                 _%prototable152067%_
                                 _%descriptor152078%_))))
                        (if _%$e152087%_
                            ((lambda (_%prototype152090%_)
                               (if (eq? _%prototype152090%_ '#!void)
                                   ((lambda (_%descriptor152092%_
                                             _%prototype152093%_
                                             _%obj152094%_)
                                      (if _%prototype152093%_
                                          (let ((_%instance152096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152093%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152096%_
                                               _%obj152094%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152096%_)
                                          '#f))
                                    _%descriptor151964%_
                                    '#f
                                    _%obj151979%_)
                                   ((lambda (_%descriptor152098%_
                                             _%prototype152099%_
                                             _%obj152100%_)
                                      (if _%prototype152099%_
                                          (let ((_%instance152102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype152099%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152102%_
                                               _%obj152100%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152102%_)
                                          '#f))
                                    _%descriptor151964%_
                                    _%prototype152090%_
                                    _%obj151979%_)))
                             _%$e152087%_)
                            (let ((_%$e152104%_
                                   (try-create-prototype
                                    _%descriptor151964%_
                                    _%klass151969%_
                                    _%obj-klass151982%_)))
                              (if _%$e152104%_
                                  ((lambda (_%prototype152107%_)
                                     ((lambda (_%descriptor152109%_
                                               _%prototype152110%_
                                               _%obj152111%_)
                                        (if _%prototype152110%_
                                            (let ((_%instance152113%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype152110%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance152113%_
                                                 _%obj152111%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance152113%_)
                                            '#f))
                                      _%descriptor151964%_
                                      _%prototype152107%_
                                      _%obj151979%_))
                                   _%$e152104%_)
                                  ((lambda (_%descriptor152116%_
                                            _%prototype152117%_
                                            _%obj152118%_)
                                     (if _%prototype152117%_
                                         (let ((_%instance152120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype152117%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance152120%_
                                              _%obj152118%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance152120%_)
                                         '#f))
                                   _%descriptor151964%_
                                   '#f
                                   _%obj151979%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor151818%_ _%obj151820%_)
        (let* ((_%klass151823%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor151818%_ '1 '#f '#f)))
               (_%klass-id151826%_
                (let () (declare (not safe)) (##type-id _%klass151823%_))))
          (let _%loop151830%_ ((_%obj151833%_ _%obj151820%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass151836%_
                    (let () (declare (not safe)) (class-of _%obj151833%_)))
                   (_%obj-klass-id151839%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass151836%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id151826%_ _%obj-klass-id151839%_))
                  ((lambda (_%obj151844%_) '#t) _%obj151833%_)
                  (if (interface-subclass? _%obj-klass151836%_)
                      (let* ((_%tab151847%_
                              (class-type-interface-table _%obj-klass151836%_))
                             (_%$e151887%_
                              (let* ((_%prototable151850%_ _%tab151847%_)
                                     (_%descriptor151853%_
                                      _%descriptor151818%_)
                                     (_%prototable151857%_
                                      _%prototable151850%_)
                                     (_%descriptor151878%_
                                      _%descriptor151853%_))
                                (____prototype-table-get
                                 _%prototable151857%_
                                 _%descriptor151878%_))))
                        (if _%$e151887%_
                            ((lambda (_%prototype151890%_)
                               (if (eq? _%prototype151890%_ '#!void)
                                   (_%loop151830%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj151833%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor151893%_
                                             _%prototype151894%_
                                             _%obj151895%_)
                                      (if _%prototype151894%_ '#t '#f))
                                    _%descriptor151818%_
                                    _%prototype151890%_
                                    _%obj151833%_)))
                             _%$e151887%_)
                            (let ((_%$e151897%_
                                   (try-create-prototype
                                    _%descriptor151818%_
                                    _%klass151823%_
                                    _%obj-klass151836%_)))
                              (if _%$e151897%_
                                  ((lambda (_%prototype151900%_)
                                     ((lambda (_%descriptor151902%_
                                               _%prototype151903%_
                                               _%obj151904%_)
                                        (if _%prototype151903%_ '#t '#f))
                                      _%descriptor151818%_
                                      _%prototype151900%_
                                      _%obj151833%_))
                                   _%$e151897%_)
                                  (_%loop151830%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj151833%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab151908%_
                              (class-type-interface-table _%obj-klass151836%_))
                             (_%$e151937%_
                              (let* ((_%prototable151910%_ _%tab151908%_)
                                     (_%descriptor151913%_
                                      _%descriptor151818%_)
                                     (_%prototable151917%_
                                      _%prototable151910%_)
                                     (_%descriptor151928%_
                                      _%descriptor151913%_))
                                (____prototype-table-get
                                 _%prototable151917%_
                                 _%descriptor151928%_))))
                        (if _%$e151937%_
                            ((lambda (_%prototype151940%_)
                               (if (eq? _%prototype151940%_ '#!void)
                                   ((lambda (_%descriptor151942%_
                                             _%prototype151943%_
                                             _%obj151944%_)
                                      (if _%prototype151943%_ '#t '#f))
                                    _%descriptor151818%_
                                    '#f
                                    _%obj151833%_)
                                   ((lambda (_%descriptor151946%_
                                             _%prototype151947%_
                                             _%obj151948%_)
                                      (if _%prototype151947%_ '#t '#f))
                                    _%descriptor151818%_
                                    _%prototype151940%_
                                    _%obj151833%_)))
                             _%$e151937%_)
                            (let ((_%$e151950%_
                                   (try-create-prototype
                                    _%descriptor151818%_
                                    _%klass151823%_
                                    _%obj-klass151836%_)))
                              (if _%$e151950%_
                                  ((lambda (_%prototype151953%_)
                                     ((lambda (_%descriptor151955%_
                                               _%prototype151956%_
                                               _%obj151957%_)
                                        (if _%prototype151956%_ '#t '#f))
                                      _%descriptor151818%_
                                      _%prototype151953%_
                                      _%obj151833%_))
                                   _%$e151950%_)
                                  ((lambda (_%descriptor151960%_
                                            _%prototype151961%_
                                            _%obj151962%_)
                                     (if _%prototype151961%_ '#t '#f))
                                   _%descriptor151818%_
                                   '#f
                                   _%obj151833%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor151670%_
               _%obj151671%_
               _%with-prototype+receiver151672%_
               _%with-receiver151673%_)
        (let* ((_%descriptor151676%_ _%descriptor151670%_)
               (_%with-prototype+receiver151684%_
                _%with-prototype+receiver151672%_)
               (_%with-receiver151692%_ _%with-receiver151673%_)
               (_%klass151701%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor151676%_ '1 '#f '#f)))
               (_%klass-id151704%_
                (let () (declare (not safe)) (##type-id _%klass151701%_))))
          (let _%loop151708%_ ((_%obj151711%_ _%obj151671%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass151714%_
                    (let () (declare (not safe)) (class-of _%obj151711%_)))
                   (_%obj-klass-id151717%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass151714%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id151704%_ _%obj-klass-id151717%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver151692%_ _%obj151711%_))
                  (if (interface-subclass? _%obj-klass151714%_)
                      (let* ((_%tab151723%_
                              (class-type-interface-table _%obj-klass151714%_))
                             (_%$e151765%_
                              (let* ((_%prototable151726%_ _%tab151723%_)
                                     (_%descriptor151729%_
                                      _%descriptor151676%_)
                                     (_%prototable151733%_
                                      _%prototable151726%_)
                                     (_%descriptor151756%_
                                      _%descriptor151729%_))
                                (____prototype-table-get
                                 _%prototable151733%_
                                 _%descriptor151756%_))))
                        (if _%$e151765%_
                            ((lambda (_%prototype151768%_)
                               (if (eq? _%prototype151768%_ '#!void)
                                   (_%loop151708%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj151711%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver151684%_
                                      _%descriptor151676%_
                                      _%prototype151768%_
                                      _%obj151711%_))))
                             _%$e151765%_)
                            (let ((_%$e151771%_
                                   (try-create-prototype
                                    _%descriptor151676%_
                                    _%klass151701%_
                                    _%obj-klass151714%_)))
                              (if _%$e151771%_
                                  ((lambda (_%prototype151774%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver151684%_
                                        _%descriptor151676%_
                                        _%prototype151774%_
                                        _%obj151711%_)))
                                   _%$e151771%_)
                                  (_%loop151708%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj151711%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab151778%_
                              (class-type-interface-table _%obj-klass151714%_))
                             (_%$e151807%_
                              (let* ((_%prototable151780%_ _%tab151778%_)
                                     (_%descriptor151783%_
                                      _%descriptor151676%_)
                                     (_%prototable151787%_
                                      _%prototable151780%_)
                                     (_%descriptor151798%_
                                      _%descriptor151783%_))
                                (____prototype-table-get
                                 _%prototable151787%_
                                 _%descriptor151798%_))))
                        (if _%$e151807%_
                            ((lambda (_%prototype151810%_)
                               (if (eq? _%prototype151810%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver151684%_
                                      _%descriptor151676%_
                                      '#f
                                      _%obj151711%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver151684%_
                                      _%descriptor151676%_
                                      _%prototype151810%_
                                      _%obj151711%_))))
                             _%$e151807%_)
                            (let ((_%$e151812%_
                                   (create-prototype
                                    _%descriptor151676%_
                                    _%klass151701%_
                                    _%obj-klass151714%_)))
                              (if _%$e151812%_
                                  ((lambda (_%prototype151815%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver151684%_
                                        _%descriptor151676%_
                                        _%prototype151815%_
                                        _%obj151711%_)))
                                   _%$e151812%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver151684%_
                                     _%descriptor151676%_
                                     '#f
                                     _%obj151711%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor151633%_
               _%obj151634%_
               _%with-prototype+receiver151635%_
               _%with-receiver151636%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor151633%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor151640%_ _%descriptor151633%_))
              (if (procedure? _%with-prototype+receiver151635%_)
                  (let ((_%with-prototype+receiver151650%_
                         _%with-prototype+receiver151635%_))
                    (if (procedure? _%with-receiver151636%_)
                        (let ((_%with-receiver151660%_
                               _%with-receiver151636%_))
                          (__with-prototype
                           _%descriptor151640%_
                           _%obj151634%_
                           _%with-prototype+receiver151650%_
                           _%with-receiver151660%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver151636%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver151635%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor151633%_)
              '#!void))))))
