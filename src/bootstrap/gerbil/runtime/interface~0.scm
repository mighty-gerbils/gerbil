(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1781119039)
  (begin
    (define CastError::t
      (make-class-type
       'CastError::t
       'CastError
       (list Error::t)
       '()
       '()
       ':init!))
    (define CastError? (make-class-predicate CastError::t))
    (define make-CastError
      (lambda _%$args126760%_
        (apply make-instance CastError::t _%$args126760%_)))
    (define CastError-message (make-class-slot-accessor CastError::t 'message))
    (define CastError-irritants
      (make-class-slot-accessor CastError::t 'irritants))
    (define CastError-where (make-class-slot-accessor CastError::t 'where))
    (define CastError-continuation
      (make-class-slot-accessor CastError::t 'continuation))
    (define CastError-message-set!
      (make-class-slot-mutator CastError::t 'message))
    (define CastError-irritants-set!
      (make-class-slot-mutator CastError::t 'irritants))
    (define CastError-where-set! (make-class-slot-mutator CastError::t 'where))
    (define CastError-continuation-set!
      (make-class-slot-mutator CastError::t 'continuation))
    (define &CastError-message
      (make-class-slot-unchecked-accessor CastError::t 'message))
    (define &CastError-irritants
      (make-class-slot-unchecked-accessor CastError::t 'irritants))
    (define &CastError-where
      (make-class-slot-unchecked-accessor CastError::t 'where))
    (define &CastError-continuation
      (make-class-slot-unchecked-accessor CastError::t 'continuation))
    (define &CastError-message-set!
      (make-class-slot-unchecked-mutator CastError::t 'message))
    (define &CastError-irritants-set!
      (make-class-slot-unchecked-mutator CastError::t 'irritants))
    (define &CastError-where-set!
      (make-class-slot-unchecked-mutator CastError::t 'where))
    (define &CastError-continuation-set!
      (make-class-slot-unchecked-mutator CastError::t 'continuation))
    (define CastError:::init! Error:::init!)
    (bind-method! CastError::t ':init! CastError:::init! '#f)
    (define raise-cast-error
      (lambda (_%where126634%_ _%message126635%_ . _%irritants126636%_)
        (raise (make-CastError
                _%message126635%_
                'where:
                _%where126634%_
                'irritants:
                _%irritants126636%_))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (make-class-type
       'interface-instance::t
       'interface-instance
       (list)
       '(object)
       (cons (cons 'struct: '#t) '((print: object)))
       '#f))
    (define interface-instance? (make-class-predicate interface-instance::t))
    (define make-interface-instance
      (lambda _%$args126631%_
        (apply make-instance interface-instance::t _%$args126631%_)))
    (define interface-instance-object
      (make-class-slot-accessor interface-instance::t 'object))
    (define interface-instance-object-set!
      (make-class-slot-mutator interface-instance::t 'object))
    (define &interface-instance-object
      (make-class-slot-unchecked-accessor interface-instance::t 'object))
    (define &interface-instance-object-set!
      (make-class-slot-unchecked-mutator interface-instance::t 'object))
    (define interface-descriptor::t
      (make-class-type
       'interface-descriptor::t
       'interface-descriptor
       (list)
       '(type methods index)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: type index))))
       ':init!))
    (define interface-descriptor?
      (make-class-predicate interface-descriptor::t))
    (define make-interface-descriptor
      (lambda _%$args126628%_
        (apply make-instance interface-descriptor::t _%$args126628%_)))
    (define interface-descriptor-type
      (make-class-slot-accessor interface-descriptor::t 'type))
    (define interface-descriptor-methods
      (make-class-slot-accessor interface-descriptor::t 'methods))
    (define interface-descriptor-index
      (make-class-slot-accessor interface-descriptor::t 'index))
    (define interface-descriptor-type-set!
      (make-class-slot-mutator interface-descriptor::t 'type))
    (define interface-descriptor-methods-set!
      (make-class-slot-mutator interface-descriptor::t 'methods))
    (define interface-descriptor-index-set!
      (make-class-slot-mutator interface-descriptor::t 'index))
    (define &interface-descriptor-type
      (make-class-slot-unchecked-accessor interface-descriptor::t 'type))
    (define &interface-descriptor-methods
      (make-class-slot-unchecked-accessor interface-descriptor::t 'methods))
    (define &interface-descriptor-index
      (make-class-slot-unchecked-accessor interface-descriptor::t 'index))
    (define &interface-descriptor-type-set!
      (make-class-slot-unchecked-mutator interface-descriptor::t 'type))
    (define &interface-descriptor-methods-set!
      (make-class-slot-unchecked-mutator interface-descriptor::t 'methods))
    (define &interface-descriptor-index-set!
      (make-class-slot-unchecked-mutator interface-descriptor::t 'index))
    (define __next-interface-index '0)
    (define __next-interface-index-lock (vector '0 '#f))
    (define __get-next-interface-index
      (lambda ()
        (let ()
          (declare (not interrupts-enabled))
          (let _%again126606%_ ((_%spin126609%_ '0))
            (if (let ((__tmp126762
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp126762 '0))
                (let ((__tmp126763 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp126763))
                (if (let () (declare (not safe)) (##fx< _%spin126609%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again126606%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin126609%_ '1))))
                    (let ((_%owner126615%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner126615%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (not (macro-thread-end-condvar _%owner126615%_))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!))
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again126606%_ '0)))))))))
        (let ((_%$r126623%_
               (let ((_%index126621%_ __next-interface-index))
                 (set! __next-interface-index (fx+ _%index126621%_ '1))
                 _%index126621%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r126623%_)))
    (define interface-descriptor:::init!
      (lambda (_%self126587%_ _%type126588%_ _%methods126589%_)
        (let ((_%self126592%_ _%self126587%_))
          (&interface-descriptor-type-set! _%self126592%_ _%type126588%_)
          (&interface-descriptor-methods-set! _%self126592%_ _%methods126589%_)
          (&interface-descriptor-index-set!
           _%self126592%_
           (__get-next-interface-index)))))
    (bind-method!
     interface-descriptor::t
     ':init!
     interface-descriptor:::init!
     '#f)
    (define prototype-table::t
      (make-class-type
       'prototype-table::t
       'prototype-table
       (list)
       '(lock table)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       ':init!))
    (define prototype-table? (make-class-predicate prototype-table::t))
    (define make-prototype-table
      (lambda _%$args126462%_
        (apply make-instance prototype-table::t _%$args126462%_)))
    (define prototype-table-lock
      (make-class-slot-accessor prototype-table::t 'lock))
    (define prototype-table-table
      (make-class-slot-accessor prototype-table::t 'table))
    (define prototype-table-lock-set!
      (make-class-slot-mutator prototype-table::t 'lock))
    (define prototype-table-table-set!
      (make-class-slot-mutator prototype-table::t 'table))
    (define &prototype-table-lock
      (make-class-slot-unchecked-accessor prototype-table::t 'lock))
    (define &prototype-table-table
      (make-class-slot-unchecked-accessor prototype-table::t 'table))
    (define &prototype-table-lock-set!
      (make-class-slot-unchecked-mutator prototype-table::t 'lock))
    (define &prototype-table-table-set!
      (make-class-slot-unchecked-mutator prototype-table::t 'table))
    (define prototype-table:::init!
      (lambda (_%self126448%_)
        (let ((_%self126451%_ _%self126448%_))
          (&prototype-table-lock-set! _%self126451%_ (vector '0 '#f))
          (&prototype-table-table-set!
           _%self126451%_
           (make-vector __next-interface-index '#f)))))
    (bind-method! prototype-table::t ':init! prototype-table:::init! '#f)
    (define ____prototype-table-get
      (lambda (_%prototable126301%_ _%descriptor126302%_)
        (let* ((_%prototable126305%_ _%prototable126301%_)
               (_%descriptor126313%_ _%descriptor126302%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab126323%_ (&prototype-table-table _%prototable126305%_))
                (_%index126324%_
                 (&interface-descriptor-index _%descriptor126313%_)))
            (if (fx< _%index126324%_ (vector-length _%tab126323%_))
                (vector-ref _%tab126323%_ _%index126324%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable126280%_ _%descriptor126281%_)
        (let* ((_%prototable126284%_ _%prototable126280%_)
               (_%descriptor126292%_ _%descriptor126281%_))
          (____prototype-table-get
           _%prototable126284%_
           _%descriptor126292%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable126226%_ _%descriptor126227%_ _%prototype126228%_)
        (let* ((_%prototable126231%_ _%prototable126226%_)
               (_%descriptor126239%_ _%descriptor126227%_))
          (declare (not safe))
          (let ((_%lock126249%_ (&prototype-table-lock _%prototable126231%_))
                (_%index126250%_
                 (&interface-descriptor-index _%descriptor126239%_)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again126254%_ ((_%spin126257%_ '0))
                (if (##fx= (##vector-cas! _%lock126249%_ '0 '1 '0) '0)
                    (##vector-set! _%lock126249%_ '1 (current-thread))
                    (if (##fx< _%spin126257%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again126254%_ (##fx+ _%spin126257%_ '1)))
                        (let ((_%owner126263%_
                               (##vector-ref _%lock126249%_ '1)))
                          (if (eq? _%owner126263%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (not (macro-thread-end-condvar
                                        _%owner126263%_))
                                  (##thread-deadlock-action!)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again126254%_ '0)))))))))
            (let ((_%$r126275%_
                   (let ((_%tab126269%_
                          (&prototype-table-table _%prototable126231%_)))
                     (if (fx< _%index126250%_ (vector-length _%tab126269%_))
                         (vector-set!
                          _%tab126269%_
                          _%index126250%_
                          _%prototype126228%_)
                         (let ((_%new-size126271%_ __next-interface-index))
                           (if (fx< _%index126250%_ _%new-size126271%_)
                               (let ((_%new-tab126273%_
                                      (make-vector _%new-size126271%_ '#f)))
                                 (subvector-move!
                                  _%tab126269%_
                                  '0
                                  (vector-length _%tab126269%_)
                                  _%new-tab126273%_
                                  '0)
                                 (vector-set!
                                  _%new-tab126273%_
                                  _%index126250%_
                                  _%prototype126228%_)
                                 (&prototype-table-table-set!
                                  _%prototable126231%_
                                  _%new-tab126273%_))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor126239%_
                                      'index:
                                      _%index126250%_
                                      'max-index:
                                      _%new-size126271%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock126249%_ '1 '#f)
                  (##vector-cas! _%lock126249%_ '0 '0 '1)))
              _%$r126275%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable126204%_ _%descriptor126205%_ _%prototype126206%_)
        (let* ((_%prototable126209%_ _%prototable126204%_)
               (_%descriptor126217%_ _%descriptor126205%_))
          (____prototype-table-set!
           _%prototable126209%_
           _%descriptor126217%_
           _%prototype126206%_))))
    (define interface-subclass?
      (lambda (_%klass126197%_)
        (let ((_%$%super126198126200%_
               (let () (declare (not safe)) (##type-super _%klass126197%_))))
          (if _%$%super126198126200%_
              (let ((_%super126202%_ _%$%super126198126200%_))
                (eq? (let () (declare (not safe)) (##type-id _%super126202%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass126189%_)
        (let ((_%$e126191%_ (&class-type-interface _%klass126189%_)))
          (if _%$e126191%_
              _%$e126191%_
              (let ((_%tab126195%_ (make-prototype-table)))
                (&class-type-interface-set! _%klass126189%_ _%tab126195%_)
                _%tab126195%_)))))
    (define create-prototype
      (lambda (_%descriptor125872%_ _%klass125873%_ _%obj-klass125874%_)
        (let ((_%method-table125892%_
               (let ((_%klass125876%_ _%obj-klass125874%_))
                 (if (class-type? _%klass125876%_)
                     (let ((_%klass125881%_ _%klass125876%_))
                       (__specialize-class _%klass125881%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass125876%_)
                       (void))))))
          (let _%loop125895%_ ((_%rest125898%_
                                (&interface-descriptor-methods
                                 _%descriptor125872%_))
                               (_%count125900%_ '0)
                               (_%methods125902%_ '()))
            (let* ((_%$%rest125904125912%_ _%rest125898%_)
                   (_%$%E125907125916%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest125904125912%_
                             '([method-spec . rest])
                             'else)
                      (void)))
                   (_%$%else125906126039%_
                    (lambda ()
                      (let ((_%prototype125955%_
                             (let* ((_%klass125920%_ _%klass125873%_)
                                    (_%k125923%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count125900%_ '2))))
                               (if (class-type? _%klass125920%_)
                                   (let ((_%klass125928%_ _%klass125920%_))
                                     (if (fixnum? _%k125923%_)
                                         (let ((_%k125945%_ _%k125923%_))
                                           (__make-object
                                            _%klass125928%_
                                            _%k125945%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/interface
                                            'contract:
                                            'fixnum?
                                            'value:
                                            _%k125923%_)
                                           (void))))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass125920%_)
                                     (void))))))
                        (let _%loop125958%_ ((_%rest125960%_ _%methods125902%_)
                                             (_%off125961%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count125900%_ '1))))
                          (let* ((_%$%rest125963125971%_ _%rest125960%_)
                                 (_%$%E125966125975%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%rest125963125971%_
                                           '([method . rest])
                                           'else)
                                    (void)))
                                 (_%$%else125965126020%_
                                  (lambda ()
                                    (let ((_%tab125979%_
                                           (class-type-interface-table
                                            _%obj-klass125874%_)))
                                      (let* ((_%prototable125982%_
                                              _%tab125979%_)
                                             (_%descriptor125985%_
                                              _%descriptor125872%_)
                                             (_%prototype125988%_
                                              _%prototype125955%_)
                                             (_%prototable125992%_
                                              _%prototable125982%_)
                                             (_%descriptor126009%_
                                              _%descriptor125985%_))
                                        (____prototype-table-set!
                                         _%prototable125992%_
                                         _%descriptor126009%_
                                         _%prototype125988%_))
                                      ((lambda (_%prototype126018%_)
                                         _%prototype126018%_)
                                       _%prototype125955%_))))
                                 (_%$%K125967126027%_
                                  (lambda (_%rest126023%_ _%method126024%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype125955%_
                                       _%method126024%_
                                       _%off125961%_
                                       _%klass125873%_
                                       '#f))
                                    (_%loop125958%_
                                     _%rest126023%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off125961%_ '1))))))
                            (if (pair? _%$%rest125963125971%_)
                                (let ((_%$%hd125968126030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest125963125971%_)))
                                      (_%$%tl125969126032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest125963125971%_))))
                                  (let* ((_%method126035%_
                                          _%$%hd125968126030%_)
                                         (_%rest126037%_ _%$%tl125969126032%_))
                                    (_%$%K125967126027%_
                                     _%rest126037%_
                                     _%method126035%_)))
                                (_%$%else125965126020%_)))))))
                   (_%$%K125908126177%_
                    (lambda (_%rest126042%_ _%method-spec126043%_)
                      (if (pair? _%method-spec126043%_)
                          (let _%loop-inner126047%_ ((_%methods-rest126050%_
                                                      _%method-spec126043%_))
                            (let* ((_%$%methods-rest126052126060%_
                                    _%methods-rest126050%_)
                                   (_%$%E126055126064%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%$%methods-rest126052126060%_
                                             '([method-name . methods-rest])
                                             'else)
                                      (void)))
                                   (_%$%else126054126110%_
                                    (lambda ()
                                      (let ((_%tab126068%_
                                             (class-type-interface-table
                                              _%obj-klass125874%_)))
                                        (let* ((_%prototable126070%_
                                                _%tab126068%_)
                                               (_%descriptor126073%_
                                                _%descriptor125872%_)
                                               (_%prototype126076%_ '#!void)
                                               (_%prototable126080%_
                                                _%prototable126070%_)
                                               (_%descriptor126099%_
                                                _%descriptor126073%_))
                                          (____prototype-table-set!
                                           _%prototable126080%_
                                           _%descriptor126099%_
                                           _%prototype126076%_))
                                        ((lambda (_%method126108%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor125872%_
                                            'class:
                                            _%obj-klass125874%_
                                            'method:
                                            _%method126108%_)
                                           (void))
                                         _%method-spec126043%_))))
                                   (_%$%K126056126123%_
                                    (lambda (_%methods-rest126113%_
                                             _%method-name126114%_)
                                      (let ((_%$e126117%_
                                             (symbolic-table-ref
                                              _%method-table125892%_
                                              _%method-name126114%_
                                              '#f)))
                                        (if _%$e126117%_
                                            ((lambda (_%method126120%_)
                                               (_%loop125895%_
                                                _%rest126042%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count125900%_ '1))
                                                (cons _%method126120%_
                                                      _%methods125902%_)))
                                             _%$e126117%_)
                                            (_%loop-inner126047%_
                                             _%methods-rest126113%_))))))
                              (if (pair? _%$%methods-rest126052126060%_)
                                  (let ((_%$%hd126057126126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest126052126060%_)))
                                        (_%$%tl126058126128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest126052126060%_))))
                                    (let* ((_%method-name126131%_
                                            _%$%hd126057126126%_)
                                           (_%methods-rest126133%_
                                            _%$%tl126058126128%_))
                                      (_%$%K126056126123%_
                                       _%methods-rest126133%_
                                       _%method-name126131%_)))
                                  (_%$%else126054126110%_))))
                          (let ((_%$e126135%_
                                 (symbolic-table-ref
                                  _%method-table125892%_
                                  _%method-spec126043%_
                                  '#f)))
                            (if _%$e126135%_
                                ((lambda (_%method126138%_)
                                   (_%loop125895%_
                                    _%rest126042%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count125900%_ '1))
                                    (cons _%method126138%_ _%methods125902%_)))
                                 _%$e126135%_)
                                (let ((_%tab126141%_
                                       (class-type-interface-table
                                        _%obj-klass125874%_)))
                                  (let* ((_%prototable126143%_ _%tab126141%_)
                                         (_%descriptor126146%_
                                          _%descriptor125872%_)
                                         (_%prototype126149%_ '#!void)
                                         (_%prototable126153%_
                                          _%prototable126143%_)
                                         (_%descriptor126166%_
                                          _%descriptor126146%_))
                                    (____prototype-table-set!
                                     _%prototable126153%_
                                     _%descriptor126166%_
                                     _%prototype126149%_))
                                  ((lambda (_%method126175%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor125872%_
                                      'class:
                                      _%obj-klass125874%_
                                      'method:
                                      _%method126175%_)
                                     (void))
                                   _%method-spec126043%_))))))))
              (if (pair? _%$%rest125904125912%_)
                  (let ((_%$%hd125909126180%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest125904125912%_)))
                        (_%$%tl125910126182%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest125904125912%_))))
                    (let* ((_%method-spec126185%_ _%$%hd125909126180%_)
                           (_%rest126187%_ _%$%tl125910126182%_))
                      (_%$%K125908126177%_
                       _%rest126187%_
                       _%method-spec126185%_)))
                  (_%$%else125906126039%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor125555%_ _%klass125556%_ _%obj-klass125557%_)
        (let ((_%method-table125575%_
               (let ((_%klass125559%_ _%obj-klass125557%_))
                 (if (class-type? _%klass125559%_)
                     (let ((_%klass125564%_ _%klass125559%_))
                       (__specialize-class _%klass125564%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass125559%_)
                       (void))))))
          (let _%loop125578%_ ((_%rest125581%_
                                (&interface-descriptor-methods
                                 _%descriptor125555%_))
                               (_%count125583%_ '0)
                               (_%methods125585%_ '()))
            (let* ((_%$%rest125587125595%_ _%rest125581%_)
                   (_%$%E125590125599%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest125587125595%_
                             '([method-spec . rest])
                             'else)
                      (void)))
                   (_%$%else125589125722%_
                    (lambda ()
                      (let ((_%prototype125638%_
                             (let* ((_%klass125603%_ _%klass125556%_)
                                    (_%k125606%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count125583%_ '2))))
                               (if (class-type? _%klass125603%_)
                                   (let ((_%klass125611%_ _%klass125603%_))
                                     (if (fixnum? _%k125606%_)
                                         (let ((_%k125628%_ _%k125606%_))
                                           (__make-object
                                            _%klass125611%_
                                            _%k125628%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/interface
                                            'contract:
                                            'fixnum?
                                            'value:
                                            _%k125606%_)
                                           (void))))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass125603%_)
                                     (void))))))
                        (let _%loop125641%_ ((_%rest125643%_ _%methods125585%_)
                                             (_%off125644%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count125583%_ '1))))
                          (let* ((_%$%rest125646125654%_ _%rest125643%_)
                                 (_%$%E125649125658%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%rest125646125654%_
                                           '([method . rest])
                                           'else)
                                    (void)))
                                 (_%$%else125648125703%_
                                  (lambda ()
                                    (let ((_%tab125662%_
                                           (class-type-interface-table
                                            _%obj-klass125557%_)))
                                      (let* ((_%prototable125665%_
                                              _%tab125662%_)
                                             (_%descriptor125668%_
                                              _%descriptor125555%_)
                                             (_%prototype125671%_
                                              _%prototype125638%_)
                                             (_%prototable125675%_
                                              _%prototable125665%_)
                                             (_%descriptor125692%_
                                              _%descriptor125668%_))
                                        (____prototype-table-set!
                                         _%prototable125675%_
                                         _%descriptor125692%_
                                         _%prototype125671%_))
                                      ((lambda (_%prototype125701%_)
                                         _%prototype125701%_)
                                       _%prototype125638%_))))
                                 (_%$%K125650125710%_
                                  (lambda (_%rest125706%_ _%method125707%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype125638%_
                                       _%method125707%_
                                       _%off125644%_
                                       _%klass125556%_
                                       '#f))
                                    (_%loop125641%_
                                     _%rest125706%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off125644%_ '1))))))
                            (if (pair? _%$%rest125646125654%_)
                                (let ((_%$%hd125651125713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest125646125654%_)))
                                      (_%$%tl125652125715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest125646125654%_))))
                                  (let* ((_%method125718%_
                                          _%$%hd125651125713%_)
                                         (_%rest125720%_ _%$%tl125652125715%_))
                                    (_%$%K125650125710%_
                                     _%rest125720%_
                                     _%method125718%_)))
                                (_%$%else125648125703%_)))))))
                   (_%$%K125591125860%_
                    (lambda (_%rest125725%_ _%method-spec125726%_)
                      (if (pair? _%method-spec125726%_)
                          (let _%loop-inner125730%_ ((_%methods-rest125733%_
                                                      _%method-spec125726%_))
                            (let* ((_%$%methods-rest125735125743%_
                                    _%methods-rest125733%_)
                                   (_%$%E125738125747%_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _%$%methods-rest125735125743%_
                                             '([method-name . methods-rest])
                                             'else)
                                      (void)))
                                   (_%$%else125737125793%_
                                    (lambda ()
                                      (let ((_%tab125751%_
                                             (class-type-interface-table
                                              _%obj-klass125557%_)))
                                        (let* ((_%prototable125753%_
                                                _%tab125751%_)
                                               (_%descriptor125756%_
                                                _%descriptor125555%_)
                                               (_%prototype125759%_ '#!void)
                                               (_%prototable125763%_
                                                _%prototable125753%_)
                                               (_%descriptor125782%_
                                                _%descriptor125756%_))
                                          (____prototype-table-set!
                                           _%prototable125763%_
                                           _%descriptor125782%_
                                           _%prototype125759%_))
                                        ((lambda (_%method125791%_) '#f)
                                         _%method-spec125726%_))))
                                   (_%$%K125739125806%_
                                    (lambda (_%methods-rest125796%_
                                             _%method-name125797%_)
                                      (let ((_%$e125800%_
                                             (symbolic-table-ref
                                              _%method-table125575%_
                                              _%method-name125797%_
                                              '#f)))
                                        (if _%$e125800%_
                                            ((lambda (_%method125803%_)
                                               (_%loop125578%_
                                                _%rest125725%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count125583%_ '1))
                                                (cons _%method125803%_
                                                      _%methods125585%_)))
                                             _%$e125800%_)
                                            (_%loop-inner125730%_
                                             _%methods-rest125796%_))))))
                              (if (pair? _%$%methods-rest125735125743%_)
                                  (let ((_%$%hd125740125809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest125735125743%_)))
                                        (_%$%tl125741125811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest125735125743%_))))
                                    (let* ((_%method-name125814%_
                                            _%$%hd125740125809%_)
                                           (_%methods-rest125816%_
                                            _%$%tl125741125811%_))
                                      (_%$%K125739125806%_
                                       _%methods-rest125816%_
                                       _%method-name125814%_)))
                                  (_%$%else125737125793%_))))
                          (let ((_%$e125818%_
                                 (symbolic-table-ref
                                  _%method-table125575%_
                                  _%method-spec125726%_
                                  '#f)))
                            (if _%$e125818%_
                                ((lambda (_%method125821%_)
                                   (_%loop125578%_
                                    _%rest125725%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count125583%_ '1))
                                    (cons _%method125821%_ _%methods125585%_)))
                                 _%$e125818%_)
                                (let ((_%tab125824%_
                                       (class-type-interface-table
                                        _%obj-klass125557%_)))
                                  (let* ((_%prototable125826%_ _%tab125824%_)
                                         (_%descriptor125829%_
                                          _%descriptor125555%_)
                                         (_%prototype125832%_ '#!void)
                                         (_%prototable125836%_
                                          _%prototable125826%_)
                                         (_%descriptor125849%_
                                          _%descriptor125829%_))
                                    (____prototype-table-set!
                                     _%prototable125836%_
                                     _%descriptor125849%_
                                     _%prototype125832%_))
                                  ((lambda (_%method125858%_) '#f)
                                   _%method-spec125726%_))))))))
              (if (pair? _%$%rest125587125595%_)
                  (let ((_%$%hd125592125863%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest125587125595%_)))
                        (_%$%tl125593125865%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest125587125595%_))))
                    (let* ((_%method-spec125868%_ _%$%hd125592125863%_)
                           (_%rest125870%_ _%$%tl125593125865%_))
                      (_%$%K125591125860%_
                       _%rest125870%_
                       _%method-spec125868%_)))
                  (_%$%else125589125722%_)))))))
    (define cast
      (lambda (_%descriptor125389%_ _%obj125391%_)
        (let* ((_%klass125394%_
                (&interface-descriptor-type _%descriptor125389%_))
               (_%klass-id125397%_
                (let () (declare (not safe)) (##type-id _%klass125394%_))))
          (let _%loop125401%_ ((_%obj125404%_ _%obj125391%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass125407%_ (class-of _%obj125404%_))
                   (_%obj-klass-id125410%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass125407%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id125397%_ _%obj-klass-id125410%_))
                  ((lambda (_%obj125415%_) _%obj125415%_) _%obj125404%_)
                  (if (interface-subclass? _%obj-klass125407%_)
                      (let _%loop-interface125418%_ ((_%iface-klass125421%_
                                                      _%obj-klass125407%_))
                        (if _%iface-klass125421%_
                            (let* ((_%tab125424%_
                                    (class-type-interface-table
                                     _%iface-klass125421%_))
                                   (_%$e125466%_
                                    (let* ((_%prototable125427%_ _%tab125424%_)
                                           (_%descriptor125430%_
                                            _%descriptor125389%_)
                                           (_%prototable125434%_
                                            _%prototable125427%_)
                                           (_%descriptor125457%_
                                            _%descriptor125430%_))
                                      (____prototype-table-get
                                       _%prototable125434%_
                                       _%descriptor125457%_))))
                              (if _%$e125466%_
                                  ((lambda (_%prototype125469%_)
                                     (if (void? _%prototype125469%_)
                                         (_%loop-interface125418%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass125421%_)))
                                         ((lambda (_%descriptor125472%_
                                                   _%prototype125473%_
                                                   _%obj125474%_)
                                            (if _%prototype125473%_
                                                (let ((_%instance125476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##structure-copy
                                                          _%prototype125473%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-set!
                                                     _%instance125476%_
                                                     _%obj125474%_
                                                     '1
                                                     '#f
                                                     'cast))
                                                  _%instance125476%_)
                                                (begin
                                                  (raise-cast-error
                                                   'cast
                                                   '"cannot create interface prototype"
                                                   'interface:
                                                   _%descriptor125472%_
                                                   'class:
                                                   (class-of _%obj125474%_))
                                                  (void))))
                                          _%descriptor125389%_
                                          _%prototype125469%_
                                          _%obj125404%_)))
                                   _%$e125466%_)
                                  (let ((_%$e125478%_
                                         (try-create-prototype
                                          _%descriptor125389%_
                                          _%klass125394%_
                                          _%iface-klass125421%_)))
                                    (if _%$e125478%_
                                        ((lambda (_%prototype125481%_)
                                           ((lambda (_%descriptor125483%_
                                                     _%prototype125484%_
                                                     _%obj125485%_)
                                              (if _%prototype125484%_
                                                  (let ((_%instance125487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-copy
                                                            _%prototype125484%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       _%instance125487%_
                                                       _%obj125485%_
                                                       '1
                                                       '#f
                                                       'cast))
                                                    _%instance125487%_)
                                                  (begin
                                                    (raise-cast-error
                                                     'cast
                                                     '"cannot create interface prototype"
                                                     'interface:
                                                     _%descriptor125483%_
                                                     'class:
                                                     (class-of _%obj125485%_))
                                                    (void))))
                                            _%descriptor125389%_
                                            _%prototype125481%_
                                            _%obj125404%_))
                                         _%$e125478%_)
                                        (_%loop-interface125418%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass125421%_)))))))
                            (_%loop125401%_
                             (&interface-instance-object _%obj125404%_))))
                      (let* ((_%tab125491%_
                              (class-type-interface-table _%obj-klass125407%_))
                             (_%$e125520%_
                              (let* ((_%prototable125493%_ _%tab125491%_)
                                     (_%descriptor125496%_
                                      _%descriptor125389%_)
                                     (_%prototable125500%_
                                      _%prototable125493%_)
                                     (_%descriptor125511%_
                                      _%descriptor125496%_))
                                (____prototype-table-get
                                 _%prototable125500%_
                                 _%descriptor125511%_))))
                        (if _%$e125520%_
                            ((lambda (_%prototype125523%_)
                               (if (void? _%prototype125523%_)
                                   ((lambda (_%descriptor125525%_
                                             _%prototype125526%_
                                             _%obj125527%_)
                                      (if _%prototype125526%_
                                          (let ((_%instance125529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype125526%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance125529%_
                                               _%obj125527%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance125529%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor125525%_
                                             'class:
                                             (class-of _%obj125527%_))
                                            (void))))
                                    _%descriptor125389%_
                                    '#f
                                    _%obj125404%_)
                                   ((lambda (_%descriptor125531%_
                                             _%prototype125532%_
                                             _%obj125533%_)
                                      (if _%prototype125532%_
                                          (let ((_%instance125535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype125532%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance125535%_
                                               _%obj125533%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance125535%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor125531%_
                                             'class:
                                             (class-of _%obj125533%_))
                                            (void))))
                                    _%descriptor125389%_
                                    _%prototype125523%_
                                    _%obj125404%_)))
                             _%$e125520%_)
                            (let ((_%$e125537%_
                                   (create-prototype
                                    _%descriptor125389%_
                                    _%klass125394%_
                                    _%obj-klass125407%_)))
                              (if _%$e125537%_
                                  ((lambda (_%prototype125540%_)
                                     ((lambda (_%descriptor125542%_
                                               _%prototype125543%_
                                               _%obj125544%_)
                                        (if _%prototype125543%_
                                            (let ((_%instance125546%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype125543%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance125546%_
                                                 _%obj125544%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance125546%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor125542%_
                                               'class:
                                               (class-of _%obj125544%_))
                                              (void))))
                                      _%descriptor125389%_
                                      _%prototype125540%_
                                      _%obj125404%_))
                                   _%$e125537%_)
                                  ((lambda (_%descriptor125549%_
                                            _%prototype125550%_
                                            _%obj125551%_)
                                     (if _%prototype125550%_
                                         (let ((_%instance125553%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype125550%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance125553%_
                                              _%obj125551%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance125553%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor125549%_
                                            'class:
                                            (class-of _%obj125551%_))
                                           (void))))
                                   _%descriptor125389%_
                                   '#f
                                   _%obj125404%_))))))))))))
    (define try-cast
      (lambda (_%descriptor125223%_ _%obj125225%_)
        (let* ((_%klass125228%_
                (&interface-descriptor-type _%descriptor125223%_))
               (_%klass-id125231%_
                (let () (declare (not safe)) (##type-id _%klass125228%_))))
          (let _%loop125235%_ ((_%obj125238%_ _%obj125225%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass125241%_ (class-of _%obj125238%_))
                   (_%obj-klass-id125244%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass125241%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id125231%_ _%obj-klass-id125244%_))
                  ((lambda (_%obj125249%_) _%obj125249%_) _%obj125238%_)
                  (if (interface-subclass? _%obj-klass125241%_)
                      (let _%loop-interface125252%_ ((_%iface-klass125255%_
                                                      _%obj-klass125241%_))
                        (if _%iface-klass125255%_
                            (let* ((_%tab125258%_
                                    (class-type-interface-table
                                     _%iface-klass125255%_))
                                   (_%$e125300%_
                                    (let* ((_%prototable125261%_ _%tab125258%_)
                                           (_%descriptor125264%_
                                            _%descriptor125223%_)
                                           (_%prototable125268%_
                                            _%prototable125261%_)
                                           (_%descriptor125291%_
                                            _%descriptor125264%_))
                                      (____prototype-table-get
                                       _%prototable125268%_
                                       _%descriptor125291%_))))
                              (if _%$e125300%_
                                  ((lambda (_%prototype125303%_)
                                     (if (void? _%prototype125303%_)
                                         (_%loop-interface125252%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass125255%_)))
                                         ((lambda (_%descriptor125306%_
                                                   _%prototype125307%_
                                                   _%obj125308%_)
                                            (if _%prototype125307%_
                                                (let ((_%instance125310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##structure-copy
                                                          _%prototype125307%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-set!
                                                     _%instance125310%_
                                                     _%obj125308%_
                                                     '1
                                                     '#f
                                                     'cast))
                                                  _%instance125310%_)
                                                '#f))
                                          _%descriptor125223%_
                                          _%prototype125303%_
                                          _%obj125238%_)))
                                   _%$e125300%_)
                                  (let ((_%$e125312%_
                                         (try-create-prototype
                                          _%descriptor125223%_
                                          _%klass125228%_
                                          _%iface-klass125255%_)))
                                    (if _%$e125312%_
                                        ((lambda (_%prototype125315%_)
                                           ((lambda (_%descriptor125317%_
                                                     _%prototype125318%_
                                                     _%obj125319%_)
                                              (if _%prototype125318%_
                                                  (let ((_%instance125321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##structure-copy
                                                            _%prototype125318%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       _%instance125321%_
                                                       _%obj125319%_
                                                       '1
                                                       '#f
                                                       'cast))
                                                    _%instance125321%_)
                                                  '#f))
                                            _%descriptor125223%_
                                            _%prototype125315%_
                                            _%obj125238%_))
                                         _%$e125312%_)
                                        (_%loop-interface125252%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass125255%_)))))))
                            (_%loop125235%_
                             (&interface-instance-object _%obj125238%_))))
                      (let* ((_%tab125325%_
                              (class-type-interface-table _%obj-klass125241%_))
                             (_%$e125354%_
                              (let* ((_%prototable125327%_ _%tab125325%_)
                                     (_%descriptor125330%_
                                      _%descriptor125223%_)
                                     (_%prototable125334%_
                                      _%prototable125327%_)
                                     (_%descriptor125345%_
                                      _%descriptor125330%_))
                                (____prototype-table-get
                                 _%prototable125334%_
                                 _%descriptor125345%_))))
                        (if _%$e125354%_
                            ((lambda (_%prototype125357%_)
                               (if (void? _%prototype125357%_)
                                   ((lambda (_%descriptor125359%_
                                             _%prototype125360%_
                                             _%obj125361%_)
                                      (if _%prototype125360%_
                                          (let ((_%instance125363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype125360%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance125363%_
                                               _%obj125361%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance125363%_)
                                          '#f))
                                    _%descriptor125223%_
                                    '#f
                                    _%obj125238%_)
                                   ((lambda (_%descriptor125365%_
                                             _%prototype125366%_
                                             _%obj125367%_)
                                      (if _%prototype125366%_
                                          (let ((_%instance125369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype125366%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance125369%_
                                               _%obj125367%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance125369%_)
                                          '#f))
                                    _%descriptor125223%_
                                    _%prototype125357%_
                                    _%obj125238%_)))
                             _%$e125354%_)
                            (let ((_%$e125371%_
                                   (try-create-prototype
                                    _%descriptor125223%_
                                    _%klass125228%_
                                    _%obj-klass125241%_)))
                              (if _%$e125371%_
                                  ((lambda (_%prototype125374%_)
                                     ((lambda (_%descriptor125376%_
                                               _%prototype125377%_
                                               _%obj125378%_)
                                        (if _%prototype125377%_
                                            (let ((_%instance125380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype125377%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance125380%_
                                                 _%obj125378%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance125380%_)
                                            '#f))
                                      _%descriptor125223%_
                                      _%prototype125374%_
                                      _%obj125238%_))
                                   _%$e125371%_)
                                  ((lambda (_%descriptor125383%_
                                            _%prototype125384%_
                                            _%obj125385%_)
                                     (if _%prototype125384%_
                                         (let ((_%instance125387%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype125384%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance125387%_
                                              _%obj125385%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance125387%_)
                                         '#f))
                                   _%descriptor125223%_
                                   '#f
                                   _%obj125238%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor125069%_ _%obj125071%_)
        (let* ((_%klass125074%_
                (&interface-descriptor-type _%descriptor125069%_))
               (_%klass-id125077%_
                (let () (declare (not safe)) (##type-id _%klass125074%_))))
          (let _%loop125081%_ ((_%obj125084%_ _%obj125071%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass125087%_ (class-of _%obj125084%_))
                   (_%obj-klass-id125090%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass125087%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id125077%_ _%obj-klass-id125090%_))
                  ((lambda (_%obj125095%_) '#t) _%obj125084%_)
                  (if (interface-subclass? _%obj-klass125087%_)
                      (let _%loop-interface125098%_ ((_%iface-klass125101%_
                                                      _%obj-klass125087%_))
                        (if _%iface-klass125101%_
                            (let* ((_%tab125104%_
                                    (class-type-interface-table
                                     _%iface-klass125101%_))
                                   (_%$e125146%_
                                    (let* ((_%prototable125107%_ _%tab125104%_)
                                           (_%descriptor125110%_
                                            _%descriptor125069%_)
                                           (_%prototable125114%_
                                            _%prototable125107%_)
                                           (_%descriptor125137%_
                                            _%descriptor125110%_))
                                      (____prototype-table-get
                                       _%prototable125114%_
                                       _%descriptor125137%_))))
                              (if _%$e125146%_
                                  ((lambda (_%prototype125149%_)
                                     (if (void? _%prototype125149%_)
                                         (_%loop-interface125098%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass125101%_)))
                                         ((lambda (_%descriptor125152%_
                                                   _%prototype125153%_
                                                   _%obj125154%_)
                                            (if _%prototype125153%_ '#t '#f))
                                          _%descriptor125069%_
                                          _%prototype125149%_
                                          _%obj125084%_)))
                                   _%$e125146%_)
                                  (let ((_%$e125156%_
                                         (try-create-prototype
                                          _%descriptor125069%_
                                          _%klass125074%_
                                          _%iface-klass125101%_)))
                                    (if _%$e125156%_
                                        ((lambda (_%prototype125159%_)
                                           ((lambda (_%descriptor125161%_
                                                     _%prototype125162%_
                                                     _%obj125163%_)
                                              (if _%prototype125162%_ '#t '#f))
                                            _%descriptor125069%_
                                            _%prototype125159%_
                                            _%obj125084%_))
                                         _%$e125156%_)
                                        (_%loop-interface125098%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass125101%_)))))))
                            (_%loop125081%_
                             (&interface-instance-object _%obj125084%_))))
                      (let* ((_%tab125167%_
                              (class-type-interface-table _%obj-klass125087%_))
                             (_%$e125196%_
                              (let* ((_%prototable125169%_ _%tab125167%_)
                                     (_%descriptor125172%_
                                      _%descriptor125069%_)
                                     (_%prototable125176%_
                                      _%prototable125169%_)
                                     (_%descriptor125187%_
                                      _%descriptor125172%_))
                                (____prototype-table-get
                                 _%prototable125176%_
                                 _%descriptor125187%_))))
                        (if _%$e125196%_
                            ((lambda (_%prototype125199%_)
                               (if (void? _%prototype125199%_)
                                   ((lambda (_%descriptor125201%_
                                             _%prototype125202%_
                                             _%obj125203%_)
                                      (if _%prototype125202%_ '#t '#f))
                                    _%descriptor125069%_
                                    '#f
                                    _%obj125084%_)
                                   ((lambda (_%descriptor125205%_
                                             _%prototype125206%_
                                             _%obj125207%_)
                                      (if _%prototype125206%_ '#t '#f))
                                    _%descriptor125069%_
                                    _%prototype125199%_
                                    _%obj125084%_)))
                             _%$e125196%_)
                            (let ((_%$e125209%_
                                   (try-create-prototype
                                    _%descriptor125069%_
                                    _%klass125074%_
                                    _%obj-klass125087%_)))
                              (if _%$e125209%_
                                  ((lambda (_%prototype125212%_)
                                     ((lambda (_%descriptor125214%_
                                               _%prototype125215%_
                                               _%obj125216%_)
                                        (if _%prototype125215%_ '#t '#f))
                                      _%descriptor125069%_
                                      _%prototype125212%_
                                      _%obj125084%_))
                                   _%$e125209%_)
                                  ((lambda (_%descriptor125219%_
                                            _%prototype125220%_
                                            _%obj125221%_)
                                     (if _%prototype125220%_ '#t '#f))
                                   _%descriptor125069%_
                                   '#f
                                   _%obj125084%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor124913%_
               _%obj124914%_
               _%with-prototype+receiver124915%_
               _%with-receiver124916%_)
        (let* ((_%descriptor124919%_ _%descriptor124913%_)
               (_%with-prototype+receiver124927%_
                _%with-prototype+receiver124915%_)
               (_%with-receiver124935%_ _%with-receiver124916%_)
               (_%klass124944%_
                (&interface-descriptor-type _%descriptor124919%_))
               (_%klass-id124947%_
                (let () (declare (not safe)) (##type-id _%klass124944%_))))
          (let _%loop124951%_ ((_%obj124954%_ _%obj124914%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass124957%_ (class-of _%obj124954%_))
                   (_%obj-klass-id124960%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass124957%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id124947%_ _%obj-klass-id124960%_))
                  (_%with-receiver124935%_ _%obj124954%_)
                  (if (interface-subclass? _%obj-klass124957%_)
                      (let _%loop-interface124966%_ ((_%iface-klass124969%_
                                                      _%obj-klass124957%_))
                        (if _%iface-klass124969%_
                            (let* ((_%tab124972%_
                                    (class-type-interface-table
                                     _%iface-klass124969%_))
                                   (_%$e125016%_
                                    (let* ((_%prototable124975%_ _%tab124972%_)
                                           (_%descriptor124978%_
                                            _%descriptor124919%_)
                                           (_%prototable124982%_
                                            _%prototable124975%_)
                                           (_%descriptor125007%_
                                            _%descriptor124978%_))
                                      (____prototype-table-get
                                       _%prototable124982%_
                                       _%descriptor125007%_))))
                              (if _%$e125016%_
                                  ((lambda (_%prototype125019%_)
                                     (if (void? _%prototype125019%_)
                                         (_%loop-interface124966%_
                                          (let ()
                                            (declare (not safe))
                                            (##type-super
                                             _%iface-klass124969%_)))
                                         (_%with-prototype+receiver124927%_
                                          _%descriptor124919%_
                                          _%prototype125019%_
                                          _%obj124954%_)))
                                   _%$e125016%_)
                                  (let ((_%$e125022%_
                                         (try-create-prototype
                                          _%descriptor124919%_
                                          _%klass124944%_
                                          _%iface-klass124969%_)))
                                    (if _%$e125022%_
                                        ((lambda (_%prototype125025%_)
                                           (_%with-prototype+receiver124927%_
                                            _%descriptor124919%_
                                            _%prototype125025%_
                                            _%obj124954%_))
                                         _%$e125022%_)
                                        (_%loop-interface124966%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass124969%_)))))))
                            (_%loop124951%_
                             (&interface-instance-object _%obj124954%_))))
                      (let* ((_%tab125029%_
                              (class-type-interface-table _%obj-klass124957%_))
                             (_%$e125058%_
                              (let* ((_%prototable125031%_ _%tab125029%_)
                                     (_%descriptor125034%_
                                      _%descriptor124919%_)
                                     (_%prototable125038%_
                                      _%prototable125031%_)
                                     (_%descriptor125049%_
                                      _%descriptor125034%_))
                                (____prototype-table-get
                                 _%prototable125038%_
                                 _%descriptor125049%_))))
                        (if _%$e125058%_
                            ((lambda (_%prototype125061%_)
                               (if (void? _%prototype125061%_)
                                   (_%with-prototype+receiver124927%_
                                    _%descriptor124919%_
                                    '#f
                                    _%obj124954%_)
                                   (_%with-prototype+receiver124927%_
                                    _%descriptor124919%_
                                    _%prototype125061%_
                                    _%obj124954%_)))
                             _%$e125058%_)
                            (let ((_%$e125063%_
                                   (create-prototype
                                    _%descriptor124919%_
                                    _%klass124944%_
                                    _%obj-klass124957%_)))
                              (if _%$e125063%_
                                  ((lambda (_%prototype125066%_)
                                     (_%with-prototype+receiver124927%_
                                      _%descriptor124919%_
                                      _%prototype125066%_
                                      _%obj124954%_))
                                   _%$e125063%_)
                                  (_%with-prototype+receiver124927%_
                                   _%descriptor124919%_
                                   '#f
                                   _%obj124954%_))))))))))))
    (define with-prototype
      (lambda (_%descriptor124876%_
               _%obj124877%_
               _%with-prototype+receiver124878%_
               _%with-receiver124879%_)
        (if (interface-descriptor? _%descriptor124876%_)
            (let ((_%descriptor124883%_ _%descriptor124876%_))
              (if (procedure? _%with-prototype+receiver124878%_)
                  (let ((_%with-prototype+receiver124893%_
                         _%with-prototype+receiver124878%_))
                    (if (procedure? _%with-receiver124879%_)
                        (let ((_%with-receiver124903%_
                               _%with-receiver124879%_))
                          (__with-prototype
                           _%descriptor124883%_
                           _%obj124877%_
                           _%with-prototype+receiver124893%_
                           _%with-receiver124903%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver124879%_)
                          (void))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver124878%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor124876%_)
              (void)))))))
