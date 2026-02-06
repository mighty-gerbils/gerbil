(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770342295)
  (begin
    (define CastError::t
      (let ((__tmp121185 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp121185
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args121175%_
        (apply make-instance CastError::t _%$args121175%_)))
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
      (lambda (_%where121049%_ _%message121050%_ . _%irritants121051%_)
        (let ((__tmp121186
               (let ((__obj121178
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj121178
                    _%message121050%_
                    'where:
                    _%where121049%_
                    'irritants:
                    _%irritants121051%_))
                 __obj121178)))
          (declare (not safe))
          (raise __tmp121186))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp121188 (list)) (__tmp121187 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp121188
         '(object)
         __tmp121187
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args121046%_
        (apply make-instance interface-instance::t _%$args121046%_)))
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
      (let ((__tmp121190 (list))
            (__tmp121189
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp121190
         '(type methods index)
         __tmp121189
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args121043%_
        (apply make-instance interface-descriptor::t _%$args121043%_)))
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
          (let _%again121023%_ ((_%spin121026%_ '0))
            (if (let ((__tmp121191
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp121191 '0))
                (let ((__tmp121192 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp121192))
                (if (let () (declare (not safe)) (##fx< _%spin121026%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again121023%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin121026%_ '1))))
                    (let ((_%owner121032%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner121032%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner121032%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again121023%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r121040%_
               (let ((_%index121038%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index121038%_ '1)))
                 _%index121038%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r121040%_)))
    (define interface-descriptor:::init!
      (lambda (_%self121004%_ _%type121005%_ _%methods121006%_)
        (let ((_%self121009%_ _%self121004%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self121009%_
             _%type121005%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self121009%_
             _%methods121006%_
             '2
             '#f
             '#f))
          (let ((__tmp121193 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self121009%_
             __tmp121193
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
      (let ((__tmp121195 (list))
            (__tmp121194
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp121195
         '(lock table)
         __tmp121194
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args120879%_
        (apply make-instance prototype-table::t _%$args120879%_)))
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
      (lambda (_%self120865%_)
        (let ((_%self120868%_ _%self120865%_))
          (let ((__tmp121196 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self120868%_ __tmp121196 '1 '#f '#f))
          (let ((__tmp121197
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self120868%_
             __tmp121197
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
      (lambda (_%prototable120722%_ _%descriptor120723%_)
        (let* ((_%prototable120726%_ _%prototable120722%_)
               (_%descriptor120734%_ _%descriptor120723%_))
          (____prototype-table-get
           _%prototable120726%_
           _%descriptor120734%_))))
    (define ____prototype-table-get
      (lambda (_%prototable120675%_ _%descriptor120676%_)
        (let* ((_%prototable120679%_ _%prototable120675%_)
               (_%descriptor120687%_ _%descriptor120676%_))
          (declare (not safe))
          (let ((_%lock120697%_
                 (##unchecked-structure-ref _%prototable120679%_ '1 '#f '#f))
                (_%index120698%_
                 (##unchecked-structure-ref _%descriptor120687%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again120702%_ ((_%spin120705%_ '0))
                (if (##fx= (##vector-cas! _%lock120697%_ '0 '1 '0) '0)
                    (##vector-set! _%lock120697%_ '1 (current-thread))
                    (if (##fx< _%spin120705%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again120702%_ (##fx+ _%spin120705%_ '1)))
                        (let ((_%owner120711%_
                               (##vector-ref _%lock120697%_ '1)))
                          (if (eq? _%owner120711%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner120711%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again120702%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r120719%_
                   (let ((_%tab120717%_
                          (##unchecked-structure-ref
                           _%prototable120679%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index120698%_ (vector-length _%tab120717%_))
                         (vector-ref _%tab120717%_ _%index120698%_)
                         '#f))))
              (##vector-set! _%lock120697%_ '1 '#f)
              (##vector-cas! _%lock120697%_ '0 '0 '1)
              _%$r120719%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable120653%_ _%descriptor120654%_ _%prototype120655%_)
        (let* ((_%prototable120658%_ _%prototable120653%_)
               (_%descriptor120666%_ _%descriptor120654%_))
          (____prototype-table-set!
           _%prototable120658%_
           _%descriptor120666%_
           _%prototype120655%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable120600%_ _%descriptor120601%_ _%prototype120602%_)
        (let* ((_%prototable120605%_ _%prototable120600%_)
               (_%descriptor120613%_ _%descriptor120601%_))
          (declare (not safe))
          (let ((_%lock120623%_
                 (##unchecked-structure-ref _%prototable120605%_ '1 '#f '#f))
                (_%index120624%_
                 (##unchecked-structure-ref _%descriptor120613%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again120628%_ ((_%spin120631%_ '0))
                (if (##fx= (##vector-cas! _%lock120623%_ '0 '1 '0) '0)
                    (##vector-set! _%lock120623%_ '1 (current-thread))
                    (if (##fx< _%spin120631%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again120628%_ (##fx+ _%spin120631%_ '1)))
                        (let ((_%owner120637%_
                               (##vector-ref _%lock120623%_ '1)))
                          (if (eq? _%owner120637%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner120637%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again120628%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r120650%_
                   (let ((_%tab120643%_
                          (##unchecked-structure-ref
                           _%prototable120605%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index120624%_ (vector-length _%tab120643%_))
                         (vector-set!
                          _%tab120643%_
                          _%index120624%_
                          _%prototype120602%_)
                         (let* ((_%new-size120645%_ __next-interface-index)
                                (_%new-tab120647%_
                                 (##make-vector _%new-size120645%_ '#f)))
                           (subvector-move!
                            _%tab120643%_
                            '0
                            (vector-length _%tab120643%_)
                            _%new-tab120647%_
                            '0)
                           (vector-set!
                            _%new-tab120647%_
                            _%index120624%_
                            _%prototype120602%_)
                           (##unchecked-structure-set!
                            _%prototable120605%_
                            _%new-tab120647%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock120623%_ '1 '#f)
              (##vector-cas! _%lock120623%_ '0 '0 '1)
              _%$r120650%_)))))
    (define interface-subclass?
      (lambda (_%klass120593%_)
        (let ((_%super120594120596%_
               (let () (declare (not safe)) (##type-super _%klass120593%_))))
          (if _%super120594120596%_
              (let ((_%super120598%_ _%super120594120596%_))
                (eq? (let () (declare (not safe)) (##type-id _%super120598%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass120585%_)
        (let ((_%$e120587%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass120585%_ '13 '#f '#f))))
          (if _%$e120587%_
              _%$e120587%_
              (let ((_%tab120591%_
                     (let ((__obj121182
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj121182)
                       __obj121182)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass120585%_
                   _%tab120591%_
                   '13
                   '#f
                   '#f))
                _%tab120591%_)))))
    (define create-prototype
      (lambda (_%descriptor120425%_ _%klass120426%_ _%obj-klass120427%_)
        (let ((_%method-table120429%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass120427%_))))
          (let _%loop120432%_ ((_%rest120435%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor120425%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count120437%_ '0)
                               (_%methods120439%_ '()))
            (let* ((_%rest120441120449%_ _%rest120435%_)
                   (_%else120443120505%_
                    (lambda ()
                      (let ((_%prototype120457%_
                             (let ((__obj121183
                                    (let ((__tmp121198
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count120437%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass120426%_
                                       __tmp121198))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj121183 '#f))
                               __obj121183)))
                        (let _%loop120460%_ ((_%rest120462%_ _%methods120439%_)
                                             (_%off120463%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count120437%_ '1))))
                          (let* ((_%rest120465120473%_ _%rest120462%_)
                                 (_%else120467120486%_
                                  (lambda ()
                                    (let ((_%tab120481%_
                                           (class-type-interface-table
                                            _%obj-klass120427%_)))
                                      (____prototype-table-set!
                                       _%tab120481%_
                                       _%descriptor120425%_
                                       _%prototype120457%_)
                                      ((lambda (_%prototype120484%_)
                                         _%prototype120484%_)
                                       _%prototype120457%_))))
                                 (_%K120469120493%_
                                  (lambda (_%rest120489%_ _%method120490%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype120457%_
                                       _%method120490%_
                                       _%off120463%_
                                       _%klass120426%_
                                       '#f))
                                    (_%loop120460%_
                                     _%rest120489%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off120463%_ '1))))))
                            (if (pair? _%rest120465120473%_)
                                (let ((_%hd120470120496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest120465120473%_)))
                                      (_%tl120471120498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest120465120473%_))))
                                  (let* ((_%method120501%_ _%hd120470120496%_)
                                         (_%rest120503%_ _%tl120471120498%_))
                                    (_%K120469120493%_
                                     _%rest120503%_
                                     _%method120501%_)))
                                (_%else120467120486%_)))))))
                   (_%K120445120573%_
                    (lambda (_%rest120508%_ _%method-spec120509%_)
                      (if (pair? _%method-spec120509%_)
                          (let _%loop-inner120513%_ ((_%methods-rest120516%_
                                                      _%method-spec120509%_))
                            (let* ((_%methods-rest120518120526%_
                                    _%methods-rest120516%_)
                                   (_%else120520120538%_
                                    (lambda ()
                                      (let ((_%tab120534%_
                                             (class-type-interface-table
                                              _%obj-klass120427%_)))
                                        (____prototype-table-set!
                                         _%tab120534%_
                                         _%descriptor120425%_
                                         '#!void)
                                        ((lambda (_%method120536%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor120425%_
                                            'class:
                                            _%obj-klass120427%_
                                            'method:
                                            _%method120536%_)
                                           '#!void)
                                         _%method-spec120509%_))))
                                   (_%K120522120551%_
                                    (lambda (_%methods-rest120541%_
                                             _%method-name120542%_)
                                      (let ((_%$e120545%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table120429%_
                                                _%method-name120542%_
                                                '#f))))
                                        (if _%$e120545%_
                                            ((lambda (_%method120548%_)
                                               (_%loop120432%_
                                                _%rest120508%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count120437%_ '1))
                                                (cons _%method120548%_
                                                      _%methods120439%_)))
                                             _%$e120545%_)
                                            (_%loop-inner120513%_
                                             _%methods-rest120541%_))))))
                              (if (pair? _%methods-rest120518120526%_)
                                  (let ((_%hd120523120554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest120518120526%_)))
                                        (_%tl120524120556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest120518120526%_))))
                                    (let* ((_%method-name120559%_
                                            _%hd120523120554%_)
                                           (_%methods-rest120561%_
                                            _%tl120524120556%_))
                                      (_%K120522120551%_
                                       _%methods-rest120561%_
                                       _%method-name120559%_)))
                                  (_%else120520120538%_))))
                          (let ((_%$e120563%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table120429%_
                                    _%method-spec120509%_
                                    '#f))))
                            (if _%$e120563%_
                                ((lambda (_%method120566%_)
                                   (_%loop120432%_
                                    _%rest120508%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count120437%_ '1))
                                    (cons _%method120566%_ _%methods120439%_)))
                                 _%$e120563%_)
                                (let ((_%tab120569%_
                                       (class-type-interface-table
                                        _%obj-klass120427%_)))
                                  (____prototype-table-set!
                                   _%tab120569%_
                                   _%descriptor120425%_
                                   '#!void)
                                  ((lambda (_%method120571%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor120425%_
                                      'class:
                                      _%obj-klass120427%_
                                      'method:
                                      _%method120571%_)
                                     '#!void)
                                   _%method-spec120509%_))))))))
              (if (pair? _%rest120441120449%_)
                  (let ((_%hd120446120576%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest120441120449%_)))
                        (_%tl120447120578%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest120441120449%_))))
                    (let* ((_%method-spec120581%_ _%hd120446120576%_)
                           (_%rest120583%_ _%tl120447120578%_))
                      (_%K120445120573%_
                       _%rest120583%_
                       _%method-spec120581%_)))
                  (_%else120443120505%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor120265%_ _%klass120266%_ _%obj-klass120267%_)
        (let ((_%method-table120269%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass120267%_))))
          (let _%loop120272%_ ((_%rest120275%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor120265%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count120277%_ '0)
                               (_%methods120279%_ '()))
            (let* ((_%rest120281120289%_ _%rest120275%_)
                   (_%else120283120345%_
                    (lambda ()
                      (let ((_%prototype120297%_
                             (let ((__obj121184
                                    (let ((__tmp121199
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count120277%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass120266%_
                                       __tmp121199))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj121184 '#f))
                               __obj121184)))
                        (let _%loop120300%_ ((_%rest120302%_ _%methods120279%_)
                                             (_%off120303%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count120277%_ '1))))
                          (let* ((_%rest120305120313%_ _%rest120302%_)
                                 (_%else120307120326%_
                                  (lambda ()
                                    (let ((_%tab120321%_
                                           (class-type-interface-table
                                            _%obj-klass120267%_)))
                                      (____prototype-table-set!
                                       _%tab120321%_
                                       _%descriptor120265%_
                                       _%prototype120297%_)
                                      ((lambda (_%prototype120324%_)
                                         _%prototype120324%_)
                                       _%prototype120297%_))))
                                 (_%K120309120333%_
                                  (lambda (_%rest120329%_ _%method120330%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype120297%_
                                       _%method120330%_
                                       _%off120303%_
                                       _%klass120266%_
                                       '#f))
                                    (_%loop120300%_
                                     _%rest120329%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off120303%_ '1))))))
                            (if (pair? _%rest120305120313%_)
                                (let ((_%hd120310120336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest120305120313%_)))
                                      (_%tl120311120338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest120305120313%_))))
                                  (let* ((_%method120341%_ _%hd120310120336%_)
                                         (_%rest120343%_ _%tl120311120338%_))
                                    (_%K120309120333%_
                                     _%rest120343%_
                                     _%method120341%_)))
                                (_%else120307120326%_)))))))
                   (_%K120285120413%_
                    (lambda (_%rest120348%_ _%method-spec120349%_)
                      (if (pair? _%method-spec120349%_)
                          (let _%loop-inner120353%_ ((_%methods-rest120356%_
                                                      _%method-spec120349%_))
                            (let* ((_%methods-rest120358120366%_
                                    _%methods-rest120356%_)
                                   (_%else120360120378%_
                                    (lambda ()
                                      (let ((_%tab120374%_
                                             (class-type-interface-table
                                              _%obj-klass120267%_)))
                                        (____prototype-table-set!
                                         _%tab120374%_
                                         _%descriptor120265%_
                                         '#!void)
                                        ((lambda (_%method120376%_) '#f)
                                         _%method-spec120349%_))))
                                   (_%K120362120391%_
                                    (lambda (_%methods-rest120381%_
                                             _%method-name120382%_)
                                      (let ((_%$e120385%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table120269%_
                                                _%method-name120382%_
                                                '#f))))
                                        (if _%$e120385%_
                                            ((lambda (_%method120388%_)
                                               (_%loop120272%_
                                                _%rest120348%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count120277%_ '1))
                                                (cons _%method120388%_
                                                      _%methods120279%_)))
                                             _%$e120385%_)
                                            (_%loop-inner120353%_
                                             _%methods-rest120381%_))))))
                              (if (pair? _%methods-rest120358120366%_)
                                  (let ((_%hd120363120394%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest120358120366%_)))
                                        (_%tl120364120396%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest120358120366%_))))
                                    (let* ((_%method-name120399%_
                                            _%hd120363120394%_)
                                           (_%methods-rest120401%_
                                            _%tl120364120396%_))
                                      (_%K120362120391%_
                                       _%methods-rest120401%_
                                       _%method-name120399%_)))
                                  (_%else120360120378%_))))
                          (let ((_%$e120403%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table120269%_
                                    _%method-spec120349%_
                                    '#f))))
                            (if _%$e120403%_
                                ((lambda (_%method120406%_)
                                   (_%loop120272%_
                                    _%rest120348%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count120277%_ '1))
                                    (cons _%method120406%_ _%methods120279%_)))
                                 _%$e120403%_)
                                (let ((_%tab120409%_
                                       (class-type-interface-table
                                        _%obj-klass120267%_)))
                                  (____prototype-table-set!
                                   _%tab120409%_
                                   _%descriptor120265%_
                                   '#!void)
                                  ((lambda (_%method120411%_) '#f)
                                   _%method-spec120349%_))))))))
              (if (pair? _%rest120281120289%_)
                  (let ((_%hd120286120416%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest120281120289%_)))
                        (_%tl120287120418%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest120281120289%_))))
                    (let* ((_%method-spec120421%_ _%hd120286120416%_)
                           (_%rest120423%_ _%tl120287120418%_))
                      (_%K120285120413%_
                       _%rest120423%_
                       _%method-spec120421%_)))
                  (_%else120283120345%_)))))))
    (define cast
      (lambda (_%descriptor120171%_ _%obj120173%_)
        (let* ((_%klass120176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor120171%_ '1 '#f '#f)))
               (_%klass-id120179%_
                (let () (declare (not safe)) (##type-id _%klass120176%_))))
          (let _%loop120183%_ ((_%obj120186%_ _%obj120173%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass120189%_
                    (let () (declare (not safe)) (class-of _%obj120186%_)))
                   (_%obj-klass-id120192%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass120189%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id120179%_ _%obj-klass-id120192%_))
                  ((lambda (_%obj120197%_) _%obj120197%_) _%obj120186%_)
                  (if (interface-subclass? _%obj-klass120189%_)
                      (let* ((_%tab120200%_
                              (class-type-interface-table _%obj-klass120189%_))
                             (_%$e120203%_
                              (____prototype-table-get
                               _%tab120200%_
                               _%descriptor120171%_)))
                        (if _%$e120203%_
                            ((lambda (_%prototype120206%_)
                               (if (eq? _%prototype120206%_ '#!void)
                                   (_%loop120183%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj120186%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor120209%_
                                             _%prototype120210%_
                                             _%obj120211%_)
                                      (if _%prototype120210%_
                                          (let ((_%instance120213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120210%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120213%_
                                               _%obj120211%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120213%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor120209%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj120211%_)))
                                            '#!void)))
                                    _%descriptor120171%_
                                    _%prototype120206%_
                                    _%obj120186%_)))
                             _%$e120203%_)
                            (let ((_%$e120215%_
                                   (try-create-prototype
                                    _%descriptor120171%_
                                    _%klass120176%_
                                    _%obj-klass120189%_)))
                              (if _%$e120215%_
                                  ((lambda (_%prototype120218%_)
                                     ((lambda (_%descriptor120220%_
                                               _%prototype120221%_
                                               _%obj120222%_)
                                        (if _%prototype120221%_
                                            (let ((_%instance120224%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype120221%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance120224%_
                                                 _%obj120222%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance120224%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor120220%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj120222%_)))
                                              '#!void)))
                                      _%descriptor120171%_
                                      _%prototype120218%_
                                      _%obj120186%_))
                                   _%$e120215%_)
                                  (_%loop120183%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj120186%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab120228%_
                              (class-type-interface-table _%obj-klass120189%_))
                             (_%$e120230%_
                              (____prototype-table-get
                               _%tab120228%_
                               _%descriptor120171%_)))
                        (if _%$e120230%_
                            ((lambda (_%prototype120233%_)
                               (if (eq? _%prototype120233%_ '#!void)
                                   ((lambda (_%descriptor120235%_
                                             _%prototype120236%_
                                             _%obj120237%_)
                                      (if _%prototype120236%_
                                          (let ((_%instance120239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120236%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120239%_
                                               _%obj120237%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120239%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor120235%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj120237%_)))
                                            '#!void)))
                                    _%descriptor120171%_
                                    '#f
                                    _%obj120186%_)
                                   ((lambda (_%descriptor120241%_
                                             _%prototype120242%_
                                             _%obj120243%_)
                                      (if _%prototype120242%_
                                          (let ((_%instance120245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120242%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120245%_
                                               _%obj120243%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120245%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor120241%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj120243%_)))
                                            '#!void)))
                                    _%descriptor120171%_
                                    _%prototype120233%_
                                    _%obj120186%_)))
                             _%$e120230%_)
                            (let ((_%$e120247%_
                                   (create-prototype
                                    _%descriptor120171%_
                                    _%klass120176%_
                                    _%obj-klass120189%_)))
                              (if _%$e120247%_
                                  ((lambda (_%prototype120250%_)
                                     ((lambda (_%descriptor120252%_
                                               _%prototype120253%_
                                               _%obj120254%_)
                                        (if _%prototype120253%_
                                            (let ((_%instance120256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype120253%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance120256%_
                                                 _%obj120254%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance120256%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor120252%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj120254%_)))
                                              '#!void)))
                                      _%descriptor120171%_
                                      _%prototype120250%_
                                      _%obj120186%_))
                                   _%$e120247%_)
                                  ((lambda (_%descriptor120259%_
                                            _%prototype120260%_
                                            _%obj120261%_)
                                     (if _%prototype120260%_
                                         (let ((_%instance120263%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype120260%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance120263%_
                                              _%obj120261%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance120263%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor120259%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj120261%_)))
                                           '#!void)))
                                   _%descriptor120171%_
                                   '#f
                                   _%obj120186%_))))))))))))
    (define try-cast
      (lambda (_%descriptor120077%_ _%obj120079%_)
        (let* ((_%klass120082%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor120077%_ '1 '#f '#f)))
               (_%klass-id120085%_
                (let () (declare (not safe)) (##type-id _%klass120082%_))))
          (let _%loop120089%_ ((_%obj120092%_ _%obj120079%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass120095%_
                    (let () (declare (not safe)) (class-of _%obj120092%_)))
                   (_%obj-klass-id120098%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass120095%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id120085%_ _%obj-klass-id120098%_))
                  ((lambda (_%obj120103%_) _%obj120103%_) _%obj120092%_)
                  (if (interface-subclass? _%obj-klass120095%_)
                      (let* ((_%tab120106%_
                              (class-type-interface-table _%obj-klass120095%_))
                             (_%$e120109%_
                              (____prototype-table-get
                               _%tab120106%_
                               _%descriptor120077%_)))
                        (if _%$e120109%_
                            ((lambda (_%prototype120112%_)
                               (if (eq? _%prototype120112%_ '#!void)
                                   (_%loop120089%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj120092%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor120115%_
                                             _%prototype120116%_
                                             _%obj120117%_)
                                      (if _%prototype120116%_
                                          (let ((_%instance120119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120116%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120119%_
                                               _%obj120117%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120119%_)
                                          '#f))
                                    _%descriptor120077%_
                                    _%prototype120112%_
                                    _%obj120092%_)))
                             _%$e120109%_)
                            (let ((_%$e120121%_
                                   (try-create-prototype
                                    _%descriptor120077%_
                                    _%klass120082%_
                                    _%obj-klass120095%_)))
                              (if _%$e120121%_
                                  ((lambda (_%prototype120124%_)
                                     ((lambda (_%descriptor120126%_
                                               _%prototype120127%_
                                               _%obj120128%_)
                                        (if _%prototype120127%_
                                            (let ((_%instance120130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype120127%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance120130%_
                                                 _%obj120128%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance120130%_)
                                            '#f))
                                      _%descriptor120077%_
                                      _%prototype120124%_
                                      _%obj120092%_))
                                   _%$e120121%_)
                                  (_%loop120089%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj120092%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab120134%_
                              (class-type-interface-table _%obj-klass120095%_))
                             (_%$e120136%_
                              (____prototype-table-get
                               _%tab120134%_
                               _%descriptor120077%_)))
                        (if _%$e120136%_
                            ((lambda (_%prototype120139%_)
                               (if (eq? _%prototype120139%_ '#!void)
                                   ((lambda (_%descriptor120141%_
                                             _%prototype120142%_
                                             _%obj120143%_)
                                      (if _%prototype120142%_
                                          (let ((_%instance120145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120142%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120145%_
                                               _%obj120143%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120145%_)
                                          '#f))
                                    _%descriptor120077%_
                                    '#f
                                    _%obj120092%_)
                                   ((lambda (_%descriptor120147%_
                                             _%prototype120148%_
                                             _%obj120149%_)
                                      (if _%prototype120148%_
                                          (let ((_%instance120151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype120148%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance120151%_
                                               _%obj120149%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance120151%_)
                                          '#f))
                                    _%descriptor120077%_
                                    _%prototype120139%_
                                    _%obj120092%_)))
                             _%$e120136%_)
                            (let ((_%$e120153%_
                                   (try-create-prototype
                                    _%descriptor120077%_
                                    _%klass120082%_
                                    _%obj-klass120095%_)))
                              (if _%$e120153%_
                                  ((lambda (_%prototype120156%_)
                                     ((lambda (_%descriptor120158%_
                                               _%prototype120159%_
                                               _%obj120160%_)
                                        (if _%prototype120159%_
                                            (let ((_%instance120162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype120159%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance120162%_
                                                 _%obj120160%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance120162%_)
                                            '#f))
                                      _%descriptor120077%_
                                      _%prototype120156%_
                                      _%obj120092%_))
                                   _%$e120153%_)
                                  ((lambda (_%descriptor120165%_
                                            _%prototype120166%_
                                            _%obj120167%_)
                                     (if _%prototype120166%_
                                         (let ((_%instance120169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype120166%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance120169%_
                                              _%obj120167%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance120169%_)
                                         '#f))
                                   _%descriptor120077%_
                                   '#f
                                   _%obj120092%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor119995%_ _%obj119997%_)
        (let* ((_%klass120000%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor119995%_ '1 '#f '#f)))
               (_%klass-id120003%_
                (let () (declare (not safe)) (##type-id _%klass120000%_))))
          (let _%loop120007%_ ((_%obj120010%_ _%obj119997%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass120013%_
                    (let () (declare (not safe)) (class-of _%obj120010%_)))
                   (_%obj-klass-id120016%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass120013%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id120003%_ _%obj-klass-id120016%_))
                  ((lambda (_%obj120021%_) '#t) _%obj120010%_)
                  (if (interface-subclass? _%obj-klass120013%_)
                      (let* ((_%tab120024%_
                              (class-type-interface-table _%obj-klass120013%_))
                             (_%$e120027%_
                              (____prototype-table-get
                               _%tab120024%_
                               _%descriptor119995%_)))
                        (if _%$e120027%_
                            ((lambda (_%prototype120030%_)
                               (if (eq? _%prototype120030%_ '#!void)
                                   (_%loop120007%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj120010%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor120033%_
                                             _%prototype120034%_
                                             _%obj120035%_)
                                      (if _%prototype120034%_ '#t '#f))
                                    _%descriptor119995%_
                                    _%prototype120030%_
                                    _%obj120010%_)))
                             _%$e120027%_)
                            (let ((_%$e120037%_
                                   (try-create-prototype
                                    _%descriptor119995%_
                                    _%klass120000%_
                                    _%obj-klass120013%_)))
                              (if _%$e120037%_
                                  ((lambda (_%prototype120040%_)
                                     ((lambda (_%descriptor120042%_
                                               _%prototype120043%_
                                               _%obj120044%_)
                                        (if _%prototype120043%_ '#t '#f))
                                      _%descriptor119995%_
                                      _%prototype120040%_
                                      _%obj120010%_))
                                   _%$e120037%_)
                                  (_%loop120007%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj120010%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab120048%_
                              (class-type-interface-table _%obj-klass120013%_))
                             (_%$e120050%_
                              (____prototype-table-get
                               _%tab120048%_
                               _%descriptor119995%_)))
                        (if _%$e120050%_
                            ((lambda (_%prototype120053%_)
                               (if (eq? _%prototype120053%_ '#!void)
                                   ((lambda (_%descriptor120055%_
                                             _%prototype120056%_
                                             _%obj120057%_)
                                      (if _%prototype120056%_ '#t '#f))
                                    _%descriptor119995%_
                                    '#f
                                    _%obj120010%_)
                                   ((lambda (_%descriptor120059%_
                                             _%prototype120060%_
                                             _%obj120061%_)
                                      (if _%prototype120060%_ '#t '#f))
                                    _%descriptor119995%_
                                    _%prototype120053%_
                                    _%obj120010%_)))
                             _%$e120050%_)
                            (let ((_%$e120063%_
                                   (try-create-prototype
                                    _%descriptor119995%_
                                    _%klass120000%_
                                    _%obj-klass120013%_)))
                              (if _%$e120063%_
                                  ((lambda (_%prototype120066%_)
                                     ((lambda (_%descriptor120068%_
                                               _%prototype120069%_
                                               _%obj120070%_)
                                        (if _%prototype120069%_ '#t '#f))
                                      _%descriptor119995%_
                                      _%prototype120066%_
                                      _%obj120010%_))
                                   _%$e120063%_)
                                  ((lambda (_%descriptor120073%_
                                            _%prototype120074%_
                                            _%obj120075%_)
                                     (if _%prototype120074%_ '#t '#f))
                                   _%descriptor119995%_
                                   '#f
                                   _%obj120010%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor119958%_
               _%obj119959%_
               _%with-prototype+receiver119960%_
               _%with-receiver119961%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor119958%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor119965%_ _%descriptor119958%_))
              (if (procedure? _%with-prototype+receiver119960%_)
                  (let ((_%with-prototype+receiver119975%_
                         _%with-prototype+receiver119960%_))
                    (if (procedure? _%with-receiver119961%_)
                        (let ((_%with-receiver119985%_
                               _%with-receiver119961%_))
                          (__with-prototype
                           _%descriptor119965%_
                           _%obj119959%_
                           _%with-prototype+receiver119975%_
                           _%with-receiver119985%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver119961%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver119960%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor119958%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor119876%_
               _%obj119877%_
               _%with-prototype+receiver119878%_
               _%with-receiver119879%_)
        (let* ((_%descriptor119882%_ _%descriptor119876%_)
               (_%with-prototype+receiver119890%_
                _%with-prototype+receiver119878%_)
               (_%with-receiver119898%_ _%with-receiver119879%_)
               (_%klass119907%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor119882%_ '1 '#f '#f)))
               (_%klass-id119910%_
                (let () (declare (not safe)) (##type-id _%klass119907%_))))
          (let _%loop119914%_ ((_%obj119917%_ _%obj119877%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass119920%_
                    (let () (declare (not safe)) (class-of _%obj119917%_)))
                   (_%obj-klass-id119923%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass119920%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id119910%_ _%obj-klass-id119923%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver119898%_ _%obj119917%_))
                  (if (interface-subclass? _%obj-klass119920%_)
                      (let* ((_%tab119929%_
                              (class-type-interface-table _%obj-klass119920%_))
                             (_%$e119932%_
                              (____prototype-table-get
                               _%tab119929%_
                               _%descriptor119882%_)))
                        (if _%$e119932%_
                            ((lambda (_%prototype119935%_)
                               (if (eq? _%prototype119935%_ '#!void)
                                   (_%loop119914%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj119917%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver119890%_
                                      _%descriptor119882%_
                                      _%prototype119935%_
                                      _%obj119917%_))))
                             _%$e119932%_)
                            (let ((_%$e119938%_
                                   (try-create-prototype
                                    _%descriptor119882%_
                                    _%klass119907%_
                                    _%obj-klass119920%_)))
                              (if _%$e119938%_
                                  ((lambda (_%prototype119941%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver119890%_
                                        _%descriptor119882%_
                                        _%prototype119941%_
                                        _%obj119917%_)))
                                   _%$e119938%_)
                                  (_%loop119914%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj119917%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab119945%_
                              (class-type-interface-table _%obj-klass119920%_))
                             (_%$e119947%_
                              (____prototype-table-get
                               _%tab119945%_
                               _%descriptor119882%_)))
                        (if _%$e119947%_
                            ((lambda (_%prototype119950%_)
                               (if (eq? _%prototype119950%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver119890%_
                                      _%descriptor119882%_
                                      '#f
                                      _%obj119917%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver119890%_
                                      _%descriptor119882%_
                                      _%prototype119950%_
                                      _%obj119917%_))))
                             _%$e119947%_)
                            (let ((_%$e119952%_
                                   (create-prototype
                                    _%descriptor119882%_
                                    _%klass119907%_
                                    _%obj-klass119920%_)))
                              (if _%$e119952%_
                                  ((lambda (_%prototype119955%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver119890%_
                                        _%descriptor119882%_
                                        _%prototype119955%_
                                        _%obj119917%_)))
                                   _%$e119952%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver119890%_
                                     _%descriptor119882%_
                                     '#f
                                     _%obj119917%_)))))))))))))))
