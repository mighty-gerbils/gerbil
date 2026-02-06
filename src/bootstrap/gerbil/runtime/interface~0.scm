(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770405372)
  (begin
    (define CastError::t
      (let ((__tmp141667 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp141667
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args141581%_
        (apply make-instance CastError::t _%$args141581%_)))
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
      (lambda (_%where141455%_ _%message141456%_ . _%irritants141457%_)
        (let ((__tmp141668
               (let ((__obj141662
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj141662
                    _%message141456%_
                    'where:
                    _%where141455%_
                    'irritants:
                    _%irritants141457%_))
                 __obj141662)))
          (declare (not safe))
          (raise __tmp141668))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp141670 (list)) (__tmp141669 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp141670
         '(object)
         __tmp141669
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args141452%_
        (apply make-instance interface-instance::t _%$args141452%_)))
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
      (let ((__tmp141672 (list))
            (__tmp141671
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp141672
         '(type methods index)
         __tmp141671
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args141449%_
        (apply make-instance interface-descriptor::t _%$args141449%_)))
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
          (let _%again141429%_ ((_%spin141432%_ '0))
            (if (let ((__tmp141673
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp141673 '0))
                (let ((__tmp141674 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp141674))
                (if (let () (declare (not safe)) (##fx< _%spin141432%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again141429%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin141432%_ '1))))
                    (let ((_%owner141438%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner141438%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner141438%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again141429%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r141446%_
               (let ((_%index141444%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index141444%_ '1)))
                 _%index141444%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r141446%_)))
    (define interface-descriptor:::init!
      (lambda (_%self141410%_ _%type141411%_ _%methods141412%_)
        (let ((_%self141415%_ _%self141410%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141415%_
             _%type141411%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141415%_
             _%methods141412%_
             '2
             '#f
             '#f))
          (let ((__tmp141675 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141415%_
             __tmp141675
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
      (let ((__tmp141677 (list))
            (__tmp141676
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp141677
         '(lock table)
         __tmp141676
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args141285%_
        (apply make-instance prototype-table::t _%$args141285%_)))
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
      (lambda (_%self141271%_)
        (let ((_%self141274%_ _%self141271%_))
          (let ((__tmp141678 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self141274%_ __tmp141678 '1 '#f '#f))
          (let ((__tmp141679
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141274%_
             __tmp141679
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
      (lambda (_%prototable141102%_ _%descriptor141103%_)
        (let* ((_%prototable141106%_ _%prototable141102%_)
               (_%descriptor141114%_ _%descriptor141103%_))
          (declare (not safe))
          (let ((_%lock141124%_
                 (##unchecked-structure-ref _%prototable141106%_ '1 '#f '#f))
                (_%index141125%_
                 (##unchecked-structure-ref _%descriptor141114%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141129%_ ((_%spin141132%_ '0))
                (if (##fx= (##vector-cas! _%lock141124%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141124%_ '1 (current-thread))
                    (if (##fx< _%spin141132%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141129%_ (##fx+ _%spin141132%_ '1)))
                        (let ((_%owner141138%_
                               (##vector-ref _%lock141124%_ '1)))
                          (if (eq? _%owner141138%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141138%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141129%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141146%_
                   (let ((_%tab141144%_
                          (##unchecked-structure-ref
                           _%prototable141106%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141125%_ (vector-length _%tab141144%_))
                         (vector-ref _%tab141144%_ _%index141125%_)
                         '#f))))
              (##vector-set! _%lock141124%_ '1 '#f)
              (##vector-cas! _%lock141124%_ '0 '0 '1)
              _%$r141146%_)))))
    (define __prototype-table-get
      (lambda (_%prototable139083%_ _%descriptor139084%_)
        (let* ((_%prototable139087%_ _%prototable139083%_)
               (_%descriptor139095%_ _%descriptor139084%_))
          (____prototype-table-get
           _%prototable139087%_
           _%descriptor139095%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable141049%_ _%descriptor141050%_ _%prototype141051%_)
        (let* ((_%prototable141054%_ _%prototable141049%_)
               (_%descriptor141062%_ _%descriptor141050%_))
          (declare (not safe))
          (let ((_%lock141072%_
                 (##unchecked-structure-ref _%prototable141054%_ '1 '#f '#f))
                (_%index141073%_
                 (##unchecked-structure-ref _%descriptor141062%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141077%_ ((_%spin141080%_ '0))
                (if (##fx= (##vector-cas! _%lock141072%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141072%_ '1 (current-thread))
                    (if (##fx< _%spin141080%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141077%_ (##fx+ _%spin141080%_ '1)))
                        (let ((_%owner141086%_
                               (##vector-ref _%lock141072%_ '1)))
                          (if (eq? _%owner141086%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141086%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141077%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141099%_
                   (let ((_%tab141092%_
                          (##unchecked-structure-ref
                           _%prototable141054%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141073%_ (vector-length _%tab141092%_))
                         (vector-set!
                          _%tab141092%_
                          _%index141073%_
                          _%prototype141051%_)
                         (let* ((_%new-size141094%_ __next-interface-index)
                                (_%new-tab141096%_
                                 (##make-vector _%new-size141094%_ '#f)))
                           (subvector-move!
                            _%tab141092%_
                            '0
                            (vector-length _%tab141092%_)
                            _%new-tab141096%_
                            '0)
                           (vector-set!
                            _%new-tab141096%_
                            _%index141073%_
                            _%prototype141051%_)
                           (##unchecked-structure-set!
                            _%prototable141054%_
                            _%new-tab141096%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock141072%_ '1 '#f)
              (##vector-cas! _%lock141072%_ '0 '0 '1)
              _%$r141099%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable139224%_ _%descriptor139225%_ _%prototype139226%_)
        (let* ((_%prototable139229%_ _%prototable139224%_)
               (_%descriptor139237%_ _%descriptor139225%_))
          (____prototype-table-set!
           _%prototable139229%_
           _%descriptor139237%_
           _%prototype139226%_))))
    (define interface-subclass?
      (lambda (_%klass141042%_)
        (let ((_%super141043141045%_
               (let () (declare (not safe)) (##type-super _%klass141042%_))))
          (if _%super141043141045%_
              (let ((_%super141047%_ _%super141043141045%_))
                (eq? (let () (declare (not safe)) (##type-id _%super141047%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass141034%_)
        (let ((_%$e141036%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass141034%_ '13 '#f '#f))))
          (if _%$e141036%_
              _%$e141036%_
              (let ((_%tab141040%_
                     (let ((__obj141666
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj141666)
                       __obj141666)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass141034%_
                   _%tab141040%_
                   '13
                   '#f
                   '#f))
                _%tab141040%_)))))
    (define create-prototype
      (lambda (_%descriptor140717%_ _%klass140718%_ _%obj-klass140719%_)
        (let ((_%method-table140737%_
               (let ((_%klass140721%_ _%obj-klass140719%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140721%_ 'class))
                     (let ((_%klass140726%_ _%klass140721%_))
                       (declare (not safe))
                       (__specialize-class _%klass140726%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140721%_)
                       '#!void)))))
          (let _%loop140740%_ ((_%rest140743%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140717%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140745%_ '0)
                               (_%methods140747%_ '()))
            (let* ((_%rest140749140757%_ _%rest140743%_)
                   (_%else140751140884%_
                    (lambda ()
                      (let ((_%prototype140800%_
                             (let* ((_%klass140765%_ _%klass140718%_)
                                    (_%k140768%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140745%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140765%_
                                      'class))
                                   (let* ((_%klass140773%_ _%klass140765%_)
                                          (_%k140790%_ _%k140768%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140773%_
                                      _%k140790%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140765%_)
                                     '#!void)))))
                        (let _%loop140803%_ ((_%rest140805%_ _%methods140747%_)
                                             (_%off140806%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140745%_ '1))))
                          (let* ((_%rest140808140816%_ _%rest140805%_)
                                 (_%else140810140865%_
                                  (lambda ()
                                    (let ((_%tab140824%_
                                           (class-type-interface-table
                                            _%obj-klass140719%_)))
                                      (let* ((_%prototable140827%_
                                              _%tab140824%_)
                                             (_%descriptor140830%_
                                              _%descriptor140717%_)
                                             (_%prototype140833%_
                                              _%prototype140800%_)
                                             (_%prototable140837%_
                                              _%prototable140827%_)
                                             (_%descriptor140854%_
                                              _%descriptor140830%_))
                                        (____prototype-table-set!
                                         _%prototable140837%_
                                         _%descriptor140854%_
                                         _%prototype140833%_))
                                      ((lambda (_%prototype140863%_)
                                         _%prototype140863%_)
                                       _%prototype140800%_))))
                                 (_%K140812140872%_
                                  (lambda (_%rest140868%_ _%method140869%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140800%_
                                       _%method140869%_
                                       _%off140806%_
                                       _%klass140718%_
                                       '#f))
                                    (_%loop140803%_
                                     _%rest140868%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140806%_ '1))))))
                            (if (pair? _%rest140808140816%_)
                                (let ((_%hd140813140875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140808140816%_)))
                                      (_%tl140814140877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140808140816%_))))
                                  (let* ((_%method140880%_ _%hd140813140875%_)
                                         (_%rest140882%_ _%tl140814140877%_))
                                    (_%K140812140872%_
                                     _%rest140882%_
                                     _%method140880%_)))
                                (_%else140810140865%_)))))))
                   (_%K140753141022%_
                    (lambda (_%rest140887%_ _%method-spec140888%_)
                      (if (pair? _%method-spec140888%_)
                          (let _%loop-inner140892%_ ((_%methods-rest140895%_
                                                      _%method-spec140888%_))
                            (let* ((_%methods-rest140897140905%_
                                    _%methods-rest140895%_)
                                   (_%else140899140955%_
                                    (lambda ()
                                      (let ((_%tab140913%_
                                             (class-type-interface-table
                                              _%obj-klass140719%_)))
                                        (let* ((_%prototable140915%_
                                                _%tab140913%_)
                                               (_%descriptor140918%_
                                                _%descriptor140717%_)
                                               (_%prototype140921%_ '#!void)
                                               (_%prototable140925%_
                                                _%prototable140915%_)
                                               (_%descriptor140944%_
                                                _%descriptor140918%_))
                                          (____prototype-table-set!
                                           _%prototable140925%_
                                           _%descriptor140944%_
                                           _%prototype140921%_))
                                        ((lambda (_%method140953%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor140717%_
                                            'class:
                                            _%obj-klass140719%_
                                            'method:
                                            _%method140953%_)
                                           '#!void)
                                         _%method-spec140888%_))))
                                   (_%K140901140968%_
                                    (lambda (_%methods-rest140958%_
                                             _%method-name140959%_)
                                      (let ((_%$e140962%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140737%_
                                                _%method-name140959%_
                                                '#f))))
                                        (if _%$e140962%_
                                            ((lambda (_%method140965%_)
                                               (_%loop140740%_
                                                _%rest140887%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140745%_ '1))
                                                (cons _%method140965%_
                                                      _%methods140747%_)))
                                             _%$e140962%_)
                                            (_%loop-inner140892%_
                                             _%methods-rest140958%_))))))
                              (if (pair? _%methods-rest140897140905%_)
                                  (let ((_%hd140902140971%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140897140905%_)))
                                        (_%tl140903140973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140897140905%_))))
                                    (let* ((_%method-name140976%_
                                            _%hd140902140971%_)
                                           (_%methods-rest140978%_
                                            _%tl140903140973%_))
                                      (_%K140901140968%_
                                       _%methods-rest140978%_
                                       _%method-name140976%_)))
                                  (_%else140899140955%_))))
                          (let ((_%$e140980%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140737%_
                                    _%method-spec140888%_
                                    '#f))))
                            (if _%$e140980%_
                                ((lambda (_%method140983%_)
                                   (_%loop140740%_
                                    _%rest140887%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140745%_ '1))
                                    (cons _%method140983%_ _%methods140747%_)))
                                 _%$e140980%_)
                                (let ((_%tab140986%_
                                       (class-type-interface-table
                                        _%obj-klass140719%_)))
                                  (let* ((_%prototable140988%_ _%tab140986%_)
                                         (_%descriptor140991%_
                                          _%descriptor140717%_)
                                         (_%prototype140994%_ '#!void)
                                         (_%prototable140998%_
                                          _%prototable140988%_)
                                         (_%descriptor141011%_
                                          _%descriptor140991%_))
                                    (____prototype-table-set!
                                     _%prototable140998%_
                                     _%descriptor141011%_
                                     _%prototype140994%_))
                                  ((lambda (_%method141020%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor140717%_
                                      'class:
                                      _%obj-klass140719%_
                                      'method:
                                      _%method141020%_)
                                     '#!void)
                                   _%method-spec140888%_))))))))
              (if (pair? _%rest140749140757%_)
                  (let ((_%hd140754141025%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140749140757%_)))
                        (_%tl140755141027%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140749140757%_))))
                    (let* ((_%method-spec141030%_ _%hd140754141025%_)
                           (_%rest141032%_ _%tl140755141027%_))
                      (_%K140753141022%_
                       _%rest141032%_
                       _%method-spec141030%_)))
                  (_%else140751140884%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor140400%_ _%klass140401%_ _%obj-klass140402%_)
        (let ((_%method-table140420%_
               (let ((_%klass140404%_ _%obj-klass140402%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140404%_ 'class))
                     (let ((_%klass140409%_ _%klass140404%_))
                       (declare (not safe))
                       (__specialize-class _%klass140409%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140404%_)
                       '#!void)))))
          (let _%loop140423%_ ((_%rest140426%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140400%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140428%_ '0)
                               (_%methods140430%_ '()))
            (let* ((_%rest140432140440%_ _%rest140426%_)
                   (_%else140434140567%_
                    (lambda ()
                      (let ((_%prototype140483%_
                             (let* ((_%klass140448%_ _%klass140401%_)
                                    (_%k140451%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140428%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140448%_
                                      'class))
                                   (let* ((_%klass140456%_ _%klass140448%_)
                                          (_%k140473%_ _%k140451%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140456%_
                                      _%k140473%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140448%_)
                                     '#!void)))))
                        (let _%loop140486%_ ((_%rest140488%_ _%methods140430%_)
                                             (_%off140489%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140428%_ '1))))
                          (let* ((_%rest140491140499%_ _%rest140488%_)
                                 (_%else140493140548%_
                                  (lambda ()
                                    (let ((_%tab140507%_
                                           (class-type-interface-table
                                            _%obj-klass140402%_)))
                                      (let* ((_%prototable140510%_
                                              _%tab140507%_)
                                             (_%descriptor140513%_
                                              _%descriptor140400%_)
                                             (_%prototype140516%_
                                              _%prototype140483%_)
                                             (_%prototable140520%_
                                              _%prototable140510%_)
                                             (_%descriptor140537%_
                                              _%descriptor140513%_))
                                        (____prototype-table-set!
                                         _%prototable140520%_
                                         _%descriptor140537%_
                                         _%prototype140516%_))
                                      ((lambda (_%prototype140546%_)
                                         _%prototype140546%_)
                                       _%prototype140483%_))))
                                 (_%K140495140555%_
                                  (lambda (_%rest140551%_ _%method140552%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140483%_
                                       _%method140552%_
                                       _%off140489%_
                                       _%klass140401%_
                                       '#f))
                                    (_%loop140486%_
                                     _%rest140551%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140489%_ '1))))))
                            (if (pair? _%rest140491140499%_)
                                (let ((_%hd140496140558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140491140499%_)))
                                      (_%tl140497140560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140491140499%_))))
                                  (let* ((_%method140563%_ _%hd140496140558%_)
                                         (_%rest140565%_ _%tl140497140560%_))
                                    (_%K140495140555%_
                                     _%rest140565%_
                                     _%method140563%_)))
                                (_%else140493140548%_)))))))
                   (_%K140436140705%_
                    (lambda (_%rest140570%_ _%method-spec140571%_)
                      (if (pair? _%method-spec140571%_)
                          (let _%loop-inner140575%_ ((_%methods-rest140578%_
                                                      _%method-spec140571%_))
                            (let* ((_%methods-rest140580140588%_
                                    _%methods-rest140578%_)
                                   (_%else140582140638%_
                                    (lambda ()
                                      (let ((_%tab140596%_
                                             (class-type-interface-table
                                              _%obj-klass140402%_)))
                                        (let* ((_%prototable140598%_
                                                _%tab140596%_)
                                               (_%descriptor140601%_
                                                _%descriptor140400%_)
                                               (_%prototype140604%_ '#!void)
                                               (_%prototable140608%_
                                                _%prototable140598%_)
                                               (_%descriptor140627%_
                                                _%descriptor140601%_))
                                          (____prototype-table-set!
                                           _%prototable140608%_
                                           _%descriptor140627%_
                                           _%prototype140604%_))
                                        ((lambda (_%method140636%_) '#f)
                                         _%method-spec140571%_))))
                                   (_%K140584140651%_
                                    (lambda (_%methods-rest140641%_
                                             _%method-name140642%_)
                                      (let ((_%$e140645%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140420%_
                                                _%method-name140642%_
                                                '#f))))
                                        (if _%$e140645%_
                                            ((lambda (_%method140648%_)
                                               (_%loop140423%_
                                                _%rest140570%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140428%_ '1))
                                                (cons _%method140648%_
                                                      _%methods140430%_)))
                                             _%$e140645%_)
                                            (_%loop-inner140575%_
                                             _%methods-rest140641%_))))))
                              (if (pair? _%methods-rest140580140588%_)
                                  (let ((_%hd140585140654%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140580140588%_)))
                                        (_%tl140586140656%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140580140588%_))))
                                    (let* ((_%method-name140659%_
                                            _%hd140585140654%_)
                                           (_%methods-rest140661%_
                                            _%tl140586140656%_))
                                      (_%K140584140651%_
                                       _%methods-rest140661%_
                                       _%method-name140659%_)))
                                  (_%else140582140638%_))))
                          (let ((_%$e140663%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140420%_
                                    _%method-spec140571%_
                                    '#f))))
                            (if _%$e140663%_
                                ((lambda (_%method140666%_)
                                   (_%loop140423%_
                                    _%rest140570%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140428%_ '1))
                                    (cons _%method140666%_ _%methods140430%_)))
                                 _%$e140663%_)
                                (let ((_%tab140669%_
                                       (class-type-interface-table
                                        _%obj-klass140402%_)))
                                  (let* ((_%prototable140671%_ _%tab140669%_)
                                         (_%descriptor140674%_
                                          _%descriptor140400%_)
                                         (_%prototype140677%_ '#!void)
                                         (_%prototable140681%_
                                          _%prototable140671%_)
                                         (_%descriptor140694%_
                                          _%descriptor140674%_))
                                    (____prototype-table-set!
                                     _%prototable140681%_
                                     _%descriptor140694%_
                                     _%prototype140677%_))
                                  ((lambda (_%method140703%_) '#f)
                                   _%method-spec140571%_))))))))
              (if (pair? _%rest140432140440%_)
                  (let ((_%hd140437140708%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140432140440%_)))
                        (_%tl140438140710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140432140440%_))))
                    (let* ((_%method-spec140713%_ _%hd140437140708%_)
                           (_%rest140715%_ _%tl140438140710%_))
                      (_%K140436140705%_
                       _%rest140715%_
                       _%method-spec140713%_)))
                  (_%else140434140567%_)))))))
    (define cast
      (lambda (_%descriptor140242%_ _%obj140244%_)
        (let* ((_%klass140247%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140242%_ '1 '#f '#f)))
               (_%klass-id140250%_
                (let () (declare (not safe)) (##type-id _%klass140247%_))))
          (let _%loop140254%_ ((_%obj140257%_ _%obj140244%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140260%_
                    (let () (declare (not safe)) (class-of _%obj140257%_)))
                   (_%obj-klass-id140263%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140260%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140250%_ _%obj-klass-id140263%_))
                  ((lambda (_%obj140268%_) _%obj140268%_) _%obj140257%_)
                  (if (interface-subclass? _%obj-klass140260%_)
                      (let* ((_%tab140271%_
                              (class-type-interface-table _%obj-klass140260%_))
                             (_%$e140311%_
                              (let* ((_%prototable140274%_ _%tab140271%_)
                                     (_%descriptor140277%_
                                      _%descriptor140242%_)
                                     (_%prototable140281%_
                                      _%prototable140274%_)
                                     (_%descriptor140302%_
                                      _%descriptor140277%_))
                                (____prototype-table-get
                                 _%prototable140281%_
                                 _%descriptor140302%_))))
                        (if _%$e140311%_
                            ((lambda (_%prototype140314%_)
                               (if (eq? _%prototype140314%_ '#!void)
                                   (_%loop140254%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140257%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140317%_
                                             _%prototype140318%_
                                             _%obj140319%_)
                                      (if _%prototype140318%_
                                          (let ((_%instance140321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140318%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140321%_
                                               _%obj140319%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140321%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140317%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140319%_)))
                                            '#!void)))
                                    _%descriptor140242%_
                                    _%prototype140314%_
                                    _%obj140257%_)))
                             _%$e140311%_)
                            (let ((_%$e140323%_
                                   (try-create-prototype
                                    _%descriptor140242%_
                                    _%klass140247%_
                                    _%obj-klass140260%_)))
                              (if _%$e140323%_
                                  ((lambda (_%prototype140326%_)
                                     ((lambda (_%descriptor140328%_
                                               _%prototype140329%_
                                               _%obj140330%_)
                                        (if _%prototype140329%_
                                            (let ((_%instance140332%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140329%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140332%_
                                                 _%obj140330%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140332%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140328%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140330%_)))
                                              '#!void)))
                                      _%descriptor140242%_
                                      _%prototype140326%_
                                      _%obj140257%_))
                                   _%$e140323%_)
                                  (_%loop140254%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140257%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140336%_
                              (class-type-interface-table _%obj-klass140260%_))
                             (_%$e140365%_
                              (let* ((_%prototable140338%_ _%tab140336%_)
                                     (_%descriptor140341%_
                                      _%descriptor140242%_)
                                     (_%prototable140345%_
                                      _%prototable140338%_)
                                     (_%descriptor140356%_
                                      _%descriptor140341%_))
                                (____prototype-table-get
                                 _%prototable140345%_
                                 _%descriptor140356%_))))
                        (if _%$e140365%_
                            ((lambda (_%prototype140368%_)
                               (if (eq? _%prototype140368%_ '#!void)
                                   ((lambda (_%descriptor140370%_
                                             _%prototype140371%_
                                             _%obj140372%_)
                                      (if _%prototype140371%_
                                          (let ((_%instance140374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140371%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140374%_
                                               _%obj140372%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140374%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140370%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140372%_)))
                                            '#!void)))
                                    _%descriptor140242%_
                                    '#f
                                    _%obj140257%_)
                                   ((lambda (_%descriptor140376%_
                                             _%prototype140377%_
                                             _%obj140378%_)
                                      (if _%prototype140377%_
                                          (let ((_%instance140380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140377%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140380%_
                                               _%obj140378%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140380%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140376%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140378%_)))
                                            '#!void)))
                                    _%descriptor140242%_
                                    _%prototype140368%_
                                    _%obj140257%_)))
                             _%$e140365%_)
                            (let ((_%$e140382%_
                                   (create-prototype
                                    _%descriptor140242%_
                                    _%klass140247%_
                                    _%obj-klass140260%_)))
                              (if _%$e140382%_
                                  ((lambda (_%prototype140385%_)
                                     ((lambda (_%descriptor140387%_
                                               _%prototype140388%_
                                               _%obj140389%_)
                                        (if _%prototype140388%_
                                            (let ((_%instance140391%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140388%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140391%_
                                                 _%obj140389%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140391%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140387%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140389%_)))
                                              '#!void)))
                                      _%descriptor140242%_
                                      _%prototype140385%_
                                      _%obj140257%_))
                                   _%$e140382%_)
                                  ((lambda (_%descriptor140394%_
                                            _%prototype140395%_
                                            _%obj140396%_)
                                     (if _%prototype140395%_
                                         (let ((_%instance140398%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140395%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140398%_
                                              _%obj140396%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140398%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor140394%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj140396%_)))
                                           '#!void)))
                                   _%descriptor140242%_
                                   '#f
                                   _%obj140257%_))))))))))))
    (define try-cast
      (lambda (_%descriptor140084%_ _%obj140086%_)
        (let* ((_%klass140089%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140084%_ '1 '#f '#f)))
               (_%klass-id140092%_
                (let () (declare (not safe)) (##type-id _%klass140089%_))))
          (let _%loop140096%_ ((_%obj140099%_ _%obj140086%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140102%_
                    (let () (declare (not safe)) (class-of _%obj140099%_)))
                   (_%obj-klass-id140105%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140102%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140092%_ _%obj-klass-id140105%_))
                  ((lambda (_%obj140110%_) _%obj140110%_) _%obj140099%_)
                  (if (interface-subclass? _%obj-klass140102%_)
                      (let* ((_%tab140113%_
                              (class-type-interface-table _%obj-klass140102%_))
                             (_%$e140153%_
                              (let* ((_%prototable140116%_ _%tab140113%_)
                                     (_%descriptor140119%_
                                      _%descriptor140084%_)
                                     (_%prototable140123%_
                                      _%prototable140116%_)
                                     (_%descriptor140144%_
                                      _%descriptor140119%_))
                                (____prototype-table-get
                                 _%prototable140123%_
                                 _%descriptor140144%_))))
                        (if _%$e140153%_
                            ((lambda (_%prototype140156%_)
                               (if (eq? _%prototype140156%_ '#!void)
                                   (_%loop140096%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140099%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140159%_
                                             _%prototype140160%_
                                             _%obj140161%_)
                                      (if _%prototype140160%_
                                          (let ((_%instance140163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140160%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140163%_
                                               _%obj140161%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140163%_)
                                          '#f))
                                    _%descriptor140084%_
                                    _%prototype140156%_
                                    _%obj140099%_)))
                             _%$e140153%_)
                            (let ((_%$e140165%_
                                   (try-create-prototype
                                    _%descriptor140084%_
                                    _%klass140089%_
                                    _%obj-klass140102%_)))
                              (if _%$e140165%_
                                  ((lambda (_%prototype140168%_)
                                     ((lambda (_%descriptor140170%_
                                               _%prototype140171%_
                                               _%obj140172%_)
                                        (if _%prototype140171%_
                                            (let ((_%instance140174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140171%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140174%_
                                                 _%obj140172%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140174%_)
                                            '#f))
                                      _%descriptor140084%_
                                      _%prototype140168%_
                                      _%obj140099%_))
                                   _%$e140165%_)
                                  (_%loop140096%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140099%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140178%_
                              (class-type-interface-table _%obj-klass140102%_))
                             (_%$e140207%_
                              (let* ((_%prototable140180%_ _%tab140178%_)
                                     (_%descriptor140183%_
                                      _%descriptor140084%_)
                                     (_%prototable140187%_
                                      _%prototable140180%_)
                                     (_%descriptor140198%_
                                      _%descriptor140183%_))
                                (____prototype-table-get
                                 _%prototable140187%_
                                 _%descriptor140198%_))))
                        (if _%$e140207%_
                            ((lambda (_%prototype140210%_)
                               (if (eq? _%prototype140210%_ '#!void)
                                   ((lambda (_%descriptor140212%_
                                             _%prototype140213%_
                                             _%obj140214%_)
                                      (if _%prototype140213%_
                                          (let ((_%instance140216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140213%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140216%_
                                               _%obj140214%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140216%_)
                                          '#f))
                                    _%descriptor140084%_
                                    '#f
                                    _%obj140099%_)
                                   ((lambda (_%descriptor140218%_
                                             _%prototype140219%_
                                             _%obj140220%_)
                                      (if _%prototype140219%_
                                          (let ((_%instance140222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140219%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140222%_
                                               _%obj140220%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140222%_)
                                          '#f))
                                    _%descriptor140084%_
                                    _%prototype140210%_
                                    _%obj140099%_)))
                             _%$e140207%_)
                            (let ((_%$e140224%_
                                   (try-create-prototype
                                    _%descriptor140084%_
                                    _%klass140089%_
                                    _%obj-klass140102%_)))
                              (if _%$e140224%_
                                  ((lambda (_%prototype140227%_)
                                     ((lambda (_%descriptor140229%_
                                               _%prototype140230%_
                                               _%obj140231%_)
                                        (if _%prototype140230%_
                                            (let ((_%instance140233%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140230%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140233%_
                                                 _%obj140231%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140233%_)
                                            '#f))
                                      _%descriptor140084%_
                                      _%prototype140227%_
                                      _%obj140099%_))
                                   _%$e140224%_)
                                  ((lambda (_%descriptor140236%_
                                            _%prototype140237%_
                                            _%obj140238%_)
                                     (if _%prototype140237%_
                                         (let ((_%instance140240%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140237%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140240%_
                                              _%obj140238%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140240%_)
                                         '#f))
                                   _%descriptor140084%_
                                   '#f
                                   _%obj140099%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor139938%_ _%obj139940%_)
        (let* ((_%klass139943%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor139938%_ '1 '#f '#f)))
               (_%klass-id139946%_
                (let () (declare (not safe)) (##type-id _%klass139943%_))))
          (let _%loop139950%_ ((_%obj139953%_ _%obj139940%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass139956%_
                    (let () (declare (not safe)) (class-of _%obj139953%_)))
                   (_%obj-klass-id139959%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass139956%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id139946%_ _%obj-klass-id139959%_))
                  ((lambda (_%obj139964%_) '#t) _%obj139953%_)
                  (if (interface-subclass? _%obj-klass139956%_)
                      (let* ((_%tab139967%_
                              (class-type-interface-table _%obj-klass139956%_))
                             (_%$e140007%_
                              (let* ((_%prototable139970%_ _%tab139967%_)
                                     (_%descriptor139973%_
                                      _%descriptor139938%_)
                                     (_%prototable139977%_
                                      _%prototable139970%_)
                                     (_%descriptor139998%_
                                      _%descriptor139973%_))
                                (____prototype-table-get
                                 _%prototable139977%_
                                 _%descriptor139998%_))))
                        (if _%$e140007%_
                            ((lambda (_%prototype140010%_)
                               (if (eq? _%prototype140010%_ '#!void)
                                   (_%loop139950%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj139953%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140013%_
                                             _%prototype140014%_
                                             _%obj140015%_)
                                      (if _%prototype140014%_ '#t '#f))
                                    _%descriptor139938%_
                                    _%prototype140010%_
                                    _%obj139953%_)))
                             _%$e140007%_)
                            (let ((_%$e140017%_
                                   (try-create-prototype
                                    _%descriptor139938%_
                                    _%klass139943%_
                                    _%obj-klass139956%_)))
                              (if _%$e140017%_
                                  ((lambda (_%prototype140020%_)
                                     ((lambda (_%descriptor140022%_
                                               _%prototype140023%_
                                               _%obj140024%_)
                                        (if _%prototype140023%_ '#t '#f))
                                      _%descriptor139938%_
                                      _%prototype140020%_
                                      _%obj139953%_))
                                   _%$e140017%_)
                                  (_%loop139950%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj139953%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140028%_
                              (class-type-interface-table _%obj-klass139956%_))
                             (_%$e140057%_
                              (let* ((_%prototable140030%_ _%tab140028%_)
                                     (_%descriptor140033%_
                                      _%descriptor139938%_)
                                     (_%prototable140037%_
                                      _%prototable140030%_)
                                     (_%descriptor140048%_
                                      _%descriptor140033%_))
                                (____prototype-table-get
                                 _%prototable140037%_
                                 _%descriptor140048%_))))
                        (if _%$e140057%_
                            ((lambda (_%prototype140060%_)
                               (if (eq? _%prototype140060%_ '#!void)
                                   ((lambda (_%descriptor140062%_
                                             _%prototype140063%_
                                             _%obj140064%_)
                                      (if _%prototype140063%_ '#t '#f))
                                    _%descriptor139938%_
                                    '#f
                                    _%obj139953%_)
                                   ((lambda (_%descriptor140066%_
                                             _%prototype140067%_
                                             _%obj140068%_)
                                      (if _%prototype140067%_ '#t '#f))
                                    _%descriptor139938%_
                                    _%prototype140060%_
                                    _%obj139953%_)))
                             _%$e140057%_)
                            (let ((_%$e140070%_
                                   (try-create-prototype
                                    _%descriptor139938%_
                                    _%klass139943%_
                                    _%obj-klass139956%_)))
                              (if _%$e140070%_
                                  ((lambda (_%prototype140073%_)
                                     ((lambda (_%descriptor140075%_
                                               _%prototype140076%_
                                               _%obj140077%_)
                                        (if _%prototype140076%_ '#t '#f))
                                      _%descriptor139938%_
                                      _%prototype140073%_
                                      _%obj139953%_))
                                   _%$e140070%_)
                                  ((lambda (_%descriptor140080%_
                                            _%prototype140081%_
                                            _%obj140082%_)
                                     (if _%prototype140081%_ '#t '#f))
                                   _%descriptor139938%_
                                   '#f
                                   _%obj139953%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor139790%_
               _%obj139791%_
               _%with-prototype+receiver139792%_
               _%with-receiver139793%_)
        (let* ((_%descriptor139796%_ _%descriptor139790%_)
               (_%with-prototype+receiver139804%_
                _%with-prototype+receiver139792%_)
               (_%with-receiver139812%_ _%with-receiver139793%_)
               (_%klass139821%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor139796%_ '1 '#f '#f)))
               (_%klass-id139824%_
                (let () (declare (not safe)) (##type-id _%klass139821%_))))
          (let _%loop139828%_ ((_%obj139831%_ _%obj139791%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass139834%_
                    (let () (declare (not safe)) (class-of _%obj139831%_)))
                   (_%obj-klass-id139837%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass139834%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id139824%_ _%obj-klass-id139837%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver139812%_ _%obj139831%_))
                  (if (interface-subclass? _%obj-klass139834%_)
                      (let* ((_%tab139843%_
                              (class-type-interface-table _%obj-klass139834%_))
                             (_%$e139885%_
                              (let* ((_%prototable139846%_ _%tab139843%_)
                                     (_%descriptor139849%_
                                      _%descriptor139796%_)
                                     (_%prototable139853%_
                                      _%prototable139846%_)
                                     (_%descriptor139876%_
                                      _%descriptor139849%_))
                                (____prototype-table-get
                                 _%prototable139853%_
                                 _%descriptor139876%_))))
                        (if _%$e139885%_
                            ((lambda (_%prototype139888%_)
                               (if (eq? _%prototype139888%_ '#!void)
                                   (_%loop139828%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj139831%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139804%_
                                      _%descriptor139796%_
                                      _%prototype139888%_
                                      _%obj139831%_))))
                             _%$e139885%_)
                            (let ((_%$e139891%_
                                   (try-create-prototype
                                    _%descriptor139796%_
                                    _%klass139821%_
                                    _%obj-klass139834%_)))
                              (if _%$e139891%_
                                  ((lambda (_%prototype139894%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139804%_
                                        _%descriptor139796%_
                                        _%prototype139894%_
                                        _%obj139831%_)))
                                   _%$e139891%_)
                                  (_%loop139828%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj139831%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab139898%_
                              (class-type-interface-table _%obj-klass139834%_))
                             (_%$e139927%_
                              (let* ((_%prototable139900%_ _%tab139898%_)
                                     (_%descriptor139903%_
                                      _%descriptor139796%_)
                                     (_%prototable139907%_
                                      _%prototable139900%_)
                                     (_%descriptor139918%_
                                      _%descriptor139903%_))
                                (____prototype-table-get
                                 _%prototable139907%_
                                 _%descriptor139918%_))))
                        (if _%$e139927%_
                            ((lambda (_%prototype139930%_)
                               (if (eq? _%prototype139930%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139804%_
                                      _%descriptor139796%_
                                      '#f
                                      _%obj139831%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139804%_
                                      _%descriptor139796%_
                                      _%prototype139930%_
                                      _%obj139831%_))))
                             _%$e139927%_)
                            (let ((_%$e139932%_
                                   (create-prototype
                                    _%descriptor139796%_
                                    _%klass139821%_
                                    _%obj-klass139834%_)))
                              (if _%$e139932%_
                                  ((lambda (_%prototype139935%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139804%_
                                        _%descriptor139796%_
                                        _%prototype139935%_
                                        _%obj139831%_)))
                                   _%$e139932%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver139804%_
                                     _%descriptor139796%_
                                     '#f
                                     _%obj139831%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor139753%_
               _%obj139754%_
               _%with-prototype+receiver139755%_
               _%with-receiver139756%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor139753%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor139760%_ _%descriptor139753%_))
              (if (procedure? _%with-prototype+receiver139755%_)
                  (let ((_%with-prototype+receiver139770%_
                         _%with-prototype+receiver139755%_))
                    (if (procedure? _%with-receiver139756%_)
                        (let ((_%with-receiver139780%_
                               _%with-receiver139756%_))
                          (__with-prototype
                           _%descriptor139760%_
                           _%obj139754%_
                           _%with-prototype+receiver139770%_
                           _%with-receiver139780%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver139756%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver139755%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor139753%_)
              '#!void))))))
