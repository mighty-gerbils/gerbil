(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1770744574)
  (begin
    (define CastError::t
      (let ((__tmp142829 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/interface#CastError::t
         'CastError
         __tmp142829
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args142743%_
        (apply make-instance CastError::t _%$args142743%_)))
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
      (lambda (_%where142617%_ _%message142618%_ . _%irritants142619%_)
        (let ((__tmp142830
               (let ((__obj142824
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj142824
                    _%message142618%_
                    'where:
                    _%where142617%_
                    'irritants:
                    _%irritants142619%_))
                 __obj142824)))
          (declare (not safe))
          (raise __tmp142830))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp142832 (list)) (__tmp142831 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-instance::t
         'interface-instance
         __tmp142832
         '(object)
         __tmp142831
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args142614%_
        (apply make-instance interface-instance::t _%$args142614%_)))
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
      (let ((__tmp142834 (list))
            (__tmp142833
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'gerbil#interface-descriptor::t
         'interface-descriptor
         __tmp142834
         '(type methods index)
         __tmp142833
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args142611%_
        (apply make-instance interface-descriptor::t _%$args142611%_)))
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
          (let _%again142591%_ ((_%spin142594%_ '0))
            (if (let ((__tmp142835
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp142835 '0))
                (let ((__tmp142836 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp142836))
                (if (let () (declare (not safe)) (##fx< _%spin142594%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again142591%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin142594%_ '1))))
                    (let ((_%owner142600%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner142600%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner142600%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again142591%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r142608%_
               (let ((_%index142606%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index142606%_ '1)))
                 _%index142606%_)))
          (let ()
            (declare (not safe))
            (##vector-set! __next-interface-index-lock '1 '#f))
          (let ()
            (declare (not safe))
            (##vector-cas! __next-interface-index-lock '0 '0 '1))
          _%$r142608%_)))
    (define interface-descriptor:::init!
      (lambda (_%self142572%_ _%type142573%_ _%methods142574%_)
        (let ((_%self142577%_ _%self142572%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self142577%_
             _%type142573%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self142577%_
             _%methods142574%_
             '2
             '#f
             '#f))
          (let ((__tmp142837 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self142577%_
             __tmp142837
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
      (let ((__tmp142839 (list))
            (__tmp142838
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'gerbil#prototype-table::t
         'prototype-table
         __tmp142839
         '(lock table)
         __tmp142838
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args142447%_
        (apply make-instance prototype-table::t _%$args142447%_)))
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
      (lambda (_%self142433%_)
        (let ((_%self142436%_ _%self142433%_))
          (let ((__tmp142840 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self142436%_ __tmp142840 '1 '#f '#f))
          (let ((__tmp142841
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self142436%_
             __tmp142841
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
      (lambda (_%prototable142264%_ _%descriptor142265%_)
        (let* ((_%prototable142268%_ _%prototable142264%_)
               (_%descriptor142276%_ _%descriptor142265%_))
          (declare (not safe))
          (let ((_%lock142286%_
                 (##unchecked-structure-ref _%prototable142268%_ '1 '#f '#f))
                (_%index142287%_
                 (##unchecked-structure-ref _%descriptor142276%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again142291%_ ((_%spin142294%_ '0))
                (if (##fx= (##vector-cas! _%lock142286%_ '0 '1 '0) '0)
                    (##vector-set! _%lock142286%_ '1 (current-thread))
                    (if (##fx< _%spin142294%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again142291%_ (##fx+ _%spin142294%_ '1)))
                        (let ((_%owner142300%_
                               (##vector-ref _%lock142286%_ '1)))
                          (if (eq? _%owner142300%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner142300%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again142291%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r142308%_
                   (let ((_%tab142306%_
                          (##unchecked-structure-ref
                           _%prototable142268%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index142287%_ (vector-length _%tab142306%_))
                         (vector-ref _%tab142306%_ _%index142287%_)
                         '#f))))
              (##vector-set! _%lock142286%_ '1 '#f)
              (##vector-cas! _%lock142286%_ '0 '0 '1)
              _%$r142308%_)))))
    (define __prototype-table-get
      (lambda (_%prototable140245%_ _%descriptor140246%_)
        (let* ((_%prototable140249%_ _%prototable140245%_)
               (_%descriptor140257%_ _%descriptor140246%_))
          (____prototype-table-get
           _%prototable140249%_
           _%descriptor140257%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable142211%_ _%descriptor142212%_ _%prototype142213%_)
        (let* ((_%prototable142216%_ _%prototable142211%_)
               (_%descriptor142224%_ _%descriptor142212%_))
          (declare (not safe))
          (let ((_%lock142234%_
                 (##unchecked-structure-ref _%prototable142216%_ '1 '#f '#f))
                (_%index142235%_
                 (##unchecked-structure-ref _%descriptor142224%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again142239%_ ((_%spin142242%_ '0))
                (if (##fx= (##vector-cas! _%lock142234%_ '0 '1 '0) '0)
                    (##vector-set! _%lock142234%_ '1 (current-thread))
                    (if (##fx< _%spin142242%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again142239%_ (##fx+ _%spin142242%_ '1)))
                        (let ((_%owner142248%_
                               (##vector-ref _%lock142234%_ '1)))
                          (if (eq? _%owner142248%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner142248%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again142239%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r142261%_
                   (let ((_%tab142254%_
                          (##unchecked-structure-ref
                           _%prototable142216%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index142235%_ (vector-length _%tab142254%_))
                         (vector-set!
                          _%tab142254%_
                          _%index142235%_
                          _%prototype142213%_)
                         (let* ((_%new-size142256%_ __next-interface-index)
                                (_%new-tab142258%_
                                 (##make-vector _%new-size142256%_ '#f)))
                           (subvector-move!
                            _%tab142254%_
                            '0
                            (vector-length _%tab142254%_)
                            _%new-tab142258%_
                            '0)
                           (vector-set!
                            _%new-tab142258%_
                            _%index142235%_
                            _%prototype142213%_)
                           (##unchecked-structure-set!
                            _%prototable142216%_
                            _%new-tab142258%_
                            '2
                            '#f
                            '#f))))))
              (##vector-set! _%lock142234%_ '1 '#f)
              (##vector-cas! _%lock142234%_ '0 '0 '1)
              _%$r142261%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable140386%_ _%descriptor140387%_ _%prototype140388%_)
        (let* ((_%prototable140391%_ _%prototable140386%_)
               (_%descriptor140399%_ _%descriptor140387%_))
          (____prototype-table-set!
           _%prototable140391%_
           _%descriptor140399%_
           _%prototype140388%_))))
    (define interface-subclass?
      (lambda (_%klass142204%_)
        (let ((_%super142205142207%_
               (let () (declare (not safe)) (##type-super _%klass142204%_))))
          (if _%super142205142207%_
              (let ((_%super142209%_ _%super142205142207%_))
                (eq? (let () (declare (not safe)) (##type-id _%super142209%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass142196%_)
        (let ((_%$e142198%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass142196%_ '13 '#f '#f))))
          (if _%$e142198%_
              _%$e142198%_
              (let ((_%tab142202%_
                     (let ((__obj142828
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj142828)
                       __obj142828)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass142196%_
                   _%tab142202%_
                   '13
                   '#f
                   '#f))
                _%tab142202%_)))))
    (define create-prototype
      (lambda (_%descriptor141879%_ _%klass141880%_ _%obj-klass141881%_)
        (let ((_%method-table141899%_
               (let ((_%klass141883%_ _%obj-klass141881%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass141883%_ 'class))
                     (let ((_%klass141888%_ _%klass141883%_))
                       (declare (not safe))
                       (__specialize-class _%klass141888%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass141883%_)
                       '#!void)))))
          (let _%loop141902%_ ((_%rest141905%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor141879%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count141907%_ '0)
                               (_%methods141909%_ '()))
            (let* ((_%rest141911141919%_ _%rest141905%_)
                   (_%else141913142046%_
                    (lambda ()
                      (let ((_%prototype141962%_
                             (let* ((_%klass141927%_ _%klass141880%_)
                                    (_%k141930%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count141907%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass141927%_
                                      'class))
                                   (let* ((_%klass141935%_ _%klass141927%_)
                                          (_%k141952%_ _%k141930%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass141935%_
                                      _%k141952%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass141927%_)
                                     '#!void)))))
                        (let _%loop141965%_ ((_%rest141967%_ _%methods141909%_)
                                             (_%off141968%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count141907%_ '1))))
                          (let* ((_%rest141970141978%_ _%rest141967%_)
                                 (_%else141972142027%_
                                  (lambda ()
                                    (let ((_%tab141986%_
                                           (class-type-interface-table
                                            _%obj-klass141881%_)))
                                      (let* ((_%prototable141989%_
                                              _%tab141986%_)
                                             (_%descriptor141992%_
                                              _%descriptor141879%_)
                                             (_%prototype141995%_
                                              _%prototype141962%_)
                                             (_%prototable141999%_
                                              _%prototable141989%_)
                                             (_%descriptor142016%_
                                              _%descriptor141992%_))
                                        (____prototype-table-set!
                                         _%prototable141999%_
                                         _%descriptor142016%_
                                         _%prototype141995%_))
                                      ((lambda (_%prototype142025%_)
                                         _%prototype142025%_)
                                       _%prototype141962%_))))
                                 (_%K141974142034%_
                                  (lambda (_%rest142030%_ _%method142031%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype141962%_
                                       _%method142031%_
                                       _%off141968%_
                                       _%klass141880%_
                                       '#f))
                                    (_%loop141965%_
                                     _%rest142030%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off141968%_ '1))))))
                            (if (pair? _%rest141970141978%_)
                                (let ((_%hd141975142037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest141970141978%_)))
                                      (_%tl141976142039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest141970141978%_))))
                                  (let* ((_%method142042%_ _%hd141975142037%_)
                                         (_%rest142044%_ _%tl141976142039%_))
                                    (_%K141974142034%_
                                     _%rest142044%_
                                     _%method142042%_)))
                                (_%else141972142027%_)))))))
                   (_%K141915142184%_
                    (lambda (_%rest142049%_ _%method-spec142050%_)
                      (if (pair? _%method-spec142050%_)
                          (let _%loop-inner142054%_ ((_%methods-rest142057%_
                                                      _%method-spec142050%_))
                            (let* ((_%methods-rest142059142067%_
                                    _%methods-rest142057%_)
                                   (_%else142061142117%_
                                    (lambda ()
                                      (let ((_%tab142075%_
                                             (class-type-interface-table
                                              _%obj-klass141881%_)))
                                        (let* ((_%prototable142077%_
                                                _%tab142075%_)
                                               (_%descriptor142080%_
                                                _%descriptor141879%_)
                                               (_%prototype142083%_ '#!void)
                                               (_%prototable142087%_
                                                _%prototable142077%_)
                                               (_%descriptor142106%_
                                                _%descriptor142080%_))
                                          (____prototype-table-set!
                                           _%prototable142087%_
                                           _%descriptor142106%_
                                           _%prototype142083%_))
                                        ((lambda (_%method142115%_)
                                           (raise-cast-error
                                            'create-prototype
                                            '"cannot create interface prototype; missing method"
                                            'interface:
                                            _%descriptor141879%_
                                            'class:
                                            _%obj-klass141881%_
                                            'method:
                                            _%method142115%_)
                                           '#!void)
                                         _%method-spec142050%_))))
                                   (_%K142063142130%_
                                    (lambda (_%methods-rest142120%_
                                             _%method-name142121%_)
                                      (let ((_%$e142124%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table141899%_
                                                _%method-name142121%_
                                                '#f))))
                                        (if _%$e142124%_
                                            ((lambda (_%method142127%_)
                                               (_%loop141902%_
                                                _%rest142049%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count141907%_ '1))
                                                (cons _%method142127%_
                                                      _%methods141909%_)))
                                             _%$e142124%_)
                                            (_%loop-inner142054%_
                                             _%methods-rest142120%_))))))
                              (if (pair? _%methods-rest142059142067%_)
                                  (let ((_%hd142064142133%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest142059142067%_)))
                                        (_%tl142065142135%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest142059142067%_))))
                                    (let* ((_%method-name142138%_
                                            _%hd142064142133%_)
                                           (_%methods-rest142140%_
                                            _%tl142065142135%_))
                                      (_%K142063142130%_
                                       _%methods-rest142140%_
                                       _%method-name142138%_)))
                                  (_%else142061142117%_))))
                          (let ((_%$e142142%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table141899%_
                                    _%method-spec142050%_
                                    '#f))))
                            (if _%$e142142%_
                                ((lambda (_%method142145%_)
                                   (_%loop141902%_
                                    _%rest142049%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count141907%_ '1))
                                    (cons _%method142145%_ _%methods141909%_)))
                                 _%$e142142%_)
                                (let ((_%tab142148%_
                                       (class-type-interface-table
                                        _%obj-klass141881%_)))
                                  (let* ((_%prototable142150%_ _%tab142148%_)
                                         (_%descriptor142153%_
                                          _%descriptor141879%_)
                                         (_%prototype142156%_ '#!void)
                                         (_%prototable142160%_
                                          _%prototable142150%_)
                                         (_%descriptor142173%_
                                          _%descriptor142153%_))
                                    (____prototype-table-set!
                                     _%prototable142160%_
                                     _%descriptor142173%_
                                     _%prototype142156%_))
                                  ((lambda (_%method142182%_)
                                     (raise-cast-error
                                      'create-prototype
                                      '"cannot create interface prototype; missing method"
                                      'interface:
                                      _%descriptor141879%_
                                      'class:
                                      _%obj-klass141881%_
                                      'method:
                                      _%method142182%_)
                                     '#!void)
                                   _%method-spec142050%_))))))))
              (if (pair? _%rest141911141919%_)
                  (let ((_%hd141916142187%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest141911141919%_)))
                        (_%tl141917142189%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest141911141919%_))))
                    (let* ((_%method-spec142192%_ _%hd141916142187%_)
                           (_%rest142194%_ _%tl141917142189%_))
                      (_%K141915142184%_
                       _%rest142194%_
                       _%method-spec142192%_)))
                  (_%else141913142046%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor141562%_ _%klass141563%_ _%obj-klass141564%_)
        (let ((_%method-table141582%_
               (let ((_%klass141566%_ _%obj-klass141564%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass141566%_ 'class))
                     (let ((_%klass141571%_ _%klass141566%_))
                       (declare (not safe))
                       (__specialize-class _%klass141571%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass141566%_)
                       '#!void)))))
          (let _%loop141585%_ ((_%rest141588%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor141562%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count141590%_ '0)
                               (_%methods141592%_ '()))
            (let* ((_%rest141594141602%_ _%rest141588%_)
                   (_%else141596141729%_
                    (lambda ()
                      (let ((_%prototype141645%_
                             (let* ((_%klass141610%_ _%klass141563%_)
                                    (_%k141613%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count141590%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass141610%_
                                      'class))
                                   (let* ((_%klass141618%_ _%klass141610%_)
                                          (_%k141635%_ _%k141613%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass141618%_
                                      _%k141635%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass141610%_)
                                     '#!void)))))
                        (let _%loop141648%_ ((_%rest141650%_ _%methods141592%_)
                                             (_%off141651%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count141590%_ '1))))
                          (let* ((_%rest141653141661%_ _%rest141650%_)
                                 (_%else141655141710%_
                                  (lambda ()
                                    (let ((_%tab141669%_
                                           (class-type-interface-table
                                            _%obj-klass141564%_)))
                                      (let* ((_%prototable141672%_
                                              _%tab141669%_)
                                             (_%descriptor141675%_
                                              _%descriptor141562%_)
                                             (_%prototype141678%_
                                              _%prototype141645%_)
                                             (_%prototable141682%_
                                              _%prototable141672%_)
                                             (_%descriptor141699%_
                                              _%descriptor141675%_))
                                        (____prototype-table-set!
                                         _%prototable141682%_
                                         _%descriptor141699%_
                                         _%prototype141678%_))
                                      ((lambda (_%prototype141708%_)
                                         _%prototype141708%_)
                                       _%prototype141645%_))))
                                 (_%K141657141717%_
                                  (lambda (_%rest141713%_ _%method141714%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype141645%_
                                       _%method141714%_
                                       _%off141651%_
                                       _%klass141563%_
                                       '#f))
                                    (_%loop141648%_
                                     _%rest141713%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off141651%_ '1))))))
                            (if (pair? _%rest141653141661%_)
                                (let ((_%hd141658141720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest141653141661%_)))
                                      (_%tl141659141722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest141653141661%_))))
                                  (let* ((_%method141725%_ _%hd141658141720%_)
                                         (_%rest141727%_ _%tl141659141722%_))
                                    (_%K141657141717%_
                                     _%rest141727%_
                                     _%method141725%_)))
                                (_%else141655141710%_)))))))
                   (_%K141598141867%_
                    (lambda (_%rest141732%_ _%method-spec141733%_)
                      (if (pair? _%method-spec141733%_)
                          (let _%loop-inner141737%_ ((_%methods-rest141740%_
                                                      _%method-spec141733%_))
                            (let* ((_%methods-rest141742141750%_
                                    _%methods-rest141740%_)
                                   (_%else141744141800%_
                                    (lambda ()
                                      (let ((_%tab141758%_
                                             (class-type-interface-table
                                              _%obj-klass141564%_)))
                                        (let* ((_%prototable141760%_
                                                _%tab141758%_)
                                               (_%descriptor141763%_
                                                _%descriptor141562%_)
                                               (_%prototype141766%_ '#!void)
                                               (_%prototable141770%_
                                                _%prototable141760%_)
                                               (_%descriptor141789%_
                                                _%descriptor141763%_))
                                          (____prototype-table-set!
                                           _%prototable141770%_
                                           _%descriptor141789%_
                                           _%prototype141766%_))
                                        ((lambda (_%method141798%_) '#f)
                                         _%method-spec141733%_))))
                                   (_%K141746141813%_
                                    (lambda (_%methods-rest141803%_
                                             _%method-name141804%_)
                                      (let ((_%$e141807%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table141582%_
                                                _%method-name141804%_
                                                '#f))))
                                        (if _%$e141807%_
                                            ((lambda (_%method141810%_)
                                               (_%loop141585%_
                                                _%rest141732%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%count141590%_ '1))
                                                (cons _%method141810%_
                                                      _%methods141592%_)))
                                             _%$e141807%_)
                                            (_%loop-inner141737%_
                                             _%methods-rest141803%_))))))
                              (if (pair? _%methods-rest141742141750%_)
                                  (let ((_%hd141747141816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%methods-rest141742141750%_)))
                                        (_%tl141748141818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%methods-rest141742141750%_))))
                                    (let* ((_%method-name141821%_
                                            _%hd141747141816%_)
                                           (_%methods-rest141823%_
                                            _%tl141748141818%_))
                                      (_%K141746141813%_
                                       _%methods-rest141823%_
                                       _%method-name141821%_)))
                                  (_%else141744141800%_))))
                          (let ((_%$e141825%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table141582%_
                                    _%method-spec141733%_
                                    '#f))))
                            (if _%$e141825%_
                                ((lambda (_%method141828%_)
                                   (_%loop141585%_
                                    _%rest141732%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%count141590%_ '1))
                                    (cons _%method141828%_ _%methods141592%_)))
                                 _%$e141825%_)
                                (let ((_%tab141831%_
                                       (class-type-interface-table
                                        _%obj-klass141564%_)))
                                  (let* ((_%prototable141833%_ _%tab141831%_)
                                         (_%descriptor141836%_
                                          _%descriptor141562%_)
                                         (_%prototype141839%_ '#!void)
                                         (_%prototable141843%_
                                          _%prototable141833%_)
                                         (_%descriptor141856%_
                                          _%descriptor141836%_))
                                    (____prototype-table-set!
                                     _%prototable141843%_
                                     _%descriptor141856%_
                                     _%prototype141839%_))
                                  ((lambda (_%method141865%_) '#f)
                                   _%method-spec141733%_))))))))
              (if (pair? _%rest141594141602%_)
                  (let ((_%hd141599141870%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest141594141602%_)))
                        (_%tl141600141872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest141594141602%_))))
                    (let* ((_%method-spec141875%_ _%hd141599141870%_)
                           (_%rest141877%_ _%tl141600141872%_))
                      (_%K141598141867%_
                       _%rest141877%_
                       _%method-spec141875%_)))
                  (_%else141596141729%_)))))))
    (define cast
      (lambda (_%descriptor141404%_ _%obj141406%_)
        (let* ((_%klass141409%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor141404%_ '1 '#f '#f)))
               (_%klass-id141412%_
                (let () (declare (not safe)) (##type-id _%klass141409%_))))
          (let _%loop141416%_ ((_%obj141419%_ _%obj141406%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass141422%_
                    (let () (declare (not safe)) (class-of _%obj141419%_)))
                   (_%obj-klass-id141425%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass141422%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id141412%_ _%obj-klass-id141425%_))
                  ((lambda (_%obj141430%_) _%obj141430%_) _%obj141419%_)
                  (if (interface-subclass? _%obj-klass141422%_)
                      (let* ((_%tab141433%_
                              (class-type-interface-table _%obj-klass141422%_))
                             (_%$e141473%_
                              (let* ((_%prototable141436%_ _%tab141433%_)
                                     (_%descriptor141439%_
                                      _%descriptor141404%_)
                                     (_%prototable141443%_
                                      _%prototable141436%_)
                                     (_%descriptor141464%_
                                      _%descriptor141439%_))
                                (____prototype-table-get
                                 _%prototable141443%_
                                 _%descriptor141464%_))))
                        (if _%$e141473%_
                            ((lambda (_%prototype141476%_)
                               (if (eq? _%prototype141476%_ '#!void)
                                   (_%loop141416%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj141419%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor141479%_
                                             _%prototype141480%_
                                             _%obj141481%_)
                                      (if _%prototype141480%_
                                          (let ((_%instance141483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141480%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141483%_
                                               _%obj141481%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141483%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor141479%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj141481%_)))
                                            '#!void)))
                                    _%descriptor141404%_
                                    _%prototype141476%_
                                    _%obj141419%_)))
                             _%$e141473%_)
                            (let ((_%$e141485%_
                                   (try-create-prototype
                                    _%descriptor141404%_
                                    _%klass141409%_
                                    _%obj-klass141422%_)))
                              (if _%$e141485%_
                                  ((lambda (_%prototype141488%_)
                                     ((lambda (_%descriptor141490%_
                                               _%prototype141491%_
                                               _%obj141492%_)
                                        (if _%prototype141491%_
                                            (let ((_%instance141494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype141491%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance141494%_
                                                 _%obj141492%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance141494%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor141490%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj141492%_)))
                                              '#!void)))
                                      _%descriptor141404%_
                                      _%prototype141488%_
                                      _%obj141419%_))
                                   _%$e141485%_)
                                  (_%loop141416%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj141419%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab141498%_
                              (class-type-interface-table _%obj-klass141422%_))
                             (_%$e141527%_
                              (let* ((_%prototable141500%_ _%tab141498%_)
                                     (_%descriptor141503%_
                                      _%descriptor141404%_)
                                     (_%prototable141507%_
                                      _%prototable141500%_)
                                     (_%descriptor141518%_
                                      _%descriptor141503%_))
                                (____prototype-table-get
                                 _%prototable141507%_
                                 _%descriptor141518%_))))
                        (if _%$e141527%_
                            ((lambda (_%prototype141530%_)
                               (if (eq? _%prototype141530%_ '#!void)
                                   ((lambda (_%descriptor141532%_
                                             _%prototype141533%_
                                             _%obj141534%_)
                                      (if _%prototype141533%_
                                          (let ((_%instance141536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141533%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141536%_
                                               _%obj141534%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141536%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor141532%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj141534%_)))
                                            '#!void)))
                                    _%descriptor141404%_
                                    '#f
                                    _%obj141419%_)
                                   ((lambda (_%descriptor141538%_
                                             _%prototype141539%_
                                             _%obj141540%_)
                                      (if _%prototype141539%_
                                          (let ((_%instance141542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141539%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141542%_
                                               _%obj141540%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141542%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor141538%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj141540%_)))
                                            '#!void)))
                                    _%descriptor141404%_
                                    _%prototype141530%_
                                    _%obj141419%_)))
                             _%$e141527%_)
                            (let ((_%$e141544%_
                                   (create-prototype
                                    _%descriptor141404%_
                                    _%klass141409%_
                                    _%obj-klass141422%_)))
                              (if _%$e141544%_
                                  ((lambda (_%prototype141547%_)
                                     ((lambda (_%descriptor141549%_
                                               _%prototype141550%_
                                               _%obj141551%_)
                                        (if _%prototype141550%_
                                            (let ((_%instance141553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype141550%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance141553%_
                                                 _%obj141551%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance141553%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor141549%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj141551%_)))
                                              '#!void)))
                                      _%descriptor141404%_
                                      _%prototype141547%_
                                      _%obj141419%_))
                                   _%$e141544%_)
                                  ((lambda (_%descriptor141556%_
                                            _%prototype141557%_
                                            _%obj141558%_)
                                     (if _%prototype141557%_
                                         (let ((_%instance141560%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype141557%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance141560%_
                                              _%obj141558%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance141560%_)
                                         (begin
                                           (raise-cast-error
                                            'cast
                                            '"cannot create interface prototype"
                                            'interface:
                                            _%descriptor141556%_
                                            'class:
                                            (let ()
                                              (declare (not safe))
                                              (class-of _%obj141558%_)))
                                           '#!void)))
                                   _%descriptor141404%_
                                   '#f
                                   _%obj141419%_))))))))))))
    (define try-cast
      (lambda (_%descriptor141246%_ _%obj141248%_)
        (let* ((_%klass141251%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor141246%_ '1 '#f '#f)))
               (_%klass-id141254%_
                (let () (declare (not safe)) (##type-id _%klass141251%_))))
          (let _%loop141258%_ ((_%obj141261%_ _%obj141248%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass141264%_
                    (let () (declare (not safe)) (class-of _%obj141261%_)))
                   (_%obj-klass-id141267%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass141264%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id141254%_ _%obj-klass-id141267%_))
                  ((lambda (_%obj141272%_) _%obj141272%_) _%obj141261%_)
                  (if (interface-subclass? _%obj-klass141264%_)
                      (let* ((_%tab141275%_
                              (class-type-interface-table _%obj-klass141264%_))
                             (_%$e141315%_
                              (let* ((_%prototable141278%_ _%tab141275%_)
                                     (_%descriptor141281%_
                                      _%descriptor141246%_)
                                     (_%prototable141285%_
                                      _%prototable141278%_)
                                     (_%descriptor141306%_
                                      _%descriptor141281%_))
                                (____prototype-table-get
                                 _%prototable141285%_
                                 _%descriptor141306%_))))
                        (if _%$e141315%_
                            ((lambda (_%prototype141318%_)
                               (if (eq? _%prototype141318%_ '#!void)
                                   (_%loop141258%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj141261%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor141321%_
                                             _%prototype141322%_
                                             _%obj141323%_)
                                      (if _%prototype141322%_
                                          (let ((_%instance141325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141322%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141325%_
                                               _%obj141323%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141325%_)
                                          '#f))
                                    _%descriptor141246%_
                                    _%prototype141318%_
                                    _%obj141261%_)))
                             _%$e141315%_)
                            (let ((_%$e141327%_
                                   (try-create-prototype
                                    _%descriptor141246%_
                                    _%klass141251%_
                                    _%obj-klass141264%_)))
                              (if _%$e141327%_
                                  ((lambda (_%prototype141330%_)
                                     ((lambda (_%descriptor141332%_
                                               _%prototype141333%_
                                               _%obj141334%_)
                                        (if _%prototype141333%_
                                            (let ((_%instance141336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype141333%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance141336%_
                                                 _%obj141334%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance141336%_)
                                            '#f))
                                      _%descriptor141246%_
                                      _%prototype141330%_
                                      _%obj141261%_))
                                   _%$e141327%_)
                                  (_%loop141258%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj141261%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab141340%_
                              (class-type-interface-table _%obj-klass141264%_))
                             (_%$e141369%_
                              (let* ((_%prototable141342%_ _%tab141340%_)
                                     (_%descriptor141345%_
                                      _%descriptor141246%_)
                                     (_%prototable141349%_
                                      _%prototable141342%_)
                                     (_%descriptor141360%_
                                      _%descriptor141345%_))
                                (____prototype-table-get
                                 _%prototable141349%_
                                 _%descriptor141360%_))))
                        (if _%$e141369%_
                            ((lambda (_%prototype141372%_)
                               (if (eq? _%prototype141372%_ '#!void)
                                   ((lambda (_%descriptor141374%_
                                             _%prototype141375%_
                                             _%obj141376%_)
                                      (if _%prototype141375%_
                                          (let ((_%instance141378%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141375%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141378%_
                                               _%obj141376%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141378%_)
                                          '#f))
                                    _%descriptor141246%_
                                    '#f
                                    _%obj141261%_)
                                   ((lambda (_%descriptor141380%_
                                             _%prototype141381%_
                                             _%obj141382%_)
                                      (if _%prototype141381%_
                                          (let ((_%instance141384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%prototype141381%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance141384%_
                                               _%obj141382%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance141384%_)
                                          '#f))
                                    _%descriptor141246%_
                                    _%prototype141372%_
                                    _%obj141261%_)))
                             _%$e141369%_)
                            (let ((_%$e141386%_
                                   (try-create-prototype
                                    _%descriptor141246%_
                                    _%klass141251%_
                                    _%obj-klass141264%_)))
                              (if _%$e141386%_
                                  ((lambda (_%prototype141389%_)
                                     ((lambda (_%descriptor141391%_
                                               _%prototype141392%_
                                               _%obj141393%_)
                                        (if _%prototype141392%_
                                            (let ((_%instance141395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%prototype141392%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance141395%_
                                                 _%obj141393%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance141395%_)
                                            '#f))
                                      _%descriptor141246%_
                                      _%prototype141389%_
                                      _%obj141261%_))
                                   _%$e141386%_)
                                  ((lambda (_%descriptor141398%_
                                            _%prototype141399%_
                                            _%obj141400%_)
                                     (if _%prototype141399%_
                                         (let ((_%instance141402%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##structure-copy
                                                   _%prototype141399%_))))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-set!
                                              _%instance141402%_
                                              _%obj141400%_
                                              '1
                                              '#f
                                              'cast))
                                           _%instance141402%_)
                                         '#f))
                                   _%descriptor141246%_
                                   '#f
                                   _%obj141261%_))))))))))))
    (define satisfies?
      (lambda (_%descriptor141100%_ _%obj141102%_)
        (let* ((_%klass141105%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor141100%_ '1 '#f '#f)))
               (_%klass-id141108%_
                (let () (declare (not safe)) (##type-id _%klass141105%_))))
          (let _%loop141112%_ ((_%obj141115%_ _%obj141102%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass141118%_
                    (let () (declare (not safe)) (class-of _%obj141115%_)))
                   (_%obj-klass-id141121%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass141118%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id141108%_ _%obj-klass-id141121%_))
                  ((lambda (_%obj141126%_) '#t) _%obj141115%_)
                  (if (interface-subclass? _%obj-klass141118%_)
                      (let* ((_%tab141129%_
                              (class-type-interface-table _%obj-klass141118%_))
                             (_%$e141169%_
                              (let* ((_%prototable141132%_ _%tab141129%_)
                                     (_%descriptor141135%_
                                      _%descriptor141100%_)
                                     (_%prototable141139%_
                                      _%prototable141132%_)
                                     (_%descriptor141160%_
                                      _%descriptor141135%_))
                                (____prototype-table-get
                                 _%prototable141139%_
                                 _%descriptor141160%_))))
                        (if _%$e141169%_
                            ((lambda (_%prototype141172%_)
                               (if (eq? _%prototype141172%_ '#!void)
                                   (_%loop141112%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj141115%_
                                       '1
                                       '#f
                                       '#f)))
                                   ((lambda (_%descriptor141175%_
                                             _%prototype141176%_
                                             _%obj141177%_)
                                      (if _%prototype141176%_ '#t '#f))
                                    _%descriptor141100%_
                                    _%prototype141172%_
                                    _%obj141115%_)))
                             _%$e141169%_)
                            (let ((_%$e141179%_
                                   (try-create-prototype
                                    _%descriptor141100%_
                                    _%klass141105%_
                                    _%obj-klass141118%_)))
                              (if _%$e141179%_
                                  ((lambda (_%prototype141182%_)
                                     ((lambda (_%descriptor141184%_
                                               _%prototype141185%_
                                               _%obj141186%_)
                                        (if _%prototype141185%_ '#t '#f))
                                      _%descriptor141100%_
                                      _%prototype141182%_
                                      _%obj141115%_))
                                   _%$e141179%_)
                                  (_%loop141112%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj141115%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab141190%_
                              (class-type-interface-table _%obj-klass141118%_))
                             (_%$e141219%_
                              (let* ((_%prototable141192%_ _%tab141190%_)
                                     (_%descriptor141195%_
                                      _%descriptor141100%_)
                                     (_%prototable141199%_
                                      _%prototable141192%_)
                                     (_%descriptor141210%_
                                      _%descriptor141195%_))
                                (____prototype-table-get
                                 _%prototable141199%_
                                 _%descriptor141210%_))))
                        (if _%$e141219%_
                            ((lambda (_%prototype141222%_)
                               (if (eq? _%prototype141222%_ '#!void)
                                   ((lambda (_%descriptor141224%_
                                             _%prototype141225%_
                                             _%obj141226%_)
                                      (if _%prototype141225%_ '#t '#f))
                                    _%descriptor141100%_
                                    '#f
                                    _%obj141115%_)
                                   ((lambda (_%descriptor141228%_
                                             _%prototype141229%_
                                             _%obj141230%_)
                                      (if _%prototype141229%_ '#t '#f))
                                    _%descriptor141100%_
                                    _%prototype141222%_
                                    _%obj141115%_)))
                             _%$e141219%_)
                            (let ((_%$e141232%_
                                   (try-create-prototype
                                    _%descriptor141100%_
                                    _%klass141105%_
                                    _%obj-klass141118%_)))
                              (if _%$e141232%_
                                  ((lambda (_%prototype141235%_)
                                     ((lambda (_%descriptor141237%_
                                               _%prototype141238%_
                                               _%obj141239%_)
                                        (if _%prototype141238%_ '#t '#f))
                                      _%descriptor141100%_
                                      _%prototype141235%_
                                      _%obj141115%_))
                                   _%$e141232%_)
                                  ((lambda (_%descriptor141242%_
                                            _%prototype141243%_
                                            _%obj141244%_)
                                     (if _%prototype141243%_ '#t '#f))
                                   _%descriptor141100%_
                                   '#f
                                   _%obj141115%_))))))))))))
    (define __with-prototype
      (lambda (_%descriptor140952%_
               _%obj140953%_
               _%with-prototype+receiver140954%_
               _%with-receiver140955%_)
        (let* ((_%descriptor140958%_ _%descriptor140952%_)
               (_%with-prototype+receiver140966%_
                _%with-prototype+receiver140954%_)
               (_%with-receiver140974%_ _%with-receiver140955%_)
               (_%klass140983%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor140958%_ '1 '#f '#f)))
               (_%klass-id140986%_
                (let () (declare (not safe)) (##type-id _%klass140983%_))))
          (let _%loop140990%_ ((_%obj140993%_ _%obj140953%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass140996%_
                    (let () (declare (not safe)) (class-of _%obj140993%_)))
                   (_%obj-klass-id140999%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass140996%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id140986%_ _%obj-klass-id140999%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver140974%_ _%obj140993%_))
                  (if (interface-subclass? _%obj-klass140996%_)
                      (let* ((_%tab141005%_
                              (class-type-interface-table _%obj-klass140996%_))
                             (_%$e141047%_
                              (let* ((_%prototable141008%_ _%tab141005%_)
                                     (_%descriptor141011%_
                                      _%descriptor140958%_)
                                     (_%prototable141015%_
                                      _%prototable141008%_)
                                     (_%descriptor141038%_
                                      _%descriptor141011%_))
                                (____prototype-table-get
                                 _%prototable141015%_
                                 _%descriptor141038%_))))
                        (if _%$e141047%_
                            ((lambda (_%prototype141050%_)
                               (if (eq? _%prototype141050%_ '#!void)
                                   (_%loop140990%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%obj140993%_
                                       '1
                                       '#f
                                       '#f)))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver140966%_
                                      _%descriptor140958%_
                                      _%prototype141050%_
                                      _%obj140993%_))))
                             _%$e141047%_)
                            (let ((_%$e141053%_
                                   (try-create-prototype
                                    _%descriptor140958%_
                                    _%klass140983%_
                                    _%obj-klass140996%_)))
                              (if _%$e141053%_
                                  ((lambda (_%prototype141056%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver140966%_
                                        _%descriptor140958%_
                                        _%prototype141056%_
                                        _%obj140993%_)))
                                   _%$e141053%_)
                                  (_%loop140990%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%obj140993%_
                                      '1
                                      '#f
                                      '#f)))))))
                      (let* ((_%tab141060%_
                              (class-type-interface-table _%obj-klass140996%_))
                             (_%$e141089%_
                              (let* ((_%prototable141062%_ _%tab141060%_)
                                     (_%descriptor141065%_
                                      _%descriptor140958%_)
                                     (_%prototable141069%_
                                      _%prototable141062%_)
                                     (_%descriptor141080%_
                                      _%descriptor141065%_))
                                (____prototype-table-get
                                 _%prototable141069%_
                                 _%descriptor141080%_))))
                        (if _%$e141089%_
                            ((lambda (_%prototype141092%_)
                               (if (eq? _%prototype141092%_ '#!void)
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver140966%_
                                      _%descriptor140958%_
                                      '#f
                                      _%obj140993%_))
                                   (let ()
                                     (declare (not safe))
                                     (_%with-prototype+receiver140966%_
                                      _%descriptor140958%_
                                      _%prototype141092%_
                                      _%obj140993%_))))
                             _%$e141089%_)
                            (let ((_%$e141094%_
                                   (create-prototype
                                    _%descriptor140958%_
                                    _%klass140983%_
                                    _%obj-klass140996%_)))
                              (if _%$e141094%_
                                  ((lambda (_%prototype141097%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%with-prototype+receiver140966%_
                                        _%descriptor140958%_
                                        _%prototype141097%_
                                        _%obj140993%_)))
                                   _%$e141094%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver140966%_
                                     _%descriptor140958%_
                                     '#f
                                     _%obj140993%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor140915%_
               _%obj140916%_
               _%with-prototype+receiver140917%_
               _%with-receiver140918%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor140915%_
               'gerbil#interface-descriptor::t))
            (let ((_%descriptor140922%_ _%descriptor140915%_))
              (if (procedure? _%with-prototype+receiver140917%_)
                  (let ((_%with-prototype+receiver140932%_
                         _%with-prototype+receiver140917%_))
                    (if (procedure? _%with-receiver140918%_)
                        (let ((_%with-receiver140942%_
                               _%with-receiver140918%_))
                          (__with-prototype
                           _%descriptor140922%_
                           _%obj140916%_
                           _%with-prototype+receiver140932%_
                           _%with-receiver140942%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@235.9-235.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver140918%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@234.9-234.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver140917%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@233.23-233.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor140915%_)
              '#!void))))))
