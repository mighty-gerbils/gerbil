(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770505713)
  (begin
    (define CastError::t
      (let ((__tmp141675 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp141675
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args141589%_
        (apply make-instance CastError::t _%$args141589%_)))
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
      (lambda (_%where141463%_ _%message141464%_ . _%irritants141465%_)
        (let ((__tmp141676
               (let ((__obj141670
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj141670
                    _%message141464%_
                    'where:
                    _%where141463%_
                    'irritants:
                    _%irritants141465%_))
                 __obj141670)))
          (declare (not safe))
          (raise __tmp141676))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp141678 (list)) (__tmp141677 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp141678
         '(object)
         __tmp141677
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args141460%_
        (apply make-instance interface-instance::t _%$args141460%_)))
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
      (let ((__tmp141680 (list))
            (__tmp141679
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp141680
         '(type methods index)
         __tmp141679
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args141457%_
        (apply make-instance interface-descriptor::t _%$args141457%_)))
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
          (let _%again141437%_ ((_%spin141440%_ '0))
            (if (let ((__tmp141681
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp141681 '0))
                (let ((__tmp141682 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp141682))
                (if (let () (declare (not safe)) (##fx< _%spin141440%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again141437%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin141440%_ '1))))
                    (let ((_%owner141446%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner141446%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner141446%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again141437%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r141454%_
               (let ((_%index141452%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index141452%_ '1)))
                 _%index141452%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r141454%_)))
    (define interface-descriptor:::init!
      (lambda (_%self141418%_ _%type141419%_ _%methods141420%_)
        (let ((_%self141423%_ _%self141418%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141423%_
             _%type141419%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141423%_
             _%methods141420%_
             '2
             '#f
             '#f))
          (let ((__tmp141683 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141423%_
             __tmp141683
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
      (let ((__tmp141685 (list))
            (__tmp141684
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp141685
         '(lock table)
         __tmp141684
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args141293%_
        (apply make-instance prototype-table::t _%$args141293%_)))
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
      (lambda (_%self141279%_)
        (let ((_%self141282%_ _%self141279%_))
          (let ((__tmp141686 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self141282%_ __tmp141686 '1 '#f '#f))
          (let ((__tmp141687
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self141282%_
             __tmp141687
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
      (lambda (_%prototable141110%_ _%descriptor141111%_)
        (let* ((_%prototable141114%_ _%prototable141110%_)
               (_%descriptor141122%_ _%descriptor141111%_))
          (declare (not safe))
          (let ((_%lock141132%_
                 (##unchecked-structure-ref _%prototable141114%_ '1 '#f '#f))
                (_%index141133%_
                 (##unchecked-structure-ref _%descriptor141122%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141137%_ ((_%spin141140%_ '0))
                (if (##fx= (##vector-cas! _%lock141132%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141132%_ '1 (current-thread))
                    (if (##fx< _%spin141140%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141137%_ (##fx+ _%spin141140%_ '1)))
                        (let ((_%owner141146%_
                               (##vector-ref _%lock141132%_ '1)))
                          (if (eq? _%owner141146%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141146%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141137%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141154%_
                   (let ((_%tab141152%_
                          (##unchecked-structure-ref
                           _%prototable141114%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141133%_ (vector-length _%tab141152%_))
                         (vector-ref _%tab141152%_ _%index141133%_)
                         '#f))))
              (##vector-set! _%lock141132%_ '1 '#f)
              (##vector-cas! _%lock141132%_ '0 '0 '1)
              _%$r141154%_)))))
    (define __prototype-table-get
      (lambda (_%prototable139091%_ _%descriptor139092%_)
        (let* ((_%prototable139095%_ _%prototable139091%_)
               (_%descriptor139103%_ _%descriptor139092%_))
          (____prototype-table-get
           _%prototable139095%_
           _%descriptor139103%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable141057%_ _%descriptor141058%_ _%prototype141059%_)
        (let* ((_%prototable141062%_ _%prototable141057%_)
               (_%descriptor141070%_ _%descriptor141058%_))
          (declare (not safe))
          (let ((_%lock141080%_
                 (##unchecked-structure-ref _%prototable141062%_ '1 '#f '#f))
                (_%index141081%_
                 (##unchecked-structure-ref _%descriptor141070%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again141085%_ ((_%spin141088%_ '0))
                (if (##fx= (##vector-cas! _%lock141080%_ '0 '1 '0) '0)
                    (##vector-set! _%lock141080%_ '1 (current-thread))
                    (if (##fx< _%spin141088%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again141085%_ (##fx+ _%spin141088%_ '1)))
                        (let ((_%owner141094%_
                               (##vector-ref _%lock141080%_ '1)))
                          (if (eq? _%owner141094%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner141094%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again141085%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r141107%_
                   (let ((_%tab141100%_
                          (##unchecked-structure-ref
                           _%prototable141062%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index141081%_ (vector-length _%tab141100%_))
                         (vector-set!
                          _%tab141100%_
                          _%index141081%_
                          _%prototype141059%_)
                         (let* ((_%new-size141102%_ __next-interface-index)
                                (_%new-tab141104%_
                                 (##make-vector _%new-size141102%_ '#f)))
                           (subvector-move!
                            _%tab141100%_
                            '0
                            (vector-length _%tab141100%_)
                            _%new-tab141104%_
                            '0)
                           (vector-set!
                            _%new-tab141104%_
                            _%index141081%_
                            _%prototype141059%_)
                           (##unchecked-structure-set!
                            _%prototable141062%_
                            _%new-tab141104%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock141080%_ '1 '#f)
              (##vector-cas! _%lock141080%_ '0 '0 '1)
              _%$r141107%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable139232%_ _%descriptor139233%_ _%prototype139234%_)
        (let* ((_%prototable139237%_ _%prototable139232%_)
               (_%descriptor139245%_ _%descriptor139233%_))
          (____prototype-table-set!
           _%prototable139237%_
           _%descriptor139245%_
           _%prototype139234%_))))
    (define interface-subclass?
      (lambda (_%klass141050%_)
        (let ((_%super141051141053%_
               (let () (declare (not safe)) (##type-super _%klass141050%_))))
          (if _%super141051141053%_
              (let ((_%super141055%_ _%super141051141053%_))
                (eq? (let () (declare (not safe)) (##type-id _%super141055%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass141042%_)
        (let ((_%$e141044%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass141042%_ '13 '#f '#f))))
          (if _%$e141044%_
              _%$e141044%_
              (let ((_%tab141048%_
                     (let ((__obj141674
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj141674)
                       __obj141674)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass141042%_
                   _%tab141048%_
                   '13
                   '#f
                   '#f))
                _%tab141048%_)))))
    (define create-prototype
      (lambda (_%descriptor140725%_ _%klass140726%_ _%obj-klass140727%_)
        (let ((_%method-table140745%_
               (let ((_%klass140729%_ _%obj-klass140727%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140729%_ 'class))
                     (let ((_%klass140734%_ _%klass140729%_))
                       (declare (not safe))
                       (__specialize-class _%klass140734%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140729%_)
                       '#!void)))))
          (let _%loop140748%_ ((_%rest140751%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140725%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140753%_ '0)
                               (_%methods140755%_ '()))
            (let* ((_%rest140757140765%_ _%rest140751%_)
                   (_%else140759140892%_
                    (lambda ()
                      (let ((_%prototype140808%_
                             (let* ((_%klass140773%_ _%klass140726%_)
                                    (_%k140776%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140753%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140773%_
                                      'class))
                                   (let* ((_%klass140781%_ _%klass140773%_)
                                          (_%k140798%_ _%k140776%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140781%_
                                      _%k140798%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140773%_)
                                     '#!void)))))
                        (let _%loop140811%_ ((_%rest140813%_ _%methods140755%_)
                                             (_%off140814%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140753%_ '1))))
                          (let* ((_%rest140816140824%_ _%rest140813%_)
                                 (_%else140818140873%_
                                  (lambda ()
                                    (let ((_%tab140832%_
                                           (class-type-interface-table
                                            _%obj-klass140727%_)))
                                      (let* ((_%prototable140835%_
                                              _%tab140832%_)
                                             (_%descriptor140838%_
                                              _%descriptor140725%_)
                                             (_%prototype140841%_
                                              _%prototype140808%_)
                                             (_%prototable140845%_
                                              _%prototable140835%_)
                                             (_%descriptor140862%_
                                              _%descriptor140838%_))
                                        (____prototype-table-set!
                                         _%prototable140845%_
                                         _%descriptor140862%_
                                         _%prototype140841%_))
                                      ((lambda (_%prototype140871%_)
                                         _%prototype140871%_)
                                       _%prototype140808%_))))
                                 (_%K140820140880%_
                                  (lambda (_%rest140876%_ _%method140877%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140808%_
                                       _%method140877%_
                                       _%off140814%_
                                       _%klass140726%_
                                       '#f))
                                    (_%loop140811%_
                                     _%rest140876%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140814%_ '1))))))
                            (if (pair? _%rest140816140824%_)
                                (let ((_%hd140821140883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140816140824%_)))
                                      (_%tl140822140885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140816140824%_))))
                                  (let* ((_%method140888%_ _%hd140821140883%_)
                                         (_%rest140890%_ _%tl140822140885%_))
                                    (_%K140820140880%_
                                     _%rest140890%_
                                     _%method140888%_)))
                                (_%else140818140873%_)))))))
                   (_%K140761141030%_
                    (lambda (_%rest140895%_ _%method-spec140896%_)
                      (if (pair? _%method-spec140896%_)
                          (let _%loop-inner140900%_ ((_%methods-rest140903%_
                                                      _%method-spec140896%_))
                            (let* ((_%methods-rest140905140913%_
                                    _%methods-rest140903%_)
                                   (_%else140907140963%_
                                    (lambda ()
                                      (let ((_%tab140921%_
                                             (class-type-interface-table
                                              _%obj-klass140727%_)))
                                        (let* ((_%prototable140923%_
                                                _%tab140921%_)
                                               (_%descriptor140926%_
                                                _%descriptor140725%_)
                                               (_%prototype140929%_ '#!void)
                                               (_%prototable140933%_
                                                _%prototable140923%_)
                                               (_%descriptor140952%_
                                                _%descriptor140926%_))
                                          (____prototype-table-set!
                                           _%prototable140933%_
                                           _%descriptor140952%_
                                           _%prototype140929%_))
                                        ((lambda (_%method140961%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor140725%_
                                            'class:
                                            _%obj-klass140727%_
                                            'method:
                                            _%method140961%_)
                                           '#!void)
                                         _%method-spec140896%_))))
                                   (_%K140909140976%_
                                    (lambda (_%methods-rest140966%_
                                             _%method-name140967%_)
                                      (let ((_%$e140970%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140745%_
                                                _%method-name140967%_
                                                '#f))))
                                        (if _%$e140970%_
                                            ((lambda (_%method140973%_)
                                               (_%loop140748%_
                                                _%rest140895%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140753%_ '1))
                                                (cons _%method140973%_
                                                      _%methods140755%_)))
                                             _%$e140970%_)
                                            (_%loop-inner140900%_
                                             _%methods-rest140966%_))))))
                              (if (pair? _%methods-rest140905140913%_)
                                  (let ((_%hd140910140979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140905140913%_)))
                                        (_%tl140911140981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140905140913%_))))
                                    (let* ((_%method-name140984%_
                                            _%hd140910140979%_)
                                           (_%methods-rest140986%_
                                            _%tl140911140981%_))
                                      (_%K140909140976%_
                                       _%methods-rest140986%_
                                       _%method-name140984%_)))
                                  (_%else140907140963%_))))
                          (let ((_%$e140988%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140745%_
                                    _%method-spec140896%_
                                    '#f))))
                            (if _%$e140988%_
                                ((lambda (_%method140991%_)
                                   (_%loop140748%_
                                    _%rest140895%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140753%_ '1))
                                    (cons _%method140991%_ _%methods140755%_)))
                                 _%$e140988%_)
                                (let ((_%tab140994%_
                                       (class-type-interface-table
                                        _%obj-klass140727%_)))
                                  (let* ((_%prototable140996%_ _%tab140994%_)
                                         (_%descriptor140999%_
                                          _%descriptor140725%_)
                                         (_%prototype141002%_ '#!void)
                                         (_%prototable141006%_
                                          _%prototable140996%_)
                                         (_%descriptor141019%_
                                          _%descriptor140999%_))
                                    (____prototype-table-set!
                                     _%prototable141006%_
                                     _%descriptor141019%_
                                     _%prototype141002%_))
                                  ((lambda (_%method141028%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor140725%_
                                      'class:
                                      _%obj-klass140727%_
                                      'method:
                                      _%method141028%_)
                                     '#!void)
                                   _%method-spec140896%_))))))))
              (if (pair? _%rest140757140765%_)
                  (let ((_%hd140762141033%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140757140765%_)))
                        (_%tl140763141035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140757140765%_))))
                    (let* ((_%method-spec141038%_ _%hd140762141033%_)
                           (_%rest141040%_ _%tl140763141035%_))
                      (_%K140761141030%_
                       _%rest141040%_
                       _%method-spec141038%_)))
                  (_%else140759140892%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor140408%_ _%klass140409%_ _%obj-klass140410%_)
        (let ((_%method-table140428%_
               (let ((_%klass140412%_ _%obj-klass140410%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass140412%_ 'class))
                     (let ((_%klass140417%_ _%klass140412%_))
                       (declare (not safe))
                       (__specialize-class _%klass140417%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass140412%_)
                       '#!void)))))
          (let _%loop140431%_ ((_%rest140434%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor140408%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count140436%_ '0)
                               (_%methods140438%_ '()))
            (let* ((_%rest140440140448%_ _%rest140434%_)
                   (_%else140442140575%_
                    (lambda ()
                      (let ((_%prototype140491%_
                             (let* ((_%klass140456%_ _%klass140409%_)
                                    (_%k140459%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count140436%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass140456%_
                                      'class))
                                   (let* ((_%klass140464%_ _%klass140456%_)
                                          (_%k140481%_ _%k140459%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass140464%_
                                      _%k140481%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass140456%_)
                                     '#!void)))))
                        (let _%loop140494%_ ((_%rest140496%_ _%methods140438%_)
                                             (_%off140497%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count140436%_ '1))))
                          (let* ((_%rest140499140507%_ _%rest140496%_)
                                 (_%else140501140556%_
                                  (lambda ()
                                    (let ((_%tab140515%_
                                           (class-type-interface-table
                                            _%obj-klass140410%_)))
                                      (let* ((_%prototable140518%_
                                              _%tab140515%_)
                                             (_%descriptor140521%_
                                              _%descriptor140408%_)
                                             (_%prototype140524%_
                                              _%prototype140491%_)
                                             (_%prototable140528%_
                                              _%prototable140518%_)
                                             (_%descriptor140545%_
                                              _%descriptor140521%_))
                                        (____prototype-table-set!
                                         _%prototable140528%_
                                         _%descriptor140545%_
                                         _%prototype140524%_))
                                      ((lambda (_%prototype140554%_)
                                         _%prototype140554%_)
                                       _%prototype140491%_))))
                                 (_%K140503140563%_
                                  (lambda (_%rest140559%_ _%method140560%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype140491%_
                                       _%method140560%_
                                       _%off140497%_
                                       _%klass140409%_
                                       '#f))
                                    (_%loop140494%_
                                     _%rest140559%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off140497%_ '1))))))
                            (if (pair? _%rest140499140507%_)
                                (let ((_%hd140504140566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest140499140507%_)))
                                      (_%tl140505140568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest140499140507%_))))
                                  (let* ((_%method140571%_ _%hd140504140566%_)
                                         (_%rest140573%_ _%tl140505140568%_))
                                    (_%K140503140563%_
                                     _%rest140573%_
                                     _%method140571%_)))
                                (_%else140501140556%_)))))))
                   (_%K140444140713%_
                    (lambda (_%rest140578%_ _%method-spec140579%_)
                      (if (pair? _%method-spec140579%_)
                          (let _%loop-inner140583%_ ((_%methods-rest140586%_
                                                      _%method-spec140579%_))
                            (let* ((_%methods-rest140588140596%_
                                    _%methods-rest140586%_)
                                   (_%else140590140646%_
                                    (lambda ()
                                      (let ((_%tab140604%_
                                             (class-type-interface-table
                                              _%obj-klass140410%_)))
                                        (let* ((_%prototable140606%_
                                                _%tab140604%_)
                                               (_%descriptor140609%_
                                                _%descriptor140408%_)
                                               (_%prototype140612%_ '#!void)
                                               (_%prototable140616%_
                                                _%prototable140606%_)
                                               (_%descriptor140635%_
                                                _%descriptor140609%_))
                                          (____prototype-table-set!
                                           _%prototable140616%_
                                           _%descriptor140635%_
                                           _%prototype140612%_))
                                        ((lambda (_%method140644%_) '#f)
                                         _%method-spec140579%_))))
                                   (_%K140592140659%_
                                    (lambda (_%methods-rest140649%_
                                             _%method-name140650%_)
                                      (let ((_%$e140653%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table140428%_
                                                _%method-name140650%_
                                                '#f))))
                                        (if _%$e140653%_
                                            ((lambda (_%method140656%_)
                                               (_%loop140431%_
                                                _%rest140578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count140436%_ '1))
                                                (cons _%method140656%_
                                                      _%methods140438%_)))
                                             _%$e140653%_)
                                            (_%loop-inner140583%_
                                             _%methods-rest140649%_))))))
                              (if (pair? _%methods-rest140588140596%_)
                                  (let ((_%hd140593140662%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest140588140596%_)))
                                        (_%tl140594140664%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest140588140596%_))))
                                    (let* ((_%method-name140667%_
                                            _%hd140593140662%_)
                                           (_%methods-rest140669%_
                                            _%tl140594140664%_))
                                      (_%K140592140659%_
                                       _%methods-rest140669%_
                                       _%method-name140667%_)))
                                  (_%else140590140646%_))))
                          (let ((_%$e140671%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table140428%_
                                    _%method-spec140579%_
                                    '#f))))
                            (if _%$e140671%_
                                ((lambda (_%method140674%_)
                                   (_%loop140431%_
                                    _%rest140578%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count140436%_ '1))
                                    (cons _%method140674%_ _%methods140438%_)))
                                 _%$e140671%_)
                                (let ((_%tab140677%_
                                       (class-type-interface-table
                                        _%obj-klass140410%_)))
                                  (let* ((_%prototable140679%_ _%tab140677%_)
                                         (_%descriptor140682%_
                                          _%descriptor140408%_)
                                         (_%prototype140685%_ '#!void)
                                         (_%prototable140689%_
                                          _%prototable140679%_)
                                         (_%descriptor140702%_
                                          _%descriptor140682%_))
                                    (____prototype-table-set!
                                     _%prototable140689%_
                                     _%descriptor140702%_
                                     _%prototype140685%_))
                                  ((lambda (_%method140711%_) '#f)
                                   _%method-spec140579%_))))))))
              (if (pair? _%rest140440140448%_)
                  (let ((_%hd140445140716%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest140440140448%_)))
                        (_%tl140446140718%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest140440140448%_))))
                    (let* ((_%method-spec140721%_ _%hd140445140716%_)
                           (_%rest140723%_ _%tl140446140718%_))
                      (_%K140444140713%_
                       _%rest140723%_
                       _%method-spec140721%_)))
                  (_%else140442140575%_)))))))
    (define cast
      (lambda (_%descriptor140250%_ _%obj140252%_)
        (let* ((_%klass140255%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140250%_ '1 '#f '#f)))
               (_%klass-id140258%_
                (let () (declare (not safe)) (##type-id _%klass140255%_))))
          (let _%loop140262%_ ((_%obj140265%_ _%obj140252%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140268%_
                    (let () (declare (not safe)) (class-of _%obj140265%_)))
                   (_%obj-klass-id140271%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140268%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140258%_ _%obj-klass-id140271%_))
                  ((lambda (_%obj140276%_) _%obj140276%_) _%obj140265%_)
                  (if (interface-subclass? _%obj-klass140268%_)
                      (let* ((_%tab140279%_
                              (class-type-interface-table _%obj-klass140268%_))
                             (_%$e140319%_
                              (let* ((_%prototable140282%_ _%tab140279%_)
                                     (_%descriptor140285%_
                                      _%descriptor140250%_)
                                     (_%prototable140289%_
                                      _%prototable140282%_)
                                     (_%descriptor140310%_
                                      _%descriptor140285%_))
                                (____prototype-table-get
                                 _%prototable140289%_
                                 _%descriptor140310%_))))
                        (if _%$e140319%_
                            ((lambda (_%prototype140322%_)
                               (if (eq? _%prototype140322%_ '#!void)
                                   (_%loop140262%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140265%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140325%_
                                             _%prototype140326%_
                                             _%obj140327%_)
                                      (if _%prototype140326%_
                                          (let ((_%instance140329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140326%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140329%_
                                               _%obj140327%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140329%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140325%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140327%_)))
                                            '#!void)))
                                    _%descriptor140250%_
                                    _%prototype140322%_
                                    _%obj140265%_)))
                             _%$e140319%_)
                            (let ((_%$e140331%_
                                   (try-create-prototype
                                    _%descriptor140250%_
                                    _%klass140255%_
                                    _%obj-klass140268%_)))
                              (if _%$e140331%_
                                  ((lambda (_%prototype140334%_)
                                     ((lambda (_%descriptor140336%_
                                               _%prototype140337%_
                                               _%obj140338%_)
                                        (if _%prototype140337%_
                                            (let ((_%instance140340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140337%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140340%_
                                                 _%obj140338%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140340%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140336%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140338%_)))
                                              '#!void)))
                                      _%descriptor140250%_
                                      _%prototype140334%_
                                      _%obj140265%_))
                                   _%$e140331%_)
                                  (_%loop140262%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140265%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140344%_
                              (class-type-interface-table _%obj-klass140268%_))
                             (_%$e140373%_
                              (let* ((_%prototable140346%_ _%tab140344%_)
                                     (_%descriptor140349%_
                                      _%descriptor140250%_)
                                     (_%prototable140353%_
                                      _%prototable140346%_)
                                     (_%descriptor140364%_
                                      _%descriptor140349%_))
                                (____prototype-table-get
                                 _%prototable140353%_
                                 _%descriptor140364%_))))
                        (if _%$e140373%_
                            ((lambda (_%prototype140376%_)
                               (if (eq? _%prototype140376%_ '#!void)
                                   ((lambda (_%descriptor140378%_
                                             _%prototype140379%_
                                             _%obj140380%_)
                                      (if _%prototype140379%_
                                          (let ((_%instance140382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140379%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140382%_
                                               _%obj140380%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140382%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140378%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140380%_)))
                                            '#!void)))
                                    _%descriptor140250%_
                                    '#f
                                    _%obj140265%_)
                                   ((lambda (_%descriptor140384%_
                                             _%prototype140385%_
                                             _%obj140386%_)
                                      (if _%prototype140385%_
                                          (let ((_%instance140388%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140385%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140388%_
                                               _%obj140386%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140388%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor140384%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj140386%_)))
                                            '#!void)))
                                    _%descriptor140250%_
                                    _%prototype140376%_
                                    _%obj140265%_)))
                             _%$e140373%_)
                            (let ((_%$e140390%_
                                   (create-prototype
                                    _%descriptor140250%_
                                    _%klass140255%_
                                    _%obj-klass140268%_)))
                              (if _%$e140390%_
                                  ((lambda (_%prototype140393%_)
                                     ((lambda (_%descriptor140395%_
                                               _%prototype140396%_
                                               _%obj140397%_)
                                        (if _%prototype140396%_
                                            (let ((_%instance140399%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140396%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140399%_
                                                 _%obj140397%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140399%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor140395%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj140397%_)))
                                              '#!void)))
                                      _%descriptor140250%_
                                      _%prototype140393%_
                                      _%obj140265%_))
                                   _%$e140390%_)
                                  ((lambda (_%descriptor140402%_
                                            _%prototype140403%_
                                            _%obj140404%_)
                                     (if _%prototype140403%_
                                         (let ((_%instance140406%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140403%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140406%_
                                              _%obj140404%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140406%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor140402%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj140404%_)))
                                           '#!void)))
                                   _%descriptor140250%_
                                   '#f
                                   _%obj140265%_))))))))))))
    (define try-cast
      (lambda (_%descriptor140092%_ _%obj140094%_)
        (let* ((_%klass140097%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140092%_ '1 '#f '#f)))
               (_%klass-id140100%_
                (let () (declare (not safe)) (##type-id _%klass140097%_))))
          (let _%loop140104%_ ((_%obj140107%_ _%obj140094%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140110%_
                    (let () (declare (not safe)) (class-of _%obj140107%_)))
                   (_%obj-klass-id140113%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140110%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140100%_ _%obj-klass-id140113%_))
                  ((lambda (_%obj140118%_) _%obj140118%_) _%obj140107%_)
                  (if (interface-subclass? _%obj-klass140110%_)
                      (let* ((_%tab140121%_
                              (class-type-interface-table _%obj-klass140110%_))
                             (_%$e140161%_
                              (let* ((_%prototable140124%_ _%tab140121%_)
                                     (_%descriptor140127%_
                                      _%descriptor140092%_)
                                     (_%prototable140131%_
                                      _%prototable140124%_)
                                     (_%descriptor140152%_
                                      _%descriptor140127%_))
                                (____prototype-table-get
                                 _%prototable140131%_
                                 _%descriptor140152%_))))
                        (if _%$e140161%_
                            ((lambda (_%prototype140164%_)
                               (if (eq? _%prototype140164%_ '#!void)
                                   (_%loop140104%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140107%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140167%_
                                             _%prototype140168%_
                                             _%obj140169%_)
                                      (if _%prototype140168%_
                                          (let ((_%instance140171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140168%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140171%_
                                               _%obj140169%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140171%_)
                                          '#f))
                                    _%descriptor140092%_
                                    _%prototype140164%_
                                    _%obj140107%_)))
                             _%$e140161%_)
                            (let ((_%$e140173%_
                                   (try-create-prototype
                                    _%descriptor140092%_
                                    _%klass140097%_
                                    _%obj-klass140110%_)))
                              (if _%$e140173%_
                                  ((lambda (_%prototype140176%_)
                                     ((lambda (_%descriptor140178%_
                                               _%prototype140179%_
                                               _%obj140180%_)
                                        (if _%prototype140179%_
                                            (let ((_%instance140182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140179%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140182%_
                                                 _%obj140180%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140182%_)
                                            '#f))
                                      _%descriptor140092%_
                                      _%prototype140176%_
                                      _%obj140107%_))
                                   _%$e140173%_)
                                  (_%loop140104%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140107%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140186%_
                              (class-type-interface-table _%obj-klass140110%_))
                             (_%$e140215%_
                              (let* ((_%prototable140188%_ _%tab140186%_)
                                     (_%descriptor140191%_
                                      _%descriptor140092%_)
                                     (_%prototable140195%_
                                      _%prototable140188%_)
                                     (_%descriptor140206%_
                                      _%descriptor140191%_))
                                (____prototype-table-get
                                 _%prototable140195%_
                                 _%descriptor140206%_))))
                        (if _%$e140215%_
                            ((lambda (_%prototype140218%_)
                               (if (eq? _%prototype140218%_ '#!void)
                                   ((lambda (_%descriptor140220%_
                                             _%prototype140221%_
                                             _%obj140222%_)
                                      (if _%prototype140221%_
                                          (let ((_%instance140224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140221%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140224%_
                                               _%obj140222%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140224%_)
                                          '#f))
                                    _%descriptor140092%_
                                    '#f
                                    _%obj140107%_)
                                   ((lambda (_%descriptor140226%_
                                             _%prototype140227%_
                                             _%obj140228%_)
                                      (if _%prototype140227%_
                                          (let ((_%instance140230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype140227%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance140230%_
                                               _%obj140228%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance140230%_)
                                          '#f))
                                    _%descriptor140092%_
                                    _%prototype140218%_
                                    _%obj140107%_)))
                             _%$e140215%_)
                            (let ((_%$e140232%_
                                   (try-create-prototype
                                    _%descriptor140092%_
                                    _%klass140097%_
                                    _%obj-klass140110%_)))
                              (if _%$e140232%_
                                  ((lambda (_%prototype140235%_)
                                     ((lambda (_%descriptor140237%_
                                               _%prototype140238%_
                                               _%obj140239%_)
                                        (if _%prototype140238%_
                                            (let ((_%instance140241%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype140238%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance140241%_
                                                 _%obj140239%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance140241%_)
                                            '#f))
                                      _%descriptor140092%_
                                      _%prototype140235%_
                                      _%obj140107%_))
                                   _%$e140232%_)
                                  ((lambda (_%descriptor140244%_
                                            _%prototype140245%_
                                            _%obj140246%_)
                                     (if _%prototype140245%_
                                         (let ((_%instance140248%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype140245%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance140248%_
                                              _%obj140246%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance140248%_)
                                         '#f))
                                   _%descriptor140092%_
                                   '#f
                                   _%obj140107%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor139946%_ _%obj139948%_)
        (let* ((_%klass139951%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor139946%_ '1 '#f '#f)))
               (_%klass-id139954%_
                (let () (declare (not safe)) (##type-id _%klass139951%_))))
          (let _%loop139958%_ ((_%obj139961%_ _%obj139948%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass139964%_
                    (let () (declare (not safe)) (class-of _%obj139961%_)))
                   (_%obj-klass-id139967%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass139964%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id139954%_ _%obj-klass-id139967%_))
                  ((lambda (_%obj139972%_) '#t) _%obj139961%_)
                  (if (interface-subclass? _%obj-klass139964%_)
                      (let* ((_%tab139975%_
                              (class-type-interface-table _%obj-klass139964%_))
                             (_%$e140015%_
                              (let* ((_%prototable139978%_ _%tab139975%_)
                                     (_%descriptor139981%_
                                      _%descriptor139946%_)
                                     (_%prototable139985%_
                                      _%prototable139978%_)
                                     (_%descriptor140006%_
                                      _%descriptor139981%_))
                                (____prototype-table-get
                                 _%prototable139985%_
                                 _%descriptor140006%_))))
                        (if _%$e140015%_
                            ((lambda (_%prototype140018%_)
                               (if (eq? _%prototype140018%_ '#!void)
                                   (_%loop139958%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj139961%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor140021%_
                                             _%prototype140022%_
                                             _%obj140023%_)
                                      (if _%prototype140022%_ '#t '#f))
                                    _%descriptor139946%_
                                    _%prototype140018%_
                                    _%obj139961%_)))
                             _%$e140015%_)
                            (let ((_%$e140025%_
                                   (try-create-prototype
                                    _%descriptor139946%_
                                    _%klass139951%_
                                    _%obj-klass139964%_)))
                              (if _%$e140025%_
                                  ((lambda (_%prototype140028%_)
                                     ((lambda (_%descriptor140030%_
                                               _%prototype140031%_
                                               _%obj140032%_)
                                        (if _%prototype140031%_ '#t '#f))
                                      _%descriptor139946%_
                                      _%prototype140028%_
                                      _%obj139961%_))
                                   _%$e140025%_)
                                  (_%loop139958%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj139961%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab140036%_
                              (class-type-interface-table _%obj-klass139964%_))
                             (_%$e140065%_
                              (let* ((_%prototable140038%_ _%tab140036%_)
                                     (_%descriptor140041%_
                                      _%descriptor139946%_)
                                     (_%prototable140045%_
                                      _%prototable140038%_)
                                     (_%descriptor140056%_
                                      _%descriptor140041%_))
                                (____prototype-table-get
                                 _%prototable140045%_
                                 _%descriptor140056%_))))
                        (if _%$e140065%_
                            ((lambda (_%prototype140068%_)
                               (if (eq? _%prototype140068%_ '#!void)
                                   ((lambda (_%descriptor140070%_
                                             _%prototype140071%_
                                             _%obj140072%_)
                                      (if _%prototype140071%_ '#t '#f))
                                    _%descriptor139946%_
                                    '#f
                                    _%obj139961%_)
                                   ((lambda (_%descriptor140074%_
                                             _%prototype140075%_
                                             _%obj140076%_)
                                      (if _%prototype140075%_ '#t '#f))
                                    _%descriptor139946%_
                                    _%prototype140068%_
                                    _%obj139961%_)))
                             _%$e140065%_)
                            (let ((_%$e140078%_
                                   (try-create-prototype
                                    _%descriptor139946%_
                                    _%klass139951%_
                                    _%obj-klass139964%_)))
                              (if _%$e140078%_
                                  ((lambda (_%prototype140081%_)
                                     ((lambda (_%descriptor140083%_
                                               _%prototype140084%_
                                               _%obj140085%_)
                                        (if _%prototype140084%_ '#t '#f))
                                      _%descriptor139946%_
                                      _%prototype140081%_
                                      _%obj139961%_))
                                   _%$e140078%_)
                                  ((lambda (_%descriptor140088%_
                                            _%prototype140089%_
                                            _%obj140090%_)
                                     (if _%prototype140089%_ '#t '#f))
                                   _%descriptor139946%_
                                   '#f
                                   _%obj139961%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor139798%_
               _%obj139799%_
               _%with-prototype+receiver139800%_
               _%with-receiver139801%_)
        (let* ((_%descriptor139804%_ _%descriptor139798%_)
               (_%with-prototype+receiver139812%_
                _%with-prototype+receiver139800%_)
               (_%with-receiver139820%_ _%with-receiver139801%_)
               (_%klass139829%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor139804%_ '1 '#f '#f)))
               (_%klass-id139832%_
                (let () (declare (not safe)) (##type-id _%klass139829%_))))
          (let _%loop139836%_ ((_%obj139839%_ _%obj139799%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass139842%_
                    (let () (declare (not safe)) (class-of _%obj139839%_)))
                   (_%obj-klass-id139845%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass139842%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id139832%_ _%obj-klass-id139845%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver139820%_ _%obj139839%_))
                  (if (interface-subclass? _%obj-klass139842%_)
                      (let* ((_%tab139851%_
                              (class-type-interface-table _%obj-klass139842%_))
                             (_%$e139893%_
                              (let* ((_%prototable139854%_ _%tab139851%_)
                                     (_%descriptor139857%_
                                      _%descriptor139804%_)
                                     (_%prototable139861%_
                                      _%prototable139854%_)
                                     (_%descriptor139884%_
                                      _%descriptor139857%_))
                                (____prototype-table-get
                                 _%prototable139861%_
                                 _%descriptor139884%_))))
                        (if _%$e139893%_
                            ((lambda (_%prototype139896%_)
                               (if (eq? _%prototype139896%_ '#!void)
                                   (_%loop139836%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj139839%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139812%_
                                      _%descriptor139804%_
                                      _%prototype139896%_
                                      _%obj139839%_))))
                             _%$e139893%_)
                            (let ((_%$e139899%_
                                   (try-create-prototype
                                    _%descriptor139804%_
                                    _%klass139829%_
                                    _%obj-klass139842%_)))
                              (if _%$e139899%_
                                  ((lambda (_%prototype139902%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139812%_
                                        _%descriptor139804%_
                                        _%prototype139902%_
                                        _%obj139839%_)))
                                   _%$e139899%_)
                                  (_%loop139836%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj139839%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab139906%_
                              (class-type-interface-table _%obj-klass139842%_))
                             (_%$e139935%_
                              (let* ((_%prototable139908%_ _%tab139906%_)
                                     (_%descriptor139911%_
                                      _%descriptor139804%_)
                                     (_%prototable139915%_
                                      _%prototable139908%_)
                                     (_%descriptor139926%_
                                      _%descriptor139911%_))
                                (____prototype-table-get
                                 _%prototable139915%_
                                 _%descriptor139926%_))))
                        (if _%$e139935%_
                            ((lambda (_%prototype139938%_)
                               (if (eq? _%prototype139938%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139812%_
                                      _%descriptor139804%_
                                      '#f
                                      _%obj139839%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver139812%_
                                      _%descriptor139804%_
                                      _%prototype139938%_
                                      _%obj139839%_))))
                             _%$e139935%_)
                            (let ((_%$e139940%_
                                   (create-prototype
                                    _%descriptor139804%_
                                    _%klass139829%_
                                    _%obj-klass139842%_)))
                              (if _%$e139940%_
                                  ((lambda (_%prototype139943%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver139812%_
                                        _%descriptor139804%_
                                        _%prototype139943%_
                                        _%obj139839%_)))
                                   _%$e139940%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver139812%_
                                     _%descriptor139804%_
                                     '#f
                                     _%obj139839%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor139761%_
               _%obj139762%_
               _%with-prototype+receiver139763%_
               _%with-receiver139764%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor139761%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor139768%_ _%descriptor139761%_))
              (if (procedure? _%with-prototype+receiver139763%_)
                  (let ((_%with-prototype+receiver139778%_
                         _%with-prototype+receiver139763%_))
                    (if (procedure? _%with-receiver139764%_)
                        (let ((_%with-receiver139788%_
                               _%with-receiver139764%_))
                          (__with-prototype
                           _%descriptor139768%_
                           _%obj139762%_
                           _%with-prototype+receiver139778%_
                           _%with-receiver139788%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver139764%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver139763%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor139761%_)
              '#!void))))))
