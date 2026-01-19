(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1768863410)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class-type-flag-system '8192)
    (define class-type-flag-acyclic '16384)
    (define t::t
      (let ((_%flags110284%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110285%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110286%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags110284%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table110286%_
           _%properties110285%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots110260%_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector110262%_ (list->vector (cons '#f _%slots110260%_)))
             (_%slot-table110269%_
              (let ((_%slot-table110264%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111871
                       (lambda (_%slot110266%_ _%field110267%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110264%_
                            _%slot110266%_
                            _%field110267%_))
                         (let ((__tmp111872
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110266%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110264%_
                            __tmp111872
                            _%field110267%_))))
                      (__tmp111869
                       (let ((__tmp111870
                              (let ()
                                (declare (not safe))
                                (##length _%slots110260%_))))
                         (declare (not safe))
                         (##iota __tmp111870 '1))))
                  (declare (not safe))
                  (##for-each __tmp111871 _%slots110260%_ __tmp111869))
                _%slot-table110264%_))
             (_%flags110271%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110277%_
              (list->vector
               (let ((__tmp111873
                      (map (lambda (_%g110272110274%_)
                             (list _%g110272110274%_ '5 '#f))
                           (drop _%slots110260%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp111873))))
             (_%properties110279%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110260%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t110281%_
              (let ((__tmp111874 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags110271%_
                 ##type-type
                 _%fields110277%_
                 __tmp111874
                 _%slot-vector110262%_
                 _%slot-table110269%_
                 _%properties110279%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t110281%_ _%t110281%_))
        _%t110281%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags110256%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110257%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110258%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp111875 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags110256%_
           '#f
           '#()
           __tmp111875
           '#(#f)
           _%slot-table110258%_
           _%properties110257%_
           '#f
           '#f
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj110254%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj110254%_ 'class))))
    (define class-type=?
      (lambda (_%x110229%_ _%y110230%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x110229%_ 'class))
            (let ((_%x110234%_ _%x110229%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y110230%_ 'class))
                  (let ((_%y110244%_ _%y110230%_))
                    (__class-type=? _%x110234%_ _%y110244%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@171.34-171.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y110230%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.22"
               'contract:
               'class-type?
               'value:
               _%x110229%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x110208%_ _%y110209%_)
        (let* ((_%x110212%_ _%x110208%_) (_%y110220%_ _%y110209%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x110212%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y110220%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type110194%_)
        (if (let () (declare (not safe)) (##type? _%type110194%_))
            (let ((_%type110198%_ _%type110194%_))
              (__type-opaque? _%type110198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@185.21-185.25"
               'contract:
               '##type?
               'value:
               _%type110194%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type110182%_)
        (let* ((_%type110185%_ _%type110182%_)
               (__tmp111876
                (let ((__tmp111877
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110185%_))))
                  (declare (not safe))
                  (##fxand __tmp111877 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp111876 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type110168%_)
        (if (let () (declare (not safe)) (##type? _%type110168%_))
            (let ((_%type110172%_ _%type110168%_))
              (__type-extensible? _%type110172%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@187.25-187.29"
               'contract:
               '##type?
               'value:
               _%type110168%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type110156%_)
        (let* ((_%type110159%_ _%type110156%_)
               (__tmp111878
                (let ((__tmp111879
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110159%_))))
                  (declare (not safe))
                  (##fxand __tmp111879 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp111878 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type110142%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type110142%_ 'class))
            (let ((_%type110146%_ _%type110142%_))
              (__class-type-final? _%type110146%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.26-189.30"
               'contract:
               'class-type?
               'value:
               _%type110142%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type110130%_)
        (let* ((_%type110133%_ _%type110130%_)
               (__tmp111880
                (let ((__tmp111881
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110133%_))))
                  (declare (not safe))
                  (##fxand __tmp111881 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp111880 '0))))
    (define class-type-struct?
      (lambda (_%klass110116%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110116%_ 'class))
            (let ((_%klass110120%_ _%klass110116%_))
              (__class-type-struct? _%klass110120%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass110116%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass110104%_)
        (let* ((_%klass110107%_ _%klass110104%_)
               (__tmp111882
                (let ((__tmp111883
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110107%_))))
                  (declare (not safe))
                  (##fxand __tmp111883 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp111882 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass110090%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110090%_ 'class))
            (let ((_%klass110094%_ _%klass110090%_))
              (__class-type-sealed? _%klass110094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.27-193.32"
               'contract:
               'class-type?
               'value:
               _%klass110090%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass110078%_)
        (let* ((_%klass110081%_ _%klass110078%_)
               (__tmp111884
                (let ((__tmp111885
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110081%_))))
                  (declare (not safe))
                  (##fxand __tmp111885 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp111884 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass110064%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110064%_ 'class))
            (let ((_%klass110068%_ _%klass110064%_))
              (__class-type-metaclass? _%klass110068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.30-195.35"
               'contract:
               'class-type?
               'value:
               _%klass110064%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass110052%_)
        (let* ((_%klass110055%_ _%klass110052%_)
               (__tmp111886
                (let ((__tmp111887
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110055%_))))
                  (declare (not safe))
                  (##fxand __tmp111887 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp111886 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass110038%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110038%_ 'class))
            (let ((_%klass110042%_ _%klass110038%_))
              (__class-type-system? _%klass110042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass110038%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass110026%_)
        (let* ((_%klass110029%_ _%klass110026%_)
               (__tmp111888
                (let ((__tmp111889
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110029%_))))
                  (declare (not safe))
                  (##fxand __tmp111889 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp111888 class-type-flag-system))))
    (define class-type-acyclic?
      (lambda (_%klass110012%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110012%_ 'class))
            (let ((_%klass110016%_ _%klass110012%_))
              (__class-type-acyclic? _%klass110016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.28-199.33"
               'contract:
               'class-type?
               'value:
               _%klass110012%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass110000%_)
        (let* ((_%klass110003%_ _%klass110000%_)
               (__tmp111890
                (let ((__tmp111891
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110003%_))))
                  (declare (not safe))
                  (##fxand __tmp111891 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp111890 class-type-flag-acyclic))))
    (define make-class-type-descriptor
      (lambda (_%type-id109880%_
               _%type-name109881%_
               _%type-super109882%_
               _%precedence-list109883%_
               _%slot-vector109884%_
               _%properties109885%_
               _%constructor109886%_
               _%slot-table109887%_
               _%methods109888%_)
        (letrec ((_%make-props!109891%_
                  (lambda (_%key109969%_)
                    (letrec* ((_%ht109971%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!109972%_
                               (lambda (_%ht109993%_ _%slots109994%_)
                                 (for-each
                                  (lambda (_%g109995109997%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht109993%_
                                       _%g109995109997%_
                                       '#t)))
                                  _%slots109994%_)))
                              (_%put-alist!109973%_
                               (lambda (_%ht109982%_
                                        _%key109983%_
                                        _%alist109984%_)
                                 (let ((_%$e109986%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key109983%_
                                           _%alist109984%_))))
                                   (if _%$e109986%_
                                       ((lambda (_%g109988109990%_)
                                          (_%put-slots!109972%_
                                           _%ht109982%_
                                           _%g109988109990%_))
                                        _%$e109986%_)
                                       '#!void)))))
                      (_%put-alist!109973%_
                       _%ht109971%_
                       _%key109969%_
                       _%properties109885%_)
                      (for-each
                       (lambda (_%mixin109975%_)
                         (let ((_%alist109977%_
                                (##structure-ref
                                 _%mixin109975%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist109977%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key109969%_
                                           _%alist109977%_))))
                               (_%put-slots!109972%_
                                _%ht109971%_
                                (class-type-slot-list _%mixin109975%_))
                               (_%put-alist!109973%_
                                _%ht109971%_
                                _%key109969%_
                                _%alist109977%_))))
                       _%precedence-list109883%_)
                      _%ht109971%_))))
          (let* ((_%transparent?109893%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties109885%_)))
                 (_%all-slots-printable?109898%_
                  (let ((_%$e109895%_ _%transparent?109893%_))
                    (if _%$e109895%_
                        _%$e109895%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties109885%_))))))
                 (_%printable109900%_
                  (if (not _%all-slots-printable?109898%_)
                      (_%make-props!109891%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?109905%_
                  (let ((_%$e109902%_ _%transparent?109893%_))
                    (if _%$e109902%_
                        _%$e109902%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties109885%_))))))
                 (_%equalable109907%_
                  (if (not _%all-slots-equalable?109905%_)
                      (_%make-props!109891%_ 'equal:)
                      '#f))
                 (_%first-new-field109909%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super109882%_ 'class))
                      (let ((__tmp111892
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super109882%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp111892))
                      '1))
                 (_%field-info-length109911%_
                  (let ((__tmp111893
                         (let ((__tmp111894
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector109884%_))))
                           (declare (not safe))
                           (##fx- __tmp111894 _%first-new-field109909%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp111893)))
                 (_%field-info109913%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length109911%_ '#f)))
                 (_%struct?109915%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties109885%_)))
                 (_%final?109917%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties109885%_)))
                 (_%metaclass109925%_
                  (let ((_%metaclass109918109920%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties109885%_))))
                    (if _%metaclass109918109920%_
                        (let ((_%metaclass109923%_ _%metaclass109918109920%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass109923%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id109880%_
                                     'metaclass:
                                     _%metaclass109923%_))
                          _%metaclass109923%_)
                        '#f)))
                 (_%system?109927%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties109885%_)))
                 (_%opaque?109935%_
                  (if (or _%transparent?109893%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties109885%_)))
                      '#f
                      (let ((_%$e109932%_ (not _%type-super109882%_)))
                        (if _%$e109932%_
                            _%$e109932%_
                            (__type-opaque? _%type-super109882%_)))))
                 (_%acyclic?109937%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties109885%_)))
                 (_%type-flags109939%_
                  (let ((__tmp111900
                         (if _%final?109917%_ '0 type-flag-extensible))
                        (__tmp111899
                         (if _%opaque?109935%_ type-flag-opaque '0))
                        (__tmp111898
                         (if _%struct?109915%_ class-type-flag-struct '0))
                        (__tmp111897
                         (if _%metaclass109925%_ class-type-flag-metaclass '0))
                        (__tmp111896
                         (if _%system?109927%_ class-type-flag-system '0))
                        (__tmp111895
                         (if _%acyclic?109937%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp111900
                             __tmp111899
                             __tmp111898
                             __tmp111897
                             __tmp111896
                             __tmp111895)))
                 (_%precedence-list109947%_
                  (let ((_%$e109941%_ (memq t::t _%precedence-list109883%_)))
                    (if _%$e109941%_
                        ((lambda (_%tail109944%_)
                           (if (null? (cdr _%tail109944%_))
                               _%precedence-list109883%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list109883%_)))
                         _%$e109941%_)
                        (let ((__tmp111901 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list109883%_ __tmp111901))))))
            (let _%loop109950%_ ((_%i109952%_ _%first-new-field109909%_)
                                 (_%j109953%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j109953%_ _%field-info-length109911%_))
                  (let* ((_%slot109955%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector109884%_ _%i109952%_)))
                         (_%flags109963%_
                          (if _%transparent?109893%_
                              '0
                              (let ((__tmp111903
                                     (if (or _%all-slots-printable?109898%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable109900%_
                                                _%slot109955%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp111902
                                     (if (or _%all-slots-equalable?109905%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable109907%_
                                                _%slot109955%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp111903 __tmp111902)))))
                    (vector-set!
                     _%field-info109913%_
                     _%j109953%_
                     _%slot109955%_)
                    (vector-set!
                     _%field-info109913%_
                     (let () (declare (not safe)) (##fx+ _%j109953%_ '1))
                     _%flags109963%_)
                    (_%loop109950%_
                     (let () (declare (not safe)) (##fx+ _%i109952%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j109953%_ '3))))
                  '#!void))
            (if _%metaclass109925%_
                (let ((_%val109966%_
                       (make-instance
                        _%metaclass109925%_
                        _%type-id109880%_
                        _%type-name109881%_
                        _%type-flags109939%_
                        _%type-super109882%_
                        _%field-info109913%_
                        _%precedence-list109947%_
                        _%slot-vector109884%_
                        _%slot-table109887%_
                        _%properties109885%_
                        _%constructor109886%_
                        _%methods109888%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val109966%_ 'class))
                      _%val109966%_
                      (error '"bad cast" class::t _%val109966%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id109880%_
                   _%type-name109881%_
                   _%type-flags109939%_
                   _%type-super109882%_
                   _%field-info109913%_
                   _%precedence-list109947%_
                   _%slot-vector109884%_
                   _%slot-table109887%_
                   _%properties109885%_
                   _%constructor109886%_
                   _%methods109888%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass109878%_)
        (##structure-ref _%klass109878%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass109876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109876%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass109873%_ _%val109874%_)
        (##structure-set! _%klass109873%_ _%val109874%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass109868%_ _%val109870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109868%_
           _%val109870%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass109866%_)
        (##structure-ref _%klass109866%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass109864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109864%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass109861%_ _%val109862%_)
        (##structure-set! _%klass109861%_ _%val109862%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass109856%_ _%val109858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109856%_
           _%val109858%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass109854%_)
        (##structure-ref _%klass109854%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass109852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109852%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass109849%_ _%val109850%_)
        (##structure-set! _%klass109849%_ _%val109850%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass109844%_ _%val109846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109844%_
           _%val109846%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass109842%_)
        (##structure-ref _%klass109842%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass109840%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109840%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass109837%_ _%val109838%_)
        (##structure-set! _%klass109837%_ _%val109838%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass109832%_ _%val109834%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109832%_
           _%val109834%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass109830%_)
        (##structure-ref _%klass109830%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass109828%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109828%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass109825%_ _%val109826%_)
        (##structure-set! _%klass109825%_ _%val109826%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass109820%_ _%val109822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109820%_
           _%val109822%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass109818%_)
        (##structure-ref _%klass109818%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass109816%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109816%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass109813%_ _%val109814%_)
        (##structure-set!
         _%klass109813%_
         _%val109814%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass109808%_ _%val109810%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109808%_
           _%val109810%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass109806%_)
        (##structure-ref _%klass109806%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass109804%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109804%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass109801%_ _%val109802%_)
        (##structure-set!
         _%klass109801%_
         _%val109802%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass109796%_ _%val109798%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109796%_
           _%val109798%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass109794%_)
        (##structure-ref _%klass109794%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass109792%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109792%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass109789%_ _%val109790%_)
        (##structure-set!
         _%klass109789%_
         _%val109790%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass109784%_ _%val109786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109784%_
           _%val109786%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass109782%_)
        (##structure-ref _%klass109782%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass109780%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109780%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass109777%_ _%val109778%_)
        (##structure-set!
         _%klass109777%_
         _%val109778%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass109772%_ _%val109774%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109772%_
           _%val109774%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass109770%_)
        (##structure-ref _%klass109770%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass109768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109768%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass109765%_ _%val109766%_)
        (##structure-set!
         _%klass109765%_
         _%val109766%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass109760%_ _%val109762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109760%_
           _%val109762%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass109758%_)
        (##structure-ref _%klass109758%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass109756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109756%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass109753%_ _%val109754%_)
        (##structure-set!
         _%klass109753%_
         _%val109754%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass109748%_ _%val109750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109748%_
           _%val109750%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass109746%_)
        (##structure-ref _%klass109746%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass109744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109744%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass109741%_ _%val109742%_)
        (##structure-set!
         _%klass109741%_
         _%val109742%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass109736%_ _%val109738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109736%_
           _%val109738%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass109734%_)
        (##structure-ref _%klass109734%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass109732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109732%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass109729%_ _%val109730%_)
        (##structure-set!
         _%klass109729%_
         _%val109730%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass109724%_ _%val109726%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109724%_
           _%val109726%_
           '13
           class::t
           'interface))))
    (define class-type-slot-list
      (lambda (_%klass109710%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109710%_ 'class))
            (let ((_%klass109714%_ _%klass109710%_))
              (__class-type-slot-list _%klass109714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@339.29-339.34"
               'contract:
               'class-type?
               'value:
               _%klass109710%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass109698%_)
        (let ((_%klass109701%_ _%klass109698%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109701%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass109684%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109684%_ 'class))
            (let ((_%klass109688%_ _%klass109684%_))
              (__class-type-field-count _%klass109688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@342.31-342.36"
               'contract:
               'class-type?
               'value:
               _%klass109684%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass109672%_)
        (let* ((_%klass109675%_ _%klass109672%_)
               (__tmp111904
                (let ((__tmp111905
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109675%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp111905))))
          (declare (not safe))
          (##fx- __tmp111904 '1))))
    (define class-type-seal!
      (lambda (_%klass109658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109658%_ 'class))
            (let ((_%klass109662%_ _%klass109658%_))
              (__class-type-seal! _%klass109662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.25-345.30"
               'contract:
               'class-type?
               'value:
               _%klass109658%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass109646%_)
        (let ((_%klass109649%_ _%klass109646%_))
          (let ((__tmp111906
                 (let ((__tmp111907
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass109649%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp111907))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass109649%_
             __tmp111906
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct109621%_ _%maybe-super-struct109622%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct109621%_ 'class))
            (let ((_%maybe-sub-struct109626%_ _%maybe-sub-struct109621%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct109622%_
                     'class))
                  (let ((_%maybe-super-struct109636%_
                         _%maybe-super-struct109622%_))
                    (__substruct?
                     _%maybe-sub-struct109626%_
                     _%maybe-super-struct109636%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@352.47-352.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct109622%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@352.19-352.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct109621%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct109590%_ _%maybe-super-struct109591%_)
        (let* ((_%maybe-sub-struct109594%_ _%maybe-sub-struct109590%_)
               (_%maybe-super-struct109602%_ _%maybe-super-struct109591%_)
               (_%maybe-super-struct-id109611%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct109602%_))))
          (let _%lp109613%_ ((_%super-struct109615%_
                              _%maybe-sub-struct109594%_))
            (if (not _%super-struct109615%_)
                '#f
                (if (eq? _%maybe-super-struct-id109611%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct109615%_)))
                    '#t
                    (_%lp109613%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct109615%_)))))))))
    (define base-struct/1
      (lambda (_%klass109585%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109585%_ 'class))
            (if (__class-type-struct? _%klass109585%_)
                _%klass109585%_
                (let () (declare (not safe)) (##type-super _%klass109585%_)))
            (if (not _%klass109585%_)
                '#f
                (error '"not a class or false" _%klass109585%_)))))
    (define base-struct/2
      (lambda (_%klass1109570%_ _%klass2109571%_)
        (let ((_%s1109573%_ (base-struct/1 _%klass1109570%_))
              (_%s2109574%_ (base-struct/1 _%klass2109571%_)))
          (if (or (not _%s1109573%_)
                  (and _%s2109574%_ (substruct? _%s1109573%_ _%s2109574%_)))
              _%s2109574%_
              (if (or (not _%s2109574%_)
                      (and _%s1109573%_
                           (substruct? _%s2109574%_ _%s1109573%_)))
                  _%s1109573%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1109570%_
                         _%klass2109571%_
                         _%s1109573%_
                         _%s2109574%_))))))
    (define base-struct/list
      (lambda (_%all-supers109454%_)
        (let* ((_%all-supers109455109480%_ _%all-supers109454%_)
               (_%E109460109484%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers109455109480%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K109478109567%_ (lambda () '#f))
                (_%K109475109553%_
                 (lambda (_%x109551%_) (base-struct/1 _%x109551%_)))
                (_%K109470109530%_
                 (lambda (_%y109527%_ _%x109528%_)
                   (base-struct/2 _%x109528%_ _%y109527%_)))
                (_%K109461109491%_
                 (lambda (_%y109488%_ _%x109489%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x109489%_ _%y109488%_)))))
            (let* ((_%__match111719111720%_
                    (lambda (_%hd109462109494%_ _%tl109463109496%_)
                      (let ((_%x109499%_ _%hd109462109494%_))
                        (letrec ((_%splice-rest109465109501%_
                                  (lambda (_%rest109469109508%_ _%y109510%_)
                                    (if (null? _%rest109469109508%_)
                                        (_%K109461109491%_
                                         _%y109510%_
                                         _%x109499%_)
                                        (_%E109460109484%_))))
                                 (_%splice-try109467109503%_
                                  (lambda (_%hd109468109512%_
                                           _%rest109469109514%_
                                           _%y109464109515%_)
                                    (let ((_%y109518%_ _%hd109468109512%_))
                                      (_%splice-loop109466109505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest109469109514%_))
                                       (cons _%y109518%_ _%y109464109515%_)))))
                                 (_%splice-loop109466109505%_
                                  (lambda (_%rest109469109520%_
                                           _%y109464109521%_)
                                    (if (pair? _%rest109469109520%_)
                                        (_%splice-try109467109503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest109469109520%_))
                                         _%rest109469109520%_
                                         _%y109464109521%_)
                                        (_%splice-rest109465109501%_
                                         _%rest109469109520%_
                                         (reverse _%y109464109521%_))))))
                          (_%splice-loop109466109505%_
                           _%tl109463109496%_
                           '())))))
                   (_%try-match109457109563%_
                    (lambda ()
                      (if (pair? _%all-supers109455109480%_)
                          (let ((_%tl109477109558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers109455109480%_)))
                                (_%hd109476109556%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers109455109480%_))))
                            (if (null? _%tl109477109558%_)
                                (let ((_%x109561%_ _%hd109476109556%_))
                                  (base-struct/1 _%x109561%_))
                                (if (pair? _%tl109477109558%_)
                                    (let ((_%tl109474109542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl109477109558%_)))
                                          (_%hd109473109540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl109477109558%_))))
                                      (if (null? _%tl109474109542%_)
                                          (let ((_%x109538%_
                                                 _%hd109476109556%_)
                                                (_%y109545%_
                                                 _%hd109473109540%_))
                                            (_%K109470109530%_
                                             _%y109545%_
                                             _%x109538%_))
                                          (_%__match111719111720%_
                                           _%hd109476109556%_
                                           _%tl109477109558%_)))
                                    (_%__match111719111720%_
                                     _%hd109476109556%_
                                     _%tl109477109558%_))))
                          (_%E109460109484%_)))))
              (if (null? _%all-supers109455109480%_)
                  (_%K109478109567%_)
                  (_%try-match109457109563%_)))))))
    (define base-struct
      (lambda _%all-supers109452%_ (base-struct/list _%all-supers109452%_)))
    (define find-super-constructor
      (lambda (_%super109403%_)
        (let _%lp109405%_ ((_%rest109407%_ _%super109403%_)
                           (_%constructor109408%_ '#f))
          (let* ((_%rest109409109417%_ _%rest109407%_)
                 (_%else109411109425%_ (lambda () _%constructor109408%_))
                 (_%K109413109440%_
                  (lambda (_%rest109428%_ _%hd109429%_)
                    (let ((_%$e109431%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd109429%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e109431%_
                          ((lambda (_%xconstructor109434%_)
                             (if (or (not _%constructor109408%_)
                                     (eq? _%constructor109408%_
                                          _%xconstructor109434%_))
                                 (_%lp109405%_
                                  _%rest109428%_
                                  _%xconstructor109434%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor109408%_
                                        _%xconstructor109434%_)))
                           _%$e109431%_)
                          (_%lp109405%_
                           _%rest109428%_
                           _%constructor109408%_))))))
            (if (pair? _%rest109409109417%_)
                (let ((_%hd109414109443%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109409109417%_)))
                      (_%tl109415109445%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109409109417%_))))
                  (let* ((_%hd109448%_ _%hd109414109443%_)
                         (_%rest109450%_ _%tl109415109445%_))
                    (_%K109413109440%_ _%rest109450%_ _%hd109448%_)))
                (_%else109411109425%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list109379%_ _%direct-slots109380%_)
        (let* ((_%next-slot109382%_ '1)
               (_%slot-table109384%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots109386%_ '(__class))
               (_%process-slot109390%_
                (lambda (_%slot109388%_)
                  (if (symbol? _%slot109388%_)
                      '#!void
                      (error '"invalid slot name" _%slot109388%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table109384%_
                              _%slot109388%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109384%_
                           _%slot109388%_
                           _%next-slot109382%_))
                        (let ((__tmp111908
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot109388%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109384%_
                           __tmp111908
                           _%next-slot109382%_))
                        (set! _%r-slots109386%_
                              (cons _%slot109388%_ _%r-slots109386%_))
                        (set! _%next-slot109382%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot109382%_ '1))))
                      '#!void)))
               (_%process-slots109396%_
                (lambda (_%g109391109393%_)
                  (for-each _%process-slot109390%_ _%g109391109393%_))))
          (let ((__tmp111910
                 (lambda (_%mixin109399%_)
                   (_%process-slots109396%_
                    (let ((__tmp111911
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin109399%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp111911 '())))))
                (__tmp111909 (reverse _%class-precedence-list109379%_)))
            (declare (not safe))
            (##for-each __tmp111910 __tmp111909))
          (_%process-slots109396%_ _%direct-slots109380%_)
          (let ((_%slot-vector109401%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots109386%_)))))
            (values _%slot-vector109401%_ _%slot-table109384%_)))))
    (define make-class-type
      (lambda (_%id109304%_
               _%name109305%_
               _%direct-supers109306%_
               _%direct-slots109307%_
               _%properties109308%_
               _%constructor109309%_)
        (if (symbol? _%id109304%_)
            (let ((_%id109313%_ _%id109304%_))
              (if (symbol? _%name109305%_)
                  (let ((_%name109323%_ _%name109305%_))
                    (if (list? _%direct-supers109306%_)
                        (let ((_%direct-supers109333%_
                               _%direct-supers109306%_))
                          (if (list? _%direct-slots109307%_)
                              (let ((_%direct-slots109343%_
                                     _%direct-slots109307%_))
                                (if (list? _%properties109308%_)
                                    (let ((_%properties109353%_
                                           _%properties109308%_))
                                      (if ((lambda (_%$obj109362%_)
                                             (or (not _%$obj109362%_)
                                                 (symbol? _%$obj109362%_)))
                                           _%constructor109309%_)
                                          (let ((_%constructor109369%_
                                                 _%constructor109309%_))
                                            (__make-class-type
                                             _%id109313%_
                                             _%name109323%_
                                             _%direct-supers109333%_
                                             _%direct-slots109343%_
                                             _%properties109353%_
                                             _%constructor109369%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@449.24-449.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor109309%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@448.24-448.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties109308%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@447.24-447.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots109307%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@446.24-446.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers109306%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@445.24-445.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name109305%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@444.24-444.26"
               'contract:
               'symbol?
               'value:
               _%id109304%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id109173%_
               _%name109174%_
               _%direct-supers109175%_
               _%direct-slots109176%_
               _%properties109177%_
               _%constructor109178%_)
        (let* ((_%id109181%_ _%id109173%_)
               (_%name109189%_ _%name109174%_)
               (_%direct-supers109197%_ _%direct-supers109175%_)
               (_%direct-slots109205%_ _%direct-slots109176%_)
               (_%properties109213%_ _%properties109177%_)
               (_%constructor109221%_ _%constructor109178%_))
          (let ((_%$e109233%_
                 (let ((__tmp111912
                        (lambda (_%$obj109230%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj109230%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp111912 _%direct-supers109197%_))))
            (if _%$e109233%_
                ((lambda (_%g109235109237%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g109235109237%_))
                 _%$e109233%_)
                (let ((_%$e109240%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers109197%_))))
                  (if _%$e109240%_
                      ((lambda (_%g109242109244%_)
                         (error '"Cannot extend final class"
                                _%g109242109244%_))
                       _%$e109240%_)
                      '#!void))))
          (let ((_g111913_ (compute-precedence-list _%direct-supers109197%_)))
            (begin
              (let ((_g111914_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g111913_)
                           (##values-length _g111913_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g111914_ 2)))
                    (error "Context expects 2 values" _g111914_)))
              (let ((_%precedence-list109247%_
                     (let () (declare (not safe)) (##values-ref _g111913_ 0)))
                    (_%struct-super109248%_
                     (let () (declare (not safe)) (##values-ref _g111913_ 1))))
                (let ((_g111915_
                       (compute-class-slots
                        _%precedence-list109247%_
                        _%direct-slots109205%_)))
                  (begin
                    (let ((_g111916_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g111915_)
                                 (##values-length _g111915_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g111916_ 2)))
                          (error "Context expects 2 values" _g111916_)))
                    (let ((_%slot-vector109250%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g111915_ 0)))
                          (_%slot-table109251%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g111915_ 1))))
                      (let* ((_%properties109253%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots109205%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers109197%_)
                                          _%properties109213%_)))
                             (_%constructor*109258%_
                              (let ((_%$e109255%_ _%constructor109221%_))
                                (if _%$e109255%_
                                    _%$e109255%_
                                    (find-super-constructor
                                     _%direct-supers109197%_))))
                             (_%precedence-list109301%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties109253%_))
                                      (memq object::t
                                            _%precedence-list109247%_))
                                  _%precedence-list109247%_
                                  (let _%loop109263%_ ((_%tail109265%_
                                                        _%precedence-list109247%_)
                                                       (_%head109266%_ '()))
                                    (let* ((_%tail109267109275%_
                                            _%tail109265%_)
                                           (_%else109269109283%_
                                            (lambda ()
                                              (let ((__tmp111917
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp111917
                                                 _%head109266%_))))
                                           (_%K109271109289%_
                                            (lambda (_%rest109286%_
                                                     _%hd109287%_)
                                              (if (eq? _%hd109287%_ t::t)
                                                  (let ((__tmp111918
                                                         (cons object::t
                                                               _%tail109265%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp111918
                                                     _%head109266%_))
                                                  (_%loop109263%_
                                                   _%rest109286%_
                                                   (cons _%hd109287%_
                                                         _%head109266%_))))))
                                      (if (pair? _%tail109267109275%_)
                                          (let ((_%hd109272109292%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail109267109275%_)))
                                                (_%tl109273109294%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail109267109275%_))))
                                            (let* ((_%hd109297%_
                                                    _%hd109272109292%_)
                                                   (_%rest109299%_
                                                    _%tl109273109294%_))
                                              (_%K109271109289%_
                                               _%rest109299%_
                                               _%hd109297%_)))
                                          (_%else109269109283%_)))))))
                        (make-class-type-descriptor
                         _%id109181%_
                         _%name109189%_
                         _%struct-super109248%_
                         _%precedence-list109301%_
                         _%slot-vector109250%_
                         _%properties109253%_
                         _%constructor*109258%_
                         _%slot-table109251%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass109159%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109159%_ 'class))
            (let ((_%klass109163%_ _%klass109159%_))
              (__class-precedence-list _%klass109163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@482.30-482.35"
               'contract:
               'class-type?
               'value:
               _%klass109159%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass109147%_)
        (let ((_%klass109150%_ _%klass109147%_))
          (cons _%klass109150%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109150%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers109144%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers109144%_))))
    (define make-class-predicate
      (lambda (_%klass109130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109130%_ 'class))
            (let ((_%klass109134%_ _%klass109130%_))
              (__make-class-predicate _%klass109134%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@494.29-494.34"
               'contract:
               'class-type?
               'value:
               _%klass109130%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass109101%_)
        (let* ((_%klass109104%_ _%klass109101%_)
               (_%tid109113%_
                (let () (declare (not safe)) (##type-id _%klass109104%_))))
          (if (__class-type-final? _%klass109104%_)
              (lambda (_%g109115109117%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g109115109117%_
                   _%tid109113%_)))
              (if (__class-type-struct? _%klass109104%_)
                  (lambda (_%g109120109122%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g109120109122%_
                       _%tid109113%_)))
                  (lambda (_%g109125109127%_)
                    (__class-instance? _%klass109104%_ _%g109125109127%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass109076%_ _%slot109077%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109076%_ 'class))
            (let ((_%klass109081%_ _%klass109076%_))
              (if (symbol? _%slot109077%_)
                  (let ((_%slot109091%_ _%slot109077%_))
                    (__make-class-slot-accessor
                     _%klass109081%_
                     _%slot109091%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@525.50-525.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109077%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@525.33-525.38"
               'contract:
               'class-type?
               'value:
               _%klass109076%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass109044%_ _%slot109045%_)
        (let* ((_%klass109048%_ _%klass109044%_)
               (_%slot109056%_ _%slot109045%_)
               (_%field109065%_
                (let ((__tmp111919
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109048%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111919 _%slot109056%_ '#f))))
          (if (not _%field109065%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109048%_
                       'slot:
                       _%slot109056%_)
                '#!void)
              (if (__class-type-final? _%klass109048%_)
                  (make-final-slot-accessor
                   _%klass109048%_
                   _%slot109056%_
                   _%field109065%_)
                  (if (__class-type-struct? _%klass109048%_)
                      (make-struct-slot-accessor
                       _%klass109048%_
                       _%slot109056%_
                       _%field109065%_)
                      (if (let ((_%strukt109071%_
                                 (base-struct/1 _%klass109048%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109071%_
                                    'class))
                                 (let ((__tmp111920
                                        (let ((__tmp111921
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109071%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111921))))
                                   (declare (not safe))
                                   (##fx< _%field109065%_ __tmp111920))))
                          (make-struct-subclass-slot-accessor
                           _%klass109048%_
                           _%slot109056%_
                           _%field109065%_)
                          (make-class-cached-slot-accessor
                           _%klass109048%_
                           _%slot109056%_
                           _%field109065%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass109019%_ _%slot109020%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109019%_ 'class))
            (let ((_%klass109024%_ _%klass109019%_))
              (if (symbol? _%slot109020%_)
                  (let ((_%slot109034%_ _%slot109020%_))
                    (__make-class-slot-mutator _%klass109024%_ _%slot109034%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@533.49-533.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109020%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.32-533.37"
               'contract:
               'class-type?
               'value:
               _%klass109019%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass108987%_ _%slot108988%_)
        (let* ((_%klass108991%_ _%klass108987%_)
               (_%slot108999%_ _%slot108988%_)
               (_%field109008%_
                (let ((__tmp111922
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass108991%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111922 _%slot108999%_ '#f))))
          (if (not _%field109008%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass108991%_
                       'slot:
                       _%slot108999%_)
                '#!void)
              (if (__class-type-final? _%klass108991%_)
                  (make-final-slot-mutator
                   _%klass108991%_
                   _%slot108999%_
                   _%field109008%_)
                  (if (__class-type-struct? _%klass108991%_)
                      (make-struct-slot-mutator
                       _%klass108991%_
                       _%slot108999%_
                       _%field109008%_)
                      (if (let ((_%strukt109014%_
                                 (base-struct/1 _%klass108991%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109014%_
                                    'class))
                                 (let ((__tmp111923
                                        (let ((__tmp111924
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109014%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111924))))
                                   (declare (not safe))
                                   (##fx< _%field109008%_ __tmp111923))))
                          (make-struct-subclass-slot-mutator
                           _%klass108991%_
                           _%slot108999%_
                           _%field109008%_)
                          (make-class-cached-slot-mutator
                           _%klass108991%_
                           _%slot108999%_
                           _%field109008%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass108962%_ _%slot108963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108962%_ 'class))
            (let ((_%klass108967%_ _%klass108962%_))
              (if (symbol? _%slot108963%_)
                  (let ((_%slot108977%_ _%slot108963%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass108967%_
                     _%slot108977%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@541.60-541.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot108963%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@541.43-541.48"
               'contract:
               'class-type?
               'value:
               _%klass108962%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass108930%_ _%slot108931%_)
        (let* ((_%klass108934%_ _%klass108930%_)
               (_%slot108942%_ _%slot108931%_)
               (_%field108951%_
                (let ((__tmp111925
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass108934%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111925 _%slot108942%_ '#f))))
          (if (not _%field108951%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass108934%_
                       'slot:
                       _%slot108942%_)
                '#!void)
              (if (__class-type-final? _%klass108934%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass108934%_
                   _%slot108942%_
                   _%field108951%_)
                  (if (__class-type-struct? _%klass108934%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass108934%_
                       _%slot108942%_
                       _%field108951%_)
                      (if (let ((_%strukt108957%_
                                 (base-struct/1 _%klass108934%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt108957%_
                                    'class))
                                 (let ((__tmp111926
                                        (let ((__tmp111927
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt108957%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111927))))
                                   (declare (not safe))
                                   (##fx< _%field108951%_ __tmp111926))))
                          (make-struct-slot-unchecked-accessor
                           _%klass108934%_
                           _%slot108942%_
                           _%field108951%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass108934%_
                           _%slot108942%_
                           _%field108951%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass108905%_ _%slot108906%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108905%_ 'class))
            (let ((_%klass108910%_ _%klass108905%_))
              (if (symbol? _%slot108906%_)
                  (let ((_%slot108920%_ _%slot108906%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass108910%_
                     _%slot108920%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@549.59-549.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot108906%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@549.42-549.47"
               'contract:
               'class-type?
               'value:
               _%klass108905%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass108873%_ _%slot108874%_)
        (let* ((_%klass108877%_ _%klass108873%_)
               (_%slot108885%_ _%slot108874%_)
               (_%field108894%_
                (let ((__tmp111928
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass108877%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111928 _%slot108885%_ '#f))))
          (if (not _%field108894%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass108877%_
                       'slot:
                       _%slot108885%_)
                '#!void)
              (if (__class-type-final? _%klass108877%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass108877%_
                   _%slot108885%_
                   _%field108894%_)
                  (if (__class-type-struct? _%klass108877%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass108877%_
                       _%slot108885%_
                       _%field108894%_)
                      (if (let ((_%strukt108900%_
                                 (base-struct/1 _%klass108877%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt108900%_
                                    'class))
                                 (let ((__tmp111929
                                        (let ((__tmp111930
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt108900%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111930))))
                                   (declare (not safe))
                                   (##fx< _%field108894%_ __tmp111929))))
                          (make-struct-slot-unchecked-mutator
                           _%klass108877%_
                           _%slot108885%_
                           _%field108894%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass108877%_
                           _%slot108885%_
                           _%field108894%_))))))))
    (define not-an-instance__%
      (lambda (_%object108857%_ _%class108858%_ _%slot108859%_)
        (apply error
               '"not an instance"
               'object:
               _%object108857%_
               'class:
               _%class108858%_
               (if _%slot108859%_
                   (cons 'slot: (cons _%slot108859%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object108864%_ _%class108865%_)
        (let ((_%slot108867%_ '#f))
          (not-an-instance__%
           _%object108864%_
           _%class108865%_
           _%slot108867%_))))
    (define not-an-instance
      (lambda _g111931_
        (let ((_g111932_ (let () (declare (not safe)) (##length _g111931_))))
          (cond ((let () (declare (not safe)) (##fx= _g111932_ 2))
                 (apply not-an-instance__0 _g111931_))
                ((let () (declare (not safe)) (##fx= _g111932_ 3))
                 (apply not-an-instance__% _g111931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g111931_))))))
    (define make-final-slot-accessor
      (lambda (_%klass108850%_ _%slot108851%_ _%field108852%_)
        (lambda (_%obj108854%_)
          (##direct-structure-ref
           _%obj108854%_
           _%field108852%_
           _%klass108850%_
           _%slot108851%_))))
    (define make-final-slot-mutator
      (lambda (_%klass108843%_ _%slot108844%_ _%field108845%_)
        (lambda (_%obj108847%_ _%val108848%_)
          (##direct-structure-set!
           _%obj108847%_
           _%val108848%_
           _%field108845%_
           _%klass108843%_
           _%slot108844%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass108837%_ _%slot108838%_ _%field108839%_)
        (lambda (_%obj108841%_)
          (##structure-ref
           _%obj108841%_
           _%field108839%_
           _%klass108837%_
           _%slot108838%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass108830%_ _%slot108831%_ _%field108832%_)
        (lambda (_%obj108834%_ _%val108835%_)
          (##structure-set!
           _%obj108834%_
           _%val108835%_
           _%field108832%_
           _%klass108830%_
           _%slot108831%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass108824%_ _%slot108825%_ _%field108826%_)
        (lambda (_%obj108828%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj108828%_
             _%field108826%_
             _%klass108824%_
             _%slot108825%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass108817%_ _%slot108818%_ _%field108819%_)
        (lambda (_%obj108821%_ _%val108822%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj108821%_
             _%val108822%_
             _%field108819%_
             _%klass108817%_
             _%slot108818%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass108811%_ _%slot108812%_ _%field108813%_)
        (lambda (_%obj108815%_)
          (if (class-instance? _%klass108811%_ _%obj108815%_)
              (unchecked-slot-ref _%obj108815%_ _%field108813%_)
              (not-an-instance__%
               _%obj108815%_
               _%klass108811%_
               _%slot108812%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass108804%_ _%slot108805%_ _%field108806%_)
        (lambda (_%obj108808%_ _%val108809%_)
          (if (class-instance? _%klass108804%_ _%obj108808%_)
              (unchecked-field-set!
               _%obj108808%_
               _%field108806%_
               _%val108809%_)
              (not-an-instance__%
               _%obj108808%_
               _%klass108804%_
               _%slot108805%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass108795%_ _%slot108796%_ _%field108797%_)
        (lambda (_%obj108799%_)
          (if (let ((__tmp111933
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108795%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108799%_ __tmp111933))
              (unchecked-field-ref _%obj108799%_ _%field108797%_)
              (if (class-instance? _%klass108795%_ _%obj108799%_)
                  (unchecked-slot-ref _%obj108799%_ _%slot108796%_)
                  (not-an-instance__%
                   _%obj108799%_
                   _%klass108795%_
                   _%slot108796%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass108785%_ _%slot108786%_ _%field108787%_)
        (lambda (_%obj108789%_ _%val108790%_)
          (if (let ((__tmp111934
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108785%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108789%_ __tmp111934))
              (unchecked-field-set!
               _%obj108789%_
               _%field108787%_
               _%val108790%_)
              (if (class-instance? _%klass108785%_ _%obj108789%_)
                  (unchecked-slot-set!
                   _%obj108789%_
                   _%slot108786%_
                   _%val108790%_)
                  (not-an-instance__%
                   _%obj108789%_
                   _%klass108785%_
                   _%slot108786%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass108779%_ _%slot108780%_ _%field108781%_)
        (lambda (_%obj108783%_)
          (if (let ((__tmp111935
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108779%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108783%_ __tmp111935))
              (unchecked-field-ref _%obj108783%_ _%field108781%_)
              (unchecked-slot-ref _%obj108783%_ _%slot108780%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass108772%_ _%slot108773%_ _%field108774%_)
        (lambda (_%obj108776%_ _%val108777%_)
          (if (let ((__tmp111936
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108772%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108776%_ __tmp111936))
              (unchecked-field-set!
               _%obj108776%_
               _%field108774%_
               _%val108777%_)
              (unchecked-slot-set!
               _%obj108776%_
               _%slot108773%_
               _%val108777%_)))))
    (define class-slot-offset
      (lambda (_%klass108747%_ _%slot108748%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108747%_ 'class))
            (let ((_%klass108752%_ _%klass108747%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108748%_))
                  (let ((_%slot108762%_ _%slot108748%_))
                    (__class-slot-offset _%klass108752%_ _%slot108762%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@611.43-611.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108748%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@611.26-611.31"
               'contract:
               'class-type?
               'value:
               _%klass108747%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass108726%_ _%slot108727%_)
        (let* ((_%klass108730%_ _%klass108726%_)
               (_%slot108738%_ _%slot108727%_)
               (__tmp111937
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108730%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp111937 _%slot108738%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass108700%_ _%obj108701%_ _%slot108702%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108700%_ 'class))
            (let ((_%klass108706%_ _%klass108700%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108702%_))
                  (let ((_%slot108716%_ _%slot108702%_))
                    (__class-slot-ref
                     _%klass108706%_
                     _%obj108701%_
                     _%slot108716%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@614.44-614.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108702%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@614.23-614.28"
               'contract:
               'class-type?
               'value:
               _%klass108700%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass108676%_ _%obj108677%_ _%slot108678%_)
        (let* ((_%klass108681%_ _%klass108676%_)
               (_%slot108689%_ _%slot108678%_))
          (if (__class-instance? _%klass108681%_ _%obj108677%_)
              (let ((_%off108698%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj108677%_))
                      _%slot108689%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj108677%_
                 _%off108698%_
                 _%klass108681%_
                 _%slot108689%_))
              (not-an-instance__0 _%obj108677%_ _%klass108681%_)))))
    (define class-slot-set!
      (lambda (_%klass108649%_ _%obj108650%_ _%slot108651%_ _%val108652%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108649%_ 'class))
            (let ((_%klass108656%_ _%klass108649%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108651%_))
                  (let ((_%slot108666%_ _%slot108651%_))
                    (__class-slot-set!
                     _%klass108656%_
                     _%obj108650%_
                     _%slot108666%_
                     _%val108652%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@620.45-620.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108651%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@620.24-620.29"
               'contract:
               'class-type?
               'value:
               _%klass108649%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass108624%_ _%obj108625%_ _%slot108626%_ _%val108627%_)
        (let* ((_%klass108630%_ _%klass108624%_)
               (_%slot108638%_ _%slot108626%_))
          (if (__class-instance? _%klass108630%_ _%obj108625%_)
              (let ((_%off108647%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj108625%_))
                      _%slot108638%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj108625%_
                 _%val108627%_
                 _%off108647%_
                 _%klass108630%_
                 _%slot108638%_))
              (not-an-instance__0 _%obj108625%_ _%klass108630%_)))))
    (define unchecked-field-ref
      (lambda (_%obj108621%_ _%off108622%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj108621%_ _%off108622%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj108617%_ _%off108618%_ _%val108619%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj108617%_
           _%val108619%_
           _%off108618%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj108614%_ _%slot108615%_)
        (unchecked-field-ref
         _%obj108614%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108614%_))
          _%slot108615%_))))
    (define unchecked-slot-set!
      (lambda (_%obj108610%_ _%slot108611%_ _%val108612%_)
        (unchecked-field-set!
         _%obj108610%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108610%_))
          _%slot108611%_)
         _%val108612%_)))
    (define slot-ref__%
      (lambda (_%obj108572%_ _%slot108573%_ _%E108574%_)
        (if (symbol? _%slot108573%_)
            (let ((_%slot108578%_ _%slot108573%_))
              (if (procedure? _%E108574%_)
                  (let ((_%E108588%_ _%E108574%_))
                    (__slot-ref__% _%obj108572%_ _%slot108578%_ _%E108588%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@643.38-643.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E108574%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@643.21-643.25"
               'contract:
               'symbol?
               'value:
               _%slot108573%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj108601%_ _%slot108602%_)
        (let ((_%E108604%_ __slot-error))
          (slot-ref__% _%obj108601%_ _%slot108602%_ _%E108604%_))))
    (define slot-ref
      (lambda _g111938_
        (let ((_g111939_ (let () (declare (not safe)) (##length _g111938_))))
          (cond ((let () (declare (not safe)) (##fx= _g111939_ 2))
                 (apply slot-ref__0 _g111938_))
                ((let () (declare (not safe)) (##fx= _g111939_ 3))
                 (apply slot-ref__% _g111938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g111938_))))))
    (define __slot-ref__%
      (lambda (_%obj108528%_ _%slot108529%_ _%E108530%_)
        (let* ((_%slot108533%_ _%slot108529%_)
               (_%E108541%_ _%E108530%_)
               (_%klass108550%_ (class-of _%obj108528%_))
               (_%$e108553%_
                (__class-slot-offset _%klass108550%_ _%slot108533%_)))
          (if _%$e108553%_
              ((lambda (_%off108556%_)
                 (unchecked-field-ref _%obj108528%_ _%off108556%_))
               _%$e108553%_)
              (let ()
                (declare (not safe))
                (_%E108541%_ _%obj108528%_ _%slot108533%_))))))
    (define __slot-ref__0
      (lambda (_%obj108562%_ _%slot108563%_)
        (let ((_%E108565%_ __slot-error))
          (__slot-ref__% _%obj108562%_ _%slot108563%_ _%E108565%_))))
    (define __slot-ref
      (lambda _g111940_
        (let ((_g111941_ (let () (declare (not safe)) (##length _g111940_))))
          (cond ((let () (declare (not safe)) (##fx= _g111941_ 2))
                 (apply __slot-ref__0 _g111940_))
                ((let () (declare (not safe)) (##fx= _g111941_ 3))
                 (apply __slot-ref__% _g111940_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g111940_))))))
    (define slot-set!__%
      (lambda (_%obj108486%_ _%slot108487%_ _%val108488%_ _%E108489%_)
        (if (symbol? _%slot108487%_)
            (let ((_%slot108493%_ _%slot108487%_))
              (if (procedure? _%E108489%_)
                  (let ((_%E108503%_ _%E108489%_))
                    (__slot-set!__%
                     _%obj108486%_
                     _%slot108493%_
                     _%val108488%_
                     _%E108503%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@645.43-645.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E108489%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@645.22-645.26"
               'contract:
               'symbol?
               'value:
               _%slot108487%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj108516%_ _%slot108517%_ _%val108518%_)
        (let ((_%E108520%_ __slot-error))
          (slot-set!__%
           _%obj108516%_
           _%slot108517%_
           _%val108518%_
           _%E108520%_))))
    (define slot-set!
      (lambda _g111942_
        (let ((_g111943_ (let () (declare (not safe)) (##length _g111942_))))
          (cond ((let () (declare (not safe)) (##fx= _g111943_ 3))
                 (apply slot-set!__0 _g111942_))
                ((let () (declare (not safe)) (##fx= _g111943_ 4))
                 (apply slot-set!__% _g111942_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g111942_))))))
    (define __slot-set!__%
      (lambda (_%obj108439%_ _%slot108440%_ _%val108441%_ _%E108442%_)
        (let* ((_%slot108445%_ _%slot108440%_)
               (_%E108453%_ _%E108442%_)
               (_%klass108462%_ (class-of _%obj108439%_))
               (_%$e108465%_
                (__class-slot-offset _%klass108462%_ _%slot108445%_)))
          (if _%$e108465%_
              ((lambda (_%off108468%_)
                 (unchecked-field-set!
                  _%obj108439%_
                  _%off108468%_
                  _%val108441%_))
               _%$e108465%_)
              (let ()
                (declare (not safe))
                (_%E108453%_ _%obj108439%_ _%slot108445%_))))))
    (define __slot-set!__0
      (lambda (_%obj108474%_ _%slot108475%_ _%val108476%_)
        (let ((_%E108478%_ __slot-error))
          (__slot-set!__%
           _%obj108474%_
           _%slot108475%_
           _%val108476%_
           _%E108478%_))))
    (define __slot-set!
      (lambda _g111944_
        (let ((_g111945_ (let () (declare (not safe)) (##length _g111944_))))
          (cond ((let () (declare (not safe)) (##fx= _g111945_ 3))
                 (apply __slot-set!__0 _g111944_))
                ((let () (declare (not safe)) (##fx= _g111945_ 4))
                 (apply __slot-set!__% _g111944_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g111944_))))))
    (define __slot-error
      (lambda (_%obj108435%_ _%slot108436%_)
        (error '"Cannot find slot"
               'object:
               _%obj108435%_
               'slot:
               _%slot108436%_)))
    (define subclass?
      (lambda (_%maybe-sub-class108410%_ _%maybe-super-class108411%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class108410%_ 'class))
            (let ((_%maybe-sub-class108415%_ _%maybe-sub-class108410%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class108411%_
                     'class))
                  (let ((_%maybe-super-class108425%_
                         _%maybe-super-class108411%_))
                    (__subclass?
                     _%maybe-sub-class108415%_
                     _%maybe-super-class108425%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@653.45-653.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class108411%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@653.18-653.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class108410%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class108382%_ _%maybe-super-class108383%_)
        (let* ((_%maybe-sub-class108386%_ _%maybe-sub-class108382%_)
               (_%maybe-super-class108394%_ _%maybe-super-class108383%_)
               (_%maybe-super-class-id108403%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class108394%_)))
               (_%$e108405%_
                (eq? _%maybe-super-class-id108403%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class108386%_)))))
          (if _%$e108405%_
              _%$e108405%_
              (let ((__tmp111947
                     (lambda (_%super-class108408%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class108408%_))
                            _%maybe-super-class-id108403%_)))
                    (__tmp111946
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class108386%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp111947 __tmp111946))))))
    (define object?
      (lambda (_%o108379%_)
        (if (let () (declare (not safe)) (##structure? _%o108379%_))
            (let ((__tmp111948
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108379%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp111948 'class))
            '#f)))
    (define object-type
      (lambda (_%o108374%_)
        (if (let () (declare (not safe)) (##structure? _%o108374%_))
            (let ((_%klass108377%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108374%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass108377%_ 'class))
                  _%klass108377%_
                  (begin
                    (error '"not an object" _%o108374%_ _%klass108377%_)
                    '#!void)))
            (begin (error '"not an object" _%o108374%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass108359%_ _%obj108360%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108359%_ 'class))
            (let ((_%klass108364%_ _%klass108359%_))
              (__direct-instance? _%klass108364%_ _%obj108360%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@676.25-676.30"
               'contract:
               'class-type?
               'value:
               _%klass108359%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass108346%_ _%obj108347%_)
        (let* ((_%klass108350%_ _%klass108346%_)
               (__tmp111949
                (let () (declare (not safe)) (##type-id _%klass108350%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108347%_ __tmp111949))))
    (define immediate-instance-of?
      (lambda (_%klass108342%_ _%obj108343%_)
        (if (let () (declare (not safe)) (##structure? _%obj108343%_))
            (eq? _%klass108342%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj108343%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass108327%_ _%obj108328%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108327%_ 'class))
            (let ((_%klass108332%_ _%klass108327%_))
              (__struct-instance? _%klass108332%_ _%obj108328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.25-705.30"
               'contract:
               'class-type?
               'value:
               _%klass108327%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass108314%_ _%obj108315%_)
        (let* ((_%klass108318%_ _%klass108314%_)
               (__tmp111950
                (let () (declare (not safe)) (##type-id _%klass108318%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj108315%_ __tmp111950))))
    (define class-instance?
      (lambda (_%klass108299%_ _%obj108300%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108299%_ 'class))
            (let ((_%klass108304%_ _%klass108299%_))
              (__class-instance? _%klass108304%_ _%obj108300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@710.24-710.29"
               'contract:
               'class-type?
               'value:
               _%klass108299%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass108284%_ _%obj108285%_)
        (let* ((_%klass108288%_ _%klass108284%_)
               (_%type108297%_ (class-of _%obj108285%_)))
          (__subclass? _%type108297%_ _%klass108288%_))))
    (define make-object
      (lambda (_%klass108259%_ _%k108260%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108259%_ 'class))
            (let ((_%klass108264%_ _%klass108259%_))
              (if (fixnum? _%k108260%_)
                  (let ((_%k108274%_ _%k108260%_))
                    (__make-object _%klass108264%_ _%k108274%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@715.37-715.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k108260%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@715.20-715.25"
               'contract:
               'class-type?
               'value:
               _%klass108259%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass108236%_ _%k108237%_)
        (let* ((_%klass108240%_ _%klass108236%_) (_%k108248%_ _%k108237%_))
          (if (__class-type-system? _%klass108240%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass108240%_)
                '#!void)
              (let ((_%obj108257%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass108240%_ _%k108248%_))))
                (__object-fill! _%obj108257%_ '#f))))))
    (define object-fill!
      (lambda (_%obj108221%_ _%fill108222%_)
        (if (object? _%obj108221%_)
            (let ((_%obj108226%_ _%obj108221%_))
              (__object-fill! _%obj108226%_ _%fill108222%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@735.21-735.24"
               'contract:
               'object?
               'value:
               _%obj108221%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj108203%_ _%fill108204%_)
        (let ((_%obj108207%_ _%obj108203%_))
          (let _%loop108216%_ ((_%i108218%_
                                (let ((__tmp111951
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj108207%_))))
                                  (declare (not safe))
                                  (##fx- __tmp111951 '1))))
            (if (let () (declare (not safe)) (##fx> _%i108218%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj108207%_
                     _%fill108204%_
                     _%i108218%_
                     '#f
                     '#f))
                  (_%loop108216%_
                   (let () (declare (not safe)) (##fx- _%i108218%_ '1))))
                _%obj108207%_)))))
    (define new-instance
      (lambda (_%klass108189%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108189%_ 'class))
            (let ((_%klass108193%_ _%klass108189%_))
              (__new-instance _%klass108193%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@746.21-746.26"
               'contract:
               'class-type?
               'value:
               _%klass108189%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass108177%_)
        (let* ((_%klass108180%_ _%klass108177%_)
               (__obj111865
                (let ((__tmp111952
                       (let ((__tmp111953
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass108180%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp111953))))
                  (declare (not safe))
                  (##make-structure _%klass108180%_ __tmp111952))))
          (object-fill! __obj111865 '#f)
          __obj111865)))
    (define make-instance
      (lambda (_%klass108162%_ . _%args108163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108162%_ 'class))
            (let ((_%klass108167%_ _%klass108162%_))
              (declare (not safe))
              (##apply __make-instance _%klass108167%_ _%args108163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@749.22-749.27"
               'contract:
               'class-type?
               'value:
               _%klass108162%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass108134%_ . _%args108135%_)
        (let* ((_%klass108138%_ _%klass108134%_)
               (_%$e108147%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108138%_ '10 '#f '#f))))
          (if _%$e108147%_
              ((lambda (_%kons-id108150%_)
                 (let ((_%obj108152%_ (__new-instance _%klass108138%_)))
                   (___constructor-init!
                    _%klass108138%_
                    _%kons-id108150%_
                    _%obj108152%_
                    _%args108135%_)
                   _%obj108152%_))
               _%$e108147%_)
              (if (__class-type-metaclass? _%klass108138%_)
                  (let ((_%obj108155%_ (__new-instance _%klass108138%_)))
                    (__metaclass-instance-init!
                     _%klass108138%_
                     _%obj108155%_
                     _%args108135%_)
                    _%obj108155%_)
                  (if (__class-type-struct? _%klass108138%_)
                      (if (let ((__tmp111955
                                 (__class-type-field-count _%klass108138%_))
                                (__tmp111954
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args108135%_))))
                            (declare (not safe))
                            (##fx= __tmp111955 __tmp111954))
                          (apply ##structure _%klass108138%_ _%args108135%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass108138%_
                                   'slots:
                                   (__class-type-slot-list _%klass108138%_)
                                   'args:
                                   _%args108135%_)
                            '#!void))
                      (let ((_%obj108158%_ (__new-instance _%klass108138%_)))
                        (___class-instance-init!
                         _%klass108138%_
                         _%obj108158%_
                         _%args108135%_)
                        _%obj108158%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj108119%_ . _%args108120%_)
        (if (object? _%obj108119%_)
            (let ((_%obj108124%_ _%obj108119%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj108124%_ _%args108120%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@774.30-774.33"
               'contract:
               'object?
               'value:
               _%obj108119%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj108106%_ . _%args108107%_)
        (let ((_%obj108110%_ _%obj108106%_))
          (if (let ((__tmp111957
                     (let () (declare (not safe)) (##length _%args108107%_)))
                    (__tmp111956
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj108110%_))))
                (declare (not safe))
                (##fx< __tmp111957 __tmp111956))
              (___struct-instance-init! _%obj108110%_ _%args108107%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj108110%_
                     'args:
                     _%args108107%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj108065%_ _%args108066%_)
        (let _%lp108068%_ ((_%k108070%_ '1) (_%rest108071%_ _%args108066%_))
          (let* ((_%rest108072108080%_ _%rest108071%_)
                 (_%else108074108088%_ (lambda () _%obj108065%_))
                 (_%K108076108094%_
                  (lambda (_%rest108091%_ _%hd108092%_)
                    (unchecked-field-set!
                     _%obj108065%_
                     _%k108070%_
                     _%hd108092%_)
                    (_%lp108068%_
                     (let () (declare (not safe)) (##fx+ _%k108070%_ '1))
                     _%rest108091%_))))
            (if (pair? _%rest108072108080%_)
                (let ((_%hd108077108097%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108072108080%_)))
                      (_%tl108078108099%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108072108080%_))))
                  (let* ((_%hd108102%_ _%hd108077108097%_)
                         (_%rest108104%_ _%tl108078108099%_))
                    (_%K108076108094%_ _%rest108104%_ _%hd108102%_)))
                (_%else108074108088%_))))))
    (define class-instance-init!
      (lambda (_%obj108050%_ . _%args108051%_)
        (if (object? _%obj108050%_)
            (let ((_%obj108055%_ _%obj108050%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj108055%_ _%args108051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@814.29-814.32"
               'contract:
               'object?
               'value:
               _%obj108050%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj108037%_ . _%args108038%_)
        (let ((_%obj108041%_ _%obj108037%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj108041%_))
           _%obj108041%_
           _%args108038%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass107979%_ _%obj107980%_ _%args107981%_)
        (let _%lp107983%_ ((_%rest107985%_ _%args107981%_))
          (let* ((_%rest107986107996%_ _%rest107985%_)
                 (_%else107988108004%_
                  (lambda ()
                    (if (null? _%rest107985%_)
                        _%obj107980%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass107979%_
                               'rest:
                               _%rest107985%_))))
                 (_%K107990108018%_
                  (lambda (_%rest108007%_ _%val108008%_ _%key108009%_)
                    (if (keyword? _%key108009%_)
                        (let ((_%$e108012%_
                               (__class-slot-offset
                                _%klass107979%_
                                _%key108009%_)))
                          (if _%$e108012%_
                              ((lambda (_%off108015%_)
                                 (unchecked-field-set!
                                  _%obj107980%_
                                  _%off108015%_
                                  _%val108008%_)
                                 (_%lp107983%_ _%rest108007%_))
                               _%$e108012%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass107979%_
                                     'slot:
                                     _%key108009%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key108009%_)))))
            (if (pair? _%rest107986107996%_)
                (let ((_%hd107991108021%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107986107996%_)))
                      (_%tl107992108023%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107986107996%_))))
                  (let ((_%key108026%_ _%hd107991108021%_))
                    (if (pair? _%tl107992108023%_)
                        (let ((_%hd107993108028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl107992108023%_)))
                              (_%tl107994108030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl107992108023%_))))
                          (let* ((_%val108033%_ _%hd107993108028%_)
                                 (_%rest108035%_ _%tl107994108030%_))
                            (_%K107990108018%_
                             _%rest108035%_
                             _%val108033%_
                             _%key108026%_)))
                        (_%else107988108004%_))))
                (_%else107988108004%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass107975%_ _%obj107976%_ _%args107977%_)
        (apply call-method
               _%klass107975%_
               'instance-init!
               _%obj107976%_
               _%args107977%_)))
    (define constructor-init!
      (lambda (_%klass107938%_
               _%kons-id107939%_
               _%obj107940%_
               .
               _%args107941%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107938%_ 'class))
            (let ((_%klass107945%_ _%klass107938%_))
              (if (symbol? _%kons-id107939%_)
                  (let ((_%kons-id107955%_ _%kons-id107939%_))
                    (if (object? _%obj107940%_)
                        (let ((_%obj107965%_ _%obj107940%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass107945%_
                                   _%kons-id107955%_
                                   _%obj107965%_
                                   _%args107941%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@838.63-838.66"
                           'contract:
                           'object?
                           'value:
                           _%obj107940%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@838.43-838.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id107939%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.26-838.31"
               'contract:
               'class-type?
               'value:
               _%klass107938%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass107907%_
               _%kons-id107908%_
               _%obj107909%_
               .
               _%args107910%_)
        (let* ((_%klass107913%_ _%klass107907%_)
               (_%kons-id107921%_ _%kons-id107908%_)
               (_%obj107929%_ _%obj107909%_))
          (___constructor-init!
           _%klass107913%_
           _%kons-id107921%_
           _%obj107929%_
           _%args107910%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass107896%_ _%kons-id107897%_ _%obj107898%_ _%args107899%_)
        (let ((_%$e107901%_
               (__find-method
                _%klass107896%_
                _%obj107898%_
                _%kons-id107897%_)))
          (if _%$e107901%_
              ((lambda (_%kons107904%_)
                 (apply _%kons107904%_ _%obj107898%_ _%args107899%_)
                 _%obj107898%_)
               _%$e107901%_)
              (error '"missing constructor"
                     'class:
                     _%klass107896%_
                     'method:
                     _%kons-id107897%_)))))
    (define struct-copy
      (lambda (_%struct107882%_)
        (if (object? _%struct107882%_)
            (let ((_%struct107886%_ _%struct107882%_))
              (__struct-copy _%struct107886%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.20-852.26"
               'contract:
               'object?
               'value:
               _%struct107882%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct107870%_)
        (let ((_%struct107873%_ _%struct107870%_))
          (declare (not safe))
          (##structure-copy _%struct107873%_))))
    (define struct->list
      (lambda (_%obj107856%_)
        (if (object? _%obj107856%_)
            (let ((_%obj107860%_ _%obj107856%_))
              (__struct->list _%obj107860%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.21-855.24"
               'contract:
               'object?
               'value:
               _%obj107856%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj107837%_)
        (let* ((_%obj107840%_ _%obj107837%_)
               (_%len107849%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj107840%_))))
          (let _%recur107851%_ ((_%i107853%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i107853%_ _%len107849%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj107840%_
                         _%i107853%_
                         '#f
                         '#f))
                      (_%recur107851%_
                       (let () (declare (not safe)) (##fx+ _%i107853%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj107823%_)
        (if (object? _%obj107823%_)
            (let ((_%obj107827%_ _%obj107823%_)) (__class->list _%obj107827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@863.20-863.23"
               'contract:
               'object?
               'value:
               _%obj107823%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj107799%_)
        (let* ((_%obj107802%_ _%obj107799%_)
               (_%klass107811%_
                (let () (declare (not safe)) (##structure-type _%obj107802%_)))
               (_%slot-vector107813%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107811%_ '7 '#f '#f))))
          (let _%loop107815%_ ((_%index107817%_
                                (let ((__tmp111958
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector107813%_))))
                                  (declare (not safe))
                                  (##fx- __tmp111958 '1)))
                               (_%plist107818%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index107817%_ '1))
                (cons _%klass107811%_ _%plist107818%_)
                (let ((_%slot107821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector107813%_
                          _%index107817%_))))
                  (_%loop107815%_
                   (let () (declare (not safe)) (##fx- _%index107817%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot107821%_))
                         (cons (unchecked-field-ref
                                _%obj107802%_
                                _%index107817%_)
                               _%plist107818%_)))))))))
    (define call-method
      (lambda (_%obj107783%_ _%id107784%_ . _%args107785%_)
        (if (symbol? _%id107784%_)
            (let ((_%id107789%_ _%id107784%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj107783%_
                       _%id107789%_
                       _%args107785%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@878.24-878.26"
               'contract:
               'symbol?
               'value:
               _%id107784%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj107752%_ _%id107753%_ . _%args107754%_)
        (let* ((_%id107757%_ _%id107753%_)
               (_%$e107766%_ (__method-ref _%obj107752%_ _%id107757%_)))
          (if _%$e107766%_
              ((lambda (_%method107769%_)
                 (let ((_%method107771%_ _%method107769%_))
                   (apply _%method107771%_ _%obj107752%_ _%args107754%_)))
               _%$e107766%_)
              (error '"cannot find method"
                     'object:
                     _%obj107752%_
                     'method:
                     _%id107757%_)))))
    (define method-ref
      (lambda (_%obj107737%_ _%id107738%_)
        (if (symbol? _%id107738%_)
            (let ((_%id107742%_ _%id107738%_))
              (__method-ref _%obj107737%_ _%id107742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@905.23-905.25"
               'contract:
               'symbol?
               'value:
               _%id107738%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj107724%_ _%id107725%_)
        (let ((_%id107728%_ _%id107725%_))
          (__find-method
           (class-of _%obj107724%_)
           _%obj107724%_
           _%id107728%_))))
    (define checked-method-ref
      (lambda (_%obj107717%_ _%id107718%_)
        (let ((_%$e107721%_ (method-ref _%obj107717%_ _%id107718%_)))
          (if _%$e107721%_
              _%$e107721%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj107717%_
                       'method:
                       _%id107718%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj107702%_ _%id107703%_)
        (if (symbol? _%id107703%_)
            (let ((_%id107707%_ _%id107703%_))
              (__bound-method-ref _%obj107702%_ _%id107707%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@913.29-913.31"
               'contract:
               'symbol?
               'value:
               _%id107703%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj107670%_ _%id107671%_)
        (let* ((_%id107674%_ _%id107671%_)
               (_%$e107683%_ (__method-ref _%obj107670%_ _%id107674%_)))
          (if _%$e107683%_
              ((lambda (_%method107686%_)
                 (let ((_%method107688%_ _%method107686%_))
                   (lambda _%args107699%_
                     (apply _%method107688%_ _%obj107670%_ _%args107699%_))))
               _%$e107683%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj107655%_ _%id107656%_)
        (if (symbol? _%id107656%_)
            (let ((_%id107660%_ _%id107656%_))
              (__checked-bound-method-ref _%obj107655%_ _%id107660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@922.37-922.39"
               'contract:
               'symbol?
               'value:
               _%id107656%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj107638%_ _%id107639%_)
        (let* ((_%id107642%_ _%id107639%_)
               (_%method107651%_
                (checked-method-ref _%obj107638%_ _%id107642%_)))
          (lambda _%args107653%_
            (apply _%method107651%_ _%obj107638%_ _%args107653%_)))))
    (define find-method
      (lambda (_%klass107612%_ _%obj107613%_ _%id107614%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107612%_ 'class))
            (let ((_%klass107618%_ _%klass107612%_))
              (if (symbol? _%id107614%_)
                  (let ((_%id107628%_ _%id107614%_))
                    (__find-method _%klass107618%_ _%obj107613%_ _%id107628%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@927.41-927.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id107614%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@927.20-927.25"
               'contract:
               'class-type?
               'value:
               _%klass107612%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass107583%_ _%obj107584%_ _%id107585%_)
        (let* ((_%klass107588%_ _%klass107583%_) (_%id107596%_ _%id107585%_))
          (if (__class-type-sealed? _%klass107588%_)
              (let ((_%tab107606%_ (__specialize-class _%klass107588%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab107606%_ _%id107596%_ '#f))
              (let ((_%$e107608%_
                     (__direct-method-ref
                      _%klass107588%_
                      _%obj107584%_
                      _%id107596%_)))
                (if _%$e107608%_
                    _%$e107608%_
                    (__mixin-method-ref
                     _%klass107588%_
                     _%obj107584%_
                     _%id107596%_)))))))
    (define mixin-find-method
      (lambda (_%mixins107567%_ _%obj107568%_ _%id107569%_)
        (if (symbol? _%id107569%_)
            (let ((_%id107573%_ _%id107569%_))
              (__mixin-find-method
               _%mixins107567%_
               _%obj107568%_
               _%id107573%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.37-936.39"
               'contract:
               'symbol?
               'value:
               _%id107569%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins107549%_ _%obj107550%_ _%id107551%_)
        (let* ((_%id107554%_ _%id107551%_)
               (__tmp111959
                (lambda (_%g107562107564%_)
                  (direct-method-ref
                   _%g107562107564%_
                   _%obj107550%_
                   _%id107554%_))))
          (declare (not safe))
          (__ormap1 __tmp111959 _%mixins107549%_))))
    (define direct-method-ref
      (lambda (_%klass107523%_ _%obj107524%_ _%id107525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107523%_ 'class))
            (let ((_%klass107529%_ _%klass107523%_))
              (if (symbol? _%id107525%_)
                  (let ((_%id107539%_ _%id107525%_))
                    (__direct-method-ref
                     _%klass107529%_
                     _%obj107524%_
                     _%id107539%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@939.47-939.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id107525%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.26-939.31"
               'contract:
               'class-type?
               'value:
               _%klass107523%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass107477%_ _%obj107478%_ _%id107479%_)
        (let* ((_%klass107482%_ _%klass107477%_) (_%id107490%_ _%id107479%_))
          (letrec ((_%metaclass-resolve-method107499%_
                    (lambda ()
                      (let ((__method111866
                             (__method-ref
                              _%klass107482%_
                              'direct-method-ref)))
                        (if __method111866
                            (let ()
                              (declare (not safe))
                              (__method111866
                               _%klass107482%_
                               _%obj107478%_
                               _%id107490%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107482%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!107500%_
                    (lambda ()
                      (let ((_%method107520%_
                             (_%metaclass-resolve-method107499%_)))
                        (let ((__tmp111961
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107482%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp111960
                               (if _%method107520%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp111961
                           _%id107490%_
                           __tmp111960))
                        _%method107520%_))))
            (let ((_%$e107502%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass107482%_ '11 '#f '#f))))
              (if _%$e107502%_
                  ((lambda (_%ht107505%_)
                     (let ((_%method107507%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht107505%_
                               _%id107490%_
                               '#f))))
                       (if (procedure? _%method107507%_)
                           _%method107507%_
                           (if (__class-type-metaclass? _%klass107482%_)
                               (let ((_%$e107511%_ _%method107507%_))
                                 (if (eq? 'resolved _%$e107511%_)
                                     (_%metaclass-resolve-method107499%_)
                                     (if (eq? 'unknown _%$e107511%_)
                                         '#f
                                         (_%metaclass-resolve-method!107500%_))))
                               '#f))))
                   _%$e107502%_)
                  (if (__class-type-metaclass? _%klass107482%_)
                      (let ((_%tab107516%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107482%_
                           _%tab107516%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!107500%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass107451%_ _%obj107452%_ _%id107453%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107451%_ 'class))
            (let ((_%klass107457%_ _%klass107451%_))
              (if (symbol? _%id107453%_)
                  (let ((_%id107467%_ _%id107453%_))
                    (__mixin-method-ref
                     _%klass107457%_
                     _%obj107452%_
                     _%id107467%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@969.46-969.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id107453%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.25-969.30"
               'contract:
               'class-type?
               'value:
               _%klass107451%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass107429%_ _%obj107430%_ _%id107431%_)
        (let* ((_%klass107434%_ _%klass107429%_) (_%id107442%_ _%id107431%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass107434%_ '6 '#f '#f))
           _%obj107430%_
           _%id107442%_))))
    (define bind-method!__%
      (lambda (_%klass107388%_ _%id107389%_ _%proc107390%_ _%rebind?107391%_)
        (if (symbol? _%id107389%_)
            (let ((_%id107395%_ _%id107389%_))
              (if (procedure? _%proc107390%_)
                  (let ((_%proc107405%_ _%proc107390%_))
                    (__bind-method!__%
                     _%klass107388%_
                     _%id107395%_
                     _%proc107405%_
                     _%rebind?107391%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@972.42-972.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107390%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@972.27-972.29"
               'contract:
               'symbol?
               'value:
               _%id107389%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass107418%_ _%id107419%_ _%proc107420%_)
        (let ((_%rebind?107422%_ '#f))
          (bind-method!__%
           _%klass107418%_
           _%id107419%_
           _%proc107420%_
           _%rebind?107422%_))))
    (define bind-method!
      (lambda _g111962_
        (let ((_g111963_ (let () (declare (not safe)) (##length _g111962_))))
          (cond ((let () (declare (not safe)) (##fx= _g111963_ 3))
                 (apply bind-method!__0 _g111962_))
                ((let () (declare (not safe)) (##fx= _g111963_ 4))
                 (apply bind-method!__% _g111962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g111962_))))))
    (define __bind-method!__%
      (lambda (_%klass107339%_ _%id107340%_ _%proc107341%_ _%rebind?107342%_)
        (let* ((_%id107345%_ _%id107340%_) (_%proc107353%_ _%proc107341%_))
          (letrec ((_%bind!107362%_
                    (lambda (_%ht107371%_)
                      (if (and (not _%rebind?107342%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht107371%_
                                  _%id107345%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass107339%_
                                 'method:
                                 _%id107345%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht107371%_
                               _%id107345%_
                               _%proc107353%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass107339%_ 'class))
                (let ((_%ht107365%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107339%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht107365%_
                      (_%bind!107362%_ _%ht107365%_)
                      (let ((_%ht107367%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107339%_
                           _%ht107367%_
                           '11
                           '#f
                           '#f))
                        (_%bind!107362%_ _%ht107367%_))))
                (if (let () (declare (not safe)) (##type? _%klass107339%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass107339%_)
                     _%id107345%_
                     _%proc107353%_
                     _%rebind?107342%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass107339%_)))))))
    (define __bind-method!__0
      (lambda (_%klass107376%_ _%id107377%_ _%proc107378%_)
        (let ((_%rebind?107380%_ '#f))
          (__bind-method!__%
           _%klass107376%_
           _%id107377%_
           _%proc107378%_
           _%rebind?107380%_))))
    (define __bind-method!
      (lambda _g111964_
        (let ((_g111965_ (let () (declare (not safe)) (##length _g111964_))))
          (cond ((let () (declare (not safe)) (##fx= _g111965_ 3))
                 (apply __bind-method!__0 _g111964_))
                ((let () (declare (not safe)) (##fx= _g111965_ 4))
                 (apply __bind-method!__% _g111964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g111964_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint107320%_ _%seed107321%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint107320%_
           procedure-hash
           eq?
           _%seed107321%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint107327%_ '#f) (_%seed107329%_ '0))
          (make-method-specializer-table__%
           _%size-hint107327%_
           _%seed107329%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint107331%_)
        (let ((_%seed107333%_ '0))
          (make-method-specializer-table__%
           _%size-hint107331%_
           _%seed107333%_))))
    (define make-method-specializer-table
      (lambda _g111966_
        (let ((_g111967_ (let () (declare (not safe)) (##length _g111966_))))
          (cond ((let () (declare (not safe)) (##fx= _g111967_ 0))
                 (apply make-method-specializer-table__0 _g111966_))
                ((let () (declare (not safe)) (##fx= _g111967_ 1))
                 (apply make-method-specializer-table__1 _g111966_))
                ((let () (declare (not safe)) (##fx= _g111967_ 2))
                 (apply make-method-specializer-table__% _g111966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g111966_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint107300%_ _%seed107302%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint107300%_
           procedure-hash
           eq?
           _%seed107302%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint107308%_ '#f) (_%seed107310%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107308%_
           _%seed107310%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint107312%_)
        (let ((_%seed107314%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107312%_
           _%seed107314%_))))
    (define make-method-specializer-table/lock
      (lambda _g111968_
        (let ((_g111969_ (let () (declare (not safe)) (##length _g111968_))))
          (cond ((let () (declare (not safe)) (##fx= _g111969_ 0))
                 (apply make-method-specializer-table/lock__0 _g111968_))
                ((let () (declare (not safe)) (##fx= _g111969_ 1))
                 (apply make-method-specializer-table/lock__1 _g111968_))
                ((let () (declare (not safe)) (##fx= _g111969_ 2))
                 (apply make-method-specializer-table/lock__% _g111968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g111968_))))))
    (define method-specializer-table-ref
      (lambda (_%tab107253%_ _%key107254%_ _%default107255%_)
        (let ((_%table107257%_
               (let () (declare (not safe)) (&raw-table-table _%tab107253%_)))
              (_%seed107258%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107253%_))))
          (let* ((_%h107260%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107254%_))
                         _%seed107258%_))
                 (_%size107263%_ (vector-length _%table107257%_))
                 (_%entries107266%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107263%_ '2)))
                 (_%start107269%_
                  (let ((__tmp111970
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107260%_ _%entries107266%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111970 '1))))
            (let _%loop107273%_ ((_%probe107276%_ _%start107269%_)
                                 (_%i107278%_ '1)
                                 (_%deleted107280%_ '#f))
              (let ((_%k107283%_ (vector-ref _%table107257%_ _%probe107276%_)))
                (if (eq? _%k107283%_ (macro-unused-obj))
                    _%default107255%_
                    (if (eq? _%k107283%_ (macro-deleted-obj))
                        (_%loop107273%_
                         (let ((_%next-probe107288%_
                                (fx+ _%start107269%_
                                     _%i107278%_
                                     (fx* _%i107278%_ _%i107278%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107288%_ _%size107263%_))
                         (let () (declare (not safe)) (##fx+ _%i107278%_ '1))
                         (let ((_%$e107291%_ _%deleted107280%_))
                           (if _%$e107291%_ _%$e107291%_ _%probe107276%_)))
                        (if (eq? _%key107254%_ _%k107283%_)
                            (vector-ref
                             _%table107257%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe107276%_ '1)))
                            (_%loop107273%_
                             (let ((_%next-probe107296%_
                                    (fx+ _%start107269%_
                                         _%i107278%_
                                         (fx* _%i107278%_ _%i107278%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107296%_
                                _%size107263%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107278%_ '1))
                             _%deleted107280%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab107226%_ _%key107227%_ _%default107228%_)
        (let ((_%lock107230%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107226%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107235%_ ((_%spin107238%_ '0))
              (if (let ((__tmp111971
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107230%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp111971 '0))
                  (let ((__tmp111972 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107230%_ '1 __tmp111972))
                  (if (let () (declare (not safe)) (##fx< _%spin107238%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107235%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107238%_ '1))))
                      (let ((_%owner107244%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107230%_ '1))))
                        (if (eq? _%owner107244%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107244%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107235%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107250%_
                 (method-specializer-table-ref
                  _%tab107226%_
                  _%key107227%_
                  _%default107228%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107230%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107230%_ '0 '0 '1))
            _%$r107250%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab107178%_ _%key107179%_ _%value107180%_)
        (let ((_%table107182%_
               (let () (declare (not safe)) (&raw-table-table _%tab107178%_)))
              (_%seed107183%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107178%_))))
          (let* ((_%h107185%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107179%_))
                         _%seed107183%_))
                 (_%size107188%_ (vector-length _%table107182%_))
                 (_%entries107191%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107188%_ '2)))
                 (_%start107194%_
                  (let ((__tmp111973
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107185%_ _%entries107191%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111973 '1))))
            (let _%loop107198%_ ((_%probe107201%_ _%start107194%_)
                                 (_%i107203%_ '1)
                                 (_%deleted107205%_ '#f))
              (let ((_%k107208%_ (vector-ref _%table107182%_ _%probe107201%_)))
                (if (eq? _%k107208%_ (macro-unused-obj))
                    (if _%deleted107205%_
                        (begin
                          (vector-set!
                           _%table107182%_
                           _%deleted107205%_
                           _%key107179%_)
                          (vector-set!
                           _%table107182%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107205%_ '1))
                           _%value107180%_)
                          ((lambda ()
                             (let ((__tmp111974
                                    (let ((__tmp111975
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107178%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111975 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107178%_
                                __tmp111974)))))
                        (begin
                          (vector-set!
                           _%table107182%_
                           _%probe107201%_
                           _%key107179%_)
                          (vector-set!
                           _%table107182%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107201%_ '1))
                           _%value107180%_)
                          ((lambda ()
                             (let ((__tmp111976
                                    (let ((__tmp111977
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107178%_))))
                                      (declare (not safe))
                                      (##fx- __tmp111977 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107178%_
                                __tmp111976))
                             (let ((__tmp111978
                                    (let ((__tmp111979
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107178%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111979 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107178%_
                                __tmp111978))))))
                    (if (eq? _%k107208%_ (macro-deleted-obj))
                        (_%loop107198%_
                         (let ((_%next-probe107215%_
                                (fx+ _%start107194%_
                                     _%i107203%_
                                     (fx* _%i107203%_ _%i107203%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107215%_ _%size107188%_))
                         (let () (declare (not safe)) (##fx+ _%i107203%_ '1))
                         (let ((_%$e107218%_ _%deleted107205%_))
                           (if _%$e107218%_ _%$e107218%_ _%probe107201%_)))
                        (if (eq? _%key107179%_ _%k107208%_)
                            (let ()
                              (vector-set!
                               _%table107182%_
                               _%probe107201%_
                               _%key107179%_)
                              (vector-set!
                               _%table107182%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107201%_ '1))
                               _%value107180%_))
                            (_%loop107198%_
                             (let ((_%next-probe107223%_
                                    (fx+ _%start107194%_
                                         _%i107203%_
                                         (fx* _%i107203%_ _%i107203%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107223%_
                                _%size107188%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107203%_ '1))
                             _%deleted107205%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab107174%_ _%key107175%_ _%value107176%_)
        (if (let ((__tmp111982
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107174%_)))
                  (__tmp111980
                   (let ((__tmp111981
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107174%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp111981 '4))))
              (declare (not safe))
              (##fx< __tmp111982 __tmp111980))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107174%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab107174%_
         _%key107175%_
         _%value107176%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab107146%_ _%key107147%_ _%value107148%_)
        (let ((_%lock107151%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107146%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107156%_ ((_%spin107159%_ '0))
              (if (let ((__tmp111983
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107151%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp111983 '0))
                  (let ((__tmp111984 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107151%_ '1 __tmp111984))
                  (if (let () (declare (not safe)) (##fx< _%spin107159%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107156%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107159%_ '1))))
                      (let ((_%owner107165%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107151%_ '1))))
                        (if (eq? _%owner107165%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107165%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107156%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107171%_
                 (method-specializer-table-set!
                  _%tab107146%_
                  _%key107147%_
                  _%value107148%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107151%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107151%_ '0 '0 '1))
            _%$r107171%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab107097%_
               _%key107098%_
               _%method-specializer-table-update!107099%_
               _%default107100%_)
        (let ((_%table107102%_
               (let () (declare (not safe)) (&raw-table-table _%tab107097%_)))
              (_%seed107103%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107097%_))))
          (let* ((_%h107105%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107098%_))
                         _%seed107103%_))
                 (_%size107108%_ (vector-length _%table107102%_))
                 (_%entries107111%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107108%_ '2)))
                 (_%start107114%_
                  (let ((__tmp111985
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107105%_ _%entries107111%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111985 '1))))
            (let _%loop107118%_ ((_%probe107121%_ _%start107114%_)
                                 (_%i107123%_ '1)
                                 (_%deleted107125%_ '#f))
              (let ((_%k107128%_ (vector-ref _%table107102%_ _%probe107121%_)))
                (if (eq? _%k107128%_ (macro-unused-obj))
                    (if _%deleted107125%_
                        (begin
                          (vector-set!
                           _%table107102%_
                           _%deleted107125%_
                           _%key107098%_)
                          (vector-set!
                           _%table107102%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107125%_ '1))
                           (_%method-specializer-table-update!107099%_
                            _%default107100%_))
                          ((lambda ()
                             (let ((__tmp111986
                                    (let ((__tmp111987
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107097%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111987 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107097%_
                                __tmp111986)))))
                        (begin
                          (vector-set!
                           _%table107102%_
                           _%probe107121%_
                           _%key107098%_)
                          (vector-set!
                           _%table107102%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107121%_ '1))
                           (_%method-specializer-table-update!107099%_
                            _%default107100%_))
                          ((lambda ()
                             (let ((__tmp111988
                                    (let ((__tmp111989
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107097%_))))
                                      (declare (not safe))
                                      (##fx- __tmp111989 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107097%_
                                __tmp111988))
                             (let ((__tmp111990
                                    (let ((__tmp111991
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107097%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp111991 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107097%_
                                __tmp111990))))))
                    (if (eq? _%k107128%_ (macro-deleted-obj))
                        (_%loop107118%_
                         (let ((_%next-probe107135%_
                                (fx+ _%start107114%_
                                     _%i107123%_
                                     (fx* _%i107123%_ _%i107123%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107135%_ _%size107108%_))
                         (let () (declare (not safe)) (##fx+ _%i107123%_ '1))
                         (let ((_%$e107138%_ _%deleted107125%_))
                           (if _%$e107138%_ _%$e107138%_ _%probe107121%_)))
                        (if (eq? _%key107098%_ _%k107128%_)
                            (let ()
                              (vector-set!
                               _%table107102%_
                               _%probe107121%_
                               _%key107098%_)
                              (vector-set!
                               _%table107102%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107121%_ '1))
                               (_%method-specializer-table-update!107099%_
                                (vector-ref
                                 _%table107102%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe107121%_ '1))))))
                            (_%loop107118%_
                             (let ((_%next-probe107143%_
                                    (fx+ _%start107114%_
                                         _%i107123%_
                                         (fx* _%i107123%_ _%i107123%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107143%_
                                _%size107108%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107123%_ '1))
                             _%deleted107125%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab107092%_
               _%key107093%_
               _%method-specializer-table-update!107094%_
               _%default107095%_)
        (if (let ((__tmp111994
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107092%_)))
                  (__tmp111992
                   (let ((__tmp111993
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107092%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp111993 '4))))
              (declare (not safe))
              (##fx< __tmp111994 __tmp111992))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107092%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab107092%_
         _%key107093%_
         _%method-specializer-table-update!107094%_
         _%default107095%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab107063%_
               _%key107064%_
               _%method-specializer-table-update!107065%_
               _%default107066%_)
        (let ((_%lock107069%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107063%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107074%_ ((_%spin107077%_ '0))
              (if (let ((__tmp111995
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107069%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp111995 '0))
                  (let ((__tmp111996 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107069%_ '1 __tmp111996))
                  (if (let () (declare (not safe)) (##fx< _%spin107077%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107074%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107077%_ '1))))
                      (let ((_%owner107083%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107069%_ '1))))
                        (if (eq? _%owner107083%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107083%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107074%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107089%_
                 (_%method-specializer-table-update!107065%_
                  _%tab107063%_
                  _%key107064%_
                  _%method-specializer-table-update!107065%_
                  _%default107066%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107069%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107069%_ '0 '0 '1))
            _%$r107089%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab107020%_ _%key107021%_)
        (let ((_%table107023%_
               (let () (declare (not safe)) (&raw-table-table _%tab107020%_)))
              (_%seed107025%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107020%_))))
          (let* ((_%h107028%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107021%_))
                         _%seed107025%_))
                 (_%size107031%_ (vector-length _%table107023%_))
                 (_%entries107034%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107031%_ '2)))
                 (_%start107037%_
                  (let ((__tmp111997
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107028%_ _%entries107034%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111997 '1))))
            (let _%loop107041%_ ((_%probe107044%_ _%start107037%_)
                                 (_%i107046%_ '1))
              (let ((_%k107049%_ (vector-ref _%table107023%_ _%probe107044%_)))
                (if (eq? _%k107049%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107049%_ (macro-deleted-obj))
                        (_%loop107041%_
                         (let ((_%next-probe107054%_
                                (fx+ _%start107037%_
                                     _%i107046%_
                                     (fx* _%i107046%_ _%i107046%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107054%_ _%size107031%_))
                         (let () (declare (not safe)) (##fx+ _%i107046%_ '1)))
                        (if (eq? _%key107021%_ _%k107049%_)
                            (let ()
                              (vector-set!
                               _%table107023%_
                               _%probe107044%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107023%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107044%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp111998
                                        (let ((__tmp111999
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab107020%_))))
                                          (declare (not safe))
                                          (##fx- __tmp111999 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab107020%_
                                    __tmp111998)))))
                            (_%loop107041%_
                             (let ((_%next-probe107060%_
                                    (fx+ _%start107037%_
                                         _%i107046%_
                                         (fx* _%i107046%_ _%i107046%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107060%_
                                _%size107031%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107046%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab106992%_ _%key106994%_)
        (let ((_%lock106997%_
               (let () (declare (not safe)) (&raw-table-lock _%tab106992%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107002%_ ((_%spin107005%_ '0))
              (if (let ((__tmp112000
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock106997%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112000 '0))
                  (let ((__tmp112001 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock106997%_ '1 __tmp112001))
                  (if (let () (declare (not safe)) (##fx< _%spin107005%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107002%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107005%_ '1))))
                      (let ((_%owner107011%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock106997%_ '1))))
                        (if (eq? _%owner107011%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107011%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107002%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107017%_
                 (method-specializer-table-delete!
                  _%tab106992%_
                  _%key106994%_)))
            (let () (declare (not safe)) (##vector-set! _%lock106997%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock106997%_ '0 '0 '1))
            _%$r107017%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc106989%_ _%specializer106990%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc106989%_
         _%specializer106990%_)))
    (define __lookup-method-specializer
      (lambda (_%proc106987%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc106987%_
         '#f)))
    (define specialize-class
      (lambda (_%klass106973%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106973%_ 'class))
            (let ((_%klass106977%_ _%klass106973%_))
              (__specialize-class _%klass106977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1022.25-1022.30"
               'contract:
               'class-type?
               'value:
               _%klass106973%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass106955%_)
        (let* ((_%klass106958%_ _%klass106955%_)
               (_%$e106967%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106958%_ '12 '#f '#f))))
          (if _%$e106967%_
              _%$e106967%_
              (let ((_%method-table106971%_
                     (___specialize-class _%klass106958%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass106958%_
                   _%method-table106971%_
                   '12
                   '#f
                   '#f))
                _%method-table106971%_)))))
    (define __specialize-method
      (lambda (_%klass106939%_
               _%method-table106940%_
               _%method106941%_
               _%proc106942%_)
        (let ((_%$e106944%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table106940%_
                  _%method106941%_
                  '#f))))
          (if _%$e106944%_
              _%$e106944%_
              (let ((_%$e106947%_
                     (__lookup-method-specializer _%proc106942%_)))
                (if _%$e106947%_
                    ((lambda (_%specialize106950%_)
                       (let ((_%specialized-proc106952%_
                              (_%specialize106950%_
                               _%klass106939%_
                               _%method-table106940%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table106940%_
                          _%method106941%_
                          _%specialized-proc106952%_)))
                     _%$e106947%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table106940%_
                       _%method106941%_
                       _%proc106942%_))))))))
    (define ___specialize-class
      (lambda (_%klass106881%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106881%_ 'class))
            (if (__class-type-metaclass? _%klass106881%_)
                (let ((__method111867
                       (__method-ref _%klass106881%_ 'specialize-class)))
                  (if __method111867
                      (let ()
                        (declare (not safe))
                        (__method111867 _%klass106881%_))
                      (begin
                        (error '"Missing method"
                               _%klass106881%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp112002
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass106881%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp112002))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass106881%_)
                    (let ((_%method-table106887%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop106889%_ ((_%rest106891%_
                                            (__class-precedence-list
                                             _%klass106881%_)))
                        (let* ((_%rest106892106900%_ _%rest106891%_)
                               (_%else106894106908%_
                                (lambda () _%method-table106887%_))
                               (_%K106896106927%_
                                (lambda (_%rest106911%_ _%xklass106912%_)
                                  (let ((_%xmethod-table106913106915%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass106912%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table106913106915%_
                                        (let* ((_%xmethod-table106918%_
                                                _%xmethod-table106913106915%_)
                                               (__tmp112003
                                                (lambda (_%g106919106922%_
                                                         _%g106920106924%_)
                                                  (__specialize-method
                                                   _%klass106881%_
                                                   _%method-table106887%_
                                                   _%g106919106922%_
                                                   _%g106920106924%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table106918%_
                                           __tmp112003))
                                        '#f))
                                  (_%loop106889%_ _%rest106911%_))))
                          (if (pair? _%rest106892106900%_)
                              (let ((_%hd106897106930%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106892106900%_)))
                                    (_%tl106898106932%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106892106900%_))))
                                (let* ((_%xklass106935%_ _%hd106897106930%_)
                                       (_%rest106937%_ _%tl106898106932%_))
                                  (_%K106896106927%_
                                   _%rest106937%_
                                   _%xklass106935%_)))
                              (_%else106894106908%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass106881%_))
                (__specialize-class (__shadow-class__0 _%klass106881%_))
                (error '"bad class; cannot specialize" _%klass106881%_)))))
    (define seal-class!
      (lambda (_%klass106867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106867%_ 'class))
            (let ((_%klass106871%_ _%klass106867%_))
              (__seal-class! _%klass106871%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1068.20-1068.25"
               'contract:
               'class-type?
               'value:
               _%klass106867%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass106852%_)
        (let ((_%klass106855%_ _%klass106852%_))
          (if (__class-type-sealed? _%klass106855%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass106855%_)
                    (let ()
                      (let ((__method111868
                             (__method-ref _%klass106855%_ 'seal-class!)))
                        (if __method111868
                            (let ()
                              (declare (not safe))
                              (__method111868 _%klass106855%_))
                            (begin
                              (error '"Missing method"
                                     _%klass106855%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass106855%_))
                    (if (let ((__tmp112004
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass106855%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp112004))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass106855%_)
                        (__specialize-class _%klass106855%_)))
                (__class-type-seal! _%klass106855%_))))))
    (define next-method
      (lambda (_%subklass106826%_ _%obj106827%_ _%id106828%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass106826%_ 'class))
            (let ((_%subklass106832%_ _%subklass106826%_))
              (if (symbol? _%id106828%_)
                  (let ((_%id106842%_ _%id106828%_))
                    (__next-method
                     _%subklass106832%_
                     _%obj106827%_
                     _%id106842%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1090.44-1090.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id106828%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1090.20-1090.28"
               'contract:
               'class-type?
               'value:
               _%subklass106826%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass106763%_ _%obj106764%_ _%id106765%_)
        (let* ((_%subklass106768%_ _%subklass106763%_)
               (_%id106776%_ _%id106765%_))
          (letrec ((_%find-next-method106785%_
                    (lambda (_%klass106787%_)
                      (let _%lp106789%_ ((_%rest106791%_
                                          (class-precedence-list
                                           _%klass106787%_)))
                        (let* ((_%rest106792106800%_ _%rest106791%_)
                               (_%else106794106808%_ (lambda () '#f))
                               (_%K106796106814%_
                                (lambda (_%rest106811%_ _%klass106812%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass106768%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass106812%_)))
                                      (__mixin-find-method
                                       _%rest106811%_
                                       _%obj106764%_
                                       _%id106776%_)
                                      (_%lp106789%_ _%rest106811%_)))))
                          (if (pair? _%rest106792106800%_)
                              (let ((_%hd106797106817%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106792106800%_)))
                                    (_%tl106798106819%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106792106800%_))))
                                (let* ((_%klass106822%_ _%hd106797106817%_)
                                       (_%rest106824%_ _%tl106798106819%_))
                                  (_%K106796106814%_
                                   _%rest106824%_
                                   _%klass106822%_)))
                              (_%else106794106808%_)))))))
            (_%find-next-method106785%_ (class-of _%obj106764%_))))))
    (define call-next-method
      (lambda (_%subklass106736%_ _%obj106737%_ _%id106738%_ . _%args106739%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass106736%_ 'class))
            (let ((_%subklass106743%_ _%subklass106736%_))
              (if (symbol? _%id106738%_)
                  (let ((_%id106753%_ _%id106738%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass106743%_
                             _%obj106737%_
                             _%id106753%_
                             _%args106739%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.49-1101.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id106738%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.25-1101.33"
               'contract:
               'class-type?
               'value:
               _%subklass106736%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass106707%_ _%obj106708%_ _%id106709%_ . _%args106710%_)
        (let* ((_%subklass106713%_ _%subklass106707%_)
               (_%id106721%_ _%id106709%_)
               (_%$e106730%_
                (__next-method _%subklass106713%_ _%obj106708%_ _%id106721%_)))
          (if _%$e106730%_
              ((lambda (_%methodf106733%_)
                 (apply _%methodf106733%_ _%obj106708%_ _%args106710%_))
               _%$e106730%_)
              (error '"cannot find next method"
                     'object:
                     _%obj106708%_
                     'method:
                     _%id106721%_)))))
    (define write-style
      (lambda (_%we106705%_) (values (macro-writeenv-style _%we106705%_))))
    (define write-object
      (lambda (_%we106696%_ _%obj106697%_)
        (let ((_%$e106699%_ (__method-ref _%obj106697%_ ':wr)))
          (if _%$e106699%_
              ((lambda (_%method106702%_)
                 (_%method106702%_ _%obj106697%_ _%we106696%_))
               _%$e106699%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we106696%_ _%obj106697%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type106589%_ _%properties106590%_)
        (letrec ((_%shadow-type-id106592%_
                  (lambda (_%type106684%_)
                    (let ((__tmp112005
                           (let ()
                             (declare (not safe))
                             (##type-name _%type106684%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp112005 '"::t"))))
                 (_%shadow-type-name106593%_
                  (lambda (_%type106682%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type106682%_))))
                 (_%make-shadow-class106594%_
                  (lambda (_%type106674%_ _%precedence-list106675%_)
                    (let* ((_%super106677%_
                            (if (pair? _%precedence-list106675%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list106675%_))
                                      '())
                                '()))
                           (_%klass106679%_
                            (make-class-type
                             (_%shadow-type-id106592%_ _%type106674%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type106674%_))
                             _%super106677%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (let ((__tmp112006
                                                (if (__type-extensible?
                                                     _%type106674%_)
                                                    '()
                                                    (cons (cons 'final: '#t)
                                                          '()))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            _%properties106590%_
                                            __tmp112006))))
                             '#f)))
                      (let ((__tmp112007
                             (let ()
                               (declare (not safe))
                               (##type-id _%type106674%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp112007
                         _%klass106679%_))
                      _%klass106679%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106598%_ ((_%spin106601%_ '0))
              (if (let ((__tmp112008
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112008 '0))
                  (let ((__tmp112009 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp112009))
                  (if (let () (declare (not safe)) (##fx< _%spin106601%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again106598%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin106601%_ '1))))
                      (let ((_%owner106607%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner106607%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner106607%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again106598%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e106613%_
                 (let ((__tmp112010
                        (let ()
                          (declare (not safe))
                          (##type-id _%type106589%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp112010 '#f))))
            (if _%$e106613%_
                ((lambda (_%klass106616%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass106616%_)
                 _%$e106613%_)
                (let _%loop106619%_ ((_%super106621%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type106589%_)))
                                     (_%hierarchy106622%_ '()))
                  (if (not _%super106621%_)
                      (let _%loop106625%_ ((_%rest106627%_ _%hierarchy106622%_)
                                           (_%precedence-list106628%_ '()))
                        (let* ((_%rest106629106637%_ _%rest106627%_)
                               (_%else106631106647%_
                                (lambda ()
                                  (let ((_%klass106645%_
                                         (_%make-shadow-class106594%_
                                          _%type106589%_
                                          _%precedence-list106628%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-set!
                                       __shadow-classes-lock
                                       '1
                                       '#f))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-lock
                                       '0
                                       '0
                                       '1))
                                    _%klass106645%_)))
                               (_%K106633106661%_
                                (lambda (_%rest106650%_ _%type106651%_)
                                  (let ((_%$e106653%_
                                         (let ((__tmp112011
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type106651%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp112011
                                            '#f))))
                                    (if _%$e106653%_
                                        ((lambda (_%klass106656%_)
                                           (_%loop106625%_
                                            _%rest106650%_
                                            (cons _%klass106656%_
                                                  _%precedence-list106628%_)))
                                         _%$e106653%_)
                                        (let ((_%klass106659%_
                                               (_%make-shadow-class106594%_
                                                _%type106651%_
                                                _%precedence-list106628%_)))
                                          (_%loop106625%_
                                           _%rest106650%_
                                           (cons _%klass106659%_
                                                 _%precedence-list106628%_))))))))
                          (if (pair? _%rest106629106637%_)
                              (let ((_%hd106634106664%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106629106637%_)))
                                    (_%tl106635106666%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106629106637%_))))
                                (let* ((_%type106669%_ _%hd106634106664%_)
                                       (_%rest106671%_ _%tl106635106666%_))
                                  (_%K106633106661%_
                                   _%rest106671%_
                                   _%type106669%_)))
                              (_%else106631106647%_))))
                      (_%loop106619%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super106621%_))
                       (cons _%super106621%_ _%hierarchy106622%_)))))))))
    (define __shadow-class__0
      (lambda (_%type106689%_)
        (let ((_%properties106691%_ '()))
          (__shadow-class__% _%type106689%_ _%properties106691%_))))
    (define __shadow-class
      (lambda _g112012_
        (let ((_g112013_ (let () (declare (not safe)) (##length _g112012_))))
          (cond ((let () (declare (not safe)) (##fx= _g112013_ 1))
                 (apply __shadow-class__0 _g112012_))
                ((let () (declare (not safe)) (##fx= _g112013_ 2))
                 (apply __shadow-class__% _g112012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g112012_))))))
    (define __type
      (let* ((_%tb106577%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e106579%_ _%tb106577%_))
        (if (eq? '2 _%$e106579%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e106579%_)
                (let ((_%flonum-self-tagging-tags106582%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits106583%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e106585%_ _%flonum-self-tagging-tags106582%_))
                    (if (eq? '0 _%$e106585%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits106583%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               haflonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               haflonum))
                        (if (eq? '1 _%$e106585%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits106583%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   stflonum
                                   haflonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   stflonum
                                   haflonum))
                            (if (eq? '2 _%$e106585%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e106585%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e106585%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags106582%_))))))))
                (error '"unexpected tag width" _%tb106577%_)))))
    (define __class
      (let* ((_%len106530%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv106532%_
              (let () (declare (not safe)) (##make-vector _%len106530%_ '#f))))
        (let _%loop106535%_ ((_%i106537%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i106537%_ _%len106530%_))
              (let* ((_%t106539%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i106537%_)))
                     (_%f106574%_
                      (if (eq? _%t106539%_ 'undefined)
                          (lambda (_%obj106542%_)
                            (error '"object type is undefined" _%obj106542%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t106539%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj106545%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t106539%_))
                              (if (eq? _%t106539%_ 'subtyped)
                                  (lambda (_%obj106549%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st106552%_
                                           (##subtype _%obj106549%_)))
                                      (if (##fx= _%st106552%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass106555%_
                                                 (##structure-type
                                                  _%obj106549%_)))
                                            (if (##structure-instance-of?
                                                 _%klass106555%_
                                                 'class)
                                                _%klass106555%_
                                                (__shadow-class__0
                                                 _%klass106555%_)))
                                          (if (##fx= _%st106552%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj106549%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e106558%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st106552%_)))
                                                (if _%$e106558%_
                                                    (__system-class
                                                     _%$e106558%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st106552%_
                                                           'object:
                                                           _%obj106549%_)))))))
                                  (if (eq? _%t106539%_ 'special)
                                      (lambda (_%obj106563%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj106563%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj106563%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj106563%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj106563%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj106563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj106563%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t106539%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv106532%_ _%i106537%_ _%f106574%_))
                (_%loop106535%_
                 (let () (declare (not safe)) (##fx+ _%i106537%_ '1))))
              _%cv106532%_))))
    (define type-of
      (lambda (_%obj106526%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj106526%_)))))
    (define class-of
      (lambda (_%obj106517%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t106521%_ (##type _%obj106517%_))
                 (_%f106523%_ (##vector-ref __class _%t106521%_)))
            (_%f106523%_ _%obj106517%_)))))
    (define __subtype-id (let () (declare (not safe)) (##make-vector '32 '#f)))
    (vector-set! __subtype-id (macro-subtype-vector) 'vector)
    (vector-set! __subtype-id (macro-subtype-pair) 'pair)
    (vector-set! __subtype-id (macro-subtype-ratnum) 'ratnum)
    (vector-set! __subtype-id (macro-subtype-cpxnum) 'cpxnum)
    (vector-set! __subtype-id (macro-subtype-symbol) 'symbol)
    (vector-set! __subtype-id (macro-subtype-keyword) 'keyword)
    (vector-set! __subtype-id (macro-subtype-frame) 'frame)
    (vector-set! __subtype-id (macro-subtype-continuation) 'continuation)
    (vector-set! __subtype-id (macro-subtype-promise) 'promise)
    (vector-set! __subtype-id (macro-subtype-weak) 'weak)
    (vector-set! __subtype-id (macro-subtype-procedure) 'procedure)
    (vector-set! __subtype-id (macro-subtype-return) 'return)
    (vector-set! __subtype-id (macro-subtype-foreign) 'foreign)
    (vector-set! __subtype-id (macro-subtype-string) 'string)
    (vector-set! __subtype-id (macro-subtype-s8vector) 's8vector)
    (vector-set! __subtype-id (macro-subtype-u8vector) 'u8vector)
    (vector-set! __subtype-id (macro-subtype-s16vector) 's16vector)
    (vector-set! __subtype-id (macro-subtype-u16vector) 'u16vector)
    (vector-set! __subtype-id (macro-subtype-s32vector) 's32vector)
    (vector-set! __subtype-id (macro-subtype-u32vector) 'u32vector)
    (vector-set! __subtype-id (macro-subtype-f32vector) 'f32vector)
    (vector-set! __subtype-id (macro-subtype-s64vector) 's64vector)
    (vector-set! __subtype-id (macro-subtype-u64vector) 'u64vector)
    (vector-set! __subtype-id (macro-subtype-f64vector) 'f64vector)
    (vector-set! __subtype-id (macro-subtype-flonum) 'haflonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_%id106511%_)
        (let ((_%$e106513%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id106511%_ '#f))))
          (if _%$e106513%_
              _%$e106513%_
              (error '"unknown system class" _%id106511%_)))))
    (define __make-system-class
      (lambda (_%id106505%_ _%super106506%_ _%properties106507%_)
        (let ((_%klass106509%_
               (make-class-type
                _%id106505%_
                _%id106505%_
                _%super106506%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties106507%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id106505%_
             _%klass106509%_))
          _%klass106509%_)))))
