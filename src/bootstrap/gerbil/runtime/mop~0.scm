(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1779967240)
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
      (let ((_%flags137499%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137500%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137501%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags137499%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table137501%_
           _%properties137500%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots137456%_
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
             (_%slot-vector137458%_ (list->vector (cons '#f _%slots137456%_)))
             (_%slot-table137484%_
              (let ((_%slot-table137460%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp140578
                       (lambda (_%slot137462%_ _%field137463%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137460%_
                            _%slot137462%_
                            _%field137463%_))
                         (let ((__tmp140579
                                (let ((_%sym137465%_ _%slot137462%_))
                                  (if (symbol? _%sym137465%_)
                                      (let ((_%sym137470%_ _%sym137465%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym137470%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym137465%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137460%_
                            __tmp140579
                            _%field137463%_))))
                      (__tmp140576
                       (let ((__tmp140577
                              (let ()
                                (declare (not safe))
                                (##length _%slots137456%_))))
                         (declare (not safe))
                         (##iota __tmp140577 '1))))
                  (declare (not safe))
                  (##for-each __tmp140578 _%slots137456%_ __tmp140576))
                _%slot-table137460%_))
             (_%flags137486%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields137492%_
              (list->vector
               (let ((__tmp140580
                      (map (lambda (_%g137487137489%_)
                             (list _%g137487137489%_ '5 '#f))
                           (drop _%slots137456%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp140580))))
             (_%properties137494%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots137456%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t137496%_
              (let ((__tmp140581 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags137486%_
                 ##type-type
                 _%fields137492%_
                 __tmp140581
                 _%slot-vector137458%_
                 _%slot-table137484%_
                 _%properties137494%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t137496%_ _%t137496%_))
        _%t137496%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags137452%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137453%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137454%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp140582 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags137452%_
           '#f
           '#()
           __tmp140582
           '#(#f)
           _%slot-table137454%_
           _%properties137453%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass137440%_)
        (let ((_%klass137443%_ _%klass137440%_))
          (declare (not safe))
          (##structure-type _%klass137443%_))))
    (define class-type
      (lambda (_%klass137426%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137426%_ 'class))
            (let ((_%klass137430%_ _%klass137426%_))
              (__class-type _%klass137430%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass137426%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj137424%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj137424%_ 'class))))
    (define __class-type=?
      (lambda (_%x137403%_ _%y137404%_)
        (let* ((_%x137407%_ _%x137403%_) (_%y137415%_ _%y137404%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x137407%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y137415%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x137378%_ _%y137379%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x137378%_ 'class))
            (let ((_%x137383%_ _%x137378%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y137379%_ 'class))
                  (let ((_%y137393%_ _%y137379%_))
                    (__class-type=? _%x137383%_ _%y137393%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y137379%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x137378%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type137366%_)
        (let* ((_%type137369%_ _%type137366%_)
               (__tmp140583
                (let ((__tmp140584
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137369%_))))
                  (declare (not safe))
                  (##fxand __tmp140584 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140583 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type137352%_)
        (if (let () (declare (not safe)) (##type? _%type137352%_))
            (let ((_%type137356%_ _%type137352%_))
              (__type-opaque? _%type137356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type137352%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass137340%_)
        (let* ((_%klass137343%_ _%klass137340%_)
               (__tmp140585
                (let ((__tmp140586
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137343%_))))
                  (declare (not safe))
                  (##fxand __tmp140586 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140585 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass137326%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137326%_ 'class))
            (let ((_%klass137330%_ _%klass137326%_))
              (__class-type-opaque? _%klass137330%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass137326%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type137314%_)
        (let* ((_%type137317%_ _%type137314%_)
               (__tmp140587
                (let ((__tmp140588
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137317%_))))
                  (declare (not safe))
                  (##fxand __tmp140588 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140587 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type137300%_)
        (if (let () (declare (not safe)) (##type? _%type137300%_))
            (let ((_%type137304%_ _%type137300%_))
              (__type-extensible? _%type137304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type137300%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type137288%_)
        (let* ((_%type137291%_ _%type137288%_)
               (__tmp140589
                (let ((__tmp140590
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137291%_))))
                  (declare (not safe))
                  (##fxand __tmp140590 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140589 '0))))
    (define class-type-final?
      (lambda (_%type137274%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type137274%_ 'class))
            (let ((_%type137278%_ _%type137274%_))
              (__class-type-final? _%type137278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type137274%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass137262%_)
        (let* ((_%klass137265%_ _%klass137262%_)
               (__tmp140591
                (let ((__tmp140592
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137265%_))))
                  (declare (not safe))
                  (##fxand __tmp140592 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp140591 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass137248%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137248%_ 'class))
            (let ((_%klass137252%_ _%klass137248%_))
              (__class-type-struct? _%klass137252%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass137248%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass137236%_)
        (let* ((_%klass137239%_ _%klass137236%_)
               (__tmp140593
                (let ((__tmp140594
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137239%_))))
                  (declare (not safe))
                  (##fxand __tmp140594 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp140593 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass137222%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137222%_ 'class))
            (let ((_%klass137226%_ _%klass137222%_))
              (__class-type-sealed? _%klass137226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass137222%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass137210%_)
        (let* ((_%klass137213%_ _%klass137210%_)
               (__tmp140595
                (let ((__tmp140596
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137213%_))))
                  (declare (not safe))
                  (##fxand __tmp140596 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp140595 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass137196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137196%_ 'class))
            (let ((_%klass137200%_ _%klass137196%_))
              (__class-type-metaclass? _%klass137200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass137196%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass137184%_)
        (let* ((_%klass137187%_ _%klass137184%_)
               (__tmp140597
                (let ((__tmp140598
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137187%_))))
                  (declare (not safe))
                  (##fxand __tmp140598 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp140597 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass137170%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137170%_ 'class))
            (let ((_%klass137174%_ _%klass137170%_))
              (__class-type-system? _%klass137174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass137170%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass137158%_)
        (let* ((_%klass137161%_ _%klass137158%_)
               (__tmp140599
                (let ((__tmp140600
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137161%_))))
                  (declare (not safe))
                  (##fxand __tmp140600 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp140599 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass137144%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137144%_ 'class))
            (let ((_%klass137148%_ _%klass137144%_))
              (__class-type-acyclic? _%klass137148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass137144%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id136918%_
               _%type-name136919%_
               _%type-super136920%_
               _%precedence-list136921%_
               _%slot-vector136922%_
               _%properties136923%_
               _%constructor136924%_
               _%slot-table136925%_
               _%methods136926%_)
        (letrec ((_%make-props!136929%_
                  (lambda (_%key137094%_)
                    (letrec* ((_%ht137096%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!137097%_
                               (lambda (_%ht137137%_ _%slots137138%_)
                                 (for-each
                                  (lambda (_%g137139137141%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht137137%_
                                       _%g137139137141%_
                                       '#t)))
                                  _%slots137138%_)))
                              (_%put-alist!137098%_
                               (lambda (_%ht137126%_
                                        _%key137127%_
                                        _%alist137128%_)
                                 (let ((_%$e137130%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key137127%_
                                           _%alist137128%_))))
                                   (if _%$e137130%_
                                       (_%put-slots!137097%_
                                        _%ht137126%_
                                        _%$e137130%_)
                                       '#!void)))))
                      (_%put-alist!137098%_
                       _%ht137096%_
                       _%key137094%_
                       _%properties136923%_)
                      (for-each
                       (lambda (_%mixin137100%_)
                         (let ((_%alist137102%_
                                (##structure-ref
                                 _%mixin137100%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist137102%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key137094%_
                                           _%alist137102%_))))
                               (_%put-slots!137097%_
                                _%ht137096%_
                                (let ((_%klass137107%_ _%mixin137100%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass137107%_
                                         'class))
                                      (let ((_%klass137112%_ _%klass137107%_))
                                        (__class-type-slot-list
                                         _%klass137112%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass137107%_)
                                        '#!void))))
                               (_%put-alist!137098%_
                                _%ht137096%_
                                _%key137094%_
                                _%alist137102%_))))
                       _%precedence-list136921%_)
                      _%ht137096%_)))
                 (_%no-alist?136930%_
                  (lambda (_%key137083%_ _%alist137084%_)
                    (let ((_%$e137086%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key137083%_ _%alist137084%_))))
                      (if _%$e137086%_ (eq? _%$e137086%_ '#t) '#t)))))
          (let* ((_%transparent?136950%_
                  (let ((__tmp140601
                         (if _%type-super136920%_
                             (not (let ((_%type136932%_ _%type-super136920%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type136932%_))
                                        (let ((_%type136937%_ _%type136932%_))
                                          (__type-opaque? _%type136937%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type136932%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties136923%_ __tmp140601)))
                 (_%all-slots-printable?136952%_
                  (if _%transparent?136950%_
                      (_%no-alist?136930%_ 'print: _%properties136923%_)
                      '#f))
                 (_%printable136954%_
                  (if (not _%all-slots-printable?136952%_)
                      (_%make-props!136929%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?136956%_
                  (if _%transparent?136950%_
                      (_%no-alist?136930%_ 'equal: _%properties136923%_)
                      '#f))
                 (_%equalable136958%_
                  (if (not _%all-slots-equalable?136956%_)
                      (_%make-props!136929%_ 'equal:)
                      '#f))
                 (_%first-new-field136960%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super136920%_ 'class))
                      (let ((__tmp140602
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super136920%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp140602))
                      '1))
                 (_%field-info-length136962%_
                  (let ((__tmp140603
                         (let ((__tmp140604
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector136922%_))))
                           (declare (not safe))
                           (##fx- __tmp140604 _%first-new-field136960%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp140603)))
                 (_%field-info136964%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length136962%_ '#f)))
                 (_%struct?136966%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties136923%_)))
                 (_%final?136968%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties136923%_)))
                 (_%metaclass136975%_
                  (let ((_%metaclass136969136971%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties136923%_))))
                    (if _%metaclass136969136971%_
                        (let ((_%metaclass136973%_ _%metaclass136969136971%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass136973%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id136918%_
                                     'metaclass:
                                     _%metaclass136973%_))
                          _%metaclass136973%_)
                        '#f)))
                 (_%system?136977%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties136923%_)))
                 (_%opaque?136979%_ (not _%transparent?136950%_))
                 (_%acyclic?136981%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties136923%_)))
                 (_%type-flags136983%_
                  (let ((__tmp140610
                         (if _%final?136968%_ '0 type-flag-extensible))
                        (__tmp140609
                         (if _%opaque?136979%_ type-flag-opaque '0))
                        (__tmp140608
                         (if _%struct?136966%_ class-type-flag-struct '0))
                        (__tmp140607
                         (if _%metaclass136975%_ class-type-flag-metaclass '0))
                        (__tmp140606
                         (if _%system?136977%_ class-type-flag-system '0))
                        (__tmp140605
                         (if _%acyclic?136981%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp140610
                             __tmp140609
                             __tmp140608
                             __tmp140607
                             __tmp140606
                             __tmp140605)))
                 (_%precedence-list136991%_
                  (let ((_%$e136985%_ (memq t::t _%precedence-list136921%_)))
                    (if _%$e136985%_
                        (if (null? (cdr _%$e136985%_))
                            _%precedence-list136921%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list136921%_))
                        (let ((__tmp140611 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list136921%_ __tmp140611))))))
            (let _%loop136994%_ ((_%i136996%_ _%first-new-field136960%_)
                                 (_%j136997%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j136997%_ _%field-info-length136962%_))
                  (let* ((_%slot136999%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector136922%_ _%i136996%_)))
                         (_%flags137007%_
                          (let ((__tmp140613
                                 (if (or _%all-slots-printable?136952%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable136954%_
                                            _%slot136999%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp140612
                                 (if (or _%all-slots-equalable?136956%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable136958%_
                                            _%slot136999%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp140613 __tmp140612))))
                    (vector-set!
                     _%field-info136964%_
                     _%j136997%_
                     _%slot136999%_)
                    (vector-set!
                     _%field-info136964%_
                     (let () (declare (not safe)) (##fx+ _%j136997%_ '1))
                     _%flags137007%_)
                    (_%loop136994%_
                     (let () (declare (not safe)) (##fx+ _%i136996%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j136997%_ '3))))
                  '#!void))
            (if _%metaclass136975%_
                (let ((_%val137046%_
                       (let* ((_%klass137010%_ _%metaclass136975%_)
                              (_%args137013%_
                               (list _%type-id136918%_
                                     _%type-name136919%_
                                     _%type-flags136983%_
                                     _%type-super136920%_
                                     _%field-info136964%_
                                     _%precedence-list136991%_
                                     _%slot-vector136922%_
                                     _%slot-table136925%_
                                     _%properties136923%_
                                     _%constructor136924%_
                                     _%methods136926%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass137010%_
                                'class))
                             (let ((_%klass137018%_ _%klass137010%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass137018%_
                                        _%args137013%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass137010%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@293.10-297.95"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val137046%_)
                  '#!void)
                (let ((_%klass137049%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id136918%_
                          _%type-name136919%_
                          _%type-flags136983%_
                          _%type-super136920%_
                          _%field-info136964%_
                          _%precedence-list136991%_
                          _%slot-vector136922%_
                          _%slot-table136925%_
                          _%properties136923%_
                          _%constructor136924%_
                          _%methods136926%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super137051%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again137055%_ ((_%spin137058%_ '0))
                         (if (let ((__tmp140614
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp140614 '0))
                             (let ((__tmp140615 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp140615))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin137058%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again137055%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin137058%_ '1))))
                                 (let ((_%owner137064%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner137064%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner137064%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again137055%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r137078%_
                            (let* ((_%props137070%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super137051%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e137072%_
                                    (assq 'subclasses: _%props137070%_)))
                              (if _%$e137072%_
                                  (set-cdr!
                                   _%$e137072%_
                                   (cons _%klass137049%_ (cdr _%$e137072%_)))
                                  (let ((__tmp140616
                                         (cons (cons 'subclasses:
                                                     (cons _%klass137049%_
                                                           '()))
                                               _%props137070%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super137051%_
                                     __tmp140616
                                     '9
                                     '#f
                                     '#f))))))
                       (let ()
                         (declare (not interrupts-enabled))
                         (begin
                           (let ()
                             (declare (not safe))
                             (##vector-set!
                              __class-type-properties-lock
                              '1
                              '#f))
                           (let ()
                             (declare (not safe))
                             (##vector-cas!
                              __class-type-properties-lock
                              '0
                              '0
                              '1))))
                       _%$r137078%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties136923%_ '())))
                  _%klass137049%_))))))
    (define class-type-id
      (lambda (_%klass136916%_)
        (##structure-ref _%klass136916%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass136914%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136914%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass136911%_ _%val136912%_)
        (##structure-set! _%klass136911%_ _%val136912%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass136906%_ _%val136908%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136906%_
           _%val136908%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass136904%_)
        (##structure-ref _%klass136904%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136902%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136902%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136899%_ _%val136900%_)
        (##structure-set! _%klass136899%_ _%val136900%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136894%_ _%val136896%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136894%_
           _%val136896%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136892%_)
        (##structure-ref _%klass136892%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136890%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136890%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136887%_ _%val136888%_)
        (##structure-set! _%klass136887%_ _%val136888%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136882%_ _%val136884%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136882%_
           _%val136884%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136880%_)
        (##structure-ref _%klass136880%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136878%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136878%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136875%_ _%val136876%_)
        (##structure-set! _%klass136875%_ _%val136876%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136870%_ _%val136872%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136870%_
           _%val136872%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136868%_)
        (##structure-ref _%klass136868%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136866%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136863%_ _%val136864%_)
        (##structure-set! _%klass136863%_ _%val136864%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136858%_ _%val136860%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136858%_
           _%val136860%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136856%_)
        (##structure-ref _%klass136856%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136854%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136854%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136851%_ _%val136852%_)
        (##structure-set!
         _%klass136851%_
         _%val136852%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136846%_ _%val136848%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136846%_
           _%val136848%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136844%_)
        (##structure-ref _%klass136844%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136842%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136842%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136839%_ _%val136840%_)
        (##structure-set!
         _%klass136839%_
         _%val136840%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136834%_ _%val136836%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136834%_
           _%val136836%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136832%_)
        (##structure-ref _%klass136832%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136830%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136830%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136827%_ _%val136828%_)
        (##structure-set!
         _%klass136827%_
         _%val136828%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136822%_ _%val136824%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136822%_
           _%val136824%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136820%_)
        (##structure-ref _%klass136820%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136818%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136818%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136815%_ _%val136816%_)
        (##structure-set!
         _%klass136815%_
         _%val136816%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136810%_ _%val136812%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136810%_
           _%val136812%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136808%_)
        (##structure-ref _%klass136808%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136806%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136806%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136803%_ _%val136804%_)
        (##structure-set!
         _%klass136803%_
         _%val136804%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136798%_ _%val136800%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136798%_
           _%val136800%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136796%_)
        (##structure-ref _%klass136796%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136794%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136794%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136791%_ _%val136792%_)
        (##structure-set!
         _%klass136791%_
         _%val136792%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136786%_ _%val136788%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136786%_
           _%val136788%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136784%_)
        (##structure-ref _%klass136784%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136782%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136782%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136779%_ _%val136780%_)
        (##structure-set!
         _%klass136779%_
         _%val136780%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136774%_ _%val136776%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136774%_
           _%val136776%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136772%_)
        (##structure-ref _%klass136772%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136770%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136770%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136767%_ _%val136768%_)
        (##structure-set!
         _%klass136767%_
         _%val136768%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass136762%_ _%val136764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136762%_
           _%val136764%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type136526%_)
        (letrec ((_%__fields->list136656%_
                  (lambda (_%fields136720%_)
                    (let* ((_%fields136723%_ _%fields136720%_)
                           (_%fields-len136732%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields136723%_))))
                      (let _%loop136734%_ ((_%i136736%_ '0) (_%r136737%_ '()))
                        (let* ((_%i136740%_ _%i136736%_)
                               (_%r136753%_ _%r136737%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136740%_ _%fields-len136732%_))
                              (_%loop136734%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i136740%_ '3))
                               (cons (vector-ref _%fields136723%_ _%i136740%_)
                                     _%r136753%_))
                              (reverse! _%r136753%_)))))))
                 (_%fields->list136657%_
                  (lambda (_%fields136708%_)
                    (let ((_%fields136711%_ _%fields136708%_))
                      (_%__fields->list136656%_ _%fields136711%_)))))
          (let _%loop136659%_ ((_%type136661%_ _%type136526%_))
            (if (let () (declare (not safe)) (##type? _%type136661%_))
                (if (eq? _%type136661%_ ##type-type)
                    '()
                    (let ((_%$e136666%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type136661%_))))
                      (if _%$e136666%_
                          (let ((__tmp140618 (_%loop136659%_ _%$e136666%_))
                                (__tmp140617
                                 (let* ((_%fields136672%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type136661%_)))
                                        (_%fields136676%_ _%fields136672%_))
                                   (_%__fields->list136656%_
                                    _%fields136676%_))))
                            (declare (not safe))
                            (##append __tmp140618 __tmp140617))
                          (let* ((_%fields136693%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type136661%_)))
                                 (_%fields136697%_ _%fields136693%_))
                            (_%__fields->list136656%_ _%fields136697%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass136494%_)
        (let ((_%klass136497%_ _%klass136494%_))
          (letrec ((_%get-fields!136506%_
                    (lambda (_%klass136521%_ _%type136522%_)
                      (let ((_%fields136524%_
                             (type-field-list _%type136522%_)))
                        (##structure-set!
                         _%klass136521%_
                         (cons (cons 'fields: _%fields136524%_)
                               (##structure-ref
                                _%klass136521%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields136524%_))))
            (let* ((_%props136508%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136497%_ '9 '#f '#f)))
                   (_%$e136510%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props136508%_))))
              (if _%$e136510%_
                  _%$e136510%_
                  (let ((_%$e136513%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136508%_))))
                    (if _%$e136513%_
                        (_%get-fields!136506%_ _%klass136497%_ _%$e136513%_)
                        (_%get-fields!136506%_
                         _%klass136497%_
                         _%klass136497%_)))))))))
    (define class-type-field-list
      (lambda (_%klass136480%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136480%_ 'class))
            (let ((_%klass136484%_ _%klass136480%_))
              (__class-type-field-list _%klass136484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@395.30-395.35"
               'contract:
               'class-type?
               'value:
               _%klass136480%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass136468%_)
        (let ((_%klass136471%_ _%klass136468%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass136471%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass136454%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136454%_ 'class))
            (let ((_%klass136458%_ _%klass136454%_))
              (__class-type-slot-list _%klass136458%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@411.29-411.34"
               'contract:
               'class-type?
               'value:
               _%klass136454%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass136442%_)
        (let* ((_%klass136445%_ _%klass136442%_)
               (__tmp140619
                (let ((__tmp140620
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136445%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140620))))
          (declare (not safe))
          (##fx- __tmp140619 '1))))
    (define class-type-field-count
      (lambda (_%klass136428%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136428%_ 'class))
            (let ((_%klass136432%_ _%klass136428%_))
              (__class-type-field-count _%klass136432%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@413.31-413.36"
               'contract:
               'class-type?
               'value:
               _%klass136428%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass136416%_)
        (let ((_%klass136419%_ _%klass136416%_))
          (let ((__tmp140621
                 (let ((__tmp140622
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass136419%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp140622))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass136419%_
             __tmp140621
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass136402%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136402%_ 'class))
            (let ((_%klass136406%_ _%klass136402%_))
              (__class-type-seal! _%klass136406%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@416.25-416.30"
               'contract:
               'class-type?
               'value:
               _%klass136402%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass136356%_ _%key136357%_ _%val136358%_)
        (let* ((_%klass136361%_ _%klass136356%_) (_%key136369%_ _%key136357%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again136380%_ ((_%spin136383%_ '0))
              (if (let ((__tmp140623
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp140623 '0))
                  (let ((__tmp140624 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp140624))
                  (if (let () (declare (not safe)) (##fx< _%spin136383%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again136380%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin136383%_ '1))))
                      (let ((_%owner136389%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner136389%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner136389%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again136380%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r136397%_
                 (let ((_%props136395%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass136361%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key136369%_ _%props136395%_)
                       '#!void
                       (let ((__tmp140625
                              (cons (cons _%key136369%_ _%val136358%_)
                                    _%props136395%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass136361%_
                          __tmp140625
                          '9
                          '#f
                          '#f))))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! __class-type-properties-lock '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! __class-type-properties-lock '0 '0 '1))))
            _%$r136397%_))))
    (define class-type-properties-put!
      (lambda (_%klass136330%_ _%key136331%_ _%val136332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136330%_ 'class))
            (let ((_%klass136336%_ _%klass136330%_))
              (if (keyword? _%key136331%_)
                  (let ((_%key136346%_ _%key136331%_))
                    (__class-type-properties-put!
                     _%klass136336%_
                     _%key136346%_
                     _%val136332%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@424.52-424.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key136331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@424.35-424.40"
               'contract:
               'class-type?
               'value:
               _%klass136330%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass136224%_)
        (let ((_%klass136227%_ _%klass136224%_))
          (letrec ((_%get-field-vector136236%_
                    (lambda (_%type136314%_)
                      (let _%loop136316%_ ((_%type136318%_ _%type136314%_))
                        (let* ((_%fields136320%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type136318%_)))
                               (_%$e136322%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type136318%_))))
                          (if _%$e136322%_
                              (let ((_%super-fields136327%_
                                     (_%loop136316%_ _%$e136322%_)))
                                (vector-append
                                 _%super-fields136327%_
                                 _%fields136320%_))
                              _%fields136320%_)))))
                   (_%get-printable-slot-alist136237%_
                    (lambda (_%type136297%_)
                      (let* ((_%fields136299%_
                              (_%get-field-vector136236%_ _%type136297%_))
                             (_%count136301%_
                              (vector-length _%fields136299%_)))
                        (let _%loop136304%_ ((_%i136306%_ '0)
                                             (_%offset136307%_ '1)
                                             (_%r136308%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136306%_ _%count136301%_))
                              (let ((_%slot-name136310%_
                                     (vector-ref _%fields136299%_ _%i136306%_))
                                    (_%slot-flags136311%_
                                     (vector-ref
                                      _%fields136299%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i136306%_ '1))))
                                    (_%next-i136312%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i136306%_ '3))))
                                (if (let ((__tmp140626
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags136311%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp140626 '0))
                                    (_%loop136304%_
                                     _%next-i136312%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136307%_ '1))
                                     (cons (cons _%slot-name136310%_
                                                 _%offset136307%_)
                                           _%r136308%_))
                                    (_%loop136304%_
                                     _%next-i136312%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136307%_ '1))
                                     _%r136308%_)))
                              (reverse! _%r136308%_))))))
                   (_%get-printable-slots!136238%_
                    (lambda (_%klass136253%_ _%type136254%_)
                      (let ((_%printable136256%_
                             (_%get-printable-slot-alist136237%_
                              _%type136254%_)))
                        (let* ((_%klass136258%_ _%klass136253%_)
                               (_%key136261%_ 'printable-slots:)
                               (_%val136264%_ _%printable136256%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass136258%_
                                 'class))
                              (let* ((_%klass136269%_ _%klass136258%_)
                                     (_%key136287%_ _%key136261%_))
                                (__class-type-properties-put!
                                 _%klass136269%_
                                 _%key136287%_
                                 _%val136264%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass136258%_)
                                '#!void)))
                        _%printable136256%_))))
            (let* ((_%props136240%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136227%_ '9 '#f '#f)))
                   (_%$e136242%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props136240%_))))
              (if _%$e136242%_
                  _%$e136242%_
                  (let ((_%$e136245%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136240%_))))
                    (if _%$e136245%_
                        (_%get-printable-slots!136238%_
                         _%klass136227%_
                         _%$e136245%_)
                        (_%get-printable-slots!136238%_
                         _%klass136227%_
                         _%klass136227%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass136210%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136210%_ 'class))
            (let ((_%klass136214%_ _%klass136210%_))
              (__class-type-printable-slots _%klass136214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@433.35-433.40"
               'contract:
               'class-type?
               'value:
               _%klass136210%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct136179%_ _%maybe-super-struct136180%_)
        (let* ((_%maybe-sub-struct136183%_ _%maybe-sub-struct136179%_)
               (_%maybe-super-struct136191%_ _%maybe-super-struct136180%_)
               (_%maybe-super-struct-id136200%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct136191%_))))
          (let _%lp136202%_ ((_%super-struct136204%_
                              _%maybe-sub-struct136183%_))
            (if (not _%super-struct136204%_)
                '#f
                (if (eq? _%maybe-super-struct-id136200%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct136204%_)))
                    '#t
                    (_%lp136202%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct136204%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct136154%_ _%maybe-super-struct136155%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct136154%_ 'class))
            (let ((_%maybe-sub-struct136159%_ _%maybe-sub-struct136154%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct136155%_
                     'class))
                  (let ((_%maybe-super-struct136169%_
                         _%maybe-super-struct136155%_))
                    (__substruct?
                     _%maybe-sub-struct136159%_
                     _%maybe-super-struct136169%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@477.47-477.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct136155%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@477.19-477.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct136154%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass136132%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136132%_ 'class))
            (if (let* ((_%klass136135%_ _%klass136132%_)
                       (_%klass136140%_ _%klass136135%_))
                  (__class-type-struct? _%klass136140%_))
                _%klass136132%_
                (let () (declare (not safe)) (##type-super _%klass136132%_)))
            (if (not _%klass136132%_)
                '#f
                (error '"not a class or false" _%klass136132%_)))))
    (define base-struct/2
      (lambda (_%klass1136055%_ _%klass2136056%_)
        (let ((_%s1136058%_ (base-struct/1 _%klass1136055%_))
              (_%s2136059%_ (base-struct/1 _%klass2136056%_)))
          (if (or (not _%s1136058%_)
                  (and _%s2136059%_
                       (let* ((_%maybe-sub-struct136064%_ _%s1136058%_)
                              (_%maybe-super-struct136067%_ _%s2136059%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct136064%_
                                'class))
                             (let ((_%maybe-sub-struct136072%_
                                    _%maybe-sub-struct136064%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct136067%_
                                      'class))
                                   (let ((_%maybe-super-struct136086%_
                                          _%maybe-super-struct136067%_))
                                     (__substruct?
                                      _%maybe-sub-struct136072%_
                                      _%maybe-super-struct136086%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct136067%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct136064%_)
                               '#!void)))))
              _%s2136059%_
              (if (or (not _%s2136059%_)
                      (and _%s1136058%_
                           (let* ((_%maybe-sub-struct136100%_ _%s2136059%_)
                                  (_%maybe-super-struct136103%_ _%s1136058%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct136100%_
                                    'class))
                                 (let ((_%maybe-sub-struct136108%_
                                        _%maybe-sub-struct136100%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct136103%_
                                          'class))
                                       (let ((_%maybe-super-struct136120%_
                                              _%maybe-super-struct136103%_))
                                         (__substruct?
                                          _%maybe-sub-struct136108%_
                                          _%maybe-super-struct136120%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct136103%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct136100%_)
                                   '#!void)))))
                  _%s1136058%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1136055%_
                         _%klass2136056%_
                         _%s1136058%_
                         _%s2136059%_))))))
    (define base-struct/list
      (lambda (_%all-supers135940%_)
        (let* ((_%all-supers135941135966%_ _%all-supers135940%_)
               (_%E135946135970%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers135941135966%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K135964136052%_ (lambda () '#f))
                (_%K135961136038%_
                 (lambda (_%x136036%_) (base-struct/1 _%x136036%_)))
                (_%K135956136015%_
                 (lambda (_%y136012%_ _%x136013%_)
                   (base-struct/2 _%x136013%_ _%y136012%_)))
                (_%K135947135977%_
                 (lambda (_%y135974%_ _%x135975%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x135975%_ _%y135974%_)))))
            (let* ((_%__match139390139391%_
                    (lambda (_%hd135948135980%_ _%tl135949135982%_)
                      (let ((_%x135985%_ _%hd135948135980%_))
                        (letrec ((_%splice-rest135951135987%_
                                  (lambda (_%rest135955135994%_ _%y135996%_)
                                    (if (null? _%rest135955135994%_)
                                        (_%K135947135977%_
                                         _%y135996%_
                                         _%x135985%_)
                                        (_%E135946135970%_))))
                                 (_%splice-try135953135989%_
                                  (lambda (_%hd135954135998%_
                                           _%rest135955136000%_
                                           _%y135950136001%_)
                                    (let ((_%y136003%_ _%hd135954135998%_))
                                      (_%splice-loop135952135991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest135955136000%_))
                                       (cons _%y136003%_ _%y135950136001%_)))))
                                 (_%splice-loop135952135991%_
                                  (lambda (_%rest135955136005%_
                                           _%y135950136006%_)
                                    (if (pair? _%rest135955136005%_)
                                        (_%splice-try135953135989%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest135955136005%_))
                                         _%rest135955136005%_
                                         _%y135950136006%_)
                                        (_%splice-rest135951135987%_
                                         _%rest135955136005%_
                                         (reverse _%y135950136006%_))))))
                          (_%splice-loop135952135991%_
                           _%tl135949135982%_
                           '())))))
                   (_%try-match135943136048%_
                    (lambda ()
                      (if (pair? _%all-supers135941135966%_)
                          (let ((_%tl135963136043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers135941135966%_)))
                                (_%hd135962136041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers135941135966%_))))
                            (if (null? _%tl135963136043%_)
                                (let ((_%x136046%_ _%hd135962136041%_))
                                  (base-struct/1 _%x136046%_))
                                (if (pair? _%tl135963136043%_)
                                    (let ((_%tl135960136027%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl135963136043%_)))
                                          (_%hd135959136025%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl135963136043%_))))
                                      (if (null? _%tl135960136027%_)
                                          (let ((_%x136023%_
                                                 _%hd135962136041%_)
                                                (_%y136030%_
                                                 _%hd135959136025%_))
                                            (_%K135956136015%_
                                             _%y136030%_
                                             _%x136023%_))
                                          (_%__match139390139391%_
                                           _%hd135962136041%_
                                           _%tl135963136043%_)))
                                    (_%__match139390139391%_
                                     _%hd135962136041%_
                                     _%tl135963136043%_))))
                          (_%E135946135970%_)))))
              (if (null? _%all-supers135941135966%_)
                  (_%K135964136052%_)
                  (_%try-match135943136048%_)))))))
    (define base-struct
      (lambda _%all-supers135938%_ (base-struct/list _%all-supers135938%_)))
    (define find-super-constructor
      (lambda (_%super135889%_)
        (let _%lp135891%_ ((_%rest135893%_ _%super135889%_)
                           (_%constructor135894%_ '#f))
          (let* ((_%rest135895135903%_ _%rest135893%_)
                 (_%else135897135911%_ (lambda () _%constructor135894%_))
                 (_%K135899135926%_
                  (lambda (_%rest135914%_ _%hd135915%_)
                    (let ((_%$e135917%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd135915%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e135917%_
                          (if (or (not _%constructor135894%_)
                                  (eq? _%constructor135894%_ _%$e135917%_))
                              (_%lp135891%_ _%rest135914%_ _%$e135917%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor135894%_
                                     _%$e135917%_))
                          (_%lp135891%_
                           _%rest135914%_
                           _%constructor135894%_))))))
            (if (pair? _%rest135895135903%_)
                (let ((_%hd135900135929%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest135895135903%_)))
                      (_%tl135901135931%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest135895135903%_))))
                  (let* ((_%hd135934%_ _%hd135900135929%_)
                         (_%rest135936%_ _%tl135901135931%_))
                    (_%K135899135926%_ _%rest135936%_ _%hd135934%_)))
                (_%else135897135911%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135881%_ _%direct-slots135882%_)
        (let ((__tmp140628
               (lambda (_%mixin135884%_)
                 (let ((__tmp140629
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135884%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp140629 '()))))
              (__tmp140627
               (lambda (_%slot-list135886%_ _%slot-table135887%_)
                 (values (list->vector _%slot-list135886%_)
                         _%slot-table135887%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135881%_
           _%direct-slots135882%_
           __tmp140628
           __tmp140627))))
    (define __make-class-type
      (lambda (_%id135708%_
               _%name135709%_
               _%direct-supers135710%_
               _%direct-slots135711%_
               _%properties135712%_
               _%constructor135713%_)
        (let* ((_%id135716%_ _%id135708%_)
               (_%name135724%_ _%name135709%_)
               (_%direct-supers135732%_ _%direct-supers135710%_)
               (_%direct-slots135740%_ _%direct-slots135711%_)
               (_%properties135748%_ _%properties135712%_)
               (_%constructor135756%_ _%constructor135713%_))
          (let ((_%$e135790%_
                 (let* ((_%pred135768%_
                         (lambda (_%$obj135765%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135765%_
                                   'class)))))
                        (_%lst135771%_ _%direct-supers135732%_)
                        (_%pred135776%_ _%pred135768%_))
                   (declare (not safe))
                   (__find _%pred135776%_ _%lst135771%_))))
            (if _%$e135790%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e135790%_)
                (let ((_%$e135817%_
                       (let* ((_%pred135797%_ __class-type-final?)
                              (_%lst135800%_ _%direct-supers135732%_)
                              (_%pred135805%_ _%pred135797%_))
                         (declare (not safe))
                         (__find _%pred135805%_ _%lst135800%_))))
                  (if _%$e135817%_
                      (error '"Cannot extend final class" _%$e135817%_)
                      '#!void))))
          (let ((_g140630_ (compute-precedence-list _%direct-supers135732%_)))
            (begin
              (let ((_g140631_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g140630_)
                           (##values-length _g140630_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g140631_ 2)))
                    (error "Context expects 2 values" _g140631_)))
              (let ((_%precedence-list135824%_
                     (let () (declare (not safe)) (##values-ref _g140630_ 0)))
                    (_%struct-super135825%_
                     (let () (declare (not safe)) (##values-ref _g140630_ 1))))
                (let ((_g140632_
                       (compute-class-slots
                        _%precedence-list135824%_
                        _%direct-slots135740%_)))
                  (begin
                    (let ((_g140633_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g140632_)
                                 (##values-length _g140632_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g140633_ 2)))
                          (error "Context expects 2 values" _g140633_)))
                    (let ((_%slot-vector135827%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140632_ 0)))
                          (_%slot-table135828%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140632_ 1))))
                      (let* ((_%properties135830%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135740%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135732%_)
                                          _%properties135748%_)))
                             (_%constructor*135835%_
                              (let ((_%$e135832%_ _%constructor135756%_))
                                (if _%$e135832%_
                                    _%$e135832%_
                                    (find-super-constructor
                                     _%direct-supers135732%_))))
                             (_%precedence-list135878%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135830%_))
                                      (memq object::t
                                            _%precedence-list135824%_))
                                  _%precedence-list135824%_
                                  (let _%loop135840%_ ((_%tail135842%_
                                                        _%precedence-list135824%_)
                                                       (_%head135843%_ '()))
                                    (let* ((_%tail135844135852%_
                                            _%tail135842%_)
                                           (_%else135846135860%_
                                            (lambda ()
                                              (let ((__tmp140634
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp140634
                                                 _%head135843%_))))
                                           (_%K135848135866%_
                                            (lambda (_%rest135863%_
                                                     _%hd135864%_)
                                              (if (eq? _%hd135864%_ t::t)
                                                  (let ((__tmp140635
                                                         (cons object::t
                                                               _%tail135842%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp140635
                                                     _%head135843%_))
                                                  (_%loop135840%_
                                                   _%rest135863%_
                                                   (cons _%hd135864%_
                                                         _%head135843%_))))))
                                      (if (pair? _%tail135844135852%_)
                                          (let ((_%hd135849135869%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail135844135852%_)))
                                                (_%tl135850135871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail135844135852%_))))
                                            (let* ((_%hd135874%_
                                                    _%hd135849135869%_)
                                                   (_%rest135876%_
                                                    _%tl135850135871%_))
                                              (_%K135848135866%_
                                               _%rest135876%_
                                               _%hd135874%_)))
                                          (_%else135846135860%_)))))))
                        (make-class-type-descriptor
                         _%id135716%_
                         _%name135724%_
                         _%struct-super135825%_
                         _%precedence-list135878%_
                         _%slot-vector135827%_
                         _%properties135830%_
                         _%constructor*135835%_
                         _%slot-table135828%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id135633%_
               _%name135634%_
               _%direct-supers135635%_
               _%direct-slots135636%_
               _%properties135637%_
               _%constructor135638%_)
        (if (symbol? _%id135633%_)
            (let ((_%id135642%_ _%id135633%_))
              (if (symbol? _%name135634%_)
                  (let ((_%name135652%_ _%name135634%_))
                    (if (list? _%direct-supers135635%_)
                        (let ((_%direct-supers135662%_
                               _%direct-supers135635%_))
                          (if (list? _%direct-slots135636%_)
                              (let ((_%direct-slots135672%_
                                     _%direct-slots135636%_))
                                (if (list? _%properties135637%_)
                                    (let ((_%properties135682%_
                                           _%properties135637%_))
                                      (if (or (not _%constructor135638%_)
                                              (symbol? _%constructor135638%_))
                                          (let ((_%constructor135698%_
                                                 _%constructor135638%_))
                                            (__make-class-type
                                             _%id135642%_
                                             _%name135652%_
                                             _%direct-supers135662%_
                                             _%direct-slots135672%_
                                             _%properties135682%_
                                             _%constructor135698%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@558.24-558.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor135638%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@557.24-557.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties135637%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@556.24-556.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots135636%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@555.24-555.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers135635%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@554.24-554.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name135634%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.24-553.26"
               'contract:
               'symbol?
               'value:
               _%id135633%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135621%_)
        (let ((_%klass135624%_ _%klass135621%_))
          (cons _%klass135624%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135624%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass135607%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135607%_ 'class))
            (let ((_%klass135611%_ _%klass135607%_))
              (__class-precedence-list _%klass135611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@591.30-591.35"
               'contract:
               'class-type?
               'value:
               _%klass135607%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135604%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135604%_))))
    (define __make-class-predicate
      (lambda (_%klass135520%_)
        (let* ((_%klass135523%_ _%klass135520%_)
               (_%tid135532%_
                (let () (declare (not safe)) (##type-id _%klass135523%_))))
          (if (let* ((_%type135534%_ _%klass135523%_)
                     (_%type135539%_ _%type135534%_))
                (__class-type-final? _%type135539%_))
              (lambda (_%g135553135555%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g135553135555%_
                   _%tid135532%_)))
              (if (let* ((_%klass135558%_ _%klass135523%_)
                         (_%klass135563%_ _%klass135558%_))
                    (__class-type-struct? _%klass135563%_))
                  (lambda (_%g135573135575%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g135573135575%_
                       _%tid135532%_)))
                  (lambda (_%g135578135580%_)
                    (let* ((_%klass135583%_ _%klass135523%_)
                           (_%obj135586%_ _%g135578135580%_)
                           (_%klass135591%_ _%klass135583%_))
                      (__class-instance? _%klass135591%_ _%obj135586%_))))))))
    (define make-class-predicate
      (lambda (_%klass135506%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135506%_ 'class))
            (let ((_%klass135510%_ _%klass135506%_))
              (__make-class-predicate _%klass135510%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@603.29-603.34"
               'contract:
               'class-type?
               'value:
               _%klass135506%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135440%_ _%slot135441%_)
        (let* ((_%klass135444%_ _%klass135440%_)
               (_%slot135452%_ _%slot135441%_)
               (_%field135461%_
                (let ((__tmp140636
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135444%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140636 _%slot135452%_ '#f))))
          (if (not _%field135461%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135444%_
                       'slot:
                       _%slot135452%_)
                '#!void)
              (if (let* ((_%type135465%_ _%klass135444%_)
                         (_%type135470%_ _%type135465%_))
                    (__class-type-final? _%type135470%_))
                  (make-final-slot-accessor
                   _%klass135444%_
                   _%slot135452%_
                   _%field135461%_)
                  (if (let* ((_%klass135485%_ _%klass135444%_)
                             (_%klass135490%_ _%klass135485%_))
                        (__class-type-struct? _%klass135490%_))
                      (make-struct-slot-accessor
                       _%klass135444%_
                       _%slot135452%_
                       _%field135461%_)
                      (if (let ((_%strukt135501%_
                                 (base-struct/1 _%klass135444%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135501%_
                                    'class))
                                 (let ((__tmp140637
                                        (let ((__tmp140638
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135501%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140638))))
                                   (declare (not safe))
                                   (##fx< _%field135461%_ __tmp140637))))
                          (make-struct-subclass-slot-accessor
                           _%klass135444%_
                           _%slot135452%_
                           _%field135461%_)
                          (make-class-cached-slot-accessor
                           _%klass135444%_
                           _%slot135452%_
                           _%field135461%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass135415%_ _%slot135416%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135415%_ 'class))
            (let ((_%klass135420%_ _%klass135415%_))
              (if (symbol? _%slot135416%_)
                  (let ((_%slot135430%_ _%slot135416%_))
                    (__make-class-slot-accessor
                     _%klass135420%_
                     _%slot135430%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@634.50-634.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135416%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@634.33-634.38"
               'contract:
               'class-type?
               'value:
               _%klass135415%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass135349%_ _%slot135350%_)
        (let* ((_%klass135353%_ _%klass135349%_)
               (_%slot135361%_ _%slot135350%_)
               (_%field135370%_
                (let ((__tmp140639
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135353%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140639 _%slot135361%_ '#f))))
          (if (not _%field135370%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135353%_
                       'slot:
                       _%slot135361%_)
                '#!void)
              (if (let* ((_%type135374%_ _%klass135353%_)
                         (_%type135379%_ _%type135374%_))
                    (__class-type-final? _%type135379%_))
                  (make-final-slot-mutator
                   _%klass135353%_
                   _%slot135361%_
                   _%field135370%_)
                  (if (let* ((_%klass135394%_ _%klass135353%_)
                             (_%klass135399%_ _%klass135394%_))
                        (__class-type-struct? _%klass135399%_))
                      (make-struct-slot-mutator
                       _%klass135353%_
                       _%slot135361%_
                       _%field135370%_)
                      (if (let ((_%strukt135410%_
                                 (base-struct/1 _%klass135353%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135410%_
                                    'class))
                                 (let ((__tmp140640
                                        (let ((__tmp140641
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135410%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140641))))
                                   (declare (not safe))
                                   (##fx< _%field135370%_ __tmp140640))))
                          (make-struct-subclass-slot-mutator
                           _%klass135353%_
                           _%slot135361%_
                           _%field135370%_)
                          (make-class-cached-slot-mutator
                           _%klass135353%_
                           _%slot135361%_
                           _%field135370%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass135324%_ _%slot135325%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135324%_ 'class))
            (let ((_%klass135329%_ _%klass135324%_))
              (if (symbol? _%slot135325%_)
                  (let ((_%slot135339%_ _%slot135325%_))
                    (__make-class-slot-mutator _%klass135329%_ _%slot135339%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@642.49-642.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135325%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@642.32-642.37"
               'contract:
               'class-type?
               'value:
               _%klass135324%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass135258%_ _%slot135259%_)
        (let* ((_%klass135262%_ _%klass135258%_)
               (_%slot135270%_ _%slot135259%_)
               (_%field135279%_
                (let ((__tmp140642
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135262%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140642 _%slot135270%_ '#f))))
          (if (not _%field135279%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135262%_
                       'slot:
                       _%slot135270%_)
                '#!void)
              (if (let* ((_%type135283%_ _%klass135262%_)
                         (_%type135288%_ _%type135283%_))
                    (__class-type-final? _%type135288%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass135262%_
                   _%slot135270%_
                   _%field135279%_)
                  (if (let* ((_%klass135303%_ _%klass135262%_)
                             (_%klass135308%_ _%klass135303%_))
                        (__class-type-struct? _%klass135308%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass135262%_
                       _%slot135270%_
                       _%field135279%_)
                      (if (let ((_%strukt135319%_
                                 (base-struct/1 _%klass135262%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135319%_
                                    'class))
                                 (let ((__tmp140643
                                        (let ((__tmp140644
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135319%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140644))))
                                   (declare (not safe))
                                   (##fx< _%field135279%_ __tmp140643))))
                          (make-struct-slot-unchecked-accessor
                           _%klass135262%_
                           _%slot135270%_
                           _%field135279%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass135262%_
                           _%slot135270%_
                           _%field135279%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass135233%_ _%slot135234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135233%_ 'class))
            (let ((_%klass135238%_ _%klass135233%_))
              (if (symbol? _%slot135234%_)
                  (let ((_%slot135248%_ _%slot135234%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass135238%_
                     _%slot135248%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@650.60-650.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135234%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@650.43-650.48"
               'contract:
               'class-type?
               'value:
               _%klass135233%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass135167%_ _%slot135168%_)
        (let* ((_%klass135171%_ _%klass135167%_)
               (_%slot135179%_ _%slot135168%_)
               (_%field135188%_
                (let ((__tmp140645
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135171%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140645 _%slot135179%_ '#f))))
          (if (not _%field135188%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135171%_
                       'slot:
                       _%slot135179%_)
                '#!void)
              (if (let* ((_%type135192%_ _%klass135171%_)
                         (_%type135197%_ _%type135192%_))
                    (__class-type-final? _%type135197%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass135171%_
                   _%slot135179%_
                   _%field135188%_)
                  (if (let* ((_%klass135212%_ _%klass135171%_)
                             (_%klass135217%_ _%klass135212%_))
                        (__class-type-struct? _%klass135217%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass135171%_
                       _%slot135179%_
                       _%field135188%_)
                      (if (let ((_%strukt135228%_
                                 (base-struct/1 _%klass135171%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135228%_
                                    'class))
                                 (let ((__tmp140646
                                        (let ((__tmp140647
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135228%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140647))))
                                   (declare (not safe))
                                   (##fx< _%field135188%_ __tmp140646))))
                          (make-struct-slot-unchecked-mutator
                           _%klass135171%_
                           _%slot135179%_
                           _%field135188%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass135171%_
                           _%slot135179%_
                           _%field135188%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass135142%_ _%slot135143%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135142%_ 'class))
            (let ((_%klass135147%_ _%klass135142%_))
              (if (symbol? _%slot135143%_)
                  (let ((_%slot135157%_ _%slot135143%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass135147%_
                     _%slot135157%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@658.59-658.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135143%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@658.42-658.47"
               'contract:
               'class-type?
               'value:
               _%klass135142%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object135126%_ _%class135127%_ _%slot135128%_)
        (apply error
               '"not an instance"
               'object:
               _%object135126%_
               'class:
               _%class135127%_
               (if _%slot135128%_
                   (cons 'slot: (cons _%slot135128%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object135133%_ _%class135134%_)
        (let ((_%slot135136%_ '#f))
          (not-an-instance__%
           _%object135133%_
           _%class135134%_
           _%slot135136%_))))
    (define not-an-instance
      (lambda _g140648_
        (let ((_g140649_ (let () (declare (not safe)) (##length _g140648_))))
          (cond ((let () (declare (not safe)) (##fx= _g140649_ 2))
                 (apply not-an-instance__0 _g140648_))
                ((let () (declare (not safe)) (##fx= _g140649_ 3))
                 (apply not-an-instance__% _g140648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g140648_))))))
    (define make-final-slot-accessor
      (lambda (_%klass135119%_ _%slot135120%_ _%field135121%_)
        (lambda (_%obj135123%_)
          (##direct-structure-ref
           _%obj135123%_
           _%field135121%_
           _%klass135119%_
           _%slot135120%_))))
    (define make-final-slot-mutator
      (lambda (_%klass135112%_ _%slot135113%_ _%field135114%_)
        (lambda (_%obj135116%_ _%val135117%_)
          (##direct-structure-set!
           _%obj135116%_
           _%val135117%_
           _%field135114%_
           _%klass135112%_
           _%slot135113%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass135106%_ _%slot135107%_ _%field135108%_)
        (lambda (_%obj135110%_)
          (##structure-ref
           _%obj135110%_
           _%field135108%_
           _%klass135106%_
           _%slot135107%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass135099%_ _%slot135100%_ _%field135101%_)
        (lambda (_%obj135103%_ _%val135104%_)
          (##structure-set!
           _%obj135103%_
           _%val135104%_
           _%field135101%_
           _%klass135099%_
           _%slot135100%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass135093%_ _%slot135094%_ _%field135095%_)
        (lambda (_%obj135097%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj135097%_
             _%field135095%_
             _%klass135093%_
             _%slot135094%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass135086%_ _%slot135087%_ _%field135088%_)
        (lambda (_%obj135090%_ _%val135091%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj135090%_
             _%val135091%_
             _%field135088%_
             _%klass135086%_
             _%slot135087%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass135059%_ _%slot135060%_ _%field135061%_)
        (lambda (_%obj135063%_)
          (if (let* ((_%klass135065%_ _%klass135059%_)
                     (_%obj135068%_ _%obj135063%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135065%_ 'class))
                    (let ((_%klass135073%_ _%klass135065%_))
                      (__class-instance? _%klass135073%_ _%obj135068%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135065%_)
                      '#!void)))
              (unchecked-slot-ref _%obj135063%_ _%field135061%_)
              (not-an-instance__%
               _%obj135063%_
               _%klass135059%_
               _%slot135060%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass135031%_ _%slot135032%_ _%field135033%_)
        (lambda (_%obj135035%_ _%val135036%_)
          (if (let* ((_%klass135038%_ _%klass135031%_)
                     (_%obj135041%_ _%obj135035%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135038%_ 'class))
                    (let ((_%klass135046%_ _%klass135038%_))
                      (__class-instance? _%klass135046%_ _%obj135041%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135038%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135035%_
               _%field135033%_
               _%val135036%_)
              (not-an-instance__%
               _%obj135035%_
               _%klass135031%_
               _%slot135032%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass134982%_ _%slot134983%_ _%field134984%_)
        (lambda (_%obj134986%_)
          (if (let* ((_%klass134988%_ _%klass134982%_)
                     (_%obj134991%_ _%obj134986%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134988%_ 'class))
                    (let ((_%klass134996%_ _%klass134988%_))
                      (__direct-instance? _%klass134996%_ _%obj134991%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134988%_)
                      '#!void)))
              (unchecked-field-ref _%obj134986%_ _%field134984%_)
              (if (let* ((_%klass135010%_ _%klass134982%_)
                         (_%obj135013%_ _%obj134986%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135010%_ 'class))
                        (let ((_%klass135018%_ _%klass135010%_))
                          (__class-instance? _%klass135018%_ _%obj135013%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135010%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj134986%_ _%slot134983%_)
                  (not-an-instance__%
                   _%obj134986%_
                   _%klass134982%_
                   _%slot134983%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass134932%_ _%slot134933%_ _%field134934%_)
        (lambda (_%obj134936%_ _%val134937%_)
          (if (let* ((_%klass134939%_ _%klass134932%_)
                     (_%obj134942%_ _%obj134936%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134939%_ 'class))
                    (let ((_%klass134947%_ _%klass134939%_))
                      (__direct-instance? _%klass134947%_ _%obj134942%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134939%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134936%_
               _%field134934%_
               _%val134937%_)
              (if (let* ((_%klass134961%_ _%klass134932%_)
                         (_%obj134964%_ _%obj134936%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134961%_ 'class))
                        (let ((_%klass134969%_ _%klass134961%_))
                          (__class-instance? _%klass134969%_ _%obj134964%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134961%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj134936%_
                   _%slot134933%_
                   _%val134937%_)
                  (not-an-instance__%
                   _%obj134936%_
                   _%klass134932%_
                   _%slot134933%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass134905%_ _%slot134906%_ _%field134907%_)
        (lambda (_%obj134909%_)
          (if (let* ((_%klass134911%_ _%klass134905%_)
                     (_%obj134914%_ _%obj134909%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134911%_ 'class))
                    (let ((_%klass134919%_ _%klass134911%_))
                      (__direct-instance? _%klass134919%_ _%obj134914%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134911%_)
                      '#!void)))
              (unchecked-field-ref _%obj134909%_ _%field134907%_)
              (unchecked-slot-ref _%obj134909%_ _%slot134906%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass134877%_ _%slot134878%_ _%field134879%_)
        (lambda (_%obj134881%_ _%val134882%_)
          (if (let* ((_%klass134884%_ _%klass134877%_)
                     (_%obj134887%_ _%obj134881%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134884%_ 'class))
                    (let ((_%klass134892%_ _%klass134884%_))
                      (__direct-instance? _%klass134892%_ _%obj134887%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134884%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134881%_
               _%field134879%_
               _%val134882%_)
              (unchecked-slot-set!
               _%obj134881%_
               _%slot134878%_
               _%val134882%_)))))
    (define __class-slot-offset
      (lambda (_%klass134856%_ _%slot134857%_)
        (let* ((_%klass134860%_ _%klass134856%_)
               (_%slot134868%_ _%slot134857%_)
               (__tmp140650
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134860%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp140650 _%slot134868%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass134831%_ _%slot134832%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134831%_ 'class))
            (let ((_%klass134836%_ _%klass134831%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134832%_))
                  (let ((_%slot134846%_ _%slot134832%_))
                    (__class-slot-offset _%klass134836%_ _%slot134846%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@720.43-720.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134832%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@720.26-720.31"
               'contract:
               'class-type?
               'value:
               _%klass134831%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass134756%_ _%obj134757%_ _%slot134758%_)
        (let* ((_%klass134761%_ _%klass134756%_)
               (_%slot134769%_ _%slot134758%_))
          (if (let* ((_%klass134778%_ _%klass134761%_)
                     (_%obj134781%_ _%obj134757%_)
                     (_%klass134786%_ _%klass134778%_))
                (__class-instance? _%klass134786%_ _%obj134781%_))
              (let ((_%off134829%_
                     (let* ((_%klass134800%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134757%_)))
                            (_%slot134803%_ _%slot134769%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134800%_ 'class))
                           (let ((_%klass134808%_ _%klass134800%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134803%_))
                                 (let ((_%slot134819%_ _%slot134803%_))
                                   (__class-slot-offset
                                    _%klass134808%_
                                    _%slot134819%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134803%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134800%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj134757%_
                 _%off134829%_
                 _%klass134761%_
                 _%slot134769%_))
              (not-an-instance__0 _%obj134757%_ _%klass134761%_)))))
    (define class-slot-ref
      (lambda (_%klass134730%_ _%obj134731%_ _%slot134732%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134730%_ 'class))
            (let ((_%klass134736%_ _%klass134730%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134732%_))
                  (let ((_%slot134746%_ _%slot134732%_))
                    (__class-slot-ref
                     _%klass134736%_
                     _%obj134731%_
                     _%slot134746%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@723.44-723.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134732%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@723.23-723.28"
               'contract:
               'class-type?
               'value:
               _%klass134730%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass134654%_ _%obj134655%_ _%slot134656%_ _%val134657%_)
        (let* ((_%klass134660%_ _%klass134654%_)
               (_%slot134668%_ _%slot134656%_))
          (if (let* ((_%klass134677%_ _%klass134660%_)
                     (_%obj134680%_ _%obj134655%_)
                     (_%klass134685%_ _%klass134677%_))
                (__class-instance? _%klass134685%_ _%obj134680%_))
              (let ((_%off134728%_
                     (let* ((_%klass134699%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134655%_)))
                            (_%slot134702%_ _%slot134668%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134699%_ 'class))
                           (let ((_%klass134707%_ _%klass134699%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134702%_))
                                 (let ((_%slot134718%_ _%slot134702%_))
                                   (__class-slot-offset
                                    _%klass134707%_
                                    _%slot134718%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134702%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134699%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj134655%_
                 _%val134657%_
                 _%off134728%_
                 _%klass134660%_
                 _%slot134668%_))
              (not-an-instance__0 _%obj134655%_ _%klass134660%_)))))
    (define class-slot-set!
      (lambda (_%klass134627%_ _%obj134628%_ _%slot134629%_ _%val134630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134627%_ 'class))
            (let ((_%klass134634%_ _%klass134627%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134629%_))
                  (let ((_%slot134644%_ _%slot134629%_))
                    (__class-slot-set!
                     _%klass134634%_
                     _%obj134628%_
                     _%slot134644%_
                     _%val134630%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@729.45-729.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134629%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@729.24-729.29"
               'contract:
               'class-type?
               'value:
               _%klass134627%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134624%_ _%off134625%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134624%_ _%off134625%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134620%_ _%off134621%_ _%val134622%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134620%_
           _%val134622%_
           _%off134621%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134617%_ _%slot134618%_)
        (unchecked-field-ref
         _%obj134617%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134617%_))
          _%slot134618%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134613%_ _%slot134614%_ _%val134615%_)
        (unchecked-field-set!
         _%obj134613%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134613%_))
          _%slot134614%_)
         _%val134615%_)))
    (define __slot-error
      (lambda (_%obj134610%_ _%slot134611%_)
        (error '"Cannot find slot"
               'object:
               _%obj134610%_
               'slot:
               _%slot134611%_)))
    (define __slot-ref__%
      (lambda (_%obj134534%_ _%slot134535%_ _%E134536%_)
        (let* ((_%slot134539%_ _%slot134535%_)
               (_%E134547%_ _%E134536%_)
               (_%klass134556%_ (class-of _%obj134534%_))
               (_%$e134592%_
                (let* ((_%klass134559%_ _%klass134556%_)
                       (_%slot134562%_ _%slot134539%_)
                       (_%klass134567%_ _%klass134559%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134562%_))
                      (let ((_%slot134582%_ _%slot134562%_))
                        (__class-slot-offset _%klass134567%_ _%slot134582%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134562%_)
                        '#!void)))))
          (if _%$e134592%_
              (unchecked-field-ref _%obj134534%_ _%$e134592%_)
              (let ()
                (declare (not safe))
                (_%E134547%_ _%obj134534%_ _%slot134539%_))))))
    (define __slot-ref__0
      (lambda (_%obj134601%_ _%slot134602%_)
        (let ((_%E134604%_ __slot-error))
          (__slot-ref__% _%obj134601%_ _%slot134602%_ _%E134604%_))))
    (define __slot-ref
      (lambda _g140651_
        (let ((_g140652_ (let () (declare (not safe)) (##length _g140651_))))
          (cond ((let () (declare (not safe)) (##fx= _g140652_ 2))
                 (apply __slot-ref__0 _g140651_))
                ((let () (declare (not safe)) (##fx= _g140652_ 3))
                 (apply __slot-ref__% _g140651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g140651_))))))
    (define slot-ref__%
      (lambda (_%obj134495%_ _%slot134496%_ _%E134497%_)
        (if (symbol? _%slot134496%_)
            (let ((_%slot134501%_ _%slot134496%_))
              (if (procedure? _%E134497%_)
                  (let ((_%E134511%_ _%E134497%_))
                    (__slot-ref__% _%obj134495%_ _%slot134501%_ _%E134511%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@755.38-755.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E134497%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@755.21-755.25"
               'contract:
               'symbol?
               'value:
               _%slot134496%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj134524%_ _%slot134525%_)
        (let ((_%E134527%_ __slot-error))
          (slot-ref__% _%obj134524%_ _%slot134525%_ _%E134527%_))))
    (define slot-ref
      (lambda _g140653_
        (let ((_g140654_ (let () (declare (not safe)) (##length _g140653_))))
          (cond ((let () (declare (not safe)) (##fx= _g140654_ 2))
                 (apply slot-ref__0 _g140653_))
                ((let () (declare (not safe)) (##fx= _g140654_ 3))
                 (apply slot-ref__% _g140653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g140653_))))))
    (define __slot-set!__%
      (lambda (_%obj134415%_ _%slot134416%_ _%val134417%_ _%E134418%_)
        (let* ((_%slot134421%_ _%slot134416%_)
               (_%E134429%_ _%E134418%_)
               (_%klass134438%_ (class-of _%obj134415%_))
               (_%$e134474%_
                (let* ((_%klass134441%_ _%klass134438%_)
                       (_%slot134444%_ _%slot134421%_)
                       (_%klass134449%_ _%klass134441%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134444%_))
                      (let ((_%slot134464%_ _%slot134444%_))
                        (__class-slot-offset _%klass134449%_ _%slot134464%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134444%_)
                        '#!void)))))
          (if _%$e134474%_
              (unchecked-field-set! _%obj134415%_ _%$e134474%_ _%val134417%_)
              (let ()
                (declare (not safe))
                (_%E134429%_ _%obj134415%_ _%slot134421%_))))))
    (define __slot-set!__0
      (lambda (_%obj134483%_ _%slot134484%_ _%val134485%_)
        (let ((_%E134487%_ __slot-error))
          (__slot-set!__%
           _%obj134483%_
           _%slot134484%_
           _%val134485%_
           _%E134487%_))))
    (define __slot-set!
      (lambda _g140655_
        (let ((_g140656_ (let () (declare (not safe)) (##length _g140655_))))
          (cond ((let () (declare (not safe)) (##fx= _g140656_ 3))
                 (apply __slot-set!__0 _g140655_))
                ((let () (declare (not safe)) (##fx= _g140656_ 4))
                 (apply __slot-set!__% _g140655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g140655_))))))
    (define slot-set!__%
      (lambda (_%obj134373%_ _%slot134374%_ _%val134375%_ _%E134376%_)
        (if (symbol? _%slot134374%_)
            (let ((_%slot134380%_ _%slot134374%_))
              (if (procedure? _%E134376%_)
                  (let ((_%E134390%_ _%E134376%_))
                    (__slot-set!__%
                     _%obj134373%_
                     _%slot134380%_
                     _%val134375%_
                     _%E134390%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@757.43-757.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E134376%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@757.22-757.26"
               'contract:
               'symbol?
               'value:
               _%slot134374%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj134403%_ _%slot134404%_ _%val134405%_)
        (let ((_%E134407%_ __slot-error))
          (slot-set!__%
           _%obj134403%_
           _%slot134404%_
           _%val134405%_
           _%E134407%_))))
    (define slot-set!
      (lambda _g140657_
        (let ((_g140658_ (let () (declare (not safe)) (##length _g140657_))))
          (cond ((let () (declare (not safe)) (##fx= _g140658_ 3))
                 (apply slot-set!__0 _g140657_))
                ((let () (declare (not safe)) (##fx= _g140658_ 4))
                 (apply slot-set!__% _g140657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g140657_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134344%_ _%maybe-super-class134345%_)
        (let* ((_%maybe-sub-class134348%_ _%maybe-sub-class134344%_)
               (_%maybe-super-class134356%_ _%maybe-super-class134345%_)
               (_%maybe-super-class-id134365%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134356%_)))
               (_%$e134367%_
                (eq? _%maybe-super-class-id134365%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134348%_)))))
          (if _%$e134367%_
              _%$e134367%_
              (let ((__tmp140660
                     (lambda (_%super-class134370%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134370%_))
                            _%maybe-super-class-id134365%_)))
                    (__tmp140659
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134348%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp140660 __tmp140659))))))
    (define subclass?
      (lambda (_%maybe-sub-class134319%_ _%maybe-super-class134320%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class134319%_ 'class))
            (let ((_%maybe-sub-class134324%_ _%maybe-sub-class134319%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class134320%_
                     'class))
                  (let ((_%maybe-super-class134334%_
                         _%maybe-super-class134320%_))
                    (__subclass?
                     _%maybe-sub-class134324%_
                     _%maybe-super-class134334%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@763.45-763.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class134320%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.18-763.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class134319%_)
              '#!void))))
    (define object?
      (lambda (_%o134316%_)
        (if (let () (declare (not safe)) (##structure? _%o134316%_))
            (let ((__tmp140661
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134316%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp140661 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134303%_ _%obj134304%_)
        (let* ((_%klass134307%_ _%klass134303%_)
               (__tmp140662
                (let () (declare (not safe)) (##type-id _%klass134307%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134304%_ __tmp140662))))
    (define direct-instance?
      (lambda (_%klass134288%_ _%obj134289%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134288%_ 'class))
            (let ((_%klass134293%_ _%klass134288%_))
              (__direct-instance? _%klass134293%_ _%obj134289%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.25-777.30"
               'contract:
               'class-type?
               'value:
               _%klass134288%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134284%_ _%obj134285%_)
        (if (let () (declare (not safe)) (##structure? _%obj134285%_))
            (eq? _%klass134284%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134285%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134271%_ _%obj134272%_)
        (let* ((_%klass134275%_ _%klass134271%_)
               (__tmp140663
                (let () (declare (not safe)) (##type-id _%klass134275%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134272%_ __tmp140663))))
    (define struct-instance?
      (lambda (_%klass134256%_ _%obj134257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134256%_ 'class))
            (let ((_%klass134261%_ _%klass134256%_))
              (__struct-instance? _%klass134261%_ _%obj134257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@806.25-806.30"
               'contract:
               'class-type?
               'value:
               _%klass134256%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134208%_ _%obj134209%_)
        (let* ((_%klass134212%_ _%klass134208%_)
               (_%type134221%_ (class-of _%obj134209%_))
               (_%maybe-sub-class134223%_ _%type134221%_)
               (_%maybe-super-class134226%_ _%klass134212%_)
               (_%maybe-sub-class134231%_ _%maybe-sub-class134223%_)
               (_%maybe-super-class134246%_ _%maybe-super-class134226%_))
          (__subclass?
           _%maybe-sub-class134231%_
           _%maybe-super-class134246%_))))
    (define class-instance?
      (lambda (_%klass134193%_ _%obj134194%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134193%_ 'class))
            (let ((_%klass134198%_ _%klass134193%_))
              (__class-instance? _%klass134198%_ _%obj134194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@811.24-811.29"
               'contract:
               'class-type?
               'value:
               _%klass134193%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134152%_ _%k134153%_)
        (let* ((_%klass134156%_ _%klass134152%_) (_%k134164%_ _%k134153%_))
          (if (let* ((_%klass134173%_ _%klass134156%_)
                     (_%klass134178%_ _%klass134173%_))
                (__class-type-system? _%klass134178%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134156%_)
                '#!void)
              (let ((_%obj134191%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134156%_ _%k134164%_))))
                (__object-fill! _%obj134191%_ '#f))))))
    (define make-object
      (lambda (_%klass134127%_ _%k134128%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134127%_ 'class))
            (let ((_%klass134132%_ _%klass134127%_))
              (if (fixnum? _%k134128%_)
                  (let ((_%k134142%_ _%k134128%_))
                    (__make-object _%klass134132%_ _%k134142%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@816.37-816.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k134128%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@816.20-816.25"
               'contract:
               'class-type?
               'value:
               _%klass134127%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134115%_)
        (let ((_%obj134118%_ _%obj134115%_))
          (declare (not safe))
          (##structure-type _%obj134118%_))))
    (define object-class
      (lambda (_%obj134101%_)
        (if (object? _%obj134101%_)
            (let ((_%obj134105%_ _%obj134101%_))
              (__object-class _%obj134105%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@836.21-836.24"
               'contract:
               'object?
               'value:
               _%obj134101%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134083%_ _%fill134084%_)
        (let ((_%obj134087%_ _%obj134083%_))
          (let _%loop134096%_ ((_%i134098%_
                                (let ((__tmp140664
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134087%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140664 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134098%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134087%_
                     _%fill134084%_
                     _%i134098%_
                     '#f
                     '#f))
                  (_%loop134096%_
                   (let () (declare (not safe)) (##fx- _%i134098%_ '1))))
                _%obj134087%_)))))
    (define object-fill!
      (lambda (_%obj134068%_ _%fill134069%_)
        (if (object? _%obj134068%_)
            (let ((_%obj134073%_ _%obj134068%_))
              (__object-fill! _%obj134073%_ _%fill134069%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.21-841.24"
               'contract:
               'object?
               'value:
               _%obj134068%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass134024%_)
        (let* ((_%klass134027%_ _%klass134024%_)
               (_%klass134036%_ _%klass134027%_)
               (_%k134039%_
                (let ((__tmp140665
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134027%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140665)))
               (_%klass134044%_ _%klass134036%_)
               (_%k134058%_ _%k134039%_))
          (__make-object _%klass134044%_ _%k134058%_))))
    (define new-instance
      (lambda (_%klass134010%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134010%_ 'class))
            (let ((_%klass134014%_ _%klass134010%_))
              (__new-instance _%klass134014%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.21-852.26"
               'contract:
               'class-type?
               'value:
               _%klass134010%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133869%_ . _%args133870%_)
        (let* ((_%klass133873%_ _%klass133869%_)
               (_%$e133882%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133873%_ '10 '#f '#f))))
          (if _%$e133882%_
              (let ((_%obj133907%_
                     (let* ((_%klass133887%_ _%klass133873%_)
                            (_%klass133892%_ _%klass133887%_))
                       (__new-instance _%klass133892%_))))
                (___constructor-init!
                 _%klass133873%_
                 _%$e133882%_
                 _%obj133907%_
                 _%args133870%_)
                _%obj133907%_)
              (if (let* ((_%klass133909%_ _%klass133873%_)
                         (_%klass133914%_ _%klass133909%_))
                    (__class-type-metaclass? _%klass133914%_))
                  (let ((_%obj133941%_
                         (let* ((_%klass133925%_ _%klass133873%_)
                                (_%klass133930%_ _%klass133925%_))
                           (__new-instance _%klass133930%_))))
                    (__metaclass-instance-init!
                     _%klass133873%_
                     _%obj133941%_
                     _%args133870%_)
                    _%obj133941%_)
                  (if (let* ((_%klass133943%_ _%klass133873%_)
                             (_%klass133948%_ _%klass133943%_))
                        (__class-type-struct? _%klass133948%_))
                      (if (let ((__tmp140667
                                 (let* ((_%klass133977%_ _%klass133873%_)
                                        (_%klass133982%_ _%klass133977%_))
                                   (__class-type-field-count _%klass133982%_)))
                                (__tmp140666
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133870%_))))
                            (declare (not safe))
                            (##fx= __tmp140667 __tmp140666))
                          (apply ##structure _%klass133873%_ _%args133870%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133873%_
                                   'slots:
                                   (let* ((_%klass133994%_ _%klass133873%_)
                                          (_%klass133999%_ _%klass133994%_))
                                     (__class-type-slot-list _%klass133999%_))
                                   'args:
                                   _%args133870%_)
                            '#!void))
                      (let ((_%obj133975%_
                             (let* ((_%klass133959%_ _%klass133873%_)
                                    (_%klass133964%_ _%klass133959%_))
                               (__new-instance _%klass133964%_))))
                        (___class-instance-init!
                         _%klass133873%_
                         _%obj133975%_
                         _%args133870%_)
                        _%obj133975%_)))))))
    (define make-instance
      (lambda (_%klass133854%_ . _%args133855%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133854%_ 'class))
            (let ((_%klass133859%_ _%klass133854%_))
              (declare (not safe))
              (##apply __make-instance _%klass133859%_ _%args133855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.22-855.27"
               'contract:
               'class-type?
               'value:
               _%klass133854%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133841%_ . _%args133842%_)
        (let ((_%obj133845%_ _%obj133841%_))
          (if (let ((__tmp140669
                     (let () (declare (not safe)) (##length _%args133842%_)))
                    (__tmp140668
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133845%_))))
                (declare (not safe))
                (##fx< __tmp140669 __tmp140668))
              (___struct-instance-init! _%obj133845%_ _%args133842%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133845%_
                     'args:
                     _%args133842%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj133826%_ . _%args133827%_)
        (if (object? _%obj133826%_)
            (let ((_%obj133831%_ _%obj133826%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj133831%_ _%args133827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@880.30-880.33"
               'contract:
               'object?
               'value:
               _%obj133826%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133785%_ _%args133786%_)
        (let _%lp133788%_ ((_%k133790%_ '1) (_%rest133791%_ _%args133786%_))
          (let* ((_%rest133792133800%_ _%rest133791%_)
                 (_%else133794133808%_ (lambda () _%obj133785%_))
                 (_%K133796133814%_
                  (lambda (_%rest133811%_ _%hd133812%_)
                    (unchecked-field-set!
                     _%obj133785%_
                     _%k133790%_
                     _%hd133812%_)
                    (_%lp133788%_
                     (let () (declare (not safe)) (##fx+ _%k133790%_ '1))
                     _%rest133811%_))))
            (if (pair? _%rest133792133800%_)
                (let ((_%hd133797133817%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133792133800%_)))
                      (_%tl133798133819%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133792133800%_))))
                  (let* ((_%hd133822%_ _%hd133797133817%_)
                         (_%rest133824%_ _%tl133798133819%_))
                    (_%K133796133814%_ _%rest133824%_ _%hd133822%_)))
                (_%else133794133808%_))))))
    (define __class-instance-init!
      (lambda (_%obj133772%_ . _%args133773%_)
        (let ((_%obj133776%_ _%obj133772%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133776%_))
           _%obj133776%_
           _%args133773%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj133757%_ . _%args133758%_)
        (if (object? _%obj133757%_)
            (let ((_%obj133762%_ _%obj133757%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj133762%_ _%args133758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@920.29-920.32"
               'contract:
               'object?
               'value:
               _%obj133757%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133699%_ _%obj133700%_ _%args133701%_)
        (let _%lp133703%_ ((_%rest133705%_ _%args133701%_))
          (let* ((_%rest133706133716%_ _%rest133705%_)
                 (_%else133708133724%_
                  (lambda ()
                    (if (null? _%rest133705%_)
                        _%obj133700%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133699%_
                               'rest:
                               _%rest133705%_))))
                 (_%K133710133738%_
                  (lambda (_%rest133727%_ _%val133728%_ _%key133729%_)
                    (if (keyword? _%key133729%_)
                        (let ((_%$e133732%_
                               (__class-slot-offset
                                _%klass133699%_
                                _%key133729%_)))
                          (if _%$e133732%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj133700%_
                                 _%$e133732%_
                                 _%val133728%_)
                                (_%lp133703%_ _%rest133727%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass133699%_
                                     'slot:
                                     _%key133729%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133729%_)))))
            (if (pair? _%rest133706133716%_)
                (let ((_%hd133711133741%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133706133716%_)))
                      (_%tl133712133743%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133706133716%_))))
                  (let ((_%key133746%_ _%hd133711133741%_))
                    (if (pair? _%tl133712133743%_)
                        (let ((_%hd133713133748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133712133743%_)))
                              (_%tl133714133750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133712133743%_))))
                          (let* ((_%val133753%_ _%hd133713133748%_)
                                 (_%rest133755%_ _%tl133714133750%_))
                            (_%K133710133738%_
                             _%rest133755%_
                             _%val133753%_
                             _%key133746%_)))
                        (_%else133708133724%_))))
                (_%else133708133724%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133695%_ _%obj133696%_ _%args133697%_)
        (apply call-method
               _%klass133695%_
               'instance-init!
               _%obj133696%_
               _%args133697%_)))
    (define __constructor-init!
      (lambda (_%klass133664%_
               _%kons-id133665%_
               _%obj133666%_
               .
               _%args133667%_)
        (let* ((_%klass133670%_ _%klass133664%_)
               (_%kons-id133678%_ _%kons-id133665%_)
               (_%obj133686%_ _%obj133666%_))
          (___constructor-init!
           _%klass133670%_
           _%kons-id133678%_
           _%obj133686%_
           _%args133667%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass133627%_
               _%kons-id133628%_
               _%obj133629%_
               .
               _%args133630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133627%_ 'class))
            (let ((_%klass133634%_ _%klass133627%_))
              (if (symbol? _%kons-id133628%_)
                  (let ((_%kons-id133644%_ _%kons-id133628%_))
                    (if (object? _%obj133629%_)
                        (let ((_%obj133654%_ _%obj133629%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass133634%_
                                   _%kons-id133644%_
                                   _%obj133654%_
                                   _%args133630%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@944.63-944.66"
                           'contract:
                           'object?
                           'value:
                           _%obj133629%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@944.43-944.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id133628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.26-944.31"
               'contract:
               'class-type?
               'value:
               _%klass133627%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133616%_ _%kons-id133617%_ _%obj133618%_ _%args133619%_)
        (let ((_%$e133621%_
               (__find-method
                _%klass133616%_
                _%obj133618%_
                _%kons-id133617%_)))
          (if _%$e133621%_
              (let ()
                (apply _%$e133621%_ _%obj133618%_ _%args133619%_)
                _%obj133618%_)
              (error '"missing constructor"
                     'class:
                     _%klass133616%_
                     'method:
                     _%kons-id133617%_)))))
    (define __struct-copy
      (lambda (_%struct133604%_)
        (let ((_%struct133607%_ _%struct133604%_))
          (declare (not safe))
          (##structure-copy _%struct133607%_))))
    (define struct-copy
      (lambda (_%struct133590%_)
        (if (object? _%struct133590%_)
            (let ((_%struct133594%_ _%struct133590%_))
              (__struct-copy _%struct133594%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.20-958.26"
               'contract:
               'object?
               'value:
               _%struct133590%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj133571%_)
        (let* ((_%obj133574%_ _%obj133571%_)
               (_%len133583%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj133574%_))))
          (let _%recur133585%_ ((_%i133587%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133587%_ _%len133583%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj133574%_
                         _%i133587%_
                         '#f
                         '#f))
                      (_%recur133585%_
                       (let () (declare (not safe)) (##fx+ _%i133587%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj133557%_)
        (if (object? _%obj133557%_)
            (let ((_%obj133561%_ _%obj133557%_))
              (__struct->list _%obj133561%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.21-961.24"
               'contract:
               'object?
               'value:
               _%obj133557%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj133509%_)
        (let* ((_%obj133512%_ _%obj133509%_)
               (_%klass133521%_
                (let () (declare (not safe)) (##structure-type _%obj133512%_)))
               (_%slot-vector133523%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133521%_ '7 '#f '#f))))
          (let _%loop133525%_ ((_%index133527%_
                                (let ((__tmp140670
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector133523%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140670 '1)))
                               (_%plist133528%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index133527%_ '1))
                (cons _%klass133521%_ _%plist133528%_)
                (let ((_%slot133531%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector133523%_
                          _%index133527%_))))
                  (_%loop133525%_
                   (let () (declare (not safe)) (##fx- _%index133527%_ '1))
                   (cons (let ((_%sym133533%_ _%slot133531%_))
                           (if (symbol? _%sym133533%_)
                               (let ((_%sym133538%_ _%sym133533%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym133538%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym133533%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj133512%_
                                _%index133527%_)
                               _%plist133528%_)))))))))
    (define class->list
      (lambda (_%obj133495%_)
        (if (object? _%obj133495%_)
            (let ((_%obj133499%_ _%obj133495%_)) (__class->list _%obj133499%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.20-969.23"
               'contract:
               'object?
               'value:
               _%obj133495%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj133445%_ _%id133446%_ . _%args133447%_)
        (let* ((_%id133450%_ _%id133446%_)
               (_%$e133481%_
                (let* ((_%obj133459%_ _%obj133445%_)
                       (_%id133462%_ _%id133450%_)
                       (_%id133467%_ _%id133462%_))
                  (__method-ref _%obj133459%_ _%id133467%_))))
          (if _%$e133481%_
              (let ((_%method133486%_ _%$e133481%_))
                (apply _%method133486%_ _%obj133445%_ _%args133447%_))
              (error '"cannot find method"
                     'object:
                     _%obj133445%_
                     'method:
                     _%id133450%_)))))
    (define call-method
      (lambda (_%obj133429%_ _%id133430%_ . _%args133431%_)
        (if (symbol? _%id133430%_)
            (let ((_%id133435%_ _%id133430%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj133429%_
                       _%id133435%_
                       _%args133431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.24-984.26"
               'contract:
               'symbol?
               'value:
               _%id133430%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj133380%_ _%id133381%_)
        (let* ((_%id133384%_ _%id133381%_)
               (_%klass133393%_ (class-of _%obj133380%_))
               (_%obj133396%_ _%obj133380%_)
               (_%id133399%_ _%id133384%_)
               (_%klass133404%_ _%klass133393%_)
               (_%id133419%_ _%id133399%_))
          (__find-method _%klass133404%_ _%obj133396%_ _%id133419%_))))
    (define method-ref
      (lambda (_%obj133365%_ _%id133366%_)
        (if (symbol? _%id133366%_)
            (let ((_%id133370%_ _%id133366%_))
              (__method-ref _%obj133365%_ _%id133370%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1011.23-1011.25"
               'contract:
               'symbol?
               'value:
               _%id133366%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj133337%_ _%id133338%_)
        (let ((_%$e133362%_
               (let* ((_%obj133341%_ _%obj133337%_)
                      (_%id133344%_ _%id133338%_))
                 (if (symbol? _%id133344%_)
                     (let ((_%id133349%_ _%id133344%_))
                       (__method-ref _%obj133341%_ _%id133349%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id133344%_)
                       '#!void)))))
          (if _%$e133362%_
              _%$e133362%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj133337%_
                       'method:
                       _%id133338%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj133286%_ _%id133287%_)
        (let* ((_%id133290%_ _%id133287%_)
               (_%$e133321%_
                (let* ((_%obj133299%_ _%obj133286%_)
                       (_%id133302%_ _%id133290%_)
                       (_%id133307%_ _%id133302%_))
                  (__method-ref _%obj133299%_ _%id133307%_))))
          (if _%$e133321%_
              (let ((_%method133326%_ _%$e133321%_))
                (lambda _%args133334%_
                  (apply _%method133326%_ _%obj133286%_ _%args133334%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj133271%_ _%id133272%_)
        (if (symbol? _%id133272%_)
            (let ((_%id133276%_ _%id133272%_))
              (__bound-method-ref _%obj133271%_ _%id133276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.29-1019.31"
               'contract:
               'symbol?
               'value:
               _%id133272%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj133254%_ _%id133255%_)
        (let* ((_%id133258%_ _%id133255%_)
               (_%method133267%_
                (checked-method-ref _%obj133254%_ _%id133258%_)))
          (lambda _%args133269%_
            (apply _%method133267%_ _%obj133254%_ _%args133269%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj133239%_ _%id133240%_)
        (if (symbol? _%id133240%_)
            (let ((_%id133244%_ _%id133240%_))
              (__checked-bound-method-ref _%obj133239%_ _%id133244%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id133240%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133108%_ _%obj133109%_ _%id133110%_)
        (let* ((_%klass133113%_ _%klass133108%_) (_%id133121%_ _%id133110%_))
          (if (let* ((_%klass133130%_ _%klass133113%_)
                     (_%klass133135%_ _%klass133130%_))
                (__class-type-sealed? _%klass133135%_))
              (let ((_%tab133165%_
                     (let* ((_%klass133149%_ _%klass133113%_)
                            (_%klass133154%_ _%klass133149%_))
                       (__specialize-class _%klass133154%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133165%_ _%id133121%_ '#f))
              (let ((_%$e133200%_
                     (let* ((_%klass133167%_ _%klass133113%_)
                            (_%obj133170%_ _%obj133109%_)
                            (_%id133173%_ _%id133121%_)
                            (_%klass133178%_ _%klass133167%_)
                            (_%id133190%_ _%id133173%_))
                       (__direct-method-ref
                        _%klass133178%_
                        _%obj133170%_
                        _%id133190%_))))
                (if _%$e133200%_
                    _%$e133200%_
                    (let* ((_%klass133204%_ _%klass133113%_)
                           (_%obj133207%_ _%obj133109%_)
                           (_%id133210%_ _%id133121%_)
                           (_%klass133215%_ _%klass133204%_)
                           (_%id133229%_ _%id133210%_))
                      (__mixin-method-ref
                       _%klass133215%_
                       _%obj133207%_
                       _%id133229%_))))))))
    (define find-method
      (lambda (_%klass133082%_ _%obj133083%_ _%id133084%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133082%_ 'class))
            (let ((_%klass133088%_ _%klass133082%_))
              (if (symbol? _%id133084%_)
                  (let ((_%id133098%_ _%id133084%_))
                    (__find-method _%klass133088%_ _%obj133083%_ _%id133098%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1033.41-1033.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id133084%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.20-1033.25"
               'contract:
               'class-type?
               'value:
               _%klass133082%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133027%_ _%obj133028%_ _%id133029%_)
        (let* ((_%id133032%_ _%id133029%_)
               (__tmp140671
                (lambda (_%g133040133042%_)
                  (let* ((_%klass133045%_ _%g133040133042%_)
                         (_%obj133048%_ _%obj133028%_)
                         (_%id133051%_ _%id133032%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133045%_ 'class))
                        (let* ((_%klass133056%_ _%klass133045%_)
                               (_%id133072%_ _%id133051%_))
                          (__direct-method-ref
                           _%klass133056%_
                           _%obj133048%_
                           _%id133072%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133045%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp140671 _%mixins133027%_))))
    (define mixin-find-method
      (lambda (_%mixins133011%_ _%obj133012%_ _%id133013%_)
        (if (symbol? _%id133013%_)
            (let ((_%id133017%_ _%id133013%_))
              (__mixin-find-method
               _%mixins133011%_
               _%obj133012%_
               _%id133017%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id133013%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass132904%_ _%obj132905%_ _%id132906%_)
        (let* ((_%klass132909%_ _%klass132904%_) (_%id132917%_ _%id132906%_))
          (letrec ((_%metaclass-resolve-method132926%_
                    (lambda ()
                      (let* ((_%obj132987%_ _%klass132909%_)
                             (_%id132990%_ 'direct-method-ref)
                             (_%args132993%_ (list _%obj132905%_ _%id132917%_))
                             (_%id132998%_ _%id132990%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132987%_
                                 _%id132998%_
                                 _%args132993%_))))
                   (_%metaclass-resolve-method!132927%_
                    (lambda ()
                      (let ((_%method132984%_
                             (_%metaclass-resolve-method132926%_)))
                        (let ((__tmp140673
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132909%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp140672
                               (if _%method132984%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp140673
                           _%id132917%_
                           __tmp140672))
                        _%method132984%_))))
            (let ((_%$e132929%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass132909%_ '11 '#f '#f))))
              (if _%$e132929%_
                  (let ((_%method132934%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e132929%_
                            _%id132917%_
                            '#f))))
                    (if (procedure? _%method132934%_)
                        _%method132934%_
                        (if (let* ((_%klass132937%_ _%klass132909%_)
                                   (_%klass132942%_ _%klass132937%_))
                              (__class-type-metaclass? _%klass132942%_))
                            (let ((_%$e132960%_ _%method132934%_))
                              (if (eq? 'resolved _%$e132960%_)
                                  (_%metaclass-resolve-method132926%_)
                                  (if (eq? 'unknown _%$e132960%_)
                                      '#f
                                      (_%metaclass-resolve-method!132927%_))))
                            '#f)))
                  (if (let* ((_%klass132964%_ _%klass132909%_)
                             (_%klass132969%_ _%klass132964%_))
                        (__class-type-metaclass? _%klass132969%_))
                      (let ((_%tab132980%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132909%_
                           _%tab132980%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!132927%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass132878%_ _%obj132879%_ _%id132880%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132878%_ 'class))
            (let ((_%klass132884%_ _%klass132878%_))
              (if (symbol? _%id132880%_)
                  (let ((_%id132894%_ _%id132880%_))
                    (__direct-method-ref
                     _%klass132884%_
                     _%obj132879%_
                     _%id132894%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.47-1045.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id132880%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.26-1045.31"
               'contract:
               'class-type?
               'value:
               _%klass132878%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass132830%_ _%obj132831%_ _%id132832%_)
        (let* ((_%klass132835%_ _%klass132830%_)
               (_%id132843%_ _%id132832%_)
               (_%mixins132852%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132835%_ '6 '#f '#f)))
               (_%obj132855%_ _%obj132831%_)
               (_%id132858%_ _%id132843%_)
               (_%id132863%_ _%id132858%_))
          (__mixin-find-method _%mixins132852%_ _%obj132855%_ _%id132863%_))))
    (define mixin-method-ref
      (lambda (_%klass132804%_ _%obj132805%_ _%id132806%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132804%_ 'class))
            (let ((_%klass132810%_ _%klass132804%_))
              (if (symbol? _%id132806%_)
                  (let ((_%id132820%_ _%id132806%_))
                    (__mixin-method-ref
                     _%klass132810%_
                     _%obj132805%_
                     _%id132820%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1075.46-1075.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id132806%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1075.25-1075.30"
               'contract:
               'class-type?
               'value:
               _%klass132804%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132685%_ _%id132686%_ _%proc132687%_ _%rebind?132688%_)
        (let* ((_%id132691%_ _%id132686%_) (_%proc132699%_ _%proc132687%_))
          (letrec ((_%flush-caches!132708%_
                    (lambda (_%klass132762%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass132762%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass132762%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass132764%_ _%klass132762%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass132764%_
                                         'class))
                                      (let ((_%klass132769%_ _%klass132764%_))
                                        (__class-type-sealed? _%klass132769%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass132764%_)
                                        '#!void)))
                                (let ((__tmp140674
                                       (let ((__tmp140676
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp140675
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass132762%_))))
                                         (declare (not safe))
                                         (##fxand __tmp140676 __tmp140675))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass132762%_
                                   __tmp140674
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?132688%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132762%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass132762%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e132780%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass132762%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e132780%_
                            (let ((_%$e132785%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e132780%_))))
                              (if _%$e132785%_
                                  (for-each
                                   _%flush-caches!132708%_
                                   _%$e132785%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!132709%_
                    (lambda (_%ht132760%_)
                      (if (and (not _%rebind?132688%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht132760%_
                                  _%id132691%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132685%_
                                 'method:
                                 _%id132691%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht132760%_
                               _%id132691%_
                               _%proc132699%_))
                            (_%flush-caches!132708%_ _%klass132685%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132685%_ 'class))
                (let ((_%ht132712%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132685%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht132712%_
                      (_%bind!132709%_ _%ht132712%_)
                      (let ((_%ht132714%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132685%_
                           _%ht132714%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132709%_ _%ht132714%_))))
                (if (let () (declare (not safe)) (##type? _%klass132685%_))
                    (let* ((_%klass132717%_
                            (__shadow-class__0 _%klass132685%_))
                           (_%id132720%_ _%id132691%_)
                           (_%proc132723%_ _%proc132699%_)
                           (_%rebind?132726%_ _%rebind?132688%_)
                           (_%id132731%_ _%id132720%_)
                           (_%proc132749%_ _%proc132723%_))
                      (__bind-method!__%
                       _%klass132717%_
                       _%id132731%_
                       _%proc132749%_
                       _%rebind?132726%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132685%_)))))))
    (define __bind-method!__0
      (lambda (_%klass132793%_ _%id132794%_ _%proc132795%_)
        (let ((_%rebind?132797%_ '#f))
          (__bind-method!__%
           _%klass132793%_
           _%id132794%_
           _%proc132795%_
           _%rebind?132797%_))))
    (define __bind-method!
      (lambda _g140677_
        (let ((_g140678_ (let () (declare (not safe)) (##length _g140677_))))
          (cond ((let () (declare (not safe)) (##fx= _g140678_ 3))
                 (apply __bind-method!__0 _g140677_))
                ((let () (declare (not safe)) (##fx= _g140678_ 4))
                 (apply __bind-method!__% _g140677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g140677_))))))
    (define bind-method!__%
      (lambda (_%klass132643%_ _%id132644%_ _%proc132645%_ _%rebind?132646%_)
        (if (symbol? _%id132644%_)
            (let ((_%id132650%_ _%id132644%_))
              (if (procedure? _%proc132645%_)
                  (let ((_%proc132660%_ _%proc132645%_))
                    (__bind-method!__%
                     _%klass132643%_
                     _%id132650%_
                     _%proc132660%_
                     _%rebind?132646%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1078.42-1078.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc132645%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1078.27-1078.29"
               'contract:
               'symbol?
               'value:
               _%id132644%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass132673%_ _%id132674%_ _%proc132675%_)
        (let ((_%rebind?132677%_ '#f))
          (bind-method!__%
           _%klass132673%_
           _%id132674%_
           _%proc132675%_
           _%rebind?132677%_))))
    (define bind-method!
      (lambda _g140679_
        (let ((_g140680_ (let () (declare (not safe)) (##length _g140679_))))
          (cond ((let () (declare (not safe)) (##fx= _g140680_ 3))
                 (apply bind-method!__0 _g140679_))
                ((let () (declare (not safe)) (##fx= _g140680_ 4))
                 (apply bind-method!__% _g140679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g140679_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132624%_ _%seed132625%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132624%_
           procedure-hash
           eq?
           _%seed132625%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132631%_ '#f) (_%seed132633%_ '0))
          (make-method-specializer-table__%
           _%size-hint132631%_
           _%seed132633%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132635%_)
        (let ((_%seed132637%_ '0))
          (make-method-specializer-table__%
           _%size-hint132635%_
           _%seed132637%_))))
    (define make-method-specializer-table
      (lambda _g140681_
        (let ((_g140682_ (let () (declare (not safe)) (##length _g140681_))))
          (cond ((let () (declare (not safe)) (##fx= _g140682_ 0))
                 (apply make-method-specializer-table__0 _g140681_))
                ((let () (declare (not safe)) (##fx= _g140682_ 1))
                 (apply make-method-specializer-table__1 _g140681_))
                ((let () (declare (not safe)) (##fx= _g140682_ 2))
                 (apply make-method-specializer-table__% _g140681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g140681_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132604%_ _%seed132606%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132604%_
           procedure-hash
           eq?
           _%seed132606%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132612%_ '#f) (_%seed132614%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132612%_
           _%seed132614%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132616%_)
        (let ((_%seed132618%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132616%_
           _%seed132618%_))))
    (define make-method-specializer-table/lock
      (lambda _g140683_
        (let ((_g140684_ (let () (declare (not safe)) (##length _g140683_))))
          (cond ((let () (declare (not safe)) (##fx= _g140684_ 0))
                 (apply make-method-specializer-table/lock__0 _g140683_))
                ((let () (declare (not safe)) (##fx= _g140684_ 1))
                 (apply make-method-specializer-table/lock__1 _g140683_))
                ((let () (declare (not safe)) (##fx= _g140684_ 2))
                 (apply make-method-specializer-table/lock__% _g140683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g140683_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132557%_ _%key132558%_ _%default132559%_)
        (let ((_%table132561%_
               (let () (declare (not safe)) (&raw-table-table _%tab132557%_)))
              (_%seed132562%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132557%_))))
          (let* ((_%h132564%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132558%_))
                         _%seed132562%_))
                 (_%size132567%_ (vector-length _%table132561%_))
                 (_%entries132570%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132567%_ '2)))
                 (_%start132573%_
                  (let ((__tmp140685
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132564%_ _%entries132570%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140685 '1))))
            (let _%loop132577%_ ((_%probe132580%_ _%start132573%_)
                                 (_%i132582%_ '1)
                                 (_%deleted132584%_ '#f))
              (let ((_%k132587%_ (vector-ref _%table132561%_ _%probe132580%_)))
                (if (eq? _%k132587%_ (macro-unused-obj))
                    _%default132559%_
                    (if (eq? _%k132587%_ (macro-deleted-obj))
                        (_%loop132577%_
                         (let ((_%next-probe132592%_
                                (fx+ _%start132573%_
                                     _%i132582%_
                                     (fx* _%i132582%_ _%i132582%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132592%_ _%size132567%_))
                         (let () (declare (not safe)) (##fx+ _%i132582%_ '1))
                         (let ((_%$e132595%_ _%deleted132584%_))
                           (if _%$e132595%_ _%$e132595%_ _%probe132580%_)))
                        (if (eq? _%key132558%_ _%k132587%_)
                            (vector-ref
                             _%table132561%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132580%_ '1)))
                            (_%loop132577%_
                             (let ((_%next-probe132600%_
                                    (fx+ _%start132573%_
                                         _%i132582%_
                                         (fx* _%i132582%_ _%i132582%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132600%_
                                _%size132567%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132582%_ '1))
                             _%deleted132584%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132528%_ _%key132529%_ _%default132530%_)
        (let ((_%lock132532%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132528%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132537%_ ((_%spin132540%_ '0))
              (if (let ((__tmp140686
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132532%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140686 '0))
                  (let ((__tmp140687 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132532%_ '1 __tmp140687))
                  (if (let () (declare (not safe)) (##fx< _%spin132540%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132537%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132540%_ '1))))
                      (let ((_%owner132546%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132532%_ '1))))
                        (if (eq? _%owner132546%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132546%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132537%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132552%_
                 (method-specializer-table-ref
                  _%tab132528%_
                  _%key132529%_
                  _%default132530%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132532%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132532%_ '0 '0 '1))))
            _%$r132552%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132480%_ _%key132481%_ _%value132482%_)
        (let ((_%table132484%_
               (let () (declare (not safe)) (&raw-table-table _%tab132480%_)))
              (_%seed132485%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132480%_))))
          (let* ((_%h132487%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132481%_))
                         _%seed132485%_))
                 (_%size132490%_ (vector-length _%table132484%_))
                 (_%entries132493%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132490%_ '2)))
                 (_%start132496%_
                  (let ((__tmp140688
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132487%_ _%entries132493%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140688 '1))))
            (let _%loop132500%_ ((_%probe132503%_ _%start132496%_)
                                 (_%i132505%_ '1)
                                 (_%deleted132507%_ '#f))
              (let ((_%k132510%_ (vector-ref _%table132484%_ _%probe132503%_)))
                (if (eq? _%k132510%_ (macro-unused-obj))
                    (if _%deleted132507%_
                        (begin
                          (vector-set!
                           _%table132484%_
                           _%deleted132507%_
                           _%key132481%_)
                          (vector-set!
                           _%table132484%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132507%_ '1))
                           _%value132482%_)
                          (let ((__tmp140689
                                 (let ((__tmp140690
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab132480%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140690 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab132480%_ __tmp140689)))
                        (begin
                          (vector-set!
                           _%table132484%_
                           _%probe132503%_
                           _%key132481%_)
                          (vector-set!
                           _%table132484%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132503%_ '1))
                           _%value132482%_)
                          (let ()
                            (let ((__tmp140691
                                   (let ((__tmp140692
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab132480%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140692 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab132480%_ __tmp140691))
                            (let ((__tmp140693
                                   (let ((__tmp140694
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab132480%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140694 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab132480%_
                               __tmp140693)))))
                    (if (eq? _%k132510%_ (macro-deleted-obj))
                        (_%loop132500%_
                         (let ((_%next-probe132517%_
                                (fx+ _%start132496%_
                                     _%i132505%_
                                     (fx* _%i132505%_ _%i132505%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132517%_ _%size132490%_))
                         (let () (declare (not safe)) (##fx+ _%i132505%_ '1))
                         (let ((_%$e132520%_ _%deleted132507%_))
                           (if _%$e132520%_ _%$e132520%_ _%probe132503%_)))
                        (if (eq? _%key132481%_ _%k132510%_)
                            (let ()
                              (vector-set!
                               _%table132484%_
                               _%probe132503%_
                               _%key132481%_)
                              (vector-set!
                               _%table132484%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132503%_ '1))
                               _%value132482%_))
                            (_%loop132500%_
                             (let ((_%next-probe132525%_
                                    (fx+ _%start132496%_
                                         _%i132505%_
                                         (fx* _%i132505%_ _%i132505%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132525%_
                                _%size132490%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132505%_ '1))
                             _%deleted132507%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132476%_ _%key132477%_ _%value132478%_)
        (if (let ((__tmp140697
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132476%_)))
                  (__tmp140695
                   (let ((__tmp140696
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132476%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140696 '4))))
              (declare (not safe))
              (##fx< __tmp140697 __tmp140695))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132476%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132476%_
         _%key132477%_
         _%value132478%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132446%_ _%key132447%_ _%value132448%_)
        (let ((_%lock132451%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132446%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132456%_ ((_%spin132459%_ '0))
              (if (let ((__tmp140698
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132451%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140698 '0))
                  (let ((__tmp140699 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132451%_ '1 __tmp140699))
                  (if (let () (declare (not safe)) (##fx< _%spin132459%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132456%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132459%_ '1))))
                      (let ((_%owner132465%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132451%_ '1))))
                        (if (eq? _%owner132465%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132465%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132456%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132471%_
                 (method-specializer-table-set!
                  _%tab132446%_
                  _%key132447%_
                  _%value132448%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132451%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132451%_ '0 '0 '1))))
            _%$r132471%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132397%_
               _%key132398%_
               _%method-specializer-table-update!132399%_
               _%default132400%_)
        (let ((_%table132402%_
               (let () (declare (not safe)) (&raw-table-table _%tab132397%_)))
              (_%seed132403%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132397%_))))
          (let* ((_%h132405%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132398%_))
                         _%seed132403%_))
                 (_%size132408%_ (vector-length _%table132402%_))
                 (_%entries132411%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132408%_ '2)))
                 (_%start132414%_
                  (let ((__tmp140700
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132405%_ _%entries132411%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140700 '1))))
            (let _%loop132418%_ ((_%probe132421%_ _%start132414%_)
                                 (_%i132423%_ '1)
                                 (_%deleted132425%_ '#f))
              (let ((_%k132428%_ (vector-ref _%table132402%_ _%probe132421%_)))
                (if (eq? _%k132428%_ (macro-unused-obj))
                    (if _%deleted132425%_
                        (begin
                          (vector-set!
                           _%table132402%_
                           _%deleted132425%_
                           _%key132398%_)
                          (vector-set!
                           _%table132402%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132425%_ '1))
                           (_%method-specializer-table-update!132399%_
                            _%default132400%_))
                          (let ((__tmp140701
                                 (let ((__tmp140702
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab132397%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140702 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab132397%_ __tmp140701)))
                        (begin
                          (vector-set!
                           _%table132402%_
                           _%probe132421%_
                           _%key132398%_)
                          (vector-set!
                           _%table132402%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132421%_ '1))
                           (_%method-specializer-table-update!132399%_
                            _%default132400%_))
                          (let ()
                            (let ((__tmp140703
                                   (let ((__tmp140704
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab132397%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140704 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab132397%_ __tmp140703))
                            (let ((__tmp140705
                                   (let ((__tmp140706
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab132397%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140706 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab132397%_
                               __tmp140705)))))
                    (if (eq? _%k132428%_ (macro-deleted-obj))
                        (_%loop132418%_
                         (let ((_%next-probe132435%_
                                (fx+ _%start132414%_
                                     _%i132423%_
                                     (fx* _%i132423%_ _%i132423%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132435%_ _%size132408%_))
                         (let () (declare (not safe)) (##fx+ _%i132423%_ '1))
                         (let ((_%$e132438%_ _%deleted132425%_))
                           (if _%$e132438%_ _%$e132438%_ _%probe132421%_)))
                        (if (eq? _%key132398%_ _%k132428%_)
                            (let ()
                              (vector-set!
                               _%table132402%_
                               _%probe132421%_
                               _%key132398%_)
                              (vector-set!
                               _%table132402%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132421%_ '1))
                               (_%method-specializer-table-update!132399%_
                                (vector-ref
                                 _%table132402%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132421%_ '1))))))
                            (_%loop132418%_
                             (let ((_%next-probe132443%_
                                    (fx+ _%start132414%_
                                         _%i132423%_
                                         (fx* _%i132423%_ _%i132423%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132443%_
                                _%size132408%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132423%_ '1))
                             _%deleted132425%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132392%_
               _%key132393%_
               _%method-specializer-table-update!132394%_
               _%default132395%_)
        (if (let ((__tmp140709
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132392%_)))
                  (__tmp140707
                   (let ((__tmp140708
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132392%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140708 '4))))
              (declare (not safe))
              (##fx< __tmp140709 __tmp140707))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132392%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132392%_
         _%key132393%_
         _%method-specializer-table-update!132394%_
         _%default132395%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132361%_
               _%key132362%_
               _%method-specializer-table-update!132363%_
               _%default132364%_)
        (let ((_%lock132367%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132361%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132372%_ ((_%spin132375%_ '0))
              (if (let ((__tmp140710
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132367%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140710 '0))
                  (let ((__tmp140711 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132367%_ '1 __tmp140711))
                  (if (let () (declare (not safe)) (##fx< _%spin132375%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132372%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132375%_ '1))))
                      (let ((_%owner132381%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132367%_ '1))))
                        (if (eq? _%owner132381%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132381%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132372%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132387%_
                 (_%method-specializer-table-update!132363%_
                  _%tab132361%_
                  _%key132362%_
                  _%method-specializer-table-update!132363%_
                  _%default132364%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132367%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132367%_ '0 '0 '1))))
            _%$r132387%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab132318%_ _%key132319%_)
        (let ((_%table132321%_
               (let () (declare (not safe)) (&raw-table-table _%tab132318%_)))
              (_%seed132323%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132318%_))))
          (let* ((_%h132326%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132319%_))
                         _%seed132323%_))
                 (_%size132329%_ (vector-length _%table132321%_))
                 (_%entries132332%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132329%_ '2)))
                 (_%start132335%_
                  (let ((__tmp140712
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132326%_ _%entries132332%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140712 '1))))
            (let _%loop132339%_ ((_%probe132342%_ _%start132335%_)
                                 (_%i132344%_ '1))
              (let ((_%k132347%_ (vector-ref _%table132321%_ _%probe132342%_)))
                (if (eq? _%k132347%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132347%_ (macro-deleted-obj))
                        (_%loop132339%_
                         (let ((_%next-probe132352%_
                                (fx+ _%start132335%_
                                     _%i132344%_
                                     (fx* _%i132344%_ _%i132344%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132352%_ _%size132329%_))
                         (let () (declare (not safe)) (##fx+ _%i132344%_ '1)))
                        (if (eq? _%key132319%_ _%k132347%_)
                            (let ()
                              (vector-set!
                               _%table132321%_
                               _%probe132342%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table132321%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132342%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp140713
                                     (let ((__tmp140714
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab132318%_))))
                                       (declare (not safe))
                                       (##fx- __tmp140714 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab132318%_
                                 __tmp140713)))
                            (_%loop132339%_
                             (let ((_%next-probe132358%_
                                    (fx+ _%start132335%_
                                         _%i132344%_
                                         (fx* _%i132344%_ _%i132344%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132358%_
                                _%size132329%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132344%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab132288%_ _%key132290%_)
        (let ((_%lock132293%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132288%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132298%_ ((_%spin132301%_ '0))
              (if (let ((__tmp140715
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132293%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140715 '0))
                  (let ((__tmp140716 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132293%_ '1 __tmp140716))
                  (if (let () (declare (not safe)) (##fx< _%spin132301%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132298%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132301%_ '1))))
                      (let ((_%owner132307%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132293%_ '1))))
                        (if (eq? _%owner132307%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132307%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132298%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132313%_
                 (method-specializer-table-delete!
                  _%tab132288%_
                  _%key132290%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132293%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132293%_ '0 '0 '1))))
            _%$r132313%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc132285%_ _%specializer132286%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc132285%_
         _%specializer132286%_)))
    (define __lookup-method-specializer
      (lambda (_%proc132283%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc132283%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass132265%_)
        (let* ((_%klass132268%_ _%klass132265%_)
               (_%$e132277%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132268%_ '12 '#f '#f))))
          (if _%$e132277%_
              _%$e132277%_
              (let ((_%method-table132281%_
                     (___specialize-class _%klass132268%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass132268%_
                   _%method-table132281%_
                   '12
                   '#f
                   '#f))
                _%method-table132281%_)))))
    (define specialize-class
      (lambda (_%klass132251%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132251%_ 'class))
            (let ((_%klass132255%_ _%klass132251%_))
              (__specialize-class _%klass132255%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1152.25-1152.30"
               'contract:
               'class-type?
               'value:
               _%klass132251%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass132235%_
               _%method-table132236%_
               _%method132237%_
               _%proc132238%_)
        (let ((_%$e132240%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table132236%_
                  _%method132237%_
                  '#f))))
          (if _%$e132240%_
              _%$e132240%_
              (let ((_%$e132243%_
                     (__lookup-method-specializer _%proc132238%_)))
                (if _%$e132243%_
                    (let ((_%specialized-proc132248%_
                           (_%$e132243%_
                            _%klass132235%_
                            _%method-table132236%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132236%_
                       _%method132237%_
                       _%specialized-proc132248%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132236%_
                       _%method132237%_
                       _%proc132238%_))))))))
    (define ___specialize-class
      (lambda (_%klass132102%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132102%_ 'class))
            (if (let* ((_%klass132105%_ _%klass132102%_)
                       (_%klass132110%_ _%klass132105%_))
                  (__class-type-metaclass? _%klass132110%_))
                (let* ((_%obj132122%_ _%klass132102%_)
                       (_%id132125%_ 'specialize-class)
                       (_%args132128%_ '())
                       (_%id132133%_ _%id132125%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj132122%_
                           _%id132133%_
                           _%args132128%_))
                (if (let* ((_%pred132146%_ class-type-metaclass?)
                           (_%lst132149%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass132102%_
                               '6
                               '#f
                               '#f)))
                           (_%pred132154%_ _%pred132146%_))
                      (declare (not safe))
                      (__find _%pred132154%_ _%lst132149%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass132102%_)
                    (let ((_%method-table132167%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop132169%_ ((_%rest132171%_
                                            (let* ((_%klass132218%_
                                                    _%klass132102%_)
                                                   (_%klass132223%_
                                                    _%klass132218%_))
                                              (__class-precedence-list
                                               _%klass132223%_))))
                        (let* ((_%rest132172132180%_ _%rest132171%_)
                               (_%else132174132188%_
                                (lambda () _%method-table132167%_))
                               (_%K132176132206%_
                                (lambda (_%rest132191%_ _%xklass132192%_)
                                  (let ((_%xmethod-table132193132195%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass132192%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table132193132195%_
                                        (let* ((_%xmethod-table132197%_
                                                _%xmethod-table132193132195%_)
                                               (__tmp140717
                                                (lambda (_%g132198132201%_
                                                         _%g132199132203%_)
                                                  (__specialize-method
                                                   _%klass132102%_
                                                   _%method-table132167%_
                                                   _%g132198132201%_
                                                   _%g132199132203%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table132197%_
                                           __tmp140717))
                                        '#f))
                                  (_%loop132169%_ _%rest132191%_))))
                          (if (pair? _%rest132172132180%_)
                              (let ((_%hd132177132209%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132172132180%_)))
                                    (_%tl132178132211%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132172132180%_))))
                                (let* ((_%xklass132214%_ _%hd132177132209%_)
                                       (_%rest132216%_ _%tl132178132211%_))
                                  (_%K132176132206%_
                                   _%rest132216%_
                                   _%xklass132214%_)))
                              (_%else132174132188%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass132102%_))
                (__specialize-class (__shadow-class__0 _%klass132102%_))
                (error '"bad class; cannot specialize" _%klass132102%_)))))
    (define __seal-class!
      (lambda (_%klass131965%_)
        (let ((_%klass131968%_ _%klass131965%_))
          (if (let* ((_%klass131977%_ _%klass131968%_)
                     (_%klass131982%_ _%klass131977%_))
                (__class-type-sealed? _%klass131982%_))
              '#!void
              (begin
                (if (let* ((_%klass131995%_ _%klass131968%_)
                           (_%klass132000%_ _%klass131995%_))
                      (__class-type-metaclass? _%klass132000%_))
                    (let ()
                      (let* ((_%obj132011%_ _%klass131968%_)
                             (_%id132014%_ 'seal-class!)
                             (_%args132017%_ '())
                             (_%id132022%_ _%id132014%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132011%_
                                 _%id132022%_
                                 _%args132017%_))
                      (let* ((_%klass132035%_ _%klass131968%_)
                             (_%klass132040%_ _%klass132035%_))
                        (__specialize-class _%klass132040%_)))
                    (if (let* ((_%pred132050%_ class-type-metaclass?)
                               (_%lst132053%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass131968%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132058%_ _%pred132050%_))
                          (declare (not safe))
                          (__find _%pred132058%_ _%lst132053%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass131968%_)
                        (let* ((_%klass132071%_ _%klass131968%_)
                               (_%klass132076%_ _%klass132071%_))
                          (__specialize-class _%klass132076%_))))
                (let* ((_%klass132087%_ _%klass131968%_)
                       (_%klass132092%_ _%klass132087%_))
                  (__class-type-seal! _%klass132092%_)))))))
    (define seal-class!
      (lambda (_%klass131951%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131951%_ 'class))
            (let ((_%klass131955%_ _%klass131951%_))
              (__seal-class! _%klass131955%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1198.20-1198.25"
               'contract:
               'class-type?
               'value:
               _%klass131951%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass131839%_ _%obj131840%_ _%id131841%_)
        (let* ((_%subklass131844%_ _%subklass131839%_)
               (_%id131852%_ _%id131841%_))
          (letrec ((_%find-next-method131861%_
                    (lambda (_%klass131863%_)
                      (let _%lp131865%_ ((_%rest131867%_
                                          (let ((_%klass131936%_
                                                 _%klass131863%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass131936%_
                                                   'class))
                                                (let ((_%klass131941%_
                                                       _%klass131936%_))
                                                  (__class-precedence-list
                                                   _%klass131941%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass131936%_)
                                                  '#!void)))))
                        (let* ((_%rest131868131876%_ _%rest131867%_)
                               (_%else131870131884%_ (lambda () '#f))
                               (_%K131872131924%_
                                (lambda (_%rest131887%_ _%klass131888%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass131844%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass131888%_)))
                                      (let* ((_%mixins131890%_ _%rest131887%_)
                                             (_%obj131893%_ _%obj131840%_)
                                             (_%id131896%_ _%id131852%_)
                                             (_%id131901%_ _%id131896%_))
                                        (__mixin-find-method
                                         _%mixins131890%_
                                         _%obj131893%_
                                         _%id131901%_))
                                      (_%lp131865%_ _%rest131887%_)))))
                          (if (pair? _%rest131868131876%_)
                              (let ((_%hd131873131927%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131868131876%_)))
                                    (_%tl131874131929%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131868131876%_))))
                                (let* ((_%klass131932%_ _%hd131873131927%_)
                                       (_%rest131934%_ _%tl131874131929%_))
                                  (_%K131872131924%_
                                   _%rest131934%_
                                   _%klass131932%_)))
                              (_%else131870131884%_)))))))
            (_%find-next-method131861%_ (class-of _%obj131840%_))))))
    (define next-method
      (lambda (_%subklass131813%_ _%obj131814%_ _%id131815%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass131813%_ 'class))
            (let ((_%subklass131819%_ _%subklass131813%_))
              (if (symbol? _%id131815%_)
                  (let ((_%id131829%_ _%id131815%_))
                    (__next-method
                     _%subklass131819%_
                     _%obj131814%_
                     _%id131829%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1220.44-1220.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id131815%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.28"
               'contract:
               'class-type?
               'value:
               _%subklass131813%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass131748%_ _%obj131749%_ _%id131750%_ . _%args131751%_)
        (let* ((_%subklass131754%_ _%subklass131748%_)
               (_%id131762%_ _%id131750%_)
               (_%$e131807%_
                (let* ((_%subklass131771%_ _%subklass131754%_)
                       (_%obj131774%_ _%obj131749%_)
                       (_%id131777%_ _%id131762%_)
                       (_%subklass131782%_ _%subklass131771%_)
                       (_%id131797%_ _%id131777%_))
                  (__next-method
                   _%subklass131782%_
                   _%obj131774%_
                   _%id131797%_))))
          (if _%$e131807%_
              (apply _%$e131807%_ _%obj131749%_ _%args131751%_)
              (error '"cannot find next method"
                     'object:
                     _%obj131749%_
                     'method:
                     _%id131762%_)))))
    (define call-next-method
      (lambda (_%subklass131721%_ _%obj131722%_ _%id131723%_ . _%args131724%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass131721%_ 'class))
            (let ((_%subklass131728%_ _%subklass131721%_))
              (if (symbol? _%id131723%_)
                  (let ((_%id131738%_ _%id131723%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass131728%_
                             _%obj131722%_
                             _%id131738%_
                             _%args131724%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1231.49-1231.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id131723%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1231.25-1231.33"
               'contract:
               'class-type?
               'value:
               _%subklass131721%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131500%_ _%properties131501%_)
        (letrec ((_%shadow-type-id131503%_
                  (lambda (_%type131709%_)
                    (let ((__tmp140718
                           (let ()
                             (declare (not safe))
                             (##type-name _%type131709%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp140718 '"::t"))))
                 (_%shadow-type-name131504%_
                  (lambda (_%type131707%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type131707%_))))
                 (_%make-shadow-class131505%_
                  (lambda (_%type131589%_ _%precedence-list131590%_)
                    (let* ((_%super131592%_
                            (if (pair? _%precedence-list131590%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list131590%_))
                                      '())
                                '()))
                           (_%klass131704%_
                            (let* ((_%id131594%_
                                    (_%shadow-type-id131503%_ _%type131589%_))
                                   (_%name131597%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type131589%_)))
                                   (_%direct-supers131600%_ _%super131592%_)
                                   (_%direct-slots131603%_ '())
                                   (_%properties131629%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type131589%_)
                                                      (let ((__tmp140719
                                                             (if (let ((_%type131606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type131589%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type131606%_))
                               (let ((_%type131611%_ _%type131606%_))
                                 (__type-extensible? _%type131611%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type131606%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131501%_ __tmp140719))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor131632%_ '#f)
                                   (_%id131637%_ _%id131594%_))
                              (if (symbol? _%name131597%_)
                                  (let* ((_%name131648%_ _%name131597%_)
                                         (_%direct-supers131658%_
                                          _%direct-supers131600%_)
                                         (_%direct-slots131668%_
                                          _%direct-slots131603%_)
                                         (_%properties131678%_
                                          _%properties131629%_))
                                    (if (let ((_%$e131690%_ '#t))
                                          (and _%$e131690%_ _%$e131690%_))
                                        (let ((_%constructor131694%_
                                               _%constructor131632%_))
                                          (__make-class-type
                                           _%id131637%_
                                           _%name131648%_
                                           _%direct-supers131658%_
                                           _%direct-slots131668%_
                                           _%properties131678%_
                                           _%constructor131694%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor131632%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name131597%_)
                                    '#!void)))))
                      (let ((__tmp140720
                             (let ()
                               (declare (not safe))
                               (##type-id _%type131589%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp140720
                         _%klass131704%_))
                      _%klass131704%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131509%_ ((_%spin131512%_ '0))
              (if (let ((__tmp140721
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140721 '0))
                  (let ((__tmp140722 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp140722))
                  (if (let () (declare (not safe)) (##fx< _%spin131512%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131509%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131512%_ '1))))
                      (let ((_%owner131518%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131518%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131518%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131509%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131524%_
                 (let ((__tmp140723
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131500%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp140723 '#f))))
            (if _%$e131524%_
                (let ()
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##vector-set! __shadow-classes-lock '1 '#f))
                      (let ()
                        (declare (not safe))
                        (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                  _%$e131524%_)
                (let _%loop131532%_ ((_%super131534%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131500%_)))
                                     (_%hierarchy131535%_ '()))
                  (if (not _%super131534%_)
                      (let _%loop131538%_ ((_%rest131540%_ _%hierarchy131535%_)
                                           (_%precedence-list131541%_ '()))
                        (let* ((_%rest131542131550%_ _%rest131540%_)
                               (_%else131544131562%_
                                (lambda ()
                                  (let ((_%klass131558%_
                                         (_%make-shadow-class131505%_
                                          _%type131500%_
                                          _%precedence-list131541%_)))
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
                                    _%klass131558%_)))
                               (_%K131546131576%_
                                (lambda (_%rest131565%_ _%type131566%_)
                                  (let ((_%$e131568%_
                                         (let ((__tmp140724
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131566%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp140724
                                            '#f))))
                                    (if _%$e131568%_
                                        (_%loop131538%_
                                         _%rest131565%_
                                         (cons _%$e131568%_
                                               _%precedence-list131541%_))
                                        (let ((_%klass131574%_
                                               (_%make-shadow-class131505%_
                                                _%type131566%_
                                                _%precedence-list131541%_)))
                                          (_%loop131538%_
                                           _%rest131565%_
                                           (cons _%klass131574%_
                                                 _%precedence-list131541%_))))))))
                          (if (pair? _%rest131542131550%_)
                              (let ((_%hd131547131579%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131542131550%_)))
                                    (_%tl131548131581%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131542131550%_))))
                                (let* ((_%type131584%_ _%hd131547131579%_)
                                       (_%rest131586%_ _%tl131548131581%_))
                                  (_%K131546131576%_
                                   _%rest131586%_
                                   _%type131584%_)))
                              (_%else131544131562%_))))
                      (_%loop131532%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131534%_))
                       (cons _%super131534%_ _%hierarchy131535%_)))))))))
    (define __shadow-class__0
      (lambda (_%type131714%_)
        (let ((_%properties131716%_ '()))
          (__shadow-class__% _%type131714%_ _%properties131716%_))))
    (define __shadow-class
      (lambda _g140725_
        (let ((_g140726_ (let () (declare (not safe)) (##length _g140725_))))
          (cond ((let () (declare (not safe)) (##fx= _g140726_ 1))
                 (apply __shadow-class__0 _g140725_))
                ((let () (declare (not safe)) (##fx= _g140726_ 2))
                 (apply __shadow-class__% _g140725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g140725_))))))
    (define __type
      (let* ((_%tb131488%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131490%_ _%tb131488%_))
        (if (eq? '2 _%$e131490%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131490%_)
                (let ((_%flonum-self-tagging-tags131493%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131494%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131496%_ _%flonum-self-tagging-tags131493%_))
                    (if (eq? '0 _%$e131496%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131494%_ '2))
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
                        (if (eq? '1 _%$e131496%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131494%_ '2))
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
                            (if (eq? '2 _%$e131496%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131496%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131496%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131493%_))))))))
                (error '"unexpected tag width" _%tb131488%_)))))
    (define __primitive-class
      (let ((__tmp140727 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp140727 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131378%_ (vector-length __type))
             (_%cv131380%_
              (let () (declare (not safe)) (##make-vector _%len131378%_ '#f))))
        (let _%loop131383%_ ((_%i131385%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131385%_ _%len131378%_))
              (let* ((_%t131387%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131385%_)))
                     (_%f131485%_
                      (if (eq? _%t131387%_ 'undefined)
                          (lambda (_%obj131390%_)
                            (error '"object type is undefined" _%obj131390%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131387%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131393%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131396%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131385%_)))
                                  (if _%$e131396%_
                                      _%$e131396%_
                                      (let ((_%klass131400%_
                                             (__system-class _%t131387%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131385%_
                                         _%klass131400%_)
                                        _%klass131400%_))))
                              (if (eq? _%t131387%_ 'subtyped)
                                  (lambda (_%obj131404%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131407%_
                                           (##subtype _%obj131404%_)))
                                      (if (##fx= _%st131407%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131410%_
                                                 (##structure-type
                                                  _%obj131404%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131410%_
                                                 'class)
                                                _%klass131410%_
                                                (__shadow-class__0
                                                 _%klass131410%_)))
                                          (if (##fx= _%st131407%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131404%_)
                                                         '1)
                                                  (let ((_%$e131413%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131413%_
                                                        _%$e131413%_
                                                        (let ((_%klass131417%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131417%_)
                                                          _%klass131417%_)))
                                                  (let ((_%$e131420%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131420%_
                                                        _%$e131420%_
                                                        (let ((_%klass131424%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131424%_)
                                                          _%klass131424%_))))
                                              (let ((_%$e131427%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131407%_)))
                                                (if _%$e131427%_
                                                    _%$e131427%_
                                                    (let ((_%klass131444%_
                                                           (let ((_%$e131431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131407%_)))
                     (if _%$e131431%_
                         (let ((_%$e131436%_
                                (##vector-ref __subtype-class _%st131407%_)))
                           (if _%$e131436%_
                               _%$e131436%_
                               (let ((_%klass131440%_
                                      (__system-class _%$e131431%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st131407%_
                                  _%klass131440%_)
                                 _%klass131440%_)))
                         (error '"unknown class"
                                'object:
                                _%obj131404%_
                                'subtype:
                                _%st131407%_)))))
              (##vector-set! __subtype-class _%st131407%_ _%klass131444%_)
              _%klass131444%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131387%_ 'special)
                                      (lambda (_%obj131448%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131451%_
                                               (##type-cast _%obj131448%_ '0)))
                                          (if (##fx> _%x131451%_ '0)
                                              (let ((_%$e131454%_
                                                     __char-class))
                                                (if _%$e131454%_
                                                    _%$e131454%_
                                                    (let ((_%klass131458%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131458%_)
                                                      _%klass131458%_)))
                                              (let* ((_%t131461%_
                                                      (##fx- _%x131451%_))
                                                     (_%$e131464%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131461%_)))
                                                (if _%$e131464%_
                                                    _%$e131464%_
                                                    (let ((_%klass131482%_
                                                           (if (eq? _%obj131448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131448%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131448%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131448%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131448%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131448%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131448%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131448%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131448%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131448%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131448%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131448%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131461%_ _%klass131482%_)
              _%klass131482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131387%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131380%_ _%i131385%_ _%f131485%_))
                (_%loop131383%_
                 (let () (declare (not safe)) (##fx+ _%i131385%_ '1))))
              _%cv131380%_))))
    (define type-of
      (lambda (_%obj131374%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131374%_)))))
    (define class-of
      (lambda (_%obj131365%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131369%_ (##type _%obj131365%_))
                 (_%f131371%_ (##vector-ref __class-of _%t131369%_)))
            (_%f131371%_ _%obj131365%_)))))
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
      (lambda (_%id131359%_)
        (let ((_%$e131361%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131359%_ '#f))))
          (if _%$e131361%_
              _%$e131361%_
              (error '"unknown system class" _%id131359%_)))))
    (define __make-system-class
      (lambda (_%id131261%_ _%super131262%_ _%properties131263%_)
        (let ((_%klass131357%_
               (let* ((_%id131265%_ _%id131261%_)
                      (_%name131268%_ _%id131261%_)
                      (_%direct-supers131271%_ _%super131262%_)
                      (_%direct-slots131274%_ '())
                      (_%properties131277%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131263%_))))
                      (_%constructor131280%_ '#f))
                 (if (symbol? _%id131265%_)
                     (let ((_%id131285%_ _%id131265%_))
                       (if (symbol? _%name131268%_)
                           (let ((_%name131301%_ _%name131268%_))
                             (if (list? _%direct-supers131271%_)
                                 (let* ((_%direct-supers131311%_
                                         _%direct-supers131271%_)
                                        (_%direct-slots131321%_
                                         _%direct-slots131274%_)
                                        (_%properties131331%_
                                         _%properties131277%_))
                                   (if (let ((_%$e131343%_ '#t))
                                         (and _%$e131343%_ _%$e131343%_))
                                       (let ((_%constructor131347%_
                                              _%constructor131280%_))
                                         (__make-class-type
                                          _%id131285%_
                                          _%name131301%_
                                          _%direct-supers131311%_
                                          _%direct-slots131321%_
                                          _%properties131331%_
                                          _%constructor131347%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131280%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131271%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131268%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131265%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131261%_
             _%klass131357%_))
          _%klass131357%_)))))
