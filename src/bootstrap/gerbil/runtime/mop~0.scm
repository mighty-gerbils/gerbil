(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771025393)
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
      (let ((_%flags134947%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties134948%_ '((direct-slots:) (system: . #t)))
            (_%slot-table134949%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags134947%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table134949%_
           _%properties134948%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots134904%_
              '(id name
                   flags
                   super
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector134906%_ (list->vector (cons '#f _%slots134904%_)))
             (_%slot-table134932%_
              (let ((_%slot-table134908%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp137974
                       (lambda (_%slot134910%_ _%field134911%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table134908%_
                            _%slot134910%_
                            _%field134911%_))
                         (let ((__tmp137975
                                (let ((_%sym134913%_ _%slot134910%_))
                                  (if (symbol? _%sym134913%_)
                                      (let ((_%sym134918%_ _%sym134913%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym134918%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym134913%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table134908%_
                            __tmp137975
                            _%field134911%_))))
                      (__tmp137972
                       (let ((__tmp137973
                              (let ()
                                (declare (not safe))
                                (##length _%slots134904%_))))
                         (declare (not safe))
                         (##iota __tmp137973 '1))))
                  (declare (not safe))
                  (##for-each __tmp137974 _%slots134904%_ __tmp137972))
                _%slot-table134908%_))
             (_%flags134934%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields134940%_
              (list->vector
               (let ((__tmp137976
                      (map (lambda (_%g134935134937%_)
                             (list _%g134935134937%_ '5 '#f))
                           (drop _%slots134904%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp137976))))
             (_%properties134942%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots134904%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t134944%_
              (let ((__tmp137977 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags134934%_
                 ##type-type
                 _%fields134940%_
                 __tmp137977
                 _%slot-vector134906%_
                 _%slot-table134932%_
                 _%properties134942%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t134944%_ _%t134944%_))
        _%t134944%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags134900%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties134901%_ '((direct-slots:) (system: . #t)))
            (_%slot-table134902%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp137978 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags134900%_
           '#f
           '#()
           __tmp137978
           '#(#f)
           _%slot-table134902%_
           _%properties134901%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass134888%_)
        (let ((_%klass134891%_ _%klass134888%_))
          (declare (not safe))
          (##structure-type _%klass134891%_))))
    (define class-type
      (lambda (_%klass120591%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120591%_ 'class))
            (let ((_%klass120595%_ _%klass120591%_))
              (__class-type _%klass120595%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass120591%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj134886%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj134886%_ 'class))))
    (define __class-type=?
      (lambda (_%x134865%_ _%y134866%_)
        (let* ((_%x134869%_ _%x134865%_) (_%y134877%_ _%y134866%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x134869%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y134877%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x120725%_ _%y120726%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x120725%_ 'class))
            (let ((_%x120730%_ _%x120725%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y120726%_ 'class))
                  (let ((_%y120740%_ _%y120726%_))
                    (__class-type=? _%x120730%_ _%y120740%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y120726%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x120725%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type134853%_)
        (let* ((_%type134856%_ _%type134853%_)
               (__tmp137979
                (let ((__tmp137980
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type134856%_))))
                  (declare (not safe))
                  (##fxand __tmp137980 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp137979 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type121172%_)
        (if (let () (declare (not safe)) (##type? _%type121172%_))
            (let ((_%type121176%_ _%type121172%_))
              (__type-opaque? _%type121176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type121172%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass134841%_)
        (let* ((_%klass134844%_ _%klass134841%_)
               (__tmp137981
                (let ((__tmp137982
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134844%_))))
                  (declare (not safe))
                  (##fxand __tmp137982 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp137981 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass121306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121306%_ 'class))
            (let ((_%klass121310%_ _%klass121306%_))
              (__class-type-opaque? _%klass121310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass121306%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type134829%_)
        (let* ((_%type134832%_ _%type134829%_)
               (__tmp137983
                (let ((__tmp137984
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type134832%_))))
                  (declare (not safe))
                  (##fxand __tmp137984 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp137983 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type121440%_)
        (if (let () (declare (not safe)) (##type? _%type121440%_))
            (let ((_%type121444%_ _%type121440%_))
              (__type-extensible? _%type121444%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type121440%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type134817%_)
        (let* ((_%type134820%_ _%type134817%_)
               (__tmp137985
                (let ((__tmp137986
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type134820%_))))
                  (declare (not safe))
                  (##fxand __tmp137986 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp137985 '0))))
    (define class-type-final?
      (lambda (_%type121574%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type121574%_ 'class))
            (let ((_%type121578%_ _%type121574%_))
              (__class-type-final? _%type121578%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type121574%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass134805%_)
        (let* ((_%klass134808%_ _%klass134805%_)
               (__tmp137987
                (let ((__tmp137988
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134808%_))))
                  (declare (not safe))
                  (##fxand __tmp137988 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp137987 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass121708%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121708%_ 'class))
            (let ((_%klass121712%_ _%klass121708%_))
              (__class-type-struct? _%klass121712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass121708%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass134793%_)
        (let* ((_%klass134796%_ _%klass134793%_)
               (__tmp137989
                (let ((__tmp137990
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134796%_))))
                  (declare (not safe))
                  (##fxand __tmp137990 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp137989 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass121842%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121842%_ 'class))
            (let ((_%klass121846%_ _%klass121842%_))
              (__class-type-sealed? _%klass121846%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass121842%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass134781%_)
        (let* ((_%klass134784%_ _%klass134781%_)
               (__tmp137991
                (let ((__tmp137992
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134784%_))))
                  (declare (not safe))
                  (##fxand __tmp137992 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp137991 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass121976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121976%_ 'class))
            (let ((_%klass121980%_ _%klass121976%_))
              (__class-type-metaclass? _%klass121980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass121976%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass134769%_)
        (let* ((_%klass134772%_ _%klass134769%_)
               (__tmp137993
                (let ((__tmp137994
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134772%_))))
                  (declare (not safe))
                  (##fxand __tmp137994 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp137993 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass122110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122110%_ 'class))
            (let ((_%klass122114%_ _%klass122110%_))
              (__class-type-system? _%klass122114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass122110%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass134757%_)
        (let* ((_%klass134760%_ _%klass134757%_)
               (__tmp137995
                (let ((__tmp137996
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass134760%_))))
                  (declare (not safe))
                  (##fxand __tmp137996 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp137995 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass122244%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122244%_ 'class))
            (let ((_%klass122248%_ _%klass122244%_))
              (__class-type-acyclic? _%klass122248%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass122244%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id134564%_
               _%type-name134565%_
               _%type-super134566%_
               _%precedence-list134567%_
               _%slot-vector134568%_
               _%properties134569%_
               _%constructor134570%_
               _%slot-table134571%_
               _%methods134572%_)
        (letrec ((_%make-props!134575%_
                  (lambda (_%key134707%_)
                    (letrec* ((_%ht134709%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!134710%_
                               (lambda (_%ht134750%_ _%slots134751%_)
                                 (for-each
                                  (lambda (_%g134752134754%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht134750%_
                                       _%g134752134754%_
                                       '#t)))
                                  _%slots134751%_)))
                              (_%put-alist!134711%_
                               (lambda (_%ht134739%_
                                        _%key134740%_
                                        _%alist134741%_)
                                 (let ((_%$e134743%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key134740%_
                                           _%alist134741%_))))
                                   (if _%$e134743%_
                                       ((lambda (_%g134745134747%_)
                                          (_%put-slots!134710%_
                                           _%ht134739%_
                                           _%g134745134747%_))
                                        _%$e134743%_)
                                       '#!void)))))
                      (_%put-alist!134711%_
                       _%ht134709%_
                       _%key134707%_
                       _%properties134569%_)
                      (for-each
                       (lambda (_%mixin134713%_)
                         (let ((_%alist134715%_
                                (##structure-ref
                                 _%mixin134713%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist134715%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key134707%_
                                           _%alist134715%_))))
                               (_%put-slots!134710%_
                                _%ht134709%_
                                (let ((_%klass134720%_ _%mixin134713%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass134720%_
                                         'class))
                                      (let ((_%klass134725%_ _%klass134720%_))
                                        (__class-type-slot-list
                                         _%klass134725%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass134720%_)
                                        '#!void))))
                               (_%put-alist!134711%_
                                _%ht134709%_
                                _%key134707%_
                                _%alist134715%_))))
                       _%precedence-list134567%_)
                      _%ht134709%_))))
          (let* ((_%transparent?134577%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties134569%_)))
                 (_%all-slots-printable?134582%_
                  (let ((_%$e134579%_ _%transparent?134577%_))
                    (if _%$e134579%_
                        _%$e134579%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties134569%_))))))
                 (_%printable134584%_
                  (if (not _%all-slots-printable?134582%_)
                      (_%make-props!134575%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?134589%_
                  (let ((_%$e134586%_ _%transparent?134577%_))
                    (if _%$e134586%_
                        _%$e134586%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties134569%_))))))
                 (_%equalable134591%_
                  (if (not _%all-slots-equalable?134589%_)
                      (_%make-props!134575%_ 'equal:)
                      '#f))
                 (_%first-new-field134593%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super134566%_ 'class))
                      (let ((__tmp137997
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super134566%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp137997))
                      '1))
                 (_%field-info-length134595%_
                  (let ((__tmp137998
                         (let ((__tmp137999
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector134568%_))))
                           (declare (not safe))
                           (##fx- __tmp137999 _%first-new-field134593%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp137998)))
                 (_%field-info134597%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length134595%_ '#f)))
                 (_%struct?134599%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties134569%_)))
                 (_%final?134601%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties134569%_)))
                 (_%metaclass134608%_
                  (let ((_%metaclass134602134604%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties134569%_))))
                    (if _%metaclass134602134604%_
                        (let ((_%metaclass134606%_ _%metaclass134602134604%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass134606%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id134564%_
                                     'metaclass:
                                     _%metaclass134606%_))
                          _%metaclass134606%_)
                        '#f)))
                 (_%system?134610%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties134569%_)))
                 (_%opaque?134649%_
                  (if (or _%transparent?134577%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties134569%_)))
                      '#f
                      (let ((_%$e134615%_ (not _%type-super134566%_)))
                        (if _%$e134615%_
                            _%$e134615%_
                            (let ((_%type134618%_ _%type-super134566%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type134618%_))
                                  (let ((_%type134623%_ _%type134618%_))
                                    (__type-opaque? _%type134623%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type134618%_)
                                    '#!void)))))))
                 (_%acyclic?134651%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties134569%_)))
                 (_%type-flags134653%_
                  (let ((__tmp138005
                         (if _%final?134601%_ '0 type-flag-extensible))
                        (__tmp138004
                         (if _%opaque?134649%_ type-flag-opaque '0))
                        (__tmp138003
                         (if _%struct?134599%_ class-type-flag-struct '0))
                        (__tmp138002
                         (if _%metaclass134608%_ class-type-flag-metaclass '0))
                        (__tmp138001
                         (if _%system?134610%_ class-type-flag-system '0))
                        (__tmp138000
                         (if _%acyclic?134651%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp138005
                             __tmp138004
                             __tmp138003
                             __tmp138002
                             __tmp138001
                             __tmp138000)))
                 (_%precedence-list134661%_
                  (let ((_%$e134655%_ (memq t::t _%precedence-list134567%_)))
                    (if _%$e134655%_
                        ((lambda (_%tail134658%_)
                           (if (null? (cdr _%tail134658%_))
                               _%precedence-list134567%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list134567%_)))
                         _%$e134655%_)
                        (let ((__tmp138006 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list134567%_ __tmp138006))))))
            (let _%loop134664%_ ((_%i134666%_ _%first-new-field134593%_)
                                 (_%j134667%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j134667%_ _%field-info-length134595%_))
                  (let* ((_%slot134669%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector134568%_ _%i134666%_)))
                         (_%flags134677%_
                          (if _%transparent?134577%_
                              '0
                              (let ((__tmp138008
                                     (if (or _%all-slots-printable?134582%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable134584%_
                                                _%slot134669%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp138007
                                     (if (or _%all-slots-equalable?134589%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable134591%_
                                                _%slot134669%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp138008 __tmp138007)))))
                    (vector-set!
                     _%field-info134597%_
                     _%j134667%_
                     _%slot134669%_)
                    (vector-set!
                     _%field-info134597%_
                     (let () (declare (not safe)) (##fx+ _%j134667%_ '1))
                     _%flags134677%_)
                    (_%loop134664%_
                     (let () (declare (not safe)) (##fx+ _%i134666%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j134667%_ '3))))
                  '#!void))
            (if _%metaclass134608%_
                (let ((_%val134704%_
                       (let* ((_%klass134680%_ _%metaclass134608%_)
                              (_%args134683%_
                               (list _%type-id134564%_
                                     _%type-name134565%_
                                     _%type-flags134653%_
                                     _%type-super134566%_
                                     _%field-info134597%_
                                     _%precedence-list134661%_
                                     _%slot-vector134568%_
                                     _%slot-table134571%_
                                     _%properties134569%_
                                     _%constructor134570%_
                                     _%methods134572%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass134680%_
                                'class))
                             (let ((_%klass134688%_ _%klass134680%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass134688%_
                                        _%args134683%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass134680%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val134704%_ 'class))
                      _%val134704%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val134704%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id134564%_
                   _%type-name134565%_
                   _%type-flags134653%_
                   _%type-super134566%_
                   _%field-info134597%_
                   _%precedence-list134661%_
                   _%slot-vector134568%_
                   _%slot-table134571%_
                   _%properties134569%_
                   _%constructor134570%_
                   _%methods134572%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass134562%_)
        (##structure-ref _%klass134562%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass134560%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134560%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass134557%_ _%val134558%_)
        (##structure-set! _%klass134557%_ _%val134558%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass134552%_ _%val134554%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134552%_
           _%val134554%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass134550%_)
        (##structure-ref _%klass134550%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass134548%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134548%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass134545%_ _%val134546%_)
        (##structure-set! _%klass134545%_ _%val134546%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass134540%_ _%val134542%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134540%_
           _%val134542%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass134538%_)
        (##structure-ref _%klass134538%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass134536%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134536%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass134533%_ _%val134534%_)
        (##structure-set! _%klass134533%_ _%val134534%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass134528%_ _%val134530%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134528%_
           _%val134530%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass134526%_)
        (##structure-ref _%klass134526%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass134524%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134524%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass134521%_ _%val134522%_)
        (##structure-set! _%klass134521%_ _%val134522%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass134516%_ _%val134518%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134516%_
           _%val134518%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass134514%_)
        (##structure-ref _%klass134514%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass134512%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134512%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass134509%_ _%val134510%_)
        (##structure-set! _%klass134509%_ _%val134510%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass134504%_ _%val134506%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134504%_
           _%val134506%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass134502%_)
        (##structure-ref _%klass134502%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass134500%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134500%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass134497%_ _%val134498%_)
        (##structure-set!
         _%klass134497%_
         _%val134498%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass134492%_ _%val134494%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134492%_
           _%val134494%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass134490%_)
        (##structure-ref _%klass134490%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass134488%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134488%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass134485%_ _%val134486%_)
        (##structure-set!
         _%klass134485%_
         _%val134486%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass134480%_ _%val134482%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134480%_
           _%val134482%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass134478%_)
        (##structure-ref _%klass134478%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass134476%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134476%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass134473%_ _%val134474%_)
        (##structure-set!
         _%klass134473%_
         _%val134474%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass134468%_ _%val134470%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134468%_
           _%val134470%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass134466%_)
        (##structure-ref _%klass134466%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass134464%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134464%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass134461%_ _%val134462%_)
        (##structure-set!
         _%klass134461%_
         _%val134462%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass134456%_ _%val134458%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134456%_
           _%val134458%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass134454%_)
        (##structure-ref _%klass134454%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass134452%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134452%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass134449%_ _%val134450%_)
        (##structure-set!
         _%klass134449%_
         _%val134450%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass134444%_ _%val134446%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134444%_
           _%val134446%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass134442%_)
        (##structure-ref _%klass134442%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass134440%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass134440%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass134437%_ _%val134438%_)
        (##structure-set!
         _%klass134437%_
         _%val134438%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass134432%_ _%val134434%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134432%_
           _%val134434%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass134430%_)
        (##structure-ref _%klass134430%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass134428%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134428%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass134425%_ _%val134426%_)
        (##structure-set!
         _%klass134425%_
         _%val134426%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass134420%_ _%val134422%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134420%_
           _%val134422%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass134418%_)
        (##structure-ref _%klass134418%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass134416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass134416%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass134413%_ _%val134414%_)
        (##structure-set!
         _%klass134413%_
         _%val134414%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass134408%_ _%val134410%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134408%_
           _%val134410%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type134119%_)
        (letrec ((_%__fields->list134249%_
                  (lambda (_%fields134357%_ _%r134358%_)
                    (let* ((_%fields134361%_ _%fields134357%_)
                           (_%r134369%_ _%r134358%_)
                           (_%fields-len134378%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields134361%_))))
                      (let _%loop134380%_ ((_%i134382%_ '0)
                                           (_%r134383%_ _%r134369%_))
                        (let* ((_%i134386%_ _%i134382%_)
                               (_%r134399%_ _%r134383%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i134386%_ _%fields-len134378%_))
                              (_%loop134380%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i134386%_ '3))
                               (cons (vector-ref _%fields134361%_ _%i134386%_)
                                     _%r134399%_))
                              _%r134399%_))))))
                 (_%fields->list134250%_
                  (lambda (_%fields134336%_ _%r134337%_)
                    (let* ((_%fields134340%_ _%fields134336%_)
                           (_%r134348%_ _%r134337%_))
                      (_%__fields->list134249%_
                       _%fields134340%_
                       _%r134348%_)))))
          (let _%loop134252%_ ((_%type134254%_ _%type134119%_)
                               (_%r134255%_ '()))
            (let ((_%r134258%_ _%r134255%_))
              (if (let () (declare (not safe)) (##type? _%type134254%_))
                  (if (eq? _%type134254%_ ##type-type)
                      (reverse! _%r134258%_)
                      (let ((_%$e134270%_
                             (let ()
                               (declare (not safe))
                               (##type-super _%type134254%_))))
                        (if _%$e134270%_
                            ((lambda (_%super134273%_)
                               (_%loop134252%_
                                _%super134273%_
                                (let* ((_%fields134276%_
                                        (let ()
                                          (declare (not safe))
                                          (##type-fields _%type134254%_)))
                                       (_%r134279%_ _%r134258%_)
                                       (_%fields134283%_ _%fields134276%_)
                                       (_%r134299%_ _%r134279%_))
                                  (_%__fields->list134249%_
                                   _%fields134283%_
                                   _%r134299%_))))
                             _%$e134270%_)
                            (reverse!
                             (let* ((_%fields134309%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-fields _%type134254%_)))
                                    (_%r134312%_ _%r134258%_)
                                    (_%fields134316%_ _%fields134309%_)
                                    (_%r134326%_ _%r134312%_))
                               (_%__fields->list134249%_
                                _%fields134316%_
                                _%r134326%_))))))
                  (reverse! _%r134258%_)))))))
    (define __class-type-slot-list
      (lambda (_%klass134107%_)
        (let ((_%klass134110%_ _%klass134107%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass134110%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass122768%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122768%_ 'class))
            (let ((_%klass122772%_ _%klass122768%_))
              (__class-type-slot-list _%klass122772%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@370.29-370.34"
               'contract:
               'class-type?
               'value:
               _%klass122768%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass134095%_)
        (let* ((_%klass134098%_ _%klass134095%_)
               (__tmp138009
                (let ((__tmp138010
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134098%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp138010))))
          (declare (not safe))
          (##fx- __tmp138009 '1))))
    (define class-type-field-count
      (lambda (_%klass122902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122902%_ 'class))
            (let ((_%klass122906%_ _%klass122902%_))
              (__class-type-field-count _%klass122906%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@372.31-372.36"
               'contract:
               'class-type?
               'value:
               _%klass122902%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass134083%_)
        (let ((_%klass134086%_ _%klass134083%_))
          (let ((__tmp138011
                 (let ((__tmp138012
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass134086%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp138012))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass134086%_
             __tmp138011
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass123036%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123036%_ 'class))
            (let ((_%klass123040%_ _%klass123036%_))
              (__class-type-seal! _%klass123040%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@375.25-375.30"
               'contract:
               'class-type?
               'value:
               _%klass123036%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass134016%_)
        (let ((_%klass134019%_ _%klass134016%_))
          (letrec ((_%get-field-vector134028%_
                    (lambda (_%type134067%_)
                      (let _%loop134069%_ ((_%type134071%_ _%type134067%_))
                        (let* ((_%fields134073%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type134071%_)))
                               (_%$e134075%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type134071%_))))
                          (if _%$e134075%_
                              ((lambda (_%super134078%_)
                                 (let ((_%super-fields134080%_
                                        (_%loop134069%_ _%super134078%_)))
                                   (vector-append
                                    _%super-fields134080%_
                                    _%fields134073%_)))
                               _%$e134075%_)
                              _%fields134073%_)))))
                   (_%get-printable-slot-alist134029%_
                    (lambda (_%type134050%_)
                      (let* ((_%fields134052%_
                              (_%get-field-vector134028%_ _%type134050%_))
                             (_%count134054%_
                              (vector-length _%fields134052%_)))
                        (let _%loop134057%_ ((_%i134059%_ '3)
                                             (_%offset134060%_ '1)
                                             (_%r134061%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i134059%_ _%count134054%_))
                              (let ((_%slot-name134063%_
                                     (vector-ref _%fields134052%_ _%i134059%_))
                                    (_%slot-flags134064%_
                                     (vector-ref
                                      _%fields134052%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i134059%_ '1))))
                                    (_%next-i134065%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i134059%_ '2))))
                                (if (let ((__tmp138013
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags134064%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp138013 '0))
                                    (_%loop134057%_
                                     _%next-i134065%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset134060%_ '1))
                                     _%r134061%_)
                                    (_%loop134057%_
                                     _%next-i134065%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset134060%_ '1))
                                     (cons (cons _%slot-name134063%_
                                                 _%offset134060%_)
                                           _%r134061%_))))
                              (reverse! _%r134061%_))))))
                   (_%get-printable-slots!134030%_
                    (lambda (_%klass134045%_ _%type134046%_)
                      (let ((_%printable134048%_
                             (_%get-printable-slot-alist134029%_
                              _%type134046%_)))
                        (##structure-set!
                         _%klass134045%_
                         (cons (cons 'printable-slots: _%printable134048%_)
                               (##structure-ref
                                _%klass134045%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable134048%_))))
            (let* ((_%props134032%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass134019%_ '9 '#f '#f)))
                   (_%$e134034%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props134032%_))))
              (if _%$e134034%_
                  _%$e134034%_
                  (let ((_%$e134037%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props134032%_))))
                    (if _%$e134037%_
                        ((lambda (_%g134039134041%_)
                           (_%get-printable-slots!134030%_
                            _%klass134019%_
                            _%g134039134041%_))
                         _%$e134037%_)
                        (_%get-printable-slots!134030%_
                         _%klass134019%_
                         _%klass134019%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass123170%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123170%_ 'class))
            (let ((_%klass123174%_ _%klass123170%_))
              (__class-type-printable-slots _%klass123174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@382.35-382.40"
               'contract:
               'class-type?
               'value:
               _%klass123170%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct133985%_ _%maybe-super-struct133986%_)
        (let* ((_%maybe-sub-struct133989%_ _%maybe-sub-struct133985%_)
               (_%maybe-super-struct133997%_ _%maybe-super-struct133986%_)
               (_%maybe-super-struct-id134006%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct133997%_))))
          (let _%lp134008%_ ((_%super-struct134010%_
                              _%maybe-sub-struct133989%_))
            (if (not _%super-struct134010%_)
                '#f
                (if (eq? _%maybe-super-struct-id134006%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct134010%_)))
                    '#t
                    (_%lp134008%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct134010%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct123304%_ _%maybe-super-struct123305%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct123304%_ 'class))
            (let ((_%maybe-sub-struct123309%_ _%maybe-sub-struct123304%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct123305%_
                     'class))
                  (let ((_%maybe-super-struct123319%_
                         _%maybe-super-struct123305%_))
                    (__substruct?
                     _%maybe-sub-struct123309%_
                     _%maybe-super-struct123319%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@428.47-428.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct123305%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@428.19-428.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct123304%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass133963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133963%_ 'class))
            (if (let* ((_%klass133966%_ _%klass133963%_)
                       (_%klass133971%_ _%klass133966%_))
                  (__class-type-struct? _%klass133971%_))
                _%klass133963%_
                (let () (declare (not safe)) (##type-super _%klass133963%_)))
            (if (not _%klass133963%_)
                '#f
                (error '"not a class or false" _%klass133963%_)))))
    (define base-struct/2
      (lambda (_%klass1133886%_ _%klass2133887%_)
        (let ((_%s1133889%_ (base-struct/1 _%klass1133886%_))
              (_%s2133890%_ (base-struct/1 _%klass2133887%_)))
          (if (or (not _%s1133889%_)
                  (and _%s2133890%_
                       (let* ((_%maybe-sub-struct133895%_ _%s1133889%_)
                              (_%maybe-super-struct133898%_ _%s2133890%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct133895%_
                                'class))
                             (let ((_%maybe-sub-struct133903%_
                                    _%maybe-sub-struct133895%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct133898%_
                                      'class))
                                   (let ((_%maybe-super-struct133917%_
                                          _%maybe-super-struct133898%_))
                                     (__substruct?
                                      _%maybe-sub-struct133903%_
                                      _%maybe-super-struct133917%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct133898%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct133895%_)
                               '#!void)))))
              _%s2133890%_
              (if (or (not _%s2133890%_)
                      (and _%s1133889%_
                           (let* ((_%maybe-sub-struct133931%_ _%s2133890%_)
                                  (_%maybe-super-struct133934%_ _%s1133889%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct133931%_
                                    'class))
                                 (let ((_%maybe-sub-struct133939%_
                                        _%maybe-sub-struct133931%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct133934%_
                                          'class))
                                       (let ((_%maybe-super-struct133951%_
                                              _%maybe-super-struct133934%_))
                                         (__substruct?
                                          _%maybe-sub-struct133939%_
                                          _%maybe-super-struct133951%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct133934%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct133931%_)
                                   '#!void)))))
                  _%s1133889%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1133886%_
                         _%klass2133887%_
                         _%s1133889%_
                         _%s2133890%_))))))
    (define base-struct/list
      (lambda (_%all-supers133771%_)
        (let* ((_%all-supers133772133797%_ _%all-supers133771%_)
               (_%E133777133801%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers133772133797%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K133795133883%_ (lambda () '#f))
                (_%K133792133869%_
                 (lambda (_%x133867%_) (base-struct/1 _%x133867%_)))
                (_%K133787133846%_
                 (lambda (_%y133843%_ _%x133844%_)
                   (base-struct/2 _%x133844%_ _%y133843%_)))
                (_%K133778133808%_
                 (lambda (_%y133805%_ _%x133806%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x133806%_ _%y133805%_)))))
            (let* ((_%__match136786136787%_
                    (lambda (_%hd133779133811%_ _%tl133780133813%_)
                      (let ((_%x133816%_ _%hd133779133811%_))
                        (letrec ((_%splice-rest133782133818%_
                                  (lambda (_%rest133786133825%_ _%y133827%_)
                                    (if (null? _%rest133786133825%_)
                                        (_%K133778133808%_
                                         _%y133827%_
                                         _%x133816%_)
                                        (_%E133777133801%_))))
                                 (_%splice-try133784133820%_
                                  (lambda (_%hd133785133829%_
                                           _%rest133786133831%_
                                           _%y133781133832%_)
                                    (let ((_%y133834%_ _%hd133785133829%_))
                                      (_%splice-loop133783133822%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest133786133831%_))
                                       (cons _%y133834%_ _%y133781133832%_)))))
                                 (_%splice-loop133783133822%_
                                  (lambda (_%rest133786133836%_
                                           _%y133781133837%_)
                                    (if (pair? _%rest133786133836%_)
                                        (_%splice-try133784133820%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest133786133836%_))
                                         _%rest133786133836%_
                                         _%y133781133837%_)
                                        (_%splice-rest133782133818%_
                                         _%rest133786133836%_
                                         (reverse _%y133781133837%_))))))
                          (_%splice-loop133783133822%_
                           _%tl133780133813%_
                           '())))))
                   (_%try-match133774133879%_
                    (lambda ()
                      (if (pair? _%all-supers133772133797%_)
                          (let ((_%tl133794133874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers133772133797%_)))
                                (_%hd133793133872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers133772133797%_))))
                            (if (null? _%tl133794133874%_)
                                (let ((_%x133877%_ _%hd133793133872%_))
                                  (base-struct/1 _%x133877%_))
                                (if (pair? _%tl133794133874%_)
                                    (let ((_%tl133791133858%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl133794133874%_)))
                                          (_%hd133790133856%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl133794133874%_))))
                                      (if (null? _%tl133791133858%_)
                                          (let ((_%x133854%_
                                                 _%hd133793133872%_)
                                                (_%y133861%_
                                                 _%hd133790133856%_))
                                            (_%K133787133846%_
                                             _%y133861%_
                                             _%x133854%_))
                                          (_%__match136786136787%_
                                           _%hd133793133872%_
                                           _%tl133794133874%_)))
                                    (_%__match136786136787%_
                                     _%hd133793133872%_
                                     _%tl133794133874%_))))
                          (_%E133777133801%_)))))
              (if (null? _%all-supers133772133797%_)
                  (_%K133795133883%_)
                  (_%try-match133774133879%_)))))))
    (define base-struct
      (lambda _%all-supers133769%_ (base-struct/list _%all-supers133769%_)))
    (define find-super-constructor
      (lambda (_%super133720%_)
        (let _%lp133722%_ ((_%rest133724%_ _%super133720%_)
                           (_%constructor133725%_ '#f))
          (let* ((_%rest133726133734%_ _%rest133724%_)
                 (_%else133728133742%_ (lambda () _%constructor133725%_))
                 (_%K133730133757%_
                  (lambda (_%rest133745%_ _%hd133746%_)
                    (let ((_%$e133748%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd133746%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e133748%_
                          ((lambda (_%xconstructor133751%_)
                             (if (or (not _%constructor133725%_)
                                     (eq? _%constructor133725%_
                                          _%xconstructor133751%_))
                                 (_%lp133722%_
                                  _%rest133745%_
                                  _%xconstructor133751%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor133725%_
                                        _%xconstructor133751%_)))
                           _%$e133748%_)
                          (_%lp133722%_
                           _%rest133745%_
                           _%constructor133725%_))))))
            (if (pair? _%rest133726133734%_)
                (let ((_%hd133731133760%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133726133734%_)))
                      (_%tl133732133762%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133726133734%_))))
                  (let* ((_%hd133765%_ _%hd133731133760%_)
                         (_%rest133767%_ _%tl133732133762%_))
                    (_%K133730133757%_ _%rest133767%_ _%hd133765%_)))
                (_%else133728133742%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list133676%_ _%direct-slots133677%_)
        (let* ((_%next-slot133679%_ '1)
               (_%slot-table133681%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots133683%_ '(__class))
               (_%process-slot133707%_
                (lambda (_%slot133685%_)
                  (if (symbol? _%slot133685%_)
                      '#!void
                      (error '"invalid slot name" _%slot133685%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table133681%_
                              _%slot133685%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table133681%_
                           _%slot133685%_
                           _%next-slot133679%_))
                        (let ((__tmp138014
                               (let ((_%sym133687%_ _%slot133685%_))
                                 (if (symbol? _%sym133687%_)
                                     (let ((_%sym133692%_ _%sym133687%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym133692%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym133687%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table133681%_
                           __tmp138014
                           _%next-slot133679%_))
                        (set! _%r-slots133683%_
                              (cons _%slot133685%_ _%r-slots133683%_))
                        (set! _%next-slot133679%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot133679%_ '1))))
                      '#!void)))
               (_%process-slots133713%_
                (lambda (_%g133708133710%_)
                  (for-each _%process-slot133707%_ _%g133708133710%_))))
          (let ((__tmp138016
                 (lambda (_%mixin133716%_)
                   (_%process-slots133713%_
                    (let ((__tmp138017
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin133716%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp138017 '())))))
                (__tmp138015 (reverse _%class-precedence-list133676%_)))
            (declare (not safe))
            (##for-each __tmp138016 __tmp138015))
          (_%process-slots133713%_ _%direct-slots133677%_)
          (let ((_%slot-vector133718%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots133683%_)))))
            (values _%slot-vector133718%_ _%slot-table133681%_)))))
    (define __make-class-type
      (lambda (_%id133503%_
               _%name133504%_
               _%direct-supers133505%_
               _%direct-slots133506%_
               _%properties133507%_
               _%constructor133508%_)
        (let* ((_%id133511%_ _%id133503%_)
               (_%name133519%_ _%name133504%_)
               (_%direct-supers133527%_ _%direct-supers133505%_)
               (_%direct-slots133535%_ _%direct-slots133506%_)
               (_%properties133543%_ _%properties133507%_)
               (_%constructor133551%_ _%constructor133508%_))
          (let ((_%$e133585%_
                 (let* ((_%pred133563%_
                         (lambda (_%$obj133560%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj133560%_
                                   'class)))))
                        (_%lst133566%_ _%direct-supers133527%_)
                        (_%pred133571%_ _%pred133563%_))
                   (declare (not safe))
                   (__find _%pred133571%_ _%lst133566%_))))
            (if _%$e133585%_
                ((lambda (_%g133587133589%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g133587133589%_))
                 _%$e133585%_)
                (let ((_%$e133612%_
                       (let* ((_%pred133592%_ __class-type-final?)
                              (_%lst133595%_ _%direct-supers133527%_)
                              (_%pred133600%_ _%pred133592%_))
                         (declare (not safe))
                         (__find _%pred133600%_ _%lst133595%_))))
                  (if _%$e133612%_
                      ((lambda (_%g133614133616%_)
                         (error '"Cannot extend final class"
                                _%g133614133616%_))
                       _%$e133612%_)
                      '#!void))))
          (let ((_g138018_ (compute-precedence-list _%direct-supers133527%_)))
            (begin
              (let ((_g138019_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g138018_)
                           (##values-length _g138018_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g138019_ 2)))
                    (error "Context expects 2 values" _g138019_)))
              (let ((_%precedence-list133619%_
                     (let () (declare (not safe)) (##values-ref _g138018_ 0)))
                    (_%struct-super133620%_
                     (let () (declare (not safe)) (##values-ref _g138018_ 1))))
                (let ((_g138020_
                       (compute-class-slots
                        _%precedence-list133619%_
                        _%direct-slots133535%_)))
                  (begin
                    (let ((_g138021_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g138020_)
                                 (##values-length _g138020_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g138021_ 2)))
                          (error "Context expects 2 values" _g138021_)))
                    (let ((_%slot-vector133622%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138020_ 0)))
                          (_%slot-table133623%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138020_ 1))))
                      (let* ((_%properties133625%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots133535%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers133527%_)
                                          _%properties133543%_)))
                             (_%constructor*133630%_
                              (let ((_%$e133627%_ _%constructor133551%_))
                                (if _%$e133627%_
                                    _%$e133627%_
                                    (find-super-constructor
                                     _%direct-supers133527%_))))
                             (_%precedence-list133673%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties133625%_))
                                      (memq object::t
                                            _%precedence-list133619%_))
                                  _%precedence-list133619%_
                                  (let _%loop133635%_ ((_%tail133637%_
                                                        _%precedence-list133619%_)
                                                       (_%head133638%_ '()))
                                    (let* ((_%tail133639133647%_
                                            _%tail133637%_)
                                           (_%else133641133655%_
                                            (lambda ()
                                              (let ((__tmp138022
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp138022
                                                 _%head133638%_))))
                                           (_%K133643133661%_
                                            (lambda (_%rest133658%_
                                                     _%hd133659%_)
                                              (if (eq? _%hd133659%_ t::t)
                                                  (let ((__tmp138023
                                                         (cons object::t
                                                               _%tail133637%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp138023
                                                     _%head133638%_))
                                                  (_%loop133635%_
                                                   _%rest133658%_
                                                   (cons _%hd133659%_
                                                         _%head133638%_))))))
                                      (if (pair? _%tail133639133647%_)
                                          (let ((_%hd133644133664%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail133639133647%_)))
                                                (_%tl133645133666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail133639133647%_))))
                                            (let* ((_%hd133669%_
                                                    _%hd133644133664%_)
                                                   (_%rest133671%_
                                                    _%tl133645133666%_))
                                              (_%K133643133661%_
                                               _%rest133671%_
                                               _%hd133669%_)))
                                          (_%else133641133655%_)))))))
                        (make-class-type-descriptor
                         _%id133511%_
                         _%name133519%_
                         _%struct-super133620%_
                         _%precedence-list133673%_
                         _%slot-vector133622%_
                         _%properties133625%_
                         _%constructor*133630%_
                         _%slot-table133623%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id123449%_
               _%name123450%_
               _%direct-supers123451%_
               _%direct-slots123452%_
               _%properties123453%_
               _%constructor123454%_)
        (if (symbol? _%id123449%_)
            (let ((_%id123458%_ _%id123449%_))
              (if (symbol? _%name123450%_)
                  (let ((_%name123468%_ _%name123450%_))
                    (if (list? _%direct-supers123451%_)
                        (let ((_%direct-supers123478%_
                               _%direct-supers123451%_))
                          (if (list? _%direct-slots123452%_)
                              (let ((_%direct-slots123488%_
                                     _%direct-slots123452%_))
                                (if (list? _%properties123453%_)
                                    (let ((_%properties123498%_
                                           _%properties123453%_))
                                      (if ((lambda (_%$obj123507%_)
                                             (or (not _%$obj123507%_)
                                                 (symbol? _%$obj123507%_)))
                                           _%constructor123454%_)
                                          (let ((_%constructor123514%_
                                                 _%constructor123454%_))
                                            (__make-class-type
                                             _%id123458%_
                                             _%name123468%_
                                             _%direct-supers123478%_
                                             _%direct-slots123488%_
                                             _%properties123498%_
                                             _%constructor123514%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@525.24-525.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor123454%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@524.24-524.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties123453%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@523.24-523.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots123452%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@522.24-522.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers123451%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@521.24-521.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name123450%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@520.24-520.26"
               'contract:
               'symbol?
               'value:
               _%id123449%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass133491%_)
        (let ((_%klass133494%_ _%klass133491%_))
          (cons _%klass133494%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133494%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass123644%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123644%_ 'class))
            (let ((_%klass123648%_ _%klass123644%_))
              (__class-precedence-list _%klass123648%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@558.30-558.35"
               'contract:
               'class-type?
               'value:
               _%klass123644%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers133488%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers133488%_))))
    (define __make-class-predicate
      (lambda (_%klass133404%_)
        (let* ((_%klass133407%_ _%klass133404%_)
               (_%tid133416%_
                (let () (declare (not safe)) (##type-id _%klass133407%_))))
          (if (let* ((_%type133418%_ _%klass133407%_)
                     (_%type133423%_ _%type133418%_))
                (__class-type-final? _%type133423%_))
              (lambda (_%g133437133439%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g133437133439%_
                   _%tid133416%_)))
              (if (let* ((_%klass133442%_ _%klass133407%_)
                         (_%klass133447%_ _%klass133442%_))
                    (__class-type-struct? _%klass133447%_))
                  (lambda (_%g133457133459%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g133457133459%_
                       _%tid133416%_)))
                  (lambda (_%g133462133464%_)
                    (let* ((_%klass133467%_ _%klass133407%_)
                           (_%obj133470%_ _%g133462133464%_)
                           (_%klass133475%_ _%klass133467%_))
                      (__class-instance? _%klass133475%_ _%obj133470%_))))))))
    (define make-class-predicate
      (lambda (_%klass123778%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123778%_ 'class))
            (let ((_%klass123782%_ _%klass123778%_))
              (__make-class-predicate _%klass123782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@570.29-570.34"
               'contract:
               'class-type?
               'value:
               _%klass123778%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass133338%_ _%slot133339%_)
        (let* ((_%klass133342%_ _%klass133338%_)
               (_%slot133350%_ _%slot133339%_)
               (_%field133359%_
                (let ((__tmp138024
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133342%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138024 _%slot133350%_ '#f))))
          (if (not _%field133359%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133342%_
                       'slot:
                       _%slot133350%_)
                '#!void)
              (if (let* ((_%type133363%_ _%klass133342%_)
                         (_%type133368%_ _%type133363%_))
                    (__class-type-final? _%type133368%_))
                  (make-final-slot-accessor
                   _%klass133342%_
                   _%slot133350%_
                   _%field133359%_)
                  (if (let* ((_%klass133383%_ _%klass133342%_)
                             (_%klass133388%_ _%klass133383%_))
                        (__class-type-struct? _%klass133388%_))
                      (make-struct-slot-accessor
                       _%klass133342%_
                       _%slot133350%_
                       _%field133359%_)
                      (if (let ((_%strukt133399%_
                                 (base-struct/1 _%klass133342%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133399%_
                                    'class))
                                 (let ((__tmp138025
                                        (let ((__tmp138026
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133399%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138026))))
                                   (declare (not safe))
                                   (##fx< _%field133359%_ __tmp138025))))
                          (make-struct-subclass-slot-accessor
                           _%klass133342%_
                           _%slot133350%_
                           _%field133359%_)
                          (make-class-cached-slot-accessor
                           _%klass133342%_
                           _%slot133350%_
                           _%field133359%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass124065%_ _%slot124066%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124065%_ 'class))
            (let ((_%klass124070%_ _%klass124065%_))
              (if (symbol? _%slot124066%_)
                  (let ((_%slot124080%_ _%slot124066%_))
                    (__make-class-slot-accessor
                     _%klass124070%_
                     _%slot124080%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@601.50-601.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124066%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@601.33-601.38"
               'contract:
               'class-type?
               'value:
               _%klass124065%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass133272%_ _%slot133273%_)
        (let* ((_%klass133276%_ _%klass133272%_)
               (_%slot133284%_ _%slot133273%_)
               (_%field133293%_
                (let ((__tmp138027
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133276%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138027 _%slot133284%_ '#f))))
          (if (not _%field133293%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133276%_
                       'slot:
                       _%slot133284%_)
                '#!void)
              (if (let* ((_%type133297%_ _%klass133276%_)
                         (_%type133302%_ _%type133297%_))
                    (__class-type-final? _%type133302%_))
                  (make-final-slot-mutator
                   _%klass133276%_
                   _%slot133284%_
                   _%field133293%_)
                  (if (let* ((_%klass133317%_ _%klass133276%_)
                             (_%klass133322%_ _%klass133317%_))
                        (__class-type-struct? _%klass133322%_))
                      (make-struct-slot-mutator
                       _%klass133276%_
                       _%slot133284%_
                       _%field133293%_)
                      (if (let ((_%strukt133333%_
                                 (base-struct/1 _%klass133276%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133333%_
                                    'class))
                                 (let ((__tmp138028
                                        (let ((__tmp138029
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133333%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138029))))
                                   (declare (not safe))
                                   (##fx< _%field133293%_ __tmp138028))))
                          (make-struct-subclass-slot-mutator
                           _%klass133276%_
                           _%slot133284%_
                           _%field133293%_)
                          (make-class-cached-slot-mutator
                           _%klass133276%_
                           _%slot133284%_
                           _%field133293%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass124210%_ _%slot124211%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124210%_ 'class))
            (let ((_%klass124215%_ _%klass124210%_))
              (if (symbol? _%slot124211%_)
                  (let ((_%slot124225%_ _%slot124211%_))
                    (__make-class-slot-mutator _%klass124215%_ _%slot124225%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@609.49-609.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124211%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@609.32-609.37"
               'contract:
               'class-type?
               'value:
               _%klass124210%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass133206%_ _%slot133207%_)
        (let* ((_%klass133210%_ _%klass133206%_)
               (_%slot133218%_ _%slot133207%_)
               (_%field133227%_
                (let ((__tmp138030
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133210%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138030 _%slot133218%_ '#f))))
          (if (not _%field133227%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133210%_
                       'slot:
                       _%slot133218%_)
                '#!void)
              (if (let* ((_%type133231%_ _%klass133210%_)
                         (_%type133236%_ _%type133231%_))
                    (__class-type-final? _%type133236%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass133210%_
                   _%slot133218%_
                   _%field133227%_)
                  (if (let* ((_%klass133251%_ _%klass133210%_)
                             (_%klass133256%_ _%klass133251%_))
                        (__class-type-struct? _%klass133256%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass133210%_
                       _%slot133218%_
                       _%field133227%_)
                      (if (let ((_%strukt133267%_
                                 (base-struct/1 _%klass133210%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133267%_
                                    'class))
                                 (let ((__tmp138031
                                        (let ((__tmp138032
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133267%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138032))))
                                   (declare (not safe))
                                   (##fx< _%field133227%_ __tmp138031))))
                          (make-struct-slot-unchecked-accessor
                           _%klass133210%_
                           _%slot133218%_
                           _%field133227%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass133210%_
                           _%slot133218%_
                           _%field133227%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass124355%_ _%slot124356%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124355%_ 'class))
            (let ((_%klass124360%_ _%klass124355%_))
              (if (symbol? _%slot124356%_)
                  (let ((_%slot124370%_ _%slot124356%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass124360%_
                     _%slot124370%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@617.60-617.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124356%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.43-617.48"
               'contract:
               'class-type?
               'value:
               _%klass124355%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass133140%_ _%slot133141%_)
        (let* ((_%klass133144%_ _%klass133140%_)
               (_%slot133152%_ _%slot133141%_)
               (_%field133161%_
                (let ((__tmp138033
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133144%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138033 _%slot133152%_ '#f))))
          (if (not _%field133161%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133144%_
                       'slot:
                       _%slot133152%_)
                '#!void)
              (if (let* ((_%type133165%_ _%klass133144%_)
                         (_%type133170%_ _%type133165%_))
                    (__class-type-final? _%type133170%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass133144%_
                   _%slot133152%_
                   _%field133161%_)
                  (if (let* ((_%klass133185%_ _%klass133144%_)
                             (_%klass133190%_ _%klass133185%_))
                        (__class-type-struct? _%klass133190%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass133144%_
                       _%slot133152%_
                       _%field133161%_)
                      (if (let ((_%strukt133201%_
                                 (base-struct/1 _%klass133144%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133201%_
                                    'class))
                                 (let ((__tmp138034
                                        (let ((__tmp138035
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133201%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138035))))
                                   (declare (not safe))
                                   (##fx< _%field133161%_ __tmp138034))))
                          (make-struct-slot-unchecked-mutator
                           _%klass133144%_
                           _%slot133152%_
                           _%field133161%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass133144%_
                           _%slot133152%_
                           _%field133161%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass124500%_ _%slot124501%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124500%_ 'class))
            (let ((_%klass124505%_ _%klass124500%_))
              (if (symbol? _%slot124501%_)
                  (let ((_%slot124515%_ _%slot124501%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass124505%_
                     _%slot124515%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@625.59-625.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124501%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@625.42-625.47"
               'contract:
               'class-type?
               'value:
               _%klass124500%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object133124%_ _%class133125%_ _%slot133126%_)
        (apply error
               '"not an instance"
               'object:
               _%object133124%_
               'class:
               _%class133125%_
               (if _%slot133126%_
                   (cons 'slot: (cons _%slot133126%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object133131%_ _%class133132%_)
        (let ((_%slot133134%_ '#f))
          (not-an-instance__%
           _%object133131%_
           _%class133132%_
           _%slot133134%_))))
    (define not-an-instance
      (lambda _g138036_
        (let ((_g138037_ (let () (declare (not safe)) (##length _g138036_))))
          (cond ((let () (declare (not safe)) (##fx= _g138037_ 2))
                 (apply not-an-instance__0 _g138036_))
                ((let () (declare (not safe)) (##fx= _g138037_ 3))
                 (apply not-an-instance__% _g138036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g138036_))))))
    (define make-final-slot-accessor
      (lambda (_%klass133117%_ _%slot133118%_ _%field133119%_)
        (lambda (_%obj133121%_)
          (##direct-structure-ref
           _%obj133121%_
           _%field133119%_
           _%klass133117%_
           _%slot133118%_))))
    (define make-final-slot-mutator
      (lambda (_%klass133110%_ _%slot133111%_ _%field133112%_)
        (lambda (_%obj133114%_ _%val133115%_)
          (##direct-structure-set!
           _%obj133114%_
           _%val133115%_
           _%field133112%_
           _%klass133110%_
           _%slot133111%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass133104%_ _%slot133105%_ _%field133106%_)
        (lambda (_%obj133108%_)
          (##structure-ref
           _%obj133108%_
           _%field133106%_
           _%klass133104%_
           _%slot133105%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass133097%_ _%slot133098%_ _%field133099%_)
        (lambda (_%obj133101%_ _%val133102%_)
          (##structure-set!
           _%obj133101%_
           _%val133102%_
           _%field133099%_
           _%klass133097%_
           _%slot133098%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass133091%_ _%slot133092%_ _%field133093%_)
        (lambda (_%obj133095%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj133095%_
             _%field133093%_
             _%klass133091%_
             _%slot133092%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass133084%_ _%slot133085%_ _%field133086%_)
        (lambda (_%obj133088%_ _%val133089%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj133088%_
             _%val133089%_
             _%field133086%_
             _%klass133084%_
             _%slot133085%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass133057%_ _%slot133058%_ _%field133059%_)
        (lambda (_%obj133061%_)
          (if (let* ((_%klass133063%_ _%klass133057%_)
                     (_%obj133066%_ _%obj133061%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133063%_ 'class))
                    (let ((_%klass133071%_ _%klass133063%_))
                      (__class-instance? _%klass133071%_ _%obj133066%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133063%_)
                      '#!void)))
              (unchecked-slot-ref _%obj133061%_ _%field133059%_)
              (not-an-instance__%
               _%obj133061%_
               _%klass133057%_
               _%slot133058%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass133029%_ _%slot133030%_ _%field133031%_)
        (lambda (_%obj133033%_ _%val133034%_)
          (if (let* ((_%klass133036%_ _%klass133029%_)
                     (_%obj133039%_ _%obj133033%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133036%_ 'class))
                    (let ((_%klass133044%_ _%klass133036%_))
                      (__class-instance? _%klass133044%_ _%obj133039%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133036%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133033%_
               _%field133031%_
               _%val133034%_)
              (not-an-instance__%
               _%obj133033%_
               _%klass133029%_
               _%slot133030%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass132980%_ _%slot132981%_ _%field132982%_)
        (lambda (_%obj132984%_)
          (if (let* ((_%klass132986%_ _%klass132980%_)
                     (_%obj132989%_ _%obj132984%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132986%_ 'class))
                    (let ((_%klass132994%_ _%klass132986%_))
                      (__direct-instance? _%klass132994%_ _%obj132989%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132986%_)
                      '#!void)))
              (unchecked-field-ref _%obj132984%_ _%field132982%_)
              (if (let* ((_%klass133008%_ _%klass132980%_)
                         (_%obj133011%_ _%obj132984%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133008%_ 'class))
                        (let ((_%klass133016%_ _%klass133008%_))
                          (__class-instance? _%klass133016%_ _%obj133011%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133008%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj132984%_ _%slot132981%_)
                  (not-an-instance__%
                   _%obj132984%_
                   _%klass132980%_
                   _%slot132981%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass132930%_ _%slot132931%_ _%field132932%_)
        (lambda (_%obj132934%_ _%val132935%_)
          (if (let* ((_%klass132937%_ _%klass132930%_)
                     (_%obj132940%_ _%obj132934%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132937%_ 'class))
                    (let ((_%klass132945%_ _%klass132937%_))
                      (__direct-instance? _%klass132945%_ _%obj132940%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132937%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj132934%_
               _%field132932%_
               _%val132935%_)
              (if (let* ((_%klass132959%_ _%klass132930%_)
                         (_%obj132962%_ _%obj132934%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132959%_ 'class))
                        (let ((_%klass132967%_ _%klass132959%_))
                          (__class-instance? _%klass132967%_ _%obj132962%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132959%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj132934%_
                   _%slot132931%_
                   _%val132935%_)
                  (not-an-instance__%
                   _%obj132934%_
                   _%klass132930%_
                   _%slot132931%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass132903%_ _%slot132904%_ _%field132905%_)
        (lambda (_%obj132907%_)
          (if (let* ((_%klass132909%_ _%klass132903%_)
                     (_%obj132912%_ _%obj132907%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132909%_ 'class))
                    (let ((_%klass132917%_ _%klass132909%_))
                      (__direct-instance? _%klass132917%_ _%obj132912%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132909%_)
                      '#!void)))
              (unchecked-field-ref _%obj132907%_ _%field132905%_)
              (unchecked-slot-ref _%obj132907%_ _%slot132904%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass132875%_ _%slot132876%_ _%field132877%_)
        (lambda (_%obj132879%_ _%val132880%_)
          (if (let* ((_%klass132882%_ _%klass132875%_)
                     (_%obj132885%_ _%obj132879%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132882%_ 'class))
                    (let ((_%klass132890%_ _%klass132882%_))
                      (__direct-instance? _%klass132890%_ _%obj132885%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132882%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj132879%_
               _%field132877%_
               _%val132880%_)
              (unchecked-slot-set!
               _%obj132879%_
               _%slot132876%_
               _%val132880%_)))))
    (define __class-slot-offset
      (lambda (_%klass132854%_ _%slot132855%_)
        (let* ((_%klass132858%_ _%klass132854%_)
               (_%slot132866%_ _%slot132855%_)
               (__tmp138038
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132858%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp138038 _%slot132866%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass124645%_ _%slot124646%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124645%_ 'class))
            (let ((_%klass124650%_ _%klass124645%_))
              (if (let () (declare (not safe)) (symbolic? _%slot124646%_))
                  (let ((_%slot124660%_ _%slot124646%_))
                    (__class-slot-offset _%klass124650%_ _%slot124660%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@687.43-687.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot124646%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@687.26-687.31"
               'contract:
               'class-type?
               'value:
               _%klass124645%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass132779%_ _%obj132780%_ _%slot132781%_)
        (let* ((_%klass132784%_ _%klass132779%_)
               (_%slot132792%_ _%slot132781%_))
          (if (let* ((_%klass132801%_ _%klass132784%_)
                     (_%obj132804%_ _%obj132780%_)
                     (_%klass132809%_ _%klass132801%_))
                (__class-instance? _%klass132809%_ _%obj132804%_))
              (let ((_%off132852%_
                     (let* ((_%klass132823%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj132780%_)))
                            (_%slot132826%_ _%slot132792%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass132823%_ 'class))
                           (let ((_%klass132831%_ _%klass132823%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot132826%_))
                                 (let ((_%slot132842%_ _%slot132826%_))
                                   (__class-slot-offset
                                    _%klass132831%_
                                    _%slot132842%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot132826%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass132823%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj132780%_
                 _%off132852%_
                 _%klass132784%_
                 _%slot132792%_))
              (not-an-instance__0 _%obj132780%_ _%klass132784%_)))))
    (define class-slot-ref
      (lambda (_%klass124790%_ _%obj124791%_ _%slot124792%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124790%_ 'class))
            (let ((_%klass124796%_ _%klass124790%_))
              (if (let () (declare (not safe)) (symbolic? _%slot124792%_))
                  (let ((_%slot124806%_ _%slot124792%_))
                    (__class-slot-ref
                     _%klass124796%_
                     _%obj124791%_
                     _%slot124806%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.44-690.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot124792%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.23-690.28"
               'contract:
               'class-type?
               'value:
               _%klass124790%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass132703%_ _%obj132704%_ _%slot132705%_ _%val132706%_)
        (let* ((_%klass132709%_ _%klass132703%_)
               (_%slot132717%_ _%slot132705%_))
          (if (let* ((_%klass132726%_ _%klass132709%_)
                     (_%obj132729%_ _%obj132704%_)
                     (_%klass132734%_ _%klass132726%_))
                (__class-instance? _%klass132734%_ _%obj132729%_))
              (let ((_%off132777%_
                     (let* ((_%klass132748%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj132704%_)))
                            (_%slot132751%_ _%slot132717%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass132748%_ 'class))
                           (let ((_%klass132756%_ _%klass132748%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot132751%_))
                                 (let ((_%slot132767%_ _%slot132751%_))
                                   (__class-slot-offset
                                    _%klass132756%_
                                    _%slot132767%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot132751%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass132748%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj132704%_
                 _%val132706%_
                 _%off132777%_
                 _%klass132709%_
                 _%slot132717%_))
              (not-an-instance__0 _%obj132704%_ _%klass132709%_)))))
    (define class-slot-set!
      (lambda (_%klass124936%_ _%obj124937%_ _%slot124938%_ _%val124939%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124936%_ 'class))
            (let ((_%klass124943%_ _%klass124936%_))
              (if (let () (declare (not safe)) (symbolic? _%slot124938%_))
                  (let ((_%slot124953%_ _%slot124938%_))
                    (__class-slot-set!
                     _%klass124943%_
                     _%obj124937%_
                     _%slot124953%_
                     _%val124939%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.45-696.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot124938%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.24-696.29"
               'contract:
               'class-type?
               'value:
               _%klass124936%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj132700%_ _%off132701%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj132700%_ _%off132701%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj132696%_ _%off132697%_ _%val132698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj132696%_
           _%val132698%_
           _%off132697%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj132693%_ _%slot132694%_)
        (unchecked-field-ref
         _%obj132693%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj132693%_))
          _%slot132694%_))))
    (define unchecked-slot-set!
      (lambda (_%obj132689%_ _%slot132690%_ _%val132691%_)
        (unchecked-field-set!
         _%obj132689%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj132689%_))
          _%slot132690%_)
         _%val132691%_)))
    (define __slot-error
      (lambda (_%obj132686%_ _%slot132687%_)
        (error '"Cannot find slot"
               'object:
               _%obj132686%_
               'slot:
               _%slot132687%_)))
    (define __slot-ref__%
      (lambda (_%obj132610%_ _%slot132611%_ _%E132612%_)
        (let* ((_%slot132615%_ _%slot132611%_)
               (_%E132623%_ _%E132612%_)
               (_%klass132632%_ (class-of _%obj132610%_))
               (_%$e132668%_
                (let* ((_%klass132635%_ _%klass132632%_)
                       (_%slot132638%_ _%slot132615%_)
                       (_%klass132643%_ _%klass132635%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot132638%_))
                      (let ((_%slot132658%_ _%slot132638%_))
                        (__class-slot-offset _%klass132643%_ _%slot132658%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot132638%_)
                        '#!void)))))
          (if _%$e132668%_
              ((lambda (_%off132671%_)
                 (unchecked-field-ref _%obj132610%_ _%off132671%_))
               _%$e132668%_)
              (let ()
                (declare (not safe))
                (_%E132623%_ _%obj132610%_ _%slot132615%_))))))
    (define __slot-ref__0
      (lambda (_%obj132677%_ _%slot132678%_)
        (let ((_%E132680%_ __slot-error))
          (__slot-ref__% _%obj132677%_ _%slot132678%_ _%E132680%_))))
    (define __slot-ref
      (lambda _g138039_
        (let ((_g138040_ (let () (declare (not safe)) (##length _g138039_))))
          (cond ((let () (declare (not safe)) (##fx= _g138040_ 2))
                 (apply __slot-ref__0 _g138039_))
                ((let () (declare (not safe)) (##fx= _g138040_ 3))
                 (apply __slot-ref__% _g138039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g138039_))))))
    (define slot-ref__%
      (lambda (_%obj125201%_ _%slot125202%_ _%E125203%_)
        (if (symbol? _%slot125202%_)
            (let ((_%slot125207%_ _%slot125202%_))
              (if (procedure? _%E125203%_)
                  (let ((_%E125217%_ _%E125203%_))
                    (__slot-ref__% _%obj125201%_ _%slot125207%_ _%E125217%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@722.38-722.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E125203%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@722.21-722.25"
               'contract:
               'symbol?
               'value:
               _%slot125202%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj125230%_ _%slot125231%_)
        (let ((_%E125233%_ __slot-error))
          (slot-ref__% _%obj125230%_ _%slot125231%_ _%E125233%_))))
    (define slot-ref
      (lambda _g138041_
        (let ((_g138042_ (let () (declare (not safe)) (##length _g138041_))))
          (cond ((let () (declare (not safe)) (##fx= _g138042_ 2))
                 (apply slot-ref__0 _g138041_))
                ((let () (declare (not safe)) (##fx= _g138042_ 3))
                 (apply slot-ref__% _g138041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g138041_))))))
    (define __slot-set!__%
      (lambda (_%obj132530%_ _%slot132531%_ _%val132532%_ _%E132533%_)
        (let* ((_%slot132536%_ _%slot132531%_)
               (_%E132544%_ _%E132533%_)
               (_%klass132553%_ (class-of _%obj132530%_))
               (_%$e132589%_
                (let* ((_%klass132556%_ _%klass132553%_)
                       (_%slot132559%_ _%slot132536%_)
                       (_%klass132564%_ _%klass132556%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot132559%_))
                      (let ((_%slot132579%_ _%slot132559%_))
                        (__class-slot-offset _%klass132564%_ _%slot132579%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot132559%_)
                        '#!void)))))
          (if _%$e132589%_
              ((lambda (_%off132592%_)
                 (unchecked-field-set!
                  _%obj132530%_
                  _%off132592%_
                  _%val132532%_))
               _%$e132589%_)
              (let ()
                (declare (not safe))
                (_%E132544%_ _%obj132530%_ _%slot132536%_))))))
    (define __slot-set!__0
      (lambda (_%obj132598%_ _%slot132599%_ _%val132600%_)
        (let ((_%E132602%_ __slot-error))
          (__slot-set!__%
           _%obj132598%_
           _%slot132599%_
           _%val132600%_
           _%E132602%_))))
    (define __slot-set!
      (lambda _g138043_
        (let ((_g138044_ (let () (declare (not safe)) (##length _g138043_))))
          (cond ((let () (declare (not safe)) (##fx= _g138044_ 3))
                 (apply __slot-set!__0 _g138043_))
                ((let () (declare (not safe)) (##fx= _g138044_ 4))
                 (apply __slot-set!__% _g138043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g138043_))))))
    (define slot-set!__%
      (lambda (_%obj125360%_ _%slot125361%_ _%val125362%_ _%E125363%_)
        (if (symbol? _%slot125361%_)
            (let ((_%slot125367%_ _%slot125361%_))
              (if (procedure? _%E125363%_)
                  (let ((_%E125377%_ _%E125363%_))
                    (__slot-set!__%
                     _%obj125360%_
                     _%slot125367%_
                     _%val125362%_
                     _%E125377%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@724.43-724.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E125363%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@724.22-724.26"
               'contract:
               'symbol?
               'value:
               _%slot125361%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj125390%_ _%slot125391%_ _%val125392%_)
        (let ((_%E125394%_ __slot-error))
          (slot-set!__%
           _%obj125390%_
           _%slot125391%_
           _%val125392%_
           _%E125394%_))))
    (define slot-set!
      (lambda _g138045_
        (let ((_g138046_ (let () (declare (not safe)) (##length _g138045_))))
          (cond ((let () (declare (not safe)) (##fx= _g138046_ 3))
                 (apply slot-set!__0 _g138045_))
                ((let () (declare (not safe)) (##fx= _g138046_ 4))
                 (apply slot-set!__% _g138045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g138045_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class132501%_ _%maybe-super-class132502%_)
        (let* ((_%maybe-sub-class132505%_ _%maybe-sub-class132501%_)
               (_%maybe-super-class132513%_ _%maybe-super-class132502%_)
               (_%maybe-super-class-id132522%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class132513%_)))
               (_%$e132524%_
                (eq? _%maybe-super-class-id132522%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class132505%_)))))
          (if _%$e132524%_
              _%$e132524%_
              (let ((__tmp138048
                     (lambda (_%super-class132527%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class132527%_))
                            _%maybe-super-class-id132522%_)))
                    (__tmp138047
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class132505%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp138048 __tmp138047))))))
    (define subclass?
      (lambda (_%maybe-sub-class125521%_ _%maybe-super-class125522%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class125521%_ 'class))
            (let ((_%maybe-sub-class125526%_ _%maybe-sub-class125521%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class125522%_
                     'class))
                  (let ((_%maybe-super-class125536%_
                         _%maybe-super-class125522%_))
                    (__subclass?
                     _%maybe-sub-class125526%_
                     _%maybe-super-class125536%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@730.45-730.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class125522%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@730.18-730.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class125521%_)
              '#!void))))
    (define object?
      (lambda (_%o132498%_)
        (if (let () (declare (not safe)) (##structure? _%o132498%_))
            (let ((__tmp138049
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o132498%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp138049 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass132485%_ _%obj132486%_)
        (let* ((_%klass132489%_ _%klass132485%_)
               (__tmp138050
                (let () (declare (not safe)) (##type-id _%klass132489%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj132486%_ __tmp138050))))
    (define direct-instance?
      (lambda (_%klass125666%_ _%obj125667%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125666%_ 'class))
            (let ((_%klass125671%_ _%klass125666%_))
              (__direct-instance? _%klass125671%_ _%obj125667%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@744.25-744.30"
               'contract:
               'class-type?
               'value:
               _%klass125666%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass132481%_ _%obj132482%_)
        (if (let () (declare (not safe)) (##structure? _%obj132482%_))
            (eq? _%klass132481%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj132482%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass132468%_ _%obj132469%_)
        (let* ((_%klass132472%_ _%klass132468%_)
               (__tmp138051
                (let () (declare (not safe)) (##type-id _%klass132472%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj132469%_ __tmp138051))))
    (define struct-instance?
      (lambda (_%klass125801%_ _%obj125802%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125801%_ 'class))
            (let ((_%klass125806%_ _%klass125801%_))
              (__struct-instance? _%klass125806%_ _%obj125802%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@773.25-773.30"
               'contract:
               'class-type?
               'value:
               _%klass125801%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass132420%_ _%obj132421%_)
        (let* ((_%klass132424%_ _%klass132420%_)
               (_%type132433%_ (class-of _%obj132421%_))
               (_%maybe-sub-class132435%_ _%type132433%_)
               (_%maybe-super-class132438%_ _%klass132424%_)
               (_%maybe-sub-class132443%_ _%maybe-sub-class132435%_)
               (_%maybe-super-class132458%_ _%maybe-super-class132438%_))
          (__subclass?
           _%maybe-sub-class132443%_
           _%maybe-super-class132458%_))))
    (define class-instance?
      (lambda (_%klass125936%_ _%obj125937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125936%_ 'class))
            (let ((_%klass125941%_ _%klass125936%_))
              (__class-instance? _%klass125941%_ _%obj125937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.24-778.29"
               'contract:
               'class-type?
               'value:
               _%klass125936%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass132379%_ _%k132380%_)
        (let* ((_%klass132383%_ _%klass132379%_) (_%k132391%_ _%k132380%_))
          (if (let* ((_%klass132400%_ _%klass132383%_)
                     (_%klass132405%_ _%klass132400%_))
                (__class-type-system? _%klass132405%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass132383%_)
                '#!void)
              (let ((_%obj132418%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass132383%_ _%k132391%_))))
                (__object-fill! _%obj132418%_ '#f))))))
    (define make-object
      (lambda (_%klass126071%_ _%k126072%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126071%_ 'class))
            (let ((_%klass126076%_ _%klass126071%_))
              (if (fixnum? _%k126072%_)
                  (let ((_%k126086%_ _%k126072%_))
                    (__make-object _%klass126076%_ _%k126086%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@783.37-783.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k126072%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.20-783.25"
               'contract:
               'class-type?
               'value:
               _%klass126071%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj132367%_)
        (let ((_%obj132370%_ _%obj132367%_))
          (declare (not safe))
          (##structure-type _%obj132370%_))))
    (define object-class
      (lambda (_%obj126216%_)
        (if (object? _%obj126216%_)
            (let ((_%obj126220%_ _%obj126216%_))
              (__object-class _%obj126220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.21-803.24"
               'contract:
               'object?
               'value:
               _%obj126216%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj132349%_ _%fill132350%_)
        (let ((_%obj132353%_ _%obj132349%_))
          (let _%loop132362%_ ((_%i132364%_
                                (let ((__tmp138052
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj132353%_))))
                                  (declare (not safe))
                                  (##fx- __tmp138052 '1))))
            (if (let () (declare (not safe)) (##fx> _%i132364%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj132353%_
                     _%fill132350%_
                     _%i132364%_
                     '#f
                     '#f))
                  (_%loop132362%_
                   (let () (declare (not safe)) (##fx- _%i132364%_ '1))))
                _%obj132353%_)))))
    (define object-fill!
      (lambda (_%obj126350%_ _%fill126351%_)
        (if (object? _%obj126350%_)
            (let ((_%obj126355%_ _%obj126350%_))
              (__object-fill! _%obj126355%_ _%fill126351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@808.21-808.24"
               'contract:
               'object?
               'value:
               _%obj126350%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass132305%_)
        (let* ((_%klass132308%_ _%klass132305%_)
               (_%klass132317%_ _%klass132308%_)
               (_%k132320%_
                (let ((__tmp138053
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132308%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp138053)))
               (_%klass132325%_ _%klass132317%_)
               (_%k132339%_ _%k132320%_))
          (__make-object _%klass132325%_ _%k132339%_))))
    (define new-instance
      (lambda (_%klass126485%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126485%_ 'class))
            (let ((_%klass126489%_ _%klass126485%_))
              (__new-instance _%klass126489%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@819.21-819.26"
               'contract:
               'class-type?
               'value:
               _%klass126485%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass132164%_ . _%args132165%_)
        (let* ((_%klass132168%_ _%klass132164%_)
               (_%$e132177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132168%_ '10 '#f '#f))))
          (if _%$e132177%_
              ((lambda (_%kons-id132180%_)
                 (let ((_%obj132202%_
                        (let* ((_%klass132182%_ _%klass132168%_)
                               (_%klass132187%_ _%klass132182%_))
                          (__new-instance _%klass132187%_))))
                   (___constructor-init!
                    _%klass132168%_
                    _%kons-id132180%_
                    _%obj132202%_
                    _%args132165%_)
                   _%obj132202%_))
               _%$e132177%_)
              (if (let* ((_%klass132204%_ _%klass132168%_)
                         (_%klass132209%_ _%klass132204%_))
                    (__class-type-metaclass? _%klass132209%_))
                  (let ((_%obj132236%_
                         (let* ((_%klass132220%_ _%klass132168%_)
                                (_%klass132225%_ _%klass132220%_))
                           (__new-instance _%klass132225%_))))
                    (__metaclass-instance-init!
                     _%klass132168%_
                     _%obj132236%_
                     _%args132165%_)
                    _%obj132236%_)
                  (if (let* ((_%klass132238%_ _%klass132168%_)
                             (_%klass132243%_ _%klass132238%_))
                        (__class-type-struct? _%klass132243%_))
                      (if (let ((__tmp138055
                                 (let* ((_%klass132272%_ _%klass132168%_)
                                        (_%klass132277%_ _%klass132272%_))
                                   (__class-type-field-count _%klass132277%_)))
                                (__tmp138054
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args132165%_))))
                            (declare (not safe))
                            (##fx= __tmp138055 __tmp138054))
                          (apply ##structure _%klass132168%_ _%args132165%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass132168%_
                                   'slots:
                                   (let* ((_%klass132289%_ _%klass132168%_)
                                          (_%klass132294%_ _%klass132289%_))
                                     (__class-type-slot-list _%klass132294%_))
                                   'args:
                                   _%args132165%_)
                            '#!void))
                      (let ((_%obj132270%_
                             (let* ((_%klass132254%_ _%klass132168%_)
                                    (_%klass132259%_ _%klass132254%_))
                               (__new-instance _%klass132259%_))))
                        (___class-instance-init!
                         _%klass132168%_
                         _%obj132270%_
                         _%args132165%_)
                        _%obj132270%_)))))))
    (define make-instance
      (lambda (_%klass126619%_ . _%args126620%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126619%_ 'class))
            (let ((_%klass126624%_ _%klass126619%_))
              (declare (not safe))
              (##apply __make-instance _%klass126624%_ _%args126620%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.22-822.27"
               'contract:
               'class-type?
               'value:
               _%klass126619%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj132151%_ . _%args132152%_)
        (let ((_%obj132155%_ _%obj132151%_))
          (if (let ((__tmp138057
                     (let () (declare (not safe)) (##length _%args132152%_)))
                    (__tmp138056
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj132155%_))))
                (declare (not safe))
                (##fx< __tmp138057 __tmp138056))
              (___struct-instance-init! _%obj132155%_ _%args132152%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj132155%_
                     'args:
                     _%args132152%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj126754%_ . _%args126755%_)
        (if (object? _%obj126754%_)
            (let ((_%obj126759%_ _%obj126754%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj126759%_ _%args126755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@847.30-847.33"
               'contract:
               'object?
               'value:
               _%obj126754%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj132110%_ _%args132111%_)
        (let _%lp132113%_ ((_%k132115%_ '1) (_%rest132116%_ _%args132111%_))
          (let* ((_%rest132117132125%_ _%rest132116%_)
                 (_%else132119132133%_ (lambda () _%obj132110%_))
                 (_%K132121132139%_
                  (lambda (_%rest132136%_ _%hd132137%_)
                    (unchecked-field-set!
                     _%obj132110%_
                     _%k132115%_
                     _%hd132137%_)
                    (_%lp132113%_
                     (let () (declare (not safe)) (##fx+ _%k132115%_ '1))
                     _%rest132136%_))))
            (if (pair? _%rest132117132125%_)
                (let ((_%hd132122132142%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132117132125%_)))
                      (_%tl132123132144%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132117132125%_))))
                  (let* ((_%hd132147%_ _%hd132122132142%_)
                         (_%rest132149%_ _%tl132123132144%_))
                    (_%K132121132139%_ _%rest132149%_ _%hd132147%_)))
                (_%else132119132133%_))))))
    (define __class-instance-init!
      (lambda (_%obj132097%_ . _%args132098%_)
        (let ((_%obj132101%_ _%obj132097%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj132101%_))
           _%obj132101%_
           _%args132098%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj126889%_ . _%args126890%_)
        (if (object? _%obj126889%_)
            (let ((_%obj126894%_ _%obj126889%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj126894%_ _%args126890%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.32"
               'contract:
               'object?
               'value:
               _%obj126889%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass132039%_ _%obj132040%_ _%args132041%_)
        (let _%lp132043%_ ((_%rest132045%_ _%args132041%_))
          (let* ((_%rest132046132056%_ _%rest132045%_)
                 (_%else132048132064%_
                  (lambda ()
                    (if (null? _%rest132045%_)
                        _%obj132040%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass132039%_
                               'rest:
                               _%rest132045%_))))
                 (_%K132050132078%_
                  (lambda (_%rest132067%_ _%val132068%_ _%key132069%_)
                    (if (keyword? _%key132069%_)
                        (let ((_%$e132072%_
                               (__class-slot-offset
                                _%klass132039%_
                                _%key132069%_)))
                          (if _%$e132072%_
                              ((lambda (_%off132075%_)
                                 (unchecked-field-set!
                                  _%obj132040%_
                                  _%off132075%_
                                  _%val132068%_)
                                 (_%lp132043%_ _%rest132067%_))
                               _%$e132072%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass132039%_
                                     'slot:
                                     _%key132069%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key132069%_)))))
            (if (pair? _%rest132046132056%_)
                (let ((_%hd132051132081%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132046132056%_)))
                      (_%tl132052132083%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132046132056%_))))
                  (let ((_%key132086%_ _%hd132051132081%_))
                    (if (pair? _%tl132052132083%_)
                        (let ((_%hd132053132088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl132052132083%_)))
                              (_%tl132054132090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl132052132083%_))))
                          (let* ((_%val132093%_ _%hd132053132088%_)
                                 (_%rest132095%_ _%tl132054132090%_))
                            (_%K132050132078%_
                             _%rest132095%_
                             _%val132093%_
                             _%key132086%_)))
                        (_%else132048132064%_))))
                (_%else132048132064%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass132035%_ _%obj132036%_ _%args132037%_)
        (apply call-method
               _%klass132035%_
               'instance-init!
               _%obj132036%_
               _%args132037%_)))
    (define __constructor-init!
      (lambda (_%klass132004%_
               _%kons-id132005%_
               _%obj132006%_
               .
               _%args132007%_)
        (let* ((_%klass132010%_ _%klass132004%_)
               (_%kons-id132018%_ _%kons-id132005%_)
               (_%obj132026%_ _%obj132006%_))
          (___constructor-init!
           _%klass132010%_
           _%kons-id132018%_
           _%obj132026%_
           _%args132007%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass127024%_
               _%kons-id127025%_
               _%obj127026%_
               .
               _%args127027%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127024%_ 'class))
            (let ((_%klass127031%_ _%klass127024%_))
              (if (symbol? _%kons-id127025%_)
                  (let ((_%kons-id127041%_ _%kons-id127025%_))
                    (if (object? _%obj127026%_)
                        (let ((_%obj127051%_ _%obj127026%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass127031%_
                                   _%kons-id127041%_
                                   _%obj127051%_
                                   _%args127027%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@911.63-911.66"
                           'contract:
                           'object?
                           'value:
                           _%obj127026%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@911.43-911.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id127025%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.26-911.31"
               'contract:
               'class-type?
               'value:
               _%klass127024%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass131993%_ _%kons-id131994%_ _%obj131995%_ _%args131996%_)
        (let ((_%$e131998%_
               (__find-method
                _%klass131993%_
                _%obj131995%_
                _%kons-id131994%_)))
          (if _%$e131998%_
              ((lambda (_%kons132001%_)
                 (apply _%kons132001%_ _%obj131995%_ _%args131996%_)
                 _%obj131995%_)
               _%$e131998%_)
              (error '"missing constructor"
                     'class:
                     _%klass131993%_
                     'method:
                     _%kons-id131994%_)))))
    (define __struct-copy
      (lambda (_%struct131981%_)
        (let ((_%struct131984%_ _%struct131981%_))
          (declare (not safe))
          (##structure-copy _%struct131984%_))))
    (define struct-copy
      (lambda (_%struct127181%_)
        (if (object? _%struct127181%_)
            (let ((_%struct127185%_ _%struct127181%_))
              (__struct-copy _%struct127185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.20-925.26"
               'contract:
               'object?
               'value:
               _%struct127181%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj131962%_)
        (let* ((_%obj131965%_ _%obj131962%_)
               (_%len131974%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj131965%_))))
          (let _%recur131976%_ ((_%i131978%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131978%_ _%len131974%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj131965%_
                         _%i131978%_
                         '#f
                         '#f))
                      (_%recur131976%_
                       (let () (declare (not safe)) (##fx+ _%i131978%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj127315%_)
        (if (object? _%obj127315%_)
            (let ((_%obj127319%_ _%obj127315%_))
              (__struct->list _%obj127319%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@928.21-928.24"
               'contract:
               'object?
               'value:
               _%obj127315%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj131914%_)
        (let* ((_%obj131917%_ _%obj131914%_)
               (_%klass131926%_
                (let () (declare (not safe)) (##structure-type _%obj131917%_)))
               (_%slot-vector131928%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131926%_ '7 '#f '#f))))
          (let _%loop131930%_ ((_%index131932%_
                                (let ((__tmp138058
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector131928%_))))
                                  (declare (not safe))
                                  (##fx- __tmp138058 '1)))
                               (_%plist131933%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index131932%_ '1))
                (cons _%klass131926%_ _%plist131933%_)
                (let ((_%slot131936%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector131928%_
                          _%index131932%_))))
                  (_%loop131930%_
                   (let () (declare (not safe)) (##fx- _%index131932%_ '1))
                   (cons (let ((_%sym131938%_ _%slot131936%_))
                           (if (symbol? _%sym131938%_)
                               (let ((_%sym131943%_ _%sym131938%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym131943%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym131938%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj131917%_
                                _%index131932%_)
                               _%plist131933%_)))))))))
    (define class->list
      (lambda (_%obj127449%_)
        (if (object? _%obj127449%_)
            (let ((_%obj127453%_ _%obj127449%_)) (__class->list _%obj127453%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.20-936.23"
               'contract:
               'object?
               'value:
               _%obj127449%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj131864%_ _%id131865%_ . _%args131866%_)
        (let* ((_%id131869%_ _%id131865%_)
               (_%$e131900%_
                (let* ((_%obj131878%_ _%obj131864%_)
                       (_%id131881%_ _%id131869%_)
                       (_%id131886%_ _%id131881%_))
                  (__method-ref _%obj131878%_ _%id131886%_))))
          (if _%$e131900%_
              ((lambda (_%method131903%_)
                 (let ((_%method131905%_ _%method131903%_))
                   (apply _%method131905%_ _%obj131864%_ _%args131866%_)))
               _%$e131900%_)
              (error '"cannot find method"
                     'object:
                     _%obj131864%_
                     'method:
                     _%id131869%_)))))
    (define call-method
      (lambda (_%obj127583%_ _%id127584%_ . _%args127585%_)
        (if (symbol? _%id127584%_)
            (let ((_%id127589%_ _%id127584%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj127583%_
                       _%id127589%_
                       _%args127585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@951.24-951.26"
               'contract:
               'symbol?
               'value:
               _%id127584%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj131815%_ _%id131816%_)
        (let* ((_%id131819%_ _%id131816%_)
               (_%klass131828%_ (class-of _%obj131815%_))
               (_%obj131831%_ _%obj131815%_)
               (_%id131834%_ _%id131819%_)
               (_%klass131839%_ _%klass131828%_)
               (_%id131854%_ _%id131834%_))
          (__find-method _%klass131839%_ _%obj131831%_ _%id131854%_))))
    (define method-ref
      (lambda (_%obj127719%_ _%id127720%_)
        (if (symbol? _%id127720%_)
            (let ((_%id127724%_ _%id127720%_))
              (__method-ref _%obj127719%_ _%id127724%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.23-978.25"
               'contract:
               'symbol?
               'value:
               _%id127720%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj131787%_ _%id131788%_)
        (let ((_%$e131812%_
               (let* ((_%obj131791%_ _%obj131787%_)
                      (_%id131794%_ _%id131788%_))
                 (if (symbol? _%id131794%_)
                     (let ((_%id131799%_ _%id131794%_))
                       (__method-ref _%obj131791%_ _%id131799%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131794%_)
                       '#!void)))))
          (if _%$e131812%_
              _%$e131812%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj131787%_
                       'method:
                       _%id131788%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj131736%_ _%id131737%_)
        (let* ((_%id131740%_ _%id131737%_)
               (_%$e131771%_
                (let* ((_%obj131749%_ _%obj131736%_)
                       (_%id131752%_ _%id131740%_)
                       (_%id131757%_ _%id131752%_))
                  (__method-ref _%obj131749%_ _%id131757%_))))
          (if _%$e131771%_
              ((lambda (_%method131774%_)
                 (let ((_%method131776%_ _%method131774%_))
                   (lambda _%args131784%_
                     (apply _%method131776%_ _%obj131736%_ _%args131784%_))))
               _%$e131771%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj127854%_ _%id127855%_)
        (if (symbol? _%id127855%_)
            (let ((_%id127859%_ _%id127855%_))
              (__bound-method-ref _%obj127854%_ _%id127859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.29-986.31"
               'contract:
               'symbol?
               'value:
               _%id127855%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj131719%_ _%id131720%_)
        (let* ((_%id131723%_ _%id131720%_)
               (_%method131732%_
                (checked-method-ref _%obj131719%_ _%id131723%_)))
          (lambda _%args131734%_
            (apply _%method131732%_ _%obj131719%_ _%args131734%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj127989%_ _%id127990%_)
        (if (symbol? _%id127990%_)
            (let ((_%id127994%_ _%id127990%_))
              (__checked-bound-method-ref _%obj127989%_ _%id127994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.37-995.39"
               'contract:
               'symbol?
               'value:
               _%id127990%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass131588%_ _%obj131589%_ _%id131590%_)
        (let* ((_%klass131593%_ _%klass131588%_) (_%id131601%_ _%id131590%_))
          (if (let* ((_%klass131610%_ _%klass131593%_)
                     (_%klass131615%_ _%klass131610%_))
                (__class-type-sealed? _%klass131615%_))
              (let ((_%tab131645%_
                     (let* ((_%klass131629%_ _%klass131593%_)
                            (_%klass131634%_ _%klass131629%_))
                       (__specialize-class _%klass131634%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab131645%_ _%id131601%_ '#f))
              (let ((_%$e131680%_
                     (let* ((_%klass131647%_ _%klass131593%_)
                            (_%obj131650%_ _%obj131589%_)
                            (_%id131653%_ _%id131601%_)
                            (_%klass131658%_ _%klass131647%_)
                            (_%id131670%_ _%id131653%_))
                       (__direct-method-ref
                        _%klass131658%_
                        _%obj131650%_
                        _%id131670%_))))
                (if _%$e131680%_
                    _%$e131680%_
                    (let* ((_%klass131684%_ _%klass131593%_)
                           (_%obj131687%_ _%obj131589%_)
                           (_%id131690%_ _%id131601%_)
                           (_%klass131695%_ _%klass131684%_)
                           (_%id131709%_ _%id131690%_))
                      (__mixin-method-ref
                       _%klass131695%_
                       _%obj131687%_
                       _%id131709%_))))))))
    (define find-method
      (lambda (_%klass128124%_ _%obj128125%_ _%id128126%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128124%_ 'class))
            (let ((_%klass128130%_ _%klass128124%_))
              (if (symbol? _%id128126%_)
                  (let ((_%id128140%_ _%id128126%_))
                    (__find-method _%klass128130%_ _%obj128125%_ _%id128140%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1000.41-1000.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id128126%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1000.20-1000.25"
               'contract:
               'class-type?
               'value:
               _%klass128124%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins131533%_ _%obj131534%_ _%id131535%_)
        (let* ((_%id131538%_ _%id131535%_)
               (__tmp138059
                (lambda (_%g131546131548%_)
                  (let* ((_%klass131551%_ _%g131546131548%_)
                         (_%obj131554%_ _%obj131534%_)
                         (_%id131557%_ _%id131538%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass131551%_ 'class))
                        (let* ((_%klass131562%_ _%klass131551%_)
                               (_%id131578%_ _%id131557%_))
                          (__direct-method-ref
                           _%klass131562%_
                           _%obj131554%_
                           _%id131578%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass131551%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp138059 _%mixins131533%_))))
    (define mixin-find-method
      (lambda (_%mixins128270%_ _%obj128271%_ _%id128272%_)
        (if (symbol? _%id128272%_)
            (let ((_%id128276%_ _%id128272%_))
              (__mixin-find-method
               _%mixins128270%_
               _%obj128271%_
               _%id128276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1009.37-1009.39"
               'contract:
               'symbol?
               'value:
               _%id128272%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass131426%_ _%obj131427%_ _%id131428%_)
        (let* ((_%klass131431%_ _%klass131426%_) (_%id131439%_ _%id131428%_))
          (letrec ((_%metaclass-resolve-method131448%_
                    (lambda ()
                      (let* ((_%obj131509%_ _%klass131431%_)
                             (_%id131512%_ 'direct-method-ref)
                             (_%args131515%_ (list _%obj131427%_ _%id131439%_))
                             (_%id131520%_ _%id131512%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj131509%_
                                 _%id131520%_
                                 _%args131515%_))))
                   (_%metaclass-resolve-method!131449%_
                    (lambda ()
                      (let ((_%method131506%_
                             (_%metaclass-resolve-method131448%_)))
                        (let ((__tmp138061
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass131431%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp138060
                               (if _%method131506%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp138061
                           _%id131439%_
                           __tmp138060))
                        _%method131506%_))))
            (let ((_%$e131451%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass131431%_ '11 '#f '#f))))
              (if _%$e131451%_
                  ((lambda (_%ht131454%_)
                     (let ((_%method131456%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht131454%_
                               _%id131439%_
                               '#f))))
                       (if (procedure? _%method131456%_)
                           _%method131456%_
                           (if (let* ((_%klass131459%_ _%klass131431%_)
                                      (_%klass131464%_ _%klass131459%_))
                                 (__class-type-metaclass? _%klass131464%_))
                               (let ((_%$e131482%_ _%method131456%_))
                                 (if (eq? 'resolved _%$e131482%_)
                                     (_%metaclass-resolve-method131448%_)
                                     (if (eq? 'unknown _%$e131482%_)
                                         '#f
                                         (_%metaclass-resolve-method!131449%_))))
                               '#f))))
                   _%$e131451%_)
                  (if (let* ((_%klass131486%_ _%klass131431%_)
                             (_%klass131491%_ _%klass131486%_))
                        (__class-type-metaclass? _%klass131491%_))
                      (let ((_%tab131502%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass131431%_
                           _%tab131502%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!131449%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass128406%_ _%obj128407%_ _%id128408%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128406%_ 'class))
            (let ((_%klass128412%_ _%klass128406%_))
              (if (symbol? _%id128408%_)
                  (let ((_%id128422%_ _%id128408%_))
                    (__direct-method-ref
                     _%klass128412%_
                     _%obj128407%_
                     _%id128422%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1012.47-1012.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id128408%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1012.26-1012.31"
               'contract:
               'class-type?
               'value:
               _%klass128406%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass131378%_ _%obj131379%_ _%id131380%_)
        (let* ((_%klass131383%_ _%klass131378%_)
               (_%id131391%_ _%id131380%_)
               (_%mixins131400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131383%_ '6 '#f '#f)))
               (_%obj131403%_ _%obj131379%_)
               (_%id131406%_ _%id131391%_)
               (_%id131411%_ _%id131406%_))
          (__mixin-find-method _%mixins131400%_ _%obj131403%_ _%id131411%_))))
    (define mixin-method-ref
      (lambda (_%klass128552%_ _%obj128553%_ _%id128554%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128552%_ 'class))
            (let ((_%klass128558%_ _%klass128552%_))
              (if (symbol? _%id128554%_)
                  (let ((_%id128568%_ _%id128554%_))
                    (__mixin-method-ref
                     _%klass128558%_
                     _%obj128553%_
                     _%id128568%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1042.46-1042.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id128554%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.25-1042.30"
               'contract:
               'class-type?
               'value:
               _%klass128552%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass131288%_ _%id131289%_ _%proc131290%_ _%rebind?131291%_)
        (let* ((_%id131294%_ _%id131289%_) (_%proc131302%_ _%proc131290%_))
          (letrec ((_%bind!131311%_
                    (lambda (_%ht131362%_)
                      (if (and (not _%rebind?131291%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht131362%_
                                  _%id131294%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass131288%_
                                 'method:
                                 _%id131294%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht131362%_
                               _%id131294%_
                               _%proc131302%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass131288%_ 'class))
                (let ((_%ht131314%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131288%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht131314%_
                      (_%bind!131311%_ _%ht131314%_)
                      (let ((_%ht131316%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass131288%_
                           _%ht131316%_
                           '11
                           '#f
                           '#f))
                        (_%bind!131311%_ _%ht131316%_))))
                (if (let () (declare (not safe)) (##type? _%klass131288%_))
                    (let* ((_%klass131319%_
                            (__shadow-class__0 _%klass131288%_))
                           (_%id131322%_ _%id131294%_)
                           (_%proc131325%_ _%proc131302%_)
                           (_%rebind?131328%_ _%rebind?131291%_)
                           (_%id131333%_ _%id131322%_)
                           (_%proc131351%_ _%proc131325%_))
                      (__bind-method!__%
                       _%klass131319%_
                       _%id131333%_
                       _%proc131351%_
                       _%rebind?131328%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass131288%_)))))))
    (define __bind-method!__0
      (lambda (_%klass131367%_ _%id131368%_ _%proc131369%_)
        (let ((_%rebind?131371%_ '#f))
          (__bind-method!__%
           _%klass131367%_
           _%id131368%_
           _%proc131369%_
           _%rebind?131371%_))))
    (define __bind-method!
      (lambda _g138062_
        (let ((_g138063_ (let () (declare (not safe)) (##length _g138062_))))
          (cond ((let () (declare (not safe)) (##fx= _g138063_ 3))
                 (apply __bind-method!__0 _g138062_))
                ((let () (declare (not safe)) (##fx= _g138063_ 4))
                 (apply __bind-method!__% _g138062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g138062_))))))
    (define bind-method!__%
      (lambda (_%klass128699%_ _%id128700%_ _%proc128701%_ _%rebind?128702%_)
        (if (symbol? _%id128700%_)
            (let ((_%id128706%_ _%id128700%_))
              (if (procedure? _%proc128701%_)
                  (let ((_%proc128716%_ _%proc128701%_))
                    (__bind-method!__%
                     _%klass128699%_
                     _%id128706%_
                     _%proc128716%_
                     _%rebind?128702%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.42-1045.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc128701%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.27-1045.29"
               'contract:
               'symbol?
               'value:
               _%id128700%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass128729%_ _%id128730%_ _%proc128731%_)
        (let ((_%rebind?128733%_ '#f))
          (bind-method!__%
           _%klass128729%_
           _%id128730%_
           _%proc128731%_
           _%rebind?128733%_))))
    (define bind-method!
      (lambda _g138064_
        (let ((_g138065_ (let () (declare (not safe)) (##length _g138064_))))
          (cond ((let () (declare (not safe)) (##fx= _g138065_ 3))
                 (apply bind-method!__0 _g138064_))
                ((let () (declare (not safe)) (##fx= _g138065_ 4))
                 (apply bind-method!__% _g138064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g138064_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint131269%_ _%seed131270%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint131269%_
           procedure-hash
           eq?
           _%seed131270%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint131276%_ '#f) (_%seed131278%_ '0))
          (make-method-specializer-table__%
           _%size-hint131276%_
           _%seed131278%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint131280%_)
        (let ((_%seed131282%_ '0))
          (make-method-specializer-table__%
           _%size-hint131280%_
           _%seed131282%_))))
    (define make-method-specializer-table
      (lambda _g138066_
        (let ((_g138067_ (let () (declare (not safe)) (##length _g138066_))))
          (cond ((let () (declare (not safe)) (##fx= _g138067_ 0))
                 (apply make-method-specializer-table__0 _g138066_))
                ((let () (declare (not safe)) (##fx= _g138067_ 1))
                 (apply make-method-specializer-table__1 _g138066_))
                ((let () (declare (not safe)) (##fx= _g138067_ 2))
                 (apply make-method-specializer-table__% _g138066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g138066_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint131249%_ _%seed131251%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint131249%_
           procedure-hash
           eq?
           _%seed131251%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint131257%_ '#f) (_%seed131259%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint131257%_
           _%seed131259%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint131261%_)
        (let ((_%seed131263%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint131261%_
           _%seed131263%_))))
    (define make-method-specializer-table/lock
      (lambda _g138068_
        (let ((_g138069_ (let () (declare (not safe)) (##length _g138068_))))
          (cond ((let () (declare (not safe)) (##fx= _g138069_ 0))
                 (apply make-method-specializer-table/lock__0 _g138068_))
                ((let () (declare (not safe)) (##fx= _g138069_ 1))
                 (apply make-method-specializer-table/lock__1 _g138068_))
                ((let () (declare (not safe)) (##fx= _g138069_ 2))
                 (apply make-method-specializer-table/lock__% _g138068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g138068_))))))
    (define method-specializer-table-ref
      (lambda (_%tab131202%_ _%key131203%_ _%default131204%_)
        (let ((_%table131206%_
               (let () (declare (not safe)) (&raw-table-table _%tab131202%_)))
              (_%seed131207%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131202%_))))
          (let* ((_%h131209%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131203%_))
                         _%seed131207%_))
                 (_%size131212%_ (vector-length _%table131206%_))
                 (_%entries131215%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131212%_ '2)))
                 (_%start131218%_
                  (let ((__tmp138070
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131209%_ _%entries131215%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138070 '1))))
            (let _%loop131222%_ ((_%probe131225%_ _%start131218%_)
                                 (_%i131227%_ '1)
                                 (_%deleted131229%_ '#f))
              (let ((_%k131232%_ (vector-ref _%table131206%_ _%probe131225%_)))
                (if (eq? _%k131232%_ (macro-unused-obj))
                    _%default131204%_
                    (if (eq? _%k131232%_ (macro-deleted-obj))
                        (_%loop131222%_
                         (let ((_%next-probe131237%_
                                (fx+ _%start131218%_
                                     _%i131227%_
                                     (fx* _%i131227%_ _%i131227%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131237%_ _%size131212%_))
                         (let () (declare (not safe)) (##fx+ _%i131227%_ '1))
                         (let ((_%$e131240%_ _%deleted131229%_))
                           (if _%$e131240%_ _%$e131240%_ _%probe131225%_)))
                        (if (eq? _%key131203%_ _%k131232%_)
                            (vector-ref
                             _%table131206%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe131225%_ '1)))
                            (_%loop131222%_
                             (let ((_%next-probe131245%_
                                    (fx+ _%start131218%_
                                         _%i131227%_
                                         (fx* _%i131227%_ _%i131227%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131245%_
                                _%size131212%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131227%_ '1))
                             _%deleted131229%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab131173%_ _%key131174%_ _%default131175%_)
        (let ((_%lock131177%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131173%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131182%_ ((_%spin131185%_ '0))
              (if (let ((__tmp138071
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131177%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138071 '0))
                  (let ((__tmp138072 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131177%_ '1 __tmp138072))
                  (if (let () (declare (not safe)) (##fx< _%spin131185%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131182%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131185%_ '1))))
                      (let ((_%owner131191%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131177%_ '1))))
                        (if (eq? _%owner131191%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131191%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131182%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131197%_
                 (method-specializer-table-ref
                  _%tab131173%_
                  _%key131174%_
                  _%default131175%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131177%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131177%_ '0 '0 '1))))
            _%$r131197%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab131125%_ _%key131126%_ _%value131127%_)
        (let ((_%table131129%_
               (let () (declare (not safe)) (&raw-table-table _%tab131125%_)))
              (_%seed131130%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131125%_))))
          (let* ((_%h131132%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131126%_))
                         _%seed131130%_))
                 (_%size131135%_ (vector-length _%table131129%_))
                 (_%entries131138%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131135%_ '2)))
                 (_%start131141%_
                  (let ((__tmp138073
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131132%_ _%entries131138%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138073 '1))))
            (let _%loop131145%_ ((_%probe131148%_ _%start131141%_)
                                 (_%i131150%_ '1)
                                 (_%deleted131152%_ '#f))
              (let ((_%k131155%_ (vector-ref _%table131129%_ _%probe131148%_)))
                (if (eq? _%k131155%_ (macro-unused-obj))
                    (if _%deleted131152%_
                        (begin
                          (vector-set!
                           _%table131129%_
                           _%deleted131152%_
                           _%key131126%_)
                          (vector-set!
                           _%table131129%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted131152%_ '1))
                           _%value131127%_)
                          ((lambda ()
                             (let ((__tmp138074
                                    (let ((__tmp138075
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131125%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138075 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131125%_
                                __tmp138074)))))
                        (begin
                          (vector-set!
                           _%table131129%_
                           _%probe131148%_
                           _%key131126%_)
                          (vector-set!
                           _%table131129%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe131148%_ '1))
                           _%value131127%_)
                          ((lambda ()
                             (let ((__tmp138076
                                    (let ((__tmp138077
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab131125%_))))
                                      (declare (not safe))
                                      (##fx- __tmp138077 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab131125%_
                                __tmp138076))
                             (let ((__tmp138078
                                    (let ((__tmp138079
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131125%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138079 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131125%_
                                __tmp138078))))))
                    (if (eq? _%k131155%_ (macro-deleted-obj))
                        (_%loop131145%_
                         (let ((_%next-probe131162%_
                                (fx+ _%start131141%_
                                     _%i131150%_
                                     (fx* _%i131150%_ _%i131150%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131162%_ _%size131135%_))
                         (let () (declare (not safe)) (##fx+ _%i131150%_ '1))
                         (let ((_%$e131165%_ _%deleted131152%_))
                           (if _%$e131165%_ _%$e131165%_ _%probe131148%_)))
                        (if (eq? _%key131126%_ _%k131155%_)
                            (let ()
                              (vector-set!
                               _%table131129%_
                               _%probe131148%_
                               _%key131126%_)
                              (vector-set!
                               _%table131129%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131148%_ '1))
                               _%value131127%_))
                            (_%loop131145%_
                             (let ((_%next-probe131170%_
                                    (fx+ _%start131141%_
                                         _%i131150%_
                                         (fx* _%i131150%_ _%i131150%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131170%_
                                _%size131135%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131150%_ '1))
                             _%deleted131152%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab131121%_ _%key131122%_ _%value131123%_)
        (if (let ((__tmp138082
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab131121%_)))
                  (__tmp138080
                   (let ((__tmp138081
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab131121%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp138081 '4))))
              (declare (not safe))
              (##fx< __tmp138082 __tmp138080))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab131121%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab131121%_
         _%key131122%_
         _%value131123%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab131091%_ _%key131092%_ _%value131093%_)
        (let ((_%lock131096%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131091%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131101%_ ((_%spin131104%_ '0))
              (if (let ((__tmp138083
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131096%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138083 '0))
                  (let ((__tmp138084 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131096%_ '1 __tmp138084))
                  (if (let () (declare (not safe)) (##fx< _%spin131104%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131101%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131104%_ '1))))
                      (let ((_%owner131110%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131096%_ '1))))
                        (if (eq? _%owner131110%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131110%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131101%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131116%_
                 (method-specializer-table-set!
                  _%tab131091%_
                  _%key131092%_
                  _%value131093%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131096%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131096%_ '0 '0 '1))))
            _%$r131116%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab131042%_
               _%key131043%_
               _%method-specializer-table-update!131044%_
               _%default131045%_)
        (let ((_%table131047%_
               (let () (declare (not safe)) (&raw-table-table _%tab131042%_)))
              (_%seed131048%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131042%_))))
          (let* ((_%h131050%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131043%_))
                         _%seed131048%_))
                 (_%size131053%_ (vector-length _%table131047%_))
                 (_%entries131056%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131053%_ '2)))
                 (_%start131059%_
                  (let ((__tmp138085
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131050%_ _%entries131056%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138085 '1))))
            (let _%loop131063%_ ((_%probe131066%_ _%start131059%_)
                                 (_%i131068%_ '1)
                                 (_%deleted131070%_ '#f))
              (let ((_%k131073%_ (vector-ref _%table131047%_ _%probe131066%_)))
                (if (eq? _%k131073%_ (macro-unused-obj))
                    (if _%deleted131070%_
                        (begin
                          (vector-set!
                           _%table131047%_
                           _%deleted131070%_
                           _%key131043%_)
                          (vector-set!
                           _%table131047%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted131070%_ '1))
                           (_%method-specializer-table-update!131044%_
                            _%default131045%_))
                          ((lambda ()
                             (let ((__tmp138086
                                    (let ((__tmp138087
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131042%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138087 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131042%_
                                __tmp138086)))))
                        (begin
                          (vector-set!
                           _%table131047%_
                           _%probe131066%_
                           _%key131043%_)
                          (vector-set!
                           _%table131047%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe131066%_ '1))
                           (_%method-specializer-table-update!131044%_
                            _%default131045%_))
                          ((lambda ()
                             (let ((__tmp138088
                                    (let ((__tmp138089
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab131042%_))))
                                      (declare (not safe))
                                      (##fx- __tmp138089 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab131042%_
                                __tmp138088))
                             (let ((__tmp138090
                                    (let ((__tmp138091
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131042%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138091 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131042%_
                                __tmp138090))))))
                    (if (eq? _%k131073%_ (macro-deleted-obj))
                        (_%loop131063%_
                         (let ((_%next-probe131080%_
                                (fx+ _%start131059%_
                                     _%i131068%_
                                     (fx* _%i131068%_ _%i131068%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131080%_ _%size131053%_))
                         (let () (declare (not safe)) (##fx+ _%i131068%_ '1))
                         (let ((_%$e131083%_ _%deleted131070%_))
                           (if _%$e131083%_ _%$e131083%_ _%probe131066%_)))
                        (if (eq? _%key131043%_ _%k131073%_)
                            (let ()
                              (vector-set!
                               _%table131047%_
                               _%probe131066%_
                               _%key131043%_)
                              (vector-set!
                               _%table131047%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131066%_ '1))
                               (_%method-specializer-table-update!131044%_
                                (vector-ref
                                 _%table131047%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe131066%_ '1))))))
                            (_%loop131063%_
                             (let ((_%next-probe131088%_
                                    (fx+ _%start131059%_
                                         _%i131068%_
                                         (fx* _%i131068%_ _%i131068%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131088%_
                                _%size131053%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131068%_ '1))
                             _%deleted131070%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab131037%_
               _%key131038%_
               _%method-specializer-table-update!131039%_
               _%default131040%_)
        (if (let ((__tmp138094
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab131037%_)))
                  (__tmp138092
                   (let ((__tmp138093
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab131037%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp138093 '4))))
              (declare (not safe))
              (##fx< __tmp138094 __tmp138092))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab131037%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab131037%_
         _%key131038%_
         _%method-specializer-table-update!131039%_
         _%default131040%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab131006%_
               _%key131007%_
               _%method-specializer-table-update!131008%_
               _%default131009%_)
        (let ((_%lock131012%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131006%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131017%_ ((_%spin131020%_ '0))
              (if (let ((__tmp138095
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131012%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138095 '0))
                  (let ((__tmp138096 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131012%_ '1 __tmp138096))
                  (if (let () (declare (not safe)) (##fx< _%spin131020%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131017%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131020%_ '1))))
                      (let ((_%owner131026%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131012%_ '1))))
                        (if (eq? _%owner131026%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131026%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131017%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131032%_
                 (_%method-specializer-table-update!131008%_
                  _%tab131006%_
                  _%key131007%_
                  _%method-specializer-table-update!131008%_
                  _%default131009%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131012%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131012%_ '0 '0 '1))))
            _%$r131032%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab130963%_ _%key130964%_)
        (let ((_%table130966%_
               (let () (declare (not safe)) (&raw-table-table _%tab130963%_)))
              (_%seed130968%_
               (let () (declare (not safe)) (&raw-table-seed _%tab130963%_))))
          (let* ((_%h130971%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key130964%_))
                         _%seed130968%_))
                 (_%size130974%_ (vector-length _%table130966%_))
                 (_%entries130977%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size130974%_ '2)))
                 (_%start130980%_
                  (let ((__tmp138097
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h130971%_ _%entries130977%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138097 '1))))
            (let _%loop130984%_ ((_%probe130987%_ _%start130980%_)
                                 (_%i130989%_ '1))
              (let ((_%k130992%_ (vector-ref _%table130966%_ _%probe130987%_)))
                (if (eq? _%k130992%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k130992%_ (macro-deleted-obj))
                        (_%loop130984%_
                         (let ((_%next-probe130997%_
                                (fx+ _%start130980%_
                                     _%i130989%_
                                     (fx* _%i130989%_ _%i130989%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe130997%_ _%size130974%_))
                         (let () (declare (not safe)) (##fx+ _%i130989%_ '1)))
                        (if (eq? _%key130964%_ _%k130992%_)
                            (let ()
                              (vector-set!
                               _%table130966%_
                               _%probe130987%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table130966%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe130987%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp138098
                                        (let ((__tmp138099
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab130963%_))))
                                          (declare (not safe))
                                          (##fx- __tmp138099 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab130963%_
                                    __tmp138098)))))
                            (_%loop130984%_
                             (let ((_%next-probe131003%_
                                    (fx+ _%start130980%_
                                         _%i130989%_
                                         (fx* _%i130989%_ _%i130989%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131003%_
                                _%size130974%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i130989%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab130933%_ _%key130935%_)
        (let ((_%lock130938%_
               (let () (declare (not safe)) (&raw-table-lock _%tab130933%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130943%_ ((_%spin130946%_ '0))
              (if (let ((__tmp138100
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock130938%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138100 '0))
                  (let ((__tmp138101 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock130938%_ '1 __tmp138101))
                  (if (let () (declare (not safe)) (##fx< _%spin130946%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130943%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130946%_ '1))))
                      (let ((_%owner130952%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock130938%_ '1))))
                        (if (eq? _%owner130952%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130952%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130943%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r130958%_
                 (method-specializer-table-delete!
                  _%tab130933%_
                  _%key130935%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock130938%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock130938%_ '0 '0 '1))))
            _%$r130958%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc130930%_ _%specializer130931%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc130930%_
         _%specializer130931%_)))
    (define __lookup-method-specializer
      (lambda (_%proc130928%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc130928%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass130910%_)
        (let* ((_%klass130913%_ _%klass130910%_)
               (_%$e130922%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130913%_ '12 '#f '#f))))
          (if _%$e130922%_
              _%$e130922%_
              (let ((_%method-table130926%_
                     (___specialize-class _%klass130913%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass130913%_
                   _%method-table130926%_
                   '12
                   '#f
                   '#f))
                _%method-table130926%_)))))
    (define specialize-class
      (lambda (_%klass128860%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128860%_ 'class))
            (let ((_%klass128864%_ _%klass128860%_))
              (__specialize-class _%klass128864%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1095.25-1095.30"
               'contract:
               'class-type?
               'value:
               _%klass128860%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass130894%_
               _%method-table130895%_
               _%method130896%_
               _%proc130897%_)
        (let ((_%$e130899%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table130895%_
                  _%method130896%_
                  '#f))))
          (if _%$e130899%_
              _%$e130899%_
              (let ((_%$e130902%_
                     (__lookup-method-specializer _%proc130897%_)))
                (if _%$e130902%_
                    ((lambda (_%specialize130905%_)
                       (let ((_%specialized-proc130907%_
                              (_%specialize130905%_
                               _%klass130894%_
                               _%method-table130895%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table130895%_
                          _%method130896%_
                          _%specialized-proc130907%_)))
                     _%$e130902%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table130895%_
                       _%method130896%_
                       _%proc130897%_))))))))
    (define ___specialize-class
      (lambda (_%klass130761%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130761%_ 'class))
            (if (let* ((_%klass130764%_ _%klass130761%_)
                       (_%klass130769%_ _%klass130764%_))
                  (__class-type-metaclass? _%klass130769%_))
                (let* ((_%obj130781%_ _%klass130761%_)
                       (_%id130784%_ 'specialize-class)
                       (_%args130787%_ '())
                       (_%id130792%_ _%id130784%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj130781%_
                           _%id130792%_
                           _%args130787%_))
                (if (let* ((_%pred130805%_ class-type-metaclass?)
                           (_%lst130808%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass130761%_
                               '6
                               '#f
                               '#f)))
                           (_%pred130813%_ _%pred130805%_))
                      (declare (not safe))
                      (__find _%pred130813%_ _%lst130808%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass130761%_)
                    (let ((_%method-table130826%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop130828%_ ((_%rest130830%_
                                            (let* ((_%klass130877%_
                                                    _%klass130761%_)
                                                   (_%klass130882%_
                                                    _%klass130877%_))
                                              (__class-precedence-list
                                               _%klass130882%_))))
                        (let* ((_%rest130831130839%_ _%rest130830%_)
                               (_%else130833130847%_
                                (lambda () _%method-table130826%_))
                               (_%K130835130865%_
                                (lambda (_%rest130850%_ _%xklass130851%_)
                                  (let ((_%xmethod-table130852130854%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass130851%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table130852130854%_
                                        (let* ((_%xmethod-table130856%_
                                                _%xmethod-table130852130854%_)
                                               (__tmp138102
                                                (lambda (_%g130857130860%_
                                                         _%g130858130862%_)
                                                  (__specialize-method
                                                   _%klass130761%_
                                                   _%method-table130826%_
                                                   _%g130857130860%_
                                                   _%g130858130862%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table130856%_
                                           __tmp138102))
                                        '#f))
                                  (_%loop130828%_ _%rest130850%_))))
                          (if (pair? _%rest130831130839%_)
                              (let ((_%hd130836130868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130831130839%_)))
                                    (_%tl130837130870%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130831130839%_))))
                                (let* ((_%xklass130873%_ _%hd130836130868%_)
                                       (_%rest130875%_ _%tl130837130870%_))
                                  (_%K130835130865%_
                                   _%rest130875%_
                                   _%xklass130873%_)))
                              (_%else130833130847%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass130761%_))
                (__specialize-class (__shadow-class__0 _%klass130761%_))
                (error '"bad class; cannot specialize" _%klass130761%_)))))
    (define __seal-class!
      (lambda (_%klass130624%_)
        (let ((_%klass130627%_ _%klass130624%_))
          (if (let* ((_%klass130636%_ _%klass130627%_)
                     (_%klass130641%_ _%klass130636%_))
                (__class-type-sealed? _%klass130641%_))
              '#!void
              (begin
                (if (let* ((_%klass130654%_ _%klass130627%_)
                           (_%klass130659%_ _%klass130654%_))
                      (__class-type-metaclass? _%klass130659%_))
                    (let ()
                      (let* ((_%obj130670%_ _%klass130627%_)
                             (_%id130673%_ 'seal-class!)
                             (_%args130676%_ '())
                             (_%id130681%_ _%id130673%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj130670%_
                                 _%id130681%_
                                 _%args130676%_))
                      (let* ((_%klass130694%_ _%klass130627%_)
                             (_%klass130699%_ _%klass130694%_))
                        (__specialize-class _%klass130699%_)))
                    (if (let* ((_%pred130709%_ class-type-metaclass?)
                               (_%lst130712%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass130627%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred130717%_ _%pred130709%_))
                          (declare (not safe))
                          (__find _%pred130717%_ _%lst130712%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass130627%_)
                        (let* ((_%klass130730%_ _%klass130627%_)
                               (_%klass130735%_ _%klass130730%_))
                          (__specialize-class _%klass130735%_))))
                (let* ((_%klass130746%_ _%klass130627%_)
                       (_%klass130751%_ _%klass130746%_))
                  (__class-type-seal! _%klass130751%_)))))))
    (define seal-class!
      (lambda (_%klass128994%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128994%_ 'class))
            (let ((_%klass128998%_ _%klass128994%_))
              (__seal-class! _%klass128998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1141.20-1141.25"
               'contract:
               'class-type?
               'value:
               _%klass128994%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass130512%_ _%obj130513%_ _%id130514%_)
        (let* ((_%subklass130517%_ _%subklass130512%_)
               (_%id130525%_ _%id130514%_))
          (letrec ((_%find-next-method130534%_
                    (lambda (_%klass130536%_)
                      (let _%lp130538%_ ((_%rest130540%_
                                          (let ((_%klass130609%_
                                                 _%klass130536%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass130609%_
                                                   'class))
                                                (let ((_%klass130614%_
                                                       _%klass130609%_))
                                                  (__class-precedence-list
                                                   _%klass130614%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass130609%_)
                                                  '#!void)))))
                        (let* ((_%rest130541130549%_ _%rest130540%_)
                               (_%else130543130557%_ (lambda () '#f))
                               (_%K130545130597%_
                                (lambda (_%rest130560%_ _%klass130561%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass130517%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass130561%_)))
                                      (let* ((_%mixins130563%_ _%rest130560%_)
                                             (_%obj130566%_ _%obj130513%_)
                                             (_%id130569%_ _%id130525%_)
                                             (_%id130574%_ _%id130569%_))
                                        (__mixin-find-method
                                         _%mixins130563%_
                                         _%obj130566%_
                                         _%id130574%_))
                                      (_%lp130538%_ _%rest130560%_)))))
                          (if (pair? _%rest130541130549%_)
                              (let ((_%hd130546130600%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130541130549%_)))
                                    (_%tl130547130602%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130541130549%_))))
                                (let* ((_%klass130605%_ _%hd130546130600%_)
                                       (_%rest130607%_ _%tl130547130602%_))
                                  (_%K130545130597%_
                                   _%rest130607%_
                                   _%klass130605%_)))
                              (_%else130543130557%_)))))))
            (_%find-next-method130534%_ (class-of _%obj130513%_))))))
    (define next-method
      (lambda (_%subklass129128%_ _%obj129129%_ _%id129130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129128%_ 'class))
            (let ((_%subklass129134%_ _%subklass129128%_))
              (if (symbol? _%id129130%_)
                  (let ((_%id129144%_ _%id129130%_))
                    (__next-method
                     _%subklass129134%_
                     _%obj129129%_
                     _%id129144%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1163.44-1163.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id129130%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1163.20-1163.28"
               'contract:
               'class-type?
               'value:
               _%subklass129128%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass130447%_ _%obj130448%_ _%id130449%_ . _%args130450%_)
        (let* ((_%subklass130453%_ _%subklass130447%_)
               (_%id130461%_ _%id130449%_)
               (_%$e130506%_
                (let* ((_%subklass130470%_ _%subklass130453%_)
                       (_%obj130473%_ _%obj130448%_)
                       (_%id130476%_ _%id130461%_)
                       (_%subklass130481%_ _%subklass130470%_)
                       (_%id130496%_ _%id130476%_))
                  (__next-method
                   _%subklass130481%_
                   _%obj130473%_
                   _%id130496%_))))
          (if _%$e130506%_
              ((lambda (_%methodf130509%_)
                 (apply _%methodf130509%_ _%obj130448%_ _%args130450%_))
               _%$e130506%_)
              (error '"cannot find next method"
                     'object:
                     _%obj130448%_
                     'method:
                     _%id130461%_)))))
    (define call-next-method
      (lambda (_%subklass129274%_ _%obj129275%_ _%id129276%_ . _%args129277%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129274%_ 'class))
            (let ((_%subklass129281%_ _%subklass129274%_))
              (if (symbol? _%id129276%_)
                  (let ((_%id129291%_ _%id129276%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass129281%_
                             _%obj129275%_
                             _%id129291%_
                             _%args129277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1174.49-1174.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id129276%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.33"
               'contract:
               'class-type?
               'value:
               _%subklass129274%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type130226%_ _%properties130227%_)
        (letrec ((_%shadow-type-id130229%_
                  (lambda (_%type130435%_)
                    (let ((__tmp138103
                           (let ()
                             (declare (not safe))
                             (##type-name _%type130435%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp138103 '"::t"))))
                 (_%shadow-type-name130230%_
                  (lambda (_%type130433%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type130433%_))))
                 (_%make-shadow-class130231%_
                  (lambda (_%type130315%_ _%precedence-list130316%_)
                    (let* ((_%super130318%_
                            (if (pair? _%precedence-list130316%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list130316%_))
                                      '())
                                '()))
                           (_%klass130430%_
                            (let* ((_%id130320%_
                                    (_%shadow-type-id130229%_ _%type130315%_))
                                   (_%name130323%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type130315%_)))
                                   (_%direct-supers130326%_ _%super130318%_)
                                   (_%direct-slots130329%_ '())
                                   (_%properties130355%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type130315%_)
                                                      (let ((__tmp138104
                                                             (if (let ((_%type130332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type130315%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type130332%_))
                               (let ((_%type130337%_ _%type130332%_))
                                 (__type-extensible? _%type130337%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type130332%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties130227%_ __tmp138104))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor130358%_ '#f)
                                   (_%id130363%_ _%id130320%_))
                              (if (symbol? _%name130323%_)
                                  (let* ((_%name130374%_ _%name130323%_)
                                         (_%direct-supers130384%_
                                          _%direct-supers130326%_)
                                         (_%direct-slots130394%_
                                          _%direct-slots130329%_)
                                         (_%properties130404%_
                                          _%properties130355%_))
                                    (if ((lambda (_%$obj130413%_)
                                           (or (not _%$obj130413%_)
                                               (symbol? _%$obj130413%_)))
                                         _%constructor130358%_)
                                        (let ((_%constructor130420%_
                                               _%constructor130358%_))
                                          (__make-class-type
                                           _%id130363%_
                                           _%name130374%_
                                           _%direct-supers130384%_
                                           _%direct-slots130394%_
                                           _%properties130404%_
                                           _%constructor130420%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor130358%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name130323%_)
                                    '#!void)))))
                      (let ((__tmp138105
                             (let ()
                               (declare (not safe))
                               (##type-id _%type130315%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp138105
                         _%klass130430%_))
                      _%klass130430%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130235%_ ((_%spin130238%_ '0))
              (if (let ((__tmp138106
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138106 '0))
                  (let ((__tmp138107 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp138107))
                  (if (let () (declare (not safe)) (##fx< _%spin130238%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130235%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130238%_ '1))))
                      (let ((_%owner130244%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner130244%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130244%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130235%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e130250%_
                 (let ((__tmp138108
                        (let ()
                          (declare (not safe))
                          (##type-id _%type130226%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp138108 '#f))))
            (if _%$e130250%_
                ((lambda (_%klass130253%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass130253%_)
                 _%$e130250%_)
                (let _%loop130258%_ ((_%super130260%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type130226%_)))
                                     (_%hierarchy130261%_ '()))
                  (if (not _%super130260%_)
                      (let _%loop130264%_ ((_%rest130266%_ _%hierarchy130261%_)
                                           (_%precedence-list130267%_ '()))
                        (let* ((_%rest130268130276%_ _%rest130266%_)
                               (_%else130270130288%_
                                (lambda ()
                                  (let ((_%klass130284%_
                                         (_%make-shadow-class130231%_
                                          _%type130226%_
                                          _%precedence-list130267%_)))
                                    (let ()
                                      (declare (not interrupts-enabled))
                                      (begin
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
                                           '1))))
                                    _%klass130284%_)))
                               (_%K130272130302%_
                                (lambda (_%rest130291%_ _%type130292%_)
                                  (let ((_%$e130294%_
                                         (let ((__tmp138109
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type130292%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp138109
                                            '#f))))
                                    (if _%$e130294%_
                                        ((lambda (_%klass130297%_)
                                           (_%loop130264%_
                                            _%rest130291%_
                                            (cons _%klass130297%_
                                                  _%precedence-list130267%_)))
                                         _%$e130294%_)
                                        (let ((_%klass130300%_
                                               (_%make-shadow-class130231%_
                                                _%type130292%_
                                                _%precedence-list130267%_)))
                                          (_%loop130264%_
                                           _%rest130291%_
                                           (cons _%klass130300%_
                                                 _%precedence-list130267%_))))))))
                          (if (pair? _%rest130268130276%_)
                              (let ((_%hd130273130305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130268130276%_)))
                                    (_%tl130274130307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130268130276%_))))
                                (let* ((_%type130310%_ _%hd130273130305%_)
                                       (_%rest130312%_ _%tl130274130307%_))
                                  (_%K130272130302%_
                                   _%rest130312%_
                                   _%type130310%_)))
                              (_%else130270130288%_))))
                      (_%loop130258%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super130260%_))
                       (cons _%super130260%_ _%hierarchy130261%_)))))))))
    (define __shadow-class__0
      (lambda (_%type130440%_)
        (let ((_%properties130442%_ '()))
          (__shadow-class__% _%type130440%_ _%properties130442%_))))
    (define __shadow-class
      (lambda _g138110_
        (let ((_g138111_ (let () (declare (not safe)) (##length _g138110_))))
          (cond ((let () (declare (not safe)) (##fx= _g138111_ 1))
                 (apply __shadow-class__0 _g138110_))
                ((let () (declare (not safe)) (##fx= _g138111_ 2))
                 (apply __shadow-class__% _g138110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g138110_))))))
    (define __type
      (let* ((_%tb130214%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e130216%_ _%tb130214%_))
        (if (eq? '2 _%$e130216%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e130216%_)
                (let ((_%flonum-self-tagging-tags130219%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits130220%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e130222%_ _%flonum-self-tagging-tags130219%_))
                    (if (eq? '0 _%$e130222%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits130220%_ '2))
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
                        (if (eq? '1 _%$e130222%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits130220%_ '2))
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
                            (if (eq? '2 _%$e130222%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e130222%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e130222%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags130219%_))))))))
                (error '"unexpected tag width" _%tb130214%_)))))
    (define __class
      (let* ((_%len130162%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv130164%_
              (let () (declare (not safe)) (##make-vector _%len130162%_ '#f))))
        (let _%loop130167%_ ((_%i130169%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i130169%_ _%len130162%_))
              (let* ((_%t130171%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i130169%_)))
                     (_%f130211%_
                      (if (eq? _%t130171%_ 'undefined)
                          (lambda (_%obj130174%_)
                            (error '"object type is undefined" _%obj130174%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t130171%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj130177%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t130171%_))
                              (if (eq? _%t130171%_ 'subtyped)
                                  (lambda (_%obj130181%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st130184%_
                                           (##subtype _%obj130181%_)))
                                      (if (##fx= _%st130184%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass130187%_
                                                 (##structure-type
                                                  _%obj130181%_)))
                                            (if (##structure-instance-of?
                                                 _%klass130187%_
                                                 'class)
                                                _%klass130187%_
                                                (__shadow-class__0
                                                 _%klass130187%_)))
                                          (if (##fx= _%st130184%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj130181%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e130190%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st130184%_)))
                                                (if _%$e130190%_
                                                    (__system-class
                                                     _%$e130190%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st130184%_
                                                           'object:
                                                           _%obj130181%_)))))))
                                  (if (eq? _%t130171%_ 'special)
                                      (lambda (_%obj130195%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj130195%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj130195%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj130195%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj130195%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj130195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj130195%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj130195%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj130195%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj130195%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj130195%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj130195%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t130171%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv130164%_ _%i130169%_ _%f130211%_))
                (_%loop130167%_
                 (let () (declare (not safe)) (##fx+ _%i130169%_ '1))))
              _%cv130164%_))))
    (define type-of
      (lambda (_%obj130158%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj130158%_)))))
    (define class-of
      (lambda (_%obj130149%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t130153%_ (##type _%obj130149%_))
                 (_%f130155%_ (##vector-ref __class _%t130153%_)))
            (_%f130155%_ _%obj130149%_)))))
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
      (lambda (_%id130143%_)
        (let ((_%$e130145%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id130143%_ '#f))))
          (if _%$e130145%_
              _%$e130145%_
              (error '"unknown system class" _%id130143%_)))))
    (define __make-system-class
      (lambda (_%id130045%_ _%super130046%_ _%properties130047%_)
        (let ((_%klass130141%_
               (let* ((_%id130049%_ _%id130045%_)
                      (_%name130052%_ _%id130045%_)
                      (_%direct-supers130055%_ _%super130046%_)
                      (_%direct-slots130058%_ '())
                      (_%properties130061%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties130047%_))))
                      (_%constructor130064%_ '#f))
                 (if (symbol? _%id130049%_)
                     (let ((_%id130069%_ _%id130049%_))
                       (if (symbol? _%name130052%_)
                           (let ((_%name130085%_ _%name130052%_))
                             (if (list? _%direct-supers130055%_)
                                 (let* ((_%direct-supers130095%_
                                         _%direct-supers130055%_)
                                        (_%direct-slots130105%_
                                         _%direct-slots130058%_)
                                        (_%properties130115%_
                                         _%properties130061%_))
                                   (if ((lambda (_%$obj130124%_)
                                          (or (not _%$obj130124%_)
                                              (symbol? _%$obj130124%_)))
                                        _%constructor130064%_)
                                       (let ((_%constructor130131%_
                                              _%constructor130064%_))
                                         (__make-class-type
                                          _%id130069%_
                                          _%name130085%_
                                          _%direct-supers130095%_
                                          _%direct-slots130105%_
                                          _%properties130115%_
                                          _%constructor130131%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor130064%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers130055%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name130052%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id130049%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id130045%_
             _%klass130141%_))
          _%klass130141%_)))))
