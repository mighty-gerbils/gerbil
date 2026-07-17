(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1784471378)
  (begin
    (define CastError::t
      (let ((__tmp152406 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp152406
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args152320%_
        (apply make-instance CastError::t _%$args152320%_)))
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
      (lambda (_%where152194%_ _%message152195%_ . _%irritants152196%_)
        (let ((__tmp152407
               (let ((__obj152401
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj152401
                    _%message152195%_
                    'where:
                    _%where152194%_
                    'irritants:
                    _%irritants152196%_))
                 __obj152401)))
          (declare (not safe))
          (raise __tmp152407))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp152409 (list))
            (__tmp152408 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp152409
         '(object)
         __tmp152408
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args152191%_
        (apply make-instance interface-instance::t _%$args152191%_)))
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
      (let ((__tmp152411 (list))
            (__tmp152410
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp152411
         '(type methods index)
         __tmp152410
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args152188%_
        (apply make-instance interface-descriptor::t _%$args152188%_)))
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
          (let _%again152166%_ ((_%spin152169%_ '0))
            (if (let ((__tmp152412
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp152412 '0))
                (let ((__tmp152413 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp152413))
                (if (let () (declare (not safe)) (##fx< _%spin152169%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again152166%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin152169%_ '1))))
                    (let ((_%owner152175%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner152175%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner152175%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again152166%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r152183%_
               (let ((_%index152181%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index152181%_ '1)))
                 _%index152181%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r152183%_)))
    (define interface-descriptor:::init!
      (lambda (_%self152147%_ _%type152148%_ _%methods152149%_)
        (let ((_%self152152%_ _%self152147%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152152%_
             _%type152148%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152152%_
             _%methods152149%_
             '2
             '#f
             '#f))
          (let ((__tmp152414 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152152%_
             __tmp152414
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
      (let ((__tmp152416 (list))
            (__tmp152415
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp152416
         '(lock table)
         __tmp152415
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args152022%_
        (apply make-instance prototype-table::t _%$args152022%_)))
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
      (lambda (_%self152008%_)
        (let ((_%self152011%_ _%self152008%_))
          (let ((__tmp152417 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self152011%_ __tmp152417 '1 '#f '#f))
          (let ((__tmp152418
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152011%_
             __tmp152418
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
      (lambda (_%prototable151861%_ _%descriptor151862%_)
        (let* ((_%prototable151865%_ _%prototable151861%_)
               (_%descriptor151873%_ _%descriptor151862%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab151883%_
                 (##unchecked-structure-ref _%prototable151865%_ '2 '#f '#f))
                (_%index151884%_
                 (##unchecked-structure-ref _%descriptor151873%_ '3 '#f '#f)))
            (if (##fx< _%index151884%_ (vector-length _%tab151883%_))
                (vector-ref _%tab151883%_ _%index151884%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable151840%_ _%descriptor151841%_)
        (let* ((_%prototable151844%_ _%prototable151840%_)
               (_%descriptor151852%_ _%descriptor151841%_))
          (____prototype-table-get
           _%prototable151844%_
           _%descriptor151852%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable151786%_ _%descriptor151787%_ _%prototype151788%_)
        (let* ((_%prototable151791%_ _%prototable151786%_)
               (_%descriptor151799%_ _%descriptor151787%_))
          (declare (not safe))
          (let ((_%lock151809%_
                 (##unchecked-structure-ref _%prototable151791%_ '1 '#f '#f))
                (_%index151810%_
                 (##unchecked-structure-ref _%descriptor151799%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again151814%_ ((_%spin151817%_ '0))
                (if (##fx= (##vector-cas! _%lock151809%_ '0 '1 '0) '0)
                    (##vector-set! _%lock151809%_ '1 (current-thread))
                    (if (##fx< _%spin151817%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again151814%_ (##fx+ _%spin151817%_ '1)))
                        (let ((_%owner151823%_
                               (##vector-ref _%lock151809%_ '1)))
                          (if (eq? _%owner151823%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner151823%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again151814%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r151835%_
                   (let ((_%tab151829%_
                          (##unchecked-structure-ref
                           _%prototable151791%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index151810%_ (vector-length _%tab151829%_))
                         (vector-set!
                          _%tab151829%_
                          _%index151810%_
                          _%prototype151788%_)
                         (let ((_%new-size151831%_ __next-interface-index))
                           (if (##fx< _%index151810%_ _%new-size151831%_)
                               (let ((_%new-tab151833%_
                                      (##make-vector _%new-size151831%_ '#f)))
                                 (subvector-move!
                                  _%tab151829%_
                                  '0
                                  (vector-length _%tab151829%_)
                                  _%new-tab151833%_
                                  '0)
                                 (vector-set!
                                  _%new-tab151833%_
                                  _%index151810%_
                                  _%prototype151788%_)
                                 (##unchecked-structure-set!
                                  _%prototable151791%_
                                  _%new-tab151833%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor151799%_
                                      'index:
                                      _%index151810%_
                                      'max-index:
                                      _%new-size151831%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock151809%_ '1 '#f)
                  (##vector-cas! _%lock151809%_ '0 '0 '1)))
              _%$r151835%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151764%_ _%descriptor151765%_ _%prototype151766%_)
        (let* ((_%prototable151769%_ _%prototable151764%_)
               (_%descriptor151777%_ _%descriptor151765%_))
          (____prototype-table-set!
           _%prototable151769%_
           _%descriptor151777%_
           _%prototype151766%_))))
    (define interface-subclass?
      (lambda (_%klass151757%_)
        (let ((_%$%super151758151760%_
               (let () (declare (not safe)) (##type-super _%klass151757%_))))
          (if _%$%super151758151760%_
              (let ((_%super151762%_ _%$%super151758151760%_))
                (eq? (let () (declare (not safe)) (##type-id _%super151762%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass151749%_)
        (let ((_%$e151751%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass151749%_ '13 '#f '#f))))
          (if _%$e151751%_
              _%$e151751%_
              (let ((_%tab151755%_
                     (let ((__obj152405
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj152405)
                       __obj152405)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass151749%_
                   _%tab151755%_
                   '13
                   '#f
                   '#f))
                _%tab151755%_)))))
    (define create-prototype
      (lambda (_%descriptor151432%_ _%klass151433%_ _%obj-klass151434%_)
        (let ((_%method-table151452%_
               (let ((_%klass151436%_ _%obj-klass151434%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151436%_ 'class))
                     (let ((_%klass151441%_ _%klass151436%_))
                       (declare (not safe))
                       (__specialize-class _%klass151441%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151436%_)
                       '#!void)))))
          (let _%loop151455%_ ((_%rest151458%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151432%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151460%_ '0)
                               (_%methods151462%_ '()))
            (let* ((_%$%rest151464151472%_ _%rest151458%_)
                   (_%$%else151466151599%_
                    (lambda ()
                      (let ((_%prototype151515%_
                             (let* ((_%klass151480%_ _%klass151433%_)
                                    (_%k151483%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151460%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151480%_
                                      'class))
                                   (let* ((_%klass151488%_ _%klass151480%_)
                                          (_%k151505%_ _%k151483%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151488%_
                                      _%k151505%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151480%_)
                                     '#!void)))))
                        (let _%loop151518%_ ((_%rest151520%_ _%methods151462%_)
                                             (_%off151521%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151460%_ '1))))
                          (let* ((_%$%rest151523151531%_ _%rest151520%_)
                                 (_%$%else151525151580%_
                                  (lambda ()
                                    (let ((_%tab151539%_
                                           (class-type-interface-table
                                            _%obj-klass151434%_)))
                                      (let* ((_%prototable151542%_
                                              _%tab151539%_)
                                             (_%descriptor151545%_
                                              _%descriptor151432%_)
                                             (_%prototype151548%_
                                              _%prototype151515%_)
                                             (_%prototable151552%_
                                              _%prototable151542%_)
                                             (_%descriptor151569%_
                                              _%descriptor151545%_))
                                        (____prototype-table-set!
                                         _%prototable151552%_
                                         _%descriptor151569%_
                                         _%prototype151548%_))
                                      _%prototype151515%_)))
                                 (_%$%K151527151587%_
                                  (lambda (_%rest151583%_ _%method151584%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151515%_
                                       _%method151584%_
                                       _%off151521%_
                                       _%klass151433%_
                                       '#f))
                                    (_%loop151518%_
                                     _%rest151583%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151521%_ '1))))))
                            (if (pair? _%$%rest151523151531%_)
                                (let ((_%$%hd151528151590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151523151531%_)))
                                      (_%$%tl151529151592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151523151531%_))))
                                  (let* ((_%method151595%_
                                          _%$%hd151528151590%_)
                                         (_%rest151597%_ _%$%tl151529151592%_))
                                    (_%$%K151527151587%_
                                     _%rest151597%_
                                     _%method151595%_)))
                                (_%$%else151525151580%_)))))))
                   (_%$%K151468151737%_
                    (lambda (_%rest151602%_ _%method-spec151603%_)
                      (if (pair? _%method-spec151603%_)
                          (let _%loop-inner151607%_ ((_%methods-rest151610%_
                                                      _%method-spec151603%_))
                            (let* ((_%$%methods-rest151612151620%_
                                    _%methods-rest151610%_)
                                   (_%$%else151614151670%_
                                    (lambda ()
                                      (let ((_%tab151628%_
                                             (class-type-interface-table
                                              _%obj-klass151434%_)))
                                        (let* ((_%prototable151630%_
                                                _%tab151628%_)
                                               (_%descriptor151633%_
                                                _%descriptor151432%_)
                                               (_%prototype151636%_ '#!void)
                                               (_%prototable151640%_
                                                _%prototable151630%_)
                                               (_%descriptor151659%_
                                                _%descriptor151633%_))
                                          (____prototype-table-set!
                                           _%prototable151640%_
                                           _%descriptor151659%_
                                           _%prototype151636%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor151432%_
                                           'class:
                                           _%obj-klass151434%_
                                           'method:
                                           _%method-spec151603%_)
                                          '#!void))))
                                   (_%$%K151616151683%_
                                    (lambda (_%methods-rest151673%_
                                             _%method-name151674%_)
                                      (let ((_%$e151677%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151452%_
                                                _%method-name151674%_
                                                '#f))))
                                        (if _%$e151677%_
                                            (_%loop151455%_
                                             _%rest151602%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151460%_ '1))
                                             (cons _%$e151677%_
                                                   _%methods151462%_))
                                            (_%loop-inner151607%_
                                             _%methods-rest151673%_))))))
                              (if (pair? _%$%methods-rest151612151620%_)
                                  (let ((_%$%hd151617151686%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151612151620%_)))
                                        (_%$%tl151618151688%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151612151620%_))))
                                    (let* ((_%method-name151691%_
                                            _%$%hd151617151686%_)
                                           (_%methods-rest151693%_
                                            _%$%tl151618151688%_))
                                      (_%$%K151616151683%_
                                       _%methods-rest151693%_
                                       _%method-name151691%_)))
                                  (_%$%else151614151670%_))))
                          (let ((_%$e151695%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151452%_
                                    _%method-spec151603%_
                                    '#f))))
                            (if _%$e151695%_
                                (_%loop151455%_
                                 _%rest151602%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151460%_ '1))
                                 (cons _%$e151695%_ _%methods151462%_))
                                (let ((_%tab151701%_
                                       (class-type-interface-table
                                        _%obj-klass151434%_)))
                                  (let* ((_%prototable151703%_ _%tab151701%_)
                                         (_%descriptor151706%_
                                          _%descriptor151432%_)
                                         (_%prototype151709%_ '#!void)
                                         (_%prototable151713%_
                                          _%prototable151703%_)
                                         (_%descriptor151726%_
                                          _%descriptor151706%_))
                                    (____prototype-table-set!
                                     _%prototable151713%_
                                     _%descriptor151726%_
                                     _%prototype151709%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor151432%_
                                     'class:
                                     _%obj-klass151434%_
                                     'method:
                                     _%method-spec151603%_)
                                    '#!void))))))))
              (if (pair? _%$%rest151464151472%_)
                  (let ((_%$%hd151469151740%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151464151472%_)))
                        (_%$%tl151470151742%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151464151472%_))))
                    (let* ((_%method-spec151745%_ _%$%hd151469151740%_)
                           (_%rest151747%_ _%$%tl151470151742%_))
                      (_%$%K151468151737%_
                       _%rest151747%_
                       _%method-spec151745%_)))
                  (_%$%else151466151599%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor151115%_ _%klass151116%_ _%obj-klass151117%_)
        (let ((_%method-table151135%_
               (let ((_%klass151119%_ _%obj-klass151117%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151119%_ 'class))
                     (let ((_%klass151124%_ _%klass151119%_))
                       (declare (not safe))
                       (__specialize-class _%klass151124%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151119%_)
                       '#!void)))))
          (let _%loop151138%_ ((_%rest151141%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151115%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151143%_ '0)
                               (_%methods151145%_ '()))
            (let* ((_%$%rest151147151155%_ _%rest151141%_)
                   (_%$%else151149151282%_
                    (lambda ()
                      (let ((_%prototype151198%_
                             (let* ((_%klass151163%_ _%klass151116%_)
                                    (_%k151166%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151143%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151163%_
                                      'class))
                                   (let* ((_%klass151171%_ _%klass151163%_)
                                          (_%k151188%_ _%k151166%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151171%_
                                      _%k151188%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151163%_)
                                     '#!void)))))
                        (let _%loop151201%_ ((_%rest151203%_ _%methods151145%_)
                                             (_%off151204%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151143%_ '1))))
                          (let* ((_%$%rest151206151214%_ _%rest151203%_)
                                 (_%$%else151208151263%_
                                  (lambda ()
                                    (let ((_%tab151222%_
                                           (class-type-interface-table
                                            _%obj-klass151117%_)))
                                      (let* ((_%prototable151225%_
                                              _%tab151222%_)
                                             (_%descriptor151228%_
                                              _%descriptor151115%_)
                                             (_%prototype151231%_
                                              _%prototype151198%_)
                                             (_%prototable151235%_
                                              _%prototable151225%_)
                                             (_%descriptor151252%_
                                              _%descriptor151228%_))
                                        (____prototype-table-set!
                                         _%prototable151235%_
                                         _%descriptor151252%_
                                         _%prototype151231%_))
                                      _%prototype151198%_)))
                                 (_%$%K151210151270%_
                                  (lambda (_%rest151266%_ _%method151267%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151198%_
                                       _%method151267%_
                                       _%off151204%_
                                       _%klass151116%_
                                       '#f))
                                    (_%loop151201%_
                                     _%rest151266%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151204%_ '1))))))
                            (if (pair? _%$%rest151206151214%_)
                                (let ((_%$%hd151211151273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151206151214%_)))
                                      (_%$%tl151212151275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151206151214%_))))
                                  (let* ((_%method151278%_
                                          _%$%hd151211151273%_)
                                         (_%rest151280%_ _%$%tl151212151275%_))
                                    (_%$%K151210151270%_
                                     _%rest151280%_
                                     _%method151278%_)))
                                (_%$%else151208151263%_)))))))
                   (_%$%K151151151420%_
                    (lambda (_%rest151285%_ _%method-spec151286%_)
                      (if (pair? _%method-spec151286%_)
                          (let _%loop-inner151290%_ ((_%methods-rest151293%_
                                                      _%method-spec151286%_))
                            (let* ((_%$%methods-rest151295151303%_
                                    _%methods-rest151293%_)
                                   (_%$%else151297151353%_
                                    (lambda ()
                                      (let ((_%tab151311%_
                                             (class-type-interface-table
                                              _%obj-klass151117%_)))
                                        (let* ((_%prototable151313%_
                                                _%tab151311%_)
                                               (_%descriptor151316%_
                                                _%descriptor151115%_)
                                               (_%prototype151319%_ '#!void)
                                               (_%prototable151323%_
                                                _%prototable151313%_)
                                               (_%descriptor151342%_
                                                _%descriptor151316%_))
                                          (____prototype-table-set!
                                           _%prototable151323%_
                                           _%descriptor151342%_
                                           _%prototype151319%_))
                                        '#f)))
                                   (_%$%K151299151366%_
                                    (lambda (_%methods-rest151356%_
                                             _%method-name151357%_)
                                      (let ((_%$e151360%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151135%_
                                                _%method-name151357%_
                                                '#f))))
                                        (if _%$e151360%_
                                            (_%loop151138%_
                                             _%rest151285%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151143%_ '1))
                                             (cons _%$e151360%_
                                                   _%methods151145%_))
                                            (_%loop-inner151290%_
                                             _%methods-rest151356%_))))))
                              (if (pair? _%$%methods-rest151295151303%_)
                                  (let ((_%$%hd151300151369%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151295151303%_)))
                                        (_%$%tl151301151371%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151295151303%_))))
                                    (let* ((_%method-name151374%_
                                            _%$%hd151300151369%_)
                                           (_%methods-rest151376%_
                                            _%$%tl151301151371%_))
                                      (_%$%K151299151366%_
                                       _%methods-rest151376%_
                                       _%method-name151374%_)))
                                  (_%$%else151297151353%_))))
                          (let ((_%$e151378%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151135%_
                                    _%method-spec151286%_
                                    '#f))))
                            (if _%$e151378%_
                                (_%loop151138%_
                                 _%rest151285%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151143%_ '1))
                                 (cons _%$e151378%_ _%methods151145%_))
                                (let ((_%tab151384%_
                                       (class-type-interface-table
                                        _%obj-klass151117%_)))
                                  (let* ((_%prototable151386%_ _%tab151384%_)
                                         (_%descriptor151389%_
                                          _%descriptor151115%_)
                                         (_%prototype151392%_ '#!void)
                                         (_%prototable151396%_
                                          _%prototable151386%_)
                                         (_%descriptor151409%_
                                          _%descriptor151389%_))
                                    (____prototype-table-set!
                                     _%prototable151396%_
                                     _%descriptor151409%_
                                     _%prototype151392%_))
                                  '#f)))))))
              (if (pair? _%$%rest151147151155%_)
                  (let ((_%$%hd151152151423%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151147151155%_)))
                        (_%$%tl151153151425%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151147151155%_))))
                    (let* ((_%method-spec151428%_ _%$%hd151152151423%_)
                           (_%rest151430%_ _%$%tl151153151425%_))
                      (_%$%K151151151420%_
                       _%rest151430%_
                       _%method-spec151428%_)))
                  (_%$%else151149151282%_)))))))
    (define cast
      (lambda (_%descriptor150949%_ _%obj150951%_)
        (let* ((_%klass150954%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150949%_ '1 '#f '#f)))
               (_%klass-id150957%_
                (let () (declare (not safe)) (##type-id _%klass150954%_))))
          (let _%loop150961%_ ((_%obj150964%_ _%obj150951%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150967%_
                    (let () (declare (not safe)) (class-of _%obj150964%_)))
                   (_%obj-klass-id150970%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150967%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150957%_ _%obj-klass-id150970%_))
                  _%obj150964%_
                  (if (interface-subclass? _%obj-klass150967%_)
                      (let _%loop-interface150978%_ ((_%iface-klass150981%_
                                                      _%obj-klass150967%_))
                        (if _%iface-klass150981%_
                            (let* ((_%tab150984%_
                                    (class-type-interface-table
                                     _%iface-klass150981%_))
                                   (_%$e151026%_
                                    (let* ((_%prototable150987%_ _%tab150984%_)
                                           (_%descriptor150990%_
                                            _%descriptor150949%_)
                                           (_%prototable150994%_
                                            _%prototable150987%_)
                                           (_%descriptor151017%_
                                            _%descriptor150990%_))
                                      (____prototype-table-get
                                       _%prototable150994%_
                                       _%descriptor151017%_))))
                              (if _%$e151026%_
                                  (if (eq? _%$e151026%_ '#!void)
                                      (_%loop-interface150978%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150981%_)))
                                      (if _%$e151026%_
                                          (let ((_%instance151036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e151026%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance151036%_
                                               _%obj150964%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance151036%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor150949%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj150964%_)))
                                            '#!void)))
                                  (let ((_%$e151038%_
                                         (try-create-prototype
                                          _%descriptor150949%_
                                          _%klass150954%_
                                          _%iface-klass150981%_)))
                                    (if _%$e151038%_
                                        (if _%$e151038%_
                                            (let ((_%instance151047%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e151038%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance151047%_
                                                 _%obj150964%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance151047%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor150949%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj150964%_)))
                                              '#!void))
                                        (_%loop-interface150978%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150981%_)))))))
                            (_%loop150961%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150964%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab151051%_
                              (class-type-interface-table _%obj-klass150967%_))
                             (_%$e151080%_
                              (let* ((_%prototable151053%_ _%tab151051%_)
                                     (_%descriptor151056%_
                                      _%descriptor150949%_)
                                     (_%prototable151060%_
                                      _%prototable151053%_)
                                     (_%descriptor151071%_
                                      _%descriptor151056%_))
                                (____prototype-table-get
                                 _%prototable151060%_
                                 _%descriptor151071%_))))
                        (if _%$e151080%_
                            (if (eq? _%$e151080%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor150949%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj150964%_)))
                                  '#!void)
                                (if _%$e151080%_
                                    (let ((_%instance151095%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e151080%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance151095%_
                                         _%obj150964%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance151095%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor150949%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj150964%_)))
                                      '#!void)))
                            (let ((_%$e151097%_
                                   (create-prototype
                                    _%descriptor150949%_
                                    _%klass150954%_
                                    _%obj-klass150967%_)))
                              (if _%$e151097%_
                                  (if _%$e151097%_
                                      (let ((_%instance151106%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e151097%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance151106%_
                                           _%obj150964%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance151106%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor150949%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj150964%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor150949%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj150964%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor150783%_ _%obj150785%_)
        (let* ((_%klass150788%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150783%_ '1 '#f '#f)))
               (_%klass-id150791%_
                (let () (declare (not safe)) (##type-id _%klass150788%_))))
          (let _%loop150795%_ ((_%obj150798%_ _%obj150785%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150801%_
                    (let () (declare (not safe)) (class-of _%obj150798%_)))
                   (_%obj-klass-id150804%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150801%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150791%_ _%obj-klass-id150804%_))
                  _%obj150798%_
                  (if (interface-subclass? _%obj-klass150801%_)
                      (let _%loop-interface150812%_ ((_%iface-klass150815%_
                                                      _%obj-klass150801%_))
                        (if _%iface-klass150815%_
                            (let* ((_%tab150818%_
                                    (class-type-interface-table
                                     _%iface-klass150815%_))
                                   (_%$e150860%_
                                    (let* ((_%prototable150821%_ _%tab150818%_)
                                           (_%descriptor150824%_
                                            _%descriptor150783%_)
                                           (_%prototable150828%_
                                            _%prototable150821%_)
                                           (_%descriptor150851%_
                                            _%descriptor150824%_))
                                      (____prototype-table-get
                                       _%prototable150828%_
                                       _%descriptor150851%_))))
                              (if _%$e150860%_
                                  (if (eq? _%$e150860%_ '#!void)
                                      (_%loop-interface150812%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150815%_)))
                                      (if _%$e150860%_
                                          (let ((_%instance150870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150860%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150870%_
                                               _%obj150798%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150870%_)
                                          '#f))
                                  (let ((_%$e150872%_
                                         (try-create-prototype
                                          _%descriptor150783%_
                                          _%klass150788%_
                                          _%iface-klass150815%_)))
                                    (if _%$e150872%_
                                        (if _%$e150872%_
                                            (let ((_%instance150881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150872%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150881%_
                                                 _%obj150798%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150881%_)
                                            '#f)
                                        (_%loop-interface150812%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150815%_)))))))
                            (_%loop150795%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150798%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150885%_
                              (class-type-interface-table _%obj-klass150801%_))
                             (_%$e150914%_
                              (let* ((_%prototable150887%_ _%tab150885%_)
                                     (_%descriptor150890%_
                                      _%descriptor150783%_)
                                     (_%prototable150894%_
                                      _%prototable150887%_)
                                     (_%descriptor150905%_
                                      _%descriptor150890%_))
                                (____prototype-table-get
                                 _%prototable150894%_
                                 _%descriptor150905%_))))
                        (if _%$e150914%_
                            (if (eq? _%$e150914%_ '#!void)
                                '#f
                                (if _%$e150914%_
                                    (let ((_%instance150929%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150914%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150929%_
                                         _%obj150798%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150929%_)
                                    '#f))
                            (let ((_%$e150931%_
                                   (try-create-prototype
                                    _%descriptor150783%_
                                    _%klass150788%_
                                    _%obj-klass150801%_)))
                              (if _%$e150931%_
                                  (if _%$e150931%_
                                      (let ((_%instance150940%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150931%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150940%_
                                           _%obj150798%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150940%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor150629%_ _%obj150631%_)
        (let* ((_%klass150634%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150629%_ '1 '#f '#f)))
               (_%klass-id150637%_
                (let () (declare (not safe)) (##type-id _%klass150634%_))))
          (let _%loop150641%_ ((_%obj150644%_ _%obj150631%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150647%_
                    (let () (declare (not safe)) (class-of _%obj150644%_)))
                   (_%obj-klass-id150650%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150647%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150637%_ _%obj-klass-id150650%_))
                  '#t
                  (if (interface-subclass? _%obj-klass150647%_)
                      (let _%loop-interface150658%_ ((_%iface-klass150661%_
                                                      _%obj-klass150647%_))
                        (if _%iface-klass150661%_
                            (let* ((_%tab150664%_
                                    (class-type-interface-table
                                     _%iface-klass150661%_))
                                   (_%$e150706%_
                                    (let* ((_%prototable150667%_ _%tab150664%_)
                                           (_%descriptor150670%_
                                            _%descriptor150629%_)
                                           (_%prototable150674%_
                                            _%prototable150667%_)
                                           (_%descriptor150697%_
                                            _%descriptor150670%_))
                                      (____prototype-table-get
                                       _%prototable150674%_
                                       _%descriptor150697%_))))
                              (if _%$e150706%_
                                  (if (eq? _%$e150706%_ '#!void)
                                      (_%loop-interface150658%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150661%_)))
                                      (if _%$e150706%_ '#t '#f))
                                  (let ((_%$e150716%_
                                         (try-create-prototype
                                          _%descriptor150629%_
                                          _%klass150634%_
                                          _%iface-klass150661%_)))
                                    (if _%$e150716%_
                                        (if _%$e150716%_ '#t '#f)
                                        (_%loop-interface150658%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150661%_)))))))
                            (_%loop150641%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150644%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150727%_
                              (class-type-interface-table _%obj-klass150647%_))
                             (_%$e150756%_
                              (let* ((_%prototable150729%_ _%tab150727%_)
                                     (_%descriptor150732%_
                                      _%descriptor150629%_)
                                     (_%prototable150736%_
                                      _%prototable150729%_)
                                     (_%descriptor150747%_
                                      _%descriptor150732%_))
                                (____prototype-table-get
                                 _%prototable150736%_
                                 _%descriptor150747%_))))
                        (if _%$e150756%_
                            (if (eq? _%$e150756%_ '#!void)
                                '#f
                                (if _%$e150756%_ '#t '#f))
                            (let ((_%$e150769%_
                                   (try-create-prototype
                                    _%descriptor150629%_
                                    _%klass150634%_
                                    _%obj-klass150647%_)))
                              (if _%$e150769%_
                                  (if _%$e150769%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor150473%_
               _%obj150474%_
               _%with-prototype+receiver150475%_
               _%with-receiver150476%_)
        (let* ((_%descriptor150479%_ _%descriptor150473%_)
               (_%with-prototype+receiver150487%_
                _%with-prototype+receiver150475%_)
               (_%with-receiver150495%_ _%with-receiver150476%_)
               (_%klass150504%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150479%_ '1 '#f '#f)))
               (_%klass-id150507%_
                (let () (declare (not safe)) (##type-id _%klass150504%_))))
          (let _%loop150511%_ ((_%obj150514%_ _%obj150474%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150517%_
                    (let () (declare (not safe)) (class-of _%obj150514%_)))
                   (_%obj-klass-id150520%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150517%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150507%_ _%obj-klass-id150520%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver150495%_ _%obj150514%_))
                  (if (interface-subclass? _%obj-klass150517%_)
                      (let _%loop-interface150526%_ ((_%iface-klass150529%_
                                                      _%obj-klass150517%_))
                        (if _%iface-klass150529%_
                            (let* ((_%tab150532%_
                                    (class-type-interface-table
                                     _%iface-klass150529%_))
                                   (_%$e150576%_
                                    (let* ((_%prototable150535%_ _%tab150532%_)
                                           (_%descriptor150538%_
                                            _%descriptor150479%_)
                                           (_%prototable150542%_
                                            _%prototable150535%_)
                                           (_%descriptor150567%_
                                            _%descriptor150538%_))
                                      (____prototype-table-get
                                       _%prototable150542%_
                                       _%descriptor150567%_))))
                              (if _%$e150576%_
                                  (if (eq? _%$e150576%_ '#!void)
                                      (_%loop-interface150526%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150529%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver150487%_
                                         _%descriptor150479%_
                                         _%$e150576%_
                                         _%obj150514%_)))
                                  (let ((_%$e150582%_
                                         (try-create-prototype
                                          _%descriptor150479%_
                                          _%klass150504%_
                                          _%iface-klass150529%_)))
                                    (if _%$e150582%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver150487%_
                                           _%descriptor150479%_
                                           _%$e150582%_
                                           _%obj150514%_))
                                        (_%loop-interface150526%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150529%_)))))))
                            (_%loop150511%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150514%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150589%_
                              (class-type-interface-table _%obj-klass150517%_))
                             (_%$e150618%_
                              (let* ((_%prototable150591%_ _%tab150589%_)
                                     (_%descriptor150594%_
                                      _%descriptor150479%_)
                                     (_%prototable150598%_
                                      _%prototable150591%_)
                                     (_%descriptor150609%_
                                      _%descriptor150594%_))
                                (____prototype-table-get
                                 _%prototable150598%_
                                 _%descriptor150609%_))))
                        (if _%$e150618%_
                            (if (eq? _%$e150618%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150487%_
                                   _%descriptor150479%_
                                   '#f
                                   _%obj150514%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150487%_
                                   _%descriptor150479%_
                                   _%$e150618%_
                                   _%obj150514%_)))
                            (let ((_%$e150623%_
                                   (create-prototype
                                    _%descriptor150479%_
                                    _%klass150504%_
                                    _%obj-klass150517%_)))
                              (if _%$e150623%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150487%_
                                     _%descriptor150479%_
                                     _%$e150623%_
                                     _%obj150514%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150487%_
                                     _%descriptor150479%_
                                     '#f
                                     _%obj150514%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor150436%_
               _%obj150437%_
               _%with-prototype+receiver150438%_
               _%with-receiver150439%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor150436%_
               'interface-descriptor::t))
            (let ((_%descriptor150443%_ _%descriptor150436%_))
              (if (procedure? _%with-prototype+receiver150438%_)
                  (let ((_%with-prototype+receiver150453%_
                         _%with-prototype+receiver150438%_))
                    (if (procedure? _%with-receiver150439%_)
                        (let ((_%with-receiver150463%_
                               _%with-receiver150439%_))
                          (__with-prototype
                           _%descriptor150443%_
                           _%obj150437%_
                           _%with-prototype+receiver150453%_
                           _%with-receiver150463%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver150439%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver150438%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor150436%_)
              '#!void))))))
