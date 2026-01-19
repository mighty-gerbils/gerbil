(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1768865821)
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
      (let ((_%flags110311%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110312%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110313%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags110311%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table110313%_
           _%properties110312%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots110287%_
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
             (_%slot-vector110289%_ (list->vector (cons '#f _%slots110287%_)))
             (_%slot-table110296%_
              (let ((_%slot-table110291%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp111898
                       (lambda (_%slot110293%_ _%field110294%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110291%_
                            _%slot110293%_
                            _%field110294%_))
                         (let ((__tmp111899
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110293%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110291%_
                            __tmp111899
                            _%field110294%_))))
                      (__tmp111896
                       (let ((__tmp111897
                              (let ()
                                (declare (not safe))
                                (##length _%slots110287%_))))
                         (declare (not safe))
                         (##iota __tmp111897 '1))))
                  (declare (not safe))
                  (##for-each __tmp111898 _%slots110287%_ __tmp111896))
                _%slot-table110291%_))
             (_%flags110298%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110304%_
              (list->vector
               (let ((__tmp111900
                      (map (lambda (_%g110299110301%_)
                             (list _%g110299110301%_ '5 '#f))
                           (drop _%slots110287%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp111900))))
             (_%properties110306%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110287%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t110308%_
              (let ((__tmp111901 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags110298%_
                 ##type-type
                 _%fields110304%_
                 __tmp111901
                 _%slot-vector110289%_
                 _%slot-table110296%_
                 _%properties110306%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t110308%_ _%t110308%_))
        _%t110308%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags110283%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110284%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110285%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp111902 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags110283%_
           '#f
           '#()
           __tmp111902
           '#(#f)
           _%slot-table110285%_
           _%properties110284%_
           '#f
           '#f
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj110281%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj110281%_ 'class))))
    (define class-type=?
      (lambda (_%x110256%_ _%y110257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x110256%_ 'class))
            (let ((_%x110261%_ _%x110256%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y110257%_ 'class))
                  (let ((_%y110271%_ _%y110257%_))
                    (__class-type=? _%x110261%_ _%y110271%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@171.34-171.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y110257%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.22"
               'contract:
               'class-type?
               'value:
               _%x110256%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x110235%_ _%y110236%_)
        (let* ((_%x110239%_ _%x110235%_) (_%y110247%_ _%y110236%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x110239%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y110247%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type110221%_)
        (if (let () (declare (not safe)) (##type? _%type110221%_))
            (let ((_%type110225%_ _%type110221%_))
              (__type-opaque? _%type110225%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@185.21-185.25"
               'contract:
               '##type?
               'value:
               _%type110221%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type110209%_)
        (let* ((_%type110212%_ _%type110209%_)
               (__tmp111903
                (let ((__tmp111904
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110212%_))))
                  (declare (not safe))
                  (##fxand __tmp111904 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp111903 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type110195%_)
        (if (let () (declare (not safe)) (##type? _%type110195%_))
            (let ((_%type110199%_ _%type110195%_))
              (__type-extensible? _%type110199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@187.25-187.29"
               'contract:
               '##type?
               'value:
               _%type110195%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type110183%_)
        (let* ((_%type110186%_ _%type110183%_)
               (__tmp111905
                (let ((__tmp111906
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110186%_))))
                  (declare (not safe))
                  (##fxand __tmp111906 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp111905 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type110169%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type110169%_ 'class))
            (let ((_%type110173%_ _%type110169%_))
              (__class-type-final? _%type110173%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.26-189.30"
               'contract:
               'class-type?
               'value:
               _%type110169%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type110157%_)
        (let* ((_%type110160%_ _%type110157%_)
               (__tmp111907
                (let ((__tmp111908
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110160%_))))
                  (declare (not safe))
                  (##fxand __tmp111908 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp111907 '0))))
    (define class-type-struct?
      (lambda (_%klass110143%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110143%_ 'class))
            (let ((_%klass110147%_ _%klass110143%_))
              (__class-type-struct? _%klass110147%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass110143%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass110131%_)
        (let* ((_%klass110134%_ _%klass110131%_)
               (__tmp111909
                (let ((__tmp111910
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110134%_))))
                  (declare (not safe))
                  (##fxand __tmp111910 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp111909 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass110117%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110117%_ 'class))
            (let ((_%klass110121%_ _%klass110117%_))
              (__class-type-sealed? _%klass110121%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.27-193.32"
               'contract:
               'class-type?
               'value:
               _%klass110117%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass110105%_)
        (let* ((_%klass110108%_ _%klass110105%_)
               (__tmp111911
                (let ((__tmp111912
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110108%_))))
                  (declare (not safe))
                  (##fxand __tmp111912 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp111911 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass110091%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110091%_ 'class))
            (let ((_%klass110095%_ _%klass110091%_))
              (__class-type-metaclass? _%klass110095%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.30-195.35"
               'contract:
               'class-type?
               'value:
               _%klass110091%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass110079%_)
        (let* ((_%klass110082%_ _%klass110079%_)
               (__tmp111913
                (let ((__tmp111914
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110082%_))))
                  (declare (not safe))
                  (##fxand __tmp111914 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp111913 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass110065%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110065%_ 'class))
            (let ((_%klass110069%_ _%klass110065%_))
              (__class-type-system? _%klass110069%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass110065%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass110053%_)
        (let* ((_%klass110056%_ _%klass110053%_)
               (__tmp111915
                (let ((__tmp111916
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110056%_))))
                  (declare (not safe))
                  (##fxand __tmp111916 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp111915 class-type-flag-system))))
    (define class-type-acyclic?
      (lambda (_%klass110039%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110039%_ 'class))
            (let ((_%klass110043%_ _%klass110039%_))
              (__class-type-acyclic? _%klass110043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.28-199.33"
               'contract:
               'class-type?
               'value:
               _%klass110039%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass110027%_)
        (let* ((_%klass110030%_ _%klass110027%_)
               (__tmp111917
                (let ((__tmp111918
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110030%_))))
                  (declare (not safe))
                  (##fxand __tmp111918 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp111917 class-type-flag-acyclic))))
    (define make-class-type-descriptor
      (lambda (_%type-id109907%_
               _%type-name109908%_
               _%type-super109909%_
               _%precedence-list109910%_
               _%slot-vector109911%_
               _%properties109912%_
               _%constructor109913%_
               _%slot-table109914%_
               _%methods109915%_)
        (letrec ((_%make-props!109918%_
                  (lambda (_%key109996%_)
                    (letrec* ((_%ht109998%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!109999%_
                               (lambda (_%ht110020%_ _%slots110021%_)
                                 (for-each
                                  (lambda (_%g110022110024%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht110020%_
                                       _%g110022110024%_
                                       '#t)))
                                  _%slots110021%_)))
                              (_%put-alist!110000%_
                               (lambda (_%ht110009%_
                                        _%key110010%_
                                        _%alist110011%_)
                                 (let ((_%$e110013%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key110010%_
                                           _%alist110011%_))))
                                   (if _%$e110013%_
                                       ((lambda (_%g110015110017%_)
                                          (_%put-slots!109999%_
                                           _%ht110009%_
                                           _%g110015110017%_))
                                        _%$e110013%_)
                                       '#!void)))))
                      (_%put-alist!110000%_
                       _%ht109998%_
                       _%key109996%_
                       _%properties109912%_)
                      (for-each
                       (lambda (_%mixin110002%_)
                         (let ((_%alist110004%_
                                (##structure-ref
                                 _%mixin110002%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist110004%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key109996%_
                                           _%alist110004%_))))
                               (_%put-slots!109999%_
                                _%ht109998%_
                                (class-type-slot-list _%mixin110002%_))
                               (_%put-alist!110000%_
                                _%ht109998%_
                                _%key109996%_
                                _%alist110004%_))))
                       _%precedence-list109910%_)
                      _%ht109998%_))))
          (let* ((_%transparent?109920%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties109912%_)))
                 (_%all-slots-printable?109925%_
                  (let ((_%$e109922%_ _%transparent?109920%_))
                    (if _%$e109922%_
                        _%$e109922%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties109912%_))))))
                 (_%printable109927%_
                  (if (not _%all-slots-printable?109925%_)
                      (_%make-props!109918%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?109932%_
                  (let ((_%$e109929%_ _%transparent?109920%_))
                    (if _%$e109929%_
                        _%$e109929%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties109912%_))))))
                 (_%equalable109934%_
                  (if (not _%all-slots-equalable?109932%_)
                      (_%make-props!109918%_ 'equal:)
                      '#f))
                 (_%first-new-field109936%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super109909%_ 'class))
                      (let ((__tmp111919
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super109909%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp111919))
                      '1))
                 (_%field-info-length109938%_
                  (let ((__tmp111920
                         (let ((__tmp111921
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector109911%_))))
                           (declare (not safe))
                           (##fx- __tmp111921 _%first-new-field109936%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp111920)))
                 (_%field-info109940%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length109938%_ '#f)))
                 (_%struct?109942%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties109912%_)))
                 (_%final?109944%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties109912%_)))
                 (_%metaclass109952%_
                  (let ((_%metaclass109945109947%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties109912%_))))
                    (if _%metaclass109945109947%_
                        (let ((_%metaclass109950%_ _%metaclass109945109947%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass109950%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id109907%_
                                     'metaclass:
                                     _%metaclass109950%_))
                          _%metaclass109950%_)
                        '#f)))
                 (_%system?109954%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties109912%_)))
                 (_%opaque?109962%_
                  (if (or _%transparent?109920%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties109912%_)))
                      '#f
                      (let ((_%$e109959%_ (not _%type-super109909%_)))
                        (if _%$e109959%_
                            _%$e109959%_
                            (__type-opaque? _%type-super109909%_)))))
                 (_%acyclic?109964%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties109912%_)))
                 (_%type-flags109966%_
                  (let ((__tmp111927
                         (if _%final?109944%_ '0 type-flag-extensible))
                        (__tmp111926
                         (if _%opaque?109962%_ type-flag-opaque '0))
                        (__tmp111925
                         (if _%struct?109942%_ class-type-flag-struct '0))
                        (__tmp111924
                         (if _%metaclass109952%_ class-type-flag-metaclass '0))
                        (__tmp111923
                         (if _%system?109954%_ class-type-flag-system '0))
                        (__tmp111922
                         (if _%acyclic?109964%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp111927
                             __tmp111926
                             __tmp111925
                             __tmp111924
                             __tmp111923
                             __tmp111922)))
                 (_%precedence-list109974%_
                  (let ((_%$e109968%_ (memq t::t _%precedence-list109910%_)))
                    (if _%$e109968%_
                        ((lambda (_%tail109971%_)
                           (if (null? (cdr _%tail109971%_))
                               _%precedence-list109910%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list109910%_)))
                         _%$e109968%_)
                        (let ((__tmp111928 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list109910%_ __tmp111928))))))
            (let _%loop109977%_ ((_%i109979%_ _%first-new-field109936%_)
                                 (_%j109980%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j109980%_ _%field-info-length109938%_))
                  (let* ((_%slot109982%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector109911%_ _%i109979%_)))
                         (_%flags109990%_
                          (if _%transparent?109920%_
                              '0
                              (let ((__tmp111930
                                     (if (or _%all-slots-printable?109925%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable109927%_
                                                _%slot109982%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp111929
                                     (if (or _%all-slots-equalable?109932%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable109934%_
                                                _%slot109982%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp111930 __tmp111929)))))
                    (vector-set!
                     _%field-info109940%_
                     _%j109980%_
                     _%slot109982%_)
                    (vector-set!
                     _%field-info109940%_
                     (let () (declare (not safe)) (##fx+ _%j109980%_ '1))
                     _%flags109990%_)
                    (_%loop109977%_
                     (let () (declare (not safe)) (##fx+ _%i109979%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j109980%_ '3))))
                  '#!void))
            (if _%metaclass109952%_
                (let ((_%val109993%_
                       (make-instance
                        _%metaclass109952%_
                        _%type-id109907%_
                        _%type-name109908%_
                        _%type-flags109966%_
                        _%type-super109909%_
                        _%field-info109940%_
                        _%precedence-list109974%_
                        _%slot-vector109911%_
                        _%slot-table109914%_
                        _%properties109912%_
                        _%constructor109913%_
                        _%methods109915%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val109993%_ 'class))
                      _%val109993%_
                      (error '"bad cast" class::t _%val109993%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id109907%_
                   _%type-name109908%_
                   _%type-flags109966%_
                   _%type-super109909%_
                   _%field-info109940%_
                   _%precedence-list109974%_
                   _%slot-vector109911%_
                   _%slot-table109914%_
                   _%properties109912%_
                   _%constructor109913%_
                   _%methods109915%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass109905%_)
        (##structure-ref _%klass109905%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass109903%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109903%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass109900%_ _%val109901%_)
        (##structure-set! _%klass109900%_ _%val109901%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass109895%_ _%val109897%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109895%_
           _%val109897%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass109893%_)
        (##structure-ref _%klass109893%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass109891%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109891%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass109888%_ _%val109889%_)
        (##structure-set! _%klass109888%_ _%val109889%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass109883%_ _%val109885%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109883%_
           _%val109885%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass109881%_)
        (##structure-ref _%klass109881%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass109879%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109879%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass109876%_ _%val109877%_)
        (##structure-set! _%klass109876%_ _%val109877%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass109871%_ _%val109873%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109871%_
           _%val109873%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass109869%_)
        (##structure-ref _%klass109869%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass109867%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109867%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass109864%_ _%val109865%_)
        (##structure-set! _%klass109864%_ _%val109865%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass109859%_ _%val109861%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109859%_
           _%val109861%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass109857%_)
        (##structure-ref _%klass109857%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass109855%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109855%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass109852%_ _%val109853%_)
        (##structure-set! _%klass109852%_ _%val109853%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass109847%_ _%val109849%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109847%_
           _%val109849%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass109845%_)
        (##structure-ref _%klass109845%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass109843%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109843%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass109840%_ _%val109841%_)
        (##structure-set!
         _%klass109840%_
         _%val109841%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass109835%_ _%val109837%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109835%_
           _%val109837%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass109833%_)
        (##structure-ref _%klass109833%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass109831%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109831%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass109828%_ _%val109829%_)
        (##structure-set!
         _%klass109828%_
         _%val109829%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass109823%_ _%val109825%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109823%_
           _%val109825%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass109821%_)
        (##structure-ref _%klass109821%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass109819%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109819%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass109816%_ _%val109817%_)
        (##structure-set!
         _%klass109816%_
         _%val109817%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass109811%_ _%val109813%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109811%_
           _%val109813%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass109809%_)
        (##structure-ref _%klass109809%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass109807%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109807%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass109804%_ _%val109805%_)
        (##structure-set!
         _%klass109804%_
         _%val109805%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass109799%_ _%val109801%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109799%_
           _%val109801%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass109797%_)
        (##structure-ref _%klass109797%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass109795%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109795%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass109792%_ _%val109793%_)
        (##structure-set!
         _%klass109792%_
         _%val109793%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass109787%_ _%val109789%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109787%_
           _%val109789%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass109785%_)
        (##structure-ref _%klass109785%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass109783%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass109783%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass109780%_ _%val109781%_)
        (##structure-set!
         _%klass109780%_
         _%val109781%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass109775%_ _%val109777%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109775%_
           _%val109777%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass109773%_)
        (##structure-ref _%klass109773%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass109771%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109771%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass109768%_ _%val109769%_)
        (##structure-set!
         _%klass109768%_
         _%val109769%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass109763%_ _%val109765%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109763%_
           _%val109765%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass109761%_)
        (##structure-ref _%klass109761%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass109759%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass109759%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass109756%_ _%val109757%_)
        (##structure-set!
         _%klass109756%_
         _%val109757%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass109751%_ _%val109753%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass109751%_
           _%val109753%_
           '13
           class::t
           'interface))))
    (define class-type-slot-list
      (lambda (_%klass109737%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109737%_ 'class))
            (let ((_%klass109741%_ _%klass109737%_))
              (__class-type-slot-list _%klass109741%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@339.29-339.34"
               'contract:
               'class-type?
               'value:
               _%klass109737%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass109725%_)
        (let ((_%klass109728%_ _%klass109725%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109728%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass109711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109711%_ 'class))
            (let ((_%klass109715%_ _%klass109711%_))
              (__class-type-field-count _%klass109715%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@342.31-342.36"
               'contract:
               'class-type?
               'value:
               _%klass109711%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass109699%_)
        (let* ((_%klass109702%_ _%klass109699%_)
               (__tmp111931
                (let ((__tmp111932
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109702%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp111932))))
          (declare (not safe))
          (##fx- __tmp111931 '1))))
    (define class-type-seal!
      (lambda (_%klass109685%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109685%_ 'class))
            (let ((_%klass109689%_ _%klass109685%_))
              (__class-type-seal! _%klass109689%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.25-345.30"
               'contract:
               'class-type?
               'value:
               _%klass109685%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass109673%_)
        (let ((_%klass109676%_ _%klass109673%_))
          (let ((__tmp111933
                 (let ((__tmp111934
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass109676%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp111934))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass109676%_
             __tmp111933
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct109648%_ _%maybe-super-struct109649%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct109648%_ 'class))
            (let ((_%maybe-sub-struct109653%_ _%maybe-sub-struct109648%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct109649%_
                     'class))
                  (let ((_%maybe-super-struct109663%_
                         _%maybe-super-struct109649%_))
                    (__substruct?
                     _%maybe-sub-struct109653%_
                     _%maybe-super-struct109663%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@352.47-352.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct109649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@352.19-352.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct109648%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct109617%_ _%maybe-super-struct109618%_)
        (let* ((_%maybe-sub-struct109621%_ _%maybe-sub-struct109617%_)
               (_%maybe-super-struct109629%_ _%maybe-super-struct109618%_)
               (_%maybe-super-struct-id109638%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct109629%_))))
          (let _%lp109640%_ ((_%super-struct109642%_
                              _%maybe-sub-struct109621%_))
            (if (not _%super-struct109642%_)
                '#f
                (if (eq? _%maybe-super-struct-id109638%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct109642%_)))
                    '#t
                    (_%lp109640%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct109642%_)))))))))
    (define base-struct/1
      (lambda (_%klass109612%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109612%_ 'class))
            (if (__class-type-struct? _%klass109612%_)
                _%klass109612%_
                (let () (declare (not safe)) (##type-super _%klass109612%_)))
            (if (not _%klass109612%_)
                '#f
                (error '"not a class or false" _%klass109612%_)))))
    (define base-struct/2
      (lambda (_%klass1109597%_ _%klass2109598%_)
        (let ((_%s1109600%_ (base-struct/1 _%klass1109597%_))
              (_%s2109601%_ (base-struct/1 _%klass2109598%_)))
          (if (or (not _%s1109600%_)
                  (and _%s2109601%_ (substruct? _%s1109600%_ _%s2109601%_)))
              _%s2109601%_
              (if (or (not _%s2109601%_)
                      (and _%s1109600%_
                           (substruct? _%s2109601%_ _%s1109600%_)))
                  _%s1109600%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1109597%_
                         _%klass2109598%_
                         _%s1109600%_
                         _%s2109601%_))))))
    (define base-struct/list
      (lambda (_%all-supers109481%_)
        (let* ((_%all-supers109482109507%_ _%all-supers109481%_)
               (_%E109487109511%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers109482109507%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K109505109594%_ (lambda () '#f))
                (_%K109502109580%_
                 (lambda (_%x109578%_) (base-struct/1 _%x109578%_)))
                (_%K109497109557%_
                 (lambda (_%y109554%_ _%x109555%_)
                   (base-struct/2 _%x109555%_ _%y109554%_)))
                (_%K109488109518%_
                 (lambda (_%y109515%_ _%x109516%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x109516%_ _%y109515%_)))))
            (let* ((_%__match111746111747%_
                    (lambda (_%hd109489109521%_ _%tl109490109523%_)
                      (let ((_%x109526%_ _%hd109489109521%_))
                        (letrec ((_%splice-rest109492109528%_
                                  (lambda (_%rest109496109535%_ _%y109537%_)
                                    (if (null? _%rest109496109535%_)
                                        (_%K109488109518%_
                                         _%y109537%_
                                         _%x109526%_)
                                        (_%E109487109511%_))))
                                 (_%splice-try109494109530%_
                                  (lambda (_%hd109495109539%_
                                           _%rest109496109541%_
                                           _%y109491109542%_)
                                    (let ((_%y109545%_ _%hd109495109539%_))
                                      (_%splice-loop109493109532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest109496109541%_))
                                       (cons _%y109545%_ _%y109491109542%_)))))
                                 (_%splice-loop109493109532%_
                                  (lambda (_%rest109496109547%_
                                           _%y109491109548%_)
                                    (if (pair? _%rest109496109547%_)
                                        (_%splice-try109494109530%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest109496109547%_))
                                         _%rest109496109547%_
                                         _%y109491109548%_)
                                        (_%splice-rest109492109528%_
                                         _%rest109496109547%_
                                         (reverse _%y109491109548%_))))))
                          (_%splice-loop109493109532%_
                           _%tl109490109523%_
                           '())))))
                   (_%try-match109484109590%_
                    (lambda ()
                      (if (pair? _%all-supers109482109507%_)
                          (let ((_%tl109504109585%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers109482109507%_)))
                                (_%hd109503109583%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers109482109507%_))))
                            (if (null? _%tl109504109585%_)
                                (let ((_%x109588%_ _%hd109503109583%_))
                                  (base-struct/1 _%x109588%_))
                                (if (pair? _%tl109504109585%_)
                                    (let ((_%tl109501109569%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl109504109585%_)))
                                          (_%hd109500109567%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl109504109585%_))))
                                      (if (null? _%tl109501109569%_)
                                          (let ((_%x109565%_
                                                 _%hd109503109583%_)
                                                (_%y109572%_
                                                 _%hd109500109567%_))
                                            (_%K109497109557%_
                                             _%y109572%_
                                             _%x109565%_))
                                          (_%__match111746111747%_
                                           _%hd109503109583%_
                                           _%tl109504109585%_)))
                                    (_%__match111746111747%_
                                     _%hd109503109583%_
                                     _%tl109504109585%_))))
                          (_%E109487109511%_)))))
              (if (null? _%all-supers109482109507%_)
                  (_%K109505109594%_)
                  (_%try-match109484109590%_)))))))
    (define base-struct
      (lambda _%all-supers109479%_ (base-struct/list _%all-supers109479%_)))
    (define find-super-constructor
      (lambda (_%super109430%_)
        (let _%lp109432%_ ((_%rest109434%_ _%super109430%_)
                           (_%constructor109435%_ '#f))
          (let* ((_%rest109436109444%_ _%rest109434%_)
                 (_%else109438109452%_ (lambda () _%constructor109435%_))
                 (_%K109440109467%_
                  (lambda (_%rest109455%_ _%hd109456%_)
                    (let ((_%$e109458%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd109456%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e109458%_
                          ((lambda (_%xconstructor109461%_)
                             (if (or (not _%constructor109435%_)
                                     (eq? _%constructor109435%_
                                          _%xconstructor109461%_))
                                 (_%lp109432%_
                                  _%rest109455%_
                                  _%xconstructor109461%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor109435%_
                                        _%xconstructor109461%_)))
                           _%$e109458%_)
                          (_%lp109432%_
                           _%rest109455%_
                           _%constructor109435%_))))))
            (if (pair? _%rest109436109444%_)
                (let ((_%hd109441109470%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109436109444%_)))
                      (_%tl109442109472%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109436109444%_))))
                  (let* ((_%hd109475%_ _%hd109441109470%_)
                         (_%rest109477%_ _%tl109442109472%_))
                    (_%K109440109467%_ _%rest109477%_ _%hd109475%_)))
                (_%else109438109452%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list109406%_ _%direct-slots109407%_)
        (let* ((_%next-slot109409%_ '1)
               (_%slot-table109411%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots109413%_ '(__class))
               (_%process-slot109417%_
                (lambda (_%slot109415%_)
                  (if (symbol? _%slot109415%_)
                      '#!void
                      (error '"invalid slot name" _%slot109415%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table109411%_
                              _%slot109415%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109411%_
                           _%slot109415%_
                           _%next-slot109409%_))
                        (let ((__tmp111935
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot109415%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109411%_
                           __tmp111935
                           _%next-slot109409%_))
                        (set! _%r-slots109413%_
                              (cons _%slot109415%_ _%r-slots109413%_))
                        (set! _%next-slot109409%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot109409%_ '1))))
                      '#!void)))
               (_%process-slots109423%_
                (lambda (_%g109418109420%_)
                  (for-each _%process-slot109417%_ _%g109418109420%_))))
          (let ((__tmp111937
                 (lambda (_%mixin109426%_)
                   (_%process-slots109423%_
                    (let ((__tmp111938
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin109426%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp111938 '())))))
                (__tmp111936 (reverse _%class-precedence-list109406%_)))
            (declare (not safe))
            (##for-each __tmp111937 __tmp111936))
          (_%process-slots109423%_ _%direct-slots109407%_)
          (let ((_%slot-vector109428%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots109413%_)))))
            (values _%slot-vector109428%_ _%slot-table109411%_)))))
    (define make-class-type
      (lambda (_%id109331%_
               _%name109332%_
               _%direct-supers109333%_
               _%direct-slots109334%_
               _%properties109335%_
               _%constructor109336%_)
        (if (symbol? _%id109331%_)
            (let ((_%id109340%_ _%id109331%_))
              (if (symbol? _%name109332%_)
                  (let ((_%name109350%_ _%name109332%_))
                    (if (list? _%direct-supers109333%_)
                        (let ((_%direct-supers109360%_
                               _%direct-supers109333%_))
                          (if (list? _%direct-slots109334%_)
                              (let ((_%direct-slots109370%_
                                     _%direct-slots109334%_))
                                (if (list? _%properties109335%_)
                                    (let ((_%properties109380%_
                                           _%properties109335%_))
                                      (if ((lambda (_%$obj109389%_)
                                             (or (not _%$obj109389%_)
                                                 (symbol? _%$obj109389%_)))
                                           _%constructor109336%_)
                                          (let ((_%constructor109396%_
                                                 _%constructor109336%_))
                                            (__make-class-type
                                             _%id109340%_
                                             _%name109350%_
                                             _%direct-supers109360%_
                                             _%direct-slots109370%_
                                             _%properties109380%_
                                             _%constructor109396%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@449.24-449.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor109336%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@448.24-448.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties109335%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@447.24-447.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots109334%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@446.24-446.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers109333%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@445.24-445.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name109332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@444.24-444.26"
               'contract:
               'symbol?
               'value:
               _%id109331%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id109200%_
               _%name109201%_
               _%direct-supers109202%_
               _%direct-slots109203%_
               _%properties109204%_
               _%constructor109205%_)
        (let* ((_%id109208%_ _%id109200%_)
               (_%name109216%_ _%name109201%_)
               (_%direct-supers109224%_ _%direct-supers109202%_)
               (_%direct-slots109232%_ _%direct-slots109203%_)
               (_%properties109240%_ _%properties109204%_)
               (_%constructor109248%_ _%constructor109205%_))
          (let ((_%$e109260%_
                 (let ((__tmp111939
                        (lambda (_%$obj109257%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj109257%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp111939 _%direct-supers109224%_))))
            (if _%$e109260%_
                ((lambda (_%g109262109264%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g109262109264%_))
                 _%$e109260%_)
                (let ((_%$e109267%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers109224%_))))
                  (if _%$e109267%_
                      ((lambda (_%g109269109271%_)
                         (error '"Cannot extend final class"
                                _%g109269109271%_))
                       _%$e109267%_)
                      '#!void))))
          (let ((_g111940_ (compute-precedence-list _%direct-supers109224%_)))
            (begin
              (let ((_g111941_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g111940_)
                           (##values-length _g111940_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g111941_ 2)))
                    (error "Context expects 2 values" _g111941_)))
              (let ((_%precedence-list109274%_
                     (let () (declare (not safe)) (##values-ref _g111940_ 0)))
                    (_%struct-super109275%_
                     (let () (declare (not safe)) (##values-ref _g111940_ 1))))
                (let ((_g111942_
                       (compute-class-slots
                        _%precedence-list109274%_
                        _%direct-slots109232%_)))
                  (begin
                    (let ((_g111943_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g111942_)
                                 (##values-length _g111942_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g111943_ 2)))
                          (error "Context expects 2 values" _g111943_)))
                    (let ((_%slot-vector109277%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g111942_ 0)))
                          (_%slot-table109278%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g111942_ 1))))
                      (let* ((_%properties109280%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots109232%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers109224%_)
                                          _%properties109240%_)))
                             (_%constructor*109285%_
                              (let ((_%$e109282%_ _%constructor109248%_))
                                (if _%$e109282%_
                                    _%$e109282%_
                                    (find-super-constructor
                                     _%direct-supers109224%_))))
                             (_%precedence-list109328%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties109280%_))
                                      (memq object::t
                                            _%precedence-list109274%_))
                                  _%precedence-list109274%_
                                  (let _%loop109290%_ ((_%tail109292%_
                                                        _%precedence-list109274%_)
                                                       (_%head109293%_ '()))
                                    (let* ((_%tail109294109302%_
                                            _%tail109292%_)
                                           (_%else109296109310%_
                                            (lambda ()
                                              (let ((__tmp111944
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp111944
                                                 _%head109293%_))))
                                           (_%K109298109316%_
                                            (lambda (_%rest109313%_
                                                     _%hd109314%_)
                                              (if (eq? _%hd109314%_ t::t)
                                                  (let ((__tmp111945
                                                         (cons object::t
                                                               _%tail109292%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp111945
                                                     _%head109293%_))
                                                  (_%loop109290%_
                                                   _%rest109313%_
                                                   (cons _%hd109314%_
                                                         _%head109293%_))))))
                                      (if (pair? _%tail109294109302%_)
                                          (let ((_%hd109299109319%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail109294109302%_)))
                                                (_%tl109300109321%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail109294109302%_))))
                                            (let* ((_%hd109324%_
                                                    _%hd109299109319%_)
                                                   (_%rest109326%_
                                                    _%tl109300109321%_))
                                              (_%K109298109316%_
                                               _%rest109326%_
                                               _%hd109324%_)))
                                          (_%else109296109310%_)))))))
                        (make-class-type-descriptor
                         _%id109208%_
                         _%name109216%_
                         _%struct-super109275%_
                         _%precedence-list109328%_
                         _%slot-vector109277%_
                         _%properties109280%_
                         _%constructor*109285%_
                         _%slot-table109278%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass109186%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109186%_ 'class))
            (let ((_%klass109190%_ _%klass109186%_))
              (__class-precedence-list _%klass109190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@482.30-482.35"
               'contract:
               'class-type?
               'value:
               _%klass109186%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass109174%_)
        (let ((_%klass109177%_ _%klass109174%_))
          (cons _%klass109177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109177%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers109171%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers109171%_))))
    (define make-class-predicate
      (lambda (_%klass109157%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109157%_ 'class))
            (let ((_%klass109161%_ _%klass109157%_))
              (__make-class-predicate _%klass109161%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@494.29-494.34"
               'contract:
               'class-type?
               'value:
               _%klass109157%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass109128%_)
        (let* ((_%klass109131%_ _%klass109128%_)
               (_%tid109140%_
                (let () (declare (not safe)) (##type-id _%klass109131%_))))
          (if (__class-type-final? _%klass109131%_)
              (lambda (_%g109142109144%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g109142109144%_
                   _%tid109140%_)))
              (if (__class-type-struct? _%klass109131%_)
                  (lambda (_%g109147109149%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g109147109149%_
                       _%tid109140%_)))
                  (lambda (_%g109152109154%_)
                    (__class-instance? _%klass109131%_ _%g109152109154%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass109103%_ _%slot109104%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109103%_ 'class))
            (let ((_%klass109108%_ _%klass109103%_))
              (if (symbol? _%slot109104%_)
                  (let ((_%slot109118%_ _%slot109104%_))
                    (__make-class-slot-accessor
                     _%klass109108%_
                     _%slot109118%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@525.50-525.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109104%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@525.33-525.38"
               'contract:
               'class-type?
               'value:
               _%klass109103%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass109071%_ _%slot109072%_)
        (let* ((_%klass109075%_ _%klass109071%_)
               (_%slot109083%_ _%slot109072%_)
               (_%field109092%_
                (let ((__tmp111946
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109075%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111946 _%slot109083%_ '#f))))
          (if (not _%field109092%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109075%_
                       'slot:
                       _%slot109083%_)
                '#!void)
              (if (__class-type-final? _%klass109075%_)
                  (make-final-slot-accessor
                   _%klass109075%_
                   _%slot109083%_
                   _%field109092%_)
                  (if (__class-type-struct? _%klass109075%_)
                      (make-struct-slot-accessor
                       _%klass109075%_
                       _%slot109083%_
                       _%field109092%_)
                      (if (let ((_%strukt109098%_
                                 (base-struct/1 _%klass109075%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109098%_
                                    'class))
                                 (let ((__tmp111947
                                        (let ((__tmp111948
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109098%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111948))))
                                   (declare (not safe))
                                   (##fx< _%field109092%_ __tmp111947))))
                          (make-struct-subclass-slot-accessor
                           _%klass109075%_
                           _%slot109083%_
                           _%field109092%_)
                          (make-class-cached-slot-accessor
                           _%klass109075%_
                           _%slot109083%_
                           _%field109092%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass109046%_ _%slot109047%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109046%_ 'class))
            (let ((_%klass109051%_ _%klass109046%_))
              (if (symbol? _%slot109047%_)
                  (let ((_%slot109061%_ _%slot109047%_))
                    (__make-class-slot-mutator _%klass109051%_ _%slot109061%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@533.49-533.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109047%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.32-533.37"
               'contract:
               'class-type?
               'value:
               _%klass109046%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass109014%_ _%slot109015%_)
        (let* ((_%klass109018%_ _%klass109014%_)
               (_%slot109026%_ _%slot109015%_)
               (_%field109035%_
                (let ((__tmp111949
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109018%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111949 _%slot109026%_ '#f))))
          (if (not _%field109035%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109018%_
                       'slot:
                       _%slot109026%_)
                '#!void)
              (if (__class-type-final? _%klass109018%_)
                  (make-final-slot-mutator
                   _%klass109018%_
                   _%slot109026%_
                   _%field109035%_)
                  (if (__class-type-struct? _%klass109018%_)
                      (make-struct-slot-mutator
                       _%klass109018%_
                       _%slot109026%_
                       _%field109035%_)
                      (if (let ((_%strukt109041%_
                                 (base-struct/1 _%klass109018%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109041%_
                                    'class))
                                 (let ((__tmp111950
                                        (let ((__tmp111951
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109041%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111951))))
                                   (declare (not safe))
                                   (##fx< _%field109035%_ __tmp111950))))
                          (make-struct-subclass-slot-mutator
                           _%klass109018%_
                           _%slot109026%_
                           _%field109035%_)
                          (make-class-cached-slot-mutator
                           _%klass109018%_
                           _%slot109026%_
                           _%field109035%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass108989%_ _%slot108990%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108989%_ 'class))
            (let ((_%klass108994%_ _%klass108989%_))
              (if (symbol? _%slot108990%_)
                  (let ((_%slot109004%_ _%slot108990%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass108994%_
                     _%slot109004%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@541.60-541.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot108990%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@541.43-541.48"
               'contract:
               'class-type?
               'value:
               _%klass108989%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass108957%_ _%slot108958%_)
        (let* ((_%klass108961%_ _%klass108957%_)
               (_%slot108969%_ _%slot108958%_)
               (_%field108978%_
                (let ((__tmp111952
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass108961%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111952 _%slot108969%_ '#f))))
          (if (not _%field108978%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass108961%_
                       'slot:
                       _%slot108969%_)
                '#!void)
              (if (__class-type-final? _%klass108961%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass108961%_
                   _%slot108969%_
                   _%field108978%_)
                  (if (__class-type-struct? _%klass108961%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass108961%_
                       _%slot108969%_
                       _%field108978%_)
                      (if (let ((_%strukt108984%_
                                 (base-struct/1 _%klass108961%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt108984%_
                                    'class))
                                 (let ((__tmp111953
                                        (let ((__tmp111954
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt108984%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111954))))
                                   (declare (not safe))
                                   (##fx< _%field108978%_ __tmp111953))))
                          (make-struct-slot-unchecked-accessor
                           _%klass108961%_
                           _%slot108969%_
                           _%field108978%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass108961%_
                           _%slot108969%_
                           _%field108978%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass108932%_ _%slot108933%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108932%_ 'class))
            (let ((_%klass108937%_ _%klass108932%_))
              (if (symbol? _%slot108933%_)
                  (let ((_%slot108947%_ _%slot108933%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass108937%_
                     _%slot108947%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@549.59-549.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot108933%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@549.42-549.47"
               'contract:
               'class-type?
               'value:
               _%klass108932%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass108900%_ _%slot108901%_)
        (let* ((_%klass108904%_ _%klass108900%_)
               (_%slot108912%_ _%slot108901%_)
               (_%field108921%_
                (let ((__tmp111955
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass108904%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp111955 _%slot108912%_ '#f))))
          (if (not _%field108921%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass108904%_
                       'slot:
                       _%slot108912%_)
                '#!void)
              (if (__class-type-final? _%klass108904%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass108904%_
                   _%slot108912%_
                   _%field108921%_)
                  (if (__class-type-struct? _%klass108904%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass108904%_
                       _%slot108912%_
                       _%field108921%_)
                      (if (let ((_%strukt108927%_
                                 (base-struct/1 _%klass108904%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt108927%_
                                    'class))
                                 (let ((__tmp111956
                                        (let ((__tmp111957
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt108927%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp111957))))
                                   (declare (not safe))
                                   (##fx< _%field108921%_ __tmp111956))))
                          (make-struct-slot-unchecked-mutator
                           _%klass108904%_
                           _%slot108912%_
                           _%field108921%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass108904%_
                           _%slot108912%_
                           _%field108921%_))))))))
    (define not-an-instance__%
      (lambda (_%object108884%_ _%class108885%_ _%slot108886%_)
        (apply error
               '"not an instance"
               'object:
               _%object108884%_
               'class:
               _%class108885%_
               (if _%slot108886%_
                   (cons 'slot: (cons _%slot108886%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object108891%_ _%class108892%_)
        (let ((_%slot108894%_ '#f))
          (not-an-instance__%
           _%object108891%_
           _%class108892%_
           _%slot108894%_))))
    (define not-an-instance
      (lambda _g111958_
        (let ((_g111959_ (let () (declare (not safe)) (##length _g111958_))))
          (cond ((let () (declare (not safe)) (##fx= _g111959_ 2))
                 (apply not-an-instance__0 _g111958_))
                ((let () (declare (not safe)) (##fx= _g111959_ 3))
                 (apply not-an-instance__% _g111958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g111958_))))))
    (define make-final-slot-accessor
      (lambda (_%klass108877%_ _%slot108878%_ _%field108879%_)
        (lambda (_%obj108881%_)
          (##direct-structure-ref
           _%obj108881%_
           _%field108879%_
           _%klass108877%_
           _%slot108878%_))))
    (define make-final-slot-mutator
      (lambda (_%klass108870%_ _%slot108871%_ _%field108872%_)
        (lambda (_%obj108874%_ _%val108875%_)
          (##direct-structure-set!
           _%obj108874%_
           _%val108875%_
           _%field108872%_
           _%klass108870%_
           _%slot108871%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass108864%_ _%slot108865%_ _%field108866%_)
        (lambda (_%obj108868%_)
          (##structure-ref
           _%obj108868%_
           _%field108866%_
           _%klass108864%_
           _%slot108865%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass108857%_ _%slot108858%_ _%field108859%_)
        (lambda (_%obj108861%_ _%val108862%_)
          (##structure-set!
           _%obj108861%_
           _%val108862%_
           _%field108859%_
           _%klass108857%_
           _%slot108858%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass108851%_ _%slot108852%_ _%field108853%_)
        (lambda (_%obj108855%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj108855%_
             _%field108853%_
             _%klass108851%_
             _%slot108852%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass108844%_ _%slot108845%_ _%field108846%_)
        (lambda (_%obj108848%_ _%val108849%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj108848%_
             _%val108849%_
             _%field108846%_
             _%klass108844%_
             _%slot108845%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass108838%_ _%slot108839%_ _%field108840%_)
        (lambda (_%obj108842%_)
          (if (class-instance? _%klass108838%_ _%obj108842%_)
              (unchecked-slot-ref _%obj108842%_ _%field108840%_)
              (not-an-instance__%
               _%obj108842%_
               _%klass108838%_
               _%slot108839%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass108831%_ _%slot108832%_ _%field108833%_)
        (lambda (_%obj108835%_ _%val108836%_)
          (if (class-instance? _%klass108831%_ _%obj108835%_)
              (unchecked-field-set!
               _%obj108835%_
               _%field108833%_
               _%val108836%_)
              (not-an-instance__%
               _%obj108835%_
               _%klass108831%_
               _%slot108832%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass108822%_ _%slot108823%_ _%field108824%_)
        (lambda (_%obj108826%_)
          (if (let ((__tmp111960
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108822%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108826%_ __tmp111960))
              (unchecked-field-ref _%obj108826%_ _%field108824%_)
              (if (class-instance? _%klass108822%_ _%obj108826%_)
                  (unchecked-slot-ref _%obj108826%_ _%slot108823%_)
                  (not-an-instance__%
                   _%obj108826%_
                   _%klass108822%_
                   _%slot108823%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass108812%_ _%slot108813%_ _%field108814%_)
        (lambda (_%obj108816%_ _%val108817%_)
          (if (let ((__tmp111961
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108812%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108816%_ __tmp111961))
              (unchecked-field-set!
               _%obj108816%_
               _%field108814%_
               _%val108817%_)
              (if (class-instance? _%klass108812%_ _%obj108816%_)
                  (unchecked-slot-set!
                   _%obj108816%_
                   _%slot108813%_
                   _%val108817%_)
                  (not-an-instance__%
                   _%obj108816%_
                   _%klass108812%_
                   _%slot108813%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass108806%_ _%slot108807%_ _%field108808%_)
        (lambda (_%obj108810%_)
          (if (let ((__tmp111962
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108806%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108810%_ __tmp111962))
              (unchecked-field-ref _%obj108810%_ _%field108808%_)
              (unchecked-slot-ref _%obj108810%_ _%slot108807%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass108799%_ _%slot108800%_ _%field108801%_)
        (lambda (_%obj108803%_ _%val108804%_)
          (if (let ((__tmp111963
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass108799%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj108803%_ __tmp111963))
              (unchecked-field-set!
               _%obj108803%_
               _%field108801%_
               _%val108804%_)
              (unchecked-slot-set!
               _%obj108803%_
               _%slot108800%_
               _%val108804%_)))))
    (define class-slot-offset
      (lambda (_%klass108774%_ _%slot108775%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108774%_ 'class))
            (let ((_%klass108779%_ _%klass108774%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108775%_))
                  (let ((_%slot108789%_ _%slot108775%_))
                    (__class-slot-offset _%klass108779%_ _%slot108789%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@611.43-611.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108775%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@611.26-611.31"
               'contract:
               'class-type?
               'value:
               _%klass108774%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass108753%_ _%slot108754%_)
        (let* ((_%klass108757%_ _%klass108753%_)
               (_%slot108765%_ _%slot108754%_)
               (__tmp111964
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108757%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp111964 _%slot108765%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass108727%_ _%obj108728%_ _%slot108729%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108727%_ 'class))
            (let ((_%klass108733%_ _%klass108727%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108729%_))
                  (let ((_%slot108743%_ _%slot108729%_))
                    (__class-slot-ref
                     _%klass108733%_
                     _%obj108728%_
                     _%slot108743%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@614.44-614.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@614.23-614.28"
               'contract:
               'class-type?
               'value:
               _%klass108727%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass108703%_ _%obj108704%_ _%slot108705%_)
        (let* ((_%klass108708%_ _%klass108703%_)
               (_%slot108716%_ _%slot108705%_))
          (if (__class-instance? _%klass108708%_ _%obj108704%_)
              (let ((_%off108725%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj108704%_))
                      _%slot108716%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj108704%_
                 _%off108725%_
                 _%klass108708%_
                 _%slot108716%_))
              (not-an-instance__0 _%obj108704%_ _%klass108708%_)))))
    (define class-slot-set!
      (lambda (_%klass108676%_ _%obj108677%_ _%slot108678%_ _%val108679%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108676%_ 'class))
            (let ((_%klass108683%_ _%klass108676%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108678%_))
                  (let ((_%slot108693%_ _%slot108678%_))
                    (__class-slot-set!
                     _%klass108683%_
                     _%obj108677%_
                     _%slot108693%_
                     _%val108679%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@620.45-620.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108678%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@620.24-620.29"
               'contract:
               'class-type?
               'value:
               _%klass108676%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass108651%_ _%obj108652%_ _%slot108653%_ _%val108654%_)
        (let* ((_%klass108657%_ _%klass108651%_)
               (_%slot108665%_ _%slot108653%_))
          (if (__class-instance? _%klass108657%_ _%obj108652%_)
              (let ((_%off108674%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj108652%_))
                      _%slot108665%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj108652%_
                 _%val108654%_
                 _%off108674%_
                 _%klass108657%_
                 _%slot108665%_))
              (not-an-instance__0 _%obj108652%_ _%klass108657%_)))))
    (define unchecked-field-ref
      (lambda (_%obj108648%_ _%off108649%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj108648%_ _%off108649%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj108644%_ _%off108645%_ _%val108646%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj108644%_
           _%val108646%_
           _%off108645%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj108641%_ _%slot108642%_)
        (unchecked-field-ref
         _%obj108641%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108641%_))
          _%slot108642%_))))
    (define unchecked-slot-set!
      (lambda (_%obj108637%_ _%slot108638%_ _%val108639%_)
        (unchecked-field-set!
         _%obj108637%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108637%_))
          _%slot108638%_)
         _%val108639%_)))
    (define slot-ref__%
      (lambda (_%obj108599%_ _%slot108600%_ _%E108601%_)
        (if (symbol? _%slot108600%_)
            (let ((_%slot108605%_ _%slot108600%_))
              (if (procedure? _%E108601%_)
                  (let ((_%E108615%_ _%E108601%_))
                    (__slot-ref__% _%obj108599%_ _%slot108605%_ _%E108615%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@643.38-643.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E108601%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@643.21-643.25"
               'contract:
               'symbol?
               'value:
               _%slot108600%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj108628%_ _%slot108629%_)
        (let ((_%E108631%_ __slot-error))
          (slot-ref__% _%obj108628%_ _%slot108629%_ _%E108631%_))))
    (define slot-ref
      (lambda _g111965_
        (let ((_g111966_ (let () (declare (not safe)) (##length _g111965_))))
          (cond ((let () (declare (not safe)) (##fx= _g111966_ 2))
                 (apply slot-ref__0 _g111965_))
                ((let () (declare (not safe)) (##fx= _g111966_ 3))
                 (apply slot-ref__% _g111965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g111965_))))))
    (define __slot-ref__%
      (lambda (_%obj108555%_ _%slot108556%_ _%E108557%_)
        (let* ((_%slot108560%_ _%slot108556%_)
               (_%E108568%_ _%E108557%_)
               (_%klass108577%_ (class-of _%obj108555%_))
               (_%$e108580%_
                (__class-slot-offset _%klass108577%_ _%slot108560%_)))
          (if _%$e108580%_
              ((lambda (_%off108583%_)
                 (unchecked-field-ref _%obj108555%_ _%off108583%_))
               _%$e108580%_)
              (let ()
                (declare (not safe))
                (_%E108568%_ _%obj108555%_ _%slot108560%_))))))
    (define __slot-ref__0
      (lambda (_%obj108589%_ _%slot108590%_)
        (let ((_%E108592%_ __slot-error))
          (__slot-ref__% _%obj108589%_ _%slot108590%_ _%E108592%_))))
    (define __slot-ref
      (lambda _g111967_
        (let ((_g111968_ (let () (declare (not safe)) (##length _g111967_))))
          (cond ((let () (declare (not safe)) (##fx= _g111968_ 2))
                 (apply __slot-ref__0 _g111967_))
                ((let () (declare (not safe)) (##fx= _g111968_ 3))
                 (apply __slot-ref__% _g111967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g111967_))))))
    (define slot-set!__%
      (lambda (_%obj108513%_ _%slot108514%_ _%val108515%_ _%E108516%_)
        (if (symbol? _%slot108514%_)
            (let ((_%slot108520%_ _%slot108514%_))
              (if (procedure? _%E108516%_)
                  (let ((_%E108530%_ _%E108516%_))
                    (__slot-set!__%
                     _%obj108513%_
                     _%slot108520%_
                     _%val108515%_
                     _%E108530%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@645.43-645.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E108516%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@645.22-645.26"
               'contract:
               'symbol?
               'value:
               _%slot108514%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj108543%_ _%slot108544%_ _%val108545%_)
        (let ((_%E108547%_ __slot-error))
          (slot-set!__%
           _%obj108543%_
           _%slot108544%_
           _%val108545%_
           _%E108547%_))))
    (define slot-set!
      (lambda _g111969_
        (let ((_g111970_ (let () (declare (not safe)) (##length _g111969_))))
          (cond ((let () (declare (not safe)) (##fx= _g111970_ 3))
                 (apply slot-set!__0 _g111969_))
                ((let () (declare (not safe)) (##fx= _g111970_ 4))
                 (apply slot-set!__% _g111969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g111969_))))))
    (define __slot-set!__%
      (lambda (_%obj108466%_ _%slot108467%_ _%val108468%_ _%E108469%_)
        (let* ((_%slot108472%_ _%slot108467%_)
               (_%E108480%_ _%E108469%_)
               (_%klass108489%_ (class-of _%obj108466%_))
               (_%$e108492%_
                (__class-slot-offset _%klass108489%_ _%slot108472%_)))
          (if _%$e108492%_
              ((lambda (_%off108495%_)
                 (unchecked-field-set!
                  _%obj108466%_
                  _%off108495%_
                  _%val108468%_))
               _%$e108492%_)
              (let ()
                (declare (not safe))
                (_%E108480%_ _%obj108466%_ _%slot108472%_))))))
    (define __slot-set!__0
      (lambda (_%obj108501%_ _%slot108502%_ _%val108503%_)
        (let ((_%E108505%_ __slot-error))
          (__slot-set!__%
           _%obj108501%_
           _%slot108502%_
           _%val108503%_
           _%E108505%_))))
    (define __slot-set!
      (lambda _g111971_
        (let ((_g111972_ (let () (declare (not safe)) (##length _g111971_))))
          (cond ((let () (declare (not safe)) (##fx= _g111972_ 3))
                 (apply __slot-set!__0 _g111971_))
                ((let () (declare (not safe)) (##fx= _g111972_ 4))
                 (apply __slot-set!__% _g111971_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g111971_))))))
    (define __slot-error
      (lambda (_%obj108462%_ _%slot108463%_)
        (error '"Cannot find slot"
               'object:
               _%obj108462%_
               'slot:
               _%slot108463%_)))
    (define subclass?
      (lambda (_%maybe-sub-class108437%_ _%maybe-super-class108438%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class108437%_ 'class))
            (let ((_%maybe-sub-class108442%_ _%maybe-sub-class108437%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class108438%_
                     'class))
                  (let ((_%maybe-super-class108452%_
                         _%maybe-super-class108438%_))
                    (__subclass?
                     _%maybe-sub-class108442%_
                     _%maybe-super-class108452%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@653.45-653.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class108438%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@653.18-653.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class108437%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class108409%_ _%maybe-super-class108410%_)
        (let* ((_%maybe-sub-class108413%_ _%maybe-sub-class108409%_)
               (_%maybe-super-class108421%_ _%maybe-super-class108410%_)
               (_%maybe-super-class-id108430%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class108421%_)))
               (_%$e108432%_
                (eq? _%maybe-super-class-id108430%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class108413%_)))))
          (if _%$e108432%_
              _%$e108432%_
              (let ((__tmp111974
                     (lambda (_%super-class108435%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class108435%_))
                            _%maybe-super-class-id108430%_)))
                    (__tmp111973
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class108413%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp111974 __tmp111973))))))
    (define object?
      (lambda (_%o108406%_)
        (if (let () (declare (not safe)) (##structure? _%o108406%_))
            (let ((__tmp111975
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108406%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp111975 'class))
            '#f)))
    (define object-type
      (lambda (_%o108401%_)
        (if (let () (declare (not safe)) (##structure? _%o108401%_))
            (let ((_%klass108404%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108401%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass108404%_ 'class))
                  _%klass108404%_
                  (begin
                    (error '"not an object" _%o108401%_ _%klass108404%_)
                    '#!void)))
            (begin (error '"not an object" _%o108401%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass108386%_ _%obj108387%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108386%_ 'class))
            (let ((_%klass108391%_ _%klass108386%_))
              (__direct-instance? _%klass108391%_ _%obj108387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@676.25-676.30"
               'contract:
               'class-type?
               'value:
               _%klass108386%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass108373%_ _%obj108374%_)
        (let* ((_%klass108377%_ _%klass108373%_)
               (__tmp111976
                (let () (declare (not safe)) (##type-id _%klass108377%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108374%_ __tmp111976))))
    (define immediate-instance-of?
      (lambda (_%klass108369%_ _%obj108370%_)
        (if (let () (declare (not safe)) (##structure? _%obj108370%_))
            (eq? _%klass108369%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj108370%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass108354%_ _%obj108355%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108354%_ 'class))
            (let ((_%klass108359%_ _%klass108354%_))
              (__struct-instance? _%klass108359%_ _%obj108355%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.25-705.30"
               'contract:
               'class-type?
               'value:
               _%klass108354%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass108341%_ _%obj108342%_)
        (let* ((_%klass108345%_ _%klass108341%_)
               (__tmp111977
                (let () (declare (not safe)) (##type-id _%klass108345%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj108342%_ __tmp111977))))
    (define class-instance?
      (lambda (_%klass108326%_ _%obj108327%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108326%_ 'class))
            (let ((_%klass108331%_ _%klass108326%_))
              (__class-instance? _%klass108331%_ _%obj108327%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@710.24-710.29"
               'contract:
               'class-type?
               'value:
               _%klass108326%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass108311%_ _%obj108312%_)
        (let* ((_%klass108315%_ _%klass108311%_)
               (_%type108324%_ (class-of _%obj108312%_)))
          (__subclass? _%type108324%_ _%klass108315%_))))
    (define make-object
      (lambda (_%klass108286%_ _%k108287%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108286%_ 'class))
            (let ((_%klass108291%_ _%klass108286%_))
              (if (fixnum? _%k108287%_)
                  (let ((_%k108301%_ _%k108287%_))
                    (__make-object _%klass108291%_ _%k108301%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@715.37-715.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k108287%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@715.20-715.25"
               'contract:
               'class-type?
               'value:
               _%klass108286%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass108263%_ _%k108264%_)
        (let* ((_%klass108267%_ _%klass108263%_) (_%k108275%_ _%k108264%_))
          (if (__class-type-system? _%klass108267%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass108267%_)
                '#!void)
              (let ((_%obj108284%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass108267%_ _%k108275%_))))
                (__object-fill! _%obj108284%_ '#f))))))
    (define object-fill!
      (lambda (_%obj108248%_ _%fill108249%_)
        (if (object? _%obj108248%_)
            (let ((_%obj108253%_ _%obj108248%_))
              (__object-fill! _%obj108253%_ _%fill108249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@735.21-735.24"
               'contract:
               'object?
               'value:
               _%obj108248%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj108230%_ _%fill108231%_)
        (let ((_%obj108234%_ _%obj108230%_))
          (let _%loop108243%_ ((_%i108245%_
                                (let ((__tmp111978
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj108234%_))))
                                  (declare (not safe))
                                  (##fx- __tmp111978 '1))))
            (if (let () (declare (not safe)) (##fx> _%i108245%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj108234%_
                     _%fill108231%_
                     _%i108245%_
                     '#f
                     '#f))
                  (_%loop108243%_
                   (let () (declare (not safe)) (##fx- _%i108245%_ '1))))
                _%obj108234%_)))))
    (define new-instance
      (lambda (_%klass108216%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108216%_ 'class))
            (let ((_%klass108220%_ _%klass108216%_))
              (__new-instance _%klass108220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@746.21-746.26"
               'contract:
               'class-type?
               'value:
               _%klass108216%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass108204%_)
        (let* ((_%klass108207%_ _%klass108204%_)
               (__obj111892
                (let ((__tmp111979
                       (let ((__tmp111980
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass108207%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp111980))))
                  (declare (not safe))
                  (##make-structure _%klass108207%_ __tmp111979))))
          (object-fill! __obj111892 '#f)
          __obj111892)))
    (define make-instance
      (lambda (_%klass108189%_ . _%args108190%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108189%_ 'class))
            (let ((_%klass108194%_ _%klass108189%_))
              (declare (not safe))
              (##apply __make-instance _%klass108194%_ _%args108190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@749.22-749.27"
               'contract:
               'class-type?
               'value:
               _%klass108189%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass108161%_ . _%args108162%_)
        (let* ((_%klass108165%_ _%klass108161%_)
               (_%$e108174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108165%_ '10 '#f '#f))))
          (if _%$e108174%_
              ((lambda (_%kons-id108177%_)
                 (let ((_%obj108179%_ (__new-instance _%klass108165%_)))
                   (___constructor-init!
                    _%klass108165%_
                    _%kons-id108177%_
                    _%obj108179%_
                    _%args108162%_)
                   _%obj108179%_))
               _%$e108174%_)
              (if (__class-type-metaclass? _%klass108165%_)
                  (let ((_%obj108182%_ (__new-instance _%klass108165%_)))
                    (__metaclass-instance-init!
                     _%klass108165%_
                     _%obj108182%_
                     _%args108162%_)
                    _%obj108182%_)
                  (if (__class-type-struct? _%klass108165%_)
                      (if (let ((__tmp111982
                                 (__class-type-field-count _%klass108165%_))
                                (__tmp111981
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args108162%_))))
                            (declare (not safe))
                            (##fx= __tmp111982 __tmp111981))
                          (apply ##structure _%klass108165%_ _%args108162%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass108165%_
                                   'slots:
                                   (__class-type-slot-list _%klass108165%_)
                                   'args:
                                   _%args108162%_)
                            '#!void))
                      (let ((_%obj108185%_ (__new-instance _%klass108165%_)))
                        (___class-instance-init!
                         _%klass108165%_
                         _%obj108185%_
                         _%args108162%_)
                        _%obj108185%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj108146%_ . _%args108147%_)
        (if (object? _%obj108146%_)
            (let ((_%obj108151%_ _%obj108146%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj108151%_ _%args108147%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@774.30-774.33"
               'contract:
               'object?
               'value:
               _%obj108146%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj108133%_ . _%args108134%_)
        (let ((_%obj108137%_ _%obj108133%_))
          (if (let ((__tmp111984
                     (let () (declare (not safe)) (##length _%args108134%_)))
                    (__tmp111983
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj108137%_))))
                (declare (not safe))
                (##fx< __tmp111984 __tmp111983))
              (___struct-instance-init! _%obj108137%_ _%args108134%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj108137%_
                     'args:
                     _%args108134%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj108092%_ _%args108093%_)
        (let _%lp108095%_ ((_%k108097%_ '1) (_%rest108098%_ _%args108093%_))
          (let* ((_%rest108099108107%_ _%rest108098%_)
                 (_%else108101108115%_ (lambda () _%obj108092%_))
                 (_%K108103108121%_
                  (lambda (_%rest108118%_ _%hd108119%_)
                    (unchecked-field-set!
                     _%obj108092%_
                     _%k108097%_
                     _%hd108119%_)
                    (_%lp108095%_
                     (let () (declare (not safe)) (##fx+ _%k108097%_ '1))
                     _%rest108118%_))))
            (if (pair? _%rest108099108107%_)
                (let ((_%hd108104108124%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108099108107%_)))
                      (_%tl108105108126%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108099108107%_))))
                  (let* ((_%hd108129%_ _%hd108104108124%_)
                         (_%rest108131%_ _%tl108105108126%_))
                    (_%K108103108121%_ _%rest108131%_ _%hd108129%_)))
                (_%else108101108115%_))))))
    (define class-instance-init!
      (lambda (_%obj108077%_ . _%args108078%_)
        (if (object? _%obj108077%_)
            (let ((_%obj108082%_ _%obj108077%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj108082%_ _%args108078%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@814.29-814.32"
               'contract:
               'object?
               'value:
               _%obj108077%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj108064%_ . _%args108065%_)
        (let ((_%obj108068%_ _%obj108064%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj108068%_))
           _%obj108068%_
           _%args108065%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass108006%_ _%obj108007%_ _%args108008%_)
        (let _%lp108010%_ ((_%rest108012%_ _%args108008%_))
          (let* ((_%rest108013108023%_ _%rest108012%_)
                 (_%else108015108031%_
                  (lambda ()
                    (if (null? _%rest108012%_)
                        _%obj108007%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass108006%_
                               'rest:
                               _%rest108012%_))))
                 (_%K108017108045%_
                  (lambda (_%rest108034%_ _%val108035%_ _%key108036%_)
                    (if (keyword? _%key108036%_)
                        (let ((_%$e108039%_
                               (__class-slot-offset
                                _%klass108006%_
                                _%key108036%_)))
                          (if _%$e108039%_
                              ((lambda (_%off108042%_)
                                 (unchecked-field-set!
                                  _%obj108007%_
                                  _%off108042%_
                                  _%val108035%_)
                                 (_%lp108010%_ _%rest108034%_))
                               _%$e108039%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass108006%_
                                     'slot:
                                     _%key108036%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key108036%_)))))
            (if (pair? _%rest108013108023%_)
                (let ((_%hd108018108048%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108013108023%_)))
                      (_%tl108019108050%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108013108023%_))))
                  (let ((_%key108053%_ _%hd108018108048%_))
                    (if (pair? _%tl108019108050%_)
                        (let ((_%hd108020108055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108019108050%_)))
                              (_%tl108021108057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108019108050%_))))
                          (let* ((_%val108060%_ _%hd108020108055%_)
                                 (_%rest108062%_ _%tl108021108057%_))
                            (_%K108017108045%_
                             _%rest108062%_
                             _%val108060%_
                             _%key108053%_)))
                        (_%else108015108031%_))))
                (_%else108015108031%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass108002%_ _%obj108003%_ _%args108004%_)
        (apply call-method
               _%klass108002%_
               'instance-init!
               _%obj108003%_
               _%args108004%_)))
    (define constructor-init!
      (lambda (_%klass107965%_
               _%kons-id107966%_
               _%obj107967%_
               .
               _%args107968%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107965%_ 'class))
            (let ((_%klass107972%_ _%klass107965%_))
              (if (symbol? _%kons-id107966%_)
                  (let ((_%kons-id107982%_ _%kons-id107966%_))
                    (if (object? _%obj107967%_)
                        (let ((_%obj107992%_ _%obj107967%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass107972%_
                                   _%kons-id107982%_
                                   _%obj107992%_
                                   _%args107968%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@838.63-838.66"
                           'contract:
                           'object?
                           'value:
                           _%obj107967%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@838.43-838.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id107966%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.26-838.31"
               'contract:
               'class-type?
               'value:
               _%klass107965%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass107934%_
               _%kons-id107935%_
               _%obj107936%_
               .
               _%args107937%_)
        (let* ((_%klass107940%_ _%klass107934%_)
               (_%kons-id107948%_ _%kons-id107935%_)
               (_%obj107956%_ _%obj107936%_))
          (___constructor-init!
           _%klass107940%_
           _%kons-id107948%_
           _%obj107956%_
           _%args107937%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass107923%_ _%kons-id107924%_ _%obj107925%_ _%args107926%_)
        (let ((_%$e107928%_
               (__find-method
                _%klass107923%_
                _%obj107925%_
                _%kons-id107924%_)))
          (if _%$e107928%_
              ((lambda (_%kons107931%_)
                 (apply _%kons107931%_ _%obj107925%_ _%args107926%_)
                 _%obj107925%_)
               _%$e107928%_)
              (error '"missing constructor"
                     'class:
                     _%klass107923%_
                     'method:
                     _%kons-id107924%_)))))
    (define struct-copy
      (lambda (_%struct107909%_)
        (if (object? _%struct107909%_)
            (let ((_%struct107913%_ _%struct107909%_))
              (__struct-copy _%struct107913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.20-852.26"
               'contract:
               'object?
               'value:
               _%struct107909%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct107897%_)
        (let ((_%struct107900%_ _%struct107897%_))
          (declare (not safe))
          (##structure-copy _%struct107900%_))))
    (define struct->list
      (lambda (_%obj107883%_)
        (if (object? _%obj107883%_)
            (let ((_%obj107887%_ _%obj107883%_))
              (__struct->list _%obj107887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.21-855.24"
               'contract:
               'object?
               'value:
               _%obj107883%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj107864%_)
        (let* ((_%obj107867%_ _%obj107864%_)
               (_%len107876%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj107867%_))))
          (let _%recur107878%_ ((_%i107880%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i107880%_ _%len107876%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj107867%_
                         _%i107880%_
                         '#f
                         '#f))
                      (_%recur107878%_
                       (let () (declare (not safe)) (##fx+ _%i107880%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj107850%_)
        (if (object? _%obj107850%_)
            (let ((_%obj107854%_ _%obj107850%_)) (__class->list _%obj107854%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@863.20-863.23"
               'contract:
               'object?
               'value:
               _%obj107850%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj107826%_)
        (let* ((_%obj107829%_ _%obj107826%_)
               (_%klass107838%_
                (let () (declare (not safe)) (##structure-type _%obj107829%_)))
               (_%slot-vector107840%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107838%_ '7 '#f '#f))))
          (let _%loop107842%_ ((_%index107844%_
                                (let ((__tmp111985
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector107840%_))))
                                  (declare (not safe))
                                  (##fx- __tmp111985 '1)))
                               (_%plist107845%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index107844%_ '1))
                (cons _%klass107838%_ _%plist107845%_)
                (let ((_%slot107848%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector107840%_
                          _%index107844%_))))
                  (_%loop107842%_
                   (let () (declare (not safe)) (##fx- _%index107844%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot107848%_))
                         (cons (unchecked-field-ref
                                _%obj107829%_
                                _%index107844%_)
                               _%plist107845%_)))))))))
    (define call-method
      (lambda (_%obj107810%_ _%id107811%_ . _%args107812%_)
        (if (symbol? _%id107811%_)
            (let ((_%id107816%_ _%id107811%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj107810%_
                       _%id107816%_
                       _%args107812%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@878.24-878.26"
               'contract:
               'symbol?
               'value:
               _%id107811%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj107779%_ _%id107780%_ . _%args107781%_)
        (let* ((_%id107784%_ _%id107780%_)
               (_%$e107793%_ (__method-ref _%obj107779%_ _%id107784%_)))
          (if _%$e107793%_
              ((lambda (_%method107796%_)
                 (let ((_%method107798%_ _%method107796%_))
                   (apply _%method107798%_ _%obj107779%_ _%args107781%_)))
               _%$e107793%_)
              (error '"cannot find method"
                     'object:
                     _%obj107779%_
                     'method:
                     _%id107784%_)))))
    (define method-ref
      (lambda (_%obj107764%_ _%id107765%_)
        (if (symbol? _%id107765%_)
            (let ((_%id107769%_ _%id107765%_))
              (__method-ref _%obj107764%_ _%id107769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@905.23-905.25"
               'contract:
               'symbol?
               'value:
               _%id107765%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj107751%_ _%id107752%_)
        (let ((_%id107755%_ _%id107752%_))
          (__find-method
           (class-of _%obj107751%_)
           _%obj107751%_
           _%id107755%_))))
    (define checked-method-ref
      (lambda (_%obj107744%_ _%id107745%_)
        (let ((_%$e107748%_ (method-ref _%obj107744%_ _%id107745%_)))
          (if _%$e107748%_
              _%$e107748%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj107744%_
                       'method:
                       _%id107745%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj107729%_ _%id107730%_)
        (if (symbol? _%id107730%_)
            (let ((_%id107734%_ _%id107730%_))
              (__bound-method-ref _%obj107729%_ _%id107734%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@913.29-913.31"
               'contract:
               'symbol?
               'value:
               _%id107730%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj107697%_ _%id107698%_)
        (let* ((_%id107701%_ _%id107698%_)
               (_%$e107710%_ (__method-ref _%obj107697%_ _%id107701%_)))
          (if _%$e107710%_
              ((lambda (_%method107713%_)
                 (let ((_%method107715%_ _%method107713%_))
                   (lambda _%args107726%_
                     (apply _%method107715%_ _%obj107697%_ _%args107726%_))))
               _%$e107710%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj107682%_ _%id107683%_)
        (if (symbol? _%id107683%_)
            (let ((_%id107687%_ _%id107683%_))
              (__checked-bound-method-ref _%obj107682%_ _%id107687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@922.37-922.39"
               'contract:
               'symbol?
               'value:
               _%id107683%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj107665%_ _%id107666%_)
        (let* ((_%id107669%_ _%id107666%_)
               (_%method107678%_
                (checked-method-ref _%obj107665%_ _%id107669%_)))
          (lambda _%args107680%_
            (apply _%method107678%_ _%obj107665%_ _%args107680%_)))))
    (define find-method
      (lambda (_%klass107639%_ _%obj107640%_ _%id107641%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107639%_ 'class))
            (let ((_%klass107645%_ _%klass107639%_))
              (if (symbol? _%id107641%_)
                  (let ((_%id107655%_ _%id107641%_))
                    (__find-method _%klass107645%_ _%obj107640%_ _%id107655%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@927.41-927.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id107641%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@927.20-927.25"
               'contract:
               'class-type?
               'value:
               _%klass107639%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass107610%_ _%obj107611%_ _%id107612%_)
        (let* ((_%klass107615%_ _%klass107610%_) (_%id107623%_ _%id107612%_))
          (if (__class-type-sealed? _%klass107615%_)
              (let ((_%tab107633%_ (__specialize-class _%klass107615%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab107633%_ _%id107623%_ '#f))
              (let ((_%$e107635%_
                     (__direct-method-ref
                      _%klass107615%_
                      _%obj107611%_
                      _%id107623%_)))
                (if _%$e107635%_
                    _%$e107635%_
                    (__mixin-method-ref
                     _%klass107615%_
                     _%obj107611%_
                     _%id107623%_)))))))
    (define mixin-find-method
      (lambda (_%mixins107594%_ _%obj107595%_ _%id107596%_)
        (if (symbol? _%id107596%_)
            (let ((_%id107600%_ _%id107596%_))
              (__mixin-find-method
               _%mixins107594%_
               _%obj107595%_
               _%id107600%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.37-936.39"
               'contract:
               'symbol?
               'value:
               _%id107596%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins107576%_ _%obj107577%_ _%id107578%_)
        (let* ((_%id107581%_ _%id107578%_)
               (__tmp111986
                (lambda (_%g107589107591%_)
                  (direct-method-ref
                   _%g107589107591%_
                   _%obj107577%_
                   _%id107581%_))))
          (declare (not safe))
          (__ormap1 __tmp111986 _%mixins107576%_))))
    (define direct-method-ref
      (lambda (_%klass107550%_ _%obj107551%_ _%id107552%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107550%_ 'class))
            (let ((_%klass107556%_ _%klass107550%_))
              (if (symbol? _%id107552%_)
                  (let ((_%id107566%_ _%id107552%_))
                    (__direct-method-ref
                     _%klass107556%_
                     _%obj107551%_
                     _%id107566%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@939.47-939.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id107552%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.26-939.31"
               'contract:
               'class-type?
               'value:
               _%klass107550%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass107504%_ _%obj107505%_ _%id107506%_)
        (let* ((_%klass107509%_ _%klass107504%_) (_%id107517%_ _%id107506%_))
          (letrec ((_%metaclass-resolve-method107526%_
                    (lambda ()
                      (let ((__method111893
                             (__method-ref
                              _%klass107509%_
                              'direct-method-ref)))
                        (if __method111893
                            (let ()
                              (declare (not safe))
                              (__method111893
                               _%klass107509%_
                               _%obj107505%_
                               _%id107517%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107509%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!107527%_
                    (lambda ()
                      (let ((_%method107547%_
                             (_%metaclass-resolve-method107526%_)))
                        (let ((__tmp111988
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107509%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp111987
                               (if _%method107547%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp111988
                           _%id107517%_
                           __tmp111987))
                        _%method107547%_))))
            (let ((_%$e107529%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass107509%_ '11 '#f '#f))))
              (if _%$e107529%_
                  ((lambda (_%ht107532%_)
                     (let ((_%method107534%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht107532%_
                               _%id107517%_
                               '#f))))
                       (if (procedure? _%method107534%_)
                           _%method107534%_
                           (if (__class-type-metaclass? _%klass107509%_)
                               (let ((_%$e107538%_ _%method107534%_))
                                 (if (eq? 'resolved _%$e107538%_)
                                     (_%metaclass-resolve-method107526%_)
                                     (if (eq? 'unknown _%$e107538%_)
                                         '#f
                                         (_%metaclass-resolve-method!107527%_))))
                               '#f))))
                   _%$e107529%_)
                  (if (__class-type-metaclass? _%klass107509%_)
                      (let ((_%tab107543%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107509%_
                           _%tab107543%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!107527%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass107478%_ _%obj107479%_ _%id107480%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107478%_ 'class))
            (let ((_%klass107484%_ _%klass107478%_))
              (if (symbol? _%id107480%_)
                  (let ((_%id107494%_ _%id107480%_))
                    (__mixin-method-ref
                     _%klass107484%_
                     _%obj107479%_
                     _%id107494%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@969.46-969.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id107480%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.25-969.30"
               'contract:
               'class-type?
               'value:
               _%klass107478%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass107456%_ _%obj107457%_ _%id107458%_)
        (let* ((_%klass107461%_ _%klass107456%_) (_%id107469%_ _%id107458%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass107461%_ '6 '#f '#f))
           _%obj107457%_
           _%id107469%_))))
    (define bind-method!__%
      (lambda (_%klass107415%_ _%id107416%_ _%proc107417%_ _%rebind?107418%_)
        (if (symbol? _%id107416%_)
            (let ((_%id107422%_ _%id107416%_))
              (if (procedure? _%proc107417%_)
                  (let ((_%proc107432%_ _%proc107417%_))
                    (__bind-method!__%
                     _%klass107415%_
                     _%id107422%_
                     _%proc107432%_
                     _%rebind?107418%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@972.42-972.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107417%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@972.27-972.29"
               'contract:
               'symbol?
               'value:
               _%id107416%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass107445%_ _%id107446%_ _%proc107447%_)
        (let ((_%rebind?107449%_ '#f))
          (bind-method!__%
           _%klass107445%_
           _%id107446%_
           _%proc107447%_
           _%rebind?107449%_))))
    (define bind-method!
      (lambda _g111989_
        (let ((_g111990_ (let () (declare (not safe)) (##length _g111989_))))
          (cond ((let () (declare (not safe)) (##fx= _g111990_ 3))
                 (apply bind-method!__0 _g111989_))
                ((let () (declare (not safe)) (##fx= _g111990_ 4))
                 (apply bind-method!__% _g111989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g111989_))))))
    (define __bind-method!__%
      (lambda (_%klass107366%_ _%id107367%_ _%proc107368%_ _%rebind?107369%_)
        (let* ((_%id107372%_ _%id107367%_) (_%proc107380%_ _%proc107368%_))
          (letrec ((_%bind!107389%_
                    (lambda (_%ht107398%_)
                      (if (and (not _%rebind?107369%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht107398%_
                                  _%id107372%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass107366%_
                                 'method:
                                 _%id107372%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht107398%_
                               _%id107372%_
                               _%proc107380%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass107366%_ 'class))
                (let ((_%ht107392%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107366%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht107392%_
                      (_%bind!107389%_ _%ht107392%_)
                      (let ((_%ht107394%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107366%_
                           _%ht107394%_
                           '11
                           '#f
                           '#f))
                        (_%bind!107389%_ _%ht107394%_))))
                (if (let () (declare (not safe)) (##type? _%klass107366%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass107366%_)
                     _%id107372%_
                     _%proc107380%_
                     _%rebind?107369%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass107366%_)))))))
    (define __bind-method!__0
      (lambda (_%klass107403%_ _%id107404%_ _%proc107405%_)
        (let ((_%rebind?107407%_ '#f))
          (__bind-method!__%
           _%klass107403%_
           _%id107404%_
           _%proc107405%_
           _%rebind?107407%_))))
    (define __bind-method!
      (lambda _g111991_
        (let ((_g111992_ (let () (declare (not safe)) (##length _g111991_))))
          (cond ((let () (declare (not safe)) (##fx= _g111992_ 3))
                 (apply __bind-method!__0 _g111991_))
                ((let () (declare (not safe)) (##fx= _g111992_ 4))
                 (apply __bind-method!__% _g111991_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g111991_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint107347%_ _%seed107348%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint107347%_
           procedure-hash
           eq?
           _%seed107348%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint107354%_ '#f) (_%seed107356%_ '0))
          (make-method-specializer-table__%
           _%size-hint107354%_
           _%seed107356%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint107358%_)
        (let ((_%seed107360%_ '0))
          (make-method-specializer-table__%
           _%size-hint107358%_
           _%seed107360%_))))
    (define make-method-specializer-table
      (lambda _g111993_
        (let ((_g111994_ (let () (declare (not safe)) (##length _g111993_))))
          (cond ((let () (declare (not safe)) (##fx= _g111994_ 0))
                 (apply make-method-specializer-table__0 _g111993_))
                ((let () (declare (not safe)) (##fx= _g111994_ 1))
                 (apply make-method-specializer-table__1 _g111993_))
                ((let () (declare (not safe)) (##fx= _g111994_ 2))
                 (apply make-method-specializer-table__% _g111993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g111993_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint107327%_ _%seed107329%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint107327%_
           procedure-hash
           eq?
           _%seed107329%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint107335%_ '#f) (_%seed107337%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107335%_
           _%seed107337%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint107339%_)
        (let ((_%seed107341%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107339%_
           _%seed107341%_))))
    (define make-method-specializer-table/lock
      (lambda _g111995_
        (let ((_g111996_ (let () (declare (not safe)) (##length _g111995_))))
          (cond ((let () (declare (not safe)) (##fx= _g111996_ 0))
                 (apply make-method-specializer-table/lock__0 _g111995_))
                ((let () (declare (not safe)) (##fx= _g111996_ 1))
                 (apply make-method-specializer-table/lock__1 _g111995_))
                ((let () (declare (not safe)) (##fx= _g111996_ 2))
                 (apply make-method-specializer-table/lock__% _g111995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g111995_))))))
    (define method-specializer-table-ref
      (lambda (_%tab107280%_ _%key107281%_ _%default107282%_)
        (let ((_%table107284%_
               (let () (declare (not safe)) (&raw-table-table _%tab107280%_)))
              (_%seed107285%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107280%_))))
          (let* ((_%h107287%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107281%_))
                         _%seed107285%_))
                 (_%size107290%_ (vector-length _%table107284%_))
                 (_%entries107293%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107290%_ '2)))
                 (_%start107296%_
                  (let ((__tmp111997
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107287%_ _%entries107293%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp111997 '1))))
            (let _%loop107300%_ ((_%probe107303%_ _%start107296%_)
                                 (_%i107305%_ '1)
                                 (_%deleted107307%_ '#f))
              (let ((_%k107310%_ (vector-ref _%table107284%_ _%probe107303%_)))
                (if (eq? _%k107310%_ (macro-unused-obj))
                    _%default107282%_
                    (if (eq? _%k107310%_ (macro-deleted-obj))
                        (_%loop107300%_
                         (let ((_%next-probe107315%_
                                (fx+ _%start107296%_
                                     _%i107305%_
                                     (fx* _%i107305%_ _%i107305%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107315%_ _%size107290%_))
                         (let () (declare (not safe)) (##fx+ _%i107305%_ '1))
                         (let ((_%$e107318%_ _%deleted107307%_))
                           (if _%$e107318%_ _%$e107318%_ _%probe107303%_)))
                        (if (eq? _%key107281%_ _%k107310%_)
                            (vector-ref
                             _%table107284%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe107303%_ '1)))
                            (_%loop107300%_
                             (let ((_%next-probe107323%_
                                    (fx+ _%start107296%_
                                         _%i107305%_
                                         (fx* _%i107305%_ _%i107305%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107323%_
                                _%size107290%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107305%_ '1))
                             _%deleted107307%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab107253%_ _%key107254%_ _%default107255%_)
        (let ((_%lock107257%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107253%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107262%_ ((_%spin107265%_ '0))
              (if (let ((__tmp111998
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107257%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp111998 '0))
                  (let ((__tmp111999 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107257%_ '1 __tmp111999))
                  (if (let () (declare (not safe)) (##fx< _%spin107265%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107262%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107265%_ '1))))
                      (let ((_%owner107271%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107257%_ '1))))
                        (if (eq? _%owner107271%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107271%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107262%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107277%_
                 (method-specializer-table-ref
                  _%tab107253%_
                  _%key107254%_
                  _%default107255%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107257%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107257%_ '0 '0 '1))
            _%$r107277%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab107205%_ _%key107206%_ _%value107207%_)
        (let ((_%table107209%_
               (let () (declare (not safe)) (&raw-table-table _%tab107205%_)))
              (_%seed107210%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107205%_))))
          (let* ((_%h107212%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107206%_))
                         _%seed107210%_))
                 (_%size107215%_ (vector-length _%table107209%_))
                 (_%entries107218%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107215%_ '2)))
                 (_%start107221%_
                  (let ((__tmp112000
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107212%_ _%entries107218%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112000 '1))))
            (let _%loop107225%_ ((_%probe107228%_ _%start107221%_)
                                 (_%i107230%_ '1)
                                 (_%deleted107232%_ '#f))
              (let ((_%k107235%_ (vector-ref _%table107209%_ _%probe107228%_)))
                (if (eq? _%k107235%_ (macro-unused-obj))
                    (if _%deleted107232%_
                        (begin
                          (vector-set!
                           _%table107209%_
                           _%deleted107232%_
                           _%key107206%_)
                          (vector-set!
                           _%table107209%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107232%_ '1))
                           _%value107207%_)
                          ((lambda ()
                             (let ((__tmp112001
                                    (let ((__tmp112002
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107205%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112002 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107205%_
                                __tmp112001)))))
                        (begin
                          (vector-set!
                           _%table107209%_
                           _%probe107228%_
                           _%key107206%_)
                          (vector-set!
                           _%table107209%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107228%_ '1))
                           _%value107207%_)
                          ((lambda ()
                             (let ((__tmp112003
                                    (let ((__tmp112004
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107205%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112004 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107205%_
                                __tmp112003))
                             (let ((__tmp112005
                                    (let ((__tmp112006
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107205%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112006 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107205%_
                                __tmp112005))))))
                    (if (eq? _%k107235%_ (macro-deleted-obj))
                        (_%loop107225%_
                         (let ((_%next-probe107242%_
                                (fx+ _%start107221%_
                                     _%i107230%_
                                     (fx* _%i107230%_ _%i107230%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107242%_ _%size107215%_))
                         (let () (declare (not safe)) (##fx+ _%i107230%_ '1))
                         (let ((_%$e107245%_ _%deleted107232%_))
                           (if _%$e107245%_ _%$e107245%_ _%probe107228%_)))
                        (if (eq? _%key107206%_ _%k107235%_)
                            (let ()
                              (vector-set!
                               _%table107209%_
                               _%probe107228%_
                               _%key107206%_)
                              (vector-set!
                               _%table107209%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107228%_ '1))
                               _%value107207%_))
                            (_%loop107225%_
                             (let ((_%next-probe107250%_
                                    (fx+ _%start107221%_
                                         _%i107230%_
                                         (fx* _%i107230%_ _%i107230%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107250%_
                                _%size107215%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107230%_ '1))
                             _%deleted107232%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab107201%_ _%key107202%_ _%value107203%_)
        (if (let ((__tmp112009
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107201%_)))
                  (__tmp112007
                   (let ((__tmp112008
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107201%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112008 '4))))
              (declare (not safe))
              (##fx< __tmp112009 __tmp112007))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107201%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab107201%_
         _%key107202%_
         _%value107203%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab107173%_ _%key107174%_ _%value107175%_)
        (let ((_%lock107178%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107173%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107183%_ ((_%spin107186%_ '0))
              (if (let ((__tmp112010
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107178%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112010 '0))
                  (let ((__tmp112011 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107178%_ '1 __tmp112011))
                  (if (let () (declare (not safe)) (##fx< _%spin107186%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107183%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107186%_ '1))))
                      (let ((_%owner107192%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107178%_ '1))))
                        (if (eq? _%owner107192%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107192%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107183%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107198%_
                 (method-specializer-table-set!
                  _%tab107173%_
                  _%key107174%_
                  _%value107175%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107178%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107178%_ '0 '0 '1))
            _%$r107198%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab107124%_
               _%key107125%_
               _%method-specializer-table-update!107126%_
               _%default107127%_)
        (let ((_%table107129%_
               (let () (declare (not safe)) (&raw-table-table _%tab107124%_)))
              (_%seed107130%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107124%_))))
          (let* ((_%h107132%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107125%_))
                         _%seed107130%_))
                 (_%size107135%_ (vector-length _%table107129%_))
                 (_%entries107138%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107135%_ '2)))
                 (_%start107141%_
                  (let ((__tmp112012
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107132%_ _%entries107138%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112012 '1))))
            (let _%loop107145%_ ((_%probe107148%_ _%start107141%_)
                                 (_%i107150%_ '1)
                                 (_%deleted107152%_ '#f))
              (let ((_%k107155%_ (vector-ref _%table107129%_ _%probe107148%_)))
                (if (eq? _%k107155%_ (macro-unused-obj))
                    (if _%deleted107152%_
                        (begin
                          (vector-set!
                           _%table107129%_
                           _%deleted107152%_
                           _%key107125%_)
                          (vector-set!
                           _%table107129%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107152%_ '1))
                           (_%method-specializer-table-update!107126%_
                            _%default107127%_))
                          ((lambda ()
                             (let ((__tmp112013
                                    (let ((__tmp112014
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107124%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112014 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107124%_
                                __tmp112013)))))
                        (begin
                          (vector-set!
                           _%table107129%_
                           _%probe107148%_
                           _%key107125%_)
                          (vector-set!
                           _%table107129%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107148%_ '1))
                           (_%method-specializer-table-update!107126%_
                            _%default107127%_))
                          ((lambda ()
                             (let ((__tmp112015
                                    (let ((__tmp112016
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107124%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112016 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107124%_
                                __tmp112015))
                             (let ((__tmp112017
                                    (let ((__tmp112018
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107124%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112018 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107124%_
                                __tmp112017))))))
                    (if (eq? _%k107155%_ (macro-deleted-obj))
                        (_%loop107145%_
                         (let ((_%next-probe107162%_
                                (fx+ _%start107141%_
                                     _%i107150%_
                                     (fx* _%i107150%_ _%i107150%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107162%_ _%size107135%_))
                         (let () (declare (not safe)) (##fx+ _%i107150%_ '1))
                         (let ((_%$e107165%_ _%deleted107152%_))
                           (if _%$e107165%_ _%$e107165%_ _%probe107148%_)))
                        (if (eq? _%key107125%_ _%k107155%_)
                            (let ()
                              (vector-set!
                               _%table107129%_
                               _%probe107148%_
                               _%key107125%_)
                              (vector-set!
                               _%table107129%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107148%_ '1))
                               (_%method-specializer-table-update!107126%_
                                (vector-ref
                                 _%table107129%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe107148%_ '1))))))
                            (_%loop107145%_
                             (let ((_%next-probe107170%_
                                    (fx+ _%start107141%_
                                         _%i107150%_
                                         (fx* _%i107150%_ _%i107150%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107170%_
                                _%size107135%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107150%_ '1))
                             _%deleted107152%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab107119%_
               _%key107120%_
               _%method-specializer-table-update!107121%_
               _%default107122%_)
        (if (let ((__tmp112021
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107119%_)))
                  (__tmp112019
                   (let ((__tmp112020
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107119%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112020 '4))))
              (declare (not safe))
              (##fx< __tmp112021 __tmp112019))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107119%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab107119%_
         _%key107120%_
         _%method-specializer-table-update!107121%_
         _%default107122%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab107090%_
               _%key107091%_
               _%method-specializer-table-update!107092%_
               _%default107093%_)
        (let ((_%lock107096%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107090%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107101%_ ((_%spin107104%_ '0))
              (if (let ((__tmp112022
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107096%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112022 '0))
                  (let ((__tmp112023 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107096%_ '1 __tmp112023))
                  (if (let () (declare (not safe)) (##fx< _%spin107104%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107101%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107104%_ '1))))
                      (let ((_%owner107110%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107096%_ '1))))
                        (if (eq? _%owner107110%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107110%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107101%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107116%_
                 (_%method-specializer-table-update!107092%_
                  _%tab107090%_
                  _%key107091%_
                  _%method-specializer-table-update!107092%_
                  _%default107093%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107096%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107096%_ '0 '0 '1))
            _%$r107116%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab107047%_ _%key107048%_)
        (let ((_%table107050%_
               (let () (declare (not safe)) (&raw-table-table _%tab107047%_)))
              (_%seed107052%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107047%_))))
          (let* ((_%h107055%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107048%_))
                         _%seed107052%_))
                 (_%size107058%_ (vector-length _%table107050%_))
                 (_%entries107061%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107058%_ '2)))
                 (_%start107064%_
                  (let ((__tmp112024
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107055%_ _%entries107061%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112024 '1))))
            (let _%loop107068%_ ((_%probe107071%_ _%start107064%_)
                                 (_%i107073%_ '1))
              (let ((_%k107076%_ (vector-ref _%table107050%_ _%probe107071%_)))
                (if (eq? _%k107076%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107076%_ (macro-deleted-obj))
                        (_%loop107068%_
                         (let ((_%next-probe107081%_
                                (fx+ _%start107064%_
                                     _%i107073%_
                                     (fx* _%i107073%_ _%i107073%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107081%_ _%size107058%_))
                         (let () (declare (not safe)) (##fx+ _%i107073%_ '1)))
                        (if (eq? _%key107048%_ _%k107076%_)
                            (let ()
                              (vector-set!
                               _%table107050%_
                               _%probe107071%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107050%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107071%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp112025
                                        (let ((__tmp112026
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab107047%_))))
                                          (declare (not safe))
                                          (##fx- __tmp112026 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab107047%_
                                    __tmp112025)))))
                            (_%loop107068%_
                             (let ((_%next-probe107087%_
                                    (fx+ _%start107064%_
                                         _%i107073%_
                                         (fx* _%i107073%_ _%i107073%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107087%_
                                _%size107058%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107073%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab107019%_ _%key107021%_)
        (let ((_%lock107024%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107019%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107029%_ ((_%spin107032%_ '0))
              (if (let ((__tmp112027
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107024%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112027 '0))
                  (let ((__tmp112028 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107024%_ '1 __tmp112028))
                  (if (let () (declare (not safe)) (##fx< _%spin107032%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107029%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107032%_ '1))))
                      (let ((_%owner107038%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107024%_ '1))))
                        (if (eq? _%owner107038%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107038%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107029%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107044%_
                 (method-specializer-table-delete!
                  _%tab107019%_
                  _%key107021%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107024%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107024%_ '0 '0 '1))
            _%$r107044%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc107016%_ _%specializer107017%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc107016%_
         _%specializer107017%_)))
    (define __lookup-method-specializer
      (lambda (_%proc107014%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc107014%_
         '#f)))
    (define specialize-class
      (lambda (_%klass107000%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107000%_ 'class))
            (let ((_%klass107004%_ _%klass107000%_))
              (__specialize-class _%klass107004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1022.25-1022.30"
               'contract:
               'class-type?
               'value:
               _%klass107000%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass106982%_)
        (let* ((_%klass106985%_ _%klass106982%_)
               (_%$e106994%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106985%_ '12 '#f '#f))))
          (if _%$e106994%_
              _%$e106994%_
              (let ((_%method-table106998%_
                     (___specialize-class _%klass106985%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass106985%_
                   _%method-table106998%_
                   '12
                   '#f
                   '#f))
                _%method-table106998%_)))))
    (define __specialize-method
      (lambda (_%klass106966%_
               _%method-table106967%_
               _%method106968%_
               _%proc106969%_)
        (let ((_%$e106971%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table106967%_
                  _%method106968%_
                  '#f))))
          (if _%$e106971%_
              _%$e106971%_
              (let ((_%$e106974%_
                     (__lookup-method-specializer _%proc106969%_)))
                (if _%$e106974%_
                    ((lambda (_%specialize106977%_)
                       (let ((_%specialized-proc106979%_
                              (_%specialize106977%_
                               _%klass106966%_
                               _%method-table106967%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table106967%_
                          _%method106968%_
                          _%specialized-proc106979%_)))
                     _%$e106974%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table106967%_
                       _%method106968%_
                       _%proc106969%_))))))))
    (define ___specialize-class
      (lambda (_%klass106908%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106908%_ 'class))
            (if (__class-type-metaclass? _%klass106908%_)
                (let ((__method111894
                       (__method-ref _%klass106908%_ 'specialize-class)))
                  (if __method111894
                      (let ()
                        (declare (not safe))
                        (__method111894 _%klass106908%_))
                      (begin
                        (error '"Missing method"
                               _%klass106908%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp112029
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass106908%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp112029))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass106908%_)
                    (let ((_%method-table106914%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop106916%_ ((_%rest106918%_
                                            (__class-precedence-list
                                             _%klass106908%_)))
                        (let* ((_%rest106919106927%_ _%rest106918%_)
                               (_%else106921106935%_
                                (lambda () _%method-table106914%_))
                               (_%K106923106954%_
                                (lambda (_%rest106938%_ _%xklass106939%_)
                                  (let ((_%xmethod-table106940106942%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass106939%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table106940106942%_
                                        (let* ((_%xmethod-table106945%_
                                                _%xmethod-table106940106942%_)
                                               (__tmp112030
                                                (lambda (_%g106946106949%_
                                                         _%g106947106951%_)
                                                  (__specialize-method
                                                   _%klass106908%_
                                                   _%method-table106914%_
                                                   _%g106946106949%_
                                                   _%g106947106951%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table106945%_
                                           __tmp112030))
                                        '#f))
                                  (_%loop106916%_ _%rest106938%_))))
                          (if (pair? _%rest106919106927%_)
                              (let ((_%hd106924106957%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106919106927%_)))
                                    (_%tl106925106959%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106919106927%_))))
                                (let* ((_%xklass106962%_ _%hd106924106957%_)
                                       (_%rest106964%_ _%tl106925106959%_))
                                  (_%K106923106954%_
                                   _%rest106964%_
                                   _%xklass106962%_)))
                              (_%else106921106935%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass106908%_))
                (__specialize-class (__shadow-class__0 _%klass106908%_))
                (error '"bad class; cannot specialize" _%klass106908%_)))))
    (define seal-class!
      (lambda (_%klass106894%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106894%_ 'class))
            (let ((_%klass106898%_ _%klass106894%_))
              (__seal-class! _%klass106898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1068.20-1068.25"
               'contract:
               'class-type?
               'value:
               _%klass106894%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass106879%_)
        (let ((_%klass106882%_ _%klass106879%_))
          (if (__class-type-sealed? _%klass106882%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass106882%_)
                    (let ()
                      (let ((__method111895
                             (__method-ref _%klass106882%_ 'seal-class!)))
                        (if __method111895
                            (let ()
                              (declare (not safe))
                              (__method111895 _%klass106882%_))
                            (begin
                              (error '"Missing method"
                                     _%klass106882%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass106882%_))
                    (if (let ((__tmp112031
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass106882%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp112031))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass106882%_)
                        (__specialize-class _%klass106882%_)))
                (__class-type-seal! _%klass106882%_))))))
    (define next-method
      (lambda (_%subklass106853%_ _%obj106854%_ _%id106855%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass106853%_ 'class))
            (let ((_%subklass106859%_ _%subklass106853%_))
              (if (symbol? _%id106855%_)
                  (let ((_%id106869%_ _%id106855%_))
                    (__next-method
                     _%subklass106859%_
                     _%obj106854%_
                     _%id106869%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1090.44-1090.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id106855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1090.20-1090.28"
               'contract:
               'class-type?
               'value:
               _%subklass106853%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass106790%_ _%obj106791%_ _%id106792%_)
        (let* ((_%subklass106795%_ _%subklass106790%_)
               (_%id106803%_ _%id106792%_))
          (letrec ((_%find-next-method106812%_
                    (lambda (_%klass106814%_)
                      (let _%lp106816%_ ((_%rest106818%_
                                          (class-precedence-list
                                           _%klass106814%_)))
                        (let* ((_%rest106819106827%_ _%rest106818%_)
                               (_%else106821106835%_ (lambda () '#f))
                               (_%K106823106841%_
                                (lambda (_%rest106838%_ _%klass106839%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass106795%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass106839%_)))
                                      (__mixin-find-method
                                       _%rest106838%_
                                       _%obj106791%_
                                       _%id106803%_)
                                      (_%lp106816%_ _%rest106838%_)))))
                          (if (pair? _%rest106819106827%_)
                              (let ((_%hd106824106844%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106819106827%_)))
                                    (_%tl106825106846%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106819106827%_))))
                                (let* ((_%klass106849%_ _%hd106824106844%_)
                                       (_%rest106851%_ _%tl106825106846%_))
                                  (_%K106823106841%_
                                   _%rest106851%_
                                   _%klass106849%_)))
                              (_%else106821106835%_)))))))
            (_%find-next-method106812%_ (class-of _%obj106791%_))))))
    (define call-next-method
      (lambda (_%subklass106763%_ _%obj106764%_ _%id106765%_ . _%args106766%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass106763%_ 'class))
            (let ((_%subklass106770%_ _%subklass106763%_))
              (if (symbol? _%id106765%_)
                  (let ((_%id106780%_ _%id106765%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass106770%_
                             _%obj106764%_
                             _%id106780%_
                             _%args106766%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.49-1101.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id106765%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.25-1101.33"
               'contract:
               'class-type?
               'value:
               _%subklass106763%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass106734%_ _%obj106735%_ _%id106736%_ . _%args106737%_)
        (let* ((_%subklass106740%_ _%subklass106734%_)
               (_%id106748%_ _%id106736%_)
               (_%$e106757%_
                (__next-method _%subklass106740%_ _%obj106735%_ _%id106748%_)))
          (if _%$e106757%_
              ((lambda (_%methodf106760%_)
                 (apply _%methodf106760%_ _%obj106735%_ _%args106737%_))
               _%$e106757%_)
              (error '"cannot find next method"
                     'object:
                     _%obj106735%_
                     'method:
                     _%id106748%_)))))
    (define write-style
      (lambda (_%we106732%_) (values (macro-writeenv-style _%we106732%_))))
    (define write-object
      (lambda (_%we106723%_ _%obj106724%_)
        (let ((_%$e106726%_ (__method-ref _%obj106724%_ ':wr)))
          (if _%$e106726%_
              ((lambda (_%method106729%_)
                 (_%method106729%_ _%obj106724%_ _%we106723%_))
               _%$e106726%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we106723%_ _%obj106724%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type106616%_ _%properties106617%_)
        (letrec ((_%shadow-type-id106619%_
                  (lambda (_%type106711%_)
                    (let ((__tmp112032
                           (let ()
                             (declare (not safe))
                             (##type-name _%type106711%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp112032 '"::t"))))
                 (_%shadow-type-name106620%_
                  (lambda (_%type106709%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type106709%_))))
                 (_%make-shadow-class106621%_
                  (lambda (_%type106701%_ _%precedence-list106702%_)
                    (let* ((_%super106704%_
                            (if (pair? _%precedence-list106702%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list106702%_))
                                      '())
                                '()))
                           (_%klass106706%_
                            (make-class-type
                             (_%shadow-type-id106619%_ _%type106701%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type106701%_))
                             _%super106704%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (let ((__tmp112033
                                                (if (__type-extensible?
                                                     _%type106701%_)
                                                    '()
                                                    (cons (cons 'final: '#t)
                                                          '()))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            _%properties106617%_
                                            __tmp112033))))
                             '#f)))
                      (let ((__tmp112034
                             (let ()
                               (declare (not safe))
                               (##type-id _%type106701%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp112034
                         _%klass106706%_))
                      _%klass106706%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106625%_ ((_%spin106628%_ '0))
              (if (let ((__tmp112035
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112035 '0))
                  (let ((__tmp112036 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp112036))
                  (if (let () (declare (not safe)) (##fx< _%spin106628%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again106625%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin106628%_ '1))))
                      (let ((_%owner106634%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner106634%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner106634%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again106625%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e106640%_
                 (let ((__tmp112037
                        (let ()
                          (declare (not safe))
                          (##type-id _%type106616%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp112037 '#f))))
            (if _%$e106640%_
                ((lambda (_%klass106643%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass106643%_)
                 _%$e106640%_)
                (let _%loop106646%_ ((_%super106648%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type106616%_)))
                                     (_%hierarchy106649%_ '()))
                  (if (not _%super106648%_)
                      (let _%loop106652%_ ((_%rest106654%_ _%hierarchy106649%_)
                                           (_%precedence-list106655%_ '()))
                        (let* ((_%rest106656106664%_ _%rest106654%_)
                               (_%else106658106674%_
                                (lambda ()
                                  (let ((_%klass106672%_
                                         (_%make-shadow-class106621%_
                                          _%type106616%_
                                          _%precedence-list106655%_)))
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
                                    _%klass106672%_)))
                               (_%K106660106688%_
                                (lambda (_%rest106677%_ _%type106678%_)
                                  (let ((_%$e106680%_
                                         (let ((__tmp112038
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type106678%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp112038
                                            '#f))))
                                    (if _%$e106680%_
                                        ((lambda (_%klass106683%_)
                                           (_%loop106652%_
                                            _%rest106677%_
                                            (cons _%klass106683%_
                                                  _%precedence-list106655%_)))
                                         _%$e106680%_)
                                        (let ((_%klass106686%_
                                               (_%make-shadow-class106621%_
                                                _%type106678%_
                                                _%precedence-list106655%_)))
                                          (_%loop106652%_
                                           _%rest106677%_
                                           (cons _%klass106686%_
                                                 _%precedence-list106655%_))))))))
                          (if (pair? _%rest106656106664%_)
                              (let ((_%hd106661106691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106656106664%_)))
                                    (_%tl106662106693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106656106664%_))))
                                (let* ((_%type106696%_ _%hd106661106691%_)
                                       (_%rest106698%_ _%tl106662106693%_))
                                  (_%K106660106688%_
                                   _%rest106698%_
                                   _%type106696%_)))
                              (_%else106658106674%_))))
                      (_%loop106646%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super106648%_))
                       (cons _%super106648%_ _%hierarchy106649%_)))))))))
    (define __shadow-class__0
      (lambda (_%type106716%_)
        (let ((_%properties106718%_ '()))
          (__shadow-class__% _%type106716%_ _%properties106718%_))))
    (define __shadow-class
      (lambda _g112039_
        (let ((_g112040_ (let () (declare (not safe)) (##length _g112039_))))
          (cond ((let () (declare (not safe)) (##fx= _g112040_ 1))
                 (apply __shadow-class__0 _g112039_))
                ((let () (declare (not safe)) (##fx= _g112040_ 2))
                 (apply __shadow-class__% _g112039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g112039_))))))
    (define __type
      (let* ((_%tb106604%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e106606%_ _%tb106604%_))
        (if (eq? '2 _%$e106606%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e106606%_)
                (let ((_%flonum-self-tagging-tags106609%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits106610%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e106612%_ _%flonum-self-tagging-tags106609%_))
                    (if (eq? '0 _%$e106612%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits106610%_ '2))
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
                        (if (eq? '1 _%$e106612%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits106610%_ '2))
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
                            (if (eq? '2 _%$e106612%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e106612%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e106612%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags106609%_))))))))
                (error '"unexpected tag width" _%tb106604%_)))))
    (define __class
      (let* ((_%len106557%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv106559%_
              (let () (declare (not safe)) (##make-vector _%len106557%_ '#f))))
        (let _%loop106562%_ ((_%i106564%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i106564%_ _%len106557%_))
              (let* ((_%t106566%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i106564%_)))
                     (_%f106601%_
                      (if (eq? _%t106566%_ 'undefined)
                          (lambda (_%obj106569%_)
                            (error '"object type is undefined" _%obj106569%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t106566%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj106572%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t106566%_))
                              (if (eq? _%t106566%_ 'subtyped)
                                  (lambda (_%obj106576%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st106579%_
                                           (##subtype _%obj106576%_)))
                                      (if (##fx= _%st106579%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass106582%_
                                                 (##structure-type
                                                  _%obj106576%_)))
                                            (if (##structure-instance-of?
                                                 _%klass106582%_
                                                 'class)
                                                _%klass106582%_
                                                (__shadow-class__0
                                                 _%klass106582%_)))
                                          (if (##fx= _%st106579%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj106576%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e106585%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st106579%_)))
                                                (if _%$e106585%_
                                                    (__system-class
                                                     _%$e106585%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st106579%_
                                                           'object:
                                                           _%obj106576%_)))))))
                                  (if (eq? _%t106566%_ 'special)
                                      (lambda (_%obj106590%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj106590%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj106590%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj106590%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj106590%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj106590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj106590%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t106566%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv106559%_ _%i106564%_ _%f106601%_))
                (_%loop106562%_
                 (let () (declare (not safe)) (##fx+ _%i106564%_ '1))))
              _%cv106559%_))))
    (define type-of
      (lambda (_%obj106553%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj106553%_)))))
    (define class-of
      (lambda (_%obj106544%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t106548%_ (##type _%obj106544%_))
                 (_%f106550%_ (##vector-ref __class _%t106548%_)))
            (_%f106550%_ _%obj106544%_)))))
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
      (lambda (_%id106538%_)
        (let ((_%$e106540%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id106538%_ '#f))))
          (if _%$e106540%_
              _%$e106540%_
              (error '"unknown system class" _%id106538%_)))))
    (define __make-system-class
      (lambda (_%id106532%_ _%super106533%_ _%properties106534%_)
        (let ((_%klass106536%_
               (make-class-type
                _%id106532%_
                _%id106532%_
                _%super106533%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties106534%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id106532%_
             _%klass106536%_))
          _%klass106536%_)))))
