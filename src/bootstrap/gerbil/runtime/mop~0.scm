(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771093446)
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
      (let ((_%flags135537%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135538%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135539%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags135537%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table135539%_
           _%properties135538%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots135494%_
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
             (_%slot-vector135496%_ (list->vector (cons '#f _%slots135494%_)))
             (_%slot-table135522%_
              (let ((_%slot-table135498%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp138564
                       (lambda (_%slot135500%_ _%field135501%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135498%_
                            _%slot135500%_
                            _%field135501%_))
                         (let ((__tmp138565
                                (let ((_%sym135503%_ _%slot135500%_))
                                  (if (symbol? _%sym135503%_)
                                      (let ((_%sym135508%_ _%sym135503%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym135508%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym135503%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135498%_
                            __tmp138565
                            _%field135501%_))))
                      (__tmp138562
                       (let ((__tmp138563
                              (let ()
                                (declare (not safe))
                                (##length _%slots135494%_))))
                         (declare (not safe))
                         (##iota __tmp138563 '1))))
                  (declare (not safe))
                  (##for-each __tmp138564 _%slots135494%_ __tmp138562))
                _%slot-table135498%_))
             (_%flags135524%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields135530%_
              (list->vector
               (let ((__tmp138566
                      (map (lambda (_%g135525135527%_)
                             (list _%g135525135527%_ '5 '#f))
                           (drop _%slots135494%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp138566))))
             (_%properties135532%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots135494%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t135534%_
              (let ((__tmp138567 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags135524%_
                 ##type-type
                 _%fields135530%_
                 __tmp138567
                 _%slot-vector135496%_
                 _%slot-table135522%_
                 _%properties135532%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t135534%_ _%t135534%_))
        _%t135534%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags135490%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135491%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135492%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp138568 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags135490%_
           '#f
           '#()
           __tmp138568
           '#(#f)
           _%slot-table135492%_
           _%properties135491%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass135478%_)
        (let ((_%klass135481%_ _%klass135478%_))
          (declare (not safe))
          (##structure-type _%klass135481%_))))
    (define class-type
      (lambda (_%klass121181%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121181%_ 'class))
            (let ((_%klass121185%_ _%klass121181%_))
              (__class-type _%klass121185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121181%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj135476%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj135476%_ 'class))))
    (define __class-type=?
      (lambda (_%x135455%_ _%y135456%_)
        (let* ((_%x135459%_ _%x135455%_) (_%y135467%_ _%y135456%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x135459%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y135467%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121315%_ _%y121316%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121315%_ 'class))
            (let ((_%x121320%_ _%x121315%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121316%_ 'class))
                  (let ((_%y121330%_ _%y121316%_))
                    (__class-type=? _%x121320%_ _%y121330%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121316%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121315%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type135443%_)
        (let* ((_%type135446%_ _%type135443%_)
               (__tmp138569
                (let ((__tmp138570
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135446%_))))
                  (declare (not safe))
                  (##fxand __tmp138570 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138569 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type121762%_)
        (if (let () (declare (not safe)) (##type? _%type121762%_))
            (let ((_%type121766%_ _%type121762%_))
              (__type-opaque? _%type121766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type121762%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass135431%_)
        (let* ((_%klass135434%_ _%klass135431%_)
               (__tmp138571
                (let ((__tmp138572
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135434%_))))
                  (declare (not safe))
                  (##fxand __tmp138572 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138571 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass121896%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121896%_ 'class))
            (let ((_%klass121900%_ _%klass121896%_))
              (__class-type-opaque? _%klass121900%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass121896%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type135419%_)
        (let* ((_%type135422%_ _%type135419%_)
               (__tmp138573
                (let ((__tmp138574
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135422%_))))
                  (declare (not safe))
                  (##fxand __tmp138574 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138573 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122030%_)
        (if (let () (declare (not safe)) (##type? _%type122030%_))
            (let ((_%type122034%_ _%type122030%_))
              (__type-extensible? _%type122034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122030%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type135407%_)
        (let* ((_%type135410%_ _%type135407%_)
               (__tmp138575
                (let ((__tmp138576
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135410%_))))
                  (declare (not safe))
                  (##fxand __tmp138576 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138575 '0))))
    (define class-type-final?
      (lambda (_%type122164%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122164%_ 'class))
            (let ((_%type122168%_ _%type122164%_))
              (__class-type-final? _%type122168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122164%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass135395%_)
        (let* ((_%klass135398%_ _%klass135395%_)
               (__tmp138577
                (let ((__tmp138578
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135398%_))))
                  (declare (not safe))
                  (##fxand __tmp138578 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp138577 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122298%_ 'class))
            (let ((_%klass122302%_ _%klass122298%_))
              (__class-type-struct? _%klass122302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122298%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass135383%_)
        (let* ((_%klass135386%_ _%klass135383%_)
               (__tmp138579
                (let ((__tmp138580
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135386%_))))
                  (declare (not safe))
                  (##fxand __tmp138580 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp138579 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass122432%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122432%_ 'class))
            (let ((_%klass122436%_ _%klass122432%_))
              (__class-type-sealed? _%klass122436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass122432%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass135371%_)
        (let* ((_%klass135374%_ _%klass135371%_)
               (__tmp138581
                (let ((__tmp138582
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135374%_))))
                  (declare (not safe))
                  (##fxand __tmp138582 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp138581 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass122566%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122566%_ 'class))
            (let ((_%klass122570%_ _%klass122566%_))
              (__class-type-metaclass? _%klass122570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass122566%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass135359%_)
        (let* ((_%klass135362%_ _%klass135359%_)
               (__tmp138583
                (let ((__tmp138584
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135362%_))))
                  (declare (not safe))
                  (##fxand __tmp138584 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp138583 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass122700%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122700%_ 'class))
            (let ((_%klass122704%_ _%klass122700%_))
              (__class-type-system? _%klass122704%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass122700%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass135347%_)
        (let* ((_%klass135350%_ _%klass135347%_)
               (__tmp138585
                (let ((__tmp138586
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135350%_))))
                  (declare (not safe))
                  (##fxand __tmp138586 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp138585 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass122834%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122834%_ 'class))
            (let ((_%klass122838%_ _%klass122834%_))
              (__class-type-acyclic? _%klass122838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass122834%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id135154%_
               _%type-name135155%_
               _%type-super135156%_
               _%precedence-list135157%_
               _%slot-vector135158%_
               _%properties135159%_
               _%constructor135160%_
               _%slot-table135161%_
               _%methods135162%_)
        (letrec ((_%make-props!135165%_
                  (lambda (_%key135297%_)
                    (letrec* ((_%ht135299%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!135300%_
                               (lambda (_%ht135340%_ _%slots135341%_)
                                 (for-each
                                  (lambda (_%g135342135344%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht135340%_
                                       _%g135342135344%_
                                       '#t)))
                                  _%slots135341%_)))
                              (_%put-alist!135301%_
                               (lambda (_%ht135329%_
                                        _%key135330%_
                                        _%alist135331%_)
                                 (let ((_%$e135333%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135330%_
                                           _%alist135331%_))))
                                   (if _%$e135333%_
                                       ((lambda (_%g135335135337%_)
                                          (_%put-slots!135300%_
                                           _%ht135329%_
                                           _%g135335135337%_))
                                        _%$e135333%_)
                                       '#!void)))))
                      (_%put-alist!135301%_
                       _%ht135299%_
                       _%key135297%_
                       _%properties135159%_)
                      (for-each
                       (lambda (_%mixin135303%_)
                         (let ((_%alist135305%_
                                (##structure-ref
                                 _%mixin135303%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist135305%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135297%_
                                           _%alist135305%_))))
                               (_%put-slots!135300%_
                                _%ht135299%_
                                (let ((_%klass135310%_ _%mixin135303%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass135310%_
                                         'class))
                                      (let ((_%klass135315%_ _%klass135310%_))
                                        (__class-type-slot-list
                                         _%klass135315%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass135310%_)
                                        '#!void))))
                               (_%put-alist!135301%_
                                _%ht135299%_
                                _%key135297%_
                                _%alist135305%_))))
                       _%precedence-list135157%_)
                      _%ht135299%_))))
          (let* ((_%transparent?135167%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties135159%_)))
                 (_%all-slots-printable?135172%_
                  (let ((_%$e135169%_ _%transparent?135167%_))
                    (if _%$e135169%_
                        _%$e135169%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties135159%_))))))
                 (_%printable135174%_
                  (if (not _%all-slots-printable?135172%_)
                      (_%make-props!135165%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?135179%_
                  (let ((_%$e135176%_ _%transparent?135167%_))
                    (if _%$e135176%_
                        _%$e135176%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties135159%_))))))
                 (_%equalable135181%_
                  (if (not _%all-slots-equalable?135179%_)
                      (_%make-props!135165%_ 'equal:)
                      '#f))
                 (_%first-new-field135183%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super135156%_ 'class))
                      (let ((__tmp138587
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super135156%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp138587))
                      '1))
                 (_%field-info-length135185%_
                  (let ((__tmp138588
                         (let ((__tmp138589
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector135158%_))))
                           (declare (not safe))
                           (##fx- __tmp138589 _%first-new-field135183%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp138588)))
                 (_%field-info135187%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length135185%_ '#f)))
                 (_%struct?135189%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties135159%_)))
                 (_%final?135191%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties135159%_)))
                 (_%metaclass135198%_
                  (let ((_%metaclass135192135194%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties135159%_))))
                    (if _%metaclass135192135194%_
                        (let ((_%metaclass135196%_ _%metaclass135192135194%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass135196%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id135154%_
                                     'metaclass:
                                     _%metaclass135196%_))
                          _%metaclass135196%_)
                        '#f)))
                 (_%system?135200%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties135159%_)))
                 (_%opaque?135239%_
                  (if (or _%transparent?135167%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties135159%_)))
                      '#f
                      (let ((_%$e135205%_ (not _%type-super135156%_)))
                        (if _%$e135205%_
                            _%$e135205%_
                            (let ((_%type135208%_ _%type-super135156%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type135208%_))
                                  (let ((_%type135213%_ _%type135208%_))
                                    (__type-opaque? _%type135213%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type135208%_)
                                    '#!void)))))))
                 (_%acyclic?135241%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties135159%_)))
                 (_%type-flags135243%_
                  (let ((__tmp138595
                         (if _%final?135191%_ '0 type-flag-extensible))
                        (__tmp138594
                         (if _%opaque?135239%_ type-flag-opaque '0))
                        (__tmp138593
                         (if _%struct?135189%_ class-type-flag-struct '0))
                        (__tmp138592
                         (if _%metaclass135198%_ class-type-flag-metaclass '0))
                        (__tmp138591
                         (if _%system?135200%_ class-type-flag-system '0))
                        (__tmp138590
                         (if _%acyclic?135241%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp138595
                             __tmp138594
                             __tmp138593
                             __tmp138592
                             __tmp138591
                             __tmp138590)))
                 (_%precedence-list135251%_
                  (let ((_%$e135245%_ (memq t::t _%precedence-list135157%_)))
                    (if _%$e135245%_
                        ((lambda (_%tail135248%_)
                           (if (null? (cdr _%tail135248%_))
                               _%precedence-list135157%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list135157%_)))
                         _%$e135245%_)
                        (let ((__tmp138596 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list135157%_ __tmp138596))))))
            (let _%loop135254%_ ((_%i135256%_ _%first-new-field135183%_)
                                 (_%j135257%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j135257%_ _%field-info-length135185%_))
                  (let* ((_%slot135259%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector135158%_ _%i135256%_)))
                         (_%flags135267%_
                          (if _%transparent?135167%_
                              '0
                              (let ((__tmp138598
                                     (if (or _%all-slots-printable?135172%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable135174%_
                                                _%slot135259%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp138597
                                     (if (or _%all-slots-equalable?135179%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable135181%_
                                                _%slot135259%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp138598 __tmp138597)))))
                    (vector-set!
                     _%field-info135187%_
                     _%j135257%_
                     _%slot135259%_)
                    (vector-set!
                     _%field-info135187%_
                     (let () (declare (not safe)) (##fx+ _%j135257%_ '1))
                     _%flags135267%_)
                    (_%loop135254%_
                     (let () (declare (not safe)) (##fx+ _%i135256%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j135257%_ '3))))
                  '#!void))
            (if _%metaclass135198%_
                (let ((_%val135294%_
                       (let* ((_%klass135270%_ _%metaclass135198%_)
                              (_%args135273%_
                               (list _%type-id135154%_
                                     _%type-name135155%_
                                     _%type-flags135243%_
                                     _%type-super135156%_
                                     _%field-info135187%_
                                     _%precedence-list135251%_
                                     _%slot-vector135158%_
                                     _%slot-table135161%_
                                     _%properties135159%_
                                     _%constructor135160%_
                                     _%methods135162%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass135270%_
                                'class))
                             (let ((_%klass135278%_ _%klass135270%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass135278%_
                                        _%args135273%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass135270%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val135294%_ 'class))
                      _%val135294%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val135294%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id135154%_
                   _%type-name135155%_
                   _%type-flags135243%_
                   _%type-super135156%_
                   _%field-info135187%_
                   _%precedence-list135251%_
                   _%slot-vector135158%_
                   _%slot-table135161%_
                   _%properties135159%_
                   _%constructor135160%_
                   _%methods135162%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass135152%_)
        (##structure-ref _%klass135152%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass135150%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135150%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass135147%_ _%val135148%_)
        (##structure-set! _%klass135147%_ _%val135148%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass135142%_ _%val135144%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135142%_
           _%val135144%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass135140%_)
        (##structure-ref _%klass135140%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass135138%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135138%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass135135%_ _%val135136%_)
        (##structure-set! _%klass135135%_ _%val135136%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass135130%_ _%val135132%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135130%_
           _%val135132%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass135128%_)
        (##structure-ref _%klass135128%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass135126%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135126%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass135123%_ _%val135124%_)
        (##structure-set! _%klass135123%_ _%val135124%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass135118%_ _%val135120%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135118%_
           _%val135120%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass135116%_)
        (##structure-ref _%klass135116%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass135114%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135114%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass135111%_ _%val135112%_)
        (##structure-set! _%klass135111%_ _%val135112%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass135106%_ _%val135108%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135106%_
           _%val135108%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass135104%_)
        (##structure-ref _%klass135104%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass135102%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135102%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass135099%_ _%val135100%_)
        (##structure-set! _%klass135099%_ _%val135100%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass135094%_ _%val135096%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135094%_
           _%val135096%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass135092%_)
        (##structure-ref _%klass135092%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass135090%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135090%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass135087%_ _%val135088%_)
        (##structure-set!
         _%klass135087%_
         _%val135088%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass135082%_ _%val135084%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135082%_
           _%val135084%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass135080%_)
        (##structure-ref _%klass135080%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass135078%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135078%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass135075%_ _%val135076%_)
        (##structure-set!
         _%klass135075%_
         _%val135076%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass135070%_ _%val135072%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135070%_
           _%val135072%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass135068%_)
        (##structure-ref _%klass135068%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass135066%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135066%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass135063%_ _%val135064%_)
        (##structure-set!
         _%klass135063%_
         _%val135064%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass135058%_ _%val135060%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135058%_
           _%val135060%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass135056%_)
        (##structure-ref _%klass135056%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass135054%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135054%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass135051%_ _%val135052%_)
        (##structure-set!
         _%klass135051%_
         _%val135052%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass135046%_ _%val135048%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135046%_
           _%val135048%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass135044%_)
        (##structure-ref _%klass135044%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass135042%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135042%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass135039%_ _%val135040%_)
        (##structure-set!
         _%klass135039%_
         _%val135040%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass135034%_ _%val135036%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135034%_
           _%val135036%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass135032%_)
        (##structure-ref _%klass135032%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass135030%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135030%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass135027%_ _%val135028%_)
        (##structure-set!
         _%klass135027%_
         _%val135028%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass135022%_ _%val135024%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135022%_
           _%val135024%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass135020%_)
        (##structure-ref _%klass135020%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass135018%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135018%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass135015%_ _%val135016%_)
        (##structure-set!
         _%klass135015%_
         _%val135016%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass135010%_ _%val135012%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135010%_
           _%val135012%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass135008%_)
        (##structure-ref _%klass135008%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass135006%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135006%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass135003%_ _%val135004%_)
        (##structure-set!
         _%klass135003%_
         _%val135004%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass134998%_ _%val135000%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass134998%_
           _%val135000%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type134709%_)
        (letrec ((_%__fields->list134839%_
                  (lambda (_%fields134947%_ _%r134948%_)
                    (let* ((_%fields134951%_ _%fields134947%_)
                           (_%r134959%_ _%r134948%_)
                           (_%fields-len134968%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields134951%_))))
                      (let _%loop134970%_ ((_%i134972%_ '0)
                                           (_%r134973%_ _%r134959%_))
                        (let* ((_%i134976%_ _%i134972%_)
                               (_%r134989%_ _%r134973%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i134976%_ _%fields-len134968%_))
                              (_%loop134970%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i134976%_ '3))
                               (cons (vector-ref _%fields134951%_ _%i134976%_)
                                     _%r134989%_))
                              _%r134989%_))))))
                 (_%fields->list134840%_
                  (lambda (_%fields134926%_ _%r134927%_)
                    (let* ((_%fields134930%_ _%fields134926%_)
                           (_%r134938%_ _%r134927%_))
                      (_%__fields->list134839%_
                       _%fields134930%_
                       _%r134938%_)))))
          (let _%loop134842%_ ((_%type134844%_ _%type134709%_)
                               (_%r134845%_ '()))
            (let ((_%r134848%_ _%r134845%_))
              (if (let () (declare (not safe)) (##type? _%type134844%_))
                  (if (eq? _%type134844%_ ##type-type)
                      (reverse! _%r134848%_)
                      (let ((_%$e134860%_
                             (let ()
                               (declare (not safe))
                               (##type-super _%type134844%_))))
                        (if _%$e134860%_
                            ((lambda (_%super134863%_)
                               (_%loop134842%_
                                _%super134863%_
                                (let* ((_%fields134866%_
                                        (let ()
                                          (declare (not safe))
                                          (##type-fields _%type134844%_)))
                                       (_%r134869%_ _%r134848%_)
                                       (_%fields134873%_ _%fields134866%_)
                                       (_%r134889%_ _%r134869%_))
                                  (_%__fields->list134839%_
                                   _%fields134873%_
                                   _%r134889%_))))
                             _%$e134860%_)
                            (reverse!
                             (let* ((_%fields134899%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-fields _%type134844%_)))
                                    (_%r134902%_ _%r134848%_)
                                    (_%fields134906%_ _%fields134899%_)
                                    (_%r134916%_ _%r134902%_))
                               (_%__fields->list134839%_
                                _%fields134906%_
                                _%r134916%_))))))
                  (reverse! _%r134848%_)))))))
    (define __class-type-slot-list
      (lambda (_%klass134697%_)
        (let ((_%klass134700%_ _%klass134697%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass134700%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass123358%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123358%_ 'class))
            (let ((_%klass123362%_ _%klass123358%_))
              (__class-type-slot-list _%klass123362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@370.29-370.34"
               'contract:
               'class-type?
               'value:
               _%klass123358%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass134685%_)
        (let* ((_%klass134688%_ _%klass134685%_)
               (__tmp138599
                (let ((__tmp138600
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134688%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp138600))))
          (declare (not safe))
          (##fx- __tmp138599 '1))))
    (define class-type-field-count
      (lambda (_%klass123492%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123492%_ 'class))
            (let ((_%klass123496%_ _%klass123492%_))
              (__class-type-field-count _%klass123496%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@372.31-372.36"
               'contract:
               'class-type?
               'value:
               _%klass123492%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass134673%_)
        (let ((_%klass134676%_ _%klass134673%_))
          (let ((__tmp138601
                 (let ((__tmp138602
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass134676%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp138602))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass134676%_
             __tmp138601
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass123626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123626%_ 'class))
            (let ((_%klass123630%_ _%klass123626%_))
              (__class-type-seal! _%klass123630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@375.25-375.30"
               'contract:
               'class-type?
               'value:
               _%klass123626%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass134606%_)
        (let ((_%klass134609%_ _%klass134606%_))
          (letrec ((_%get-field-vector134618%_
                    (lambda (_%type134657%_)
                      (let _%loop134659%_ ((_%type134661%_ _%type134657%_))
                        (let* ((_%fields134663%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type134661%_)))
                               (_%$e134665%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type134661%_))))
                          (if _%$e134665%_
                              ((lambda (_%super134668%_)
                                 (let ((_%super-fields134670%_
                                        (_%loop134659%_ _%super134668%_)))
                                   (vector-append
                                    _%super-fields134670%_
                                    _%fields134663%_)))
                               _%$e134665%_)
                              _%fields134663%_)))))
                   (_%get-printable-slot-alist134619%_
                    (lambda (_%type134640%_)
                      (let* ((_%fields134642%_
                              (_%get-field-vector134618%_ _%type134640%_))
                             (_%count134644%_
                              (vector-length _%fields134642%_)))
                        (let _%loop134647%_ ((_%i134649%_ '3)
                                             (_%offset134650%_ '1)
                                             (_%r134651%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i134649%_ _%count134644%_))
                              (let ((_%slot-name134653%_
                                     (vector-ref _%fields134642%_ _%i134649%_))
                                    (_%slot-flags134654%_
                                     (vector-ref
                                      _%fields134642%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i134649%_ '1))))
                                    (_%next-i134655%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i134649%_ '2))))
                                (if (let ((__tmp138603
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags134654%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp138603 '0))
                                    (_%loop134647%_
                                     _%next-i134655%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset134650%_ '1))
                                     _%r134651%_)
                                    (_%loop134647%_
                                     _%next-i134655%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset134650%_ '1))
                                     (cons (cons _%slot-name134653%_
                                                 _%offset134650%_)
                                           _%r134651%_))))
                              (reverse! _%r134651%_))))))
                   (_%get-printable-slots!134620%_
                    (lambda (_%klass134635%_ _%type134636%_)
                      (let ((_%printable134638%_
                             (_%get-printable-slot-alist134619%_
                              _%type134636%_)))
                        (##structure-set!
                         _%klass134635%_
                         (cons (cons 'printable-slots: _%printable134638%_)
                               (##structure-ref
                                _%klass134635%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable134638%_))))
            (let* ((_%props134622%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass134609%_ '9 '#f '#f)))
                   (_%$e134624%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props134622%_))))
              (if _%$e134624%_
                  _%$e134624%_
                  (let ((_%$e134627%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props134622%_))))
                    (if _%$e134627%_
                        ((lambda (_%g134629134631%_)
                           (_%get-printable-slots!134620%_
                            _%klass134609%_
                            _%g134629134631%_))
                         _%$e134627%_)
                        (_%get-printable-slots!134620%_
                         _%klass134609%_
                         _%klass134609%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass123760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123760%_ 'class))
            (let ((_%klass123764%_ _%klass123760%_))
              (__class-type-printable-slots _%klass123764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@382.35-382.40"
               'contract:
               'class-type?
               'value:
               _%klass123760%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct134575%_ _%maybe-super-struct134576%_)
        (let* ((_%maybe-sub-struct134579%_ _%maybe-sub-struct134575%_)
               (_%maybe-super-struct134587%_ _%maybe-super-struct134576%_)
               (_%maybe-super-struct-id134596%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct134587%_))))
          (let _%lp134598%_ ((_%super-struct134600%_
                              _%maybe-sub-struct134579%_))
            (if (not _%super-struct134600%_)
                '#f
                (if (eq? _%maybe-super-struct-id134596%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct134600%_)))
                    '#t
                    (_%lp134598%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct134600%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct123894%_ _%maybe-super-struct123895%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct123894%_ 'class))
            (let ((_%maybe-sub-struct123899%_ _%maybe-sub-struct123894%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct123895%_
                     'class))
                  (let ((_%maybe-super-struct123909%_
                         _%maybe-super-struct123895%_))
                    (__substruct?
                     _%maybe-sub-struct123899%_
                     _%maybe-super-struct123909%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@428.47-428.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct123895%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@428.19-428.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct123894%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass134553%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134553%_ 'class))
            (if (let* ((_%klass134556%_ _%klass134553%_)
                       (_%klass134561%_ _%klass134556%_))
                  (__class-type-struct? _%klass134561%_))
                _%klass134553%_
                (let () (declare (not safe)) (##type-super _%klass134553%_)))
            (if (not _%klass134553%_)
                '#f
                (error '"not a class or false" _%klass134553%_)))))
    (define base-struct/2
      (lambda (_%klass1134476%_ _%klass2134477%_)
        (let ((_%s1134479%_ (base-struct/1 _%klass1134476%_))
              (_%s2134480%_ (base-struct/1 _%klass2134477%_)))
          (if (or (not _%s1134479%_)
                  (and _%s2134480%_
                       (let* ((_%maybe-sub-struct134485%_ _%s1134479%_)
                              (_%maybe-super-struct134488%_ _%s2134480%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct134485%_
                                'class))
                             (let ((_%maybe-sub-struct134493%_
                                    _%maybe-sub-struct134485%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct134488%_
                                      'class))
                                   (let ((_%maybe-super-struct134507%_
                                          _%maybe-super-struct134488%_))
                                     (__substruct?
                                      _%maybe-sub-struct134493%_
                                      _%maybe-super-struct134507%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct134488%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct134485%_)
                               '#!void)))))
              _%s2134480%_
              (if (or (not _%s2134480%_)
                      (and _%s1134479%_
                           (let* ((_%maybe-sub-struct134521%_ _%s2134480%_)
                                  (_%maybe-super-struct134524%_ _%s1134479%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct134521%_
                                    'class))
                                 (let ((_%maybe-sub-struct134529%_
                                        _%maybe-sub-struct134521%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct134524%_
                                          'class))
                                       (let ((_%maybe-super-struct134541%_
                                              _%maybe-super-struct134524%_))
                                         (__substruct?
                                          _%maybe-sub-struct134529%_
                                          _%maybe-super-struct134541%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct134524%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct134521%_)
                                   '#!void)))))
                  _%s1134479%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1134476%_
                         _%klass2134477%_
                         _%s1134479%_
                         _%s2134480%_))))))
    (define base-struct/list
      (lambda (_%all-supers134361%_)
        (let* ((_%all-supers134362134387%_ _%all-supers134361%_)
               (_%E134367134391%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers134362134387%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K134385134473%_ (lambda () '#f))
                (_%K134382134459%_
                 (lambda (_%x134457%_) (base-struct/1 _%x134457%_)))
                (_%K134377134436%_
                 (lambda (_%y134433%_ _%x134434%_)
                   (base-struct/2 _%x134434%_ _%y134433%_)))
                (_%K134368134398%_
                 (lambda (_%y134395%_ _%x134396%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x134396%_ _%y134395%_)))))
            (let* ((_%__match137376137377%_
                    (lambda (_%hd134369134401%_ _%tl134370134403%_)
                      (let ((_%x134406%_ _%hd134369134401%_))
                        (letrec ((_%splice-rest134372134408%_
                                  (lambda (_%rest134376134415%_ _%y134417%_)
                                    (if (null? _%rest134376134415%_)
                                        (_%K134368134398%_
                                         _%y134417%_
                                         _%x134406%_)
                                        (_%E134367134391%_))))
                                 (_%splice-try134374134410%_
                                  (lambda (_%hd134375134419%_
                                           _%rest134376134421%_
                                           _%y134371134422%_)
                                    (let ((_%y134424%_ _%hd134375134419%_))
                                      (_%splice-loop134373134412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest134376134421%_))
                                       (cons _%y134424%_ _%y134371134422%_)))))
                                 (_%splice-loop134373134412%_
                                  (lambda (_%rest134376134426%_
                                           _%y134371134427%_)
                                    (if (pair? _%rest134376134426%_)
                                        (_%splice-try134374134410%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest134376134426%_))
                                         _%rest134376134426%_
                                         _%y134371134427%_)
                                        (_%splice-rest134372134408%_
                                         _%rest134376134426%_
                                         (reverse _%y134371134427%_))))))
                          (_%splice-loop134373134412%_
                           _%tl134370134403%_
                           '())))))
                   (_%try-match134364134469%_
                    (lambda ()
                      (if (pair? _%all-supers134362134387%_)
                          (let ((_%tl134384134464%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers134362134387%_)))
                                (_%hd134383134462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers134362134387%_))))
                            (if (null? _%tl134384134464%_)
                                (let ((_%x134467%_ _%hd134383134462%_))
                                  (base-struct/1 _%x134467%_))
                                (if (pair? _%tl134384134464%_)
                                    (let ((_%tl134381134448%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl134384134464%_)))
                                          (_%hd134380134446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl134384134464%_))))
                                      (if (null? _%tl134381134448%_)
                                          (let ((_%x134444%_
                                                 _%hd134383134462%_)
                                                (_%y134451%_
                                                 _%hd134380134446%_))
                                            (_%K134377134436%_
                                             _%y134451%_
                                             _%x134444%_))
                                          (_%__match137376137377%_
                                           _%hd134383134462%_
                                           _%tl134384134464%_)))
                                    (_%__match137376137377%_
                                     _%hd134383134462%_
                                     _%tl134384134464%_))))
                          (_%E134367134391%_)))))
              (if (null? _%all-supers134362134387%_)
                  (_%K134385134473%_)
                  (_%try-match134364134469%_)))))))
    (define base-struct
      (lambda _%all-supers134359%_ (base-struct/list _%all-supers134359%_)))
    (define find-super-constructor
      (lambda (_%super134310%_)
        (let _%lp134312%_ ((_%rest134314%_ _%super134310%_)
                           (_%constructor134315%_ '#f))
          (let* ((_%rest134316134324%_ _%rest134314%_)
                 (_%else134318134332%_ (lambda () _%constructor134315%_))
                 (_%K134320134347%_
                  (lambda (_%rest134335%_ _%hd134336%_)
                    (let ((_%$e134338%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd134336%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e134338%_
                          ((lambda (_%xconstructor134341%_)
                             (if (or (not _%constructor134315%_)
                                     (eq? _%constructor134315%_
                                          _%xconstructor134341%_))
                                 (_%lp134312%_
                                  _%rest134335%_
                                  _%xconstructor134341%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor134315%_
                                        _%xconstructor134341%_)))
                           _%$e134338%_)
                          (_%lp134312%_
                           _%rest134335%_
                           _%constructor134315%_))))))
            (if (pair? _%rest134316134324%_)
                (let ((_%hd134321134350%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest134316134324%_)))
                      (_%tl134322134352%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest134316134324%_))))
                  (let* ((_%hd134355%_ _%hd134321134350%_)
                         (_%rest134357%_ _%tl134322134352%_))
                    (_%K134320134347%_ _%rest134357%_ _%hd134355%_)))
                (_%else134318134332%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list134266%_ _%direct-slots134267%_)
        (let* ((_%next-slot134269%_ '1)
               (_%slot-table134271%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots134273%_ '(__class))
               (_%process-slot134297%_
                (lambda (_%slot134275%_)
                  (if (symbol? _%slot134275%_)
                      '#!void
                      (error '"invalid slot name" _%slot134275%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table134271%_
                              _%slot134275%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134271%_
                           _%slot134275%_
                           _%next-slot134269%_))
                        (let ((__tmp138604
                               (let ((_%sym134277%_ _%slot134275%_))
                                 (if (symbol? _%sym134277%_)
                                     (let ((_%sym134282%_ _%sym134277%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym134282%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym134277%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134271%_
                           __tmp138604
                           _%next-slot134269%_))
                        (set! _%r-slots134273%_
                              (cons _%slot134275%_ _%r-slots134273%_))
                        (set! _%next-slot134269%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot134269%_ '1))))
                      '#!void)))
               (_%process-slots134303%_
                (lambda (_%g134298134300%_)
                  (for-each _%process-slot134297%_ _%g134298134300%_))))
          (let ((__tmp138606
                 (lambda (_%mixin134306%_)
                   (_%process-slots134303%_
                    (let ((__tmp138607
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin134306%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp138607 '())))))
                (__tmp138605 (reverse _%class-precedence-list134266%_)))
            (declare (not safe))
            (##for-each __tmp138606 __tmp138605))
          (_%process-slots134303%_ _%direct-slots134267%_)
          (let ((_%slot-vector134308%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots134273%_)))))
            (values _%slot-vector134308%_ _%slot-table134271%_)))))
    (define __make-class-type
      (lambda (_%id134093%_
               _%name134094%_
               _%direct-supers134095%_
               _%direct-slots134096%_
               _%properties134097%_
               _%constructor134098%_)
        (let* ((_%id134101%_ _%id134093%_)
               (_%name134109%_ _%name134094%_)
               (_%direct-supers134117%_ _%direct-supers134095%_)
               (_%direct-slots134125%_ _%direct-slots134096%_)
               (_%properties134133%_ _%properties134097%_)
               (_%constructor134141%_ _%constructor134098%_))
          (let ((_%$e134175%_
                 (let* ((_%pred134153%_
                         (lambda (_%$obj134150%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj134150%_
                                   'class)))))
                        (_%lst134156%_ _%direct-supers134117%_)
                        (_%pred134161%_ _%pred134153%_))
                   (declare (not safe))
                   (__find _%pred134161%_ _%lst134156%_))))
            (if _%$e134175%_
                ((lambda (_%g134177134179%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g134177134179%_))
                 _%$e134175%_)
                (let ((_%$e134202%_
                       (let* ((_%pred134182%_ __class-type-final?)
                              (_%lst134185%_ _%direct-supers134117%_)
                              (_%pred134190%_ _%pred134182%_))
                         (declare (not safe))
                         (__find _%pred134190%_ _%lst134185%_))))
                  (if _%$e134202%_
                      ((lambda (_%g134204134206%_)
                         (error '"Cannot extend final class"
                                _%g134204134206%_))
                       _%$e134202%_)
                      '#!void))))
          (let ((_g138608_ (compute-precedence-list _%direct-supers134117%_)))
            (begin
              (let ((_g138609_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g138608_)
                           (##values-length _g138608_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g138609_ 2)))
                    (error "Context expects 2 values" _g138609_)))
              (let ((_%precedence-list134209%_
                     (let () (declare (not safe)) (##values-ref _g138608_ 0)))
                    (_%struct-super134210%_
                     (let () (declare (not safe)) (##values-ref _g138608_ 1))))
                (let ((_g138610_
                       (compute-class-slots
                        _%precedence-list134209%_
                        _%direct-slots134125%_)))
                  (begin
                    (let ((_g138611_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g138610_)
                                 (##values-length _g138610_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g138611_ 2)))
                          (error "Context expects 2 values" _g138611_)))
                    (let ((_%slot-vector134212%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138610_ 0)))
                          (_%slot-table134213%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138610_ 1))))
                      (let* ((_%properties134215%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots134125%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers134117%_)
                                          _%properties134133%_)))
                             (_%constructor*134220%_
                              (let ((_%$e134217%_ _%constructor134141%_))
                                (if _%$e134217%_
                                    _%$e134217%_
                                    (find-super-constructor
                                     _%direct-supers134117%_))))
                             (_%precedence-list134263%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties134215%_))
                                      (memq object::t
                                            _%precedence-list134209%_))
                                  _%precedence-list134209%_
                                  (let _%loop134225%_ ((_%tail134227%_
                                                        _%precedence-list134209%_)
                                                       (_%head134228%_ '()))
                                    (let* ((_%tail134229134237%_
                                            _%tail134227%_)
                                           (_%else134231134245%_
                                            (lambda ()
                                              (let ((__tmp138612
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp138612
                                                 _%head134228%_))))
                                           (_%K134233134251%_
                                            (lambda (_%rest134248%_
                                                     _%hd134249%_)
                                              (if (eq? _%hd134249%_ t::t)
                                                  (let ((__tmp138613
                                                         (cons object::t
                                                               _%tail134227%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp138613
                                                     _%head134228%_))
                                                  (_%loop134225%_
                                                   _%rest134248%_
                                                   (cons _%hd134249%_
                                                         _%head134228%_))))))
                                      (if (pair? _%tail134229134237%_)
                                          (let ((_%hd134234134254%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail134229134237%_)))
                                                (_%tl134235134256%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail134229134237%_))))
                                            (let* ((_%hd134259%_
                                                    _%hd134234134254%_)
                                                   (_%rest134261%_
                                                    _%tl134235134256%_))
                                              (_%K134233134251%_
                                               _%rest134261%_
                                               _%hd134259%_)))
                                          (_%else134231134245%_)))))))
                        (make-class-type-descriptor
                         _%id134101%_
                         _%name134109%_
                         _%struct-super134210%_
                         _%precedence-list134263%_
                         _%slot-vector134212%_
                         _%properties134215%_
                         _%constructor*134220%_
                         _%slot-table134213%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124039%_
               _%name124040%_
               _%direct-supers124041%_
               _%direct-slots124042%_
               _%properties124043%_
               _%constructor124044%_)
        (if (symbol? _%id124039%_)
            (let ((_%id124048%_ _%id124039%_))
              (if (symbol? _%name124040%_)
                  (let ((_%name124058%_ _%name124040%_))
                    (if (list? _%direct-supers124041%_)
                        (let ((_%direct-supers124068%_
                               _%direct-supers124041%_))
                          (if (list? _%direct-slots124042%_)
                              (let ((_%direct-slots124078%_
                                     _%direct-slots124042%_))
                                (if (list? _%properties124043%_)
                                    (let ((_%properties124088%_
                                           _%properties124043%_))
                                      (if ((lambda (_%$obj124097%_)
                                             (or (not _%$obj124097%_)
                                                 (symbol? _%$obj124097%_)))
                                           _%constructor124044%_)
                                          (let ((_%constructor124104%_
                                                 _%constructor124044%_))
                                            (__make-class-type
                                             _%id124048%_
                                             _%name124058%_
                                             _%direct-supers124068%_
                                             _%direct-slots124078%_
                                             _%properties124088%_
                                             _%constructor124104%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@525.24-525.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124044%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@524.24-524.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124043%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@523.24-523.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124042%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@522.24-522.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124041%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@521.24-521.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124040%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@520.24-520.26"
               'contract:
               'symbol?
               'value:
               _%id124039%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass134081%_)
        (let ((_%klass134084%_ _%klass134081%_))
          (cons _%klass134084%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134084%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass124234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124234%_ 'class))
            (let ((_%klass124238%_ _%klass124234%_))
              (__class-precedence-list _%klass124238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@558.30-558.35"
               'contract:
               'class-type?
               'value:
               _%klass124234%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers134078%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers134078%_))))
    (define __make-class-predicate
      (lambda (_%klass133994%_)
        (let* ((_%klass133997%_ _%klass133994%_)
               (_%tid134006%_
                (let () (declare (not safe)) (##type-id _%klass133997%_))))
          (if (let* ((_%type134008%_ _%klass133997%_)
                     (_%type134013%_ _%type134008%_))
                (__class-type-final? _%type134013%_))
              (lambda (_%g134027134029%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g134027134029%_
                   _%tid134006%_)))
              (if (let* ((_%klass134032%_ _%klass133997%_)
                         (_%klass134037%_ _%klass134032%_))
                    (__class-type-struct? _%klass134037%_))
                  (lambda (_%g134047134049%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g134047134049%_
                       _%tid134006%_)))
                  (lambda (_%g134052134054%_)
                    (let* ((_%klass134057%_ _%klass133997%_)
                           (_%obj134060%_ _%g134052134054%_)
                           (_%klass134065%_ _%klass134057%_))
                      (__class-instance? _%klass134065%_ _%obj134060%_))))))))
    (define make-class-predicate
      (lambda (_%klass124368%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124368%_ 'class))
            (let ((_%klass124372%_ _%klass124368%_))
              (__make-class-predicate _%klass124372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@570.29-570.34"
               'contract:
               'class-type?
               'value:
               _%klass124368%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass133928%_ _%slot133929%_)
        (let* ((_%klass133932%_ _%klass133928%_)
               (_%slot133940%_ _%slot133929%_)
               (_%field133949%_
                (let ((__tmp138614
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133932%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138614 _%slot133940%_ '#f))))
          (if (not _%field133949%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133932%_
                       'slot:
                       _%slot133940%_)
                '#!void)
              (if (let* ((_%type133953%_ _%klass133932%_)
                         (_%type133958%_ _%type133953%_))
                    (__class-type-final? _%type133958%_))
                  (make-final-slot-accessor
                   _%klass133932%_
                   _%slot133940%_
                   _%field133949%_)
                  (if (let* ((_%klass133973%_ _%klass133932%_)
                             (_%klass133978%_ _%klass133973%_))
                        (__class-type-struct? _%klass133978%_))
                      (make-struct-slot-accessor
                       _%klass133932%_
                       _%slot133940%_
                       _%field133949%_)
                      (if (let ((_%strukt133989%_
                                 (base-struct/1 _%klass133932%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133989%_
                                    'class))
                                 (let ((__tmp138615
                                        (let ((__tmp138616
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133989%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138616))))
                                   (declare (not safe))
                                   (##fx< _%field133949%_ __tmp138615))))
                          (make-struct-subclass-slot-accessor
                           _%klass133932%_
                           _%slot133940%_
                           _%field133949%_)
                          (make-class-cached-slot-accessor
                           _%klass133932%_
                           _%slot133940%_
                           _%field133949%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass124655%_ _%slot124656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124655%_ 'class))
            (let ((_%klass124660%_ _%klass124655%_))
              (if (symbol? _%slot124656%_)
                  (let ((_%slot124670%_ _%slot124656%_))
                    (__make-class-slot-accessor
                     _%klass124660%_
                     _%slot124670%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@601.50-601.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124656%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@601.33-601.38"
               'contract:
               'class-type?
               'value:
               _%klass124655%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass133862%_ _%slot133863%_)
        (let* ((_%klass133866%_ _%klass133862%_)
               (_%slot133874%_ _%slot133863%_)
               (_%field133883%_
                (let ((__tmp138617
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133866%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138617 _%slot133874%_ '#f))))
          (if (not _%field133883%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133866%_
                       'slot:
                       _%slot133874%_)
                '#!void)
              (if (let* ((_%type133887%_ _%klass133866%_)
                         (_%type133892%_ _%type133887%_))
                    (__class-type-final? _%type133892%_))
                  (make-final-slot-mutator
                   _%klass133866%_
                   _%slot133874%_
                   _%field133883%_)
                  (if (let* ((_%klass133907%_ _%klass133866%_)
                             (_%klass133912%_ _%klass133907%_))
                        (__class-type-struct? _%klass133912%_))
                      (make-struct-slot-mutator
                       _%klass133866%_
                       _%slot133874%_
                       _%field133883%_)
                      (if (let ((_%strukt133923%_
                                 (base-struct/1 _%klass133866%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133923%_
                                    'class))
                                 (let ((__tmp138618
                                        (let ((__tmp138619
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133923%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138619))))
                                   (declare (not safe))
                                   (##fx< _%field133883%_ __tmp138618))))
                          (make-struct-subclass-slot-mutator
                           _%klass133866%_
                           _%slot133874%_
                           _%field133883%_)
                          (make-class-cached-slot-mutator
                           _%klass133866%_
                           _%slot133874%_
                           _%field133883%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass124800%_ _%slot124801%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124800%_ 'class))
            (let ((_%klass124805%_ _%klass124800%_))
              (if (symbol? _%slot124801%_)
                  (let ((_%slot124815%_ _%slot124801%_))
                    (__make-class-slot-mutator _%klass124805%_ _%slot124815%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@609.49-609.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124801%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@609.32-609.37"
               'contract:
               'class-type?
               'value:
               _%klass124800%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass133796%_ _%slot133797%_)
        (let* ((_%klass133800%_ _%klass133796%_)
               (_%slot133808%_ _%slot133797%_)
               (_%field133817%_
                (let ((__tmp138620
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133800%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138620 _%slot133808%_ '#f))))
          (if (not _%field133817%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133800%_
                       'slot:
                       _%slot133808%_)
                '#!void)
              (if (let* ((_%type133821%_ _%klass133800%_)
                         (_%type133826%_ _%type133821%_))
                    (__class-type-final? _%type133826%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass133800%_
                   _%slot133808%_
                   _%field133817%_)
                  (if (let* ((_%klass133841%_ _%klass133800%_)
                             (_%klass133846%_ _%klass133841%_))
                        (__class-type-struct? _%klass133846%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass133800%_
                       _%slot133808%_
                       _%field133817%_)
                      (if (let ((_%strukt133857%_
                                 (base-struct/1 _%klass133800%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133857%_
                                    'class))
                                 (let ((__tmp138621
                                        (let ((__tmp138622
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133857%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138622))))
                                   (declare (not safe))
                                   (##fx< _%field133817%_ __tmp138621))))
                          (make-struct-slot-unchecked-accessor
                           _%klass133800%_
                           _%slot133808%_
                           _%field133817%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass133800%_
                           _%slot133808%_
                           _%field133817%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass124945%_ _%slot124946%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124945%_ 'class))
            (let ((_%klass124950%_ _%klass124945%_))
              (if (symbol? _%slot124946%_)
                  (let ((_%slot124960%_ _%slot124946%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass124950%_
                     _%slot124960%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@617.60-617.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.43-617.48"
               'contract:
               'class-type?
               'value:
               _%klass124945%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass133730%_ _%slot133731%_)
        (let* ((_%klass133734%_ _%klass133730%_)
               (_%slot133742%_ _%slot133731%_)
               (_%field133751%_
                (let ((__tmp138623
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133734%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp138623 _%slot133742%_ '#f))))
          (if (not _%field133751%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass133734%_
                       'slot:
                       _%slot133742%_)
                '#!void)
              (if (let* ((_%type133755%_ _%klass133734%_)
                         (_%type133760%_ _%type133755%_))
                    (__class-type-final? _%type133760%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass133734%_
                   _%slot133742%_
                   _%field133751%_)
                  (if (let* ((_%klass133775%_ _%klass133734%_)
                             (_%klass133780%_ _%klass133775%_))
                        (__class-type-struct? _%klass133780%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass133734%_
                       _%slot133742%_
                       _%field133751%_)
                      (if (let ((_%strukt133791%_
                                 (base-struct/1 _%klass133734%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt133791%_
                                    'class))
                                 (let ((__tmp138624
                                        (let ((__tmp138625
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt133791%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp138625))))
                                   (declare (not safe))
                                   (##fx< _%field133751%_ __tmp138624))))
                          (make-struct-slot-unchecked-mutator
                           _%klass133734%_
                           _%slot133742%_
                           _%field133751%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass133734%_
                           _%slot133742%_
                           _%field133751%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125090%_ _%slot125091%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125090%_ 'class))
            (let ((_%klass125095%_ _%klass125090%_))
              (if (symbol? _%slot125091%_)
                  (let ((_%slot125105%_ _%slot125091%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125095%_
                     _%slot125105%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@625.59-625.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125091%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@625.42-625.47"
               'contract:
               'class-type?
               'value:
               _%klass125090%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object133714%_ _%class133715%_ _%slot133716%_)
        (apply error
               '"not an instance"
               'object:
               _%object133714%_
               'class:
               _%class133715%_
               (if _%slot133716%_
                   (cons 'slot: (cons _%slot133716%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object133721%_ _%class133722%_)
        (let ((_%slot133724%_ '#f))
          (not-an-instance__%
           _%object133721%_
           _%class133722%_
           _%slot133724%_))))
    (define not-an-instance
      (lambda _g138626_
        (let ((_g138627_ (let () (declare (not safe)) (##length _g138626_))))
          (cond ((let () (declare (not safe)) (##fx= _g138627_ 2))
                 (apply not-an-instance__0 _g138626_))
                ((let () (declare (not safe)) (##fx= _g138627_ 3))
                 (apply not-an-instance__% _g138626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g138626_))))))
    (define make-final-slot-accessor
      (lambda (_%klass133707%_ _%slot133708%_ _%field133709%_)
        (lambda (_%obj133711%_)
          (##direct-structure-ref
           _%obj133711%_
           _%field133709%_
           _%klass133707%_
           _%slot133708%_))))
    (define make-final-slot-mutator
      (lambda (_%klass133700%_ _%slot133701%_ _%field133702%_)
        (lambda (_%obj133704%_ _%val133705%_)
          (##direct-structure-set!
           _%obj133704%_
           _%val133705%_
           _%field133702%_
           _%klass133700%_
           _%slot133701%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass133694%_ _%slot133695%_ _%field133696%_)
        (lambda (_%obj133698%_)
          (##structure-ref
           _%obj133698%_
           _%field133696%_
           _%klass133694%_
           _%slot133695%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass133687%_ _%slot133688%_ _%field133689%_)
        (lambda (_%obj133691%_ _%val133692%_)
          (##structure-set!
           _%obj133691%_
           _%val133692%_
           _%field133689%_
           _%klass133687%_
           _%slot133688%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass133681%_ _%slot133682%_ _%field133683%_)
        (lambda (_%obj133685%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj133685%_
             _%field133683%_
             _%klass133681%_
             _%slot133682%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass133674%_ _%slot133675%_ _%field133676%_)
        (lambda (_%obj133678%_ _%val133679%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj133678%_
             _%val133679%_
             _%field133676%_
             _%klass133674%_
             _%slot133675%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass133647%_ _%slot133648%_ _%field133649%_)
        (lambda (_%obj133651%_)
          (if (let* ((_%klass133653%_ _%klass133647%_)
                     (_%obj133656%_ _%obj133651%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133653%_ 'class))
                    (let ((_%klass133661%_ _%klass133653%_))
                      (__class-instance? _%klass133661%_ _%obj133656%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133653%_)
                      '#!void)))
              (unchecked-slot-ref _%obj133651%_ _%field133649%_)
              (not-an-instance__%
               _%obj133651%_
               _%klass133647%_
               _%slot133648%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass133619%_ _%slot133620%_ _%field133621%_)
        (lambda (_%obj133623%_ _%val133624%_)
          (if (let* ((_%klass133626%_ _%klass133619%_)
                     (_%obj133629%_ _%obj133623%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133626%_ 'class))
                    (let ((_%klass133634%_ _%klass133626%_))
                      (__class-instance? _%klass133634%_ _%obj133629%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133626%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133623%_
               _%field133621%_
               _%val133624%_)
              (not-an-instance__%
               _%obj133623%_
               _%klass133619%_
               _%slot133620%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass133570%_ _%slot133571%_ _%field133572%_)
        (lambda (_%obj133574%_)
          (if (let* ((_%klass133576%_ _%klass133570%_)
                     (_%obj133579%_ _%obj133574%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133576%_ 'class))
                    (let ((_%klass133584%_ _%klass133576%_))
                      (__direct-instance? _%klass133584%_ _%obj133579%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133576%_)
                      '#!void)))
              (unchecked-field-ref _%obj133574%_ _%field133572%_)
              (if (let* ((_%klass133598%_ _%klass133570%_)
                         (_%obj133601%_ _%obj133574%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133598%_ 'class))
                        (let ((_%klass133606%_ _%klass133598%_))
                          (__class-instance? _%klass133606%_ _%obj133601%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133598%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj133574%_ _%slot133571%_)
                  (not-an-instance__%
                   _%obj133574%_
                   _%klass133570%_
                   _%slot133571%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass133520%_ _%slot133521%_ _%field133522%_)
        (lambda (_%obj133524%_ _%val133525%_)
          (if (let* ((_%klass133527%_ _%klass133520%_)
                     (_%obj133530%_ _%obj133524%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133527%_ 'class))
                    (let ((_%klass133535%_ _%klass133527%_))
                      (__direct-instance? _%klass133535%_ _%obj133530%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133527%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133524%_
               _%field133522%_
               _%val133525%_)
              (if (let* ((_%klass133549%_ _%klass133520%_)
                         (_%obj133552%_ _%obj133524%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133549%_ 'class))
                        (let ((_%klass133557%_ _%klass133549%_))
                          (__class-instance? _%klass133557%_ _%obj133552%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133549%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj133524%_
                   _%slot133521%_
                   _%val133525%_)
                  (not-an-instance__%
                   _%obj133524%_
                   _%klass133520%_
                   _%slot133521%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass133493%_ _%slot133494%_ _%field133495%_)
        (lambda (_%obj133497%_)
          (if (let* ((_%klass133499%_ _%klass133493%_)
                     (_%obj133502%_ _%obj133497%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133499%_ 'class))
                    (let ((_%klass133507%_ _%klass133499%_))
                      (__direct-instance? _%klass133507%_ _%obj133502%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133499%_)
                      '#!void)))
              (unchecked-field-ref _%obj133497%_ _%field133495%_)
              (unchecked-slot-ref _%obj133497%_ _%slot133494%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass133465%_ _%slot133466%_ _%field133467%_)
        (lambda (_%obj133469%_ _%val133470%_)
          (if (let* ((_%klass133472%_ _%klass133465%_)
                     (_%obj133475%_ _%obj133469%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133472%_ 'class))
                    (let ((_%klass133480%_ _%klass133472%_))
                      (__direct-instance? _%klass133480%_ _%obj133475%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133472%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133469%_
               _%field133467%_
               _%val133470%_)
              (unchecked-slot-set!
               _%obj133469%_
               _%slot133466%_
               _%val133470%_)))))
    (define __class-slot-offset
      (lambda (_%klass133444%_ _%slot133445%_)
        (let* ((_%klass133448%_ _%klass133444%_)
               (_%slot133456%_ _%slot133445%_)
               (__tmp138628
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133448%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp138628 _%slot133456%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass125235%_ _%slot125236%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125235%_ 'class))
            (let ((_%klass125240%_ _%klass125235%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125236%_))
                  (let ((_%slot125250%_ _%slot125236%_))
                    (__class-slot-offset _%klass125240%_ _%slot125250%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@687.43-687.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125236%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@687.26-687.31"
               'contract:
               'class-type?
               'value:
               _%klass125235%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass133369%_ _%obj133370%_ _%slot133371%_)
        (let* ((_%klass133374%_ _%klass133369%_)
               (_%slot133382%_ _%slot133371%_))
          (if (let* ((_%klass133391%_ _%klass133374%_)
                     (_%obj133394%_ _%obj133370%_)
                     (_%klass133399%_ _%klass133391%_))
                (__class-instance? _%klass133399%_ _%obj133394%_))
              (let ((_%off133442%_
                     (let* ((_%klass133413%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133370%_)))
                            (_%slot133416%_ _%slot133382%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133413%_ 'class))
                           (let ((_%klass133421%_ _%klass133413%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133416%_))
                                 (let ((_%slot133432%_ _%slot133416%_))
                                   (__class-slot-offset
                                    _%klass133421%_
                                    _%slot133432%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133416%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133413%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj133370%_
                 _%off133442%_
                 _%klass133374%_
                 _%slot133382%_))
              (not-an-instance__0 _%obj133370%_ _%klass133374%_)))))
    (define class-slot-ref
      (lambda (_%klass125380%_ _%obj125381%_ _%slot125382%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125380%_ 'class))
            (let ((_%klass125386%_ _%klass125380%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125382%_))
                  (let ((_%slot125396%_ _%slot125382%_))
                    (__class-slot-ref
                     _%klass125386%_
                     _%obj125381%_
                     _%slot125396%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.44-690.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125382%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.23-690.28"
               'contract:
               'class-type?
               'value:
               _%klass125380%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass133293%_ _%obj133294%_ _%slot133295%_ _%val133296%_)
        (let* ((_%klass133299%_ _%klass133293%_)
               (_%slot133307%_ _%slot133295%_))
          (if (let* ((_%klass133316%_ _%klass133299%_)
                     (_%obj133319%_ _%obj133294%_)
                     (_%klass133324%_ _%klass133316%_))
                (__class-instance? _%klass133324%_ _%obj133319%_))
              (let ((_%off133367%_
                     (let* ((_%klass133338%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133294%_)))
                            (_%slot133341%_ _%slot133307%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133338%_ 'class))
                           (let ((_%klass133346%_ _%klass133338%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133341%_))
                                 (let ((_%slot133357%_ _%slot133341%_))
                                   (__class-slot-offset
                                    _%klass133346%_
                                    _%slot133357%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133341%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133338%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj133294%_
                 _%val133296%_
                 _%off133367%_
                 _%klass133299%_
                 _%slot133307%_))
              (not-an-instance__0 _%obj133294%_ _%klass133299%_)))))
    (define class-slot-set!
      (lambda (_%klass125526%_ _%obj125527%_ _%slot125528%_ _%val125529%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125526%_ 'class))
            (let ((_%klass125533%_ _%klass125526%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125528%_))
                  (let ((_%slot125543%_ _%slot125528%_))
                    (__class-slot-set!
                     _%klass125533%_
                     _%obj125527%_
                     _%slot125543%_
                     _%val125529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.45-696.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125528%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.24-696.29"
               'contract:
               'class-type?
               'value:
               _%klass125526%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj133290%_ _%off133291%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj133290%_ _%off133291%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj133286%_ _%off133287%_ _%val133288%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj133286%_
           _%val133288%_
           _%off133287%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj133283%_ _%slot133284%_)
        (unchecked-field-ref
         _%obj133283%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133283%_))
          _%slot133284%_))))
    (define unchecked-slot-set!
      (lambda (_%obj133279%_ _%slot133280%_ _%val133281%_)
        (unchecked-field-set!
         _%obj133279%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133279%_))
          _%slot133280%_)
         _%val133281%_)))
    (define __slot-error
      (lambda (_%obj133276%_ _%slot133277%_)
        (error '"Cannot find slot"
               'object:
               _%obj133276%_
               'slot:
               _%slot133277%_)))
    (define __slot-ref__%
      (lambda (_%obj133200%_ _%slot133201%_ _%E133202%_)
        (let* ((_%slot133205%_ _%slot133201%_)
               (_%E133213%_ _%E133202%_)
               (_%klass133222%_ (class-of _%obj133200%_))
               (_%$e133258%_
                (let* ((_%klass133225%_ _%klass133222%_)
                       (_%slot133228%_ _%slot133205%_)
                       (_%klass133233%_ _%klass133225%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133228%_))
                      (let ((_%slot133248%_ _%slot133228%_))
                        (__class-slot-offset _%klass133233%_ _%slot133248%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133228%_)
                        '#!void)))))
          (if _%$e133258%_
              ((lambda (_%off133261%_)
                 (unchecked-field-ref _%obj133200%_ _%off133261%_))
               _%$e133258%_)
              (let ()
                (declare (not safe))
                (_%E133213%_ _%obj133200%_ _%slot133205%_))))))
    (define __slot-ref__0
      (lambda (_%obj133267%_ _%slot133268%_)
        (let ((_%E133270%_ __slot-error))
          (__slot-ref__% _%obj133267%_ _%slot133268%_ _%E133270%_))))
    (define __slot-ref
      (lambda _g138629_
        (let ((_g138630_ (let () (declare (not safe)) (##length _g138629_))))
          (cond ((let () (declare (not safe)) (##fx= _g138630_ 2))
                 (apply __slot-ref__0 _g138629_))
                ((let () (declare (not safe)) (##fx= _g138630_ 3))
                 (apply __slot-ref__% _g138629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g138629_))))))
    (define slot-ref__%
      (lambda (_%obj125791%_ _%slot125792%_ _%E125793%_)
        (if (symbol? _%slot125792%_)
            (let ((_%slot125797%_ _%slot125792%_))
              (if (procedure? _%E125793%_)
                  (let ((_%E125807%_ _%E125793%_))
                    (__slot-ref__% _%obj125791%_ _%slot125797%_ _%E125807%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@722.38-722.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E125793%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@722.21-722.25"
               'contract:
               'symbol?
               'value:
               _%slot125792%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj125820%_ _%slot125821%_)
        (let ((_%E125823%_ __slot-error))
          (slot-ref__% _%obj125820%_ _%slot125821%_ _%E125823%_))))
    (define slot-ref
      (lambda _g138631_
        (let ((_g138632_ (let () (declare (not safe)) (##length _g138631_))))
          (cond ((let () (declare (not safe)) (##fx= _g138632_ 2))
                 (apply slot-ref__0 _g138631_))
                ((let () (declare (not safe)) (##fx= _g138632_ 3))
                 (apply slot-ref__% _g138631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g138631_))))))
    (define __slot-set!__%
      (lambda (_%obj133120%_ _%slot133121%_ _%val133122%_ _%E133123%_)
        (let* ((_%slot133126%_ _%slot133121%_)
               (_%E133134%_ _%E133123%_)
               (_%klass133143%_ (class-of _%obj133120%_))
               (_%$e133179%_
                (let* ((_%klass133146%_ _%klass133143%_)
                       (_%slot133149%_ _%slot133126%_)
                       (_%klass133154%_ _%klass133146%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133149%_))
                      (let ((_%slot133169%_ _%slot133149%_))
                        (__class-slot-offset _%klass133154%_ _%slot133169%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133149%_)
                        '#!void)))))
          (if _%$e133179%_
              ((lambda (_%off133182%_)
                 (unchecked-field-set!
                  _%obj133120%_
                  _%off133182%_
                  _%val133122%_))
               _%$e133179%_)
              (let ()
                (declare (not safe))
                (_%E133134%_ _%obj133120%_ _%slot133126%_))))))
    (define __slot-set!__0
      (lambda (_%obj133188%_ _%slot133189%_ _%val133190%_)
        (let ((_%E133192%_ __slot-error))
          (__slot-set!__%
           _%obj133188%_
           _%slot133189%_
           _%val133190%_
           _%E133192%_))))
    (define __slot-set!
      (lambda _g138633_
        (let ((_g138634_ (let () (declare (not safe)) (##length _g138633_))))
          (cond ((let () (declare (not safe)) (##fx= _g138634_ 3))
                 (apply __slot-set!__0 _g138633_))
                ((let () (declare (not safe)) (##fx= _g138634_ 4))
                 (apply __slot-set!__% _g138633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g138633_))))))
    (define slot-set!__%
      (lambda (_%obj125950%_ _%slot125951%_ _%val125952%_ _%E125953%_)
        (if (symbol? _%slot125951%_)
            (let ((_%slot125957%_ _%slot125951%_))
              (if (procedure? _%E125953%_)
                  (let ((_%E125967%_ _%E125953%_))
                    (__slot-set!__%
                     _%obj125950%_
                     _%slot125957%_
                     _%val125952%_
                     _%E125967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@724.43-724.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E125953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@724.22-724.26"
               'contract:
               'symbol?
               'value:
               _%slot125951%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj125980%_ _%slot125981%_ _%val125982%_)
        (let ((_%E125984%_ __slot-error))
          (slot-set!__%
           _%obj125980%_
           _%slot125981%_
           _%val125982%_
           _%E125984%_))))
    (define slot-set!
      (lambda _g138635_
        (let ((_g138636_ (let () (declare (not safe)) (##length _g138635_))))
          (cond ((let () (declare (not safe)) (##fx= _g138636_ 3))
                 (apply slot-set!__0 _g138635_))
                ((let () (declare (not safe)) (##fx= _g138636_ 4))
                 (apply slot-set!__% _g138635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g138635_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class133091%_ _%maybe-super-class133092%_)
        (let* ((_%maybe-sub-class133095%_ _%maybe-sub-class133091%_)
               (_%maybe-super-class133103%_ _%maybe-super-class133092%_)
               (_%maybe-super-class-id133112%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class133103%_)))
               (_%$e133114%_
                (eq? _%maybe-super-class-id133112%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class133095%_)))))
          (if _%$e133114%_
              _%$e133114%_
              (let ((__tmp138638
                     (lambda (_%super-class133117%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class133117%_))
                            _%maybe-super-class-id133112%_)))
                    (__tmp138637
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class133095%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp138638 __tmp138637))))))
    (define subclass?
      (lambda (_%maybe-sub-class126111%_ _%maybe-super-class126112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126111%_ 'class))
            (let ((_%maybe-sub-class126116%_ _%maybe-sub-class126111%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126112%_
                     'class))
                  (let ((_%maybe-super-class126126%_
                         _%maybe-super-class126112%_))
                    (__subclass?
                     _%maybe-sub-class126116%_
                     _%maybe-super-class126126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@730.45-730.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@730.18-730.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126111%_)
              '#!void))))
    (define object?
      (lambda (_%o133088%_)
        (if (let () (declare (not safe)) (##structure? _%o133088%_))
            (let ((__tmp138639
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o133088%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp138639 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass133075%_ _%obj133076%_)
        (let* ((_%klass133079%_ _%klass133075%_)
               (__tmp138640
                (let () (declare (not safe)) (##type-id _%klass133079%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj133076%_ __tmp138640))))
    (define direct-instance?
      (lambda (_%klass126256%_ _%obj126257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126256%_ 'class))
            (let ((_%klass126261%_ _%klass126256%_))
              (__direct-instance? _%klass126261%_ _%obj126257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@744.25-744.30"
               'contract:
               'class-type?
               'value:
               _%klass126256%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass133071%_ _%obj133072%_)
        (if (let () (declare (not safe)) (##structure? _%obj133072%_))
            (eq? _%klass133071%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj133072%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass133058%_ _%obj133059%_)
        (let* ((_%klass133062%_ _%klass133058%_)
               (__tmp138641
                (let () (declare (not safe)) (##type-id _%klass133062%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj133059%_ __tmp138641))))
    (define struct-instance?
      (lambda (_%klass126391%_ _%obj126392%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126391%_ 'class))
            (let ((_%klass126396%_ _%klass126391%_))
              (__struct-instance? _%klass126396%_ _%obj126392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@773.25-773.30"
               'contract:
               'class-type?
               'value:
               _%klass126391%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass133010%_ _%obj133011%_)
        (let* ((_%klass133014%_ _%klass133010%_)
               (_%type133023%_ (class-of _%obj133011%_))
               (_%maybe-sub-class133025%_ _%type133023%_)
               (_%maybe-super-class133028%_ _%klass133014%_)
               (_%maybe-sub-class133033%_ _%maybe-sub-class133025%_)
               (_%maybe-super-class133048%_ _%maybe-super-class133028%_))
          (__subclass?
           _%maybe-sub-class133033%_
           _%maybe-super-class133048%_))))
    (define class-instance?
      (lambda (_%klass126526%_ _%obj126527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126526%_ 'class))
            (let ((_%klass126531%_ _%klass126526%_))
              (__class-instance? _%klass126531%_ _%obj126527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.24-778.29"
               'contract:
               'class-type?
               'value:
               _%klass126526%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass132969%_ _%k132970%_)
        (let* ((_%klass132973%_ _%klass132969%_) (_%k132981%_ _%k132970%_))
          (if (let* ((_%klass132990%_ _%klass132973%_)
                     (_%klass132995%_ _%klass132990%_))
                (__class-type-system? _%klass132995%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass132973%_)
                '#!void)
              (let ((_%obj133008%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass132973%_ _%k132981%_))))
                (__object-fill! _%obj133008%_ '#f))))))
    (define make-object
      (lambda (_%klass126661%_ _%k126662%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126661%_ 'class))
            (let ((_%klass126666%_ _%klass126661%_))
              (if (fixnum? _%k126662%_)
                  (let ((_%k126676%_ _%k126662%_))
                    (__make-object _%klass126666%_ _%k126676%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@783.37-783.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k126662%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.20-783.25"
               'contract:
               'class-type?
               'value:
               _%klass126661%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj132957%_)
        (let ((_%obj132960%_ _%obj132957%_))
          (declare (not safe))
          (##structure-type _%obj132960%_))))
    (define object-class
      (lambda (_%obj126806%_)
        (if (object? _%obj126806%_)
            (let ((_%obj126810%_ _%obj126806%_))
              (__object-class _%obj126810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.21-803.24"
               'contract:
               'object?
               'value:
               _%obj126806%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj132939%_ _%fill132940%_)
        (let ((_%obj132943%_ _%obj132939%_))
          (let _%loop132952%_ ((_%i132954%_
                                (let ((__tmp138642
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj132943%_))))
                                  (declare (not safe))
                                  (##fx- __tmp138642 '1))))
            (if (let () (declare (not safe)) (##fx> _%i132954%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj132943%_
                     _%fill132940%_
                     _%i132954%_
                     '#f
                     '#f))
                  (_%loop132952%_
                   (let () (declare (not safe)) (##fx- _%i132954%_ '1))))
                _%obj132943%_)))))
    (define object-fill!
      (lambda (_%obj126940%_ _%fill126941%_)
        (if (object? _%obj126940%_)
            (let ((_%obj126945%_ _%obj126940%_))
              (__object-fill! _%obj126945%_ _%fill126941%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@808.21-808.24"
               'contract:
               'object?
               'value:
               _%obj126940%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass132895%_)
        (let* ((_%klass132898%_ _%klass132895%_)
               (_%klass132907%_ _%klass132898%_)
               (_%k132910%_
                (let ((__tmp138643
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132898%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp138643)))
               (_%klass132915%_ _%klass132907%_)
               (_%k132929%_ _%k132910%_))
          (__make-object _%klass132915%_ _%k132929%_))))
    (define new-instance
      (lambda (_%klass127075%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127075%_ 'class))
            (let ((_%klass127079%_ _%klass127075%_))
              (__new-instance _%klass127079%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@819.21-819.26"
               'contract:
               'class-type?
               'value:
               _%klass127075%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass132754%_ . _%args132755%_)
        (let* ((_%klass132758%_ _%klass132754%_)
               (_%$e132767%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132758%_ '10 '#f '#f))))
          (if _%$e132767%_
              ((lambda (_%kons-id132770%_)
                 (let ((_%obj132792%_
                        (let* ((_%klass132772%_ _%klass132758%_)
                               (_%klass132777%_ _%klass132772%_))
                          (__new-instance _%klass132777%_))))
                   (___constructor-init!
                    _%klass132758%_
                    _%kons-id132770%_
                    _%obj132792%_
                    _%args132755%_)
                   _%obj132792%_))
               _%$e132767%_)
              (if (let* ((_%klass132794%_ _%klass132758%_)
                         (_%klass132799%_ _%klass132794%_))
                    (__class-type-metaclass? _%klass132799%_))
                  (let ((_%obj132826%_
                         (let* ((_%klass132810%_ _%klass132758%_)
                                (_%klass132815%_ _%klass132810%_))
                           (__new-instance _%klass132815%_))))
                    (__metaclass-instance-init!
                     _%klass132758%_
                     _%obj132826%_
                     _%args132755%_)
                    _%obj132826%_)
                  (if (let* ((_%klass132828%_ _%klass132758%_)
                             (_%klass132833%_ _%klass132828%_))
                        (__class-type-struct? _%klass132833%_))
                      (if (let ((__tmp138645
                                 (let* ((_%klass132862%_ _%klass132758%_)
                                        (_%klass132867%_ _%klass132862%_))
                                   (__class-type-field-count _%klass132867%_)))
                                (__tmp138644
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args132755%_))))
                            (declare (not safe))
                            (##fx= __tmp138645 __tmp138644))
                          (apply ##structure _%klass132758%_ _%args132755%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass132758%_
                                   'slots:
                                   (let* ((_%klass132879%_ _%klass132758%_)
                                          (_%klass132884%_ _%klass132879%_))
                                     (__class-type-slot-list _%klass132884%_))
                                   'args:
                                   _%args132755%_)
                            '#!void))
                      (let ((_%obj132860%_
                             (let* ((_%klass132844%_ _%klass132758%_)
                                    (_%klass132849%_ _%klass132844%_))
                               (__new-instance _%klass132849%_))))
                        (___class-instance-init!
                         _%klass132758%_
                         _%obj132860%_
                         _%args132755%_)
                        _%obj132860%_)))))))
    (define make-instance
      (lambda (_%klass127209%_ . _%args127210%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127209%_ 'class))
            (let ((_%klass127214%_ _%klass127209%_))
              (declare (not safe))
              (##apply __make-instance _%klass127214%_ _%args127210%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.22-822.27"
               'contract:
               'class-type?
               'value:
               _%klass127209%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj132741%_ . _%args132742%_)
        (let ((_%obj132745%_ _%obj132741%_))
          (if (let ((__tmp138647
                     (let () (declare (not safe)) (##length _%args132742%_)))
                    (__tmp138646
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj132745%_))))
                (declare (not safe))
                (##fx< __tmp138647 __tmp138646))
              (___struct-instance-init! _%obj132745%_ _%args132742%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj132745%_
                     'args:
                     _%args132742%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj127344%_ . _%args127345%_)
        (if (object? _%obj127344%_)
            (let ((_%obj127349%_ _%obj127344%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj127349%_ _%args127345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@847.30-847.33"
               'contract:
               'object?
               'value:
               _%obj127344%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj132700%_ _%args132701%_)
        (let _%lp132703%_ ((_%k132705%_ '1) (_%rest132706%_ _%args132701%_))
          (let* ((_%rest132707132715%_ _%rest132706%_)
                 (_%else132709132723%_ (lambda () _%obj132700%_))
                 (_%K132711132729%_
                  (lambda (_%rest132726%_ _%hd132727%_)
                    (unchecked-field-set!
                     _%obj132700%_
                     _%k132705%_
                     _%hd132727%_)
                    (_%lp132703%_
                     (let () (declare (not safe)) (##fx+ _%k132705%_ '1))
                     _%rest132726%_))))
            (if (pair? _%rest132707132715%_)
                (let ((_%hd132712132732%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132707132715%_)))
                      (_%tl132713132734%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132707132715%_))))
                  (let* ((_%hd132737%_ _%hd132712132732%_)
                         (_%rest132739%_ _%tl132713132734%_))
                    (_%K132711132729%_ _%rest132739%_ _%hd132737%_)))
                (_%else132709132723%_))))))
    (define __class-instance-init!
      (lambda (_%obj132687%_ . _%args132688%_)
        (let ((_%obj132691%_ _%obj132687%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj132691%_))
           _%obj132691%_
           _%args132688%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj127479%_ . _%args127480%_)
        (if (object? _%obj127479%_)
            (let ((_%obj127484%_ _%obj127479%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj127484%_ _%args127480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.32"
               'contract:
               'object?
               'value:
               _%obj127479%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass132629%_ _%obj132630%_ _%args132631%_)
        (let _%lp132633%_ ((_%rest132635%_ _%args132631%_))
          (let* ((_%rest132636132646%_ _%rest132635%_)
                 (_%else132638132654%_
                  (lambda ()
                    (if (null? _%rest132635%_)
                        _%obj132630%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass132629%_
                               'rest:
                               _%rest132635%_))))
                 (_%K132640132668%_
                  (lambda (_%rest132657%_ _%val132658%_ _%key132659%_)
                    (if (keyword? _%key132659%_)
                        (let ((_%$e132662%_
                               (__class-slot-offset
                                _%klass132629%_
                                _%key132659%_)))
                          (if _%$e132662%_
                              ((lambda (_%off132665%_)
                                 (unchecked-field-set!
                                  _%obj132630%_
                                  _%off132665%_
                                  _%val132658%_)
                                 (_%lp132633%_ _%rest132657%_))
                               _%$e132662%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass132629%_
                                     'slot:
                                     _%key132659%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key132659%_)))))
            (if (pair? _%rest132636132646%_)
                (let ((_%hd132641132671%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132636132646%_)))
                      (_%tl132642132673%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132636132646%_))))
                  (let ((_%key132676%_ _%hd132641132671%_))
                    (if (pair? _%tl132642132673%_)
                        (let ((_%hd132643132678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl132642132673%_)))
                              (_%tl132644132680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl132642132673%_))))
                          (let* ((_%val132683%_ _%hd132643132678%_)
                                 (_%rest132685%_ _%tl132644132680%_))
                            (_%K132640132668%_
                             _%rest132685%_
                             _%val132683%_
                             _%key132676%_)))
                        (_%else132638132654%_))))
                (_%else132638132654%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass132625%_ _%obj132626%_ _%args132627%_)
        (apply call-method
               _%klass132625%_
               'instance-init!
               _%obj132626%_
               _%args132627%_)))
    (define __constructor-init!
      (lambda (_%klass132594%_
               _%kons-id132595%_
               _%obj132596%_
               .
               _%args132597%_)
        (let* ((_%klass132600%_ _%klass132594%_)
               (_%kons-id132608%_ _%kons-id132595%_)
               (_%obj132616%_ _%obj132596%_))
          (___constructor-init!
           _%klass132600%_
           _%kons-id132608%_
           _%obj132616%_
           _%args132597%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass127614%_
               _%kons-id127615%_
               _%obj127616%_
               .
               _%args127617%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127614%_ 'class))
            (let ((_%klass127621%_ _%klass127614%_))
              (if (symbol? _%kons-id127615%_)
                  (let ((_%kons-id127631%_ _%kons-id127615%_))
                    (if (object? _%obj127616%_)
                        (let ((_%obj127641%_ _%obj127616%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass127621%_
                                   _%kons-id127631%_
                                   _%obj127641%_
                                   _%args127617%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@911.63-911.66"
                           'contract:
                           'object?
                           'value:
                           _%obj127616%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@911.43-911.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id127615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.26-911.31"
               'contract:
               'class-type?
               'value:
               _%klass127614%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass132583%_ _%kons-id132584%_ _%obj132585%_ _%args132586%_)
        (let ((_%$e132588%_
               (__find-method
                _%klass132583%_
                _%obj132585%_
                _%kons-id132584%_)))
          (if _%$e132588%_
              ((lambda (_%kons132591%_)
                 (apply _%kons132591%_ _%obj132585%_ _%args132586%_)
                 _%obj132585%_)
               _%$e132588%_)
              (error '"missing constructor"
                     'class:
                     _%klass132583%_
                     'method:
                     _%kons-id132584%_)))))
    (define __struct-copy
      (lambda (_%struct132571%_)
        (let ((_%struct132574%_ _%struct132571%_))
          (declare (not safe))
          (##structure-copy _%struct132574%_))))
    (define struct-copy
      (lambda (_%struct127771%_)
        (if (object? _%struct127771%_)
            (let ((_%struct127775%_ _%struct127771%_))
              (__struct-copy _%struct127775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.20-925.26"
               'contract:
               'object?
               'value:
               _%struct127771%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj132552%_)
        (let* ((_%obj132555%_ _%obj132552%_)
               (_%len132564%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj132555%_))))
          (let _%recur132566%_ ((_%i132568%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132568%_ _%len132564%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj132555%_
                         _%i132568%_
                         '#f
                         '#f))
                      (_%recur132566%_
                       (let () (declare (not safe)) (##fx+ _%i132568%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj127905%_)
        (if (object? _%obj127905%_)
            (let ((_%obj127909%_ _%obj127905%_))
              (__struct->list _%obj127909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@928.21-928.24"
               'contract:
               'object?
               'value:
               _%obj127905%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj132504%_)
        (let* ((_%obj132507%_ _%obj132504%_)
               (_%klass132516%_
                (let () (declare (not safe)) (##structure-type _%obj132507%_)))
               (_%slot-vector132518%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132516%_ '7 '#f '#f))))
          (let _%loop132520%_ ((_%index132522%_
                                (let ((__tmp138648
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector132518%_))))
                                  (declare (not safe))
                                  (##fx- __tmp138648 '1)))
                               (_%plist132523%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index132522%_ '1))
                (cons _%klass132516%_ _%plist132523%_)
                (let ((_%slot132526%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector132518%_
                          _%index132522%_))))
                  (_%loop132520%_
                   (let () (declare (not safe)) (##fx- _%index132522%_ '1))
                   (cons (let ((_%sym132528%_ _%slot132526%_))
                           (if (symbol? _%sym132528%_)
                               (let ((_%sym132533%_ _%sym132528%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym132533%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym132528%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj132507%_
                                _%index132522%_)
                               _%plist132523%_)))))))))
    (define class->list
      (lambda (_%obj128039%_)
        (if (object? _%obj128039%_)
            (let ((_%obj128043%_ _%obj128039%_)) (__class->list _%obj128043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.20-936.23"
               'contract:
               'object?
               'value:
               _%obj128039%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj132454%_ _%id132455%_ . _%args132456%_)
        (let* ((_%id132459%_ _%id132455%_)
               (_%$e132490%_
                (let* ((_%obj132468%_ _%obj132454%_)
                       (_%id132471%_ _%id132459%_)
                       (_%id132476%_ _%id132471%_))
                  (__method-ref _%obj132468%_ _%id132476%_))))
          (if _%$e132490%_
              ((lambda (_%method132493%_)
                 (let ((_%method132495%_ _%method132493%_))
                   (apply _%method132495%_ _%obj132454%_ _%args132456%_)))
               _%$e132490%_)
              (error '"cannot find method"
                     'object:
                     _%obj132454%_
                     'method:
                     _%id132459%_)))))
    (define call-method
      (lambda (_%obj128173%_ _%id128174%_ . _%args128175%_)
        (if (symbol? _%id128174%_)
            (let ((_%id128179%_ _%id128174%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128173%_
                       _%id128179%_
                       _%args128175%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@951.24-951.26"
               'contract:
               'symbol?
               'value:
               _%id128174%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj132405%_ _%id132406%_)
        (let* ((_%id132409%_ _%id132406%_)
               (_%klass132418%_ (class-of _%obj132405%_))
               (_%obj132421%_ _%obj132405%_)
               (_%id132424%_ _%id132409%_)
               (_%klass132429%_ _%klass132418%_)
               (_%id132444%_ _%id132424%_))
          (__find-method _%klass132429%_ _%obj132421%_ _%id132444%_))))
    (define method-ref
      (lambda (_%obj128309%_ _%id128310%_)
        (if (symbol? _%id128310%_)
            (let ((_%id128314%_ _%id128310%_))
              (__method-ref _%obj128309%_ _%id128314%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.23-978.25"
               'contract:
               'symbol?
               'value:
               _%id128310%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj132377%_ _%id132378%_)
        (let ((_%$e132402%_
               (let* ((_%obj132381%_ _%obj132377%_)
                      (_%id132384%_ _%id132378%_))
                 (if (symbol? _%id132384%_)
                     (let ((_%id132389%_ _%id132384%_))
                       (__method-ref _%obj132381%_ _%id132389%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id132384%_)
                       '#!void)))))
          (if _%$e132402%_
              _%$e132402%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj132377%_
                       'method:
                       _%id132378%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj132326%_ _%id132327%_)
        (let* ((_%id132330%_ _%id132327%_)
               (_%$e132361%_
                (let* ((_%obj132339%_ _%obj132326%_)
                       (_%id132342%_ _%id132330%_)
                       (_%id132347%_ _%id132342%_))
                  (__method-ref _%obj132339%_ _%id132347%_))))
          (if _%$e132361%_
              ((lambda (_%method132364%_)
                 (let ((_%method132366%_ _%method132364%_))
                   (lambda _%args132374%_
                     (apply _%method132366%_ _%obj132326%_ _%args132374%_))))
               _%$e132361%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj128444%_ _%id128445%_)
        (if (symbol? _%id128445%_)
            (let ((_%id128449%_ _%id128445%_))
              (__bound-method-ref _%obj128444%_ _%id128449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.29-986.31"
               'contract:
               'symbol?
               'value:
               _%id128445%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj132309%_ _%id132310%_)
        (let* ((_%id132313%_ _%id132310%_)
               (_%method132322%_
                (checked-method-ref _%obj132309%_ _%id132313%_)))
          (lambda _%args132324%_
            (apply _%method132322%_ _%obj132309%_ _%args132324%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj128579%_ _%id128580%_)
        (if (symbol? _%id128580%_)
            (let ((_%id128584%_ _%id128580%_))
              (__checked-bound-method-ref _%obj128579%_ _%id128584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.37-995.39"
               'contract:
               'symbol?
               'value:
               _%id128580%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass132178%_ _%obj132179%_ _%id132180%_)
        (let* ((_%klass132183%_ _%klass132178%_) (_%id132191%_ _%id132180%_))
          (if (let* ((_%klass132200%_ _%klass132183%_)
                     (_%klass132205%_ _%klass132200%_))
                (__class-type-sealed? _%klass132205%_))
              (let ((_%tab132235%_
                     (let* ((_%klass132219%_ _%klass132183%_)
                            (_%klass132224%_ _%klass132219%_))
                       (__specialize-class _%klass132224%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab132235%_ _%id132191%_ '#f))
              (let ((_%$e132270%_
                     (let* ((_%klass132237%_ _%klass132183%_)
                            (_%obj132240%_ _%obj132179%_)
                            (_%id132243%_ _%id132191%_)
                            (_%klass132248%_ _%klass132237%_)
                            (_%id132260%_ _%id132243%_))
                       (__direct-method-ref
                        _%klass132248%_
                        _%obj132240%_
                        _%id132260%_))))
                (if _%$e132270%_
                    _%$e132270%_
                    (let* ((_%klass132274%_ _%klass132183%_)
                           (_%obj132277%_ _%obj132179%_)
                           (_%id132280%_ _%id132191%_)
                           (_%klass132285%_ _%klass132274%_)
                           (_%id132299%_ _%id132280%_))
                      (__mixin-method-ref
                       _%klass132285%_
                       _%obj132277%_
                       _%id132299%_))))))))
    (define find-method
      (lambda (_%klass128714%_ _%obj128715%_ _%id128716%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128714%_ 'class))
            (let ((_%klass128720%_ _%klass128714%_))
              (if (symbol? _%id128716%_)
                  (let ((_%id128730%_ _%id128716%_))
                    (__find-method _%klass128720%_ _%obj128715%_ _%id128730%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1000.41-1000.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id128716%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1000.20-1000.25"
               'contract:
               'class-type?
               'value:
               _%klass128714%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins132123%_ _%obj132124%_ _%id132125%_)
        (let* ((_%id132128%_ _%id132125%_)
               (__tmp138649
                (lambda (_%g132136132138%_)
                  (let* ((_%klass132141%_ _%g132136132138%_)
                         (_%obj132144%_ _%obj132124%_)
                         (_%id132147%_ _%id132128%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132141%_ 'class))
                        (let* ((_%klass132152%_ _%klass132141%_)
                               (_%id132168%_ _%id132147%_))
                          (__direct-method-ref
                           _%klass132152%_
                           _%obj132144%_
                           _%id132168%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132141%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp138649 _%mixins132123%_))))
    (define mixin-find-method
      (lambda (_%mixins128860%_ _%obj128861%_ _%id128862%_)
        (if (symbol? _%id128862%_)
            (let ((_%id128866%_ _%id128862%_))
              (__mixin-find-method
               _%mixins128860%_
               _%obj128861%_
               _%id128866%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1009.37-1009.39"
               'contract:
               'symbol?
               'value:
               _%id128862%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass132016%_ _%obj132017%_ _%id132018%_)
        (let* ((_%klass132021%_ _%klass132016%_) (_%id132029%_ _%id132018%_))
          (letrec ((_%metaclass-resolve-method132038%_
                    (lambda ()
                      (let* ((_%obj132099%_ _%klass132021%_)
                             (_%id132102%_ 'direct-method-ref)
                             (_%args132105%_ (list _%obj132017%_ _%id132029%_))
                             (_%id132110%_ _%id132102%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132099%_
                                 _%id132110%_
                                 _%args132105%_))))
                   (_%metaclass-resolve-method!132039%_
                    (lambda ()
                      (let ((_%method132096%_
                             (_%metaclass-resolve-method132038%_)))
                        (let ((__tmp138651
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132021%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp138650
                               (if _%method132096%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp138651
                           _%id132029%_
                           __tmp138650))
                        _%method132096%_))))
            (let ((_%$e132041%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass132021%_ '11 '#f '#f))))
              (if _%$e132041%_
                  ((lambda (_%ht132044%_)
                     (let ((_%method132046%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht132044%_
                               _%id132029%_
                               '#f))))
                       (if (procedure? _%method132046%_)
                           _%method132046%_
                           (if (let* ((_%klass132049%_ _%klass132021%_)
                                      (_%klass132054%_ _%klass132049%_))
                                 (__class-type-metaclass? _%klass132054%_))
                               (let ((_%$e132072%_ _%method132046%_))
                                 (if (eq? 'resolved _%$e132072%_)
                                     (_%metaclass-resolve-method132038%_)
                                     (if (eq? 'unknown _%$e132072%_)
                                         '#f
                                         (_%metaclass-resolve-method!132039%_))))
                               '#f))))
                   _%$e132041%_)
                  (if (let* ((_%klass132076%_ _%klass132021%_)
                             (_%klass132081%_ _%klass132076%_))
                        (__class-type-metaclass? _%klass132081%_))
                      (let ((_%tab132092%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132021%_
                           _%tab132092%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!132039%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass128996%_ _%obj128997%_ _%id128998%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128996%_ 'class))
            (let ((_%klass129002%_ _%klass128996%_))
              (if (symbol? _%id128998%_)
                  (let ((_%id129012%_ _%id128998%_))
                    (__direct-method-ref
                     _%klass129002%_
                     _%obj128997%_
                     _%id129012%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1012.47-1012.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id128998%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1012.26-1012.31"
               'contract:
               'class-type?
               'value:
               _%klass128996%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass131968%_ _%obj131969%_ _%id131970%_)
        (let* ((_%klass131973%_ _%klass131968%_)
               (_%id131981%_ _%id131970%_)
               (_%mixins131990%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131973%_ '6 '#f '#f)))
               (_%obj131993%_ _%obj131969%_)
               (_%id131996%_ _%id131981%_)
               (_%id132001%_ _%id131996%_))
          (__mixin-find-method _%mixins131990%_ _%obj131993%_ _%id132001%_))))
    (define mixin-method-ref
      (lambda (_%klass129142%_ _%obj129143%_ _%id129144%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129142%_ 'class))
            (let ((_%klass129148%_ _%klass129142%_))
              (if (symbol? _%id129144%_)
                  (let ((_%id129158%_ _%id129144%_))
                    (__mixin-method-ref
                     _%klass129148%_
                     _%obj129143%_
                     _%id129158%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1042.46-1042.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129144%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.25-1042.30"
               'contract:
               'class-type?
               'value:
               _%klass129142%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass131878%_ _%id131879%_ _%proc131880%_ _%rebind?131881%_)
        (let* ((_%id131884%_ _%id131879%_) (_%proc131892%_ _%proc131880%_))
          (letrec ((_%bind!131901%_
                    (lambda (_%ht131952%_)
                      (if (and (not _%rebind?131881%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht131952%_
                                  _%id131884%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass131878%_
                                 'method:
                                 _%id131884%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht131952%_
                               _%id131884%_
                               _%proc131892%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass131878%_ 'class))
                (let ((_%ht131904%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131878%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht131904%_
                      (_%bind!131901%_ _%ht131904%_)
                      (let ((_%ht131906%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass131878%_
                           _%ht131906%_
                           '11
                           '#f
                           '#f))
                        (_%bind!131901%_ _%ht131906%_))))
                (if (let () (declare (not safe)) (##type? _%klass131878%_))
                    (let* ((_%klass131909%_
                            (__shadow-class__0 _%klass131878%_))
                           (_%id131912%_ _%id131884%_)
                           (_%proc131915%_ _%proc131892%_)
                           (_%rebind?131918%_ _%rebind?131881%_)
                           (_%id131923%_ _%id131912%_)
                           (_%proc131941%_ _%proc131915%_))
                      (__bind-method!__%
                       _%klass131909%_
                       _%id131923%_
                       _%proc131941%_
                       _%rebind?131918%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass131878%_)))))))
    (define __bind-method!__0
      (lambda (_%klass131957%_ _%id131958%_ _%proc131959%_)
        (let ((_%rebind?131961%_ '#f))
          (__bind-method!__%
           _%klass131957%_
           _%id131958%_
           _%proc131959%_
           _%rebind?131961%_))))
    (define __bind-method!
      (lambda _g138652_
        (let ((_g138653_ (let () (declare (not safe)) (##length _g138652_))))
          (cond ((let () (declare (not safe)) (##fx= _g138653_ 3))
                 (apply __bind-method!__0 _g138652_))
                ((let () (declare (not safe)) (##fx= _g138653_ 4))
                 (apply __bind-method!__% _g138652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g138652_))))))
    (define bind-method!__%
      (lambda (_%klass129289%_ _%id129290%_ _%proc129291%_ _%rebind?129292%_)
        (if (symbol? _%id129290%_)
            (let ((_%id129296%_ _%id129290%_))
              (if (procedure? _%proc129291%_)
                  (let ((_%proc129306%_ _%proc129291%_))
                    (__bind-method!__%
                     _%klass129289%_
                     _%id129296%_
                     _%proc129306%_
                     _%rebind?129292%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.42-1045.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc129291%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.27-1045.29"
               'contract:
               'symbol?
               'value:
               _%id129290%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass129319%_ _%id129320%_ _%proc129321%_)
        (let ((_%rebind?129323%_ '#f))
          (bind-method!__%
           _%klass129319%_
           _%id129320%_
           _%proc129321%_
           _%rebind?129323%_))))
    (define bind-method!
      (lambda _g138654_
        (let ((_g138655_ (let () (declare (not safe)) (##length _g138654_))))
          (cond ((let () (declare (not safe)) (##fx= _g138655_ 3))
                 (apply bind-method!__0 _g138654_))
                ((let () (declare (not safe)) (##fx= _g138655_ 4))
                 (apply bind-method!__% _g138654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g138654_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint131859%_ _%seed131860%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint131859%_
           procedure-hash
           eq?
           _%seed131860%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint131866%_ '#f) (_%seed131868%_ '0))
          (make-method-specializer-table__%
           _%size-hint131866%_
           _%seed131868%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint131870%_)
        (let ((_%seed131872%_ '0))
          (make-method-specializer-table__%
           _%size-hint131870%_
           _%seed131872%_))))
    (define make-method-specializer-table
      (lambda _g138656_
        (let ((_g138657_ (let () (declare (not safe)) (##length _g138656_))))
          (cond ((let () (declare (not safe)) (##fx= _g138657_ 0))
                 (apply make-method-specializer-table__0 _g138656_))
                ((let () (declare (not safe)) (##fx= _g138657_ 1))
                 (apply make-method-specializer-table__1 _g138656_))
                ((let () (declare (not safe)) (##fx= _g138657_ 2))
                 (apply make-method-specializer-table__% _g138656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g138656_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint131839%_ _%seed131841%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint131839%_
           procedure-hash
           eq?
           _%seed131841%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint131847%_ '#f) (_%seed131849%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint131847%_
           _%seed131849%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint131851%_)
        (let ((_%seed131853%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint131851%_
           _%seed131853%_))))
    (define make-method-specializer-table/lock
      (lambda _g138658_
        (let ((_g138659_ (let () (declare (not safe)) (##length _g138658_))))
          (cond ((let () (declare (not safe)) (##fx= _g138659_ 0))
                 (apply make-method-specializer-table/lock__0 _g138658_))
                ((let () (declare (not safe)) (##fx= _g138659_ 1))
                 (apply make-method-specializer-table/lock__1 _g138658_))
                ((let () (declare (not safe)) (##fx= _g138659_ 2))
                 (apply make-method-specializer-table/lock__% _g138658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g138658_))))))
    (define method-specializer-table-ref
      (lambda (_%tab131792%_ _%key131793%_ _%default131794%_)
        (let ((_%table131796%_
               (let () (declare (not safe)) (&raw-table-table _%tab131792%_)))
              (_%seed131797%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131792%_))))
          (let* ((_%h131799%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131793%_))
                         _%seed131797%_))
                 (_%size131802%_ (vector-length _%table131796%_))
                 (_%entries131805%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131802%_ '2)))
                 (_%start131808%_
                  (let ((__tmp138660
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131799%_ _%entries131805%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138660 '1))))
            (let _%loop131812%_ ((_%probe131815%_ _%start131808%_)
                                 (_%i131817%_ '1)
                                 (_%deleted131819%_ '#f))
              (let ((_%k131822%_ (vector-ref _%table131796%_ _%probe131815%_)))
                (if (eq? _%k131822%_ (macro-unused-obj))
                    _%default131794%_
                    (if (eq? _%k131822%_ (macro-deleted-obj))
                        (_%loop131812%_
                         (let ((_%next-probe131827%_
                                (fx+ _%start131808%_
                                     _%i131817%_
                                     (fx* _%i131817%_ _%i131817%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131827%_ _%size131802%_))
                         (let () (declare (not safe)) (##fx+ _%i131817%_ '1))
                         (let ((_%$e131830%_ _%deleted131819%_))
                           (if _%$e131830%_ _%$e131830%_ _%probe131815%_)))
                        (if (eq? _%key131793%_ _%k131822%_)
                            (vector-ref
                             _%table131796%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe131815%_ '1)))
                            (_%loop131812%_
                             (let ((_%next-probe131835%_
                                    (fx+ _%start131808%_
                                         _%i131817%_
                                         (fx* _%i131817%_ _%i131817%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131835%_
                                _%size131802%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131817%_ '1))
                             _%deleted131819%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab131763%_ _%key131764%_ _%default131765%_)
        (let ((_%lock131767%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131763%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131772%_ ((_%spin131775%_ '0))
              (if (let ((__tmp138661
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131767%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138661 '0))
                  (let ((__tmp138662 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131767%_ '1 __tmp138662))
                  (if (let () (declare (not safe)) (##fx< _%spin131775%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131772%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131775%_ '1))))
                      (let ((_%owner131781%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131767%_ '1))))
                        (if (eq? _%owner131781%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131781%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131772%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131787%_
                 (method-specializer-table-ref
                  _%tab131763%_
                  _%key131764%_
                  _%default131765%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131767%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131767%_ '0 '0 '1))))
            _%$r131787%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab131715%_ _%key131716%_ _%value131717%_)
        (let ((_%table131719%_
               (let () (declare (not safe)) (&raw-table-table _%tab131715%_)))
              (_%seed131720%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131715%_))))
          (let* ((_%h131722%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131716%_))
                         _%seed131720%_))
                 (_%size131725%_ (vector-length _%table131719%_))
                 (_%entries131728%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131725%_ '2)))
                 (_%start131731%_
                  (let ((__tmp138663
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131722%_ _%entries131728%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138663 '1))))
            (let _%loop131735%_ ((_%probe131738%_ _%start131731%_)
                                 (_%i131740%_ '1)
                                 (_%deleted131742%_ '#f))
              (let ((_%k131745%_ (vector-ref _%table131719%_ _%probe131738%_)))
                (if (eq? _%k131745%_ (macro-unused-obj))
                    (if _%deleted131742%_
                        (begin
                          (vector-set!
                           _%table131719%_
                           _%deleted131742%_
                           _%key131716%_)
                          (vector-set!
                           _%table131719%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted131742%_ '1))
                           _%value131717%_)
                          ((lambda ()
                             (let ((__tmp138664
                                    (let ((__tmp138665
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131715%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138665 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131715%_
                                __tmp138664)))))
                        (begin
                          (vector-set!
                           _%table131719%_
                           _%probe131738%_
                           _%key131716%_)
                          (vector-set!
                           _%table131719%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe131738%_ '1))
                           _%value131717%_)
                          ((lambda ()
                             (let ((__tmp138666
                                    (let ((__tmp138667
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab131715%_))))
                                      (declare (not safe))
                                      (##fx- __tmp138667 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab131715%_
                                __tmp138666))
                             (let ((__tmp138668
                                    (let ((__tmp138669
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131715%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138669 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131715%_
                                __tmp138668))))))
                    (if (eq? _%k131745%_ (macro-deleted-obj))
                        (_%loop131735%_
                         (let ((_%next-probe131752%_
                                (fx+ _%start131731%_
                                     _%i131740%_
                                     (fx* _%i131740%_ _%i131740%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131752%_ _%size131725%_))
                         (let () (declare (not safe)) (##fx+ _%i131740%_ '1))
                         (let ((_%$e131755%_ _%deleted131742%_))
                           (if _%$e131755%_ _%$e131755%_ _%probe131738%_)))
                        (if (eq? _%key131716%_ _%k131745%_)
                            (let ()
                              (vector-set!
                               _%table131719%_
                               _%probe131738%_
                               _%key131716%_)
                              (vector-set!
                               _%table131719%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131738%_ '1))
                               _%value131717%_))
                            (_%loop131735%_
                             (let ((_%next-probe131760%_
                                    (fx+ _%start131731%_
                                         _%i131740%_
                                         (fx* _%i131740%_ _%i131740%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131760%_
                                _%size131725%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131740%_ '1))
                             _%deleted131742%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab131711%_ _%key131712%_ _%value131713%_)
        (if (let ((__tmp138672
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab131711%_)))
                  (__tmp138670
                   (let ((__tmp138671
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab131711%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp138671 '4))))
              (declare (not safe))
              (##fx< __tmp138672 __tmp138670))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab131711%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab131711%_
         _%key131712%_
         _%value131713%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab131681%_ _%key131682%_ _%value131683%_)
        (let ((_%lock131686%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131681%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131691%_ ((_%spin131694%_ '0))
              (if (let ((__tmp138673
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131686%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138673 '0))
                  (let ((__tmp138674 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131686%_ '1 __tmp138674))
                  (if (let () (declare (not safe)) (##fx< _%spin131694%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131691%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131694%_ '1))))
                      (let ((_%owner131700%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131686%_ '1))))
                        (if (eq? _%owner131700%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131700%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131691%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131706%_
                 (method-specializer-table-set!
                  _%tab131681%_
                  _%key131682%_
                  _%value131683%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131686%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131686%_ '0 '0 '1))))
            _%$r131706%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab131632%_
               _%key131633%_
               _%method-specializer-table-update!131634%_
               _%default131635%_)
        (let ((_%table131637%_
               (let () (declare (not safe)) (&raw-table-table _%tab131632%_)))
              (_%seed131638%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131632%_))))
          (let* ((_%h131640%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131633%_))
                         _%seed131638%_))
                 (_%size131643%_ (vector-length _%table131637%_))
                 (_%entries131646%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131643%_ '2)))
                 (_%start131649%_
                  (let ((__tmp138675
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131640%_ _%entries131646%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138675 '1))))
            (let _%loop131653%_ ((_%probe131656%_ _%start131649%_)
                                 (_%i131658%_ '1)
                                 (_%deleted131660%_ '#f))
              (let ((_%k131663%_ (vector-ref _%table131637%_ _%probe131656%_)))
                (if (eq? _%k131663%_ (macro-unused-obj))
                    (if _%deleted131660%_
                        (begin
                          (vector-set!
                           _%table131637%_
                           _%deleted131660%_
                           _%key131633%_)
                          (vector-set!
                           _%table131637%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted131660%_ '1))
                           (_%method-specializer-table-update!131634%_
                            _%default131635%_))
                          ((lambda ()
                             (let ((__tmp138676
                                    (let ((__tmp138677
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131632%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138677 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131632%_
                                __tmp138676)))))
                        (begin
                          (vector-set!
                           _%table131637%_
                           _%probe131656%_
                           _%key131633%_)
                          (vector-set!
                           _%table131637%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe131656%_ '1))
                           (_%method-specializer-table-update!131634%_
                            _%default131635%_))
                          ((lambda ()
                             (let ((__tmp138678
                                    (let ((__tmp138679
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab131632%_))))
                                      (declare (not safe))
                                      (##fx- __tmp138679 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab131632%_
                                __tmp138678))
                             (let ((__tmp138680
                                    (let ((__tmp138681
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab131632%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp138681 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab131632%_
                                __tmp138680))))))
                    (if (eq? _%k131663%_ (macro-deleted-obj))
                        (_%loop131653%_
                         (let ((_%next-probe131670%_
                                (fx+ _%start131649%_
                                     _%i131658%_
                                     (fx* _%i131658%_ _%i131658%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131670%_ _%size131643%_))
                         (let () (declare (not safe)) (##fx+ _%i131658%_ '1))
                         (let ((_%$e131673%_ _%deleted131660%_))
                           (if _%$e131673%_ _%$e131673%_ _%probe131656%_)))
                        (if (eq? _%key131633%_ _%k131663%_)
                            (let ()
                              (vector-set!
                               _%table131637%_
                               _%probe131656%_
                               _%key131633%_)
                              (vector-set!
                               _%table131637%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131656%_ '1))
                               (_%method-specializer-table-update!131634%_
                                (vector-ref
                                 _%table131637%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe131656%_ '1))))))
                            (_%loop131653%_
                             (let ((_%next-probe131678%_
                                    (fx+ _%start131649%_
                                         _%i131658%_
                                         (fx* _%i131658%_ _%i131658%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131678%_
                                _%size131643%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131658%_ '1))
                             _%deleted131660%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab131627%_
               _%key131628%_
               _%method-specializer-table-update!131629%_
               _%default131630%_)
        (if (let ((__tmp138684
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab131627%_)))
                  (__tmp138682
                   (let ((__tmp138683
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab131627%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp138683 '4))))
              (declare (not safe))
              (##fx< __tmp138684 __tmp138682))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab131627%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab131627%_
         _%key131628%_
         _%method-specializer-table-update!131629%_
         _%default131630%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab131596%_
               _%key131597%_
               _%method-specializer-table-update!131598%_
               _%default131599%_)
        (let ((_%lock131602%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131596%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131607%_ ((_%spin131610%_ '0))
              (if (let ((__tmp138685
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131602%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138685 '0))
                  (let ((__tmp138686 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131602%_ '1 __tmp138686))
                  (if (let () (declare (not safe)) (##fx< _%spin131610%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131607%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131610%_ '1))))
                      (let ((_%owner131616%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131602%_ '1))))
                        (if (eq? _%owner131616%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131616%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131607%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131622%_
                 (_%method-specializer-table-update!131598%_
                  _%tab131596%_
                  _%key131597%_
                  _%method-specializer-table-update!131598%_
                  _%default131599%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131602%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131602%_ '0 '0 '1))))
            _%$r131622%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab131553%_ _%key131554%_)
        (let ((_%table131556%_
               (let () (declare (not safe)) (&raw-table-table _%tab131553%_)))
              (_%seed131558%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131553%_))))
          (let* ((_%h131561%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131554%_))
                         _%seed131558%_))
                 (_%size131564%_ (vector-length _%table131556%_))
                 (_%entries131567%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131564%_ '2)))
                 (_%start131570%_
                  (let ((__tmp138687
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131561%_ _%entries131567%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp138687 '1))))
            (let _%loop131574%_ ((_%probe131577%_ _%start131570%_)
                                 (_%i131579%_ '1))
              (let ((_%k131582%_ (vector-ref _%table131556%_ _%probe131577%_)))
                (if (eq? _%k131582%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k131582%_ (macro-deleted-obj))
                        (_%loop131574%_
                         (let ((_%next-probe131587%_
                                (fx+ _%start131570%_
                                     _%i131579%_
                                     (fx* _%i131579%_ _%i131579%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe131587%_ _%size131564%_))
                         (let () (declare (not safe)) (##fx+ _%i131579%_ '1)))
                        (if (eq? _%key131554%_ _%k131582%_)
                            (let ()
                              (vector-set!
                               _%table131556%_
                               _%probe131577%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table131556%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131577%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp138688
                                        (let ((__tmp138689
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab131553%_))))
                                          (declare (not safe))
                                          (##fx- __tmp138689 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab131553%_
                                    __tmp138688)))))
                            (_%loop131574%_
                             (let ((_%next-probe131593%_
                                    (fx+ _%start131570%_
                                         _%i131579%_
                                         (fx* _%i131579%_ _%i131579%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe131593%_
                                _%size131564%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131579%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab131523%_ _%key131525%_)
        (let ((_%lock131528%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131523%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131533%_ ((_%spin131536%_ '0))
              (if (let ((__tmp138690
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131528%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138690 '0))
                  (let ((__tmp138691 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131528%_ '1 __tmp138691))
                  (if (let () (declare (not safe)) (##fx< _%spin131536%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131533%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131536%_ '1))))
                      (let ((_%owner131542%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131528%_ '1))))
                        (if (eq? _%owner131542%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131542%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131533%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131548%_
                 (method-specializer-table-delete!
                  _%tab131523%_
                  _%key131525%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131528%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131528%_ '0 '0 '1))))
            _%$r131548%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc131520%_ _%specializer131521%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc131520%_
         _%specializer131521%_)))
    (define __lookup-method-specializer
      (lambda (_%proc131518%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc131518%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass131500%_)
        (let* ((_%klass131503%_ _%klass131500%_)
               (_%$e131512%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131503%_ '12 '#f '#f))))
          (if _%$e131512%_
              _%$e131512%_
              (let ((_%method-table131516%_
                     (___specialize-class _%klass131503%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass131503%_
                   _%method-table131516%_
                   '12
                   '#f
                   '#f))
                _%method-table131516%_)))))
    (define specialize-class
      (lambda (_%klass129450%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129450%_ 'class))
            (let ((_%klass129454%_ _%klass129450%_))
              (__specialize-class _%klass129454%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1095.25-1095.30"
               'contract:
               'class-type?
               'value:
               _%klass129450%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass131484%_
               _%method-table131485%_
               _%method131486%_
               _%proc131487%_)
        (let ((_%$e131489%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table131485%_
                  _%method131486%_
                  '#f))))
          (if _%$e131489%_
              _%$e131489%_
              (let ((_%$e131492%_
                     (__lookup-method-specializer _%proc131487%_)))
                (if _%$e131492%_
                    ((lambda (_%specialize131495%_)
                       (let ((_%specialized-proc131497%_
                              (_%specialize131495%_
                               _%klass131484%_
                               _%method-table131485%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table131485%_
                          _%method131486%_
                          _%specialized-proc131497%_)))
                     _%$e131492%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table131485%_
                       _%method131486%_
                       _%proc131487%_))))))))
    (define ___specialize-class
      (lambda (_%klass131351%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131351%_ 'class))
            (if (let* ((_%klass131354%_ _%klass131351%_)
                       (_%klass131359%_ _%klass131354%_))
                  (__class-type-metaclass? _%klass131359%_))
                (let* ((_%obj131371%_ _%klass131351%_)
                       (_%id131374%_ 'specialize-class)
                       (_%args131377%_ '())
                       (_%id131382%_ _%id131374%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj131371%_
                           _%id131382%_
                           _%args131377%_))
                (if (let* ((_%pred131395%_ class-type-metaclass?)
                           (_%lst131398%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass131351%_
                               '6
                               '#f
                               '#f)))
                           (_%pred131403%_ _%pred131395%_))
                      (declare (not safe))
                      (__find _%pred131403%_ _%lst131398%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass131351%_)
                    (let ((_%method-table131416%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop131418%_ ((_%rest131420%_
                                            (let* ((_%klass131467%_
                                                    _%klass131351%_)
                                                   (_%klass131472%_
                                                    _%klass131467%_))
                                              (__class-precedence-list
                                               _%klass131472%_))))
                        (let* ((_%rest131421131429%_ _%rest131420%_)
                               (_%else131423131437%_
                                (lambda () _%method-table131416%_))
                               (_%K131425131455%_
                                (lambda (_%rest131440%_ _%xklass131441%_)
                                  (let ((_%xmethod-table131442131444%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass131441%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table131442131444%_
                                        (let* ((_%xmethod-table131446%_
                                                _%xmethod-table131442131444%_)
                                               (__tmp138692
                                                (lambda (_%g131447131450%_
                                                         _%g131448131452%_)
                                                  (__specialize-method
                                                   _%klass131351%_
                                                   _%method-table131416%_
                                                   _%g131447131450%_
                                                   _%g131448131452%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table131446%_
                                           __tmp138692))
                                        '#f))
                                  (_%loop131418%_ _%rest131440%_))))
                          (if (pair? _%rest131421131429%_)
                              (let ((_%hd131426131458%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131421131429%_)))
                                    (_%tl131427131460%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131421131429%_))))
                                (let* ((_%xklass131463%_ _%hd131426131458%_)
                                       (_%rest131465%_ _%tl131427131460%_))
                                  (_%K131425131455%_
                                   _%rest131465%_
                                   _%xklass131463%_)))
                              (_%else131423131437%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass131351%_))
                (__specialize-class (__shadow-class__0 _%klass131351%_))
                (error '"bad class; cannot specialize" _%klass131351%_)))))
    (define __seal-class!
      (lambda (_%klass131214%_)
        (let ((_%klass131217%_ _%klass131214%_))
          (if (let* ((_%klass131226%_ _%klass131217%_)
                     (_%klass131231%_ _%klass131226%_))
                (__class-type-sealed? _%klass131231%_))
              '#!void
              (begin
                (if (let* ((_%klass131244%_ _%klass131217%_)
                           (_%klass131249%_ _%klass131244%_))
                      (__class-type-metaclass? _%klass131249%_))
                    (let ()
                      (let* ((_%obj131260%_ _%klass131217%_)
                             (_%id131263%_ 'seal-class!)
                             (_%args131266%_ '())
                             (_%id131271%_ _%id131263%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj131260%_
                                 _%id131271%_
                                 _%args131266%_))
                      (let* ((_%klass131284%_ _%klass131217%_)
                             (_%klass131289%_ _%klass131284%_))
                        (__specialize-class _%klass131289%_)))
                    (if (let* ((_%pred131299%_ class-type-metaclass?)
                               (_%lst131302%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass131217%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred131307%_ _%pred131299%_))
                          (declare (not safe))
                          (__find _%pred131307%_ _%lst131302%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass131217%_)
                        (let* ((_%klass131320%_ _%klass131217%_)
                               (_%klass131325%_ _%klass131320%_))
                          (__specialize-class _%klass131325%_))))
                (let* ((_%klass131336%_ _%klass131217%_)
                       (_%klass131341%_ _%klass131336%_))
                  (__class-type-seal! _%klass131341%_)))))))
    (define seal-class!
      (lambda (_%klass129584%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129584%_ 'class))
            (let ((_%klass129588%_ _%klass129584%_))
              (__seal-class! _%klass129588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1141.20-1141.25"
               'contract:
               'class-type?
               'value:
               _%klass129584%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass131102%_ _%obj131103%_ _%id131104%_)
        (let* ((_%subklass131107%_ _%subklass131102%_)
               (_%id131115%_ _%id131104%_))
          (letrec ((_%find-next-method131124%_
                    (lambda (_%klass131126%_)
                      (let _%lp131128%_ ((_%rest131130%_
                                          (let ((_%klass131199%_
                                                 _%klass131126%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass131199%_
                                                   'class))
                                                (let ((_%klass131204%_
                                                       _%klass131199%_))
                                                  (__class-precedence-list
                                                   _%klass131204%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass131199%_)
                                                  '#!void)))))
                        (let* ((_%rest131131131139%_ _%rest131130%_)
                               (_%else131133131147%_ (lambda () '#f))
                               (_%K131135131187%_
                                (lambda (_%rest131150%_ _%klass131151%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass131107%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass131151%_)))
                                      (let* ((_%mixins131153%_ _%rest131150%_)
                                             (_%obj131156%_ _%obj131103%_)
                                             (_%id131159%_ _%id131115%_)
                                             (_%id131164%_ _%id131159%_))
                                        (__mixin-find-method
                                         _%mixins131153%_
                                         _%obj131156%_
                                         _%id131164%_))
                                      (_%lp131128%_ _%rest131150%_)))))
                          (if (pair? _%rest131131131139%_)
                              (let ((_%hd131136131190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131131131139%_)))
                                    (_%tl131137131192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131131131139%_))))
                                (let* ((_%klass131195%_ _%hd131136131190%_)
                                       (_%rest131197%_ _%tl131137131192%_))
                                  (_%K131135131187%_
                                   _%rest131197%_
                                   _%klass131195%_)))
                              (_%else131133131147%_)))))))
            (_%find-next-method131124%_ (class-of _%obj131103%_))))))
    (define next-method
      (lambda (_%subklass129718%_ _%obj129719%_ _%id129720%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129718%_ 'class))
            (let ((_%subklass129724%_ _%subklass129718%_))
              (if (symbol? _%id129720%_)
                  (let ((_%id129734%_ _%id129720%_))
                    (__next-method
                     _%subklass129724%_
                     _%obj129719%_
                     _%id129734%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1163.44-1163.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id129720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1163.20-1163.28"
               'contract:
               'class-type?
               'value:
               _%subklass129718%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass131037%_ _%obj131038%_ _%id131039%_ . _%args131040%_)
        (let* ((_%subklass131043%_ _%subklass131037%_)
               (_%id131051%_ _%id131039%_)
               (_%$e131096%_
                (let* ((_%subklass131060%_ _%subklass131043%_)
                       (_%obj131063%_ _%obj131038%_)
                       (_%id131066%_ _%id131051%_)
                       (_%subklass131071%_ _%subklass131060%_)
                       (_%id131086%_ _%id131066%_))
                  (__next-method
                   _%subklass131071%_
                   _%obj131063%_
                   _%id131086%_))))
          (if _%$e131096%_
              ((lambda (_%methodf131099%_)
                 (apply _%methodf131099%_ _%obj131038%_ _%args131040%_))
               _%$e131096%_)
              (error '"cannot find next method"
                     'object:
                     _%obj131038%_
                     'method:
                     _%id131051%_)))))
    (define call-next-method
      (lambda (_%subklass129864%_ _%obj129865%_ _%id129866%_ . _%args129867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129864%_ 'class))
            (let ((_%subklass129871%_ _%subklass129864%_))
              (if (symbol? _%id129866%_)
                  (let ((_%id129881%_ _%id129866%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass129871%_
                             _%obj129865%_
                             _%id129881%_
                             _%args129867%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1174.49-1174.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id129866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.33"
               'contract:
               'class-type?
               'value:
               _%subklass129864%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type130816%_ _%properties130817%_)
        (letrec ((_%shadow-type-id130819%_
                  (lambda (_%type131025%_)
                    (let ((__tmp138693
                           (let ()
                             (declare (not safe))
                             (##type-name _%type131025%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp138693 '"::t"))))
                 (_%shadow-type-name130820%_
                  (lambda (_%type131023%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type131023%_))))
                 (_%make-shadow-class130821%_
                  (lambda (_%type130905%_ _%precedence-list130906%_)
                    (let* ((_%super130908%_
                            (if (pair? _%precedence-list130906%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list130906%_))
                                      '())
                                '()))
                           (_%klass131020%_
                            (let* ((_%id130910%_
                                    (_%shadow-type-id130819%_ _%type130905%_))
                                   (_%name130913%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type130905%_)))
                                   (_%direct-supers130916%_ _%super130908%_)
                                   (_%direct-slots130919%_ '())
                                   (_%properties130945%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type130905%_)
                                                      (let ((__tmp138694
                                                             (if (let ((_%type130922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type130905%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type130922%_))
                               (let ((_%type130927%_ _%type130922%_))
                                 (__type-extensible? _%type130927%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type130922%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties130817%_ __tmp138694))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor130948%_ '#f)
                                   (_%id130953%_ _%id130910%_))
                              (if (symbol? _%name130913%_)
                                  (let* ((_%name130964%_ _%name130913%_)
                                         (_%direct-supers130974%_
                                          _%direct-supers130916%_)
                                         (_%direct-slots130984%_
                                          _%direct-slots130919%_)
                                         (_%properties130994%_
                                          _%properties130945%_))
                                    (if ((lambda (_%$obj131003%_)
                                           (or (not _%$obj131003%_)
                                               (symbol? _%$obj131003%_)))
                                         _%constructor130948%_)
                                        (let ((_%constructor131010%_
                                               _%constructor130948%_))
                                          (__make-class-type
                                           _%id130953%_
                                           _%name130964%_
                                           _%direct-supers130974%_
                                           _%direct-slots130984%_
                                           _%properties130994%_
                                           _%constructor131010%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor130948%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name130913%_)
                                    '#!void)))))
                      (let ((__tmp138695
                             (let ()
                               (declare (not safe))
                               (##type-id _%type130905%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp138695
                         _%klass131020%_))
                      _%klass131020%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130825%_ ((_%spin130828%_ '0))
              (if (let ((__tmp138696
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp138696 '0))
                  (let ((__tmp138697 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp138697))
                  (if (let () (declare (not safe)) (##fx< _%spin130828%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130825%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130828%_ '1))))
                      (let ((_%owner130834%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner130834%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130834%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130825%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e130840%_
                 (let ((__tmp138698
                        (let ()
                          (declare (not safe))
                          (##type-id _%type130816%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp138698 '#f))))
            (if _%$e130840%_
                ((lambda (_%klass130843%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass130843%_)
                 _%$e130840%_)
                (let _%loop130848%_ ((_%super130850%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type130816%_)))
                                     (_%hierarchy130851%_ '()))
                  (if (not _%super130850%_)
                      (let _%loop130854%_ ((_%rest130856%_ _%hierarchy130851%_)
                                           (_%precedence-list130857%_ '()))
                        (let* ((_%rest130858130866%_ _%rest130856%_)
                               (_%else130860130878%_
                                (lambda ()
                                  (let ((_%klass130874%_
                                         (_%make-shadow-class130821%_
                                          _%type130816%_
                                          _%precedence-list130857%_)))
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
                                    _%klass130874%_)))
                               (_%K130862130892%_
                                (lambda (_%rest130881%_ _%type130882%_)
                                  (let ((_%$e130884%_
                                         (let ((__tmp138699
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type130882%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp138699
                                            '#f))))
                                    (if _%$e130884%_
                                        ((lambda (_%klass130887%_)
                                           (_%loop130854%_
                                            _%rest130881%_
                                            (cons _%klass130887%_
                                                  _%precedence-list130857%_)))
                                         _%$e130884%_)
                                        (let ((_%klass130890%_
                                               (_%make-shadow-class130821%_
                                                _%type130882%_
                                                _%precedence-list130857%_)))
                                          (_%loop130854%_
                                           _%rest130881%_
                                           (cons _%klass130890%_
                                                 _%precedence-list130857%_))))))))
                          (if (pair? _%rest130858130866%_)
                              (let ((_%hd130863130895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130858130866%_)))
                                    (_%tl130864130897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130858130866%_))))
                                (let* ((_%type130900%_ _%hd130863130895%_)
                                       (_%rest130902%_ _%tl130864130897%_))
                                  (_%K130862130892%_
                                   _%rest130902%_
                                   _%type130900%_)))
                              (_%else130860130878%_))))
                      (_%loop130848%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super130850%_))
                       (cons _%super130850%_ _%hierarchy130851%_)))))))))
    (define __shadow-class__0
      (lambda (_%type131030%_)
        (let ((_%properties131032%_ '()))
          (__shadow-class__% _%type131030%_ _%properties131032%_))))
    (define __shadow-class
      (lambda _g138700_
        (let ((_g138701_ (let () (declare (not safe)) (##length _g138700_))))
          (cond ((let () (declare (not safe)) (##fx= _g138701_ 1))
                 (apply __shadow-class__0 _g138700_))
                ((let () (declare (not safe)) (##fx= _g138701_ 2))
                 (apply __shadow-class__% _g138700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g138700_))))))
    (define __type
      (let* ((_%tb130804%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e130806%_ _%tb130804%_))
        (if (eq? '2 _%$e130806%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e130806%_)
                (let ((_%flonum-self-tagging-tags130809%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits130810%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e130812%_ _%flonum-self-tagging-tags130809%_))
                    (if (eq? '0 _%$e130812%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits130810%_ '2))
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
                        (if (eq? '1 _%$e130812%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits130810%_ '2))
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
                            (if (eq? '2 _%$e130812%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e130812%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e130812%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags130809%_))))))))
                (error '"unexpected tag width" _%tb130804%_)))))
    (define __class
      (let* ((_%len130752%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv130754%_
              (let () (declare (not safe)) (##make-vector _%len130752%_ '#f))))
        (let _%loop130757%_ ((_%i130759%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i130759%_ _%len130752%_))
              (let* ((_%t130761%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i130759%_)))
                     (_%f130801%_
                      (if (eq? _%t130761%_ 'undefined)
                          (lambda (_%obj130764%_)
                            (error '"object type is undefined" _%obj130764%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t130761%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj130767%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t130761%_))
                              (if (eq? _%t130761%_ 'subtyped)
                                  (lambda (_%obj130771%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st130774%_
                                           (##subtype _%obj130771%_)))
                                      (if (##fx= _%st130774%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass130777%_
                                                 (##structure-type
                                                  _%obj130771%_)))
                                            (if (##structure-instance-of?
                                                 _%klass130777%_
                                                 'class)
                                                _%klass130777%_
                                                (__shadow-class__0
                                                 _%klass130777%_)))
                                          (if (##fx= _%st130774%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj130771%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e130780%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st130774%_)))
                                                (if _%$e130780%_
                                                    (__system-class
                                                     _%$e130780%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st130774%_
                                                           'object:
                                                           _%obj130771%_)))))))
                                  (if (eq? _%t130761%_ 'special)
                                      (lambda (_%obj130785%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj130785%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj130785%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj130785%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj130785%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj130785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj130785%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj130785%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj130785%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj130785%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj130785%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj130785%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t130761%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv130754%_ _%i130759%_ _%f130801%_))
                (_%loop130757%_
                 (let () (declare (not safe)) (##fx+ _%i130759%_ '1))))
              _%cv130754%_))))
    (define type-of
      (lambda (_%obj130748%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj130748%_)))))
    (define class-of
      (lambda (_%obj130739%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t130743%_ (##type _%obj130739%_))
                 (_%f130745%_ (##vector-ref __class _%t130743%_)))
            (_%f130745%_ _%obj130739%_)))))
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
      (lambda (_%id130733%_)
        (let ((_%$e130735%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id130733%_ '#f))))
          (if _%$e130735%_
              _%$e130735%_
              (error '"unknown system class" _%id130733%_)))))
    (define __make-system-class
      (lambda (_%id130635%_ _%super130636%_ _%properties130637%_)
        (let ((_%klass130731%_
               (let* ((_%id130639%_ _%id130635%_)
                      (_%name130642%_ _%id130635%_)
                      (_%direct-supers130645%_ _%super130636%_)
                      (_%direct-slots130648%_ '())
                      (_%properties130651%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties130637%_))))
                      (_%constructor130654%_ '#f))
                 (if (symbol? _%id130639%_)
                     (let ((_%id130659%_ _%id130639%_))
                       (if (symbol? _%name130642%_)
                           (let ((_%name130675%_ _%name130642%_))
                             (if (list? _%direct-supers130645%_)
                                 (let* ((_%direct-supers130685%_
                                         _%direct-supers130645%_)
                                        (_%direct-slots130695%_
                                         _%direct-slots130648%_)
                                        (_%properties130705%_
                                         _%properties130651%_))
                                   (if ((lambda (_%$obj130714%_)
                                          (or (not _%$obj130714%_)
                                              (symbol? _%$obj130714%_)))
                                        _%constructor130654%_)
                                       (let ((_%constructor130721%_
                                              _%constructor130654%_))
                                         (__make-class-type
                                          _%id130659%_
                                          _%name130675%_
                                          _%direct-supers130685%_
                                          _%direct-slots130695%_
                                          _%properties130705%_
                                          _%constructor130721%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor130654%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers130645%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name130642%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id130639%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id130635%_
             _%klass130731%_))
          _%klass130731%_)))))
