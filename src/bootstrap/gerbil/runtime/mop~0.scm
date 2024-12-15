(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1734280444)
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
    (define t::t
      (let ((_%flags101049%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101050%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101051%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101049%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101051%_
           _%properties101050%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101025%_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods))
             (_%slot-vector101027%_ (list->vector (cons '#f _%slots101025%_)))
             (_%slot-table101034%_
              (let ((_%slot-table101029%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102492
                       (lambda (_%slot101031%_ _%field101032%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101029%_
                            _%slot101031%_
                            _%field101032%_))
                         (let ((__tmp102493
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101031%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101029%_
                            __tmp102493
                            _%field101032%_))))
                      (__tmp102490
                       (let ((__tmp102491
                              (let ()
                                (declare (not safe))
                                (##length _%slots101025%_))))
                         (declare (not safe))
                         (##iota __tmp102491 '1))))
                  (declare (not safe))
                  (##for-each __tmp102492 _%slots101025%_ __tmp102490))
                _%slot-table101029%_))
             (_%flags101036%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101042%_
              (list->vector
               (let ((__tmp102494
                      (map (lambda (_%g101037101039%_)
                             (list _%g101037101039%_ '5 '#f))
                           (drop _%slots101025%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102494))))
             (_%properties101044%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101025%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101046%_
              (let ((__tmp102495 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101036%_
                 ##type-type
                 _%fields101042%_
                 __tmp102495
                 _%slot-vector101027%_
                 _%slot-table101034%_
                 _%properties101044%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101046%_ _%t101046%_))
        _%t101046%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101021%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101022%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101023%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102496 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101021%_
           '#f
           '#()
           __tmp102496
           '#(#f)
           _%slot-table101023%_
           _%properties101022%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101019%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101019%_ 'class))))
    (define class-type=?
      (lambda (_%x100994%_ _%y100995%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x100994%_ 'class))
            (let ((_%x100999%_ _%x100994%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y100995%_ 'class))
                  (let ((_%y101009%_ _%y100995%_))
                    (__class-type=? _%x100999%_ _%y101009%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y100995%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x100994%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x100973%_ _%y100974%_)
        (let* ((_%x100977%_ _%x100973%_) (_%y100985%_ _%y100974%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x100977%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y100985%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100959%_)
        (if (let () (declare (not safe)) (##type? _%type100959%_))
            (let ((_%type100963%_ _%type100959%_))
              (__type-opaque? _%type100963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100959%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100947%_)
        (let* ((_%type100950%_ _%type100947%_)
               (__tmp102497
                (let ((__tmp102498
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100950%_))))
                  (declare (not safe))
                  (##fxand __tmp102498 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102497 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100933%_)
        (if (let () (declare (not safe)) (##type? _%type100933%_))
            (let ((_%type100937%_ _%type100933%_))
              (__type-extensible? _%type100937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100933%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100921%_)
        (let* ((_%type100924%_ _%type100921%_)
               (__tmp102499
                (let ((__tmp102500
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100924%_))))
                  (declare (not safe))
                  (##fxand __tmp102500 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102499 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100907%_ 'class))
            (let ((_%type100911%_ _%type100907%_))
              (__class-type-final? _%type100911%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100907%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100895%_)
        (let* ((_%type100898%_ _%type100895%_)
               (__tmp102501
                (let ((__tmp102502
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100898%_))))
                  (declare (not safe))
                  (##fxand __tmp102502 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102501 '0))))
    (define class-type-struct?
      (lambda (_%klass100881%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100881%_ 'class))
            (let ((_%klass100885%_ _%klass100881%_))
              (__class-type-struct? _%klass100885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100881%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100869%_)
        (let* ((_%klass100872%_ _%klass100869%_)
               (__tmp102503
                (let ((__tmp102504
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100872%_))))
                  (declare (not safe))
                  (##fxand __tmp102504 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102503 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100855%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100855%_ 'class))
            (let ((_%klass100859%_ _%klass100855%_))
              (__class-type-sealed? _%klass100859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100855%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100843%_)
        (let* ((_%klass100846%_ _%klass100843%_)
               (__tmp102505
                (let ((__tmp102506
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100846%_))))
                  (declare (not safe))
                  (##fxand __tmp102506 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102505 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100829%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100829%_ 'class))
            (let ((_%klass100833%_ _%klass100829%_))
              (__class-type-metaclass? _%klass100833%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100829%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100817%_)
        (let* ((_%klass100820%_ _%klass100817%_)
               (__tmp102507
                (let ((__tmp102508
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100820%_))))
                  (declare (not safe))
                  (##fxand __tmp102508 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102507 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100803%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100803%_ 'class))
            (let ((_%klass100807%_ _%klass100803%_))
              (__class-type-system? _%klass100807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100803%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100791%_)
        (let* ((_%klass100794%_ _%klass100791%_)
               (__tmp102509
                (let ((__tmp102510
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100794%_))))
                  (declare (not safe))
                  (##fxand __tmp102510 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102509 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100673%_
               _%type-name100674%_
               _%type-super100675%_
               _%precedence-list100676%_
               _%slot-vector100677%_
               _%properties100678%_
               _%constructor100679%_
               _%slot-table100680%_
               _%methods100681%_)
        (letrec ((_%make-props!100684%_
                  (lambda (_%key100760%_)
                    (letrec* ((_%ht100762%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100763%_
                               (lambda (_%ht100784%_ _%slots100785%_)
                                 (for-each
                                  (lambda (_%g100786100788%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100784%_
                                       _%g100786100788%_
                                       '#t)))
                                  _%slots100785%_)))
                              (_%put-alist!100764%_
                               (lambda (_%ht100773%_
                                        _%key100774%_
                                        _%alist100775%_)
                                 (let ((_%$e100777%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100774%_
                                           _%alist100775%_))))
                                   (if _%$e100777%_
                                       ((lambda (_%g100779100781%_)
                                          (_%put-slots!100763%_
                                           _%ht100773%_
                                           _%g100779100781%_))
                                        _%$e100777%_)
                                       '#!void)))))
                      (_%put-alist!100764%_
                       _%ht100762%_
                       _%key100760%_
                       _%properties100678%_)
                      (for-each
                       (lambda (_%mixin100766%_)
                         (let ((_%alist100768%_
                                (##structure-ref
                                 _%mixin100766%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100768%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100760%_
                                           _%alist100768%_))))
                               (_%put-slots!100763%_
                                _%ht100762%_
                                (class-type-slot-list _%mixin100766%_))
                               (_%put-alist!100764%_
                                _%ht100762%_
                                _%key100760%_
                                _%alist100768%_))))
                       _%precedence-list100676%_)
                      _%ht100762%_))))
          (let* ((_%transparent?100686%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100678%_)))
                 (_%all-slots-printable?100691%_
                  (let ((_%$e100688%_ _%transparent?100686%_))
                    (if _%$e100688%_
                        _%$e100688%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100678%_))))))
                 (_%printable100693%_
                  (if (not _%all-slots-printable?100691%_)
                      (_%make-props!100684%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100698%_
                  (let ((_%$e100695%_ _%transparent?100686%_))
                    (if _%$e100695%_
                        _%$e100695%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100678%_))))))
                 (_%equalable100700%_
                  (if (not _%all-slots-equalable?100698%_)
                      (_%make-props!100684%_ 'equal:)
                      '#f))
                 (_%first-new-field100702%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100675%_ 'class))
                      (let ((__tmp102511
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100675%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102511))
                      '1))
                 (_%field-info-length100704%_
                  (let ((__tmp102512
                         (let ((__tmp102513
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100677%_))))
                           (declare (not safe))
                           (##fx- __tmp102513 _%first-new-field100702%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102512)))
                 (_%field-info100706%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100704%_ '#f)))
                 (_%struct?100708%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100678%_)))
                 (_%final?100710%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100678%_)))
                 (_%metaclass100718%_
                  (let ((_%metaclass100711100713%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100678%_))))
                    (if _%metaclass100711100713%_
                        (let ((_%metaclass100716%_ _%metaclass100711100713%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100716%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100673%_
                                     'metaclass:
                                     _%metaclass100716%_))
                          _%metaclass100716%_)
                        '#f)))
                 (_%system?100720%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100678%_)))
                 (_%opaque?100728%_
                  (if (or _%transparent?100686%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100678%_)))
                      '#f
                      (let ((_%$e100725%_ (not _%type-super100675%_)))
                        (if _%$e100725%_
                            _%$e100725%_
                            (__type-opaque? _%type-super100675%_)))))
                 (_%type-flags100730%_
                  (let ((__tmp102518
                         (if _%final?100710%_ '0 type-flag-extensible))
                        (__tmp102517
                         (if _%opaque?100728%_ type-flag-opaque '0))
                        (__tmp102516
                         (if _%struct?100708%_ class-type-flag-struct '0))
                        (__tmp102515
                         (if _%metaclass100718%_ class-type-flag-metaclass '0))
                        (__tmp102514
                         (if _%system?100720%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102518
                             __tmp102517
                             __tmp102516
                             __tmp102515
                             __tmp102514)))
                 (_%precedence-list100738%_
                  (let ((_%$e100732%_ (memq t::t _%precedence-list100676%_)))
                    (if _%$e100732%_
                        ((lambda (_%tail100735%_)
                           (if (null? (cdr _%tail100735%_))
                               _%precedence-list100676%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100676%_)))
                         _%$e100732%_)
                        (let ((__tmp102519 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100676%_ __tmp102519))))))
            (let _%loop100741%_ ((_%i100743%_ _%first-new-field100702%_)
                                 (_%j100744%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100744%_ _%field-info-length100704%_))
                  (let* ((_%slot100746%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100677%_ _%i100743%_)))
                         (_%flags100754%_
                          (if _%transparent?100686%_
                              '0
                              (let ((__tmp102521
                                     (if (or _%all-slots-printable?100691%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100693%_
                                                _%slot100746%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102520
                                     (if (or _%all-slots-equalable?100698%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100700%_
                                                _%slot100746%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102521 __tmp102520)))))
                    (vector-set!
                     _%field-info100706%_
                     _%j100744%_
                     _%slot100746%_)
                    (vector-set!
                     _%field-info100706%_
                     (let () (declare (not safe)) (##fx+ _%j100744%_ '1))
                     _%flags100754%_)
                    (_%loop100741%_
                     (let () (declare (not safe)) (##fx+ _%i100743%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100744%_ '3))))
                  '#!void))
            (if _%metaclass100718%_
                (let ((_%val100757%_
                       (make-instance
                        _%metaclass100718%_
                        _%type-id100673%_
                        _%type-name100674%_
                        _%type-flags100730%_
                        _%type-super100675%_
                        _%field-info100706%_
                        _%precedence-list100738%_
                        _%slot-vector100677%_
                        _%slot-table100680%_
                        _%properties100678%_
                        _%constructor100679%_
                        _%methods100681%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100757%_ 'class))
                      _%val100757%_
                      (error '"bad cast" class::t _%val100757%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100673%_
                   _%type-name100674%_
                   _%type-flags100730%_
                   _%type-super100675%_
                   _%field-info100706%_
                   _%precedence-list100738%_
                   _%slot-vector100677%_
                   _%slot-table100680%_
                   _%properties100678%_
                   _%constructor100679%_
                   _%methods100681%_)))))))
    (define class-type-id
      (lambda (_%klass100671%_)
        (##structure-ref _%klass100671%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100669%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100666%_ _%val100667%_)
        (##structure-set! _%klass100666%_ _%val100667%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100661%_ _%val100663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100661%_
           _%val100663%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100659%_)
        (##structure-ref _%klass100659%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100657%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100654%_ _%val100655%_)
        (##structure-set! _%klass100654%_ _%val100655%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100649%_ _%val100651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100649%_
           _%val100651%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100647%_)
        (##structure-ref _%klass100647%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100645%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100645%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100642%_ _%val100643%_)
        (##structure-set! _%klass100642%_ _%val100643%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100637%_ _%val100639%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100637%_
           _%val100639%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100635%_)
        (##structure-ref _%klass100635%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100633%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100633%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100630%_ _%val100631%_)
        (##structure-set! _%klass100630%_ _%val100631%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100625%_ _%val100627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100625%_
           _%val100627%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100623%_)
        (##structure-ref _%klass100623%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100621%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100621%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100618%_ _%val100619%_)
        (##structure-set! _%klass100618%_ _%val100619%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100613%_ _%val100615%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100613%_
           _%val100615%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100611%_)
        (##structure-ref _%klass100611%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100609%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100609%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100606%_ _%val100607%_)
        (##structure-set!
         _%klass100606%_
         _%val100607%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100601%_ _%val100603%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100601%_
           _%val100603%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100599%_)
        (##structure-ref _%klass100599%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100597%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100597%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100594%_ _%val100595%_)
        (##structure-set!
         _%klass100594%_
         _%val100595%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100589%_ _%val100591%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100589%_
           _%val100591%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100587%_)
        (##structure-ref _%klass100587%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100585%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100585%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100582%_ _%val100583%_)
        (##structure-set!
         _%klass100582%_
         _%val100583%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100577%_ _%val100579%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100577%_
           _%val100579%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100575%_)
        (##structure-ref _%klass100575%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100573%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100573%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100570%_ _%val100571%_)
        (##structure-set!
         _%klass100570%_
         _%val100571%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100565%_ _%val100567%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100565%_
           _%val100567%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100563%_)
        (##structure-ref _%klass100563%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100561%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100561%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100558%_ _%val100559%_)
        (##structure-set!
         _%klass100558%_
         _%val100559%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100553%_ _%val100555%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100553%_
           _%val100555%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100551%_)
        (##structure-ref _%klass100551%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100549%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100549%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100546%_ _%val100547%_)
        (##structure-set!
         _%klass100546%_
         _%val100547%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100541%_ _%val100543%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100541%_
           _%val100543%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100527%_ 'class))
            (let ((_%klass100531%_ _%klass100527%_))
              (__class-type-slot-list _%klass100531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100527%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100515%_)
        (let ((_%klass100518%_ _%klass100515%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100518%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100501%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100501%_ 'class))
            (let ((_%klass100505%_ _%klass100501%_))
              (__class-type-field-count _%klass100505%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100501%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100489%_)
        (let* ((_%klass100492%_ _%klass100489%_)
               (__tmp102522
                (let ((__tmp102523
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100492%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102523))))
          (declare (not safe))
          (##fx- __tmp102522 '1))))
    (define class-type-seal!
      (lambda (_%klass100475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100475%_ 'class))
            (let ((_%klass100479%_ _%klass100475%_))
              (__class-type-seal! _%klass100479%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100475%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100463%_)
        (let ((_%klass100466%_ _%klass100463%_))
          (let ((__tmp102524
                 (let ((__tmp102525
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100466%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102525))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100466%_
             __tmp102524
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100438%_ _%maybe-super-struct100439%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100438%_ 'class))
            (let ((_%maybe-sub-struct100443%_ _%maybe-sub-struct100438%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100439%_
                     'class))
                  (let ((_%maybe-super-struct100453%_
                         _%maybe-super-struct100439%_))
                    (__substruct?
                     _%maybe-sub-struct100443%_
                     _%maybe-super-struct100453%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100439%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100438%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100407%_ _%maybe-super-struct100408%_)
        (let* ((_%maybe-sub-struct100411%_ _%maybe-sub-struct100407%_)
               (_%maybe-super-struct100419%_ _%maybe-super-struct100408%_)
               (_%maybe-super-struct-id100428%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100419%_))))
          (let _%lp100430%_ ((_%super-struct100432%_
                              _%maybe-sub-struct100411%_))
            (if (not _%super-struct100432%_)
                '#f
                (if (eq? _%maybe-super-struct-id100428%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100432%_)))
                    '#t
                    (_%lp100430%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100432%_)))))))))
    (define base-struct/1
      (lambda (_%klass100402%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100402%_ 'class))
            (if (__class-type-struct? _%klass100402%_)
                _%klass100402%_
                (let () (declare (not safe)) (##type-super _%klass100402%_)))
            (if (not _%klass100402%_)
                '#f
                (error '"not a class or false" _%klass100402%_)))))
    (define base-struct/2
      (lambda (_%klass1100387%_ _%klass2100388%_)
        (let ((_%s1100390%_ (base-struct/1 _%klass1100387%_))
              (_%s2100391%_ (base-struct/1 _%klass2100388%_)))
          (if (or (not _%s1100390%_)
                  (and _%s2100391%_ (substruct? _%s1100390%_ _%s2100391%_)))
              _%s2100391%_
              (if (or (not _%s2100391%_)
                      (and _%s1100390%_
                           (substruct? _%s2100391%_ _%s1100390%_)))
                  _%s1100390%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100387%_
                         _%klass2100388%_
                         _%s1100390%_
                         _%s2100391%_))))))
    (define base-struct/list
      (lambda (_%all-supers100271%_)
        (let* ((_%all-supers100272100297%_ _%all-supers100271%_)
               (_%E100277100301%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100272100297%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100295100384%_ (lambda () '#f))
                (_%K100292100370%_
                 (lambda (_%x100368%_) (base-struct/1 _%x100368%_)))
                (_%K100287100347%_
                 (lambda (_%y100344%_ _%x100345%_)
                   (base-struct/2 _%x100345%_ _%y100344%_)))
                (_%K100278100308%_
                 (lambda (_%y100305%_ _%x100306%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100306%_ _%y100305%_)))))
            (let* ((_%__match102484102485%_
                    (lambda (_%hd100279100311%_ _%tl100280100313%_)
                      (let ((_%x100316%_ _%hd100279100311%_))
                        (letrec ((_%splice-rest100282100318%_
                                  (lambda (_%rest100286100325%_ _%y100327%_)
                                    (if (null? _%rest100286100325%_)
                                        (_%K100278100308%_
                                         _%y100327%_
                                         _%x100316%_)
                                        (_%E100277100301%_))))
                                 (_%splice-try100284100320%_
                                  (lambda (_%hd100285100329%_
                                           _%rest100286100331%_
                                           _%y100281100332%_)
                                    (let ((_%y100335%_ _%hd100285100329%_))
                                      (_%splice-loop100283100322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100286100331%_))
                                       (cons _%y100335%_ _%y100281100332%_)))))
                                 (_%splice-loop100283100322%_
                                  (lambda (_%rest100286100337%_
                                           _%y100281100338%_)
                                    (if (pair? _%rest100286100337%_)
                                        (_%splice-try100284100320%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100286100337%_))
                                         _%rest100286100337%_
                                         _%y100281100338%_)
                                        (_%splice-rest100282100318%_
                                         _%rest100286100337%_
                                         (reverse _%y100281100338%_))))))
                          (_%splice-loop100283100322%_
                           _%tl100280100313%_
                           '())))))
                   (_%try-match100274100380%_
                    (lambda ()
                      (if (pair? _%all-supers100272100297%_)
                          (let ((_%tl100294100375%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100272100297%_)))
                                (_%hd100293100373%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100272100297%_))))
                            (if (null? _%tl100294100375%_)
                                (let ((_%x100378%_ _%hd100293100373%_))
                                  (base-struct/1 _%x100378%_))
                                (if (pair? _%tl100294100375%_)
                                    (let ((_%tl100291100359%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100294100375%_)))
                                          (_%hd100290100357%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100294100375%_))))
                                      (if (null? _%tl100291100359%_)
                                          (let ((_%x100355%_
                                                 _%hd100293100373%_)
                                                (_%y100362%_
                                                 _%hd100290100357%_))
                                            (_%K100287100347%_
                                             _%y100362%_
                                             _%x100355%_))
                                          (_%__match102484102485%_
                                           _%hd100293100373%_
                                           _%tl100294100375%_)))
                                    (_%__match102484102485%_
                                     _%hd100293100373%_
                                     _%tl100294100375%_))))
                          (_%E100277100301%_)))))
              (if (null? _%all-supers100272100297%_)
                  (_%K100295100384%_)
                  (_%try-match100274100380%_)))))))
    (define base-struct
      (lambda _%all-supers100269%_ (base-struct/list _%all-supers100269%_)))
    (define find-super-constructor
      (lambda (_%super100220%_)
        (let _%lp100222%_ ((_%rest100224%_ _%super100220%_)
                           (_%constructor100225%_ '#f))
          (let* ((_%rest100226100234%_ _%rest100224%_)
                 (_%else100228100242%_ (lambda () _%constructor100225%_))
                 (_%K100230100257%_
                  (lambda (_%rest100245%_ _%hd100246%_)
                    (let ((_%$e100248%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100246%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100248%_
                          ((lambda (_%xconstructor100251%_)
                             (if (or (not _%constructor100225%_)
                                     (eq? _%constructor100225%_
                                          _%xconstructor100251%_))
                                 (_%lp100222%_
                                  _%rest100245%_
                                  _%xconstructor100251%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100225%_
                                        _%xconstructor100251%_)))
                           _%$e100248%_)
                          (_%lp100222%_
                           _%rest100245%_
                           _%constructor100225%_))))))
            (if (pair? _%rest100226100234%_)
                (let ((_%hd100231100260%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100226100234%_)))
                      (_%tl100232100262%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100226100234%_))))
                  (let* ((_%hd100265%_ _%hd100231100260%_)
                         (_%rest100267%_ _%tl100232100262%_))
                    (_%K100230100257%_ _%rest100267%_ _%hd100265%_)))
                (_%else100228100242%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100196%_ _%direct-slots100197%_)
        (let* ((_%next-slot100199%_ '1)
               (_%slot-table100201%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100203%_ '(__class))
               (_%process-slot100207%_
                (lambda (_%slot100205%_)
                  (if (symbol? _%slot100205%_)
                      '#!void
                      (error '"invalid slot name" _%slot100205%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100201%_
                              _%slot100205%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100201%_
                           _%slot100205%_
                           _%next-slot100199%_))
                        (let ((__tmp102526
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100205%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100201%_
                           __tmp102526
                           _%next-slot100199%_))
                        (set! _%r-slots100203%_
                              (cons _%slot100205%_ _%r-slots100203%_))
                        (set! _%next-slot100199%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100199%_ '1))))
                      '#!void)))
               (_%process-slots100213%_
                (lambda (_%g100208100210%_)
                  (for-each _%process-slot100207%_ _%g100208100210%_))))
          (let ((__tmp102528
                 (lambda (_%mixin100216%_)
                   (_%process-slots100213%_
                    (let ((__tmp102529
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100216%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102529 '())))))
                (__tmp102527 (reverse _%class-precedence-list100196%_)))
            (declare (not safe))
            (##for-each __tmp102528 __tmp102527))
          (_%process-slots100213%_ _%direct-slots100197%_)
          (let ((_%slot-vector100218%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100203%_)))))
            (values _%slot-vector100218%_ _%slot-table100201%_)))))
    (define make-class-type
      (lambda (_%id100121%_
               _%name100122%_
               _%direct-supers100123%_
               _%direct-slots100124%_
               _%properties100125%_
               _%constructor100126%_)
        (if (symbol? _%id100121%_)
            (let ((_%id100130%_ _%id100121%_))
              (if (symbol? _%name100122%_)
                  (let ((_%name100140%_ _%name100122%_))
                    (if (list? _%direct-supers100123%_)
                        (let ((_%direct-supers100150%_
                               _%direct-supers100123%_))
                          (if (list? _%direct-slots100124%_)
                              (let ((_%direct-slots100160%_
                                     _%direct-slots100124%_))
                                (if (list? _%properties100125%_)
                                    (let ((_%properties100170%_
                                           _%properties100125%_))
                                      (if ((lambda (_%$obj100179%_)
                                             (or (not _%$obj100179%_)
                                                 (symbol? _%$obj100179%_)))
                                           _%constructor100126%_)
                                          (let ((_%constructor100186%_
                                                 _%constructor100126%_))
                                            (__make-class-type
                                             _%id100130%_
                                             _%name100140%_
                                             _%direct-supers100150%_
                                             _%direct-slots100160%_
                                             _%properties100170%_
                                             _%constructor100186%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100126%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100125%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100124%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100123%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100122%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100121%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id99990%_
               _%name99991%_
               _%direct-supers99992%_
               _%direct-slots99993%_
               _%properties99994%_
               _%constructor99995%_)
        (let* ((_%id99998%_ _%id99990%_)
               (_%name100006%_ _%name99991%_)
               (_%direct-supers100014%_ _%direct-supers99992%_)
               (_%direct-slots100022%_ _%direct-slots99993%_)
               (_%properties100030%_ _%properties99994%_)
               (_%constructor100038%_ _%constructor99995%_))
          (let ((_%$e100050%_
                 (let ((__tmp102530
                        (lambda (_%$obj100047%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100047%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102530 _%direct-supers100014%_))))
            (if _%$e100050%_
                ((lambda (_%g100052100054%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100052100054%_))
                 _%$e100050%_)
                (let ((_%$e100057%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100014%_))))
                  (if _%$e100057%_
                      ((lambda (_%g100059100061%_)
                         (error '"Cannot extend final class"
                                _%g100059100061%_))
                       _%$e100057%_)
                      '#!void))))
          (let ((_g102531_ (compute-precedence-list _%direct-supers100014%_)))
            (begin
              (let ((_g102532_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102531_)
                           (##values-length _g102531_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102532_ 2)))
                    (error "Context expects 2 values" _g102532_)))
              (let ((_%precedence-list100064%_
                     (let () (declare (not safe)) (##values-ref _g102531_ 0)))
                    (_%struct-super100065%_
                     (let () (declare (not safe)) (##values-ref _g102531_ 1))))
                (let ((_g102533_
                       (compute-class-slots
                        _%precedence-list100064%_
                        _%direct-slots100022%_)))
                  (begin
                    (let ((_g102534_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102533_)
                                 (##values-length _g102533_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102534_ 2)))
                          (error "Context expects 2 values" _g102534_)))
                    (let ((_%slot-vector100067%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102533_ 0)))
                          (_%slot-table100068%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102533_ 1))))
                      (let* ((_%properties100070%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100022%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100014%_)
                                          _%properties100030%_)))
                             (_%constructor*100075%_
                              (let ((_%$e100072%_ _%constructor100038%_))
                                (if _%$e100072%_
                                    _%$e100072%_
                                    (find-super-constructor
                                     _%direct-supers100014%_))))
                             (_%precedence-list100118%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100070%_))
                                      (memq object::t
                                            _%precedence-list100064%_))
                                  _%precedence-list100064%_
                                  (let _%loop100080%_ ((_%tail100082%_
                                                        _%precedence-list100064%_)
                                                       (_%head100083%_ '()))
                                    (let* ((_%tail100084100092%_
                                            _%tail100082%_)
                                           (_%else100086100100%_
                                            (lambda ()
                                              (let ((__tmp102535
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102535
                                                 _%head100083%_))))
                                           (_%K100088100106%_
                                            (lambda (_%rest100103%_
                                                     _%hd100104%_)
                                              (if (eq? _%hd100104%_ t::t)
                                                  (let ((__tmp102536
                                                         (cons object::t
                                                               _%tail100082%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102536
                                                     _%head100083%_))
                                                  (_%loop100080%_
                                                   _%rest100103%_
                                                   (cons _%hd100104%_
                                                         _%head100083%_))))))
                                      (if (pair? _%tail100084100092%_)
                                          (let ((_%hd100089100109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100084100092%_)))
                                                (_%tl100090100111%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100084100092%_))))
                                            (let* ((_%hd100114%_
                                                    _%hd100089100109%_)
                                                   (_%rest100116%_
                                                    _%tl100090100111%_))
                                              (_%K100088100106%_
                                               _%rest100116%_
                                               _%hd100114%_)))
                                          (_%else100086100100%_)))))))
                        (make-class-type-descriptor
                         _%id99998%_
                         _%name100006%_
                         _%struct-super100065%_
                         _%precedence-list100118%_
                         _%slot-vector100067%_
                         _%properties100070%_
                         _%constructor*100075%_
                         _%slot-table100068%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass99976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99976%_ 'class))
            (let ((_%klass99980%_ _%klass99976%_))
              (__class-precedence-list _%klass99980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass99976%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99964%_)
        (let ((_%klass99967%_ _%klass99964%_))
          (cons _%klass99967%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99967%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99961%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99961%_))))
    (define make-class-predicate
      (lambda (_%klass99947%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99947%_ 'class))
            (let ((_%klass99951%_ _%klass99947%_))
              (__make-class-predicate _%klass99951%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99947%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99918%_)
        (let* ((_%klass99921%_ _%klass99918%_)
               (_%tid99930%_
                (let () (declare (not safe)) (##type-id _%klass99921%_))))
          (if (__class-type-final? _%klass99921%_)
              (lambda (_%g9993299934%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9993299934%_
                   _%tid99930%_)))
              (if (__class-type-struct? _%klass99921%_)
                  (lambda (_%g9993799939%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9993799939%_ _%tid99930%_)))
                  (lambda (_%g9994299944%_)
                    (__class-instance? _%klass99921%_ _%g9994299944%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99893%_ _%slot99894%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99893%_ 'class))
            (let ((_%klass99898%_ _%klass99893%_))
              (if (symbol? _%slot99894%_)
                  (let ((_%slot99908%_ _%slot99894%_))
                    (__make-class-slot-accessor _%klass99898%_ _%slot99908%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99894%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99893%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99861%_ _%slot99862%_)
        (let* ((_%klass99865%_ _%klass99861%_)
               (_%slot99873%_ _%slot99862%_)
               (_%field99882%_
                (let ((__tmp102537
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99865%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102537 _%slot99873%_ '#f))))
          (if (not _%field99882%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99865%_
                       'slot:
                       _%slot99873%_)
                '#!void)
              (if (__class-type-final? _%klass99865%_)
                  (make-final-slot-accessor
                   _%klass99865%_
                   _%slot99873%_
                   _%field99882%_)
                  (if (__class-type-struct? _%klass99865%_)
                      (make-struct-slot-accessor
                       _%klass99865%_
                       _%slot99873%_
                       _%field99882%_)
                      (if (let ((_%strukt99888%_
                                 (base-struct/1 _%klass99865%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99888%_
                                    'class))
                                 (let ((__tmp102538
                                        (let ((__tmp102539
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99888%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102539))))
                                   (declare (not safe))
                                   (##fx< _%field99882%_ __tmp102538))))
                          (make-struct-subclass-slot-accessor
                           _%klass99865%_
                           _%slot99873%_
                           _%field99882%_)
                          (make-class-cached-slot-accessor
                           _%klass99865%_
                           _%slot99873%_
                           _%field99882%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99836%_ _%slot99837%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99836%_ 'class))
            (let ((_%klass99841%_ _%klass99836%_))
              (if (symbol? _%slot99837%_)
                  (let ((_%slot99851%_ _%slot99837%_))
                    (__make-class-slot-mutator _%klass99841%_ _%slot99851%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99837%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99836%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99804%_ _%slot99805%_)
        (let* ((_%klass99808%_ _%klass99804%_)
               (_%slot99816%_ _%slot99805%_)
               (_%field99825%_
                (let ((__tmp102540
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99808%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102540 _%slot99816%_ '#f))))
          (if (not _%field99825%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99808%_
                       'slot:
                       _%slot99816%_)
                '#!void)
              (if (__class-type-final? _%klass99808%_)
                  (make-final-slot-mutator
                   _%klass99808%_
                   _%slot99816%_
                   _%field99825%_)
                  (if (__class-type-struct? _%klass99808%_)
                      (make-struct-slot-mutator
                       _%klass99808%_
                       _%slot99816%_
                       _%field99825%_)
                      (if (let ((_%strukt99831%_
                                 (base-struct/1 _%klass99808%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99831%_
                                    'class))
                                 (let ((__tmp102541
                                        (let ((__tmp102542
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99831%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102542))))
                                   (declare (not safe))
                                   (##fx< _%field99825%_ __tmp102541))))
                          (make-struct-subclass-slot-mutator
                           _%klass99808%_
                           _%slot99816%_
                           _%field99825%_)
                          (make-class-cached-slot-mutator
                           _%klass99808%_
                           _%slot99816%_
                           _%field99825%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99779%_ _%slot99780%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99779%_ 'class))
            (let ((_%klass99784%_ _%klass99779%_))
              (if (symbol? _%slot99780%_)
                  (let ((_%slot99794%_ _%slot99780%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99784%_
                     _%slot99794%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99780%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99779%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99747%_ _%slot99748%_)
        (let* ((_%klass99751%_ _%klass99747%_)
               (_%slot99759%_ _%slot99748%_)
               (_%field99768%_
                (let ((__tmp102543
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99751%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102543 _%slot99759%_ '#f))))
          (if (not _%field99768%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99751%_
                       'slot:
                       _%slot99759%_)
                '#!void)
              (if (__class-type-final? _%klass99751%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99751%_
                   _%slot99759%_
                   _%field99768%_)
                  (if (__class-type-struct? _%klass99751%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99751%_
                       _%slot99759%_
                       _%field99768%_)
                      (if (let ((_%strukt99774%_
                                 (base-struct/1 _%klass99751%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99774%_
                                    'class))
                                 (let ((__tmp102544
                                        (let ((__tmp102545
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99774%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102545))))
                                   (declare (not safe))
                                   (##fx< _%field99768%_ __tmp102544))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99751%_
                           _%slot99759%_
                           _%field99768%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99751%_
                           _%slot99759%_
                           _%field99768%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99722%_ _%slot99723%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99722%_ 'class))
            (let ((_%klass99727%_ _%klass99722%_))
              (if (symbol? _%slot99723%_)
                  (let ((_%slot99737%_ _%slot99723%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99727%_
                     _%slot99737%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99723%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99722%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99690%_ _%slot99691%_)
        (let* ((_%klass99694%_ _%klass99690%_)
               (_%slot99702%_ _%slot99691%_)
               (_%field99711%_
                (let ((__tmp102546
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99694%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102546 _%slot99702%_ '#f))))
          (if (not _%field99711%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99694%_
                       'slot:
                       _%slot99702%_)
                '#!void)
              (if (__class-type-final? _%klass99694%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99694%_
                   _%slot99702%_
                   _%field99711%_)
                  (if (__class-type-struct? _%klass99694%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99694%_
                       _%slot99702%_
                       _%field99711%_)
                      (if (let ((_%strukt99717%_
                                 (base-struct/1 _%klass99694%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99717%_
                                    'class))
                                 (let ((__tmp102547
                                        (let ((__tmp102548
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99717%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102548))))
                                   (declare (not safe))
                                   (##fx< _%field99711%_ __tmp102547))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99694%_
                           _%slot99702%_
                           _%field99711%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99694%_
                           _%slot99702%_
                           _%field99711%_))))))))
    (define not-an-instance__%
      (lambda (_%object99674%_ _%class99675%_ _%slot99676%_)
        (apply error
               '"not an instance"
               'object:
               _%object99674%_
               'class:
               _%class99675%_
               (if _%slot99676%_ (cons 'slot: (cons _%slot99676%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99681%_ _%class99682%_)
        (let ((_%slot99684%_ '#f))
          (not-an-instance__% _%object99681%_ _%class99682%_ _%slot99684%_))))
    (define not-an-instance
      (lambda _g102550_
        (let ((_g102549_ (let () (declare (not safe)) (##length _g102550_))))
          (cond ((let () (declare (not safe)) (##fx= _g102549_ 2))
                 (apply not-an-instance__0 _g102550_))
                ((let () (declare (not safe)) (##fx= _g102549_ 3))
                 (apply not-an-instance__% _g102550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102550_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99667%_ _%slot99668%_ _%field99669%_)
        (lambda (_%obj99671%_)
          (##direct-structure-ref
           _%obj99671%_
           _%field99669%_
           _%klass99667%_
           _%slot99668%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99660%_ _%slot99661%_ _%field99662%_)
        (lambda (_%obj99664%_ _%val99665%_)
          (##direct-structure-set!
           _%obj99664%_
           _%val99665%_
           _%field99662%_
           _%klass99660%_
           _%slot99661%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99654%_ _%slot99655%_ _%field99656%_)
        (lambda (_%obj99658%_)
          (##structure-ref
           _%obj99658%_
           _%field99656%_
           _%klass99654%_
           _%slot99655%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99647%_ _%slot99648%_ _%field99649%_)
        (lambda (_%obj99651%_ _%val99652%_)
          (##structure-set!
           _%obj99651%_
           _%val99652%_
           _%field99649%_
           _%klass99647%_
           _%slot99648%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99641%_ _%slot99642%_ _%field99643%_)
        (lambda (_%obj99645%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99645%_
             _%field99643%_
             _%klass99641%_
             _%slot99642%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99634%_ _%slot99635%_ _%field99636%_)
        (lambda (_%obj99638%_ _%val99639%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99638%_
             _%val99639%_
             _%field99636%_
             _%klass99634%_
             _%slot99635%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99628%_ _%slot99629%_ _%field99630%_)
        (lambda (_%obj99632%_)
          (if (class-instance? _%klass99628%_ _%obj99632%_)
              (unchecked-slot-ref _%obj99632%_ _%field99630%_)
              (not-an-instance__%
               _%obj99632%_
               _%klass99628%_
               _%slot99629%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99621%_ _%slot99622%_ _%field99623%_)
        (lambda (_%obj99625%_ _%val99626%_)
          (if (class-instance? _%klass99621%_ _%obj99625%_)
              (unchecked-field-set! _%obj99625%_ _%field99623%_ _%val99626%_)
              (not-an-instance__%
               _%obj99625%_
               _%klass99621%_
               _%slot99622%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99612%_ _%slot99613%_ _%field99614%_)
        (lambda (_%obj99616%_)
          (if (let ((__tmp102551
                     (let () (declare (not safe)) (##type-id _%klass99612%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99616%_ __tmp102551))
              (unchecked-field-ref _%obj99616%_ _%field99614%_)
              (if (class-instance? _%klass99612%_ _%obj99616%_)
                  (unchecked-slot-ref _%obj99616%_ _%slot99613%_)
                  (not-an-instance__%
                   _%obj99616%_
                   _%klass99612%_
                   _%slot99613%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99602%_ _%slot99603%_ _%field99604%_)
        (lambda (_%obj99606%_ _%val99607%_)
          (if (let ((__tmp102552
                     (let () (declare (not safe)) (##type-id _%klass99602%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99606%_ __tmp102552))
              (unchecked-field-set! _%obj99606%_ _%field99604%_ _%val99607%_)
              (if (class-instance? _%klass99602%_ _%obj99606%_)
                  (unchecked-slot-set! _%obj99606%_ _%slot99603%_ _%val99607%_)
                  (not-an-instance__%
                   _%obj99606%_
                   _%klass99602%_
                   _%slot99603%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99596%_ _%slot99597%_ _%field99598%_)
        (lambda (_%obj99600%_)
          (if (let ((__tmp102553
                     (let () (declare (not safe)) (##type-id _%klass99596%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99600%_ __tmp102553))
              (unchecked-field-ref _%obj99600%_ _%field99598%_)
              (unchecked-slot-ref _%obj99600%_ _%slot99597%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99589%_ _%slot99590%_ _%field99591%_)
        (lambda (_%obj99593%_ _%val99594%_)
          (if (let ((__tmp102554
                     (let () (declare (not safe)) (##type-id _%klass99589%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99593%_ __tmp102554))
              (unchecked-field-set! _%obj99593%_ _%field99591%_ _%val99594%_)
              (unchecked-slot-set! _%obj99593%_ _%slot99590%_ _%val99594%_)))))
    (define class-slot-offset
      (lambda (_%klass99564%_ _%slot99565%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99564%_ 'class))
            (let ((_%klass99569%_ _%klass99564%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99565%_))
                  (let ((_%slot99579%_ _%slot99565%_))
                    (__class-slot-offset _%klass99569%_ _%slot99579%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99565%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99564%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99543%_ _%slot99544%_)
        (let* ((_%klass99547%_ _%klass99543%_)
               (_%slot99555%_ _%slot99544%_)
               (__tmp102555
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99547%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102555 _%slot99555%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99517%_ _%obj99518%_ _%slot99519%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99517%_ 'class))
            (let ((_%klass99523%_ _%klass99517%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99519%_))
                  (let ((_%slot99533%_ _%slot99519%_))
                    (__class-slot-ref
                     _%klass99523%_
                     _%obj99518%_
                     _%slot99533%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99519%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99517%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99493%_ _%obj99494%_ _%slot99495%_)
        (let* ((_%klass99498%_ _%klass99493%_) (_%slot99506%_ _%slot99495%_))
          (if (__class-instance? _%klass99498%_ _%obj99494%_)
              (let ((_%off99515%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99494%_))
                      _%slot99506%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99494%_
                 _%off99515%_
                 _%klass99498%_
                 _%slot99506%_))
              (not-an-instance__0 _%obj99494%_ _%klass99498%_)))))
    (define class-slot-set!
      (lambda (_%klass99466%_ _%obj99467%_ _%slot99468%_ _%val99469%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99466%_ 'class))
            (let ((_%klass99473%_ _%klass99466%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99468%_))
                  (let ((_%slot99483%_ _%slot99468%_))
                    (__class-slot-set!
                     _%klass99473%_
                     _%obj99467%_
                     _%slot99483%_
                     _%val99469%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99468%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99466%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99441%_ _%obj99442%_ _%slot99443%_ _%val99444%_)
        (let* ((_%klass99447%_ _%klass99441%_) (_%slot99455%_ _%slot99443%_))
          (if (__class-instance? _%klass99447%_ _%obj99442%_)
              (let ((_%off99464%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99442%_))
                      _%slot99455%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99442%_
                 _%val99444%_
                 _%off99464%_
                 _%klass99447%_
                 _%slot99455%_))
              (not-an-instance__0 _%obj99442%_ _%klass99447%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99438%_ _%off99439%_)
        (let ((__tmp102556
               (let () (declare (not safe)) (##structure-type _%obj99438%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj99438%_
           _%off99439%_
           __tmp102556
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99434%_ _%off99435%_ _%val99436%_)
        (let ((__tmp102557
               (let () (declare (not safe)) (##structure-type _%obj99434%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99434%_
           _%val99436%_
           _%off99435%_
           __tmp102557
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99431%_ _%slot99432%_)
        (unchecked-field-ref
         _%obj99431%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99431%_))
          _%slot99432%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99427%_ _%slot99428%_ _%val99429%_)
        (unchecked-field-set!
         _%obj99427%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99427%_))
          _%slot99428%_)
         _%val99429%_)))
    (define slot-ref__%
      (lambda (_%obj99389%_ _%slot99390%_ _%E99391%_)
        (if (symbol? _%slot99390%_)
            (let ((_%slot99395%_ _%slot99390%_))
              (if (procedure? _%E99391%_)
                  (let ((_%E99405%_ _%E99391%_))
                    (__slot-ref__% _%obj99389%_ _%slot99395%_ _%E99405%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99390%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99418%_ _%slot99419%_)
        (let ((_%E99421%_ __slot-error))
          (slot-ref__% _%obj99418%_ _%slot99419%_ _%E99421%_))))
    (define slot-ref
      (lambda _g102559_
        (let ((_g102558_ (let () (declare (not safe)) (##length _g102559_))))
          (cond ((let () (declare (not safe)) (##fx= _g102558_ 2))
                 (apply slot-ref__0 _g102559_))
                ((let () (declare (not safe)) (##fx= _g102558_ 3))
                 (apply slot-ref__% _g102559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102559_))))))
    (define __slot-ref__%
      (lambda (_%obj99345%_ _%slot99346%_ _%E99347%_)
        (let* ((_%slot99350%_ _%slot99346%_)
               (_%E99358%_ _%E99347%_)
               (_%klass99367%_ (class-of _%obj99345%_))
               (_%$e99370%_
                (__class-slot-offset _%klass99367%_ _%slot99350%_)))
          (if _%$e99370%_
              ((lambda (_%off99373%_)
                 (unchecked-field-ref _%obj99345%_ _%off99373%_))
               _%$e99370%_)
              (let ()
                (declare (not safe))
                (_%E99358%_ _%obj99345%_ _%slot99350%_))))))
    (define __slot-ref__0
      (lambda (_%obj99379%_ _%slot99380%_)
        (let ((_%E99382%_ __slot-error))
          (__slot-ref__% _%obj99379%_ _%slot99380%_ _%E99382%_))))
    (define __slot-ref
      (lambda _g102561_
        (let ((_g102560_ (let () (declare (not safe)) (##length _g102561_))))
          (cond ((let () (declare (not safe)) (##fx= _g102560_ 2))
                 (apply __slot-ref__0 _g102561_))
                ((let () (declare (not safe)) (##fx= _g102560_ 3))
                 (apply __slot-ref__% _g102561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102561_))))))
    (define slot-set!__%
      (lambda (_%obj99303%_ _%slot99304%_ _%val99305%_ _%E99306%_)
        (if (symbol? _%slot99304%_)
            (let ((_%slot99310%_ _%slot99304%_))
              (if (procedure? _%E99306%_)
                  (let ((_%E99320%_ _%E99306%_))
                    (__slot-set!__%
                     _%obj99303%_
                     _%slot99310%_
                     _%val99305%_
                     _%E99320%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99306%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99304%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99333%_ _%slot99334%_ _%val99335%_)
        (let ((_%E99337%_ __slot-error))
          (slot-set!__% _%obj99333%_ _%slot99334%_ _%val99335%_ _%E99337%_))))
    (define slot-set!
      (lambda _g102563_
        (let ((_g102562_ (let () (declare (not safe)) (##length _g102563_))))
          (cond ((let () (declare (not safe)) (##fx= _g102562_ 3))
                 (apply slot-set!__0 _g102563_))
                ((let () (declare (not safe)) (##fx= _g102562_ 4))
                 (apply slot-set!__% _g102563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102563_))))))
    (define __slot-set!__%
      (lambda (_%obj99256%_ _%slot99257%_ _%val99258%_ _%E99259%_)
        (let* ((_%slot99262%_ _%slot99257%_)
               (_%E99270%_ _%E99259%_)
               (_%klass99279%_ (class-of _%obj99256%_))
               (_%$e99282%_
                (__class-slot-offset _%klass99279%_ _%slot99262%_)))
          (if _%$e99282%_
              ((lambda (_%off99285%_)
                 (unchecked-field-set! _%obj99256%_ _%off99285%_ _%val99258%_))
               _%$e99282%_)
              (let ()
                (declare (not safe))
                (_%E99270%_ _%obj99256%_ _%slot99262%_))))))
    (define __slot-set!__0
      (lambda (_%obj99291%_ _%slot99292%_ _%val99293%_)
        (let ((_%E99295%_ __slot-error))
          (__slot-set!__%
           _%obj99291%_
           _%slot99292%_
           _%val99293%_
           _%E99295%_))))
    (define __slot-set!
      (lambda _g102565_
        (let ((_g102564_ (let () (declare (not safe)) (##length _g102565_))))
          (cond ((let () (declare (not safe)) (##fx= _g102564_ 3))
                 (apply __slot-set!__0 _g102565_))
                ((let () (declare (not safe)) (##fx= _g102564_ 4))
                 (apply __slot-set!__% _g102565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102565_))))))
    (define __slot-error
      (lambda (_%obj99252%_ _%slot99253%_)
        (error '"Cannot find slot"
               'object:
               _%obj99252%_
               'slot:
               _%slot99253%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99227%_ _%maybe-super-class99228%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99227%_ 'class))
            (let ((_%maybe-sub-class99232%_ _%maybe-sub-class99227%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99228%_
                     'class))
                  (let ((_%maybe-super-class99242%_
                         _%maybe-super-class99228%_))
                    (__subclass?
                     _%maybe-sub-class99232%_
                     _%maybe-super-class99242%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99228%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99227%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99199%_ _%maybe-super-class99200%_)
        (let* ((_%maybe-sub-class99203%_ _%maybe-sub-class99199%_)
               (_%maybe-super-class99211%_ _%maybe-super-class99200%_)
               (_%maybe-super-class-id99220%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99211%_)))
               (_%$e99222%_
                (eq? _%maybe-super-class-id99220%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99203%_)))))
          (if _%$e99222%_
              _%$e99222%_
              (let ((__tmp102567
                     (lambda (_%super-class99225%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99225%_))
                            _%maybe-super-class-id99220%_)))
                    (__tmp102566
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99203%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102567 __tmp102566))))))
    (define object?
      (lambda (_%o99196%_)
        (if (let () (declare (not safe)) (##structure? _%o99196%_))
            (let ((__tmp102568
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99196%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102568 'class))
            '#f)))
    (define object-type
      (lambda (_%o99191%_)
        (if (let () (declare (not safe)) (##structure? _%o99191%_))
            (let ((_%klass99194%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99191%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99194%_ 'class))
                  _%klass99194%_
                  (begin
                    (error '"not an object" _%o99191%_ _%klass99194%_)
                    '#!void)))
            (begin (error '"not an object" _%o99191%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99176%_ _%obj99177%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99176%_ 'class))
            (let ((_%klass99181%_ _%klass99176%_))
              (__direct-instance? _%klass99181%_ _%obj99177%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99176%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99163%_ _%obj99164%_)
        (let* ((_%klass99167%_ _%klass99163%_)
               (__tmp102569
                (let () (declare (not safe)) (##type-id _%klass99167%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99164%_ __tmp102569))))
    (define immediate-instance-of?
      (lambda (_%klass99159%_ _%obj99160%_)
        (if (let () (declare (not safe)) (##structure? _%obj99160%_))
            (eq? _%klass99159%_
                 (let () (declare (not safe)) (##structure-type _%obj99160%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99144%_ _%obj99145%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99144%_ 'class))
            (let ((_%klass99149%_ _%klass99144%_))
              (__struct-instance? _%klass99149%_ _%obj99145%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99144%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99131%_ _%obj99132%_)
        (let* ((_%klass99135%_ _%klass99131%_)
               (__tmp102570
                (let () (declare (not safe)) (##type-id _%klass99135%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99132%_ __tmp102570))))
    (define class-instance?
      (lambda (_%klass99116%_ _%obj99117%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99116%_ 'class))
            (let ((_%klass99121%_ _%klass99116%_))
              (__class-instance? _%klass99121%_ _%obj99117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99116%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99101%_ _%obj99102%_)
        (let* ((_%klass99105%_ _%klass99101%_)
               (_%type99114%_ (class-of _%obj99102%_)))
          (__subclass? _%type99114%_ _%klass99105%_))))
    (define make-object
      (lambda (_%klass99076%_ _%k99077%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99076%_ 'class))
            (let ((_%klass99081%_ _%klass99076%_))
              (if (fixnum? _%k99077%_)
                  (let ((_%k99091%_ _%k99077%_))
                    (__make-object _%klass99081%_ _%k99091%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99077%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99076%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99053%_ _%k99054%_)
        (let* ((_%klass99057%_ _%klass99053%_) (_%k99065%_ _%k99054%_))
          (if (__class-type-system? _%klass99057%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99057%_)
                '#!void)
              (let ((_%obj99074%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99057%_ _%k99065%_))))
                (object-fill! _%obj99074%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99038%_ _%fill99039%_)
        (if '#t
            (let ((_%obj99043%_ _%obj99038%_))
              (__object-fill! _%obj99043%_ _%fill99039%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99038%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99020%_ _%fill99021%_)
        (let ((_%obj99024%_ _%obj99020%_))
          (let _%loop99033%_ ((_%i99035%_
                               (let ((__tmp102571
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99024%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102571 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99035%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99024%_
                     _%fill99021%_
                     _%i99035%_
                     '#f
                     '#f))
                  (_%loop99033%_
                   (let () (declare (not safe)) (##fx- _%i99035%_ '1))))
                _%obj99024%_)))))
    (define new-instance
      (lambda (_%klass99006%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99006%_ 'class))
            (let ((_%klass99010%_ _%klass99006%_))
              (__new-instance _%klass99010%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99006%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass98994%_)
        (let* ((_%klass98997%_ _%klass98994%_)
               (__obj102486
                (let ((__tmp102572
                       (let ((__tmp102573
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass98997%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102573))))
                  (declare (not safe))
                  (##make-structure _%klass98997%_ __tmp102572))))
          (object-fill! __obj102486 '#f)
          __obj102486)))
    (define make-instance
      (lambda (_%klass98979%_ . _%args98980%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98979%_ 'class))
            (let ((_%klass98984%_ _%klass98979%_))
              (declare (not safe))
              (##apply __make-instance _%klass98984%_ _%args98980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass98979%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98951%_ . _%args98952%_)
        (let* ((_%klass98955%_ _%klass98951%_)
               (_%$e98964%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98955%_ '10 '#f '#f))))
          (if _%$e98964%_
              ((lambda (_%kons-id98967%_)
                 (let ((_%obj98969%_ (__new-instance _%klass98955%_)))
                   (___constructor-init!
                    _%klass98955%_
                    _%kons-id98967%_
                    _%obj98969%_
                    _%args98952%_)
                   _%obj98969%_))
               _%$e98964%_)
              (if (__class-type-metaclass? _%klass98955%_)
                  (let ((_%obj98972%_ (__new-instance _%klass98955%_)))
                    (__metaclass-instance-init!
                     _%klass98955%_
                     _%obj98972%_
                     _%args98952%_)
                    _%obj98972%_)
                  (if (__class-type-struct? _%klass98955%_)
                      (if (let ((__tmp102575
                                 (__class-type-field-count _%klass98955%_))
                                (__tmp102574
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98952%_))))
                            (declare (not safe))
                            (##fx= __tmp102575 __tmp102574))
                          (apply ##structure _%klass98955%_ _%args98952%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98955%_
                                   'slots:
                                   (__class-type-slot-list _%klass98955%_)
                                   'args:
                                   _%args98952%_)
                            '#!void))
                      (let ((_%obj98975%_ (__new-instance _%klass98955%_)))
                        (___class-instance-init!
                         _%klass98955%_
                         _%obj98975%_
                         _%args98952%_)
                        _%obj98975%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98936%_ . _%args98937%_)
        (if '#t
            (let ((_%obj98941%_ _%obj98936%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98941%_ _%args98937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98936%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98923%_ . _%args98924%_)
        (let ((_%obj98927%_ _%obj98923%_))
          (if (let ((__tmp102577
                     (let () (declare (not safe)) (##length _%args98924%_)))
                    (__tmp102576
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98927%_))))
                (declare (not safe))
                (##fx< __tmp102577 __tmp102576))
              (___struct-instance-init! _%obj98927%_ _%args98924%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98927%_
                     'args:
                     _%args98924%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98882%_ _%args98883%_)
        (let _%lp98885%_ ((_%k98887%_ '1) (_%rest98888%_ _%args98883%_))
          (let* ((_%rest9888998897%_ _%rest98888%_)
                 (_%else9889198905%_ (lambda () _%obj98882%_))
                 (_%K9889398911%_
                  (lambda (_%rest98908%_ _%hd98909%_)
                    (unchecked-field-set! _%obj98882%_ _%k98887%_ _%hd98909%_)
                    (_%lp98885%_
                     (let () (declare (not safe)) (##fx+ _%k98887%_ '1))
                     _%rest98908%_))))
            (if (pair? _%rest9888998897%_)
                (let ((_%hd9889498914%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9888998897%_)))
                      (_%tl9889598916%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9888998897%_))))
                  (let* ((_%hd98919%_ _%hd9889498914%_)
                         (_%rest98921%_ _%tl9889598916%_))
                    (_%K9889398911%_ _%rest98921%_ _%hd98919%_)))
                (_%else9889198905%_))))))
    (define class-instance-init!
      (lambda (_%obj98867%_ . _%args98868%_)
        (if '#t
            (let ((_%obj98872%_ _%obj98867%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98872%_ _%args98868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98867%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98854%_ . _%args98855%_)
        (let ((_%obj98858%_ _%obj98854%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98858%_))
           _%obj98858%_
           _%args98855%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98796%_ _%obj98797%_ _%args98798%_)
        (let _%lp98800%_ ((_%rest98802%_ _%args98798%_))
          (let* ((_%rest9880398813%_ _%rest98802%_)
                 (_%else9880598821%_
                  (lambda ()
                    (if (null? _%rest98802%_)
                        _%obj98797%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98796%_
                               'rest:
                               _%rest98802%_))))
                 (_%K9880798835%_
                  (lambda (_%rest98824%_ _%val98825%_ _%key98826%_)
                    (if (keyword? _%key98826%_)
                        (let ((_%$e98829%_
                               (__class-slot-offset
                                _%klass98796%_
                                _%key98826%_)))
                          (if _%$e98829%_
                              ((lambda (_%off98832%_)
                                 (unchecked-field-set!
                                  _%obj98797%_
                                  _%off98832%_
                                  _%val98825%_)
                                 (_%lp98800%_ _%rest98824%_))
                               _%$e98829%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98796%_
                                     'slot:
                                     _%key98826%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98826%_)))))
            (if (pair? _%rest9880398813%_)
                (let ((_%hd9880898838%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9880398813%_)))
                      (_%tl9880998840%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9880398813%_))))
                  (let ((_%key98843%_ _%hd9880898838%_))
                    (if (pair? _%tl9880998840%_)
                        (let ((_%hd9881098845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9880998840%_)))
                              (_%tl9881198847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9880998840%_))))
                          (let* ((_%val98850%_ _%hd9881098845%_)
                                 (_%rest98852%_ _%tl9881198847%_))
                            (_%K9880798835%_
                             _%rest98852%_
                             _%val98850%_
                             _%key98843%_)))
                        (_%else9880598821%_))))
                (_%else9880598821%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98792%_ _%obj98793%_ _%args98794%_)
        (apply call-method
               _%klass98792%_
               'instance-init!
               _%obj98793%_
               _%args98794%_)))
    (define constructor-init!
      (lambda (_%klass98755%_ _%kons-id98756%_ _%obj98757%_ . _%args98758%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98755%_ 'class))
            (let ((_%klass98762%_ _%klass98755%_))
              (if (symbol? _%kons-id98756%_)
                  (let ((_%kons-id98772%_ _%kons-id98756%_))
                    (if '#t
                        (let ((_%obj98782%_ _%obj98757%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98762%_
                                   _%kons-id98772%_
                                   _%obj98782%_
                                   _%args98758%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98757%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98756%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98755%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98724%_ _%kons-id98725%_ _%obj98726%_ . _%args98727%_)
        (let* ((_%klass98730%_ _%klass98724%_)
               (_%kons-id98738%_ _%kons-id98725%_)
               (_%obj98746%_ _%obj98726%_))
          (___constructor-init!
           _%klass98730%_
           _%kons-id98738%_
           _%obj98746%_
           _%args98727%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98713%_ _%kons-id98714%_ _%obj98715%_ _%args98716%_)
        (let ((_%$e98718%_
               (__find-method _%klass98713%_ _%obj98715%_ _%kons-id98714%_)))
          (if _%$e98718%_
              ((lambda (_%kons98721%_)
                 (apply _%kons98721%_ _%obj98715%_ _%args98716%_)
                 _%obj98715%_)
               _%$e98718%_)
              (error '"missing constructor"
                     'class:
                     _%klass98713%_
                     'method:
                     _%kons-id98714%_)))))
    (define struct-copy
      (lambda (_%struct98699%_)
        (if '#t
            (let ((_%struct98703%_ _%struct98699%_))
              (__struct-copy _%struct98703%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98699%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98687%_)
        (let ((_%struct98690%_ _%struct98687%_))
          (declare (not safe))
          (##structure-copy _%struct98690%_))))
    (define struct->list
      (lambda (_%obj98673%_)
        (if '#t
            (let ((_%obj98677%_ _%obj98673%_)) (__struct->list _%obj98677%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98673%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98661%_)
        (let ((_%obj98664%_ _%obj98661%_))
          (declare (not safe))
          (##vector->list _%obj98664%_))))
    (define class->list
      (lambda (_%obj98647%_)
        (if '#t
            (let ((_%obj98651%_ _%obj98647%_)) (__class->list _%obj98651%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj98647%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98623%_)
        (let* ((_%obj98626%_ _%obj98623%_)
               (_%klass98635%_
                (let () (declare (not safe)) (##structure-type _%obj98626%_)))
               (_%slot-vector98637%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98635%_ '7 '#f '#f))))
          (let _%loop98639%_ ((_%index98641%_
                               (let ((__tmp102578
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98637%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102578 '1)))
                              (_%plist98642%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98641%_ '1))
                (cons _%klass98635%_ _%plist98642%_)
                (let ((_%slot98645%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98637%_ _%index98641%_))))
                  (_%loop98639%_
                   (let () (declare (not safe)) (##fx- _%index98641%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98645%_))
                         (cons (unchecked-field-ref
                                _%obj98626%_
                                _%index98641%_)
                               _%plist98642%_)))))))))
    (define call-method
      (lambda (_%obj98607%_ _%id98608%_ . _%args98609%_)
        (if (symbol? _%id98608%_)
            (let ((_%id98613%_ _%id98608%_))
              (declare (not safe))
              (##apply __call-method _%obj98607%_ _%id98613%_ _%args98609%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id98608%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98576%_ _%id98577%_ . _%args98578%_)
        (let* ((_%id98581%_ _%id98577%_)
               (_%$e98590%_ (__method-ref _%obj98576%_ _%id98581%_)))
          (if _%$e98590%_
              ((lambda (_%method98593%_)
                 (let ((_%method98595%_ _%method98593%_))
                   (apply _%method98595%_ _%obj98576%_ _%args98578%_)))
               _%$e98590%_)
              (error '"cannot find method"
                     'object:
                     _%obj98576%_
                     'method:
                     _%id98581%_)))))
    (define method-ref
      (lambda (_%obj98561%_ _%id98562%_)
        (if (symbol? _%id98562%_)
            (let ((_%id98566%_ _%id98562%_))
              (__method-ref _%obj98561%_ _%id98566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id98562%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98548%_ _%id98549%_)
        (let ((_%id98552%_ _%id98549%_))
          (__find-method (class-of _%obj98548%_) _%obj98548%_ _%id98552%_))))
    (define checked-method-ref
      (lambda (_%obj98541%_ _%id98542%_)
        (let ((_%$e98545%_ (method-ref _%obj98541%_ _%id98542%_)))
          (if _%$e98545%_
              _%$e98545%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98541%_
                       'method:
                       _%id98542%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98526%_ _%id98527%_)
        (if (symbol? _%id98527%_)
            (let ((_%id98531%_ _%id98527%_))
              (__bound-method-ref _%obj98526%_ _%id98531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id98527%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98494%_ _%id98495%_)
        (let* ((_%id98498%_ _%id98495%_)
               (_%$e98507%_ (__method-ref _%obj98494%_ _%id98498%_)))
          (if _%$e98507%_
              ((lambda (_%method98510%_)
                 (let ((_%method98512%_ _%method98510%_))
                   (lambda _%args98523%_
                     (apply _%method98512%_ _%obj98494%_ _%args98523%_))))
               _%$e98507%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98479%_ _%id98480%_)
        (if (symbol? _%id98480%_)
            (let ((_%id98484%_ _%id98480%_))
              (__checked-bound-method-ref _%obj98479%_ _%id98484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id98480%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98462%_ _%id98463%_)
        (let* ((_%id98466%_ _%id98463%_)
               (_%method98475%_ (checked-method-ref _%obj98462%_ _%id98466%_)))
          (lambda _%args98477%_
            (apply _%method98475%_ _%obj98462%_ _%args98477%_)))))
    (define find-method
      (lambda (_%klass98436%_ _%obj98437%_ _%id98438%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98436%_ 'class))
            (let ((_%klass98442%_ _%klass98436%_))
              (if (symbol? _%id98438%_)
                  (let ((_%id98452%_ _%id98438%_))
                    (__find-method _%klass98442%_ _%obj98437%_ _%id98452%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98438%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass98436%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98409%_ _%obj98410%_ _%id98411%_)
        (let* ((_%klass98414%_ _%klass98409%_)
               (_%id98422%_ _%id98411%_)
               (_%$e98431%_
                (__direct-method-ref _%klass98414%_ _%obj98410%_ _%id98422%_)))
          (if _%$e98431%_
              _%$e98431%_
              (if (__class-type-sealed? _%klass98414%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98414%_
                   _%obj98410%_
                   _%id98422%_))))))
    (define mixin-find-method
      (lambda (_%mixins98393%_ _%obj98394%_ _%id98395%_)
        (if (symbol? _%id98395%_)
            (let ((_%id98399%_ _%id98395%_))
              (__mixin-find-method _%mixins98393%_ _%obj98394%_ _%id98399%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id98395%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98375%_ _%obj98376%_ _%id98377%_)
        (let* ((_%id98380%_ _%id98377%_)
               (__tmp102579
                (lambda (_%g9838898390%_)
                  (direct-method-ref
                   _%g9838898390%_
                   _%obj98376%_
                   _%id98380%_))))
          (declare (not safe))
          (__ormap1 __tmp102579 _%mixins98375%_))))
    (define direct-method-ref
      (lambda (_%klass98349%_ _%obj98350%_ _%id98351%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98349%_ 'class))
            (let ((_%klass98355%_ _%klass98349%_))
              (if (symbol? _%id98351%_)
                  (let ((_%id98365%_ _%id98351%_))
                    (__direct-method-ref
                     _%klass98355%_
                     _%obj98350%_
                     _%id98365%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98351%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass98349%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98303%_ _%obj98304%_ _%id98305%_)
        (let* ((_%klass98308%_ _%klass98303%_) (_%id98316%_ _%id98305%_))
          (letrec ((_%metaclass-resolve-method98325%_
                    (lambda ()
                      (let ((__method102487
                             (__method-ref _%klass98308%_ 'direct-method-ref)))
                        (if __method102487
                            (let ()
                              (declare (not safe))
                              (__method102487
                               _%klass98308%_
                               _%obj98304%_
                               _%id98316%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98308%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98326%_
                    (lambda ()
                      (let ((_%method98346%_
                             (_%metaclass-resolve-method98325%_)))
                        (let ((__tmp102581
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98308%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102580
                               (if _%method98346%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102581
                           _%id98316%_
                           __tmp102580))
                        _%method98346%_))))
            (let ((_%$e98328%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98308%_ '11 '#f '#f))))
              (if _%$e98328%_
                  ((lambda (_%ht98331%_)
                     (let ((_%method98333%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98331%_
                               _%id98316%_
                               '#f))))
                       (if (procedure? _%method98333%_)
                           _%method98333%_
                           (if (__class-type-metaclass? _%klass98308%_)
                               (let ((_%$e98337%_ _%method98333%_))
                                 (if (eq? 'resolved _%$e98337%_)
                                     (_%metaclass-resolve-method98325%_)
                                     (if (eq? 'unknown _%$e98337%_)
                                         '#f
                                         (_%metaclass-resolve-method!98326%_))))
                               '#f))))
                   _%$e98328%_)
                  (if (__class-type-metaclass? _%klass98308%_)
                      (let ((_%tab98342%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98308%_
                           _%tab98342%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98326%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98277%_ _%obj98278%_ _%id98279%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98277%_ 'class))
            (let ((_%klass98283%_ _%klass98277%_))
              (if (symbol? _%id98279%_)
                  (let ((_%id98293%_ _%id98279%_))
                    (__mixin-method-ref
                     _%klass98283%_
                     _%obj98278%_
                     _%id98293%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98279%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass98277%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98255%_ _%obj98256%_ _%id98257%_)
        (let* ((_%klass98260%_ _%klass98255%_) (_%id98268%_ _%id98257%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98260%_ '6 '#f '#f))
           _%obj98256%_
           _%id98268%_))))
    (define bind-method!__%
      (lambda (_%klass98214%_ _%id98215%_ _%proc98216%_ _%rebind?98217%_)
        (if (symbol? _%id98215%_)
            (let ((_%id98221%_ _%id98215%_))
              (if (procedure? _%proc98216%_)
                  (let ((_%proc98231%_ _%proc98216%_))
                    (__bind-method!__%
                     _%klass98214%_
                     _%id98221%_
                     _%proc98231%_
                     _%rebind?98217%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98216%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id98215%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98244%_ _%id98245%_ _%proc98246%_)
        (let ((_%rebind?98248%_ '#f))
          (bind-method!__%
           _%klass98244%_
           _%id98245%_
           _%proc98246%_
           _%rebind?98248%_))))
    (define bind-method!
      (lambda _g102583_
        (let ((_g102582_ (let () (declare (not safe)) (##length _g102583_))))
          (cond ((let () (declare (not safe)) (##fx= _g102582_ 3))
                 (apply bind-method!__0 _g102583_))
                ((let () (declare (not safe)) (##fx= _g102582_ 4))
                 (apply bind-method!__% _g102583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102583_))))))
    (define __bind-method!__%
      (lambda (_%klass98165%_ _%id98166%_ _%proc98167%_ _%rebind?98168%_)
        (let* ((_%id98171%_ _%id98166%_) (_%proc98179%_ _%proc98167%_))
          (letrec ((_%bind!98188%_
                    (lambda (_%ht98197%_)
                      (if (and (not _%rebind?98168%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98197%_
                                  _%id98171%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98165%_
                                 'method:
                                 _%id98171%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98197%_
                               _%id98171%_
                               _%proc98179%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98165%_ 'class))
                (let ((_%ht98191%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98165%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98191%_
                      (_%bind!98188%_ _%ht98191%_)
                      (let ((_%ht98193%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98165%_
                           _%ht98193%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98188%_ _%ht98193%_))))
                (if (let () (declare (not safe)) (##type? _%klass98165%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98165%_)
                     _%id98171%_
                     _%proc98179%_
                     _%rebind?98168%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98165%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98202%_ _%id98203%_ _%proc98204%_)
        (let ((_%rebind?98206%_ '#f))
          (__bind-method!__%
           _%klass98202%_
           _%id98203%_
           _%proc98204%_
           _%rebind?98206%_))))
    (define __bind-method!
      (lambda _g102585_
        (let ((_g102584_ (let () (declare (not safe)) (##length _g102585_))))
          (cond ((let () (declare (not safe)) (##fx= _g102584_ 3))
                 (apply __bind-method!__0 _g102585_))
                ((let () (declare (not safe)) (##fx= _g102584_ 4))
                 (apply __bind-method!__% _g102585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102585_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98145%_ _%seed98147%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98145%_
           procedure-hash
           eq?
           _%seed98147%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98153%_ '#f) (_%seed98155%_ '0))
          (make-method-specializer-table__%
           _%size-hint98153%_
           _%seed98155%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98157%_)
        (let ((_%seed98159%_ '0))
          (make-method-specializer-table__%
           _%size-hint98157%_
           _%seed98159%_))))
    (define make-method-specializer-table
      (lambda _g102587_
        (let ((_g102586_ (let () (declare (not safe)) (##length _g102587_))))
          (cond ((let () (declare (not safe)) (##fx= _g102586_ 0))
                 (apply make-method-specializer-table__0 _g102587_))
                ((let () (declare (not safe)) (##fx= _g102586_ 1))
                 (apply make-method-specializer-table__1 _g102587_))
                ((let () (declare (not safe)) (##fx= _g102586_ 2))
                 (apply make-method-specializer-table__% _g102587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102587_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98098%_ _%key98099%_ _%default98100%_)
        (let ((_%table98102%_
               (let () (declare (not safe)) (&raw-table-table _%tab98098%_)))
              (_%seed98103%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98098%_))))
          (let* ((_%h98105%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98099%_))
                         _%seed98103%_))
                 (_%size98108%_ (vector-length _%table98102%_))
                 (_%entries98111%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98108%_ '2)))
                 (_%start98114%_
                  (let ((__tmp102588
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98105%_ _%entries98111%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102588 '1))))
            (let _%loop98118%_ ((_%probe98121%_ _%start98114%_)
                                (_%i98123%_ '1)
                                (_%deleted98125%_ '#f))
              (let ((_%k98128%_ (vector-ref _%table98102%_ _%probe98121%_)))
                (if (eq? _%k98128%_ (macro-unused-obj))
                    _%default98100%_
                    (if (eq? _%k98128%_ (macro-deleted-obj))
                        (_%loop98118%_
                         (let ((_%next-probe98133%_
                                (fx+ _%start98114%_
                                     _%i98123%_
                                     (fx* _%i98123%_ _%i98123%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98133%_ _%size98108%_))
                         (let () (declare (not safe)) (##fx+ _%i98123%_ '1))
                         (let ((_%$e98136%_ _%deleted98125%_))
                           (if _%$e98136%_ _%$e98136%_ _%probe98121%_)))
                        (if (eq? _%key98099%_ _%k98128%_)
                            (vector-ref
                             _%table98102%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98121%_ '1)))
                            (_%loop98118%_
                             (let ((_%next-probe98141%_
                                    (fx+ _%start98114%_
                                         _%i98123%_
                                         (fx* _%i98123%_ _%i98123%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98141%_ _%size98108%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98123%_ '1))
                             _%deleted98125%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98094%_ _%key98095%_ _%value98096%_)
        (if (let ((__tmp102591
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98094%_)))
                  (__tmp102589
                   (let ((__tmp102590
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98094%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102590 '4))))
              (declare (not safe))
              (##fx< __tmp102591 __tmp102589))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98094%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98094%_
         _%key98095%_
         _%value98096%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98045%_ _%key98046%_ _%value98047%_)
        (let ((_%table98050%_
               (let () (declare (not safe)) (&raw-table-table _%tab98045%_)))
              (_%seed98051%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98045%_))))
          (let* ((_%h98053%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98046%_))
                         _%seed98051%_))
                 (_%size98056%_ (vector-length _%table98050%_))
                 (_%entries98059%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98056%_ '2)))
                 (_%start98062%_
                  (let ((__tmp102592
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98053%_ _%entries98059%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102592 '1))))
            (let _%loop98066%_ ((_%probe98069%_ _%start98062%_)
                                (_%i98071%_ '1)
                                (_%deleted98073%_ '#f))
              (let ((_%k98076%_ (vector-ref _%table98050%_ _%probe98069%_)))
                (if (eq? _%k98076%_ (macro-unused-obj))
                    (if _%deleted98073%_
                        (begin
                          (vector-set!
                           _%table98050%_
                           _%deleted98073%_
                           _%key98046%_)
                          (vector-set!
                           _%table98050%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98073%_ '1))
                           _%value98047%_)
                          ((lambda ()
                             (let ((__tmp102593
                                    (let ((__tmp102594
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98045%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102594 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98045%_
                                __tmp102593)))))
                        (begin
                          (vector-set!
                           _%table98050%_
                           _%probe98069%_
                           _%key98046%_)
                          (vector-set!
                           _%table98050%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98069%_ '1))
                           _%value98047%_)
                          ((lambda ()
                             (let ((__tmp102595
                                    (let ((__tmp102596
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98045%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102596 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98045%_ __tmp102595))
                             (let ((__tmp102597
                                    (let ((__tmp102598
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98045%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102598 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98045%_
                                __tmp102597))))))
                    (if (eq? _%k98076%_ (macro-deleted-obj))
                        (_%loop98066%_
                         (let ((_%next-probe98083%_
                                (fx+ _%start98062%_
                                     _%i98071%_
                                     (fx* _%i98071%_ _%i98071%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98083%_ _%size98056%_))
                         (let () (declare (not safe)) (##fx+ _%i98071%_ '1))
                         (let ((_%$e98086%_ _%deleted98073%_))
                           (if _%$e98086%_ _%$e98086%_ _%probe98069%_)))
                        (if (eq? _%key98046%_ _%k98076%_)
                            (let ()
                              (vector-set!
                               _%table98050%_
                               _%probe98069%_
                               _%key98046%_)
                              (vector-set!
                               _%table98050%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98069%_ '1))
                               _%value98047%_))
                            (_%loop98066%_
                             (let ((_%next-probe98091%_
                                    (fx+ _%start98062%_
                                         _%i98071%_
                                         (fx* _%i98071%_ _%i98071%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98091%_ _%size98056%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98071%_ '1))
                             _%deleted98073%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98040%_
               _%key98041%_
               _%method-specializer-table-update!98042%_
               _%default98043%_)
        (if (let ((__tmp102601
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98040%_)))
                  (__tmp102599
                   (let ((__tmp102600
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98040%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102600 '4))))
              (declare (not safe))
              (##fx< __tmp102601 __tmp102599))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98040%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98040%_
         _%key98041%_
         _%method-specializer-table-update!98042%_
         _%default98043%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab97990%_
               _%key97991%_
               _%method-specializer-table-update!97992%_
               _%default97993%_)
        (let ((_%table97996%_
               (let () (declare (not safe)) (&raw-table-table _%tab97990%_)))
              (_%seed97997%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97990%_))))
          (let* ((_%h97999%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97991%_))
                         _%seed97997%_))
                 (_%size98002%_ (vector-length _%table97996%_))
                 (_%entries98005%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98002%_ '2)))
                 (_%start98008%_
                  (let ((__tmp102602
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97999%_ _%entries98005%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102602 '1))))
            (let _%loop98012%_ ((_%probe98015%_ _%start98008%_)
                                (_%i98017%_ '1)
                                (_%deleted98019%_ '#f))
              (let ((_%k98022%_ (vector-ref _%table97996%_ _%probe98015%_)))
                (if (eq? _%k98022%_ (macro-unused-obj))
                    (if _%deleted98019%_
                        (begin
                          (vector-set!
                           _%table97996%_
                           _%deleted98019%_
                           _%key97991%_)
                          (vector-set!
                           _%table97996%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98019%_ '1))
                           (_%method-specializer-table-update!97992%_
                            _%default97993%_))
                          ((lambda ()
                             (let ((__tmp102603
                                    (let ((__tmp102604
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97990%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102604 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97990%_
                                __tmp102603)))))
                        (begin
                          (vector-set!
                           _%table97996%_
                           _%probe98015%_
                           _%key97991%_)
                          (vector-set!
                           _%table97996%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98015%_ '1))
                           (_%method-specializer-table-update!97992%_
                            _%default97993%_))
                          ((lambda ()
                             (let ((__tmp102605
                                    (let ((__tmp102606
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97990%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102606 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97990%_ __tmp102605))
                             (let ((__tmp102607
                                    (let ((__tmp102608
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97990%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102608 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97990%_
                                __tmp102607))))))
                    (if (eq? _%k98022%_ (macro-deleted-obj))
                        (_%loop98012%_
                         (let ((_%next-probe98029%_
                                (fx+ _%start98008%_
                                     _%i98017%_
                                     (fx* _%i98017%_ _%i98017%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98029%_ _%size98002%_))
                         (let () (declare (not safe)) (##fx+ _%i98017%_ '1))
                         (let ((_%$e98032%_ _%deleted98019%_))
                           (if _%$e98032%_ _%$e98032%_ _%probe98015%_)))
                        (if (eq? _%key97991%_ _%k98022%_)
                            (let ()
                              (vector-set!
                               _%table97996%_
                               _%probe98015%_
                               _%key97991%_)
                              (vector-set!
                               _%table97996%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98015%_ '1))
                               (_%method-specializer-table-update!97992%_
                                (vector-ref
                                 _%table97996%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98015%_ '1))))))
                            (_%loop98012%_
                             (let ((_%next-probe98037%_
                                    (fx+ _%start98008%_
                                         _%i98017%_
                                         (fx* _%i98017%_ _%i98017%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98037%_ _%size98002%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98017%_ '1))
                             _%deleted98019%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97945%_ _%key97947%_)
        (let ((_%table97950%_
               (let () (declare (not safe)) (&raw-table-table _%tab97945%_)))
              (_%seed97952%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97945%_))))
          (let* ((_%h97955%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97947%_))
                         _%seed97952%_))
                 (_%size97958%_ (vector-length _%table97950%_))
                 (_%entries97961%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97958%_ '2)))
                 (_%start97964%_
                  (let ((__tmp102609
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97955%_ _%entries97961%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102609 '1))))
            (let _%loop97968%_ ((_%probe97971%_ _%start97964%_)
                                (_%i97973%_ '1))
              (let ((_%k97976%_ (vector-ref _%table97950%_ _%probe97971%_)))
                (if (eq? _%k97976%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97976%_ (macro-deleted-obj))
                        (_%loop97968%_
                         (let ((_%next-probe97981%_
                                (fx+ _%start97964%_
                                     _%i97973%_
                                     (fx* _%i97973%_ _%i97973%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97981%_ _%size97958%_))
                         (let () (declare (not safe)) (##fx+ _%i97973%_ '1)))
                        (if (eq? _%key97947%_ _%k97976%_)
                            (let ()
                              (vector-set!
                               _%table97950%_
                               _%probe97971%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97950%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97971%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102610
                                        (let ((__tmp102611
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97945%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102611 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97945%_
                                    __tmp102610)))))
                            (_%loop97968%_
                             (let ((_%next-probe97987%_
                                    (fx+ _%start97964%_
                                         _%i97973%_
                                         (fx* _%i97973%_ _%i97973%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97987%_ _%size97958%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97973%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97936%_ _%specializer97937%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97941%_ ()
            (if (let ((__tmp102612
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102612 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97941%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97936%_
         _%specializer97937%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97926%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97930%_ ()
            (if (let ((__tmp102613
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102613 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97930%_)))))
        (let ((_%specializer97934%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97926%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97934%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97924%_)
        (let ((__tmp102614
               (let () (declare (not safe)) (##type-id _%klass97924%_))))
          (declare (not safe))
          (symbolic-hash __tmp102614))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97905%_ _%seed97907%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97905%_
           __class-specializer-hash-key
           eq?
           _%seed97907%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97913%_ '#f) (_%seed97915%_ '0))
          (make-class-specializer-table__% _%size-hint97913%_ _%seed97915%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97917%_)
        (let ((_%seed97919%_ '0))
          (make-class-specializer-table__% _%size-hint97917%_ _%seed97919%_))))
    (define make-class-specializer-table
      (lambda _g102616_
        (let ((_g102615_ (let () (declare (not safe)) (##length _g102616_))))
          (cond ((let () (declare (not safe)) (##fx= _g102615_ 0))
                 (apply make-class-specializer-table__0 _g102616_))
                ((let () (declare (not safe)) (##fx= _g102615_ 1))
                 (apply make-class-specializer-table__1 _g102616_))
                ((let () (declare (not safe)) (##fx= _g102615_ 2))
                 (apply make-class-specializer-table__% _g102616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102616_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97858%_ _%key97859%_ _%default97860%_)
        (let ((_%table97862%_
               (let () (declare (not safe)) (&raw-table-table _%tab97858%_)))
              (_%seed97863%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97858%_))))
          (let* ((_%h97865%_
                  (fxxor (__class-specializer-hash-key _%key97859%_)
                         _%seed97863%_))
                 (_%size97868%_ (vector-length _%table97862%_))
                 (_%entries97871%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97868%_ '2)))
                 (_%start97874%_
                  (let ((__tmp102617
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97865%_ _%entries97871%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102617 '1))))
            (let _%loop97878%_ ((_%probe97881%_ _%start97874%_)
                                (_%i97883%_ '1)
                                (_%deleted97885%_ '#f))
              (let ((_%k97888%_ (vector-ref _%table97862%_ _%probe97881%_)))
                (if (eq? _%k97888%_ (macro-unused-obj))
                    _%default97860%_
                    (if (eq? _%k97888%_ (macro-deleted-obj))
                        (_%loop97878%_
                         (let ((_%next-probe97893%_
                                (fx+ _%start97874%_
                                     _%i97883%_
                                     (fx* _%i97883%_ _%i97883%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97893%_ _%size97868%_))
                         (let () (declare (not safe)) (##fx+ _%i97883%_ '1))
                         (let ((_%$e97896%_ _%deleted97885%_))
                           (if _%$e97896%_ _%$e97896%_ _%probe97881%_)))
                        (if (eq? _%key97859%_ _%k97888%_)
                            (vector-ref
                             _%table97862%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97881%_ '1)))
                            (_%loop97878%_
                             (let ((_%next-probe97901%_
                                    (fx+ _%start97874%_
                                         _%i97883%_
                                         (fx* _%i97883%_ _%i97883%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97901%_ _%size97868%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97883%_ '1))
                             _%deleted97885%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97854%_ _%key97855%_ _%value97856%_)
        (if (let ((__tmp102620
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97854%_)))
                  (__tmp102618
                   (let ((__tmp102619
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97854%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102619 '4))))
              (declare (not safe))
              (##fx< __tmp102620 __tmp102618))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97854%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97854%_
         _%key97855%_
         _%value97856%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97805%_ _%key97806%_ _%value97807%_)
        (let ((_%table97810%_
               (let () (declare (not safe)) (&raw-table-table _%tab97805%_)))
              (_%seed97811%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97805%_))))
          (let* ((_%h97813%_
                  (fxxor (__class-specializer-hash-key _%key97806%_)
                         _%seed97811%_))
                 (_%size97816%_ (vector-length _%table97810%_))
                 (_%entries97819%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97816%_ '2)))
                 (_%start97822%_
                  (let ((__tmp102621
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97813%_ _%entries97819%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102621 '1))))
            (let _%loop97826%_ ((_%probe97829%_ _%start97822%_)
                                (_%i97831%_ '1)
                                (_%deleted97833%_ '#f))
              (let ((_%k97836%_ (vector-ref _%table97810%_ _%probe97829%_)))
                (if (eq? _%k97836%_ (macro-unused-obj))
                    (if _%deleted97833%_
                        (begin
                          (vector-set!
                           _%table97810%_
                           _%deleted97833%_
                           _%key97806%_)
                          (vector-set!
                           _%table97810%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97833%_ '1))
                           _%value97807%_)
                          ((lambda ()
                             (let ((__tmp102622
                                    (let ((__tmp102623
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97805%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102623 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97805%_
                                __tmp102622)))))
                        (begin
                          (vector-set!
                           _%table97810%_
                           _%probe97829%_
                           _%key97806%_)
                          (vector-set!
                           _%table97810%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97829%_ '1))
                           _%value97807%_)
                          ((lambda ()
                             (let ((__tmp102624
                                    (let ((__tmp102625
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97805%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102625 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97805%_ __tmp102624))
                             (let ((__tmp102626
                                    (let ((__tmp102627
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97805%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102627 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97805%_
                                __tmp102626))))))
                    (if (eq? _%k97836%_ (macro-deleted-obj))
                        (_%loop97826%_
                         (let ((_%next-probe97843%_
                                (fx+ _%start97822%_
                                     _%i97831%_
                                     (fx* _%i97831%_ _%i97831%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97843%_ _%size97816%_))
                         (let () (declare (not safe)) (##fx+ _%i97831%_ '1))
                         (let ((_%$e97846%_ _%deleted97833%_))
                           (if _%$e97846%_ _%$e97846%_ _%probe97829%_)))
                        (if (eq? _%key97806%_ _%k97836%_)
                            (let ()
                              (vector-set!
                               _%table97810%_
                               _%probe97829%_
                               _%key97806%_)
                              (vector-set!
                               _%table97810%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97829%_ '1))
                               _%value97807%_))
                            (_%loop97826%_
                             (let ((_%next-probe97851%_
                                    (fx+ _%start97822%_
                                         _%i97831%_
                                         (fx* _%i97831%_ _%i97831%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97851%_ _%size97816%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97831%_ '1))
                             _%deleted97833%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97800%_
               _%key97801%_
               _%class-specializer-table-update!97802%_
               _%default97803%_)
        (if (let ((__tmp102630
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97800%_)))
                  (__tmp102628
                   (let ((__tmp102629
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97800%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102629 '4))))
              (declare (not safe))
              (##fx< __tmp102630 __tmp102628))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97800%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97800%_
         _%key97801%_
         _%class-specializer-table-update!97802%_
         _%default97803%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97750%_
               _%key97751%_
               _%class-specializer-table-update!97752%_
               _%default97753%_)
        (let ((_%table97756%_
               (let () (declare (not safe)) (&raw-table-table _%tab97750%_)))
              (_%seed97757%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97750%_))))
          (let* ((_%h97759%_
                  (fxxor (__class-specializer-hash-key _%key97751%_)
                         _%seed97757%_))
                 (_%size97762%_ (vector-length _%table97756%_))
                 (_%entries97765%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97762%_ '2)))
                 (_%start97768%_
                  (let ((__tmp102631
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97759%_ _%entries97765%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102631 '1))))
            (let _%loop97772%_ ((_%probe97775%_ _%start97768%_)
                                (_%i97777%_ '1)
                                (_%deleted97779%_ '#f))
              (let ((_%k97782%_ (vector-ref _%table97756%_ _%probe97775%_)))
                (if (eq? _%k97782%_ (macro-unused-obj))
                    (if _%deleted97779%_
                        (begin
                          (vector-set!
                           _%table97756%_
                           _%deleted97779%_
                           _%key97751%_)
                          (vector-set!
                           _%table97756%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97779%_ '1))
                           (_%class-specializer-table-update!97752%_
                            _%default97753%_))
                          ((lambda ()
                             (let ((__tmp102632
                                    (let ((__tmp102633
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97750%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102633 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97750%_
                                __tmp102632)))))
                        (begin
                          (vector-set!
                           _%table97756%_
                           _%probe97775%_
                           _%key97751%_)
                          (vector-set!
                           _%table97756%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97775%_ '1))
                           (_%class-specializer-table-update!97752%_
                            _%default97753%_))
                          ((lambda ()
                             (let ((__tmp102634
                                    (let ((__tmp102635
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97750%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102635 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97750%_ __tmp102634))
                             (let ((__tmp102636
                                    (let ((__tmp102637
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97750%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102637 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97750%_
                                __tmp102636))))))
                    (if (eq? _%k97782%_ (macro-deleted-obj))
                        (_%loop97772%_
                         (let ((_%next-probe97789%_
                                (fx+ _%start97768%_
                                     _%i97777%_
                                     (fx* _%i97777%_ _%i97777%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97789%_ _%size97762%_))
                         (let () (declare (not safe)) (##fx+ _%i97777%_ '1))
                         (let ((_%$e97792%_ _%deleted97779%_))
                           (if _%$e97792%_ _%$e97792%_ _%probe97775%_)))
                        (if (eq? _%key97751%_ _%k97782%_)
                            (let ()
                              (vector-set!
                               _%table97756%_
                               _%probe97775%_
                               _%key97751%_)
                              (vector-set!
                               _%table97756%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97775%_ '1))
                               (_%class-specializer-table-update!97752%_
                                (vector-ref
                                 _%table97756%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97775%_ '1))))))
                            (_%loop97772%_
                             (let ((_%next-probe97797%_
                                    (fx+ _%start97768%_
                                         _%i97777%_
                                         (fx* _%i97777%_ _%i97777%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97797%_ _%size97762%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97777%_ '1))
                             _%deleted97779%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97705%_ _%key97707%_)
        (let ((_%table97710%_
               (let () (declare (not safe)) (&raw-table-table _%tab97705%_)))
              (_%seed97712%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97705%_))))
          (let* ((_%h97715%_
                  (fxxor (__class-specializer-hash-key _%key97707%_)
                         _%seed97712%_))
                 (_%size97718%_ (vector-length _%table97710%_))
                 (_%entries97721%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97718%_ '2)))
                 (_%start97724%_
                  (let ((__tmp102638
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97715%_ _%entries97721%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102638 '1))))
            (let _%loop97728%_ ((_%probe97731%_ _%start97724%_)
                                (_%i97733%_ '1))
              (let ((_%k97736%_ (vector-ref _%table97710%_ _%probe97731%_)))
                (if (eq? _%k97736%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97736%_ (macro-deleted-obj))
                        (_%loop97728%_
                         (let ((_%next-probe97741%_
                                (fx+ _%start97724%_
                                     _%i97733%_
                                     (fx* _%i97733%_ _%i97733%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97741%_ _%size97718%_))
                         (let () (declare (not safe)) (##fx+ _%i97733%_ '1)))
                        (if (eq? _%key97707%_ _%k97736%_)
                            (let ()
                              (vector-set!
                               _%table97710%_
                               _%probe97731%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97710%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97731%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102639
                                        (let ((__tmp102640
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97705%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102640 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97705%_
                                    __tmp102639)))))
                            (_%loop97728%_
                             (let ((_%next-probe97747%_
                                    (fx+ _%start97724%_
                                         _%i97733%_
                                         (fx* _%i97733%_ _%i97733%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97747%_ _%size97718%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97733%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97691%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97691%_ 'class))
            (let ((_%klass97695%_ _%klass97691%_))
              (__specialize-class _%klass97695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass97691%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97673%_)
        (let* ((_%klass97676%_ _%klass97673%_)
               (_%$e97685%_ (__lookup-class-specializer _%klass97676%_)))
          (if _%$e97685%_
              _%$e97685%_
              (let ((_%method-table97689%_
                     (___specialize-class _%klass97676%_)))
                (__bind-class-specializer!
                 _%klass97676%_
                 _%method-table97689%_)
                _%method-table97689%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97663%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97667%_ ()
            (if (let ((__tmp102641
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102641 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97667%_)))))
        (let ((_%method-table97671%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97663%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97671%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97654%_ _%method-table97655%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97659%_ ()
            (if (let ((__tmp102642
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102642 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97659%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97654%_
         _%method-table97655%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97638%_
               _%method-table97639%_
               _%method97640%_
               _%proc97641%_)
        (let ((_%$e97643%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97639%_
                  _%method97640%_
                  '#f))))
          (if _%$e97643%_
              _%$e97643%_
              (let ((_%$e97646%_ (__lookup-method-specializer _%proc97641%_)))
                (if _%$e97646%_
                    ((lambda (_%specialize97649%_)
                       (let ((_%specialized-proc97651%_
                              (_%specialize97649%_
                               _%klass97638%_
                               _%method-table97639%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97639%_
                          _%method97640%_
                          _%specialized-proc97651%_)))
                     _%$e97646%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97639%_
                       _%method97640%_
                       _%proc97641%_))))))))
    (define ___specialize-class
      (lambda (_%klass97580%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97580%_ 'class))
            (if (__class-type-metaclass? _%klass97580%_)
                (let ((__method102488
                       (__method-ref _%klass97580%_ 'specialize-class)))
                  (if __method102488
                      (let ()
                        (declare (not safe))
                        (__method102488 _%klass97580%_))
                      (begin
                        (error '"Missing method"
                               _%klass97580%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102643
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97580%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102643))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97580%_)
                    (let ((_%method-table97586%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97588%_ ((_%rest97590%_
                                           (__class-precedence-list
                                            _%klass97580%_)))
                        (let* ((_%rest9759197599%_ _%rest97590%_)
                               (_%else9759397607%_
                                (lambda () _%method-table97586%_))
                               (_%K9759597626%_
                                (lambda (_%rest97610%_ _%xklass97611%_)
                                  (let ((_%xmethod-table9761297614%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97611%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9761297614%_
                                        (let* ((_%xmethod-table97617%_
                                                _%xmethod-table9761297614%_)
                                               (__tmp102644
                                                (lambda (_%g9761897621%_
                                                         _%g9761997623%_)
                                                  (__specialize-method
                                                   _%klass97580%_
                                                   _%method-table97586%_
                                                   _%g9761897621%_
                                                   _%g9761997623%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97617%_
                                           __tmp102644))
                                        '#f))
                                  (_%loop97588%_ _%rest97610%_))))
                          (if (pair? _%rest9759197599%_)
                              (let ((_%hd9759697629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9759197599%_)))
                                    (_%tl9759797631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9759197599%_))))
                                (let* ((_%xklass97634%_ _%hd9759697629%_)
                                       (_%rest97636%_ _%tl9759797631%_))
                                  (_%K9759597626%_
                                   _%rest97636%_
                                   _%xklass97634%_)))
                              (_%else9759397607%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97580%_))
                (__specialize-class (__shadow-class _%klass97580%_))
                (error '"bad class; cannot specialize" _%klass97580%_)))))
    (define seal-class!
      (lambda (_%klass97566%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97566%_ 'class))
            (let ((_%klass97570%_ _%klass97566%_))
              (__seal-class! _%klass97570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass97566%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97549%_)
        (let ((_%klass97552%_ _%klass97549%_))
          (if (__class-type-sealed? _%klass97552%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97552%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97552%_))
                (if (__class-type-metaclass? _%klass97552%_)
                    (let ((__method102489
                           (__method-ref _%klass97552%_ 'seal-class!)))
                      (if __method102489
                          (let ()
                            (declare (not safe))
                            (__method102489 _%klass97552%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97552%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102645
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97552%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102645))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97552%_)
                        (let ((_%method-table97564%_
                               (__specialize-class _%klass97552%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97552%_
                           _%method-table97564%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97552%_))))))
    (define next-method
      (lambda (_%subklass97523%_ _%obj97524%_ _%id97525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97523%_ 'class))
            (let ((_%subklass97529%_ _%subklass97523%_))
              (if (symbol? _%id97525%_)
                  (let ((_%id97539%_ _%id97525%_))
                    (__next-method _%subklass97529%_ _%obj97524%_ _%id97539%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97525%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass97523%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97460%_ _%obj97461%_ _%id97462%_)
        (let* ((_%subklass97465%_ _%subklass97460%_) (_%id97473%_ _%id97462%_))
          (letrec ((_%find-next-method97482%_
                    (lambda (_%klass97484%_)
                      (let _%lp97486%_ ((_%rest97488%_
                                         (class-precedence-list
                                          _%klass97484%_)))
                        (let* ((_%rest9748997497%_ _%rest97488%_)
                               (_%else9749197505%_ (lambda () '#f))
                               (_%K9749397511%_
                                (lambda (_%rest97508%_ _%klass97509%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97465%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97509%_)))
                                      (__mixin-find-method
                                       _%rest97508%_
                                       _%obj97461%_
                                       _%id97473%_)
                                      (_%lp97486%_ _%rest97508%_)))))
                          (if (pair? _%rest9748997497%_)
                              (let ((_%hd9749497514%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9748997497%_)))
                                    (_%tl9749597516%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9748997497%_))))
                                (let* ((_%klass97519%_ _%hd9749497514%_)
                                       (_%rest97521%_ _%tl9749597516%_))
                                  (_%K9749397511%_
                                   _%rest97521%_
                                   _%klass97519%_)))
                              (_%else9749197505%_)))))))
            (_%find-next-method97482%_ (class-of _%obj97461%_))))))
    (define call-next-method
      (lambda (_%subklass97433%_ _%obj97434%_ _%id97435%_ . _%args97436%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97433%_ 'class))
            (let ((_%subklass97440%_ _%subklass97433%_))
              (if (symbol? _%id97435%_)
                  (let ((_%id97450%_ _%id97435%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97440%_
                             _%obj97434%_
                             _%id97450%_
                             _%args97436%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97435%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass97433%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97404%_ _%obj97405%_ _%id97406%_ . _%args97407%_)
        (let* ((_%subklass97410%_ _%subklass97404%_)
               (_%id97418%_ _%id97406%_)
               (_%$e97427%_
                (__next-method _%subklass97410%_ _%obj97405%_ _%id97418%_)))
          (if _%$e97427%_
              ((lambda (_%methodf97430%_)
                 (apply _%methodf97430%_ _%obj97405%_ _%args97407%_))
               _%$e97427%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97405%_
                     'method:
                     _%id97418%_)))))
    (define write-style
      (lambda (_%we97402%_) (values (macro-writeenv-style _%we97402%_))))
    (define write-object
      (lambda (_%we97393%_ _%obj97394%_)
        (let ((_%$e97396%_ (__method-ref _%obj97394%_ ':wr)))
          (if _%$e97396%_
              ((lambda (_%method97399%_)
                 (_%method97399%_ _%obj97394%_ _%we97393%_))
               _%$e97396%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97393%_ _%obj97394%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97308%_)
        (letrec ((_%shadow-type-id97310%_
                  (lambda (_%type97391%_)
                    (let ((__tmp102646
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97391%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102646 '"::t"))))
                 (_%shadow-type-name97311%_
                  (lambda (_%type97389%_)
                    (let () (declare (not safe)) (##type-name _%type97389%_))))
                 (_%make-shadow-class97312%_
                  (lambda (_%type97381%_ _%precedence-list97382%_)
                    (let* ((_%super97384%_
                            (if (pair? _%precedence-list97382%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97382%_))
                                      '())
                                '()))
                           (_%klass97386%_
                            (make-class-type
                             (_%shadow-type-id97310%_ _%type97381%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97381%_))
                             _%super97384%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97381%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102647
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97381%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102647
                         _%klass97386%_))
                      _%klass97386%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97316%_ ()
              (if (let ((__tmp102648
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102648 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97316%_)))))
          (let ((_%$e97320%_
                 (let ((__tmp102649
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97308%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102649 '#f))))
            (if _%$e97320%_
                ((lambda (_%klass97323%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97323%_)
                 _%$e97320%_)
                (let _%loop97326%_ ((_%super97328%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97308%_)))
                                    (_%hierarchy97329%_ '()))
                  (if (not _%super97328%_)
                      (let _%loop97332%_ ((_%rest97334%_ _%hierarchy97329%_)
                                          (_%precedence-list97335%_ '()))
                        (let* ((_%rest9733697344%_ _%rest97334%_)
                               (_%else9733897354%_
                                (lambda ()
                                  (let ((_%klass97352%_
                                         (_%make-shadow-class97312%_
                                          _%type97308%_
                                          _%precedence-list97335%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97352%_)))
                               (_%K9734097368%_
                                (lambda (_%rest97357%_ _%type97358%_)
                                  (let ((_%$e97360%_
                                         (let ((__tmp102650
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97358%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102650
                                            '#f))))
                                    (if _%$e97360%_
                                        ((lambda (_%klass97363%_)
                                           (_%loop97332%_
                                            _%rest97357%_
                                            (cons _%klass97363%_
                                                  _%precedence-list97335%_)))
                                         _%$e97360%_)
                                        (let ((_%klass97366%_
                                               (_%make-shadow-class97312%_
                                                _%type97358%_
                                                _%precedence-list97335%_)))
                                          (_%loop97332%_
                                           _%rest97357%_
                                           (cons _%klass97366%_
                                                 _%precedence-list97335%_))))))))
                          (if (pair? _%rest9733697344%_)
                              (let ((_%hd9734197371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9733697344%_)))
                                    (_%tl9734297373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9733697344%_))))
                                (let* ((_%type97376%_ _%hd9734197371%_)
                                       (_%rest97378%_ _%tl9734297373%_))
                                  (_%K9734097368%_
                                   _%rest97378%_
                                   _%type97376%_)))
                              (_%else9733897354%_))))
                      (_%loop97326%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97328%_))
                       (cons _%super97328%_ _%hierarchy97329%_)))))))))
    (define __type
      (let* ((_%tb97297%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97299%_ _%tb97297%_))
        (if (eq? '2 _%$e97299%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97299%_)
                (let ((_%flonum-self-tagging-tags97302%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97303%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97305%_ _%flonum-self-tagging-tags97302%_))
                    (if (eq? '0 _%$e97305%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97303%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               flonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               flonum))
                        (if (eq? '1 _%$e97305%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97303%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   flonum
                                   flonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   flonum
                                   flonum))
                            (if (eq? '2 _%$e97305%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97305%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97305%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97302%_))))))))
                (error '"unexpected tag width" _%tb97297%_)))))
    (define __class
      (let* ((_%len97250%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97252%_
              (let () (declare (not safe)) (##make-vector _%len97250%_ '#f))))
        (let _%loop97255%_ ((_%i97257%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97257%_ _%len97250%_))
              (let* ((_%t97259%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97257%_)))
                     (_%f97294%_
                      (if (eq? _%t97259%_ 'undefined)
                          (lambda (_%obj97262%_)
                            (error '"object type is undefined" _%obj97262%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97259%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97265%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97259%_))
                              (if (eq? _%t97259%_ 'subtyped)
                                  (lambda (_%obj97269%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97272%_
                                           (##subtype _%obj97269%_)))
                                      (if (##fx= _%st97272%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97275%_
                                                 (##structure-type
                                                  _%obj97269%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97275%_
                                                 'class)
                                                _%klass97275%_
                                                (__shadow-class
                                                 _%klass97275%_)))
                                          (if (##fx= _%st97272%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##vector-length
                                                          _%obj97269%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97278%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97272%_)))
                                                (if _%$e97278%_
                                                    (__system-class
                                                     _%$e97278%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97272%_
                                                           'object:
                                                           _%obj97269%_)))))))
                                  (if (eq? _%t97259%_ 'special)
                                      (lambda (_%obj97283%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97283%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97283%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97283%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97283%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97283%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97259%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97252%_ _%i97257%_ _%f97294%_))
                (_%loop97255%_
                 (let () (declare (not safe)) (##fx+ _%i97257%_ '1))))
              _%cv97252%_))))
    (define type-of
      (lambda (_%obj97246%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97246%_)))))
    (define class-of
      (lambda (_%obj97237%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97241%_ (##type _%obj97237%_))
                 (_%f97243%_ (##vector-ref __class _%t97241%_)))
            (_%f97243%_ _%obj97237%_)))))
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
    (vector-set! __subtype-id (macro-subtype-flonum) 'flonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_%id97231%_)
        (let ((_%$e97233%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97231%_ '#f))))
          (if _%$e97233%_
              _%$e97233%_
              (error '"unknown system class" _%id97231%_)))))
    (define __make-system-class
      (lambda (_%id97226%_ _%super97227%_)
        (let ((_%klass97229%_
               (make-class-type
                _%id97226%_
                _%id97226%_
                _%super97227%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97226%_ _%klass97229%_))
          _%klass97229%_)))))
