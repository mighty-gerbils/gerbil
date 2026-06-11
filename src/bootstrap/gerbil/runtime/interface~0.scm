(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1781138350)
  (begin
    (define CastError::t
      (let ((__tmp146778 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp146778
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args146692%_
        (apply make-instance CastError::t _%$args146692%_)))
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
      (lambda (_%where146566%_ _%message146567%_ . _%irritants146568%_)
        (let ((__tmp146779
               (let ((__obj146773
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj146773
                    _%message146567%_
                    'where:
                    _%where146566%_
                    'irritants:
                    _%irritants146568%_))
                 __obj146773)))
          (declare (not safe))
          (raise __tmp146779))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp146781 (list))
            (__tmp146780 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp146781
         '(object)
         __tmp146780
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args146563%_
        (apply make-instance interface-instance::t _%$args146563%_)))
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
      (let ((__tmp146783 (list))
            (__tmp146782
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp146783
         '(type methods index)
         __tmp146782
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args146560%_
        (apply make-instance interface-descriptor::t _%$args146560%_)))
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
          (let _%again146538%_ ((_%spin146541%_ '0))
            (if (let ((__tmp146784
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp146784 '0))
                (let ((__tmp146785 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp146785))
                (if (let () (declare (not safe)) (##fx< _%spin146541%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again146538%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin146541%_ '1))))
                    (let ((_%owner146547%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner146547%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner146547%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again146538%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r146555%_
               (let ((_%index146553%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index146553%_ '1)))
                 _%index146553%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r146555%_)))
    (define interface-descriptor:::init!
      (lambda (_%self146519%_ _%type146520%_ _%methods146521%_)
        (let ((_%self146524%_ _%self146519%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146524%_
             _%type146520%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146524%_
             _%methods146521%_
             '2
             '#f
             '#f))
          (let ((__tmp146786 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146524%_
             __tmp146786
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
      (let ((__tmp146788 (list))
            (__tmp146787
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp146788
         '(lock table)
         __tmp146787
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args146394%_
        (apply make-instance prototype-table::t _%$args146394%_)))
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
      (lambda (_%self146380%_)
        (let ((_%self146383%_ _%self146380%_))
          (let ((__tmp146789 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self146383%_ __tmp146789 '1 '#f '#f))
          (let ((__tmp146790
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146383%_
             __tmp146790
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
      (lambda (_%prototable146233%_ _%descriptor146234%_)
        (let* ((_%prototable146237%_ _%prototable146233%_)
               (_%descriptor146245%_ _%descriptor146234%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab146255%_
                 (##unchecked-structure-ref _%prototable146237%_ '2 '#f '#f))
                (_%index146256%_
                 (##unchecked-structure-ref _%descriptor146245%_ '3 '#f '#f)))
            (if (##fx< _%index146256%_ (vector-length _%tab146255%_))
                (vector-ref _%tab146255%_ _%index146256%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable146212%_ _%descriptor146213%_)
        (let* ((_%prototable146216%_ _%prototable146212%_)
               (_%descriptor146224%_ _%descriptor146213%_))
          (____prototype-table-get
           _%prototable146216%_
           _%descriptor146224%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable146158%_ _%descriptor146159%_ _%prototype146160%_)
        (let* ((_%prototable146163%_ _%prototable146158%_)
               (_%descriptor146171%_ _%descriptor146159%_))
          (declare (not safe))
          (let ((_%lock146181%_
                 (##unchecked-structure-ref _%prototable146163%_ '1 '#f '#f))
                (_%index146182%_
                 (##unchecked-structure-ref _%descriptor146171%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again146186%_ ((_%spin146189%_ '0))
                (if (##fx= (##vector-cas! _%lock146181%_ '0 '1 '0) '0)
                    (##vector-set! _%lock146181%_ '1 (current-thread))
                    (if (##fx< _%spin146189%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again146186%_ (##fx+ _%spin146189%_ '1)))
                        (let ((_%owner146195%_
                               (##vector-ref _%lock146181%_ '1)))
                          (if (eq? _%owner146195%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner146195%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again146186%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r146207%_
                   (let ((_%tab146201%_
                          (##unchecked-structure-ref
                           _%prototable146163%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index146182%_ (vector-length _%tab146201%_))
                         (vector-set!
                          _%tab146201%_
                          _%index146182%_
                          _%prototype146160%_)
                         (let ((_%new-size146203%_ __next-interface-index))
                           (if (##fx< _%index146182%_ _%new-size146203%_)
                               (let ((_%new-tab146205%_
                                      (##make-vector _%new-size146203%_ '#f)))
                                 (subvector-move!
                                  _%tab146201%_
                                  '0
                                  (vector-length _%tab146201%_)
                                  _%new-tab146205%_
                                  '0)
                                 (vector-set!
                                  _%new-tab146205%_
                                  _%index146182%_
                                  _%prototype146160%_)
                                 (##unchecked-structure-set!
                                  _%prototable146163%_
                                  _%new-tab146205%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor146171%_
                                      'index:
                                      _%index146182%_
                                      'max-index:
                                      _%new-size146203%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock146181%_ '1 '#f)
                  (##vector-cas! _%lock146181%_ '0 '0 '1)))
              _%$r146207%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable146136%_ _%descriptor146137%_ _%prototype146138%_)
        (let* ((_%prototable146141%_ _%prototable146136%_)
               (_%descriptor146149%_ _%descriptor146137%_))
          (____prototype-table-set!
           _%prototable146141%_
           _%descriptor146149%_
           _%prototype146138%_))))
    (define interface-subclass?
      (lambda (_%klass146129%_)
        (let ((_%$%super146130146132%_
               (let () (declare (not safe)) (##type-super _%klass146129%_))))
          (if _%$%super146130146132%_
              (let ((_%super146134%_ _%$%super146130146132%_))
                (eq? (let () (declare (not safe)) (##type-id _%super146134%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass146121%_)
        (let ((_%$e146123%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass146121%_ '13 '#f '#f))))
          (if _%$e146123%_
              _%$e146123%_
              (let ((_%tab146127%_
                     (let ((__obj146777
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj146777)
                       __obj146777)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass146121%_
                   _%tab146127%_
                   '13
                   '#f
                   '#f))
                _%tab146127%_)))))
    (define create-prototype
      (lambda (_%descriptor145804%_ _%klass145805%_ _%obj-klass145806%_)
        (let ((_%method-table145824%_
               (let ((_%klass145808%_ _%obj-klass145806%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145808%_ 'class))
                     (let ((_%klass145813%_ _%klass145808%_))
                       (declare (not safe))
                       (__specialize-class _%klass145813%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145808%_)
                       '#!void)))))
          (let _%loop145827%_ ((_%rest145830%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145804%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145832%_ '0)
                               (_%methods145834%_ '()))
            (let* ((_%$%rest145836145844%_ _%rest145830%_)
                   (_%$%else145838145971%_
                    (lambda ()
                      (let ((_%prototype145887%_
                             (let* ((_%klass145852%_ _%klass145805%_)
                                    (_%k145855%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145832%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145852%_
                                      'class))
                                   (let* ((_%klass145860%_ _%klass145852%_)
                                          (_%k145877%_ _%k145855%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145860%_
                                      _%k145877%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145852%_)
                                     '#!void)))))
                        (let _%loop145890%_ ((_%rest145892%_ _%methods145834%_)
                                             (_%off145893%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145832%_ '1))))
                          (let* ((_%$%rest145895145903%_ _%rest145892%_)
                                 (_%$%else145897145952%_
                                  (lambda ()
                                    (let ((_%tab145911%_
                                           (class-type-interface-table
                                            _%obj-klass145806%_)))
                                      (let* ((_%prototable145914%_
                                              _%tab145911%_)
                                             (_%descriptor145917%_
                                              _%descriptor145804%_)
                                             (_%prototype145920%_
                                              _%prototype145887%_)
                                             (_%prototable145924%_
                                              _%prototable145914%_)
                                             (_%descriptor145941%_
                                              _%descriptor145917%_))
                                        (____prototype-table-set!
                                         _%prototable145924%_
                                         _%descriptor145941%_
                                         _%prototype145920%_))
                                      _%prototype145887%_)))
                                 (_%$%K145899145959%_
                                  (lambda (_%rest145955%_ _%method145956%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145887%_
                                       _%method145956%_
                                       _%off145893%_
                                       _%klass145805%_
                                       '#f))
                                    (_%loop145890%_
                                     _%rest145955%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145893%_ '1))))))
                            (if (pair? _%$%rest145895145903%_)
                                (let ((_%$%hd145900145962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest145895145903%_)))
                                      (_%$%tl145901145964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest145895145903%_))))
                                  (let* ((_%method145967%_
                                          _%$%hd145900145962%_)
                                         (_%rest145969%_ _%$%tl145901145964%_))
                                    (_%$%K145899145959%_
                                     _%rest145969%_
                                     _%method145967%_)))
                                (_%$%else145897145952%_)))))))
                   (_%$%K145840146109%_
                    (lambda (_%rest145974%_ _%method-spec145975%_)
                      (if (pair? _%method-spec145975%_)
                          (let _%loop-inner145979%_ ((_%methods-rest145982%_
                                                      _%method-spec145975%_))
                            (let* ((_%$%methods-rest145984145992%_
                                    _%methods-rest145982%_)
                                   (_%$%else145986146042%_
                                    (lambda ()
                                      (let ((_%tab146000%_
                                             (class-type-interface-table
                                              _%obj-klass145806%_)))
                                        (let* ((_%prototable146002%_
                                                _%tab146000%_)
                                               (_%descriptor146005%_
                                                _%descriptor145804%_)
                                               (_%prototype146008%_ '#!void)
                                               (_%prototable146012%_
                                                _%prototable146002%_)
                                               (_%descriptor146031%_
                                                _%descriptor146005%_))
                                          (____prototype-table-set!
                                           _%prototable146012%_
                                           _%descriptor146031%_
                                           _%prototype146008%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor145804%_
                                           'class:
                                           _%obj-klass145806%_
                                           'method:
                                           _%method-spec145975%_)
                                          '#!void))))
                                   (_%$%K145988146055%_
                                    (lambda (_%methods-rest146045%_
                                             _%method-name146046%_)
                                      (let ((_%$e146049%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145824%_
                                                _%method-name146046%_
                                                '#f))))
                                        (if _%$e146049%_
                                            (_%loop145827%_
                                             _%rest145974%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145832%_ '1))
                                             (cons _%$e146049%_
                                                   _%methods145834%_))
                                            (_%loop-inner145979%_
                                             _%methods-rest146045%_))))))
                              (if (pair? _%$%methods-rest145984145992%_)
                                  (let ((_%$%hd145989146058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest145984145992%_)))
                                        (_%$%tl145990146060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest145984145992%_))))
                                    (let* ((_%method-name146063%_
                                            _%$%hd145989146058%_)
                                           (_%methods-rest146065%_
                                            _%$%tl145990146060%_))
                                      (_%$%K145988146055%_
                                       _%methods-rest146065%_
                                       _%method-name146063%_)))
                                  (_%$%else145986146042%_))))
                          (let ((_%$e146067%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145824%_
                                    _%method-spec145975%_
                                    '#f))))
                            (if _%$e146067%_
                                (_%loop145827%_
                                 _%rest145974%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145832%_ '1))
                                 (cons _%$e146067%_ _%methods145834%_))
                                (let ((_%tab146073%_
                                       (class-type-interface-table
                                        _%obj-klass145806%_)))
                                  (let* ((_%prototable146075%_ _%tab146073%_)
                                         (_%descriptor146078%_
                                          _%descriptor145804%_)
                                         (_%prototype146081%_ '#!void)
                                         (_%prototable146085%_
                                          _%prototable146075%_)
                                         (_%descriptor146098%_
                                          _%descriptor146078%_))
                                    (____prototype-table-set!
                                     _%prototable146085%_
                                     _%descriptor146098%_
                                     _%prototype146081%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor145804%_
                                     'class:
                                     _%obj-klass145806%_
                                     'method:
                                     _%method-spec145975%_)
                                    '#!void))))))))
              (if (pair? _%$%rest145836145844%_)
                  (let ((_%$%hd145841146112%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest145836145844%_)))
                        (_%$%tl145842146114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest145836145844%_))))
                    (let* ((_%method-spec146117%_ _%$%hd145841146112%_)
                           (_%rest146119%_ _%$%tl145842146114%_))
                      (_%$%K145840146109%_
                       _%rest146119%_
                       _%method-spec146117%_)))
                  (_%$%else145838145971%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor145487%_ _%klass145488%_ _%obj-klass145489%_)
        (let ((_%method-table145507%_
               (let ((_%klass145491%_ _%obj-klass145489%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass145491%_ 'class))
                     (let ((_%klass145496%_ _%klass145491%_))
                       (declare (not safe))
                       (__specialize-class _%klass145496%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass145491%_)
                       '#!void)))))
          (let _%loop145510%_ ((_%rest145513%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor145487%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count145515%_ '0)
                               (_%methods145517%_ '()))
            (let* ((_%$%rest145519145527%_ _%rest145513%_)
                   (_%$%else145521145654%_
                    (lambda ()
                      (let ((_%prototype145570%_
                             (let* ((_%klass145535%_ _%klass145488%_)
                                    (_%k145538%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count145515%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145535%_
                                      'class))
                                   (let* ((_%klass145543%_ _%klass145535%_)
                                          (_%k145560%_ _%k145538%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass145543%_
                                      _%k145560%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145535%_)
                                     '#!void)))))
                        (let _%loop145573%_ ((_%rest145575%_ _%methods145517%_)
                                             (_%off145576%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count145515%_ '1))))
                          (let* ((_%$%rest145578145586%_ _%rest145575%_)
                                 (_%$%else145580145635%_
                                  (lambda ()
                                    (let ((_%tab145594%_
                                           (class-type-interface-table
                                            _%obj-klass145489%_)))
                                      (let* ((_%prototable145597%_
                                              _%tab145594%_)
                                             (_%descriptor145600%_
                                              _%descriptor145487%_)
                                             (_%prototype145603%_
                                              _%prototype145570%_)
                                             (_%prototable145607%_
                                              _%prototable145597%_)
                                             (_%descriptor145624%_
                                              _%descriptor145600%_))
                                        (____prototype-table-set!
                                         _%prototable145607%_
                                         _%descriptor145624%_
                                         _%prototype145603%_))
                                      _%prototype145570%_)))
                                 (_%$%K145582145642%_
                                  (lambda (_%rest145638%_ _%method145639%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype145570%_
                                       _%method145639%_
                                       _%off145576%_
                                       _%klass145488%_
                                       '#f))
                                    (_%loop145573%_
                                     _%rest145638%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off145576%_ '1))))))
                            (if (pair? _%$%rest145578145586%_)
                                (let ((_%$%hd145583145645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest145578145586%_)))
                                      (_%$%tl145584145647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest145578145586%_))))
                                  (let* ((_%method145650%_
                                          _%$%hd145583145645%_)
                                         (_%rest145652%_ _%$%tl145584145647%_))
                                    (_%$%K145582145642%_
                                     _%rest145652%_
                                     _%method145650%_)))
                                (_%$%else145580145635%_)))))))
                   (_%$%K145523145792%_
                    (lambda (_%rest145657%_ _%method-spec145658%_)
                      (if (pair? _%method-spec145658%_)
                          (let _%loop-inner145662%_ ((_%methods-rest145665%_
                                                      _%method-spec145658%_))
                            (let* ((_%$%methods-rest145667145675%_
                                    _%methods-rest145665%_)
                                   (_%$%else145669145725%_
                                    (lambda ()
                                      (let ((_%tab145683%_
                                             (class-type-interface-table
                                              _%obj-klass145489%_)))
                                        (let* ((_%prototable145685%_
                                                _%tab145683%_)
                                               (_%descriptor145688%_
                                                _%descriptor145487%_)
                                               (_%prototype145691%_ '#!void)
                                               (_%prototable145695%_
                                                _%prototable145685%_)
                                               (_%descriptor145714%_
                                                _%descriptor145688%_))
                                          (____prototype-table-set!
                                           _%prototable145695%_
                                           _%descriptor145714%_
                                           _%prototype145691%_))
                                        '#f)))
                                   (_%$%K145671145738%_
                                    (lambda (_%methods-rest145728%_
                                             _%method-name145729%_)
                                      (let ((_%$e145732%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table145507%_
                                                _%method-name145729%_
                                                '#f))))
                                        (if _%$e145732%_
                                            (_%loop145510%_
                                             _%rest145657%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count145515%_ '1))
                                             (cons _%$e145732%_
                                                   _%methods145517%_))
                                            (_%loop-inner145662%_
                                             _%methods-rest145728%_))))))
                              (if (pair? _%$%methods-rest145667145675%_)
                                  (let ((_%$%hd145672145741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest145667145675%_)))
                                        (_%$%tl145673145743%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest145667145675%_))))
                                    (let* ((_%method-name145746%_
                                            _%$%hd145672145741%_)
                                           (_%methods-rest145748%_
                                            _%$%tl145673145743%_))
                                      (_%$%K145671145738%_
                                       _%methods-rest145748%_
                                       _%method-name145746%_)))
                                  (_%$%else145669145725%_))))
                          (let ((_%$e145750%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table145507%_
                                    _%method-spec145658%_
                                    '#f))))
                            (if _%$e145750%_
                                (_%loop145510%_
                                 _%rest145657%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count145515%_ '1))
                                 (cons _%$e145750%_ _%methods145517%_))
                                (let ((_%tab145756%_
                                       (class-type-interface-table
                                        _%obj-klass145489%_)))
                                  (let* ((_%prototable145758%_ _%tab145756%_)
                                         (_%descriptor145761%_
                                          _%descriptor145487%_)
                                         (_%prototype145764%_ '#!void)
                                         (_%prototable145768%_
                                          _%prototable145758%_)
                                         (_%descriptor145781%_
                                          _%descriptor145761%_))
                                    (____prototype-table-set!
                                     _%prototable145768%_
                                     _%descriptor145781%_
                                     _%prototype145764%_))
                                  '#f)))))))
              (if (pair? _%$%rest145519145527%_)
                  (let ((_%$%hd145524145795%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest145519145527%_)))
                        (_%$%tl145525145797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest145519145527%_))))
                    (let* ((_%method-spec145800%_ _%$%hd145524145795%_)
                           (_%rest145802%_ _%$%tl145525145797%_))
                      (_%$%K145523145792%_
                       _%rest145802%_
                       _%method-spec145800%_)))
                  (_%$%else145521145654%_)))))))
    (define cast
      (lambda (_%descriptor145321%_ _%obj145323%_)
        (let* ((_%klass145326%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor145321%_ '1 '#f '#f)))
               (_%klass-id145329%_
                (let () (declare (not safe)) (##type-id _%klass145326%_))))
          (let _%loop145333%_ ((_%obj145336%_ _%obj145323%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass145339%_
                    (let () (declare (not safe)) (class-of _%obj145336%_)))
                   (_%obj-klass-id145342%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass145339%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id145329%_ _%obj-klass-id145342%_))
                  _%obj145336%_
                  (if (interface-subclass? _%obj-klass145339%_)
                      (let _%loop-interface145350%_ ((_%iface-klass145353%_
                                                      _%obj-klass145339%_))
                        (if _%iface-klass145353%_
                            (let* ((_%tab145356%_
                                    (class-type-interface-table
                                     _%iface-klass145353%_))
                                   (_%$e145398%_
                                    (let* ((_%prototable145359%_ _%tab145356%_)
                                           (_%descriptor145362%_
                                            _%descriptor145321%_)
                                           (_%prototable145366%_
                                            _%prototable145359%_)
                                           (_%descriptor145389%_
                                            _%descriptor145362%_))
                                      (____prototype-table-get
                                       _%prototable145366%_
                                       _%descriptor145389%_))))
                              (if _%$e145398%_
                                  (if (eq? _%$e145398%_ '#!void)
                                      (_%loop-interface145350%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass145353%_)))
                                      (if _%$e145398%_
                                          (let ((_%instance145408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e145398%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance145408%_
                                               _%obj145336%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance145408%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor145321%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj145336%_)))
                                            '#!void)))
                                  (let ((_%$e145410%_
                                         (try-create-prototype
                                          _%descriptor145321%_
                                          _%klass145326%_
                                          _%iface-klass145353%_)))
                                    (if _%$e145410%_
                                        (if _%$e145410%_
                                            (let ((_%instance145419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e145410%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance145419%_
                                                 _%obj145336%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance145419%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor145321%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj145336%_)))
                                              '#!void))
                                        (_%loop-interface145350%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass145353%_)))))))
                            (_%loop145333%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj145336%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145423%_
                              (class-type-interface-table _%obj-klass145339%_))
                             (_%$e145452%_
                              (let* ((_%prototable145425%_ _%tab145423%_)
                                     (_%descriptor145428%_
                                      _%descriptor145321%_)
                                     (_%prototable145432%_
                                      _%prototable145425%_)
                                     (_%descriptor145443%_
                                      _%descriptor145428%_))
                                (____prototype-table-get
                                 _%prototable145432%_
                                 _%descriptor145443%_))))
                        (if _%$e145452%_
                            (if (eq? _%$e145452%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor145321%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj145336%_)))
                                  '#!void)
                                (if _%$e145452%_
                                    (let ((_%instance145467%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e145452%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance145467%_
                                         _%obj145336%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance145467%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor145321%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj145336%_)))
                                      '#!void)))
                            (let ((_%$e145469%_
                                   (create-prototype
                                    _%descriptor145321%_
                                    _%klass145326%_
                                    _%obj-klass145339%_)))
                              (if _%$e145469%_
                                  (if _%$e145469%_
                                      (let ((_%instance145478%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e145469%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance145478%_
                                           _%obj145336%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance145478%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor145321%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj145336%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor145321%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj145336%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor145155%_ _%obj145157%_)
        (let* ((_%klass145160%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor145155%_ '1 '#f '#f)))
               (_%klass-id145163%_
                (let () (declare (not safe)) (##type-id _%klass145160%_))))
          (let _%loop145167%_ ((_%obj145170%_ _%obj145157%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass145173%_
                    (let () (declare (not safe)) (class-of _%obj145170%_)))
                   (_%obj-klass-id145176%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass145173%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id145163%_ _%obj-klass-id145176%_))
                  _%obj145170%_
                  (if (interface-subclass? _%obj-klass145173%_)
                      (let _%loop-interface145184%_ ((_%iface-klass145187%_
                                                      _%obj-klass145173%_))
                        (if _%iface-klass145187%_
                            (let* ((_%tab145190%_
                                    (class-type-interface-table
                                     _%iface-klass145187%_))
                                   (_%$e145232%_
                                    (let* ((_%prototable145193%_ _%tab145190%_)
                                           (_%descriptor145196%_
                                            _%descriptor145155%_)
                                           (_%prototable145200%_
                                            _%prototable145193%_)
                                           (_%descriptor145223%_
                                            _%descriptor145196%_))
                                      (____prototype-table-get
                                       _%prototable145200%_
                                       _%descriptor145223%_))))
                              (if _%$e145232%_
                                  (if (eq? _%$e145232%_ '#!void)
                                      (_%loop-interface145184%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass145187%_)))
                                      (if _%$e145232%_
                                          (let ((_%instance145242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e145232%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance145242%_
                                               _%obj145170%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance145242%_)
                                          '#f))
                                  (let ((_%$e145244%_
                                         (try-create-prototype
                                          _%descriptor145155%_
                                          _%klass145160%_
                                          _%iface-klass145187%_)))
                                    (if _%$e145244%_
                                        (if _%$e145244%_
                                            (let ((_%instance145253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e145244%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance145253%_
                                                 _%obj145170%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance145253%_)
                                            '#f)
                                        (_%loop-interface145184%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass145187%_)))))))
                            (_%loop145167%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj145170%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145257%_
                              (class-type-interface-table _%obj-klass145173%_))
                             (_%$e145286%_
                              (let* ((_%prototable145259%_ _%tab145257%_)
                                     (_%descriptor145262%_
                                      _%descriptor145155%_)
                                     (_%prototable145266%_
                                      _%prototable145259%_)
                                     (_%descriptor145277%_
                                      _%descriptor145262%_))
                                (____prototype-table-get
                                 _%prototable145266%_
                                 _%descriptor145277%_))))
                        (if _%$e145286%_
                            (if (eq? _%$e145286%_ '#!void)
                                '#f
                                (if _%$e145286%_
                                    (let ((_%instance145301%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e145286%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance145301%_
                                         _%obj145170%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance145301%_)
                                    '#f))
                            (let ((_%$e145303%_
                                   (try-create-prototype
                                    _%descriptor145155%_
                                    _%klass145160%_
                                    _%obj-klass145173%_)))
                              (if _%$e145303%_
                                  (if _%$e145303%_
                                      (let ((_%instance145312%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e145303%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance145312%_
                                           _%obj145170%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance145312%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor145001%_ _%obj145003%_)
        (let* ((_%klass145006%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor145001%_ '1 '#f '#f)))
               (_%klass-id145009%_
                (let () (declare (not safe)) (##type-id _%klass145006%_))))
          (let _%loop145013%_ ((_%obj145016%_ _%obj145003%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass145019%_
                    (let () (declare (not safe)) (class-of _%obj145016%_)))
                   (_%obj-klass-id145022%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass145019%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id145009%_ _%obj-klass-id145022%_))
                  '#t
                  (if (interface-subclass? _%obj-klass145019%_)
                      (let _%loop-interface145030%_ ((_%iface-klass145033%_
                                                      _%obj-klass145019%_))
                        (if _%iface-klass145033%_
                            (let* ((_%tab145036%_
                                    (class-type-interface-table
                                     _%iface-klass145033%_))
                                   (_%$e145078%_
                                    (let* ((_%prototable145039%_ _%tab145036%_)
                                           (_%descriptor145042%_
                                            _%descriptor145001%_)
                                           (_%prototable145046%_
                                            _%prototable145039%_)
                                           (_%descriptor145069%_
                                            _%descriptor145042%_))
                                      (____prototype-table-get
                                       _%prototable145046%_
                                       _%descriptor145069%_))))
                              (if _%$e145078%_
                                  (if (eq? _%$e145078%_ '#!void)
                                      (_%loop-interface145030%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass145033%_)))
                                      (if _%$e145078%_ '#t '#f))
                                  (let ((_%$e145088%_
                                         (try-create-prototype
                                          _%descriptor145001%_
                                          _%klass145006%_
                                          _%iface-klass145033%_)))
                                    (if _%$e145088%_
                                        (if _%$e145088%_ '#t '#f)
                                        (_%loop-interface145030%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass145033%_)))))))
                            (_%loop145013%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj145016%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab145099%_
                              (class-type-interface-table _%obj-klass145019%_))
                             (_%$e145128%_
                              (let* ((_%prototable145101%_ _%tab145099%_)
                                     (_%descriptor145104%_
                                      _%descriptor145001%_)
                                     (_%prototable145108%_
                                      _%prototable145101%_)
                                     (_%descriptor145119%_
                                      _%descriptor145104%_))
                                (____prototype-table-get
                                 _%prototable145108%_
                                 _%descriptor145119%_))))
                        (if _%$e145128%_
                            (if (eq? _%$e145128%_ '#!void)
                                '#f
                                (if _%$e145128%_ '#t '#f))
                            (let ((_%$e145141%_
                                   (try-create-prototype
                                    _%descriptor145001%_
                                    _%klass145006%_
                                    _%obj-klass145019%_)))
                              (if _%$e145141%_
                                  (if _%$e145141%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor144845%_
               _%obj144846%_
               _%with-prototype+receiver144847%_
               _%with-receiver144848%_)
        (let* ((_%descriptor144851%_ _%descriptor144845%_)
               (_%with-prototype+receiver144859%_
                _%with-prototype+receiver144847%_)
               (_%with-receiver144867%_ _%with-receiver144848%_)
               (_%klass144876%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor144851%_ '1 '#f '#f)))
               (_%klass-id144879%_
                (let () (declare (not safe)) (##type-id _%klass144876%_))))
          (let _%loop144883%_ ((_%obj144886%_ _%obj144846%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass144889%_
                    (let () (declare (not safe)) (class-of _%obj144886%_)))
                   (_%obj-klass-id144892%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass144889%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id144879%_ _%obj-klass-id144892%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver144867%_ _%obj144886%_))
                  (if (interface-subclass? _%obj-klass144889%_)
                      (let _%loop-interface144898%_ ((_%iface-klass144901%_
                                                      _%obj-klass144889%_))
                        (if _%iface-klass144901%_
                            (let* ((_%tab144904%_
                                    (class-type-interface-table
                                     _%iface-klass144901%_))
                                   (_%$e144948%_
                                    (let* ((_%prototable144907%_ _%tab144904%_)
                                           (_%descriptor144910%_
                                            _%descriptor144851%_)
                                           (_%prototable144914%_
                                            _%prototable144907%_)
                                           (_%descriptor144939%_
                                            _%descriptor144910%_))
                                      (____prototype-table-get
                                       _%prototable144914%_
                                       _%descriptor144939%_))))
                              (if _%$e144948%_
                                  (if (eq? _%$e144948%_ '#!void)
                                      (_%loop-interface144898%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass144901%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver144859%_
                                         _%descriptor144851%_
                                         _%$e144948%_
                                         _%obj144886%_)))
                                  (let ((_%$e144954%_
                                         (try-create-prototype
                                          _%descriptor144851%_
                                          _%klass144876%_
                                          _%iface-klass144901%_)))
                                    (if _%$e144954%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver144859%_
                                           _%descriptor144851%_
                                           _%$e144954%_
                                           _%obj144886%_))
                                        (_%loop-interface144898%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass144901%_)))))))
                            (_%loop144883%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj144886%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab144961%_
                              (class-type-interface-table _%obj-klass144889%_))
                             (_%$e144990%_
                              (let* ((_%prototable144963%_ _%tab144961%_)
                                     (_%descriptor144966%_
                                      _%descriptor144851%_)
                                     (_%prototable144970%_
                                      _%prototable144963%_)
                                     (_%descriptor144981%_
                                      _%descriptor144966%_))
                                (____prototype-table-get
                                 _%prototable144970%_
                                 _%descriptor144981%_))))
                        (if _%$e144990%_
                            (if (eq? _%$e144990%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144859%_
                                   _%descriptor144851%_
                                   '#f
                                   _%obj144886%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver144859%_
                                   _%descriptor144851%_
                                   _%$e144990%_
                                   _%obj144886%_)))
                            (let ((_%$e144995%_
                                   (create-prototype
                                    _%descriptor144851%_
                                    _%klass144876%_
                                    _%obj-klass144889%_)))
                              (if _%$e144995%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144859%_
                                     _%descriptor144851%_
                                     _%$e144995%_
                                     _%obj144886%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver144859%_
                                     _%descriptor144851%_
                                     '#f
                                     _%obj144886%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor144808%_
               _%obj144809%_
               _%with-prototype+receiver144810%_
               _%with-receiver144811%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor144808%_
               'interface-descriptor::t))
            (let ((_%descriptor144815%_ _%descriptor144808%_))
              (if (procedure? _%with-prototype+receiver144810%_)
                  (let ((_%with-prototype+receiver144825%_
                         _%with-prototype+receiver144810%_))
                    (if (procedure? _%with-receiver144811%_)
                        (let ((_%with-receiver144835%_
                               _%with-receiver144811%_))
                          (__with-prototype
                           _%descriptor144815%_
                           _%obj144809%_
                           _%with-prototype+receiver144825%_
                           _%with-receiver144835%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver144811%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver144810%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor144808%_)
              '#!void))))))
