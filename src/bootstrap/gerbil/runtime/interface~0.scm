(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770342547)
  (begin
    (define CastError::t
      (let ((__tmp137896 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp137896
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args137808%_
        (apply make-instance CastError::t _%$args137808%_)))
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
      (lambda (_%where137682%_ _%message137683%_ . _%irritants137684%_)
        (let ((__tmp137897
               (let ((__obj137889
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj137889
                    _%message137683%_
                    'where:
                    _%where137682%_
                    'irritants:
                    _%irritants137684%_))
                 __obj137889)))
          (declare (not safe))
          (raise __tmp137897))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp137899 (list)) (__tmp137898 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp137899
         '(object)
         __tmp137898
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args137679%_
        (apply make-instance interface-instance::t _%$args137679%_)))
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
      (let ((__tmp137901 (list))
            (__tmp137900
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp137901
         '(type methods index)
         __tmp137900
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args137676%_
        (apply make-instance interface-descriptor::t _%$args137676%_)))
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
          (let _%again137656%_ ((_%spin137659%_ '0))
            (if (let ((__tmp137902
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp137902 '0))
                (let ((__tmp137903 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp137903))
                (if (let () (declare (not safe)) (##fx< _%spin137659%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again137656%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin137659%_ '1))))
                    (let ((_%owner137665%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner137665%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner137665%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again137656%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r137673%_
               (let ((_%index137671%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index137671%_ '1)))
                 _%index137671%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r137673%_)))
    (define interface-descriptor:::init!
      (lambda (_%self137637%_ _%type137638%_ _%methods137639%_)
        (let ((_%self137642%_ _%self137637%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self137642%_
             _%type137638%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self137642%_
             _%methods137639%_
             '2
             '#f
             '#f))
          (let ((__tmp137904 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self137642%_
             __tmp137904
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
      (let ((__tmp137906 (list))
            (__tmp137905
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp137906
         '(lock table)
         __tmp137905
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args137512%_
        (apply make-instance prototype-table::t _%$args137512%_)))
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
      (lambda (_%self137498%_)
        (let ((_%self137501%_ _%self137498%_))
          (let ((__tmp137907 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self137501%_ __tmp137907 '1 '#f '#f))
          (let ((__tmp137908
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self137501%_
             __tmp137908
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
      (lambda (_%prototable137329%_ _%descriptor137330%_)
        (let* ((_%prototable137333%_ _%prototable137329%_)
               (_%descriptor137341%_ _%descriptor137330%_))
          (declare (not safe))
          (let ((_%lock137351%_
                 (##unchecked-structure-ref _%prototable137333%_ '1 '#f '#f))
                (_%index137352%_
                 (##unchecked-structure-ref _%descriptor137341%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again137356%_ ((_%spin137359%_ '0))
                (if (##fx= (##vector-cas! _%lock137351%_ '0 '1 '0) '0)
                    (##vector-set! _%lock137351%_ '1 (current-thread))
                    (if (##fx< _%spin137359%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again137356%_ (##fx+ _%spin137359%_ '1)))
                        (let ((_%owner137365%_
                               (##vector-ref _%lock137351%_ '1)))
                          (if (eq? _%owner137365%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner137365%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again137356%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r137373%_
                   (let ((_%tab137371%_
                          (##unchecked-structure-ref
                           _%prototable137333%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index137352%_ (vector-length _%tab137371%_))
                         (vector-ref _%tab137371%_ _%index137352%_)
                         '#f))))
              (##vector-set! _%lock137351%_ '1 '#f)
              (##vector-cas! _%lock137351%_ '0 '0 '1)
              _%$r137373%_)))))
    (define __prototype-table-get
      (lambda (_%prototable135882%_ _%descriptor135883%_)
        (let* ((_%prototable135886%_ _%prototable135882%_)
               (_%descriptor135894%_ _%descriptor135883%_))
          (____prototype-table-get
           _%prototable135886%_
           _%descriptor135894%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable137276%_ _%descriptor137277%_ _%prototype137278%_)
        (let* ((_%prototable137281%_ _%prototable137276%_)
               (_%descriptor137289%_ _%descriptor137277%_))
          (declare (not safe))
          (let ((_%lock137299%_
                 (##unchecked-structure-ref _%prototable137281%_ '1 '#f '#f))
                (_%index137300%_
                 (##unchecked-structure-ref _%descriptor137289%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again137304%_ ((_%spin137307%_ '0))
                (if (##fx= (##vector-cas! _%lock137299%_ '0 '1 '0) '0)
                    (##vector-set! _%lock137299%_ '1 (current-thread))
                    (if (##fx< _%spin137307%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again137304%_ (##fx+ _%spin137307%_ '1)))
                        (let ((_%owner137313%_
                               (##vector-ref _%lock137299%_ '1)))
                          (if (eq? _%owner137313%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner137313%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again137304%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r137326%_
                   (let ((_%tab137319%_
                          (##unchecked-structure-ref
                           _%prototable137281%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index137300%_ (vector-length _%tab137319%_))
                         (vector-set!
                          _%tab137319%_
                          _%index137300%_
                          _%prototype137278%_)
                         (let* ((_%new-size137321%_ __next-interface-index)
                                (_%new-tab137323%_
                                 (##make-vector _%new-size137321%_ '#f)))
                           (subvector-move!
                            _%tab137319%_
                            '0
                            (vector-length _%tab137319%_)
                            _%new-tab137323%_
                            '0)
                           (vector-set!
                            _%new-tab137323%_
                            _%index137300%_
                            _%prototype137278%_)
                           (##unchecked-structure-set!
                            _%prototable137281%_
                            _%new-tab137323%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock137299%_ '1 '#f)
              (##vector-cas! _%lock137299%_ '0 '0 '1)
              _%$r137326%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable136023%_ _%descriptor136024%_ _%prototype136025%_)
        (let* ((_%prototable136028%_ _%prototable136023%_)
               (_%descriptor136036%_ _%descriptor136024%_))
          (____prototype-table-set!
           _%prototable136028%_
           _%descriptor136036%_
           _%prototype136025%_))))
    (define interface-subclass?
      (lambda (_%klass137269%_)
        (let ((_%super137270137272%_
               (let () (declare (not safe)) (##type-super _%klass137269%_))))
          (if _%super137270137272%_
              (let ((_%super137274%_ _%super137270137272%_))
                (eq? (let () (declare (not safe)) (##type-id _%super137274%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass137261%_)
        (let ((_%$e137263%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass137261%_ '13 '#f '#f))))
          (if _%$e137263%_
              _%$e137263%_
              (let ((_%tab137267%_
                     (let ((__obj137893
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj137893)
                       __obj137893)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass137261%_
                   _%tab137267%_
                   '13
                   '#f
                   '#f))
                _%tab137267%_)))))
    (define create-prototype
      (lambda (_%descriptor137101%_ _%klass137102%_ _%obj-klass137103%_)
        (let ((_%method-table137105%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass137103%_))))
          (let _%loop137108%_ ((_%rest137111%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor137101%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count137113%_ '0)
                               (_%methods137115%_ '()))
            (let* ((_%rest137117137125%_ _%rest137111%_)
                   (_%else137119137181%_
                    (lambda ()
                      (let ((_%prototype137133%_
                             (let ((__obj137894
                                    (let ((__tmp137909
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count137113%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass137102%_
                                       __tmp137909))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj137894 '#f))
                               __obj137894)))
                        (let _%loop137136%_ ((_%rest137138%_ _%methods137115%_)
                                             (_%off137139%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count137113%_ '1))))
                          (let* ((_%rest137141137149%_ _%rest137138%_)
                                 (_%else137143137162%_
                                  (lambda ()
                                    (let ((_%tab137157%_
                                           (class-type-interface-table
                                            _%obj-klass137103%_)))
                                      (____prototype-table-set!
                                       _%tab137157%_
                                       _%descriptor137101%_
                                       _%prototype137133%_)
                                      ((lambda (_%prototype137160%_)
                                         _%prototype137160%_)
                                       _%prototype137133%_))))
                                 (_%K137145137169%_
                                  (lambda (_%rest137165%_ _%method137166%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype137133%_
                                       _%method137166%_
                                       _%off137139%_
                                       _%klass137102%_
                                       '#f))
                                    (_%loop137136%_
                                     _%rest137165%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off137139%_ '1))))))
                            (if (pair? _%rest137141137149%_)
                                (let ((_%hd137146137172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest137141137149%_)))
                                      (_%tl137147137174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest137141137149%_))))
                                  (let* ((_%method137177%_ _%hd137146137172%_)
                                         (_%rest137179%_ _%tl137147137174%_))
                                    (_%K137145137169%_
                                     _%rest137179%_
                                     _%method137177%_)))
                                (_%else137143137162%_)))))))
                   (_%K137121137249%_
                    (lambda (_%rest137184%_ _%method-spec137185%_)
                      (if (pair? _%method-spec137185%_)
                          (let _%loop-inner137189%_ ((_%methods-rest137192%_
                                                      _%method-spec137185%_))
                            (let* ((_%methods-rest137194137202%_
                                    _%methods-rest137192%_)
                                   (_%else137196137214%_
                                    (lambda ()
                                      (let ((_%tab137210%_
                                             (class-type-interface-table
                                              _%obj-klass137103%_)))
                                        (____prototype-table-set!
                                         _%tab137210%_
                                         _%descriptor137101%_
                                         '#!void)
                                        ((lambda (_%method137212%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor137101%_
                                            'class:
                                            _%obj-klass137103%_
                                            'method:
                                            _%method137212%_)
                                           '#!void)
                                         _%method-spec137185%_))))
                                   (_%K137198137227%_
                                    (lambda (_%methods-rest137217%_
                                             _%method-name137218%_)
                                      (let ((_%$e137221%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table137105%_
                                                _%method-name137218%_
                                                '#f))))
                                        (if _%$e137221%_
                                            ((lambda (_%method137224%_)
                                               (_%loop137108%_
                                                _%rest137184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count137113%_ '1))
                                                (cons _%method137224%_
                                                      _%methods137115%_)))
                                             _%$e137221%_)
                                            (_%loop-inner137189%_
                                             _%methods-rest137217%_))))))
                              (if (pair? _%methods-rest137194137202%_)
                                  (let ((_%hd137199137230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest137194137202%_)))
                                        (_%tl137200137232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest137194137202%_))))
                                    (let* ((_%method-name137235%_
                                            _%hd137199137230%_)
                                           (_%methods-rest137237%_
                                            _%tl137200137232%_))
                                      (_%K137198137227%_
                                       _%methods-rest137237%_
                                       _%method-name137235%_)))
                                  (_%else137196137214%_))))
                          (let ((_%$e137239%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table137105%_
                                    _%method-spec137185%_
                                    '#f))))
                            (if _%$e137239%_
                                ((lambda (_%method137242%_)
                                   (_%loop137108%_
                                    _%rest137184%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count137113%_ '1))
                                    (cons _%method137242%_ _%methods137115%_)))
                                 _%$e137239%_)
                                (let ((_%tab137245%_
                                       (class-type-interface-table
                                        _%obj-klass137103%_)))
                                  (____prototype-table-set!
                                   _%tab137245%_
                                   _%descriptor137101%_
                                   '#!void)
                                  ((lambda (_%method137247%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor137101%_
                                      'class:
                                      _%obj-klass137103%_
                                      'method:
                                      _%method137247%_)
                                     '#!void)
                                   _%method-spec137185%_))))))))
              (if (pair? _%rest137117137125%_)
                  (let ((_%hd137122137252%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest137117137125%_)))
                        (_%tl137123137254%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest137117137125%_))))
                    (let* ((_%method-spec137257%_ _%hd137122137252%_)
                           (_%rest137259%_ _%tl137123137254%_))
                      (_%K137121137249%_
                       _%rest137259%_
                       _%method-spec137257%_)))
                  (_%else137119137181%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor136941%_ _%klass136942%_ _%obj-klass136943%_)
        (let ((_%method-table136945%_
               (let ()
                 (declare (not safe))
                 (specialize-class _%obj-klass136943%_))))
          (let _%loop136948%_ ((_%rest136951%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor136941%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count136953%_ '0)
                               (_%methods136955%_ '()))
            (let* ((_%rest136957136965%_ _%rest136951%_)
                   (_%else136959137021%_
                    (lambda ()
                      (let ((_%prototype136973%_
                             (let ((__obj137895
                                    (let ((__tmp137910
                                           (let ()
                                             (declare (not safe))
                                             (##fx+ _%count136953%_ '2))))
                                      (declare (not safe))
                                      (##make-structure
                                       _%klass136942%_
                                       __tmp137910))))
                               (let ()
                                 (declare (not safe))
                                 (object-fill! __obj137895 '#f))
                               __obj137895)))
                        (let _%loop136976%_ ((_%rest136978%_ _%methods136955%_)
                                             (_%off136979%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count136953%_ '1))))
                          (let* ((_%rest136981136989%_ _%rest136978%_)
                                 (_%else136983137002%_
                                  (lambda ()
                                    (let ((_%tab136997%_
                                           (class-type-interface-table
                                            _%obj-klass136943%_)))
                                      (____prototype-table-set!
                                       _%tab136997%_
                                       _%descriptor136941%_
                                       _%prototype136973%_)
                                      ((lambda (_%prototype137000%_)
                                         _%prototype137000%_)
                                       _%prototype136973%_))))
                                 (_%K136985137009%_
                                  (lambda (_%rest137005%_ _%method137006%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype136973%_
                                       _%method137006%_
                                       _%off136979%_
                                       _%klass136942%_
                                       '#f))
                                    (_%loop136976%_
                                     _%rest137005%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off136979%_ '1))))))
                            (if (pair? _%rest136981136989%_)
                                (let ((_%hd136986137012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest136981136989%_)))
                                      (_%tl136987137014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest136981136989%_))))
                                  (let* ((_%method137017%_ _%hd136986137012%_)
                                         (_%rest137019%_ _%tl136987137014%_))
                                    (_%K136985137009%_
                                     _%rest137019%_
                                     _%method137017%_)))
                                (_%else136983137002%_)))))))
                   (_%K136961137089%_
                    (lambda (_%rest137024%_ _%method-spec137025%_)
                      (if (pair? _%method-spec137025%_)
                          (let _%loop-inner137029%_ ((_%methods-rest137032%_
                                                      _%method-spec137025%_))
                            (let* ((_%methods-rest137034137042%_
                                    _%methods-rest137032%_)
                                   (_%else137036137054%_
                                    (lambda ()
                                      (let ((_%tab137050%_
                                             (class-type-interface-table
                                              _%obj-klass136943%_)))
                                        (____prototype-table-set!
                                         _%tab137050%_
                                         _%descriptor136941%_
                                         '#!void)
                                        ((lambda (_%method137052%_) '#f)
                                         _%method-spec137025%_))))
                                   (_%K137038137067%_
                                    (lambda (_%methods-rest137057%_
                                             _%method-name137058%_)
                                      (let ((_%$e137061%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table136945%_
                                                _%method-name137058%_
                                                '#f))))
                                        (if _%$e137061%_
                                            ((lambda (_%method137064%_)
                                               (_%loop136948%_
                                                _%rest137024%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count136953%_ '1))
                                                (cons _%method137064%_
                                                      _%methods136955%_)))
                                             _%$e137061%_)
                                            (_%loop-inner137029%_
                                             _%methods-rest137057%_))))))
                              (if (pair? _%methods-rest137034137042%_)
                                  (let ((_%hd137039137070%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest137034137042%_)))
                                        (_%tl137040137072%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest137034137042%_))))
                                    (let* ((_%method-name137075%_
                                            _%hd137039137070%_)
                                           (_%methods-rest137077%_
                                            _%tl137040137072%_))
                                      (_%K137038137067%_
                                       _%methods-rest137077%_
                                       _%method-name137075%_)))
                                  (_%else137036137054%_))))
                          (let ((_%$e137079%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table136945%_
                                    _%method-spec137025%_
                                    '#f))))
                            (if _%$e137079%_
                                ((lambda (_%method137082%_)
                                   (_%loop136948%_
                                    _%rest137024%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count136953%_ '1))
                                    (cons _%method137082%_ _%methods136955%_)))
                                 _%$e137079%_)
                                (let ((_%tab137085%_
                                       (class-type-interface-table
                                        _%obj-klass136943%_)))
                                  (____prototype-table-set!
                                   _%tab137085%_
                                   _%descriptor136941%_
                                   '#!void)
                                  ((lambda (_%method137087%_) '#f)
                                   _%method-spec137025%_))))))))
              (if (pair? _%rest136957136965%_)
                  (let ((_%hd136962137092%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest136957136965%_)))
                        (_%tl136963137094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest136957136965%_))))
                    (let* ((_%method-spec137097%_ _%hd136962137092%_)
                           (_%rest137099%_ _%tl136963137094%_))
                      (_%K136961137089%_
                       _%rest137099%_
                       _%method-spec137097%_)))
                  (_%else136959137021%_)))))))
    (define cast
      (lambda (_%descriptor136847%_ _%obj136849%_)
        (let* ((_%klass136852%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor136847%_ '1 '#f '#f)))
               (_%klass-id136855%_
                (let () (declare (not safe)) (##type-id _%klass136852%_))))
          (let _%loop136859%_ ((_%obj136862%_ _%obj136849%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass136865%_
                    (let () (declare (not safe)) (class-of _%obj136862%_)))
                   (_%obj-klass-id136868%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass136865%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id136855%_ _%obj-klass-id136868%_))
                  ((lambda (_%obj136873%_) _%obj136873%_) _%obj136862%_)
                  (if (interface-subclass? _%obj-klass136865%_)
                      (let* ((_%tab136876%_
                              (class-type-interface-table _%obj-klass136865%_))
                             (_%$e136879%_
                              (____prototype-table-get
                               _%tab136876%_
                               _%descriptor136847%_)))
                        (if _%$e136879%_
                            ((lambda (_%prototype136882%_)
                               (if (eq? _%prototype136882%_ '#!void)
                                   (_%loop136859%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj136862%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor136885%_
                                             _%prototype136886%_
                                             _%obj136887%_)
                                      (if _%prototype136886%_
                                          (let ((_%instance136889%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136886%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136889%_
                                               _%obj136887%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136889%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor136885%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj136887%_)))
                                            '#!void)))
                                    _%descriptor136847%_
                                    _%prototype136882%_
                                    _%obj136862%_)))
                             _%$e136879%_)
                            (let ((_%$e136891%_
                                   (try-create-prototype
                                    _%descriptor136847%_
                                    _%klass136852%_
                                    _%obj-klass136865%_)))
                              (if _%$e136891%_
                                  ((lambda (_%prototype136894%_)
                                     ((lambda (_%descriptor136896%_
                                               _%prototype136897%_
                                               _%obj136898%_)
                                        (if _%prototype136897%_
                                            (let ((_%instance136900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype136897%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance136900%_
                                                 _%obj136898%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance136900%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor136896%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj136898%_)))
                                              '#!void)))
                                      _%descriptor136847%_
                                      _%prototype136894%_
                                      _%obj136862%_))
                                   _%$e136891%_)
                                  (_%loop136859%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj136862%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab136904%_
                              (class-type-interface-table _%obj-klass136865%_))
                             (_%$e136906%_
                              (____prototype-table-get
                               _%tab136904%_
                               _%descriptor136847%_)))
                        (if _%$e136906%_
                            ((lambda (_%prototype136909%_)
                               (if (eq? _%prototype136909%_ '#!void)
                                   ((lambda (_%descriptor136911%_
                                             _%prototype136912%_
                                             _%obj136913%_)
                                      (if _%prototype136912%_
                                          (let ((_%instance136915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136912%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136915%_
                                               _%obj136913%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136915%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor136911%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj136913%_)))
                                            '#!void)))
                                    _%descriptor136847%_
                                    '#f
                                    _%obj136862%_)
                                   ((lambda (_%descriptor136917%_
                                             _%prototype136918%_
                                             _%obj136919%_)
                                      (if _%prototype136918%_
                                          (let ((_%instance136921%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136918%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136921%_
                                               _%obj136919%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136921%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor136917%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj136919%_)))
                                            '#!void)))
                                    _%descriptor136847%_
                                    _%prototype136909%_
                                    _%obj136862%_)))
                             _%$e136906%_)
                            (let ((_%$e136923%_
                                   (create-prototype
                                    _%descriptor136847%_
                                    _%klass136852%_
                                    _%obj-klass136865%_)))
                              (if _%$e136923%_
                                  ((lambda (_%prototype136926%_)
                                     ((lambda (_%descriptor136928%_
                                               _%prototype136929%_
                                               _%obj136930%_)
                                        (if _%prototype136929%_
                                            (let ((_%instance136932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype136929%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance136932%_
                                                 _%obj136930%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance136932%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor136928%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj136930%_)))
                                              '#!void)))
                                      _%descriptor136847%_
                                      _%prototype136926%_
                                      _%obj136862%_))
                                   _%$e136923%_)
                                  ((lambda (_%descriptor136935%_
                                            _%prototype136936%_
                                            _%obj136937%_)
                                     (if _%prototype136936%_
                                         (let ((_%instance136939%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype136936%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance136939%_
                                              _%obj136937%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance136939%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor136935%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj136937%_)))
                                           '#!void)))
                                   _%descriptor136847%_
                                   '#f
                                   _%obj136862%_))))))))))))
    (define try-cast
      (lambda (_%descriptor136753%_ _%obj136755%_)
        (let* ((_%klass136758%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor136753%_ '1 '#f '#f)))
               (_%klass-id136761%_
                (let () (declare (not safe)) (##type-id _%klass136758%_))))
          (let _%loop136765%_ ((_%obj136768%_ _%obj136755%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass136771%_
                    (let () (declare (not safe)) (class-of _%obj136768%_)))
                   (_%obj-klass-id136774%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass136771%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id136761%_ _%obj-klass-id136774%_))
                  ((lambda (_%obj136779%_) _%obj136779%_) _%obj136768%_)
                  (if (interface-subclass? _%obj-klass136771%_)
                      (let* ((_%tab136782%_
                              (class-type-interface-table _%obj-klass136771%_))
                             (_%$e136785%_
                              (____prototype-table-get
                               _%tab136782%_
                               _%descriptor136753%_)))
                        (if _%$e136785%_
                            ((lambda (_%prototype136788%_)
                               (if (eq? _%prototype136788%_ '#!void)
                                   (_%loop136765%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj136768%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor136791%_
                                             _%prototype136792%_
                                             _%obj136793%_)
                                      (if _%prototype136792%_
                                          (let ((_%instance136795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136792%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136795%_
                                               _%obj136793%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136795%_)
                                          '#f))
                                    _%descriptor136753%_
                                    _%prototype136788%_
                                    _%obj136768%_)))
                             _%$e136785%_)
                            (let ((_%$e136797%_
                                   (try-create-prototype
                                    _%descriptor136753%_
                                    _%klass136758%_
                                    _%obj-klass136771%_)))
                              (if _%$e136797%_
                                  ((lambda (_%prototype136800%_)
                                     ((lambda (_%descriptor136802%_
                                               _%prototype136803%_
                                               _%obj136804%_)
                                        (if _%prototype136803%_
                                            (let ((_%instance136806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype136803%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance136806%_
                                                 _%obj136804%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance136806%_)
                                            '#f))
                                      _%descriptor136753%_
                                      _%prototype136800%_
                                      _%obj136768%_))
                                   _%$e136797%_)
                                  (_%loop136765%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj136768%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab136810%_
                              (class-type-interface-table _%obj-klass136771%_))
                             (_%$e136812%_
                              (____prototype-table-get
                               _%tab136810%_
                               _%descriptor136753%_)))
                        (if _%$e136812%_
                            ((lambda (_%prototype136815%_)
                               (if (eq? _%prototype136815%_ '#!void)
                                   ((lambda (_%descriptor136817%_
                                             _%prototype136818%_
                                             _%obj136819%_)
                                      (if _%prototype136818%_
                                          (let ((_%instance136821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136818%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136821%_
                                               _%obj136819%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136821%_)
                                          '#f))
                                    _%descriptor136753%_
                                    '#f
                                    _%obj136768%_)
                                   ((lambda (_%descriptor136823%_
                                             _%prototype136824%_
                                             _%obj136825%_)
                                      (if _%prototype136824%_
                                          (let ((_%instance136827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype136824%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance136827%_
                                               _%obj136825%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance136827%_)
                                          '#f))
                                    _%descriptor136753%_
                                    _%prototype136815%_
                                    _%obj136768%_)))
                             _%$e136812%_)
                            (let ((_%$e136829%_
                                   (try-create-prototype
                                    _%descriptor136753%_
                                    _%klass136758%_
                                    _%obj-klass136771%_)))
                              (if _%$e136829%_
                                  ((lambda (_%prototype136832%_)
                                     ((lambda (_%descriptor136834%_
                                               _%prototype136835%_
                                               _%obj136836%_)
                                        (if _%prototype136835%_
                                            (let ((_%instance136838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype136835%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance136838%_
                                                 _%obj136836%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance136838%_)
                                            '#f))
                                      _%descriptor136753%_
                                      _%prototype136832%_
                                      _%obj136768%_))
                                   _%$e136829%_)
                                  ((lambda (_%descriptor136841%_
                                            _%prototype136842%_
                                            _%obj136843%_)
                                     (if _%prototype136842%_
                                         (let ((_%instance136845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype136842%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance136845%_
                                              _%obj136843%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance136845%_)
                                         '#f))
                                   _%descriptor136753%_
                                   '#f
                                   _%obj136768%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor136671%_ _%obj136673%_)
        (let* ((_%klass136676%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor136671%_ '1 '#f '#f)))
               (_%klass-id136679%_
                (let () (declare (not safe)) (##type-id _%klass136676%_))))
          (let _%loop136683%_ ((_%obj136686%_ _%obj136673%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass136689%_
                    (let () (declare (not safe)) (class-of _%obj136686%_)))
                   (_%obj-klass-id136692%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass136689%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id136679%_ _%obj-klass-id136692%_))
                  ((lambda (_%obj136697%_) '#t) _%obj136686%_)
                  (if (interface-subclass? _%obj-klass136689%_)
                      (let* ((_%tab136700%_
                              (class-type-interface-table _%obj-klass136689%_))
                             (_%$e136703%_
                              (____prototype-table-get
                               _%tab136700%_
                               _%descriptor136671%_)))
                        (if _%$e136703%_
                            ((lambda (_%prototype136706%_)
                               (if (eq? _%prototype136706%_ '#!void)
                                   (_%loop136683%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj136686%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor136709%_
                                             _%prototype136710%_
                                             _%obj136711%_)
                                      (if _%prototype136710%_ '#t '#f))
                                    _%descriptor136671%_
                                    _%prototype136706%_
                                    _%obj136686%_)))
                             _%$e136703%_)
                            (let ((_%$e136713%_
                                   (try-create-prototype
                                    _%descriptor136671%_
                                    _%klass136676%_
                                    _%obj-klass136689%_)))
                              (if _%$e136713%_
                                  ((lambda (_%prototype136716%_)
                                     ((lambda (_%descriptor136718%_
                                               _%prototype136719%_
                                               _%obj136720%_)
                                        (if _%prototype136719%_ '#t '#f))
                                      _%descriptor136671%_
                                      _%prototype136716%_
                                      _%obj136686%_))
                                   _%$e136713%_)
                                  (_%loop136683%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj136686%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab136724%_
                              (class-type-interface-table _%obj-klass136689%_))
                             (_%$e136726%_
                              (____prototype-table-get
                               _%tab136724%_
                               _%descriptor136671%_)))
                        (if _%$e136726%_
                            ((lambda (_%prototype136729%_)
                               (if (eq? _%prototype136729%_ '#!void)
                                   ((lambda (_%descriptor136731%_
                                             _%prototype136732%_
                                             _%obj136733%_)
                                      (if _%prototype136732%_ '#t '#f))
                                    _%descriptor136671%_
                                    '#f
                                    _%obj136686%_)
                                   ((lambda (_%descriptor136735%_
                                             _%prototype136736%_
                                             _%obj136737%_)
                                      (if _%prototype136736%_ '#t '#f))
                                    _%descriptor136671%_
                                    _%prototype136729%_
                                    _%obj136686%_)))
                             _%$e136726%_)
                            (let ((_%$e136739%_
                                   (try-create-prototype
                                    _%descriptor136671%_
                                    _%klass136676%_
                                    _%obj-klass136689%_)))
                              (if _%$e136739%_
                                  ((lambda (_%prototype136742%_)
                                     ((lambda (_%descriptor136744%_
                                               _%prototype136745%_
                                               _%obj136746%_)
                                        (if _%prototype136745%_ '#t '#f))
                                      _%descriptor136671%_
                                      _%prototype136742%_
                                      _%obj136686%_))
                                   _%$e136739%_)
                                  ((lambda (_%descriptor136749%_
                                            _%prototype136750%_
                                            _%obj136751%_)
                                     (if _%prototype136750%_ '#t '#f))
                                   _%descriptor136671%_
                                   '#f
                                   _%obj136686%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor136589%_
               _%obj136590%_
               _%with-prototype+receiver136591%_
               _%with-receiver136592%_)
        (let* ((_%descriptor136595%_ _%descriptor136589%_)
               (_%with-prototype+receiver136603%_
                _%with-prototype+receiver136591%_)
               (_%with-receiver136611%_ _%with-receiver136592%_)
               (_%klass136620%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor136595%_ '1 '#f '#f)))
               (_%klass-id136623%_
                (let () (declare (not safe)) (##type-id _%klass136620%_))))
          (let _%loop136627%_ ((_%obj136630%_ _%obj136590%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass136633%_
                    (let () (declare (not safe)) (class-of _%obj136630%_)))
                   (_%obj-klass-id136636%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass136633%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id136623%_ _%obj-klass-id136636%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver136611%_ _%obj136630%_))
                  (if (interface-subclass? _%obj-klass136633%_)
                      (let* ((_%tab136642%_
                              (class-type-interface-table _%obj-klass136633%_))
                             (_%$e136645%_
                              (____prototype-table-get
                               _%tab136642%_
                               _%descriptor136595%_)))
                        (if _%$e136645%_
                            ((lambda (_%prototype136648%_)
                               (if (eq? _%prototype136648%_ '#!void)
                                   (_%loop136627%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj136630%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver136603%_
                                      _%descriptor136595%_
                                      _%prototype136648%_
                                      _%obj136630%_))))
                             _%$e136645%_)
                            (let ((_%$e136651%_
                                   (try-create-prototype
                                    _%descriptor136595%_
                                    _%klass136620%_
                                    _%obj-klass136633%_)))
                              (if _%$e136651%_
                                  ((lambda (_%prototype136654%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver136603%_
                                        _%descriptor136595%_
                                        _%prototype136654%_
                                        _%obj136630%_)))
                                   _%$e136651%_)
                                  (_%loop136627%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj136630%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab136658%_
                              (class-type-interface-table _%obj-klass136633%_))
                             (_%$e136660%_
                              (____prototype-table-get
                               _%tab136658%_
                               _%descriptor136595%_)))
                        (if _%$e136660%_
                            ((lambda (_%prototype136663%_)
                               (if (eq? _%prototype136663%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver136603%_
                                      _%descriptor136595%_
                                      '#f
                                      _%obj136630%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver136603%_
                                      _%descriptor136595%_
                                      _%prototype136663%_
                                      _%obj136630%_))))
                             _%$e136660%_)
                            (let ((_%$e136665%_
                                   (create-prototype
                                    _%descriptor136595%_
                                    _%klass136620%_
                                    _%obj-klass136633%_)))
                              (if _%$e136665%_
                                  ((lambda (_%prototype136668%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver136603%_
                                        _%descriptor136595%_
                                        _%prototype136668%_
                                        _%obj136630%_)))
                                   _%$e136665%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver136603%_
                                     _%descriptor136595%_
                                     '#f
                                     _%obj136630%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor136552%_
               _%obj136553%_
               _%with-prototype+receiver136554%_
               _%with-receiver136555%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor136552%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor136559%_ _%descriptor136552%_))
              (if (procedure? _%with-prototype+receiver136554%_)
                  (let ((_%with-prototype+receiver136569%_
                         _%with-prototype+receiver136554%_))
                    (if (procedure? _%with-receiver136555%_)
                        (let ((_%with-receiver136579%_
                               _%with-receiver136555%_))
                          (__with-prototype
                           _%descriptor136559%_
                           _%obj136553%_
                           _%with-prototype+receiver136569%_
                           _%with-receiver136579%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver136555%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver136554%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor136552%_)
              '#!void))))))
