(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1769384627)
  (begin
    (define CastError::t
      (let ((__tmp116649 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp116649
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args116639%_
        (apply make-instance CastError::t _%$args116639%_)))
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
      (lambda (_%where116513%_ _%message116514%_ . _%irritants116515%_)
        (let ((__tmp116650
               (let ((__obj116642
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj116642
                    _%message116514%_
                    'where:
                    _%where116513%_
                    'irritants:
                    _%irritants116515%_))
                 __obj116642)))
          (declare (not safe))
          (raise __tmp116650))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp116652 (list)) (__tmp116651 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp116652
         '(object)
         __tmp116651
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args116510%_
        (apply make-instance interface-instance::t _%$args116510%_)))
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
      (let ((__tmp116654 (list))
            (__tmp116653
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp116654
         '(type methods index)
         __tmp116653
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args116507%_
        (apply make-instance interface-descriptor::t _%$args116507%_)))
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
          (let _%again116487%_ ((_%spin116490%_ '0))
            (if (let ((__tmp116655
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp116655 '0))
                (let ((__tmp116656 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp116656))
                (if (let () (declare (not safe)) (##fx< _%spin116490%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again116487%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin116490%_ '1))))
                    (let ((_%owner116496%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner116496%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner116496%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again116487%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r116504%_
               (let ((_%index116502%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index116502%_ '1)))
                 _%index116502%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r116504%_)))
    (define interface-descriptor:::init!
      (lambda (_%self116468%_ _%type116469%_ _%methods116470%_)
        (let ((_%self116473%_ _%self116468%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116473%_
             _%type116469%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116473%_
             _%methods116470%_
             '2
             '#f
             '#f))
          (let ((__tmp116657 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116473%_
             __tmp116657
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
      (let ((__tmp116659 (list))
            (__tmp116658
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp116659
         '(lock table)
         __tmp116658
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args116343%_
        (apply make-instance prototype-table::t _%$args116343%_)))
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
      (lambda (_%self116329%_)
        (let ((_%self116332%_ _%self116329%_))
          (let ((__tmp116660 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self116332%_ __tmp116660 '1 '#f '#f))
          (let ((__tmp116661
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self116332%_
             __tmp116661
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
      (lambda (_%prototable116186%_ _%descriptor116187%_)
        (let* ((_%prototable116190%_ _%prototable116186%_)
               (_%descriptor116198%_ _%descriptor116187%_))
          (____prototype-table-get
           _%prototable116190%_
           _%descriptor116198%_))))
    (define ____prototype-table-get
      (lambda (_%prototable116139%_ _%descriptor116140%_)
        (let* ((_%prototable116143%_ _%prototable116139%_)
               (_%descriptor116151%_ _%descriptor116140%_))
          (declare (not safe))
          (let ((_%lock116161%_
                 (##unchecked-structure-ref _%prototable116143%_ '1 '#f '#f))
                (_%index116162%_
                 (##unchecked-structure-ref _%descriptor116151%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again116166%_ ((_%spin116169%_ '0))
                (if (##fx= (##vector-cas! _%lock116161%_ '0 '1 '0) '0)
                    (##vector-set! _%lock116161%_ '1 (current-thread))
                    (if (##fx< _%spin116169%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again116166%_ (##fx+ _%spin116169%_ '1)))
                        (let ((_%owner116175%_
                               (##vector-ref _%lock116161%_ '1)))
                          (if (eq? _%owner116175%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner116175%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again116166%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r116183%_
                   (let ((_%tab116181%_
                          (##unchecked-structure-ref
                           _%prototable116143%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index116162%_ (vector-length _%tab116181%_))
                         (vector-ref _%tab116181%_ _%index116162%_)
                         '#f))))
              (##vector-set! _%lock116161%_ '1 '#f)
              (##vector-cas! _%lock116161%_ '0 '0 '1)
              _%$r116183%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable116117%_ _%descriptor116118%_ _%prototype116119%_)
        (let* ((_%prototable116122%_ _%prototable116117%_)
               (_%descriptor116130%_ _%descriptor116118%_))
          (____prototype-table-set!
           _%prototable116122%_
           _%descriptor116130%_
           _%prototype116119%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable116064%_ _%descriptor116065%_ _%prototype116066%_)
        (let* ((_%prototable116069%_ _%prototable116064%_)
               (_%descriptor116077%_ _%descriptor116065%_))
          (declare (not safe))
          (let ((_%lock116087%_
                 (##unchecked-structure-ref _%prototable116069%_ '1 '#f '#f))
                (_%index116088%_
                 (##unchecked-structure-ref _%descriptor116077%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again116092%_ ((_%spin116095%_ '0))
                (if (##fx= (##vector-cas! _%lock116087%_ '0 '1 '0) '0)
                    (##vector-set! _%lock116087%_ '1 (current-thread))
                    (if (##fx< _%spin116095%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again116092%_ (##fx+ _%spin116095%_ '1)))
                        (let ((_%owner116101%_
                               (##vector-ref _%lock116087%_ '1)))
                          (if (eq? _%owner116101%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner116101%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again116092%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r116114%_
                   (let ((_%tab116107%_
                          (##unchecked-structure-ref
                           _%prototable116069%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index116088%_ (vector-length _%tab116107%_))
                         (vector-set!
                          _%tab116107%_
                          _%index116088%_
                          _%prototype116066%_)
                         (let* ((_%new-size116109%_ __next-interface-index)
                                (_%new-tab116111%_
                                 (##make-vector _%new-size116109%_ '#f)))
                           (subvector-move!
                            _%tab116107%_
                            '0
                            (vector-length _%tab116107%_)
                            _%new-tab116111%_
                            '0)
                           (vector-set!
                            _%new-tab116111%_
                            _%index116088%_
                            _%prototype116066%_)
                           (##unchecked-structure-set!
                            _%prototable116069%_
                            _%new-tab116111%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock116087%_ '1 '#f)
              (##vector-cas! _%lock116087%_ '0 '0 '1)
              _%$r116114%_)))))
    (define interface-subclass?
      (lambda (_%klass116057%_)
        (let ((_%super116058116060%_
               (let () (declare (not safe)) (##type-super _%klass116057%_))))
          (if _%super116058116060%_
              (let ((_%super116062%_ _%super116058116060%_))
                (eq? (let () (declare (not safe)) (##type-id _%super116062%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass116049%_)
        (let ((_%$e116051%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass116049%_ '13 '#f '#f))))
          (if _%$e116051%_
              _%$e116051%_
              (let ((_%tab116055%_
                     (let ((__obj116646
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj116646)
                       __obj116646)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass116049%_
                   _%tab116055%_
                   '13
                   '#f
                   '#f))
                _%tab116055%_)))))
    (define create-prototype
      (lambda (_%descriptor115889%_ _%klass115890%_ _%obj-klass115891%_)
        (let ((_%method-table115893%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115891%_))))
          (let _%loop115896%_ ((_%rest115899%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115889%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115901%_ '0)
                               (_%methods115903%_ '()))
            (let* ((_%rest115905115913%_ _%rest115899%_)
                   (_%else115907115969%_
                    (lambda ()
                      (let ((_%prototype115921%_
                             (let ((__obj116647
                                    (let ((__tmp116662
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115901%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115890%_
                                       __tmp116662))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116647 '#f))
                               __obj116647)))
                        (let _%loop115924%_ ((_%rest115926%_ _%methods115903%_)
                                             (_%off115927%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115901%_ '1))))
                          (let* ((_%rest115929115937%_ _%rest115926%_)
                                 (_%else115931115950%_
                                  (lambda ()
                                    (let ((_%tab115945%_
                                           (class-type-interface-table
                                            _%obj-klass115891%_)))
                                      (____prototype-table-set!
                                       _%tab115945%_
                                       _%descriptor115889%_
                                       _%prototype115921%_)
                                      ((lambda (_%prototype115948%_)
                                         _%prototype115948%_)
                                       _%prototype115921%_))))
                                 (_%K115933115957%_
                                  (lambda (_%rest115953%_ _%method115954%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115921%_
                                       _%method115954%_
                                       _%off115927%_
                                       _%klass115890%_
                                       '#f))
                                    (_%loop115924%_
                                     _%rest115953%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115927%_ '1))))))
                            (if (pair? _%rest115929115937%_)
                                (let ((_%hd115934115960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115929115937%_)))
                                      (_%tl115935115962%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115929115937%_))))
                                  (let* ((_%method115965%_ _%hd115934115960%_)
                                         (_%rest115967%_ _%tl115935115962%_))
                                    (_%K115933115957%_
                                     _%rest115967%_
                                     _%method115965%_)))
                                (_%else115931115950%_)))))))
                   (_%K115909116037%_
                    (lambda (_%rest115972%_ _%method-spec115973%_)
                      (if (pair? _%method-spec115973%_)
                          (let _%loop-inner115977%_ ((_%methods-rest115980%_
                                                      _%method-spec115973%_))
                            (let* ((_%methods-rest115982115990%_
                                    _%methods-rest115980%_)
                                   (_%else115984116002%_
                                    (lambda ()
                                      (let ((_%tab115998%_
                                             (class-type-interface-table
                                              _%obj-klass115891%_)))
                                        (____prototype-table-set!
                                         _%tab115998%_
                                         _%descriptor115889%_
                                         '#!void)
                                        ((lambda (_%method116000%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor115889%_
                                            'class:
                                            _%obj-klass115891%_
                                            'method:
                                            _%method116000%_)
                                           '#!void)
                                         _%method-spec115973%_))))
                                   (_%K115986116015%_
                                    (lambda (_%methods-rest116005%_
                                             _%method-name116006%_)
                                      (let ((_%$e116009%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115893%_
                                                _%method-name116006%_
                                                '#f))))
                                        (if _%$e116009%_
                                            ((lambda (_%method116012%_)
                                               (_%loop115896%_
                                                _%rest115972%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115901%_ '1))
                                                (cons _%method116012%_
                                                      _%methods115903%_)))
                                             _%$e116009%_)
                                            (_%loop-inner115977%_
                                             _%methods-rest116005%_))))))
                              (if (pair? _%methods-rest115982115990%_)
                                  (let ((_%hd115987116018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115982115990%_)))
                                        (_%tl115988116020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115982115990%_))))
                                    (let* ((_%method-name116023%_
                                            _%hd115987116018%_)
                                           (_%methods-rest116025%_
                                            _%tl115988116020%_))
                                      (_%K115986116015%_
                                       _%methods-rest116025%_
                                       _%method-name116023%_)))
                                  (_%else115984116002%_))))
                          (let ((_%$e116027%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115893%_
                                    _%method-spec115973%_
                                    '#f))))
                            (if _%$e116027%_
                                ((lambda (_%method116030%_)
                                   (_%loop115896%_
                                    _%rest115972%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115901%_ '1))
                                    (cons _%method116030%_ _%methods115903%_)))
                                 _%$e116027%_)
                                (let ((_%tab116033%_
                                       (class-type-interface-table
                                        _%obj-klass115891%_)))
                                  (____prototype-table-set!
                                   _%tab116033%_
                                   _%descriptor115889%_
                                   '#!void)
                                  ((lambda (_%method116035%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor115889%_
                                      'class:
                                      _%obj-klass115891%_
                                      'method:
                                      _%method116035%_)
                                     '#!void)
                                   _%method-spec115973%_))))))))
              (if (pair? _%rest115905115913%_)
                  (let ((_%hd115910116040%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115905115913%_)))
                        (_%tl115911116042%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115905115913%_))))
                    (let* ((_%method-spec116045%_ _%hd115910116040%_)
                           (_%rest116047%_ _%tl115911116042%_))
                      (_%K115909116037%_
                       _%rest116047%_
                       _%method-spec116045%_)))
                  (_%else115907115969%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor115729%_ _%klass115730%_ _%obj-klass115731%_)
        (let ((_%method-table115733%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass115731%_))))
          (let _%loop115736%_ ((_%rest115739%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor115729%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count115741%_ '0)
                               (_%methods115743%_ '()))
            (let* ((_%rest115745115753%_ _%rest115739%_)
                   (_%else115747115809%_
                    (lambda ()
                      (let ((_%prototype115761%_
                             (let ((__obj116648
                                    (let ((__tmp116663
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count115741%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass115730%_
                                       __tmp116663))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj116648 '#f))
                               __obj116648)))
                        (let _%loop115764%_ ((_%rest115766%_ _%methods115743%_)
                                             (_%off115767%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count115741%_ '1))))
                          (let* ((_%rest115769115777%_ _%rest115766%_)
                                 (_%else115771115790%_
                                  (lambda ()
                                    (let ((_%tab115785%_
                                           (class-type-interface-table
                                            _%obj-klass115731%_)))
                                      (____prototype-table-set!
                                       _%tab115785%_
                                       _%descriptor115729%_
                                       _%prototype115761%_)
                                      ((lambda (_%prototype115788%_)
                                         _%prototype115788%_)
                                       _%prototype115761%_))))
                                 (_%K115773115797%_
                                  (lambda (_%rest115793%_ _%method115794%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype115761%_
                                       _%method115794%_
                                       _%off115767%_
                                       _%klass115730%_
                                       '#f))
                                    (_%loop115764%_
                                     _%rest115793%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off115767%_ '1))))))
                            (if (pair? _%rest115769115777%_)
                                (let ((_%hd115774115800%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest115769115777%_)))
                                      (_%tl115775115802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest115769115777%_))))
                                  (let* ((_%method115805%_ _%hd115774115800%_)
                                         (_%rest115807%_ _%tl115775115802%_))
                                    (_%K115773115797%_
                                     _%rest115807%_
                                     _%method115805%_)))
                                (_%else115771115790%_)))))))
                   (_%K115749115877%_
                    (lambda (_%rest115812%_ _%method-spec115813%_)
                      (if (pair? _%method-spec115813%_)
                          (let _%loop-inner115817%_ ((_%methods-rest115820%_
                                                      _%method-spec115813%_))
                            (let* ((_%methods-rest115822115830%_
                                    _%methods-rest115820%_)
                                   (_%else115824115842%_
                                    (lambda ()
                                      (let ((_%tab115838%_
                                             (class-type-interface-table
                                              _%obj-klass115731%_)))
                                        (____prototype-table-set!
                                         _%tab115838%_
                                         _%descriptor115729%_
                                         '#!void)
                                        ((lambda (_%method115840%_) '#f)
                                         _%method-spec115813%_))))
                                   (_%K115826115855%_
                                    (lambda (_%methods-rest115845%_
                                             _%method-name115846%_)
                                      (let ((_%$e115849%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table115733%_
                                                _%method-name115846%_
                                                '#f))))
                                        (if _%$e115849%_
                                            ((lambda (_%method115852%_)
                                               (_%loop115736%_
                                                _%rest115812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count115741%_ '1))
                                                (cons _%method115852%_
                                                      _%methods115743%_)))
                                             _%$e115849%_)
                                            (_%loop-inner115817%_
                                             _%methods-rest115845%_))))))
                              (if (pair? _%methods-rest115822115830%_)
                                  (let ((_%hd115827115858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest115822115830%_)))
                                        (_%tl115828115860%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest115822115830%_))))
                                    (let* ((_%method-name115863%_
                                            _%hd115827115858%_)
                                           (_%methods-rest115865%_
                                            _%tl115828115860%_))
                                      (_%K115826115855%_
                                       _%methods-rest115865%_
                                       _%method-name115863%_)))
                                  (_%else115824115842%_))))
                          (let ((_%$e115867%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table115733%_
                                    _%method-spec115813%_
                                    '#f))))
                            (if _%$e115867%_
                                ((lambda (_%method115870%_)
                                   (_%loop115736%_
                                    _%rest115812%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count115741%_ '1))
                                    (cons _%method115870%_ _%methods115743%_)))
                                 _%$e115867%_)
                                (let ((_%tab115873%_
                                       (class-type-interface-table
                                        _%obj-klass115731%_)))
                                  (____prototype-table-set!
                                   _%tab115873%_
                                   _%descriptor115729%_
                                   '#!void)
                                  ((lambda (_%method115875%_) '#f)
                                   _%method-spec115813%_))))))))
              (if (pair? _%rest115745115753%_)
                  (let ((_%hd115750115880%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest115745115753%_)))
                        (_%tl115751115882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest115745115753%_))))
                    (let* ((_%method-spec115885%_ _%hd115750115880%_)
                           (_%rest115887%_ _%tl115751115882%_))
                      (_%K115749115877%_
                       _%rest115887%_
                       _%method-spec115885%_)))
                  (_%else115747115809%_)))))))
    (define cast
      (lambda (_%descriptor115635%_ _%obj115637%_)
        (let* ((_%klass115640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115635%_ '1 '#f '#f)))
               (_%klass-id115643%_
                (let () (declare (not safe)) (##type-id _%klass115640%_))))
          (let _%loop115647%_ ((_%obj115650%_ _%obj115637%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115653%_
                    (let () (declare (not safe)) (class-of _%obj115650%_)))
                   (_%obj-klass-id115656%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115653%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115643%_ _%obj-klass-id115656%_))
                  ((lambda (_%obj115661%_) _%obj115661%_) _%obj115650%_)
                  (if (interface-subclass? _%obj-klass115653%_)
                      (let* ((_%tab115664%_
                              (class-type-interface-table _%obj-klass115653%_))
                             (_%$e115667%_
                              (____prototype-table-get
                               _%tab115664%_
                               _%descriptor115635%_)))
                        (if _%$e115667%_
                            ((lambda (_%prototype115670%_)
                               (if (eq? _%prototype115670%_ '#!void)
                                   (_%loop115647%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115650%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115673%_
                                             _%prototype115674%_
                                             _%obj115675%_)
                                      (if _%prototype115674%_
                                          (let ((_%instance115677%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115674%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115677%_
                                               _%obj115675%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115677%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115673%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115675%_)))
                                            '#!void)))
                                    _%descriptor115635%_
                                    _%prototype115670%_
                                    _%obj115650%_)))
                             _%$e115667%_)
                            (let ((_%$e115679%_
                                   (try-create-prototype
                                    _%descriptor115635%_
                                    _%klass115640%_
                                    _%obj-klass115653%_)))
                              (if _%$e115679%_
                                  ((lambda (_%prototype115682%_)
                                     ((lambda (_%descriptor115684%_
                                               _%prototype115685%_
                                               _%obj115686%_)
                                        (if _%prototype115685%_
                                            (let ((_%instance115688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115685%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115688%_
                                                 _%obj115686%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115688%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115684%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115686%_)))
                                              '#!void)))
                                      _%descriptor115635%_
                                      _%prototype115682%_
                                      _%obj115650%_))
                                   _%$e115679%_)
                                  (_%loop115647%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115650%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115692%_
                              (class-type-interface-table _%obj-klass115653%_))
                             (_%$e115694%_
                              (____prototype-table-get
                               _%tab115692%_
                               _%descriptor115635%_)))
                        (if _%$e115694%_
                            ((lambda (_%prototype115697%_)
                               (if (eq? _%prototype115697%_ '#!void)
                                   ((lambda (_%descriptor115699%_
                                             _%prototype115700%_
                                             _%obj115701%_)
                                      (if _%prototype115700%_
                                          (let ((_%instance115703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115700%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115703%_
                                               _%obj115701%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115703%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115699%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115701%_)))
                                            '#!void)))
                                    _%descriptor115635%_
                                    '#f
                                    _%obj115650%_)
                                   ((lambda (_%descriptor115705%_
                                             _%prototype115706%_
                                             _%obj115707%_)
                                      (if _%prototype115706%_
                                          (let ((_%instance115709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115706%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115709%_
                                               _%obj115707%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115709%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor115705%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj115707%_)))
                                            '#!void)))
                                    _%descriptor115635%_
                                    _%prototype115697%_
                                    _%obj115650%_)))
                             _%$e115694%_)
                            (let ((_%$e115711%_
                                   (create-prototype
                                    _%descriptor115635%_
                                    _%klass115640%_
                                    _%obj-klass115653%_)))
                              (if _%$e115711%_
                                  ((lambda (_%prototype115714%_)
                                     ((lambda (_%descriptor115716%_
                                               _%prototype115717%_
                                               _%obj115718%_)
                                        (if _%prototype115717%_
                                            (let ((_%instance115720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115717%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115720%_
                                                 _%obj115718%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115720%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor115716%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj115718%_)))
                                              '#!void)))
                                      _%descriptor115635%_
                                      _%prototype115714%_
                                      _%obj115650%_))
                                   _%$e115711%_)
                                  ((lambda (_%descriptor115723%_
                                            _%prototype115724%_
                                            _%obj115725%_)
                                     (if _%prototype115724%_
                                         (let ((_%instance115727%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115724%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115727%_
                                              _%obj115725%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115727%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor115723%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj115725%_)))
                                           '#!void)))
                                   _%descriptor115635%_
                                   '#f
                                   _%obj115650%_))))))))))))
    (define try-cast
      (lambda (_%descriptor115541%_ _%obj115543%_)
        (let* ((_%klass115546%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115541%_ '1 '#f '#f)))
               (_%klass-id115549%_
                (let () (declare (not safe)) (##type-id _%klass115546%_))))
          (let _%loop115553%_ ((_%obj115556%_ _%obj115543%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115559%_
                    (let () (declare (not safe)) (class-of _%obj115556%_)))
                   (_%obj-klass-id115562%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115559%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115549%_ _%obj-klass-id115562%_))
                  ((lambda (_%obj115567%_) _%obj115567%_) _%obj115556%_)
                  (if (interface-subclass? _%obj-klass115559%_)
                      (let* ((_%tab115570%_
                              (class-type-interface-table _%obj-klass115559%_))
                             (_%$e115573%_
                              (____prototype-table-get
                               _%tab115570%_
                               _%descriptor115541%_)))
                        (if _%$e115573%_
                            ((lambda (_%prototype115576%_)
                               (if (eq? _%prototype115576%_ '#!void)
                                   (_%loop115553%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115556%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115579%_
                                             _%prototype115580%_
                                             _%obj115581%_)
                                      (if _%prototype115580%_
                                          (let ((_%instance115583%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115580%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115583%_
                                               _%obj115581%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115583%_)
                                          '#f))
                                    _%descriptor115541%_
                                    _%prototype115576%_
                                    _%obj115556%_)))
                             _%$e115573%_)
                            (let ((_%$e115585%_
                                   (try-create-prototype
                                    _%descriptor115541%_
                                    _%klass115546%_
                                    _%obj-klass115559%_)))
                              (if _%$e115585%_
                                  ((lambda (_%prototype115588%_)
                                     ((lambda (_%descriptor115590%_
                                               _%prototype115591%_
                                               _%obj115592%_)
                                        (if _%prototype115591%_
                                            (let ((_%instance115594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115591%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115594%_
                                                 _%obj115592%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115594%_)
                                            '#f))
                                      _%descriptor115541%_
                                      _%prototype115588%_
                                      _%obj115556%_))
                                   _%$e115585%_)
                                  (_%loop115553%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115556%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115598%_
                              (class-type-interface-table _%obj-klass115559%_))
                             (_%$e115600%_
                              (____prototype-table-get
                               _%tab115598%_
                               _%descriptor115541%_)))
                        (if _%$e115600%_
                            ((lambda (_%prototype115603%_)
                               (if (eq? _%prototype115603%_ '#!void)
                                   ((lambda (_%descriptor115605%_
                                             _%prototype115606%_
                                             _%obj115607%_)
                                      (if _%prototype115606%_
                                          (let ((_%instance115609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115606%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115609%_
                                               _%obj115607%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115609%_)
                                          '#f))
                                    _%descriptor115541%_
                                    '#f
                                    _%obj115556%_)
                                   ((lambda (_%descriptor115611%_
                                             _%prototype115612%_
                                             _%obj115613%_)
                                      (if _%prototype115612%_
                                          (let ((_%instance115615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype115612%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance115615%_
                                               _%obj115613%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance115615%_)
                                          '#f))
                                    _%descriptor115541%_
                                    _%prototype115603%_
                                    _%obj115556%_)))
                             _%$e115600%_)
                            (let ((_%$e115617%_
                                   (try-create-prototype
                                    _%descriptor115541%_
                                    _%klass115546%_
                                    _%obj-klass115559%_)))
                              (if _%$e115617%_
                                  ((lambda (_%prototype115620%_)
                                     ((lambda (_%descriptor115622%_
                                               _%prototype115623%_
                                               _%obj115624%_)
                                        (if _%prototype115623%_
                                            (let ((_%instance115626%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype115623%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance115626%_
                                                 _%obj115624%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance115626%_)
                                            '#f))
                                      _%descriptor115541%_
                                      _%prototype115620%_
                                      _%obj115556%_))
                                   _%$e115617%_)
                                  ((lambda (_%descriptor115629%_
                                            _%prototype115630%_
                                            _%obj115631%_)
                                     (if _%prototype115630%_
                                         (let ((_%instance115633%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype115630%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance115633%_
                                              _%obj115631%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance115633%_)
                                         '#f))
                                   _%descriptor115541%_
                                   '#f
                                   _%obj115556%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor115459%_ _%obj115461%_)
        (let* ((_%klass115464%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115459%_ '1 '#f '#f)))
               (_%klass-id115467%_
                (let () (declare (not safe)) (##type-id _%klass115464%_))))
          (let _%loop115471%_ ((_%obj115474%_ _%obj115461%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115477%_
                    (let () (declare (not safe)) (class-of _%obj115474%_)))
                   (_%obj-klass-id115480%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115477%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115467%_ _%obj-klass-id115480%_))
                  ((lambda (_%obj115485%_) '#t) _%obj115474%_)
                  (if (interface-subclass? _%obj-klass115477%_)
                      (let* ((_%tab115488%_
                              (class-type-interface-table _%obj-klass115477%_))
                             (_%$e115491%_
                              (____prototype-table-get
                               _%tab115488%_
                               _%descriptor115459%_)))
                        (if _%$e115491%_
                            ((lambda (_%prototype115494%_)
                               (if (eq? _%prototype115494%_ '#!void)
                                   (_%loop115471%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115474%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor115497%_
                                             _%prototype115498%_
                                             _%obj115499%_)
                                      (if _%prototype115498%_ '#t '#f))
                                    _%descriptor115459%_
                                    _%prototype115494%_
                                    _%obj115474%_)))
                             _%$e115491%_)
                            (let ((_%$e115501%_
                                   (try-create-prototype
                                    _%descriptor115459%_
                                    _%klass115464%_
                                    _%obj-klass115477%_)))
                              (if _%$e115501%_
                                  ((lambda (_%prototype115504%_)
                                     ((lambda (_%descriptor115506%_
                                               _%prototype115507%_
                                               _%obj115508%_)
                                        (if _%prototype115507%_ '#t '#f))
                                      _%descriptor115459%_
                                      _%prototype115504%_
                                      _%obj115474%_))
                                   _%$e115501%_)
                                  (_%loop115471%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115474%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115512%_
                              (class-type-interface-table _%obj-klass115477%_))
                             (_%$e115514%_
                              (____prototype-table-get
                               _%tab115512%_
                               _%descriptor115459%_)))
                        (if _%$e115514%_
                            ((lambda (_%prototype115517%_)
                               (if (eq? _%prototype115517%_ '#!void)
                                   ((lambda (_%descriptor115519%_
                                             _%prototype115520%_
                                             _%obj115521%_)
                                      (if _%prototype115520%_ '#t '#f))
                                    _%descriptor115459%_
                                    '#f
                                    _%obj115474%_)
                                   ((lambda (_%descriptor115523%_
                                             _%prototype115524%_
                                             _%obj115525%_)
                                      (if _%prototype115524%_ '#t '#f))
                                    _%descriptor115459%_
                                    _%prototype115517%_
                                    _%obj115474%_)))
                             _%$e115514%_)
                            (let ((_%$e115527%_
                                   (try-create-prototype
                                    _%descriptor115459%_
                                    _%klass115464%_
                                    _%obj-klass115477%_)))
                              (if _%$e115527%_
                                  ((lambda (_%prototype115530%_)
                                     ((lambda (_%descriptor115532%_
                                               _%prototype115533%_
                                               _%obj115534%_)
                                        (if _%prototype115533%_ '#t '#f))
                                      _%descriptor115459%_
                                      _%prototype115530%_
                                      _%obj115474%_))
                                   _%$e115527%_)
                                  ((lambda (_%descriptor115537%_
                                            _%prototype115538%_
                                            _%obj115539%_)
                                     (if _%prototype115538%_ '#t '#f))
                                   _%descriptor115459%_
                                   '#f
                                   _%obj115474%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor115422%_
               _%obj115423%_
               _%with-prototype+receiver115424%_
               _%with-receiver115425%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor115422%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor115429%_ _%descriptor115422%_))
              (if (procedure? _%with-prototype+receiver115424%_)
                  (let ((_%with-prototype+receiver115439%_
                         _%with-prototype+receiver115424%_))
                    (if (procedure? _%with-receiver115425%_)
                        (let ((_%with-receiver115449%_
                               _%with-receiver115425%_))
                          (__with-prototype
                           _%descriptor115429%_
                           _%obj115423%_
                           _%with-prototype+receiver115439%_
                           _%with-receiver115449%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver115425%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver115424%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor115422%_)
              '#!void))))
    (define __with-prototype
      (lambda (_%descriptor115340%_
               _%obj115341%_
               _%with-prototype+receiver115342%_
               _%with-receiver115343%_)
        (let* ((_%descriptor115346%_ _%descriptor115340%_)
               (_%with-prototype+receiver115354%_
                _%with-prototype+receiver115342%_)
               (_%with-receiver115362%_ _%with-receiver115343%_)
               (_%klass115371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor115346%_ '1 '#f '#f)))
               (_%klass-id115374%_
                (let () (declare (not safe)) (##type-id _%klass115371%_))))
          (let _%loop115378%_ ((_%obj115381%_ _%obj115341%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass115384%_
                    (let () (declare (not safe)) (class-of _%obj115381%_)))
                   (_%obj-klass-id115387%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass115384%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id115374%_ _%obj-klass-id115387%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver115362%_ _%obj115381%_))
                  (if (interface-subclass? _%obj-klass115384%_)
                      (let* ((_%tab115393%_
                              (class-type-interface-table _%obj-klass115384%_))
                             (_%$e115396%_
                              (____prototype-table-get
                               _%tab115393%_
                               _%descriptor115346%_)))
                        (if _%$e115396%_
                            ((lambda (_%prototype115399%_)
                               (if (eq? _%prototype115399%_ '#!void)
                                   (_%loop115378%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj115381%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115354%_
                                      _%descriptor115346%_
                                      _%prototype115399%_
                                      _%obj115381%_))))
                             _%$e115396%_)
                            (let ((_%$e115402%_
                                   (try-create-prototype
                                    _%descriptor115346%_
                                    _%klass115371%_
                                    _%obj-klass115384%_)))
                              (if _%$e115402%_
                                  ((lambda (_%prototype115405%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver115354%_
                                        _%descriptor115346%_
                                        _%prototype115405%_
                                        _%obj115381%_)))
                                   _%$e115402%_)
                                  (_%loop115378%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj115381%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab115409%_
                              (class-type-interface-table _%obj-klass115384%_))
                             (_%$e115411%_
                              (____prototype-table-get
                               _%tab115409%_
                               _%descriptor115346%_)))
                        (if _%$e115411%_
                            ((lambda (_%prototype115414%_)
                               (if (eq? _%prototype115414%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115354%_
                                      _%descriptor115346%_
                                      '#f
                                      _%obj115381%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver115354%_
                                      _%descriptor115346%_
                                      _%prototype115414%_
                                      _%obj115381%_))))
                             _%$e115411%_)
                            (let ((_%$e115416%_
                                   (create-prototype
                                    _%descriptor115346%_
                                    _%klass115371%_
                                    _%obj-klass115384%_)))
                              (if _%$e115416%_
                                  ((lambda (_%prototype115419%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver115354%_
                                        _%descriptor115346%_
                                        _%prototype115419%_
                                        _%obj115381%_)))
                                   _%$e115416%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver115354%_
                                     _%descriptor115346%_
                                     '#f
                                     _%obj115381%_)))))))))))))))
