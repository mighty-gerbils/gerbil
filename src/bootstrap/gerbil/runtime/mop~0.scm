(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1734357960)
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
      (let ((_%flags101148%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101149%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101150%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101148%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101150%_
           _%properties101149%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101124%_
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
             (_%slot-vector101126%_ (list->vector (cons '#f _%slots101124%_)))
             (_%slot-table101133%_
              (let ((_%slot-table101128%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102591
                       (lambda (_%slot101130%_ _%field101131%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101128%_
                            _%slot101130%_
                            _%field101131%_))
                         (let ((__tmp102592
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101130%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101128%_
                            __tmp102592
                            _%field101131%_))))
                      (__tmp102589
                       (let ((__tmp102590
                              (let ()
                                (declare (not safe))
                                (##length _%slots101124%_))))
                         (declare (not safe))
                         (##iota __tmp102590 '1))))
                  (declare (not safe))
                  (##for-each __tmp102591 _%slots101124%_ __tmp102589))
                _%slot-table101128%_))
             (_%flags101135%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101141%_
              (list->vector
               (let ((__tmp102593
                      (map (lambda (_%g101136101138%_)
                             (list _%g101136101138%_ '5 '#f))
                           (drop _%slots101124%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102593))))
             (_%properties101143%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101124%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101145%_
              (let ((__tmp102594 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101135%_
                 ##type-type
                 _%fields101141%_
                 __tmp102594
                 _%slot-vector101126%_
                 _%slot-table101133%_
                 _%properties101143%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101145%_ _%t101145%_))
        _%t101145%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101120%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101121%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101122%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102595 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101120%_
           '#f
           '#()
           __tmp102595
           '#(#f)
           _%slot-table101122%_
           _%properties101121%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101118%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101118%_ 'class))))
    (define class-type=?
      (lambda (_%x101093%_ _%y101094%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x101093%_ 'class))
            (let ((_%x101098%_ _%x101093%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y101094%_ 'class))
                  (let ((_%y101108%_ _%y101094%_))
                    (__class-type=? _%x101098%_ _%y101108%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y101094%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x101093%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x101072%_ _%y101073%_)
        (let* ((_%x101076%_ _%x101072%_) (_%y101084%_ _%y101073%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x101076%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y101084%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type101058%_)
        (if (let () (declare (not safe)) (##type? _%type101058%_))
            (let ((_%type101062%_ _%type101058%_))
              (__type-opaque? _%type101062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type101058%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type101046%_)
        (let* ((_%type101049%_ _%type101046%_)
               (__tmp102596
                (let ((__tmp102597
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type101049%_))))
                  (declare (not safe))
                  (##fxand __tmp102597 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102596 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type101032%_)
        (if (let () (declare (not safe)) (##type? _%type101032%_))
            (let ((_%type101036%_ _%type101032%_))
              (__type-extensible? _%type101036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type101032%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type101020%_)
        (let* ((_%type101023%_ _%type101020%_)
               (__tmp102598
                (let ((__tmp102599
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type101023%_))))
                  (declare (not safe))
                  (##fxand __tmp102599 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102598 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type101006%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type101006%_ 'class))
            (let ((_%type101010%_ _%type101006%_))
              (__class-type-final? _%type101010%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type101006%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100994%_)
        (let* ((_%type100997%_ _%type100994%_)
               (__tmp102600
                (let ((__tmp102601
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100997%_))))
                  (declare (not safe))
                  (##fxand __tmp102601 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102600 '0))))
    (define class-type-struct?
      (lambda (_%klass100980%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100980%_ 'class))
            (let ((_%klass100984%_ _%klass100980%_))
              (__class-type-struct? _%klass100984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100980%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100968%_)
        (let* ((_%klass100971%_ _%klass100968%_)
               (__tmp102602
                (let ((__tmp102603
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100971%_))))
                  (declare (not safe))
                  (##fxand __tmp102603 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102602 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100954%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100954%_ 'class))
            (let ((_%klass100958%_ _%klass100954%_))
              (__class-type-sealed? _%klass100958%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100954%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100942%_)
        (let* ((_%klass100945%_ _%klass100942%_)
               (__tmp102604
                (let ((__tmp102605
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100945%_))))
                  (declare (not safe))
                  (##fxand __tmp102605 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102604 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100928%_ 'class))
            (let ((_%klass100932%_ _%klass100928%_))
              (__class-type-metaclass? _%klass100932%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100928%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100916%_)
        (let* ((_%klass100919%_ _%klass100916%_)
               (__tmp102606
                (let ((__tmp102607
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100919%_))))
                  (declare (not safe))
                  (##fxand __tmp102607 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102606 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100902%_ 'class))
            (let ((_%klass100906%_ _%klass100902%_))
              (__class-type-system? _%klass100906%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100902%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100890%_)
        (let* ((_%klass100893%_ _%klass100890%_)
               (__tmp102608
                (let ((__tmp102609
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100893%_))))
                  (declare (not safe))
                  (##fxand __tmp102609 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102608 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100772%_
               _%type-name100773%_
               _%type-super100774%_
               _%precedence-list100775%_
               _%slot-vector100776%_
               _%properties100777%_
               _%constructor100778%_
               _%slot-table100779%_
               _%methods100780%_)
        (letrec ((_%make-props!100783%_
                  (lambda (_%key100859%_)
                    (letrec* ((_%ht100861%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100862%_
                               (lambda (_%ht100883%_ _%slots100884%_)
                                 (for-each
                                  (lambda (_%g100885100887%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100883%_
                                       _%g100885100887%_
                                       '#t)))
                                  _%slots100884%_)))
                              (_%put-alist!100863%_
                               (lambda (_%ht100872%_
                                        _%key100873%_
                                        _%alist100874%_)
                                 (let ((_%$e100876%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100873%_
                                           _%alist100874%_))))
                                   (if _%$e100876%_
                                       ((lambda (_%g100878100880%_)
                                          (_%put-slots!100862%_
                                           _%ht100872%_
                                           _%g100878100880%_))
                                        _%$e100876%_)
                                       '#!void)))))
                      (_%put-alist!100863%_
                       _%ht100861%_
                       _%key100859%_
                       _%properties100777%_)
                      (for-each
                       (lambda (_%mixin100865%_)
                         (let ((_%alist100867%_
                                (##structure-ref
                                 _%mixin100865%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100867%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100859%_
                                           _%alist100867%_))))
                               (_%put-slots!100862%_
                                _%ht100861%_
                                (class-type-slot-list _%mixin100865%_))
                               (_%put-alist!100863%_
                                _%ht100861%_
                                _%key100859%_
                                _%alist100867%_))))
                       _%precedence-list100775%_)
                      _%ht100861%_))))
          (let* ((_%transparent?100785%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100777%_)))
                 (_%all-slots-printable?100790%_
                  (let ((_%$e100787%_ _%transparent?100785%_))
                    (if _%$e100787%_
                        _%$e100787%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100777%_))))))
                 (_%printable100792%_
                  (if (not _%all-slots-printable?100790%_)
                      (_%make-props!100783%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100797%_
                  (let ((_%$e100794%_ _%transparent?100785%_))
                    (if _%$e100794%_
                        _%$e100794%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100777%_))))))
                 (_%equalable100799%_
                  (if (not _%all-slots-equalable?100797%_)
                      (_%make-props!100783%_ 'equal:)
                      '#f))
                 (_%first-new-field100801%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100774%_ 'class))
                      (let ((__tmp102610
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100774%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102610))
                      '1))
                 (_%field-info-length100803%_
                  (let ((__tmp102611
                         (let ((__tmp102612
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100776%_))))
                           (declare (not safe))
                           (##fx- __tmp102612 _%first-new-field100801%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102611)))
                 (_%field-info100805%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100803%_ '#f)))
                 (_%struct?100807%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100777%_)))
                 (_%final?100809%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100777%_)))
                 (_%metaclass100817%_
                  (let ((_%metaclass100810100812%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100777%_))))
                    (if _%metaclass100810100812%_
                        (let ((_%metaclass100815%_ _%metaclass100810100812%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100815%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100772%_
                                     'metaclass:
                                     _%metaclass100815%_))
                          _%metaclass100815%_)
                        '#f)))
                 (_%system?100819%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100777%_)))
                 (_%opaque?100827%_
                  (if (or _%transparent?100785%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100777%_)))
                      '#f
                      (let ((_%$e100824%_ (not _%type-super100774%_)))
                        (if _%$e100824%_
                            _%$e100824%_
                            (__type-opaque? _%type-super100774%_)))))
                 (_%type-flags100829%_
                  (let ((__tmp102617
                         (if _%final?100809%_ '0 type-flag-extensible))
                        (__tmp102616
                         (if _%opaque?100827%_ type-flag-opaque '0))
                        (__tmp102615
                         (if _%struct?100807%_ class-type-flag-struct '0))
                        (__tmp102614
                         (if _%metaclass100817%_ class-type-flag-metaclass '0))
                        (__tmp102613
                         (if _%system?100819%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102617
                             __tmp102616
                             __tmp102615
                             __tmp102614
                             __tmp102613)))
                 (_%precedence-list100837%_
                  (let ((_%$e100831%_ (memq t::t _%precedence-list100775%_)))
                    (if _%$e100831%_
                        ((lambda (_%tail100834%_)
                           (if (null? (cdr _%tail100834%_))
                               _%precedence-list100775%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100775%_)))
                         _%$e100831%_)
                        (let ((__tmp102618 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100775%_ __tmp102618))))))
            (let _%loop100840%_ ((_%i100842%_ _%first-new-field100801%_)
                                 (_%j100843%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100843%_ _%field-info-length100803%_))
                  (let* ((_%slot100845%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100776%_ _%i100842%_)))
                         (_%flags100853%_
                          (if _%transparent?100785%_
                              '0
                              (let ((__tmp102620
                                     (if (or _%all-slots-printable?100790%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100792%_
                                                _%slot100845%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102619
                                     (if (or _%all-slots-equalable?100797%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100799%_
                                                _%slot100845%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102620 __tmp102619)))))
                    (vector-set!
                     _%field-info100805%_
                     _%j100843%_
                     _%slot100845%_)
                    (vector-set!
                     _%field-info100805%_
                     (let () (declare (not safe)) (##fx+ _%j100843%_ '1))
                     _%flags100853%_)
                    (_%loop100840%_
                     (let () (declare (not safe)) (##fx+ _%i100842%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100843%_ '3))))
                  '#!void))
            (if _%metaclass100817%_
                (let ((_%val100856%_
                       (make-instance
                        _%metaclass100817%_
                        _%type-id100772%_
                        _%type-name100773%_
                        _%type-flags100829%_
                        _%type-super100774%_
                        _%field-info100805%_
                        _%precedence-list100837%_
                        _%slot-vector100776%_
                        _%slot-table100779%_
                        _%properties100777%_
                        _%constructor100778%_
                        _%methods100780%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100856%_ 'class))
                      _%val100856%_
                      (error '"bad cast" class::t _%val100856%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100772%_
                   _%type-name100773%_
                   _%type-flags100829%_
                   _%type-super100774%_
                   _%field-info100805%_
                   _%precedence-list100837%_
                   _%slot-vector100776%_
                   _%slot-table100779%_
                   _%properties100777%_
                   _%constructor100778%_
                   _%methods100780%_)))))))
    (define class-type-id
      (lambda (_%klass100770%_)
        (##structure-ref _%klass100770%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100768%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100765%_ _%val100766%_)
        (##structure-set! _%klass100765%_ _%val100766%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100760%_ _%val100762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100760%_
           _%val100762%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100758%_)
        (##structure-ref _%klass100758%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100756%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100753%_ _%val100754%_)
        (##structure-set! _%klass100753%_ _%val100754%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100748%_ _%val100750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100748%_
           _%val100750%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100746%_)
        (##structure-ref _%klass100746%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100744%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100741%_ _%val100742%_)
        (##structure-set! _%klass100741%_ _%val100742%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100736%_ _%val100738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100736%_
           _%val100738%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100734%_)
        (##structure-ref _%klass100734%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100732%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100729%_ _%val100730%_)
        (##structure-set! _%klass100729%_ _%val100730%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100724%_ _%val100726%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100724%_
           _%val100726%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100722%_)
        (##structure-ref _%klass100722%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100720%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100720%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100717%_ _%val100718%_)
        (##structure-set! _%klass100717%_ _%val100718%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100712%_ _%val100714%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100712%_
           _%val100714%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100710%_)
        (##structure-ref _%klass100710%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100708%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100708%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100705%_ _%val100706%_)
        (##structure-set!
         _%klass100705%_
         _%val100706%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100700%_ _%val100702%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100700%_
           _%val100702%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100698%_)
        (##structure-ref _%klass100698%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100696%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100696%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100693%_ _%val100694%_)
        (##structure-set!
         _%klass100693%_
         _%val100694%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100688%_ _%val100690%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100688%_
           _%val100690%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100686%_)
        (##structure-ref _%klass100686%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100684%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100684%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100681%_ _%val100682%_)
        (##structure-set!
         _%klass100681%_
         _%val100682%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100676%_ _%val100678%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100676%_
           _%val100678%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100674%_)
        (##structure-ref _%klass100674%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100672%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100672%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100669%_ _%val100670%_)
        (##structure-set!
         _%klass100669%_
         _%val100670%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100664%_ _%val100666%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100664%_
           _%val100666%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100662%_)
        (##structure-ref _%klass100662%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100660%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100660%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100657%_ _%val100658%_)
        (##structure-set!
         _%klass100657%_
         _%val100658%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100652%_ _%val100654%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100652%_
           _%val100654%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100650%_)
        (##structure-ref _%klass100650%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100648%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100648%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100645%_ _%val100646%_)
        (##structure-set!
         _%klass100645%_
         _%val100646%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100640%_ _%val100642%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100640%_
           _%val100642%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100626%_ 'class))
            (let ((_%klass100630%_ _%klass100626%_))
              (__class-type-slot-list _%klass100630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100626%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100614%_)
        (let ((_%klass100617%_ _%klass100614%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100617%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100600%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100600%_ 'class))
            (let ((_%klass100604%_ _%klass100600%_))
              (__class-type-field-count _%klass100604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100600%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100588%_)
        (let* ((_%klass100591%_ _%klass100588%_)
               (__tmp102621
                (let ((__tmp102622
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100591%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102622))))
          (declare (not safe))
          (##fx- __tmp102621 '1))))
    (define class-type-seal!
      (lambda (_%klass100574%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100574%_ 'class))
            (let ((_%klass100578%_ _%klass100574%_))
              (__class-type-seal! _%klass100578%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100574%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100562%_)
        (let ((_%klass100565%_ _%klass100562%_))
          (let ((__tmp102623
                 (let ((__tmp102624
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100565%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102624))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100565%_
             __tmp102623
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100537%_ _%maybe-super-struct100538%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100537%_ 'class))
            (let ((_%maybe-sub-struct100542%_ _%maybe-sub-struct100537%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100538%_
                     'class))
                  (let ((_%maybe-super-struct100552%_
                         _%maybe-super-struct100538%_))
                    (__substruct?
                     _%maybe-sub-struct100542%_
                     _%maybe-super-struct100552%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100538%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100537%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100506%_ _%maybe-super-struct100507%_)
        (let* ((_%maybe-sub-struct100510%_ _%maybe-sub-struct100506%_)
               (_%maybe-super-struct100518%_ _%maybe-super-struct100507%_)
               (_%maybe-super-struct-id100527%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100518%_))))
          (let _%lp100529%_ ((_%super-struct100531%_
                              _%maybe-sub-struct100510%_))
            (if (not _%super-struct100531%_)
                '#f
                (if (eq? _%maybe-super-struct-id100527%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100531%_)))
                    '#t
                    (_%lp100529%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100531%_)))))))))
    (define base-struct/1
      (lambda (_%klass100501%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100501%_ 'class))
            (if (__class-type-struct? _%klass100501%_)
                _%klass100501%_
                (let () (declare (not safe)) (##type-super _%klass100501%_)))
            (if (not _%klass100501%_)
                '#f
                (error '"not a class or false" _%klass100501%_)))))
    (define base-struct/2
      (lambda (_%klass1100486%_ _%klass2100487%_)
        (let ((_%s1100489%_ (base-struct/1 _%klass1100486%_))
              (_%s2100490%_ (base-struct/1 _%klass2100487%_)))
          (if (or (not _%s1100489%_)
                  (and _%s2100490%_ (substruct? _%s1100489%_ _%s2100490%_)))
              _%s2100490%_
              (if (or (not _%s2100490%_)
                      (and _%s1100489%_
                           (substruct? _%s2100490%_ _%s1100489%_)))
                  _%s1100489%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100486%_
                         _%klass2100487%_
                         _%s1100489%_
                         _%s2100490%_))))))
    (define base-struct/list
      (lambda (_%all-supers100370%_)
        (let* ((_%all-supers100371100396%_ _%all-supers100370%_)
               (_%E100376100400%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100371100396%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100394100483%_ (lambda () '#f))
                (_%K100391100469%_
                 (lambda (_%x100467%_) (base-struct/1 _%x100467%_)))
                (_%K100386100446%_
                 (lambda (_%y100443%_ _%x100444%_)
                   (base-struct/2 _%x100444%_ _%y100443%_)))
                (_%K100377100407%_
                 (lambda (_%y100404%_ _%x100405%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100405%_ _%y100404%_)))))
            (let* ((_%__match102583102584%_
                    (lambda (_%hd100378100410%_ _%tl100379100412%_)
                      (let ((_%x100415%_ _%hd100378100410%_))
                        (letrec ((_%splice-rest100381100417%_
                                  (lambda (_%rest100385100424%_ _%y100426%_)
                                    (if (null? _%rest100385100424%_)
                                        (_%K100377100407%_
                                         _%y100426%_
                                         _%x100415%_)
                                        (_%E100376100400%_))))
                                 (_%splice-try100383100419%_
                                  (lambda (_%hd100384100428%_
                                           _%rest100385100430%_
                                           _%y100380100431%_)
                                    (let ((_%y100434%_ _%hd100384100428%_))
                                      (_%splice-loop100382100421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100385100430%_))
                                       (cons _%y100434%_ _%y100380100431%_)))))
                                 (_%splice-loop100382100421%_
                                  (lambda (_%rest100385100436%_
                                           _%y100380100437%_)
                                    (if (pair? _%rest100385100436%_)
                                        (_%splice-try100383100419%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100385100436%_))
                                         _%rest100385100436%_
                                         _%y100380100437%_)
                                        (_%splice-rest100381100417%_
                                         _%rest100385100436%_
                                         (reverse _%y100380100437%_))))))
                          (_%splice-loop100382100421%_
                           _%tl100379100412%_
                           '())))))
                   (_%try-match100373100479%_
                    (lambda ()
                      (if (pair? _%all-supers100371100396%_)
                          (let ((_%tl100393100474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100371100396%_)))
                                (_%hd100392100472%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100371100396%_))))
                            (if (null? _%tl100393100474%_)
                                (let ((_%x100477%_ _%hd100392100472%_))
                                  (base-struct/1 _%x100477%_))
                                (if (pair? _%tl100393100474%_)
                                    (let ((_%tl100390100458%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100393100474%_)))
                                          (_%hd100389100456%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100393100474%_))))
                                      (if (null? _%tl100390100458%_)
                                          (let ((_%x100454%_
                                                 _%hd100392100472%_)
                                                (_%y100461%_
                                                 _%hd100389100456%_))
                                            (_%K100386100446%_
                                             _%y100461%_
                                             _%x100454%_))
                                          (_%__match102583102584%_
                                           _%hd100392100472%_
                                           _%tl100393100474%_)))
                                    (_%__match102583102584%_
                                     _%hd100392100472%_
                                     _%tl100393100474%_))))
                          (_%E100376100400%_)))))
              (if (null? _%all-supers100371100396%_)
                  (_%K100394100483%_)
                  (_%try-match100373100479%_)))))))
    (define base-struct
      (lambda _%all-supers100368%_ (base-struct/list _%all-supers100368%_)))
    (define find-super-constructor
      (lambda (_%super100319%_)
        (let _%lp100321%_ ((_%rest100323%_ _%super100319%_)
                           (_%constructor100324%_ '#f))
          (let* ((_%rest100325100333%_ _%rest100323%_)
                 (_%else100327100341%_ (lambda () _%constructor100324%_))
                 (_%K100329100356%_
                  (lambda (_%rest100344%_ _%hd100345%_)
                    (let ((_%$e100347%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100345%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100347%_
                          ((lambda (_%xconstructor100350%_)
                             (if (or (not _%constructor100324%_)
                                     (eq? _%constructor100324%_
                                          _%xconstructor100350%_))
                                 (_%lp100321%_
                                  _%rest100344%_
                                  _%xconstructor100350%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100324%_
                                        _%xconstructor100350%_)))
                           _%$e100347%_)
                          (_%lp100321%_
                           _%rest100344%_
                           _%constructor100324%_))))))
            (if (pair? _%rest100325100333%_)
                (let ((_%hd100330100359%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100325100333%_)))
                      (_%tl100331100361%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100325100333%_))))
                  (let* ((_%hd100364%_ _%hd100330100359%_)
                         (_%rest100366%_ _%tl100331100361%_))
                    (_%K100329100356%_ _%rest100366%_ _%hd100364%_)))
                (_%else100327100341%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100295%_ _%direct-slots100296%_)
        (let* ((_%next-slot100298%_ '1)
               (_%slot-table100300%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100302%_ '(__class))
               (_%process-slot100306%_
                (lambda (_%slot100304%_)
                  (if (symbol? _%slot100304%_)
                      '#!void
                      (error '"invalid slot name" _%slot100304%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100300%_
                              _%slot100304%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100300%_
                           _%slot100304%_
                           _%next-slot100298%_))
                        (let ((__tmp102625
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100304%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100300%_
                           __tmp102625
                           _%next-slot100298%_))
                        (set! _%r-slots100302%_
                              (cons _%slot100304%_ _%r-slots100302%_))
                        (set! _%next-slot100298%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100298%_ '1))))
                      '#!void)))
               (_%process-slots100312%_
                (lambda (_%g100307100309%_)
                  (for-each _%process-slot100306%_ _%g100307100309%_))))
          (let ((__tmp102627
                 (lambda (_%mixin100315%_)
                   (_%process-slots100312%_
                    (let ((__tmp102628
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100315%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102628 '())))))
                (__tmp102626 (reverse _%class-precedence-list100295%_)))
            (declare (not safe))
            (##for-each __tmp102627 __tmp102626))
          (_%process-slots100312%_ _%direct-slots100296%_)
          (let ((_%slot-vector100317%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100302%_)))))
            (values _%slot-vector100317%_ _%slot-table100300%_)))))
    (define make-class-type
      (lambda (_%id100220%_
               _%name100221%_
               _%direct-supers100222%_
               _%direct-slots100223%_
               _%properties100224%_
               _%constructor100225%_)
        (if (symbol? _%id100220%_)
            (let ((_%id100229%_ _%id100220%_))
              (if (symbol? _%name100221%_)
                  (let ((_%name100239%_ _%name100221%_))
                    (if (list? _%direct-supers100222%_)
                        (let ((_%direct-supers100249%_
                               _%direct-supers100222%_))
                          (if (list? _%direct-slots100223%_)
                              (let ((_%direct-slots100259%_
                                     _%direct-slots100223%_))
                                (if (list? _%properties100224%_)
                                    (let ((_%properties100269%_
                                           _%properties100224%_))
                                      (if ((lambda (_%$obj100278%_)
                                             (or (not _%$obj100278%_)
                                                 (symbol? _%$obj100278%_)))
                                           _%constructor100225%_)
                                          (let ((_%constructor100285%_
                                                 _%constructor100225%_))
                                            (__make-class-type
                                             _%id100229%_
                                             _%name100239%_
                                             _%direct-supers100249%_
                                             _%direct-slots100259%_
                                             _%properties100269%_
                                             _%constructor100285%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100225%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100224%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100223%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100222%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100221%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100220%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id100089%_
               _%name100090%_
               _%direct-supers100091%_
               _%direct-slots100092%_
               _%properties100093%_
               _%constructor100094%_)
        (let* ((_%id100097%_ _%id100089%_)
               (_%name100105%_ _%name100090%_)
               (_%direct-supers100113%_ _%direct-supers100091%_)
               (_%direct-slots100121%_ _%direct-slots100092%_)
               (_%properties100129%_ _%properties100093%_)
               (_%constructor100137%_ _%constructor100094%_))
          (let ((_%$e100149%_
                 (let ((__tmp102629
                        (lambda (_%$obj100146%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100146%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102629 _%direct-supers100113%_))))
            (if _%$e100149%_
                ((lambda (_%g100151100153%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100151100153%_))
                 _%$e100149%_)
                (let ((_%$e100156%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100113%_))))
                  (if _%$e100156%_
                      ((lambda (_%g100158100160%_)
                         (error '"Cannot extend final class"
                                _%g100158100160%_))
                       _%$e100156%_)
                      '#!void))))
          (let ((_g102630_ (compute-precedence-list _%direct-supers100113%_)))
            (begin
              (let ((_g102631_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102630_)
                           (##values-length _g102630_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102631_ 2)))
                    (error "Context expects 2 values" _g102631_)))
              (let ((_%precedence-list100163%_
                     (let () (declare (not safe)) (##values-ref _g102630_ 0)))
                    (_%struct-super100164%_
                     (let () (declare (not safe)) (##values-ref _g102630_ 1))))
                (let ((_g102632_
                       (compute-class-slots
                        _%precedence-list100163%_
                        _%direct-slots100121%_)))
                  (begin
                    (let ((_g102633_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102632_)
                                 (##values-length _g102632_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102633_ 2)))
                          (error "Context expects 2 values" _g102633_)))
                    (let ((_%slot-vector100166%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102632_ 0)))
                          (_%slot-table100167%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102632_ 1))))
                      (let* ((_%properties100169%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100121%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100113%_)
                                          _%properties100129%_)))
                             (_%constructor*100174%_
                              (let ((_%$e100171%_ _%constructor100137%_))
                                (if _%$e100171%_
                                    _%$e100171%_
                                    (find-super-constructor
                                     _%direct-supers100113%_))))
                             (_%precedence-list100217%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100169%_))
                                      (memq object::t
                                            _%precedence-list100163%_))
                                  _%precedence-list100163%_
                                  (let _%loop100179%_ ((_%tail100181%_
                                                        _%precedence-list100163%_)
                                                       (_%head100182%_ '()))
                                    (let* ((_%tail100183100191%_
                                            _%tail100181%_)
                                           (_%else100185100199%_
                                            (lambda ()
                                              (let ((__tmp102634
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102634
                                                 _%head100182%_))))
                                           (_%K100187100205%_
                                            (lambda (_%rest100202%_
                                                     _%hd100203%_)
                                              (if (eq? _%hd100203%_ t::t)
                                                  (let ((__tmp102635
                                                         (cons object::t
                                                               _%tail100181%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102635
                                                     _%head100182%_))
                                                  (_%loop100179%_
                                                   _%rest100202%_
                                                   (cons _%hd100203%_
                                                         _%head100182%_))))))
                                      (if (pair? _%tail100183100191%_)
                                          (let ((_%hd100188100208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100183100191%_)))
                                                (_%tl100189100210%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100183100191%_))))
                                            (let* ((_%hd100213%_
                                                    _%hd100188100208%_)
                                                   (_%rest100215%_
                                                    _%tl100189100210%_))
                                              (_%K100187100205%_
                                               _%rest100215%_
                                               _%hd100213%_)))
                                          (_%else100185100199%_)))))))
                        (make-class-type-descriptor
                         _%id100097%_
                         _%name100105%_
                         _%struct-super100164%_
                         _%precedence-list100217%_
                         _%slot-vector100166%_
                         _%properties100169%_
                         _%constructor*100174%_
                         _%slot-table100167%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass100075%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100075%_ 'class))
            (let ((_%klass100079%_ _%klass100075%_))
              (__class-precedence-list _%klass100079%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass100075%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass100063%_)
        (let ((_%klass100066%_ _%klass100063%_))
          (cons _%klass100066%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100066%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers100060%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers100060%_))))
    (define make-class-predicate
      (lambda (_%klass100046%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100046%_ 'class))
            (let ((_%klass100050%_ _%klass100046%_))
              (__make-class-predicate _%klass100050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass100046%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass100017%_)
        (let* ((_%klass100020%_ _%klass100017%_)
               (_%tid100029%_
                (let () (declare (not safe)) (##type-id _%klass100020%_))))
          (if (__class-type-final? _%klass100020%_)
              (lambda (_%g100031100033%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g100031100033%_
                   _%tid100029%_)))
              (if (__class-type-struct? _%klass100020%_)
                  (lambda (_%g100036100038%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g100036100038%_
                       _%tid100029%_)))
                  (lambda (_%g100041100043%_)
                    (__class-instance? _%klass100020%_ _%g100041100043%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99992%_ _%slot99993%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99992%_ 'class))
            (let ((_%klass99997%_ _%klass99992%_))
              (if (symbol? _%slot99993%_)
                  (let ((_%slot100007%_ _%slot99993%_))
                    (__make-class-slot-accessor _%klass99997%_ _%slot100007%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99993%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99992%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99960%_ _%slot99961%_)
        (let* ((_%klass99964%_ _%klass99960%_)
               (_%slot99972%_ _%slot99961%_)
               (_%field99981%_
                (let ((__tmp102636
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99964%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102636 _%slot99972%_ '#f))))
          (if (not _%field99981%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99964%_
                       'slot:
                       _%slot99972%_)
                '#!void)
              (if (__class-type-final? _%klass99964%_)
                  (make-final-slot-accessor
                   _%klass99964%_
                   _%slot99972%_
                   _%field99981%_)
                  (if (__class-type-struct? _%klass99964%_)
                      (make-struct-slot-accessor
                       _%klass99964%_
                       _%slot99972%_
                       _%field99981%_)
                      (if (let ((_%strukt99987%_
                                 (base-struct/1 _%klass99964%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99987%_
                                    'class))
                                 (let ((__tmp102637
                                        (let ((__tmp102638
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99987%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102638))))
                                   (declare (not safe))
                                   (##fx< _%field99981%_ __tmp102637))))
                          (make-struct-subclass-slot-accessor
                           _%klass99964%_
                           _%slot99972%_
                           _%field99981%_)
                          (make-class-cached-slot-accessor
                           _%klass99964%_
                           _%slot99972%_
                           _%field99981%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99935%_ _%slot99936%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99935%_ 'class))
            (let ((_%klass99940%_ _%klass99935%_))
              (if (symbol? _%slot99936%_)
                  (let ((_%slot99950%_ _%slot99936%_))
                    (__make-class-slot-mutator _%klass99940%_ _%slot99950%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99936%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99935%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99903%_ _%slot99904%_)
        (let* ((_%klass99907%_ _%klass99903%_)
               (_%slot99915%_ _%slot99904%_)
               (_%field99924%_
                (let ((__tmp102639
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99907%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102639 _%slot99915%_ '#f))))
          (if (not _%field99924%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99907%_
                       'slot:
                       _%slot99915%_)
                '#!void)
              (if (__class-type-final? _%klass99907%_)
                  (make-final-slot-mutator
                   _%klass99907%_
                   _%slot99915%_
                   _%field99924%_)
                  (if (__class-type-struct? _%klass99907%_)
                      (make-struct-slot-mutator
                       _%klass99907%_
                       _%slot99915%_
                       _%field99924%_)
                      (if (let ((_%strukt99930%_
                                 (base-struct/1 _%klass99907%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99930%_
                                    'class))
                                 (let ((__tmp102640
                                        (let ((__tmp102641
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99930%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102641))))
                                   (declare (not safe))
                                   (##fx< _%field99924%_ __tmp102640))))
                          (make-struct-subclass-slot-mutator
                           _%klass99907%_
                           _%slot99915%_
                           _%field99924%_)
                          (make-class-cached-slot-mutator
                           _%klass99907%_
                           _%slot99915%_
                           _%field99924%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99878%_ _%slot99879%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99878%_ 'class))
            (let ((_%klass99883%_ _%klass99878%_))
              (if (symbol? _%slot99879%_)
                  (let ((_%slot99893%_ _%slot99879%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99883%_
                     _%slot99893%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99879%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99878%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99846%_ _%slot99847%_)
        (let* ((_%klass99850%_ _%klass99846%_)
               (_%slot99858%_ _%slot99847%_)
               (_%field99867%_
                (let ((__tmp102642
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99850%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102642 _%slot99858%_ '#f))))
          (if (not _%field99867%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99850%_
                       'slot:
                       _%slot99858%_)
                '#!void)
              (if (__class-type-final? _%klass99850%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99850%_
                   _%slot99858%_
                   _%field99867%_)
                  (if (__class-type-struct? _%klass99850%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99850%_
                       _%slot99858%_
                       _%field99867%_)
                      (if (let ((_%strukt99873%_
                                 (base-struct/1 _%klass99850%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99873%_
                                    'class))
                                 (let ((__tmp102643
                                        (let ((__tmp102644
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99873%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102644))))
                                   (declare (not safe))
                                   (##fx< _%field99867%_ __tmp102643))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99850%_
                           _%slot99858%_
                           _%field99867%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99850%_
                           _%slot99858%_
                           _%field99867%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99821%_ _%slot99822%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99821%_ 'class))
            (let ((_%klass99826%_ _%klass99821%_))
              (if (symbol? _%slot99822%_)
                  (let ((_%slot99836%_ _%slot99822%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99826%_
                     _%slot99836%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99822%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99821%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99789%_ _%slot99790%_)
        (let* ((_%klass99793%_ _%klass99789%_)
               (_%slot99801%_ _%slot99790%_)
               (_%field99810%_
                (let ((__tmp102645
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99793%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102645 _%slot99801%_ '#f))))
          (if (not _%field99810%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99793%_
                       'slot:
                       _%slot99801%_)
                '#!void)
              (if (__class-type-final? _%klass99793%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99793%_
                   _%slot99801%_
                   _%field99810%_)
                  (if (__class-type-struct? _%klass99793%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99793%_
                       _%slot99801%_
                       _%field99810%_)
                      (if (let ((_%strukt99816%_
                                 (base-struct/1 _%klass99793%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99816%_
                                    'class))
                                 (let ((__tmp102646
                                        (let ((__tmp102647
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99816%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102647))))
                                   (declare (not safe))
                                   (##fx< _%field99810%_ __tmp102646))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99793%_
                           _%slot99801%_
                           _%field99810%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99793%_
                           _%slot99801%_
                           _%field99810%_))))))))
    (define not-an-instance__%
      (lambda (_%object99773%_ _%class99774%_ _%slot99775%_)
        (apply error
               '"not an instance"
               'object:
               _%object99773%_
               'class:
               _%class99774%_
               (if _%slot99775%_ (cons 'slot: (cons _%slot99775%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99780%_ _%class99781%_)
        (let ((_%slot99783%_ '#f))
          (not-an-instance__% _%object99780%_ _%class99781%_ _%slot99783%_))))
    (define not-an-instance
      (lambda _g102649_
        (let ((_g102648_ (let () (declare (not safe)) (##length _g102649_))))
          (cond ((let () (declare (not safe)) (##fx= _g102648_ 2))
                 (apply not-an-instance__0 _g102649_))
                ((let () (declare (not safe)) (##fx= _g102648_ 3))
                 (apply not-an-instance__% _g102649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102649_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99766%_ _%slot99767%_ _%field99768%_)
        (lambda (_%obj99770%_)
          (##direct-structure-ref
           _%obj99770%_
           _%field99768%_
           _%klass99766%_
           _%slot99767%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99759%_ _%slot99760%_ _%field99761%_)
        (lambda (_%obj99763%_ _%val99764%_)
          (##direct-structure-set!
           _%obj99763%_
           _%val99764%_
           _%field99761%_
           _%klass99759%_
           _%slot99760%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99753%_ _%slot99754%_ _%field99755%_)
        (lambda (_%obj99757%_)
          (##structure-ref
           _%obj99757%_
           _%field99755%_
           _%klass99753%_
           _%slot99754%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99746%_ _%slot99747%_ _%field99748%_)
        (lambda (_%obj99750%_ _%val99751%_)
          (##structure-set!
           _%obj99750%_
           _%val99751%_
           _%field99748%_
           _%klass99746%_
           _%slot99747%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99740%_ _%slot99741%_ _%field99742%_)
        (lambda (_%obj99744%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99744%_
             _%field99742%_
             _%klass99740%_
             _%slot99741%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99733%_ _%slot99734%_ _%field99735%_)
        (lambda (_%obj99737%_ _%val99738%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99737%_
             _%val99738%_
             _%field99735%_
             _%klass99733%_
             _%slot99734%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99727%_ _%slot99728%_ _%field99729%_)
        (lambda (_%obj99731%_)
          (if (class-instance? _%klass99727%_ _%obj99731%_)
              (unchecked-slot-ref _%obj99731%_ _%field99729%_)
              (not-an-instance__%
               _%obj99731%_
               _%klass99727%_
               _%slot99728%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99720%_ _%slot99721%_ _%field99722%_)
        (lambda (_%obj99724%_ _%val99725%_)
          (if (class-instance? _%klass99720%_ _%obj99724%_)
              (unchecked-field-set! _%obj99724%_ _%field99722%_ _%val99725%_)
              (not-an-instance__%
               _%obj99724%_
               _%klass99720%_
               _%slot99721%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99711%_ _%slot99712%_ _%field99713%_)
        (lambda (_%obj99715%_)
          (if (let ((__tmp102650
                     (let () (declare (not safe)) (##type-id _%klass99711%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99715%_ __tmp102650))
              (unchecked-field-ref _%obj99715%_ _%field99713%_)
              (if (class-instance? _%klass99711%_ _%obj99715%_)
                  (unchecked-slot-ref _%obj99715%_ _%slot99712%_)
                  (not-an-instance__%
                   _%obj99715%_
                   _%klass99711%_
                   _%slot99712%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99701%_ _%slot99702%_ _%field99703%_)
        (lambda (_%obj99705%_ _%val99706%_)
          (if (let ((__tmp102651
                     (let () (declare (not safe)) (##type-id _%klass99701%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99705%_ __tmp102651))
              (unchecked-field-set! _%obj99705%_ _%field99703%_ _%val99706%_)
              (if (class-instance? _%klass99701%_ _%obj99705%_)
                  (unchecked-slot-set! _%obj99705%_ _%slot99702%_ _%val99706%_)
                  (not-an-instance__%
                   _%obj99705%_
                   _%klass99701%_
                   _%slot99702%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99695%_ _%slot99696%_ _%field99697%_)
        (lambda (_%obj99699%_)
          (if (let ((__tmp102652
                     (let () (declare (not safe)) (##type-id _%klass99695%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99699%_ __tmp102652))
              (unchecked-field-ref _%obj99699%_ _%field99697%_)
              (unchecked-slot-ref _%obj99699%_ _%slot99696%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99688%_ _%slot99689%_ _%field99690%_)
        (lambda (_%obj99692%_ _%val99693%_)
          (if (let ((__tmp102653
                     (let () (declare (not safe)) (##type-id _%klass99688%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99692%_ __tmp102653))
              (unchecked-field-set! _%obj99692%_ _%field99690%_ _%val99693%_)
              (unchecked-slot-set! _%obj99692%_ _%slot99689%_ _%val99693%_)))))
    (define class-slot-offset
      (lambda (_%klass99663%_ _%slot99664%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99663%_ 'class))
            (let ((_%klass99668%_ _%klass99663%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99664%_))
                  (let ((_%slot99678%_ _%slot99664%_))
                    (__class-slot-offset _%klass99668%_ _%slot99678%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99664%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99663%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99642%_ _%slot99643%_)
        (let* ((_%klass99646%_ _%klass99642%_)
               (_%slot99654%_ _%slot99643%_)
               (__tmp102654
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99646%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102654 _%slot99654%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99616%_ _%obj99617%_ _%slot99618%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99616%_ 'class))
            (let ((_%klass99622%_ _%klass99616%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99618%_))
                  (let ((_%slot99632%_ _%slot99618%_))
                    (__class-slot-ref
                     _%klass99622%_
                     _%obj99617%_
                     _%slot99632%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99618%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99616%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99592%_ _%obj99593%_ _%slot99594%_)
        (let* ((_%klass99597%_ _%klass99592%_) (_%slot99605%_ _%slot99594%_))
          (if (__class-instance? _%klass99597%_ _%obj99593%_)
              (let ((_%off99614%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99593%_))
                      _%slot99605%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99593%_
                 _%off99614%_
                 _%klass99597%_
                 _%slot99605%_))
              (not-an-instance__0 _%obj99593%_ _%klass99597%_)))))
    (define class-slot-set!
      (lambda (_%klass99565%_ _%obj99566%_ _%slot99567%_ _%val99568%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99565%_ 'class))
            (let ((_%klass99572%_ _%klass99565%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99567%_))
                  (let ((_%slot99582%_ _%slot99567%_))
                    (__class-slot-set!
                     _%klass99572%_
                     _%obj99566%_
                     _%slot99582%_
                     _%val99568%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99567%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99565%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99540%_ _%obj99541%_ _%slot99542%_ _%val99543%_)
        (let* ((_%klass99546%_ _%klass99540%_) (_%slot99554%_ _%slot99542%_))
          (if (__class-instance? _%klass99546%_ _%obj99541%_)
              (let ((_%off99563%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99541%_))
                      _%slot99554%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99541%_
                 _%val99543%_
                 _%off99563%_
                 _%klass99546%_
                 _%slot99554%_))
              (not-an-instance__0 _%obj99541%_ _%klass99546%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99537%_ _%off99538%_)
        (let ((__tmp102655
               (let () (declare (not safe)) (##structure-type _%obj99537%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj99537%_
           _%off99538%_
           __tmp102655
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99533%_ _%off99534%_ _%val99535%_)
        (let ((__tmp102656
               (let () (declare (not safe)) (##structure-type _%obj99533%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99533%_
           _%val99535%_
           _%off99534%_
           __tmp102656
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99530%_ _%slot99531%_)
        (unchecked-field-ref
         _%obj99530%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99530%_))
          _%slot99531%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99526%_ _%slot99527%_ _%val99528%_)
        (unchecked-field-set!
         _%obj99526%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99526%_))
          _%slot99527%_)
         _%val99528%_)))
    (define slot-ref__%
      (lambda (_%obj99488%_ _%slot99489%_ _%E99490%_)
        (if (symbol? _%slot99489%_)
            (let ((_%slot99494%_ _%slot99489%_))
              (if (procedure? _%E99490%_)
                  (let ((_%E99504%_ _%E99490%_))
                    (__slot-ref__% _%obj99488%_ _%slot99494%_ _%E99504%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99490%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99489%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99517%_ _%slot99518%_)
        (let ((_%E99520%_ __slot-error))
          (slot-ref__% _%obj99517%_ _%slot99518%_ _%E99520%_))))
    (define slot-ref
      (lambda _g102658_
        (let ((_g102657_ (let () (declare (not safe)) (##length _g102658_))))
          (cond ((let () (declare (not safe)) (##fx= _g102657_ 2))
                 (apply slot-ref__0 _g102658_))
                ((let () (declare (not safe)) (##fx= _g102657_ 3))
                 (apply slot-ref__% _g102658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102658_))))))
    (define __slot-ref__%
      (lambda (_%obj99444%_ _%slot99445%_ _%E99446%_)
        (let* ((_%slot99449%_ _%slot99445%_)
               (_%E99457%_ _%E99446%_)
               (_%klass99466%_ (class-of _%obj99444%_))
               (_%$e99469%_
                (__class-slot-offset _%klass99466%_ _%slot99449%_)))
          (if _%$e99469%_
              ((lambda (_%off99472%_)
                 (unchecked-field-ref _%obj99444%_ _%off99472%_))
               _%$e99469%_)
              (let ()
                (declare (not safe))
                (_%E99457%_ _%obj99444%_ _%slot99449%_))))))
    (define __slot-ref__0
      (lambda (_%obj99478%_ _%slot99479%_)
        (let ((_%E99481%_ __slot-error))
          (__slot-ref__% _%obj99478%_ _%slot99479%_ _%E99481%_))))
    (define __slot-ref
      (lambda _g102660_
        (let ((_g102659_ (let () (declare (not safe)) (##length _g102660_))))
          (cond ((let () (declare (not safe)) (##fx= _g102659_ 2))
                 (apply __slot-ref__0 _g102660_))
                ((let () (declare (not safe)) (##fx= _g102659_ 3))
                 (apply __slot-ref__% _g102660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102660_))))))
    (define slot-set!__%
      (lambda (_%obj99402%_ _%slot99403%_ _%val99404%_ _%E99405%_)
        (if (symbol? _%slot99403%_)
            (let ((_%slot99409%_ _%slot99403%_))
              (if (procedure? _%E99405%_)
                  (let ((_%E99419%_ _%E99405%_))
                    (__slot-set!__%
                     _%obj99402%_
                     _%slot99409%_
                     _%val99404%_
                     _%E99419%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99405%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99403%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99432%_ _%slot99433%_ _%val99434%_)
        (let ((_%E99436%_ __slot-error))
          (slot-set!__% _%obj99432%_ _%slot99433%_ _%val99434%_ _%E99436%_))))
    (define slot-set!
      (lambda _g102662_
        (let ((_g102661_ (let () (declare (not safe)) (##length _g102662_))))
          (cond ((let () (declare (not safe)) (##fx= _g102661_ 3))
                 (apply slot-set!__0 _g102662_))
                ((let () (declare (not safe)) (##fx= _g102661_ 4))
                 (apply slot-set!__% _g102662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102662_))))))
    (define __slot-set!__%
      (lambda (_%obj99355%_ _%slot99356%_ _%val99357%_ _%E99358%_)
        (let* ((_%slot99361%_ _%slot99356%_)
               (_%E99369%_ _%E99358%_)
               (_%klass99378%_ (class-of _%obj99355%_))
               (_%$e99381%_
                (__class-slot-offset _%klass99378%_ _%slot99361%_)))
          (if _%$e99381%_
              ((lambda (_%off99384%_)
                 (unchecked-field-set! _%obj99355%_ _%off99384%_ _%val99357%_))
               _%$e99381%_)
              (let ()
                (declare (not safe))
                (_%E99369%_ _%obj99355%_ _%slot99361%_))))))
    (define __slot-set!__0
      (lambda (_%obj99390%_ _%slot99391%_ _%val99392%_)
        (let ((_%E99394%_ __slot-error))
          (__slot-set!__%
           _%obj99390%_
           _%slot99391%_
           _%val99392%_
           _%E99394%_))))
    (define __slot-set!
      (lambda _g102664_
        (let ((_g102663_ (let () (declare (not safe)) (##length _g102664_))))
          (cond ((let () (declare (not safe)) (##fx= _g102663_ 3))
                 (apply __slot-set!__0 _g102664_))
                ((let () (declare (not safe)) (##fx= _g102663_ 4))
                 (apply __slot-set!__% _g102664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102664_))))))
    (define __slot-error
      (lambda (_%obj99351%_ _%slot99352%_)
        (error '"Cannot find slot"
               'object:
               _%obj99351%_
               'slot:
               _%slot99352%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99326%_ _%maybe-super-class99327%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99326%_ 'class))
            (let ((_%maybe-sub-class99331%_ _%maybe-sub-class99326%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99327%_
                     'class))
                  (let ((_%maybe-super-class99341%_
                         _%maybe-super-class99327%_))
                    (__subclass?
                     _%maybe-sub-class99331%_
                     _%maybe-super-class99341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99327%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99326%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99298%_ _%maybe-super-class99299%_)
        (let* ((_%maybe-sub-class99302%_ _%maybe-sub-class99298%_)
               (_%maybe-super-class99310%_ _%maybe-super-class99299%_)
               (_%maybe-super-class-id99319%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99310%_)))
               (_%$e99321%_
                (eq? _%maybe-super-class-id99319%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99302%_)))))
          (if _%$e99321%_
              _%$e99321%_
              (let ((__tmp102666
                     (lambda (_%super-class99324%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99324%_))
                            _%maybe-super-class-id99319%_)))
                    (__tmp102665
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99302%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102666 __tmp102665))))))
    (define object?
      (lambda (_%o99295%_)
        (if (let () (declare (not safe)) (##structure? _%o99295%_))
            (let ((__tmp102667
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99295%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102667 'class))
            '#f)))
    (define object-type
      (lambda (_%o99290%_)
        (if (let () (declare (not safe)) (##structure? _%o99290%_))
            (let ((_%klass99293%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99290%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99293%_ 'class))
                  _%klass99293%_
                  (begin
                    (error '"not an object" _%o99290%_ _%klass99293%_)
                    '#!void)))
            (begin (error '"not an object" _%o99290%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99275%_ _%obj99276%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99275%_ 'class))
            (let ((_%klass99280%_ _%klass99275%_))
              (__direct-instance? _%klass99280%_ _%obj99276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99275%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99262%_ _%obj99263%_)
        (let* ((_%klass99266%_ _%klass99262%_)
               (__tmp102668
                (let () (declare (not safe)) (##type-id _%klass99266%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99263%_ __tmp102668))))
    (define immediate-instance-of?
      (lambda (_%klass99258%_ _%obj99259%_)
        (if (let () (declare (not safe)) (##structure? _%obj99259%_))
            (eq? _%klass99258%_
                 (let () (declare (not safe)) (##structure-type _%obj99259%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99243%_ _%obj99244%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99243%_ 'class))
            (let ((_%klass99248%_ _%klass99243%_))
              (__struct-instance? _%klass99248%_ _%obj99244%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99243%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99230%_ _%obj99231%_)
        (let* ((_%klass99234%_ _%klass99230%_)
               (__tmp102669
                (let () (declare (not safe)) (##type-id _%klass99234%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99231%_ __tmp102669))))
    (define class-instance?
      (lambda (_%klass99215%_ _%obj99216%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99215%_ 'class))
            (let ((_%klass99220%_ _%klass99215%_))
              (__class-instance? _%klass99220%_ _%obj99216%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99215%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99200%_ _%obj99201%_)
        (let* ((_%klass99204%_ _%klass99200%_)
               (_%type99213%_ (class-of _%obj99201%_)))
          (__subclass? _%type99213%_ _%klass99204%_))))
    (define make-object
      (lambda (_%klass99175%_ _%k99176%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99175%_ 'class))
            (let ((_%klass99180%_ _%klass99175%_))
              (if (fixnum? _%k99176%_)
                  (let ((_%k99190%_ _%k99176%_))
                    (__make-object _%klass99180%_ _%k99190%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99176%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99175%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99152%_ _%k99153%_)
        (let* ((_%klass99156%_ _%klass99152%_) (_%k99164%_ _%k99153%_))
          (if (__class-type-system? _%klass99156%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99156%_)
                '#!void)
              (let ((_%obj99173%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99156%_ _%k99164%_))))
                (object-fill! _%obj99173%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99137%_ _%fill99138%_)
        (if '#t
            (let ((_%obj99142%_ _%obj99137%_))
              (__object-fill! _%obj99142%_ _%fill99138%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99137%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99119%_ _%fill99120%_)
        (let ((_%obj99123%_ _%obj99119%_))
          (let _%loop99132%_ ((_%i99134%_
                               (let ((__tmp102670
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99123%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102670 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99134%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99123%_
                     _%fill99120%_
                     _%i99134%_
                     '#f
                     '#f))
                  (_%loop99132%_
                   (let () (declare (not safe)) (##fx- _%i99134%_ '1))))
                _%obj99123%_)))))
    (define new-instance
      (lambda (_%klass99105%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99105%_ 'class))
            (let ((_%klass99109%_ _%klass99105%_))
              (__new-instance _%klass99109%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99105%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass99093%_)
        (let* ((_%klass99096%_ _%klass99093%_)
               (__obj102585
                (let ((__tmp102671
                       (let ((__tmp102672
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass99096%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102672))))
                  (declare (not safe))
                  (##make-structure _%klass99096%_ __tmp102671))))
          (object-fill! __obj102585 '#f)
          __obj102585)))
    (define make-instance
      (lambda (_%klass99078%_ . _%args99079%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99078%_ 'class))
            (let ((_%klass99083%_ _%klass99078%_))
              (declare (not safe))
              (##apply __make-instance _%klass99083%_ _%args99079%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass99078%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass99050%_ . _%args99051%_)
        (let* ((_%klass99054%_ _%klass99050%_)
               (_%$e99063%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99054%_ '10 '#f '#f))))
          (if _%$e99063%_
              ((lambda (_%kons-id99066%_)
                 (let ((_%obj99068%_ (__new-instance _%klass99054%_)))
                   (___constructor-init!
                    _%klass99054%_
                    _%kons-id99066%_
                    _%obj99068%_
                    _%args99051%_)
                   _%obj99068%_))
               _%$e99063%_)
              (if (__class-type-metaclass? _%klass99054%_)
                  (let ((_%obj99071%_ (__new-instance _%klass99054%_)))
                    (__metaclass-instance-init!
                     _%klass99054%_
                     _%obj99071%_
                     _%args99051%_)
                    _%obj99071%_)
                  (if (__class-type-struct? _%klass99054%_)
                      (if (let ((__tmp102674
                                 (__class-type-field-count _%klass99054%_))
                                (__tmp102673
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args99051%_))))
                            (declare (not safe))
                            (##fx= __tmp102674 __tmp102673))
                          (apply ##structure _%klass99054%_ _%args99051%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass99054%_
                                   'slots:
                                   (__class-type-slot-list _%klass99054%_)
                                   'args:
                                   _%args99051%_)
                            '#!void))
                      (let ((_%obj99074%_ (__new-instance _%klass99054%_)))
                        (___class-instance-init!
                         _%klass99054%_
                         _%obj99074%_
                         _%args99051%_)
                        _%obj99074%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj99035%_ . _%args99036%_)
        (if '#t
            (let ((_%obj99040%_ _%obj99035%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj99040%_ _%args99036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj99035%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj99022%_ . _%args99023%_)
        (let ((_%obj99026%_ _%obj99022%_))
          (if (let ((__tmp102676
                     (let () (declare (not safe)) (##length _%args99023%_)))
                    (__tmp102675
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj99026%_))))
                (declare (not safe))
                (##fx< __tmp102676 __tmp102675))
              (___struct-instance-init! _%obj99026%_ _%args99023%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj99026%_
                     'args:
                     _%args99023%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98981%_ _%args98982%_)
        (let _%lp98984%_ ((_%k98986%_ '1) (_%rest98987%_ _%args98982%_))
          (let* ((_%rest9898898996%_ _%rest98987%_)
                 (_%else9899099004%_ (lambda () _%obj98981%_))
                 (_%K9899299010%_
                  (lambda (_%rest99007%_ _%hd99008%_)
                    (unchecked-field-set! _%obj98981%_ _%k98986%_ _%hd99008%_)
                    (_%lp98984%_
                     (let () (declare (not safe)) (##fx+ _%k98986%_ '1))
                     _%rest99007%_))))
            (if (pair? _%rest9898898996%_)
                (let ((_%hd9899399013%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9898898996%_)))
                      (_%tl9899499015%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9898898996%_))))
                  (let* ((_%hd99018%_ _%hd9899399013%_)
                         (_%rest99020%_ _%tl9899499015%_))
                    (_%K9899299010%_ _%rest99020%_ _%hd99018%_)))
                (_%else9899099004%_))))))
    (define class-instance-init!
      (lambda (_%obj98966%_ . _%args98967%_)
        (if '#t
            (let ((_%obj98971%_ _%obj98966%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98971%_ _%args98967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98966%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98953%_ . _%args98954%_)
        (let ((_%obj98957%_ _%obj98953%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98957%_))
           _%obj98957%_
           _%args98954%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98895%_ _%obj98896%_ _%args98897%_)
        (let _%lp98899%_ ((_%rest98901%_ _%args98897%_))
          (let* ((_%rest9890298912%_ _%rest98901%_)
                 (_%else9890498920%_
                  (lambda ()
                    (if (null? _%rest98901%_)
                        _%obj98896%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98895%_
                               'rest:
                               _%rest98901%_))))
                 (_%K9890698934%_
                  (lambda (_%rest98923%_ _%val98924%_ _%key98925%_)
                    (if (keyword? _%key98925%_)
                        (let ((_%$e98928%_
                               (__class-slot-offset
                                _%klass98895%_
                                _%key98925%_)))
                          (if _%$e98928%_
                              ((lambda (_%off98931%_)
                                 (unchecked-field-set!
                                  _%obj98896%_
                                  _%off98931%_
                                  _%val98924%_)
                                 (_%lp98899%_ _%rest98923%_))
                               _%$e98928%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98895%_
                                     'slot:
                                     _%key98925%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98925%_)))))
            (if (pair? _%rest9890298912%_)
                (let ((_%hd9890798937%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9890298912%_)))
                      (_%tl9890898939%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9890298912%_))))
                  (let ((_%key98942%_ _%hd9890798937%_))
                    (if (pair? _%tl9890898939%_)
                        (let ((_%hd9890998944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9890898939%_)))
                              (_%tl9891098946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9890898939%_))))
                          (let* ((_%val98949%_ _%hd9890998944%_)
                                 (_%rest98951%_ _%tl9891098946%_))
                            (_%K9890698934%_
                             _%rest98951%_
                             _%val98949%_
                             _%key98942%_)))
                        (_%else9890498920%_))))
                (_%else9890498920%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98891%_ _%obj98892%_ _%args98893%_)
        (apply call-method
               _%klass98891%_
               'instance-init!
               _%obj98892%_
               _%args98893%_)))
    (define constructor-init!
      (lambda (_%klass98854%_ _%kons-id98855%_ _%obj98856%_ . _%args98857%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98854%_ 'class))
            (let ((_%klass98861%_ _%klass98854%_))
              (if (symbol? _%kons-id98855%_)
                  (let ((_%kons-id98871%_ _%kons-id98855%_))
                    (if '#t
                        (let ((_%obj98881%_ _%obj98856%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98861%_
                                   _%kons-id98871%_
                                   _%obj98881%_
                                   _%args98857%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98856%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98854%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98823%_ _%kons-id98824%_ _%obj98825%_ . _%args98826%_)
        (let* ((_%klass98829%_ _%klass98823%_)
               (_%kons-id98837%_ _%kons-id98824%_)
               (_%obj98845%_ _%obj98825%_))
          (___constructor-init!
           _%klass98829%_
           _%kons-id98837%_
           _%obj98845%_
           _%args98826%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98812%_ _%kons-id98813%_ _%obj98814%_ _%args98815%_)
        (let ((_%$e98817%_
               (__find-method _%klass98812%_ _%obj98814%_ _%kons-id98813%_)))
          (if _%$e98817%_
              ((lambda (_%kons98820%_)
                 (apply _%kons98820%_ _%obj98814%_ _%args98815%_)
                 _%obj98814%_)
               _%$e98817%_)
              (error '"missing constructor"
                     'class:
                     _%klass98812%_
                     'method:
                     _%kons-id98813%_)))))
    (define struct-copy
      (lambda (_%struct98798%_)
        (if '#t
            (let ((_%struct98802%_ _%struct98798%_))
              (__struct-copy _%struct98802%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98798%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98786%_)
        (let ((_%struct98789%_ _%struct98786%_))
          (declare (not safe))
          (##structure-copy _%struct98789%_))))
    (define struct->list
      (lambda (_%obj98772%_)
        (if '#t
            (let ((_%obj98776%_ _%obj98772%_)) (__struct->list _%obj98776%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98772%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98760%_)
        (let ((_%obj98763%_ _%obj98760%_))
          (declare (not safe))
          (##vector->list _%obj98763%_))))
    (define class->list
      (lambda (_%obj98746%_)
        (if '#t
            (let ((_%obj98750%_ _%obj98746%_)) (__class->list _%obj98750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj98746%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98722%_)
        (let* ((_%obj98725%_ _%obj98722%_)
               (_%klass98734%_
                (let () (declare (not safe)) (##structure-type _%obj98725%_)))
               (_%slot-vector98736%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98734%_ '7 '#f '#f))))
          (let _%loop98738%_ ((_%index98740%_
                               (let ((__tmp102677
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98736%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102677 '1)))
                              (_%plist98741%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98740%_ '1))
                (cons _%klass98734%_ _%plist98741%_)
                (let ((_%slot98744%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98736%_ _%index98740%_))))
                  (_%loop98738%_
                   (let () (declare (not safe)) (##fx- _%index98740%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98744%_))
                         (cons (unchecked-field-ref
                                _%obj98725%_
                                _%index98740%_)
                               _%plist98741%_)))))))))
    (define call-method
      (lambda (_%obj98706%_ _%id98707%_ . _%args98708%_)
        (if (symbol? _%id98707%_)
            (let ((_%id98712%_ _%id98707%_))
              (declare (not safe))
              (##apply __call-method _%obj98706%_ _%id98712%_ _%args98708%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id98707%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98675%_ _%id98676%_ . _%args98677%_)
        (let* ((_%id98680%_ _%id98676%_)
               (_%$e98689%_ (__method-ref _%obj98675%_ _%id98680%_)))
          (if _%$e98689%_
              ((lambda (_%method98692%_)
                 (let ((_%method98694%_ _%method98692%_))
                   (apply _%method98694%_ _%obj98675%_ _%args98677%_)))
               _%$e98689%_)
              (error '"cannot find method"
                     'object:
                     _%obj98675%_
                     'method:
                     _%id98680%_)))))
    (define method-ref
      (lambda (_%obj98660%_ _%id98661%_)
        (if (symbol? _%id98661%_)
            (let ((_%id98665%_ _%id98661%_))
              (__method-ref _%obj98660%_ _%id98665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id98661%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98647%_ _%id98648%_)
        (let ((_%id98651%_ _%id98648%_))
          (__find-method (class-of _%obj98647%_) _%obj98647%_ _%id98651%_))))
    (define checked-method-ref
      (lambda (_%obj98640%_ _%id98641%_)
        (let ((_%$e98644%_ (method-ref _%obj98640%_ _%id98641%_)))
          (if _%$e98644%_
              _%$e98644%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98640%_
                       'method:
                       _%id98641%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98625%_ _%id98626%_)
        (if (symbol? _%id98626%_)
            (let ((_%id98630%_ _%id98626%_))
              (__bound-method-ref _%obj98625%_ _%id98630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id98626%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98593%_ _%id98594%_)
        (let* ((_%id98597%_ _%id98594%_)
               (_%$e98606%_ (__method-ref _%obj98593%_ _%id98597%_)))
          (if _%$e98606%_
              ((lambda (_%method98609%_)
                 (let ((_%method98611%_ _%method98609%_))
                   (lambda _%args98622%_
                     (apply _%method98611%_ _%obj98593%_ _%args98622%_))))
               _%$e98606%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98578%_ _%id98579%_)
        (if (symbol? _%id98579%_)
            (let ((_%id98583%_ _%id98579%_))
              (__checked-bound-method-ref _%obj98578%_ _%id98583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id98579%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98561%_ _%id98562%_)
        (let* ((_%id98565%_ _%id98562%_)
               (_%method98574%_ (checked-method-ref _%obj98561%_ _%id98565%_)))
          (lambda _%args98576%_
            (apply _%method98574%_ _%obj98561%_ _%args98576%_)))))
    (define find-method
      (lambda (_%klass98535%_ _%obj98536%_ _%id98537%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98535%_ 'class))
            (let ((_%klass98541%_ _%klass98535%_))
              (if (symbol? _%id98537%_)
                  (let ((_%id98551%_ _%id98537%_))
                    (__find-method _%klass98541%_ _%obj98536%_ _%id98551%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98537%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass98535%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98508%_ _%obj98509%_ _%id98510%_)
        (let* ((_%klass98513%_ _%klass98508%_)
               (_%id98521%_ _%id98510%_)
               (_%$e98530%_
                (__direct-method-ref _%klass98513%_ _%obj98509%_ _%id98521%_)))
          (if _%$e98530%_
              _%$e98530%_
              (if (__class-type-sealed? _%klass98513%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98513%_
                   _%obj98509%_
                   _%id98521%_))))))
    (define mixin-find-method
      (lambda (_%mixins98492%_ _%obj98493%_ _%id98494%_)
        (if (symbol? _%id98494%_)
            (let ((_%id98498%_ _%id98494%_))
              (__mixin-find-method _%mixins98492%_ _%obj98493%_ _%id98498%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id98494%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98474%_ _%obj98475%_ _%id98476%_)
        (let* ((_%id98479%_ _%id98476%_)
               (__tmp102678
                (lambda (_%g9848798489%_)
                  (direct-method-ref
                   _%g9848798489%_
                   _%obj98475%_
                   _%id98479%_))))
          (declare (not safe))
          (__ormap1 __tmp102678 _%mixins98474%_))))
    (define direct-method-ref
      (lambda (_%klass98448%_ _%obj98449%_ _%id98450%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98448%_ 'class))
            (let ((_%klass98454%_ _%klass98448%_))
              (if (symbol? _%id98450%_)
                  (let ((_%id98464%_ _%id98450%_))
                    (__direct-method-ref
                     _%klass98454%_
                     _%obj98449%_
                     _%id98464%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98450%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass98448%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98402%_ _%obj98403%_ _%id98404%_)
        (let* ((_%klass98407%_ _%klass98402%_) (_%id98415%_ _%id98404%_))
          (letrec ((_%metaclass-resolve-method98424%_
                    (lambda ()
                      (let ((__method102586
                             (__method-ref _%klass98407%_ 'direct-method-ref)))
                        (if __method102586
                            (let ()
                              (declare (not safe))
                              (__method102586
                               _%klass98407%_
                               _%obj98403%_
                               _%id98415%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98407%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98425%_
                    (lambda ()
                      (let ((_%method98445%_
                             (_%metaclass-resolve-method98424%_)))
                        (let ((__tmp102680
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98407%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102679
                               (if _%method98445%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102680
                           _%id98415%_
                           __tmp102679))
                        _%method98445%_))))
            (let ((_%$e98427%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98407%_ '11 '#f '#f))))
              (if _%$e98427%_
                  ((lambda (_%ht98430%_)
                     (let ((_%method98432%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98430%_
                               _%id98415%_
                               '#f))))
                       (if (procedure? _%method98432%_)
                           _%method98432%_
                           (if (__class-type-metaclass? _%klass98407%_)
                               (let ((_%$e98436%_ _%method98432%_))
                                 (if (eq? 'resolved _%$e98436%_)
                                     (_%metaclass-resolve-method98424%_)
                                     (if (eq? 'unknown _%$e98436%_)
                                         '#f
                                         (_%metaclass-resolve-method!98425%_))))
                               '#f))))
                   _%$e98427%_)
                  (if (__class-type-metaclass? _%klass98407%_)
                      (let ((_%tab98441%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98407%_
                           _%tab98441%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98425%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98376%_ _%obj98377%_ _%id98378%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98376%_ 'class))
            (let ((_%klass98382%_ _%klass98376%_))
              (if (symbol? _%id98378%_)
                  (let ((_%id98392%_ _%id98378%_))
                    (__mixin-method-ref
                     _%klass98382%_
                     _%obj98377%_
                     _%id98392%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98378%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass98376%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98354%_ _%obj98355%_ _%id98356%_)
        (let* ((_%klass98359%_ _%klass98354%_) (_%id98367%_ _%id98356%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98359%_ '6 '#f '#f))
           _%obj98355%_
           _%id98367%_))))
    (define bind-method!__%
      (lambda (_%klass98313%_ _%id98314%_ _%proc98315%_ _%rebind?98316%_)
        (if (symbol? _%id98314%_)
            (let ((_%id98320%_ _%id98314%_))
              (if (procedure? _%proc98315%_)
                  (let ((_%proc98330%_ _%proc98315%_))
                    (__bind-method!__%
                     _%klass98313%_
                     _%id98320%_
                     _%proc98330%_
                     _%rebind?98316%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98315%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id98314%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98343%_ _%id98344%_ _%proc98345%_)
        (let ((_%rebind?98347%_ '#f))
          (bind-method!__%
           _%klass98343%_
           _%id98344%_
           _%proc98345%_
           _%rebind?98347%_))))
    (define bind-method!
      (lambda _g102682_
        (let ((_g102681_ (let () (declare (not safe)) (##length _g102682_))))
          (cond ((let () (declare (not safe)) (##fx= _g102681_ 3))
                 (apply bind-method!__0 _g102682_))
                ((let () (declare (not safe)) (##fx= _g102681_ 4))
                 (apply bind-method!__% _g102682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102682_))))))
    (define __bind-method!__%
      (lambda (_%klass98264%_ _%id98265%_ _%proc98266%_ _%rebind?98267%_)
        (let* ((_%id98270%_ _%id98265%_) (_%proc98278%_ _%proc98266%_))
          (letrec ((_%bind!98287%_
                    (lambda (_%ht98296%_)
                      (if (and (not _%rebind?98267%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98296%_
                                  _%id98270%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98264%_
                                 'method:
                                 _%id98270%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98296%_
                               _%id98270%_
                               _%proc98278%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98264%_ 'class))
                (let ((_%ht98290%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98264%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98290%_
                      (_%bind!98287%_ _%ht98290%_)
                      (let ((_%ht98292%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98264%_
                           _%ht98292%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98287%_ _%ht98292%_))))
                (if (let () (declare (not safe)) (##type? _%klass98264%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98264%_)
                     _%id98270%_
                     _%proc98278%_
                     _%rebind?98267%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98264%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98301%_ _%id98302%_ _%proc98303%_)
        (let ((_%rebind?98305%_ '#f))
          (__bind-method!__%
           _%klass98301%_
           _%id98302%_
           _%proc98303%_
           _%rebind?98305%_))))
    (define __bind-method!
      (lambda _g102684_
        (let ((_g102683_ (let () (declare (not safe)) (##length _g102684_))))
          (cond ((let () (declare (not safe)) (##fx= _g102683_ 3))
                 (apply __bind-method!__0 _g102684_))
                ((let () (declare (not safe)) (##fx= _g102683_ 4))
                 (apply __bind-method!__% _g102684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102684_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98244%_ _%seed98246%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98244%_
           procedure-hash
           eq?
           _%seed98246%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98252%_ '#f) (_%seed98254%_ '0))
          (make-method-specializer-table__%
           _%size-hint98252%_
           _%seed98254%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98256%_)
        (let ((_%seed98258%_ '0))
          (make-method-specializer-table__%
           _%size-hint98256%_
           _%seed98258%_))))
    (define make-method-specializer-table
      (lambda _g102686_
        (let ((_g102685_ (let () (declare (not safe)) (##length _g102686_))))
          (cond ((let () (declare (not safe)) (##fx= _g102685_ 0))
                 (apply make-method-specializer-table__0 _g102686_))
                ((let () (declare (not safe)) (##fx= _g102685_ 1))
                 (apply make-method-specializer-table__1 _g102686_))
                ((let () (declare (not safe)) (##fx= _g102685_ 2))
                 (apply make-method-specializer-table__% _g102686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102686_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98197%_ _%key98198%_ _%default98199%_)
        (let ((_%table98201%_
               (let () (declare (not safe)) (&raw-table-table _%tab98197%_)))
              (_%seed98202%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98197%_))))
          (let* ((_%h98204%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98198%_))
                         _%seed98202%_))
                 (_%size98207%_ (vector-length _%table98201%_))
                 (_%entries98210%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98207%_ '2)))
                 (_%start98213%_
                  (let ((__tmp102687
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98204%_ _%entries98210%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102687 '1))))
            (let _%loop98217%_ ((_%probe98220%_ _%start98213%_)
                                (_%i98222%_ '1)
                                (_%deleted98224%_ '#f))
              (let ((_%k98227%_ (vector-ref _%table98201%_ _%probe98220%_)))
                (if (eq? _%k98227%_ (macro-unused-obj))
                    _%default98199%_
                    (if (eq? _%k98227%_ (macro-deleted-obj))
                        (_%loop98217%_
                         (let ((_%next-probe98232%_
                                (fx+ _%start98213%_
                                     _%i98222%_
                                     (fx* _%i98222%_ _%i98222%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98232%_ _%size98207%_))
                         (let () (declare (not safe)) (##fx+ _%i98222%_ '1))
                         (let ((_%$e98235%_ _%deleted98224%_))
                           (if _%$e98235%_ _%$e98235%_ _%probe98220%_)))
                        (if (eq? _%key98198%_ _%k98227%_)
                            (vector-ref
                             _%table98201%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98220%_ '1)))
                            (_%loop98217%_
                             (let ((_%next-probe98240%_
                                    (fx+ _%start98213%_
                                         _%i98222%_
                                         (fx* _%i98222%_ _%i98222%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98240%_ _%size98207%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98222%_ '1))
                             _%deleted98224%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98193%_ _%key98194%_ _%value98195%_)
        (if (let ((__tmp102690
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98193%_)))
                  (__tmp102688
                   (let ((__tmp102689
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98193%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102689 '4))))
              (declare (not safe))
              (##fx< __tmp102690 __tmp102688))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98193%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98193%_
         _%key98194%_
         _%value98195%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98144%_ _%key98145%_ _%value98146%_)
        (let ((_%table98149%_
               (let () (declare (not safe)) (&raw-table-table _%tab98144%_)))
              (_%seed98150%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98144%_))))
          (let* ((_%h98152%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98145%_))
                         _%seed98150%_))
                 (_%size98155%_ (vector-length _%table98149%_))
                 (_%entries98158%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98155%_ '2)))
                 (_%start98161%_
                  (let ((__tmp102691
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98152%_ _%entries98158%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102691 '1))))
            (let _%loop98165%_ ((_%probe98168%_ _%start98161%_)
                                (_%i98170%_ '1)
                                (_%deleted98172%_ '#f))
              (let ((_%k98175%_ (vector-ref _%table98149%_ _%probe98168%_)))
                (if (eq? _%k98175%_ (macro-unused-obj))
                    (if _%deleted98172%_
                        (begin
                          (vector-set!
                           _%table98149%_
                           _%deleted98172%_
                           _%key98145%_)
                          (vector-set!
                           _%table98149%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98172%_ '1))
                           _%value98146%_)
                          ((lambda ()
                             (let ((__tmp102692
                                    (let ((__tmp102693
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98144%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102693 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98144%_
                                __tmp102692)))))
                        (begin
                          (vector-set!
                           _%table98149%_
                           _%probe98168%_
                           _%key98145%_)
                          (vector-set!
                           _%table98149%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98168%_ '1))
                           _%value98146%_)
                          ((lambda ()
                             (let ((__tmp102694
                                    (let ((__tmp102695
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98144%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102695 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98144%_ __tmp102694))
                             (let ((__tmp102696
                                    (let ((__tmp102697
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98144%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102697 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98144%_
                                __tmp102696))))))
                    (if (eq? _%k98175%_ (macro-deleted-obj))
                        (_%loop98165%_
                         (let ((_%next-probe98182%_
                                (fx+ _%start98161%_
                                     _%i98170%_
                                     (fx* _%i98170%_ _%i98170%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98182%_ _%size98155%_))
                         (let () (declare (not safe)) (##fx+ _%i98170%_ '1))
                         (let ((_%$e98185%_ _%deleted98172%_))
                           (if _%$e98185%_ _%$e98185%_ _%probe98168%_)))
                        (if (eq? _%key98145%_ _%k98175%_)
                            (let ()
                              (vector-set!
                               _%table98149%_
                               _%probe98168%_
                               _%key98145%_)
                              (vector-set!
                               _%table98149%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98168%_ '1))
                               _%value98146%_))
                            (_%loop98165%_
                             (let ((_%next-probe98190%_
                                    (fx+ _%start98161%_
                                         _%i98170%_
                                         (fx* _%i98170%_ _%i98170%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98190%_ _%size98155%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98170%_ '1))
                             _%deleted98172%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98139%_
               _%key98140%_
               _%method-specializer-table-update!98141%_
               _%default98142%_)
        (if (let ((__tmp102700
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98139%_)))
                  (__tmp102698
                   (let ((__tmp102699
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98139%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102699 '4))))
              (declare (not safe))
              (##fx< __tmp102700 __tmp102698))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98139%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98139%_
         _%key98140%_
         _%method-specializer-table-update!98141%_
         _%default98142%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab98089%_
               _%key98090%_
               _%method-specializer-table-update!98091%_
               _%default98092%_)
        (let ((_%table98095%_
               (let () (declare (not safe)) (&raw-table-table _%tab98089%_)))
              (_%seed98096%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98089%_))))
          (let* ((_%h98098%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98090%_))
                         _%seed98096%_))
                 (_%size98101%_ (vector-length _%table98095%_))
                 (_%entries98104%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98101%_ '2)))
                 (_%start98107%_
                  (let ((__tmp102701
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98098%_ _%entries98104%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102701 '1))))
            (let _%loop98111%_ ((_%probe98114%_ _%start98107%_)
                                (_%i98116%_ '1)
                                (_%deleted98118%_ '#f))
              (let ((_%k98121%_ (vector-ref _%table98095%_ _%probe98114%_)))
                (if (eq? _%k98121%_ (macro-unused-obj))
                    (if _%deleted98118%_
                        (begin
                          (vector-set!
                           _%table98095%_
                           _%deleted98118%_
                           _%key98090%_)
                          (vector-set!
                           _%table98095%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98118%_ '1))
                           (_%method-specializer-table-update!98091%_
                            _%default98092%_))
                          ((lambda ()
                             (let ((__tmp102702
                                    (let ((__tmp102703
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98089%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102703 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98089%_
                                __tmp102702)))))
                        (begin
                          (vector-set!
                           _%table98095%_
                           _%probe98114%_
                           _%key98090%_)
                          (vector-set!
                           _%table98095%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98114%_ '1))
                           (_%method-specializer-table-update!98091%_
                            _%default98092%_))
                          ((lambda ()
                             (let ((__tmp102704
                                    (let ((__tmp102705
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98089%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102705 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98089%_ __tmp102704))
                             (let ((__tmp102706
                                    (let ((__tmp102707
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98089%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102707 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98089%_
                                __tmp102706))))))
                    (if (eq? _%k98121%_ (macro-deleted-obj))
                        (_%loop98111%_
                         (let ((_%next-probe98128%_
                                (fx+ _%start98107%_
                                     _%i98116%_
                                     (fx* _%i98116%_ _%i98116%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98128%_ _%size98101%_))
                         (let () (declare (not safe)) (##fx+ _%i98116%_ '1))
                         (let ((_%$e98131%_ _%deleted98118%_))
                           (if _%$e98131%_ _%$e98131%_ _%probe98114%_)))
                        (if (eq? _%key98090%_ _%k98121%_)
                            (let ()
                              (vector-set!
                               _%table98095%_
                               _%probe98114%_
                               _%key98090%_)
                              (vector-set!
                               _%table98095%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98114%_ '1))
                               (_%method-specializer-table-update!98091%_
                                (vector-ref
                                 _%table98095%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98114%_ '1))))))
                            (_%loop98111%_
                             (let ((_%next-probe98136%_
                                    (fx+ _%start98107%_
                                         _%i98116%_
                                         (fx* _%i98116%_ _%i98116%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98136%_ _%size98101%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98116%_ '1))
                             _%deleted98118%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab98044%_ _%key98046%_)
        (let ((_%table98049%_
               (let () (declare (not safe)) (&raw-table-table _%tab98044%_)))
              (_%seed98051%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98044%_))))
          (let* ((_%h98054%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98046%_))
                         _%seed98051%_))
                 (_%size98057%_ (vector-length _%table98049%_))
                 (_%entries98060%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98057%_ '2)))
                 (_%start98063%_
                  (let ((__tmp102708
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98054%_ _%entries98060%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102708 '1))))
            (let _%loop98067%_ ((_%probe98070%_ _%start98063%_)
                                (_%i98072%_ '1))
              (let ((_%k98075%_ (vector-ref _%table98049%_ _%probe98070%_)))
                (if (eq? _%k98075%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k98075%_ (macro-deleted-obj))
                        (_%loop98067%_
                         (let ((_%next-probe98080%_
                                (fx+ _%start98063%_
                                     _%i98072%_
                                     (fx* _%i98072%_ _%i98072%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98080%_ _%size98057%_))
                         (let () (declare (not safe)) (##fx+ _%i98072%_ '1)))
                        (if (eq? _%key98046%_ _%k98075%_)
                            (let ()
                              (vector-set!
                               _%table98049%_
                               _%probe98070%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table98049%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98070%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102709
                                        (let ((__tmp102710
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab98044%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102710 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab98044%_
                                    __tmp102709)))))
                            (_%loop98067%_
                             (let ((_%next-probe98086%_
                                    (fx+ _%start98063%_
                                         _%i98072%_
                                         (fx* _%i98072%_ _%i98072%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98086%_ _%size98057%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98072%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc98035%_ _%specializer98036%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again98040%_ ()
            (if (let ((__tmp102711
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102711 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again98040%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc98035%_
         _%specializer98036%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc98025%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again98029%_ ()
            (if (let ((__tmp102712
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102712 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again98029%_)))))
        (let ((_%specializer98033%_
               (method-specializer-table-ref
                __method-specializers
                _%proc98025%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer98033%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass98023%_)
        (let ((__tmp102713
               (let () (declare (not safe)) (##type-id _%klass98023%_))))
          (declare (not safe))
          (symbolic-hash __tmp102713))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint98004%_ _%seed98006%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98004%_
           __class-specializer-hash-key
           eq?
           _%seed98006%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98012%_ '#f) (_%seed98014%_ '0))
          (make-class-specializer-table__% _%size-hint98012%_ _%seed98014%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint98016%_)
        (let ((_%seed98018%_ '0))
          (make-class-specializer-table__% _%size-hint98016%_ _%seed98018%_))))
    (define make-class-specializer-table
      (lambda _g102715_
        (let ((_g102714_ (let () (declare (not safe)) (##length _g102715_))))
          (cond ((let () (declare (not safe)) (##fx= _g102714_ 0))
                 (apply make-class-specializer-table__0 _g102715_))
                ((let () (declare (not safe)) (##fx= _g102714_ 1))
                 (apply make-class-specializer-table__1 _g102715_))
                ((let () (declare (not safe)) (##fx= _g102714_ 2))
                 (apply make-class-specializer-table__% _g102715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102715_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97957%_ _%key97958%_ _%default97959%_)
        (let ((_%table97961%_
               (let () (declare (not safe)) (&raw-table-table _%tab97957%_)))
              (_%seed97962%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97957%_))))
          (let* ((_%h97964%_
                  (fxxor (__class-specializer-hash-key _%key97958%_)
                         _%seed97962%_))
                 (_%size97967%_ (vector-length _%table97961%_))
                 (_%entries97970%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97967%_ '2)))
                 (_%start97973%_
                  (let ((__tmp102716
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97964%_ _%entries97970%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102716 '1))))
            (let _%loop97977%_ ((_%probe97980%_ _%start97973%_)
                                (_%i97982%_ '1)
                                (_%deleted97984%_ '#f))
              (let ((_%k97987%_ (vector-ref _%table97961%_ _%probe97980%_)))
                (if (eq? _%k97987%_ (macro-unused-obj))
                    _%default97959%_
                    (if (eq? _%k97987%_ (macro-deleted-obj))
                        (_%loop97977%_
                         (let ((_%next-probe97992%_
                                (fx+ _%start97973%_
                                     _%i97982%_
                                     (fx* _%i97982%_ _%i97982%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97992%_ _%size97967%_))
                         (let () (declare (not safe)) (##fx+ _%i97982%_ '1))
                         (let ((_%$e97995%_ _%deleted97984%_))
                           (if _%$e97995%_ _%$e97995%_ _%probe97980%_)))
                        (if (eq? _%key97958%_ _%k97987%_)
                            (vector-ref
                             _%table97961%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97980%_ '1)))
                            (_%loop97977%_
                             (let ((_%next-probe98000%_
                                    (fx+ _%start97973%_
                                         _%i97982%_
                                         (fx* _%i97982%_ _%i97982%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98000%_ _%size97967%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97982%_ '1))
                             _%deleted97984%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97953%_ _%key97954%_ _%value97955%_)
        (if (let ((__tmp102719
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97953%_)))
                  (__tmp102717
                   (let ((__tmp102718
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97953%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102718 '4))))
              (declare (not safe))
              (##fx< __tmp102719 __tmp102717))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97953%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97953%_
         _%key97954%_
         _%value97955%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97904%_ _%key97905%_ _%value97906%_)
        (let ((_%table97909%_
               (let () (declare (not safe)) (&raw-table-table _%tab97904%_)))
              (_%seed97910%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97904%_))))
          (let* ((_%h97912%_
                  (fxxor (__class-specializer-hash-key _%key97905%_)
                         _%seed97910%_))
                 (_%size97915%_ (vector-length _%table97909%_))
                 (_%entries97918%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97915%_ '2)))
                 (_%start97921%_
                  (let ((__tmp102720
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97912%_ _%entries97918%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102720 '1))))
            (let _%loop97925%_ ((_%probe97928%_ _%start97921%_)
                                (_%i97930%_ '1)
                                (_%deleted97932%_ '#f))
              (let ((_%k97935%_ (vector-ref _%table97909%_ _%probe97928%_)))
                (if (eq? _%k97935%_ (macro-unused-obj))
                    (if _%deleted97932%_
                        (begin
                          (vector-set!
                           _%table97909%_
                           _%deleted97932%_
                           _%key97905%_)
                          (vector-set!
                           _%table97909%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97932%_ '1))
                           _%value97906%_)
                          ((lambda ()
                             (let ((__tmp102721
                                    (let ((__tmp102722
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97904%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102722 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97904%_
                                __tmp102721)))))
                        (begin
                          (vector-set!
                           _%table97909%_
                           _%probe97928%_
                           _%key97905%_)
                          (vector-set!
                           _%table97909%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97928%_ '1))
                           _%value97906%_)
                          ((lambda ()
                             (let ((__tmp102723
                                    (let ((__tmp102724
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97904%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102724 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97904%_ __tmp102723))
                             (let ((__tmp102725
                                    (let ((__tmp102726
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97904%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102726 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97904%_
                                __tmp102725))))))
                    (if (eq? _%k97935%_ (macro-deleted-obj))
                        (_%loop97925%_
                         (let ((_%next-probe97942%_
                                (fx+ _%start97921%_
                                     _%i97930%_
                                     (fx* _%i97930%_ _%i97930%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97942%_ _%size97915%_))
                         (let () (declare (not safe)) (##fx+ _%i97930%_ '1))
                         (let ((_%$e97945%_ _%deleted97932%_))
                           (if _%$e97945%_ _%$e97945%_ _%probe97928%_)))
                        (if (eq? _%key97905%_ _%k97935%_)
                            (let ()
                              (vector-set!
                               _%table97909%_
                               _%probe97928%_
                               _%key97905%_)
                              (vector-set!
                               _%table97909%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97928%_ '1))
                               _%value97906%_))
                            (_%loop97925%_
                             (let ((_%next-probe97950%_
                                    (fx+ _%start97921%_
                                         _%i97930%_
                                         (fx* _%i97930%_ _%i97930%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97950%_ _%size97915%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97930%_ '1))
                             _%deleted97932%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97899%_
               _%key97900%_
               _%class-specializer-table-update!97901%_
               _%default97902%_)
        (if (let ((__tmp102729
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97899%_)))
                  (__tmp102727
                   (let ((__tmp102728
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97899%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102728 '4))))
              (declare (not safe))
              (##fx< __tmp102729 __tmp102727))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97899%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97899%_
         _%key97900%_
         _%class-specializer-table-update!97901%_
         _%default97902%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97849%_
               _%key97850%_
               _%class-specializer-table-update!97851%_
               _%default97852%_)
        (let ((_%table97855%_
               (let () (declare (not safe)) (&raw-table-table _%tab97849%_)))
              (_%seed97856%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97849%_))))
          (let* ((_%h97858%_
                  (fxxor (__class-specializer-hash-key _%key97850%_)
                         _%seed97856%_))
                 (_%size97861%_ (vector-length _%table97855%_))
                 (_%entries97864%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97861%_ '2)))
                 (_%start97867%_
                  (let ((__tmp102730
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97858%_ _%entries97864%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102730 '1))))
            (let _%loop97871%_ ((_%probe97874%_ _%start97867%_)
                                (_%i97876%_ '1)
                                (_%deleted97878%_ '#f))
              (let ((_%k97881%_ (vector-ref _%table97855%_ _%probe97874%_)))
                (if (eq? _%k97881%_ (macro-unused-obj))
                    (if _%deleted97878%_
                        (begin
                          (vector-set!
                           _%table97855%_
                           _%deleted97878%_
                           _%key97850%_)
                          (vector-set!
                           _%table97855%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97878%_ '1))
                           (_%class-specializer-table-update!97851%_
                            _%default97852%_))
                          ((lambda ()
                             (let ((__tmp102731
                                    (let ((__tmp102732
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97849%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102732 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97849%_
                                __tmp102731)))))
                        (begin
                          (vector-set!
                           _%table97855%_
                           _%probe97874%_
                           _%key97850%_)
                          (vector-set!
                           _%table97855%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97874%_ '1))
                           (_%class-specializer-table-update!97851%_
                            _%default97852%_))
                          ((lambda ()
                             (let ((__tmp102733
                                    (let ((__tmp102734
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97849%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102734 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97849%_ __tmp102733))
                             (let ((__tmp102735
                                    (let ((__tmp102736
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97849%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102736 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97849%_
                                __tmp102735))))))
                    (if (eq? _%k97881%_ (macro-deleted-obj))
                        (_%loop97871%_
                         (let ((_%next-probe97888%_
                                (fx+ _%start97867%_
                                     _%i97876%_
                                     (fx* _%i97876%_ _%i97876%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97888%_ _%size97861%_))
                         (let () (declare (not safe)) (##fx+ _%i97876%_ '1))
                         (let ((_%$e97891%_ _%deleted97878%_))
                           (if _%$e97891%_ _%$e97891%_ _%probe97874%_)))
                        (if (eq? _%key97850%_ _%k97881%_)
                            (let ()
                              (vector-set!
                               _%table97855%_
                               _%probe97874%_
                               _%key97850%_)
                              (vector-set!
                               _%table97855%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97874%_ '1))
                               (_%class-specializer-table-update!97851%_
                                (vector-ref
                                 _%table97855%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97874%_ '1))))))
                            (_%loop97871%_
                             (let ((_%next-probe97896%_
                                    (fx+ _%start97867%_
                                         _%i97876%_
                                         (fx* _%i97876%_ _%i97876%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97896%_ _%size97861%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97876%_ '1))
                             _%deleted97878%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97804%_ _%key97806%_)
        (let ((_%table97809%_
               (let () (declare (not safe)) (&raw-table-table _%tab97804%_)))
              (_%seed97811%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97804%_))))
          (let* ((_%h97814%_
                  (fxxor (__class-specializer-hash-key _%key97806%_)
                         _%seed97811%_))
                 (_%size97817%_ (vector-length _%table97809%_))
                 (_%entries97820%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97817%_ '2)))
                 (_%start97823%_
                  (let ((__tmp102737
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97814%_ _%entries97820%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102737 '1))))
            (let _%loop97827%_ ((_%probe97830%_ _%start97823%_)
                                (_%i97832%_ '1))
              (let ((_%k97835%_ (vector-ref _%table97809%_ _%probe97830%_)))
                (if (eq? _%k97835%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97835%_ (macro-deleted-obj))
                        (_%loop97827%_
                         (let ((_%next-probe97840%_
                                (fx+ _%start97823%_
                                     _%i97832%_
                                     (fx* _%i97832%_ _%i97832%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97840%_ _%size97817%_))
                         (let () (declare (not safe)) (##fx+ _%i97832%_ '1)))
                        (if (eq? _%key97806%_ _%k97835%_)
                            (let ()
                              (vector-set!
                               _%table97809%_
                               _%probe97830%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97809%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97830%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102738
                                        (let ((__tmp102739
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97804%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102739 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97804%_
                                    __tmp102738)))))
                            (_%loop97827%_
                             (let ((_%next-probe97846%_
                                    (fx+ _%start97823%_
                                         _%i97832%_
                                         (fx* _%i97832%_ _%i97832%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97846%_ _%size97817%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97832%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97790%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97790%_ 'class))
            (let ((_%klass97794%_ _%klass97790%_))
              (__specialize-class _%klass97794%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass97790%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97772%_)
        (let* ((_%klass97775%_ _%klass97772%_)
               (_%$e97784%_ (__lookup-class-specializer _%klass97775%_)))
          (if _%$e97784%_
              _%$e97784%_
              (let ((_%method-table97788%_
                     (___specialize-class _%klass97775%_)))
                (__bind-class-specializer!
                 _%klass97775%_
                 _%method-table97788%_)
                _%method-table97788%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97762%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97766%_ ()
            (if (let ((__tmp102740
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102740 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97766%_)))))
        (let ((_%method-table97770%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97762%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97770%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97753%_ _%method-table97754%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97758%_ ()
            (if (let ((__tmp102741
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102741 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97758%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97753%_
         _%method-table97754%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97737%_
               _%method-table97738%_
               _%method97739%_
               _%proc97740%_)
        (let ((_%$e97742%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97738%_
                  _%method97739%_
                  '#f))))
          (if _%$e97742%_
              _%$e97742%_
              (let ((_%$e97745%_ (__lookup-method-specializer _%proc97740%_)))
                (if _%$e97745%_
                    ((lambda (_%specialize97748%_)
                       (let ((_%specialized-proc97750%_
                              (_%specialize97748%_
                               _%klass97737%_
                               _%method-table97738%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97738%_
                          _%method97739%_
                          _%specialized-proc97750%_)))
                     _%$e97745%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97738%_
                       _%method97739%_
                       _%proc97740%_))))))))
    (define ___specialize-class
      (lambda (_%klass97679%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97679%_ 'class))
            (if (__class-type-metaclass? _%klass97679%_)
                (let ((__method102587
                       (__method-ref _%klass97679%_ 'specialize-class)))
                  (if __method102587
                      (let ()
                        (declare (not safe))
                        (__method102587 _%klass97679%_))
                      (begin
                        (error '"Missing method"
                               _%klass97679%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102742
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97679%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102742))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97679%_)
                    (let ((_%method-table97685%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97687%_ ((_%rest97689%_
                                           (__class-precedence-list
                                            _%klass97679%_)))
                        (let* ((_%rest9769097698%_ _%rest97689%_)
                               (_%else9769297706%_
                                (lambda () _%method-table97685%_))
                               (_%K9769497725%_
                                (lambda (_%rest97709%_ _%xklass97710%_)
                                  (let ((_%xmethod-table9771197713%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97710%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9771197713%_
                                        (let* ((_%xmethod-table97716%_
                                                _%xmethod-table9771197713%_)
                                               (__tmp102743
                                                (lambda (_%g9771797720%_
                                                         _%g9771897722%_)
                                                  (__specialize-method
                                                   _%klass97679%_
                                                   _%method-table97685%_
                                                   _%g9771797720%_
                                                   _%g9771897722%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97716%_
                                           __tmp102743))
                                        '#f))
                                  (_%loop97687%_ _%rest97709%_))))
                          (if (pair? _%rest9769097698%_)
                              (let ((_%hd9769597728%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9769097698%_)))
                                    (_%tl9769697730%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9769097698%_))))
                                (let* ((_%xklass97733%_ _%hd9769597728%_)
                                       (_%rest97735%_ _%tl9769697730%_))
                                  (_%K9769497725%_
                                   _%rest97735%_
                                   _%xklass97733%_)))
                              (_%else9769297706%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97679%_))
                (__specialize-class (__shadow-class _%klass97679%_))
                (error '"bad class; cannot specialize" _%klass97679%_)))))
    (define seal-class!
      (lambda (_%klass97665%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97665%_ 'class))
            (let ((_%klass97669%_ _%klass97665%_))
              (__seal-class! _%klass97669%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass97665%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97648%_)
        (let ((_%klass97651%_ _%klass97648%_))
          (if (__class-type-sealed? _%klass97651%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97651%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97651%_))
                (if (__class-type-metaclass? _%klass97651%_)
                    (let ((__method102588
                           (__method-ref _%klass97651%_ 'seal-class!)))
                      (if __method102588
                          (let ()
                            (declare (not safe))
                            (__method102588 _%klass97651%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97651%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102744
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97651%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102744))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97651%_)
                        (let ((_%method-table97663%_
                               (__specialize-class _%klass97651%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97651%_
                           _%method-table97663%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97651%_))))))
    (define next-method
      (lambda (_%subklass97622%_ _%obj97623%_ _%id97624%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97622%_ 'class))
            (let ((_%subklass97628%_ _%subklass97622%_))
              (if (symbol? _%id97624%_)
                  (let ((_%id97638%_ _%id97624%_))
                    (__next-method _%subklass97628%_ _%obj97623%_ _%id97638%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97624%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass97622%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97559%_ _%obj97560%_ _%id97561%_)
        (let* ((_%subklass97564%_ _%subklass97559%_) (_%id97572%_ _%id97561%_))
          (letrec ((_%find-next-method97581%_
                    (lambda (_%klass97583%_)
                      (let _%lp97585%_ ((_%rest97587%_
                                         (class-precedence-list
                                          _%klass97583%_)))
                        (let* ((_%rest9758897596%_ _%rest97587%_)
                               (_%else9759097604%_ (lambda () '#f))
                               (_%K9759297610%_
                                (lambda (_%rest97607%_ _%klass97608%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97564%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97608%_)))
                                      (__mixin-find-method
                                       _%rest97607%_
                                       _%obj97560%_
                                       _%id97572%_)
                                      (_%lp97585%_ _%rest97607%_)))))
                          (if (pair? _%rest9758897596%_)
                              (let ((_%hd9759397613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9758897596%_)))
                                    (_%tl9759497615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9758897596%_))))
                                (let* ((_%klass97618%_ _%hd9759397613%_)
                                       (_%rest97620%_ _%tl9759497615%_))
                                  (_%K9759297610%_
                                   _%rest97620%_
                                   _%klass97618%_)))
                              (_%else9759097604%_)))))))
            (_%find-next-method97581%_ (class-of _%obj97560%_))))))
    (define call-next-method
      (lambda (_%subklass97532%_ _%obj97533%_ _%id97534%_ . _%args97535%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97532%_ 'class))
            (let ((_%subklass97539%_ _%subklass97532%_))
              (if (symbol? _%id97534%_)
                  (let ((_%id97549%_ _%id97534%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97539%_
                             _%obj97533%_
                             _%id97549%_
                             _%args97535%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97534%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass97532%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97503%_ _%obj97504%_ _%id97505%_ . _%args97506%_)
        (let* ((_%subklass97509%_ _%subklass97503%_)
               (_%id97517%_ _%id97505%_)
               (_%$e97526%_
                (__next-method _%subklass97509%_ _%obj97504%_ _%id97517%_)))
          (if _%$e97526%_
              ((lambda (_%methodf97529%_)
                 (apply _%methodf97529%_ _%obj97504%_ _%args97506%_))
               _%$e97526%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97504%_
                     'method:
                     _%id97517%_)))))
    (define write-style
      (lambda (_%we97501%_) (values (macro-writeenv-style _%we97501%_))))
    (define write-object
      (lambda (_%we97492%_ _%obj97493%_)
        (let ((_%$e97495%_ (__method-ref _%obj97493%_ ':wr)))
          (if _%$e97495%_
              ((lambda (_%method97498%_)
                 (_%method97498%_ _%obj97493%_ _%we97492%_))
               _%$e97495%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97492%_ _%obj97493%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97407%_)
        (letrec ((_%shadow-type-id97409%_
                  (lambda (_%type97490%_)
                    (let ((__tmp102745
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97490%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102745 '"::t"))))
                 (_%shadow-type-name97410%_
                  (lambda (_%type97488%_)
                    (let () (declare (not safe)) (##type-name _%type97488%_))))
                 (_%make-shadow-class97411%_
                  (lambda (_%type97480%_ _%precedence-list97481%_)
                    (let* ((_%super97483%_
                            (if (pair? _%precedence-list97481%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97481%_))
                                      '())
                                '()))
                           (_%klass97485%_
                            (make-class-type
                             (_%shadow-type-id97409%_ _%type97480%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97480%_))
                             _%super97483%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97480%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102746
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97480%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102746
                         _%klass97485%_))
                      _%klass97485%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97415%_ ()
              (if (let ((__tmp102747
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102747 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97415%_)))))
          (let ((_%$e97419%_
                 (let ((__tmp102748
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97407%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102748 '#f))))
            (if _%$e97419%_
                ((lambda (_%klass97422%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97422%_)
                 _%$e97419%_)
                (let _%loop97425%_ ((_%super97427%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97407%_)))
                                    (_%hierarchy97428%_ '()))
                  (if (not _%super97427%_)
                      (let _%loop97431%_ ((_%rest97433%_ _%hierarchy97428%_)
                                          (_%precedence-list97434%_ '()))
                        (let* ((_%rest9743597443%_ _%rest97433%_)
                               (_%else9743797453%_
                                (lambda ()
                                  (let ((_%klass97451%_
                                         (_%make-shadow-class97411%_
                                          _%type97407%_
                                          _%precedence-list97434%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97451%_)))
                               (_%K9743997467%_
                                (lambda (_%rest97456%_ _%type97457%_)
                                  (let ((_%$e97459%_
                                         (let ((__tmp102749
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97457%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102749
                                            '#f))))
                                    (if _%$e97459%_
                                        ((lambda (_%klass97462%_)
                                           (_%loop97431%_
                                            _%rest97456%_
                                            (cons _%klass97462%_
                                                  _%precedence-list97434%_)))
                                         _%$e97459%_)
                                        (let ((_%klass97465%_
                                               (_%make-shadow-class97411%_
                                                _%type97457%_
                                                _%precedence-list97434%_)))
                                          (_%loop97431%_
                                           _%rest97456%_
                                           (cons _%klass97465%_
                                                 _%precedence-list97434%_))))))))
                          (if (pair? _%rest9743597443%_)
                              (let ((_%hd9744097470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9743597443%_)))
                                    (_%tl9744197472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9743597443%_))))
                                (let* ((_%type97475%_ _%hd9744097470%_)
                                       (_%rest97477%_ _%tl9744197472%_))
                                  (_%K9743997467%_
                                   _%rest97477%_
                                   _%type97475%_)))
                              (_%else9743797453%_))))
                      (_%loop97425%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97427%_))
                       (cons _%super97427%_ _%hierarchy97428%_)))))))))
    (define __type
      (let* ((_%tb97396%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97398%_ _%tb97396%_))
        (if (eq? '2 _%$e97398%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97398%_)
                (let ((_%flonum-self-tagging-tags97401%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97402%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97404%_ _%flonum-self-tagging-tags97401%_))
                    (if (eq? '0 _%$e97404%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97402%_ '2))
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
                        (if (eq? '1 _%$e97404%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97402%_ '2))
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
                            (if (eq? '2 _%$e97404%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97404%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97404%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97401%_))))))))
                (error '"unexpected tag width" _%tb97396%_)))))
    (define __class
      (let* ((_%len97349%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97351%_
              (let () (declare (not safe)) (##make-vector _%len97349%_ '#f))))
        (let _%loop97354%_ ((_%i97356%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97356%_ _%len97349%_))
              (let* ((_%t97358%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97356%_)))
                     (_%f97393%_
                      (if (eq? _%t97358%_ 'undefined)
                          (lambda (_%obj97361%_)
                            (error '"object type is undefined" _%obj97361%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97358%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97364%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97358%_))
                              (if (eq? _%t97358%_ 'subtyped)
                                  (lambda (_%obj97368%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97371%_
                                           (##subtype _%obj97368%_)))
                                      (if (##fx= _%st97371%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97374%_
                                                 (##structure-type
                                                  _%obj97368%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97374%_
                                                 'class)
                                                _%klass97374%_
                                                (__shadow-class
                                                 _%klass97374%_)))
                                          (if (##fx= _%st97371%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##vector-length
                                                          _%obj97368%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97377%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97371%_)))
                                                (if _%$e97377%_
                                                    (__system-class
                                                     _%$e97377%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97371%_
                                                           'object:
                                                           _%obj97368%_)))))))
                                  (if (eq? _%t97358%_ 'special)
                                      (lambda (_%obj97382%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97382%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97382%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97382%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97382%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97382%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97358%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97351%_ _%i97356%_ _%f97393%_))
                (_%loop97354%_
                 (let () (declare (not safe)) (##fx+ _%i97356%_ '1))))
              _%cv97351%_))))
    (define type-of
      (lambda (_%obj97345%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97345%_)))))
    (define class-of
      (lambda (_%obj97336%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97340%_ (##type _%obj97336%_))
                 (_%f97342%_ (##vector-ref __class _%t97340%_)))
            (_%f97342%_ _%obj97336%_)))))
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
      (lambda (_%id97330%_)
        (let ((_%$e97332%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97330%_ '#f))))
          (if _%$e97332%_
              _%$e97332%_
              (error '"unknown system class" _%id97330%_)))))
    (define __make-system-class
      (lambda (_%id97325%_ _%super97326%_)
        (let ((_%klass97328%_
               (make-class-type
                _%id97325%_
                _%id97325%_
                _%super97326%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97325%_ _%klass97328%_))
          _%klass97328%_)))))
