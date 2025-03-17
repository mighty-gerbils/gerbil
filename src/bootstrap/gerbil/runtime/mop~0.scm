(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1742222162)
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
      (let ((_%flags101084%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101085%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101086%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101084%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101086%_
           _%properties101085%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101060%_
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
             (_%slot-vector101062%_ (list->vector (cons '#f _%slots101060%_)))
             (_%slot-table101069%_
              (let ((_%slot-table101064%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102527
                       (lambda (_%slot101066%_ _%field101067%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101064%_
                            _%slot101066%_
                            _%field101067%_))
                         (let ((__tmp102528
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101066%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101064%_
                            __tmp102528
                            _%field101067%_))))
                      (__tmp102525
                       (let ((__tmp102526
                              (let ()
                                (declare (not safe))
                                (##length _%slots101060%_))))
                         (declare (not safe))
                         (##iota __tmp102526 '1))))
                  (declare (not safe))
                  (##for-each __tmp102527 _%slots101060%_ __tmp102525))
                _%slot-table101064%_))
             (_%flags101071%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101077%_
              (list->vector
               (let ((__tmp102529
                      (map (lambda (_%g101072101074%_)
                             (list _%g101072101074%_ '5 '#f))
                           (drop _%slots101060%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102529))))
             (_%properties101079%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101060%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101081%_
              (let ((__tmp102530 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101071%_
                 ##type-type
                 _%fields101077%_
                 __tmp102530
                 _%slot-vector101062%_
                 _%slot-table101069%_
                 _%properties101079%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101081%_ _%t101081%_))
        _%t101081%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101056%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101057%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101058%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102531 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101056%_
           '#f
           '#()
           __tmp102531
           '#(#f)
           _%slot-table101058%_
           _%properties101057%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101054%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101054%_ 'class))))
    (define class-type=?
      (lambda (_%x101029%_ _%y101030%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x101029%_ 'class))
            (let ((_%x101034%_ _%x101029%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y101030%_ 'class))
                  (let ((_%y101044%_ _%y101030%_))
                    (__class-type=? _%x101034%_ _%y101044%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y101030%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x101029%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x101008%_ _%y101009%_)
        (let* ((_%x101012%_ _%x101008%_) (_%y101020%_ _%y101009%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x101012%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y101020%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100994%_)
        (if (let () (declare (not safe)) (##type? _%type100994%_))
            (let ((_%type100998%_ _%type100994%_))
              (__type-opaque? _%type100998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100994%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100982%_)
        (let* ((_%type100985%_ _%type100982%_)
               (__tmp102532
                (let ((__tmp102533
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100985%_))))
                  (declare (not safe))
                  (##fxand __tmp102533 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102532 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100968%_)
        (if (let () (declare (not safe)) (##type? _%type100968%_))
            (let ((_%type100972%_ _%type100968%_))
              (__type-extensible? _%type100972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100968%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100956%_)
        (let* ((_%type100959%_ _%type100956%_)
               (__tmp102534
                (let ((__tmp102535
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100959%_))))
                  (declare (not safe))
                  (##fxand __tmp102535 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102534 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100942%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100942%_ 'class))
            (let ((_%type100946%_ _%type100942%_))
              (__class-type-final? _%type100946%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100942%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100930%_)
        (let* ((_%type100933%_ _%type100930%_)
               (__tmp102536
                (let ((__tmp102537
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100933%_))))
                  (declare (not safe))
                  (##fxand __tmp102537 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102536 '0))))
    (define class-type-struct?
      (lambda (_%klass100916%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100916%_ 'class))
            (let ((_%klass100920%_ _%klass100916%_))
              (__class-type-struct? _%klass100920%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100916%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100904%_)
        (let* ((_%klass100907%_ _%klass100904%_)
               (__tmp102538
                (let ((__tmp102539
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100907%_))))
                  (declare (not safe))
                  (##fxand __tmp102539 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102538 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100890%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100890%_ 'class))
            (let ((_%klass100894%_ _%klass100890%_))
              (__class-type-sealed? _%klass100894%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100890%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100878%_)
        (let* ((_%klass100881%_ _%klass100878%_)
               (__tmp102540
                (let ((__tmp102541
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100881%_))))
                  (declare (not safe))
                  (##fxand __tmp102541 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102540 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100864%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100864%_ 'class))
            (let ((_%klass100868%_ _%klass100864%_))
              (__class-type-metaclass? _%klass100868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100864%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100852%_)
        (let* ((_%klass100855%_ _%klass100852%_)
               (__tmp102542
                (let ((__tmp102543
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100855%_))))
                  (declare (not safe))
                  (##fxand __tmp102543 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102542 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100838%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100838%_ 'class))
            (let ((_%klass100842%_ _%klass100838%_))
              (__class-type-system? _%klass100842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100838%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100826%_)
        (let* ((_%klass100829%_ _%klass100826%_)
               (__tmp102544
                (let ((__tmp102545
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100829%_))))
                  (declare (not safe))
                  (##fxand __tmp102545 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102544 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100708%_
               _%type-name100709%_
               _%type-super100710%_
               _%precedence-list100711%_
               _%slot-vector100712%_
               _%properties100713%_
               _%constructor100714%_
               _%slot-table100715%_
               _%methods100716%_)
        (letrec ((_%make-props!100719%_
                  (lambda (_%key100795%_)
                    (letrec* ((_%ht100797%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100798%_
                               (lambda (_%ht100819%_ _%slots100820%_)
                                 (for-each
                                  (lambda (_%g100821100823%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100819%_
                                       _%g100821100823%_
                                       '#t)))
                                  _%slots100820%_)))
                              (_%put-alist!100799%_
                               (lambda (_%ht100808%_
                                        _%key100809%_
                                        _%alist100810%_)
                                 (let ((_%$e100812%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100809%_
                                           _%alist100810%_))))
                                   (if _%$e100812%_
                                       ((lambda (_%g100814100816%_)
                                          (_%put-slots!100798%_
                                           _%ht100808%_
                                           _%g100814100816%_))
                                        _%$e100812%_)
                                       '#!void)))))
                      (_%put-alist!100799%_
                       _%ht100797%_
                       _%key100795%_
                       _%properties100713%_)
                      (for-each
                       (lambda (_%mixin100801%_)
                         (let ((_%alist100803%_
                                (##structure-ref
                                 _%mixin100801%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100803%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100795%_
                                           _%alist100803%_))))
                               (_%put-slots!100798%_
                                _%ht100797%_
                                (class-type-slot-list _%mixin100801%_))
                               (_%put-alist!100799%_
                                _%ht100797%_
                                _%key100795%_
                                _%alist100803%_))))
                       _%precedence-list100711%_)
                      _%ht100797%_))))
          (let* ((_%transparent?100721%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100713%_)))
                 (_%all-slots-printable?100726%_
                  (let ((_%$e100723%_ _%transparent?100721%_))
                    (if _%$e100723%_
                        _%$e100723%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100713%_))))))
                 (_%printable100728%_
                  (if (not _%all-slots-printable?100726%_)
                      (_%make-props!100719%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100733%_
                  (let ((_%$e100730%_ _%transparent?100721%_))
                    (if _%$e100730%_
                        _%$e100730%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100713%_))))))
                 (_%equalable100735%_
                  (if (not _%all-slots-equalable?100733%_)
                      (_%make-props!100719%_ 'equal:)
                      '#f))
                 (_%first-new-field100737%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100710%_ 'class))
                      (let ((__tmp102546
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100710%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102546))
                      '1))
                 (_%field-info-length100739%_
                  (let ((__tmp102547
                         (let ((__tmp102548
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100712%_))))
                           (declare (not safe))
                           (##fx- __tmp102548 _%first-new-field100737%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102547)))
                 (_%field-info100741%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100739%_ '#f)))
                 (_%struct?100743%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100713%_)))
                 (_%final?100745%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100713%_)))
                 (_%metaclass100753%_
                  (let ((_%metaclass100746100748%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100713%_))))
                    (if _%metaclass100746100748%_
                        (let ((_%metaclass100751%_ _%metaclass100746100748%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100751%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100708%_
                                     'metaclass:
                                     _%metaclass100751%_))
                          _%metaclass100751%_)
                        '#f)))
                 (_%system?100755%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100713%_)))
                 (_%opaque?100763%_
                  (if (or _%transparent?100721%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100713%_)))
                      '#f
                      (let ((_%$e100760%_ (not _%type-super100710%_)))
                        (if _%$e100760%_
                            _%$e100760%_
                            (__type-opaque? _%type-super100710%_)))))
                 (_%type-flags100765%_
                  (let ((__tmp102553
                         (if _%final?100745%_ '0 type-flag-extensible))
                        (__tmp102552
                         (if _%opaque?100763%_ type-flag-opaque '0))
                        (__tmp102551
                         (if _%struct?100743%_ class-type-flag-struct '0))
                        (__tmp102550
                         (if _%metaclass100753%_ class-type-flag-metaclass '0))
                        (__tmp102549
                         (if _%system?100755%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102553
                             __tmp102552
                             __tmp102551
                             __tmp102550
                             __tmp102549)))
                 (_%precedence-list100773%_
                  (let ((_%$e100767%_ (memq t::t _%precedence-list100711%_)))
                    (if _%$e100767%_
                        ((lambda (_%tail100770%_)
                           (if (null? (cdr _%tail100770%_))
                               _%precedence-list100711%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100711%_)))
                         _%$e100767%_)
                        (let ((__tmp102554 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100711%_ __tmp102554))))))
            (let _%loop100776%_ ((_%i100778%_ _%first-new-field100737%_)
                                 (_%j100779%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100779%_ _%field-info-length100739%_))
                  (let* ((_%slot100781%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100712%_ _%i100778%_)))
                         (_%flags100789%_
                          (if _%transparent?100721%_
                              '0
                              (let ((__tmp102556
                                     (if (or _%all-slots-printable?100726%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100728%_
                                                _%slot100781%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102555
                                     (if (or _%all-slots-equalable?100733%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100735%_
                                                _%slot100781%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102556 __tmp102555)))))
                    (vector-set!
                     _%field-info100741%_
                     _%j100779%_
                     _%slot100781%_)
                    (vector-set!
                     _%field-info100741%_
                     (let () (declare (not safe)) (##fx+ _%j100779%_ '1))
                     _%flags100789%_)
                    (_%loop100776%_
                     (let () (declare (not safe)) (##fx+ _%i100778%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100779%_ '3))))
                  '#!void))
            (if _%metaclass100753%_
                (let ((_%val100792%_
                       (make-instance
                        _%metaclass100753%_
                        _%type-id100708%_
                        _%type-name100709%_
                        _%type-flags100765%_
                        _%type-super100710%_
                        _%field-info100741%_
                        _%precedence-list100773%_
                        _%slot-vector100712%_
                        _%slot-table100715%_
                        _%properties100713%_
                        _%constructor100714%_
                        _%methods100716%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100792%_ 'class))
                      _%val100792%_
                      (error '"bad cast" class::t _%val100792%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100708%_
                   _%type-name100709%_
                   _%type-flags100765%_
                   _%type-super100710%_
                   _%field-info100741%_
                   _%precedence-list100773%_
                   _%slot-vector100712%_
                   _%slot-table100715%_
                   _%properties100713%_
                   _%constructor100714%_
                   _%methods100716%_)))))))
    (define class-type-id
      (lambda (_%klass100706%_)
        (##structure-ref _%klass100706%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100704%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100701%_ _%val100702%_)
        (##structure-set! _%klass100701%_ _%val100702%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100696%_ _%val100698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100696%_
           _%val100698%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100694%_)
        (##structure-ref _%klass100694%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100692%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100692%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100689%_ _%val100690%_)
        (##structure-set! _%klass100689%_ _%val100690%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100684%_ _%val100686%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100684%_
           _%val100686%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100682%_)
        (##structure-ref _%klass100682%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100680%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100680%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100677%_ _%val100678%_)
        (##structure-set! _%klass100677%_ _%val100678%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100672%_ _%val100674%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100672%_
           _%val100674%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100670%_)
        (##structure-ref _%klass100670%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100668%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100668%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100665%_ _%val100666%_)
        (##structure-set! _%klass100665%_ _%val100666%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100660%_ _%val100662%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100660%_
           _%val100662%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100658%_)
        (##structure-ref _%klass100658%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100656%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100656%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100653%_ _%val100654%_)
        (##structure-set! _%klass100653%_ _%val100654%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100648%_ _%val100650%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100648%_
           _%val100650%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100646%_)
        (##structure-ref _%klass100646%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100644%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100644%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100641%_ _%val100642%_)
        (##structure-set!
         _%klass100641%_
         _%val100642%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100636%_ _%val100638%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100636%_
           _%val100638%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100634%_)
        (##structure-ref _%klass100634%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100632%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100632%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100629%_ _%val100630%_)
        (##structure-set!
         _%klass100629%_
         _%val100630%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100624%_ _%val100626%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100624%_
           _%val100626%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100622%_)
        (##structure-ref _%klass100622%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100620%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100620%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100617%_ _%val100618%_)
        (##structure-set!
         _%klass100617%_
         _%val100618%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100612%_ _%val100614%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100612%_
           _%val100614%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100610%_)
        (##structure-ref _%klass100610%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100608%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100608%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100605%_ _%val100606%_)
        (##structure-set!
         _%klass100605%_
         _%val100606%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100600%_ _%val100602%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100600%_
           _%val100602%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100598%_)
        (##structure-ref _%klass100598%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100596%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100596%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100593%_ _%val100594%_)
        (##structure-set!
         _%klass100593%_
         _%val100594%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100588%_ _%val100590%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100588%_
           _%val100590%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100586%_)
        (##structure-ref _%klass100586%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100584%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100584%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100581%_ _%val100582%_)
        (##structure-set!
         _%klass100581%_
         _%val100582%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100576%_ _%val100578%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100576%_
           _%val100578%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100562%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100562%_ 'class))
            (let ((_%klass100566%_ _%klass100562%_))
              (__class-type-slot-list _%klass100566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100562%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100550%_)
        (let ((_%klass100553%_ _%klass100550%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100553%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100536%_ 'class))
            (let ((_%klass100540%_ _%klass100536%_))
              (__class-type-field-count _%klass100540%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100536%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100524%_)
        (let* ((_%klass100527%_ _%klass100524%_)
               (__tmp102557
                (let ((__tmp102558
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100527%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102558))))
          (declare (not safe))
          (##fx- __tmp102557 '1))))
    (define class-type-seal!
      (lambda (_%klass100510%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100510%_ 'class))
            (let ((_%klass100514%_ _%klass100510%_))
              (__class-type-seal! _%klass100514%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100510%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100498%_)
        (let ((_%klass100501%_ _%klass100498%_))
          (let ((__tmp102559
                 (let ((__tmp102560
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100501%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102560))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100501%_
             __tmp102559
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100473%_ _%maybe-super-struct100474%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100473%_ 'class))
            (let ((_%maybe-sub-struct100478%_ _%maybe-sub-struct100473%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100474%_
                     'class))
                  (let ((_%maybe-super-struct100488%_
                         _%maybe-super-struct100474%_))
                    (__substruct?
                     _%maybe-sub-struct100478%_
                     _%maybe-super-struct100488%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100474%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100473%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100442%_ _%maybe-super-struct100443%_)
        (let* ((_%maybe-sub-struct100446%_ _%maybe-sub-struct100442%_)
               (_%maybe-super-struct100454%_ _%maybe-super-struct100443%_)
               (_%maybe-super-struct-id100463%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100454%_))))
          (let _%lp100465%_ ((_%super-struct100467%_
                              _%maybe-sub-struct100446%_))
            (if (not _%super-struct100467%_)
                '#f
                (if (eq? _%maybe-super-struct-id100463%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100467%_)))
                    '#t
                    (_%lp100465%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100467%_)))))))))
    (define base-struct/1
      (lambda (_%klass100437%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100437%_ 'class))
            (if (__class-type-struct? _%klass100437%_)
                _%klass100437%_
                (let () (declare (not safe)) (##type-super _%klass100437%_)))
            (if (not _%klass100437%_)
                '#f
                (error '"not a class or false" _%klass100437%_)))))
    (define base-struct/2
      (lambda (_%klass1100422%_ _%klass2100423%_)
        (let ((_%s1100425%_ (base-struct/1 _%klass1100422%_))
              (_%s2100426%_ (base-struct/1 _%klass2100423%_)))
          (if (or (not _%s1100425%_)
                  (and _%s2100426%_ (substruct? _%s1100425%_ _%s2100426%_)))
              _%s2100426%_
              (if (or (not _%s2100426%_)
                      (and _%s1100425%_
                           (substruct? _%s2100426%_ _%s1100425%_)))
                  _%s1100425%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100422%_
                         _%klass2100423%_
                         _%s1100425%_
                         _%s2100426%_))))))
    (define base-struct/list
      (lambda (_%all-supers100306%_)
        (let* ((_%all-supers100307100332%_ _%all-supers100306%_)
               (_%E100312100336%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100307100332%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100330100419%_ (lambda () '#f))
                (_%K100327100405%_
                 (lambda (_%x100403%_) (base-struct/1 _%x100403%_)))
                (_%K100322100382%_
                 (lambda (_%y100379%_ _%x100380%_)
                   (base-struct/2 _%x100380%_ _%y100379%_)))
                (_%K100313100343%_
                 (lambda (_%y100340%_ _%x100341%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100341%_ _%y100340%_)))))
            (let* ((_%__match102519102520%_
                    (lambda (_%hd100314100346%_ _%tl100315100348%_)
                      (let ((_%x100351%_ _%hd100314100346%_))
                        (letrec ((_%splice-rest100317100353%_
                                  (lambda (_%rest100321100360%_ _%y100362%_)
                                    (if (null? _%rest100321100360%_)
                                        (_%K100313100343%_
                                         _%y100362%_
                                         _%x100351%_)
                                        (_%E100312100336%_))))
                                 (_%splice-try100319100355%_
                                  (lambda (_%hd100320100364%_
                                           _%rest100321100366%_
                                           _%y100316100367%_)
                                    (let ((_%y100370%_ _%hd100320100364%_))
                                      (_%splice-loop100318100357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100321100366%_))
                                       (cons _%y100370%_ _%y100316100367%_)))))
                                 (_%splice-loop100318100357%_
                                  (lambda (_%rest100321100372%_
                                           _%y100316100373%_)
                                    (if (pair? _%rest100321100372%_)
                                        (_%splice-try100319100355%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100321100372%_))
                                         _%rest100321100372%_
                                         _%y100316100373%_)
                                        (_%splice-rest100317100353%_
                                         _%rest100321100372%_
                                         (reverse _%y100316100373%_))))))
                          (_%splice-loop100318100357%_
                           _%tl100315100348%_
                           '())))))
                   (_%try-match100309100415%_
                    (lambda ()
                      (if (pair? _%all-supers100307100332%_)
                          (let ((_%tl100329100410%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100307100332%_)))
                                (_%hd100328100408%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100307100332%_))))
                            (if (null? _%tl100329100410%_)
                                (let ((_%x100413%_ _%hd100328100408%_))
                                  (base-struct/1 _%x100413%_))
                                (if (pair? _%tl100329100410%_)
                                    (let ((_%tl100326100394%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100329100410%_)))
                                          (_%hd100325100392%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100329100410%_))))
                                      (if (null? _%tl100326100394%_)
                                          (let ((_%x100390%_
                                                 _%hd100328100408%_)
                                                (_%y100397%_
                                                 _%hd100325100392%_))
                                            (_%K100322100382%_
                                             _%y100397%_
                                             _%x100390%_))
                                          (_%__match102519102520%_
                                           _%hd100328100408%_
                                           _%tl100329100410%_)))
                                    (_%__match102519102520%_
                                     _%hd100328100408%_
                                     _%tl100329100410%_))))
                          (_%E100312100336%_)))))
              (if (null? _%all-supers100307100332%_)
                  (_%K100330100419%_)
                  (_%try-match100309100415%_)))))))
    (define base-struct
      (lambda _%all-supers100304%_ (base-struct/list _%all-supers100304%_)))
    (define find-super-constructor
      (lambda (_%super100255%_)
        (let _%lp100257%_ ((_%rest100259%_ _%super100255%_)
                           (_%constructor100260%_ '#f))
          (let* ((_%rest100261100269%_ _%rest100259%_)
                 (_%else100263100277%_ (lambda () _%constructor100260%_))
                 (_%K100265100292%_
                  (lambda (_%rest100280%_ _%hd100281%_)
                    (let ((_%$e100283%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100281%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100283%_
                          ((lambda (_%xconstructor100286%_)
                             (if (or (not _%constructor100260%_)
                                     (eq? _%constructor100260%_
                                          _%xconstructor100286%_))
                                 (_%lp100257%_
                                  _%rest100280%_
                                  _%xconstructor100286%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100260%_
                                        _%xconstructor100286%_)))
                           _%$e100283%_)
                          (_%lp100257%_
                           _%rest100280%_
                           _%constructor100260%_))))))
            (if (pair? _%rest100261100269%_)
                (let ((_%hd100266100295%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100261100269%_)))
                      (_%tl100267100297%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100261100269%_))))
                  (let* ((_%hd100300%_ _%hd100266100295%_)
                         (_%rest100302%_ _%tl100267100297%_))
                    (_%K100265100292%_ _%rest100302%_ _%hd100300%_)))
                (_%else100263100277%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100231%_ _%direct-slots100232%_)
        (let* ((_%next-slot100234%_ '1)
               (_%slot-table100236%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100238%_ '(__class))
               (_%process-slot100242%_
                (lambda (_%slot100240%_)
                  (if (symbol? _%slot100240%_)
                      '#!void
                      (error '"invalid slot name" _%slot100240%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100236%_
                              _%slot100240%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100236%_
                           _%slot100240%_
                           _%next-slot100234%_))
                        (let ((__tmp102561
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100240%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100236%_
                           __tmp102561
                           _%next-slot100234%_))
                        (set! _%r-slots100238%_
                              (cons _%slot100240%_ _%r-slots100238%_))
                        (set! _%next-slot100234%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100234%_ '1))))
                      '#!void)))
               (_%process-slots100248%_
                (lambda (_%g100243100245%_)
                  (for-each _%process-slot100242%_ _%g100243100245%_))))
          (let ((__tmp102563
                 (lambda (_%mixin100251%_)
                   (_%process-slots100248%_
                    (let ((__tmp102564
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100251%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102564 '())))))
                (__tmp102562 (reverse _%class-precedence-list100231%_)))
            (declare (not safe))
            (##for-each __tmp102563 __tmp102562))
          (_%process-slots100248%_ _%direct-slots100232%_)
          (let ((_%slot-vector100253%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100238%_)))))
            (values _%slot-vector100253%_ _%slot-table100236%_)))))
    (define make-class-type
      (lambda (_%id100156%_
               _%name100157%_
               _%direct-supers100158%_
               _%direct-slots100159%_
               _%properties100160%_
               _%constructor100161%_)
        (if (symbol? _%id100156%_)
            (let ((_%id100165%_ _%id100156%_))
              (if (symbol? _%name100157%_)
                  (let ((_%name100175%_ _%name100157%_))
                    (if (list? _%direct-supers100158%_)
                        (let ((_%direct-supers100185%_
                               _%direct-supers100158%_))
                          (if (list? _%direct-slots100159%_)
                              (let ((_%direct-slots100195%_
                                     _%direct-slots100159%_))
                                (if (list? _%properties100160%_)
                                    (let ((_%properties100205%_
                                           _%properties100160%_))
                                      (if ((lambda (_%$obj100214%_)
                                             (or (not _%$obj100214%_)
                                                 (symbol? _%$obj100214%_)))
                                           _%constructor100161%_)
                                          (let ((_%constructor100221%_
                                                 _%constructor100161%_))
                                            (__make-class-type
                                             _%id100165%_
                                             _%name100175%_
                                             _%direct-supers100185%_
                                             _%direct-slots100195%_
                                             _%properties100205%_
                                             _%constructor100221%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100161%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100160%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100159%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100158%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100157%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100156%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id100025%_
               _%name100026%_
               _%direct-supers100027%_
               _%direct-slots100028%_
               _%properties100029%_
               _%constructor100030%_)
        (let* ((_%id100033%_ _%id100025%_)
               (_%name100041%_ _%name100026%_)
               (_%direct-supers100049%_ _%direct-supers100027%_)
               (_%direct-slots100057%_ _%direct-slots100028%_)
               (_%properties100065%_ _%properties100029%_)
               (_%constructor100073%_ _%constructor100030%_))
          (let ((_%$e100085%_
                 (let ((__tmp102565
                        (lambda (_%$obj100082%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100082%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102565 _%direct-supers100049%_))))
            (if _%$e100085%_
                ((lambda (_%g100087100089%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100087100089%_))
                 _%$e100085%_)
                (let ((_%$e100092%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100049%_))))
                  (if _%$e100092%_
                      ((lambda (_%g100094100096%_)
                         (error '"Cannot extend final class"
                                _%g100094100096%_))
                       _%$e100092%_)
                      '#!void))))
          (let ((_g102566_ (compute-precedence-list _%direct-supers100049%_)))
            (begin
              (let ((_g102567_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102566_)
                           (##values-length _g102566_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102567_ 2)))
                    (error "Context expects 2 values" _g102567_)))
              (let ((_%precedence-list100099%_
                     (let () (declare (not safe)) (##values-ref _g102566_ 0)))
                    (_%struct-super100100%_
                     (let () (declare (not safe)) (##values-ref _g102566_ 1))))
                (let ((_g102568_
                       (compute-class-slots
                        _%precedence-list100099%_
                        _%direct-slots100057%_)))
                  (begin
                    (let ((_g102569_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102568_)
                                 (##values-length _g102568_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102569_ 2)))
                          (error "Context expects 2 values" _g102569_)))
                    (let ((_%slot-vector100102%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102568_ 0)))
                          (_%slot-table100103%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102568_ 1))))
                      (let* ((_%properties100105%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100057%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100049%_)
                                          _%properties100065%_)))
                             (_%constructor*100110%_
                              (let ((_%$e100107%_ _%constructor100073%_))
                                (if _%$e100107%_
                                    _%$e100107%_
                                    (find-super-constructor
                                     _%direct-supers100049%_))))
                             (_%precedence-list100153%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100105%_))
                                      (memq object::t
                                            _%precedence-list100099%_))
                                  _%precedence-list100099%_
                                  (let _%loop100115%_ ((_%tail100117%_
                                                        _%precedence-list100099%_)
                                                       (_%head100118%_ '()))
                                    (let* ((_%tail100119100127%_
                                            _%tail100117%_)
                                           (_%else100121100135%_
                                            (lambda ()
                                              (let ((__tmp102570
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102570
                                                 _%head100118%_))))
                                           (_%K100123100141%_
                                            (lambda (_%rest100138%_
                                                     _%hd100139%_)
                                              (if (eq? _%hd100139%_ t::t)
                                                  (let ((__tmp102571
                                                         (cons object::t
                                                               _%tail100117%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102571
                                                     _%head100118%_))
                                                  (_%loop100115%_
                                                   _%rest100138%_
                                                   (cons _%hd100139%_
                                                         _%head100118%_))))))
                                      (if (pair? _%tail100119100127%_)
                                          (let ((_%hd100124100144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100119100127%_)))
                                                (_%tl100125100146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100119100127%_))))
                                            (let* ((_%hd100149%_
                                                    _%hd100124100144%_)
                                                   (_%rest100151%_
                                                    _%tl100125100146%_))
                                              (_%K100123100141%_
                                               _%rest100151%_
                                               _%hd100149%_)))
                                          (_%else100121100135%_)))))))
                        (make-class-type-descriptor
                         _%id100033%_
                         _%name100041%_
                         _%struct-super100100%_
                         _%precedence-list100153%_
                         _%slot-vector100102%_
                         _%properties100105%_
                         _%constructor*100110%_
                         _%slot-table100103%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass100011%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100011%_ 'class))
            (let ((_%klass100015%_ _%klass100011%_))
              (__class-precedence-list _%klass100015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass100011%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99999%_)
        (let ((_%klass100002%_ _%klass99999%_))
          (cons _%klass100002%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100002%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99996%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99996%_))))
    (define make-class-predicate
      (lambda (_%klass99982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99982%_ 'class))
            (let ((_%klass99986%_ _%klass99982%_))
              (__make-class-predicate _%klass99986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99982%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99953%_)
        (let* ((_%klass99956%_ _%klass99953%_)
               (_%tid99965%_
                (let () (declare (not safe)) (##type-id _%klass99956%_))))
          (if (__class-type-final? _%klass99956%_)
              (lambda (_%g9996799969%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9996799969%_
                   _%tid99965%_)))
              (if (__class-type-struct? _%klass99956%_)
                  (lambda (_%g9997299974%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9997299974%_ _%tid99965%_)))
                  (lambda (_%g9997799979%_)
                    (__class-instance? _%klass99956%_ _%g9997799979%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99928%_ _%slot99929%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99928%_ 'class))
            (let ((_%klass99933%_ _%klass99928%_))
              (if (symbol? _%slot99929%_)
                  (let ((_%slot99943%_ _%slot99929%_))
                    (__make-class-slot-accessor _%klass99933%_ _%slot99943%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99929%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99928%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99896%_ _%slot99897%_)
        (let* ((_%klass99900%_ _%klass99896%_)
               (_%slot99908%_ _%slot99897%_)
               (_%field99917%_
                (let ((__tmp102572
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99900%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102572 _%slot99908%_ '#f))))
          (if (not _%field99917%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99900%_
                       'slot:
                       _%slot99908%_)
                '#!void)
              (if (__class-type-final? _%klass99900%_)
                  (make-final-slot-accessor
                   _%klass99900%_
                   _%slot99908%_
                   _%field99917%_)
                  (if (__class-type-struct? _%klass99900%_)
                      (make-struct-slot-accessor
                       _%klass99900%_
                       _%slot99908%_
                       _%field99917%_)
                      (if (let ((_%strukt99923%_
                                 (base-struct/1 _%klass99900%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99923%_
                                    'class))
                                 (let ((__tmp102573
                                        (let ((__tmp102574
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99923%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102574))))
                                   (declare (not safe))
                                   (##fx< _%field99917%_ __tmp102573))))
                          (make-struct-subclass-slot-accessor
                           _%klass99900%_
                           _%slot99908%_
                           _%field99917%_)
                          (make-class-cached-slot-accessor
                           _%klass99900%_
                           _%slot99908%_
                           _%field99917%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99871%_ _%slot99872%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99871%_ 'class))
            (let ((_%klass99876%_ _%klass99871%_))
              (if (symbol? _%slot99872%_)
                  (let ((_%slot99886%_ _%slot99872%_))
                    (__make-class-slot-mutator _%klass99876%_ _%slot99886%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99872%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99871%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99839%_ _%slot99840%_)
        (let* ((_%klass99843%_ _%klass99839%_)
               (_%slot99851%_ _%slot99840%_)
               (_%field99860%_
                (let ((__tmp102575
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99843%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102575 _%slot99851%_ '#f))))
          (if (not _%field99860%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99843%_
                       'slot:
                       _%slot99851%_)
                '#!void)
              (if (__class-type-final? _%klass99843%_)
                  (make-final-slot-mutator
                   _%klass99843%_
                   _%slot99851%_
                   _%field99860%_)
                  (if (__class-type-struct? _%klass99843%_)
                      (make-struct-slot-mutator
                       _%klass99843%_
                       _%slot99851%_
                       _%field99860%_)
                      (if (let ((_%strukt99866%_
                                 (base-struct/1 _%klass99843%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99866%_
                                    'class))
                                 (let ((__tmp102576
                                        (let ((__tmp102577
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99866%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102577))))
                                   (declare (not safe))
                                   (##fx< _%field99860%_ __tmp102576))))
                          (make-struct-subclass-slot-mutator
                           _%klass99843%_
                           _%slot99851%_
                           _%field99860%_)
                          (make-class-cached-slot-mutator
                           _%klass99843%_
                           _%slot99851%_
                           _%field99860%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99814%_ _%slot99815%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99814%_ 'class))
            (let ((_%klass99819%_ _%klass99814%_))
              (if (symbol? _%slot99815%_)
                  (let ((_%slot99829%_ _%slot99815%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99819%_
                     _%slot99829%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99815%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99814%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99782%_ _%slot99783%_)
        (let* ((_%klass99786%_ _%klass99782%_)
               (_%slot99794%_ _%slot99783%_)
               (_%field99803%_
                (let ((__tmp102578
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99786%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102578 _%slot99794%_ '#f))))
          (if (not _%field99803%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99786%_
                       'slot:
                       _%slot99794%_)
                '#!void)
              (if (__class-type-final? _%klass99786%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99786%_
                   _%slot99794%_
                   _%field99803%_)
                  (if (__class-type-struct? _%klass99786%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99786%_
                       _%slot99794%_
                       _%field99803%_)
                      (if (let ((_%strukt99809%_
                                 (base-struct/1 _%klass99786%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99809%_
                                    'class))
                                 (let ((__tmp102579
                                        (let ((__tmp102580
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99809%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102580))))
                                   (declare (not safe))
                                   (##fx< _%field99803%_ __tmp102579))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99786%_
                           _%slot99794%_
                           _%field99803%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99786%_
                           _%slot99794%_
                           _%field99803%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99757%_ _%slot99758%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99757%_ 'class))
            (let ((_%klass99762%_ _%klass99757%_))
              (if (symbol? _%slot99758%_)
                  (let ((_%slot99772%_ _%slot99758%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99762%_
                     _%slot99772%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99758%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99757%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99725%_ _%slot99726%_)
        (let* ((_%klass99729%_ _%klass99725%_)
               (_%slot99737%_ _%slot99726%_)
               (_%field99746%_
                (let ((__tmp102581
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99729%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102581 _%slot99737%_ '#f))))
          (if (not _%field99746%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99729%_
                       'slot:
                       _%slot99737%_)
                '#!void)
              (if (__class-type-final? _%klass99729%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99729%_
                   _%slot99737%_
                   _%field99746%_)
                  (if (__class-type-struct? _%klass99729%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99729%_
                       _%slot99737%_
                       _%field99746%_)
                      (if (let ((_%strukt99752%_
                                 (base-struct/1 _%klass99729%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99752%_
                                    'class))
                                 (let ((__tmp102582
                                        (let ((__tmp102583
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99752%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102583))))
                                   (declare (not safe))
                                   (##fx< _%field99746%_ __tmp102582))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99729%_
                           _%slot99737%_
                           _%field99746%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99729%_
                           _%slot99737%_
                           _%field99746%_))))))))
    (define not-an-instance__%
      (lambda (_%object99709%_ _%class99710%_ _%slot99711%_)
        (apply error
               '"not an instance"
               'object:
               _%object99709%_
               'class:
               _%class99710%_
               (if _%slot99711%_ (cons 'slot: (cons _%slot99711%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99716%_ _%class99717%_)
        (let ((_%slot99719%_ '#f))
          (not-an-instance__% _%object99716%_ _%class99717%_ _%slot99719%_))))
    (define not-an-instance
      (lambda _g102585_
        (let ((_g102584_ (let () (declare (not safe)) (##length _g102585_))))
          (cond ((let () (declare (not safe)) (##fx= _g102584_ 2))
                 (apply not-an-instance__0 _g102585_))
                ((let () (declare (not safe)) (##fx= _g102584_ 3))
                 (apply not-an-instance__% _g102585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102585_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99702%_ _%slot99703%_ _%field99704%_)
        (lambda (_%obj99706%_)
          (##direct-structure-ref
           _%obj99706%_
           _%field99704%_
           _%klass99702%_
           _%slot99703%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99695%_ _%slot99696%_ _%field99697%_)
        (lambda (_%obj99699%_ _%val99700%_)
          (##direct-structure-set!
           _%obj99699%_
           _%val99700%_
           _%field99697%_
           _%klass99695%_
           _%slot99696%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99689%_ _%slot99690%_ _%field99691%_)
        (lambda (_%obj99693%_)
          (##structure-ref
           _%obj99693%_
           _%field99691%_
           _%klass99689%_
           _%slot99690%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99682%_ _%slot99683%_ _%field99684%_)
        (lambda (_%obj99686%_ _%val99687%_)
          (##structure-set!
           _%obj99686%_
           _%val99687%_
           _%field99684%_
           _%klass99682%_
           _%slot99683%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99676%_ _%slot99677%_ _%field99678%_)
        (lambda (_%obj99680%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99680%_
             _%field99678%_
             _%klass99676%_
             _%slot99677%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99669%_ _%slot99670%_ _%field99671%_)
        (lambda (_%obj99673%_ _%val99674%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99673%_
             _%val99674%_
             _%field99671%_
             _%klass99669%_
             _%slot99670%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99663%_ _%slot99664%_ _%field99665%_)
        (lambda (_%obj99667%_)
          (if (class-instance? _%klass99663%_ _%obj99667%_)
              (unchecked-slot-ref _%obj99667%_ _%field99665%_)
              (not-an-instance__%
               _%obj99667%_
               _%klass99663%_
               _%slot99664%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99656%_ _%slot99657%_ _%field99658%_)
        (lambda (_%obj99660%_ _%val99661%_)
          (if (class-instance? _%klass99656%_ _%obj99660%_)
              (unchecked-field-set! _%obj99660%_ _%field99658%_ _%val99661%_)
              (not-an-instance__%
               _%obj99660%_
               _%klass99656%_
               _%slot99657%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99647%_ _%slot99648%_ _%field99649%_)
        (lambda (_%obj99651%_)
          (if (let ((__tmp102586
                     (let () (declare (not safe)) (##type-id _%klass99647%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99651%_ __tmp102586))
              (unchecked-field-ref _%obj99651%_ _%field99649%_)
              (if (class-instance? _%klass99647%_ _%obj99651%_)
                  (unchecked-slot-ref _%obj99651%_ _%slot99648%_)
                  (not-an-instance__%
                   _%obj99651%_
                   _%klass99647%_
                   _%slot99648%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99637%_ _%slot99638%_ _%field99639%_)
        (lambda (_%obj99641%_ _%val99642%_)
          (if (let ((__tmp102587
                     (let () (declare (not safe)) (##type-id _%klass99637%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99641%_ __tmp102587))
              (unchecked-field-set! _%obj99641%_ _%field99639%_ _%val99642%_)
              (if (class-instance? _%klass99637%_ _%obj99641%_)
                  (unchecked-slot-set! _%obj99641%_ _%slot99638%_ _%val99642%_)
                  (not-an-instance__%
                   _%obj99641%_
                   _%klass99637%_
                   _%slot99638%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99631%_ _%slot99632%_ _%field99633%_)
        (lambda (_%obj99635%_)
          (if (let ((__tmp102588
                     (let () (declare (not safe)) (##type-id _%klass99631%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99635%_ __tmp102588))
              (unchecked-field-ref _%obj99635%_ _%field99633%_)
              (unchecked-slot-ref _%obj99635%_ _%slot99632%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99624%_ _%slot99625%_ _%field99626%_)
        (lambda (_%obj99628%_ _%val99629%_)
          (if (let ((__tmp102589
                     (let () (declare (not safe)) (##type-id _%klass99624%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99628%_ __tmp102589))
              (unchecked-field-set! _%obj99628%_ _%field99626%_ _%val99629%_)
              (unchecked-slot-set! _%obj99628%_ _%slot99625%_ _%val99629%_)))))
    (define class-slot-offset
      (lambda (_%klass99599%_ _%slot99600%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99599%_ 'class))
            (let ((_%klass99604%_ _%klass99599%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99600%_))
                  (let ((_%slot99614%_ _%slot99600%_))
                    (__class-slot-offset _%klass99604%_ _%slot99614%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99600%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99599%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99578%_ _%slot99579%_)
        (let* ((_%klass99582%_ _%klass99578%_)
               (_%slot99590%_ _%slot99579%_)
               (__tmp102590
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99582%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102590 _%slot99590%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99552%_ _%obj99553%_ _%slot99554%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99552%_ 'class))
            (let ((_%klass99558%_ _%klass99552%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99554%_))
                  (let ((_%slot99568%_ _%slot99554%_))
                    (__class-slot-ref
                     _%klass99558%_
                     _%obj99553%_
                     _%slot99568%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99554%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99552%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99528%_ _%obj99529%_ _%slot99530%_)
        (let* ((_%klass99533%_ _%klass99528%_) (_%slot99541%_ _%slot99530%_))
          (if (__class-instance? _%klass99533%_ _%obj99529%_)
              (let ((_%off99550%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99529%_))
                      _%slot99541%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99529%_
                 _%off99550%_
                 _%klass99533%_
                 _%slot99541%_))
              (not-an-instance__0 _%obj99529%_ _%klass99533%_)))))
    (define class-slot-set!
      (lambda (_%klass99501%_ _%obj99502%_ _%slot99503%_ _%val99504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99501%_ 'class))
            (let ((_%klass99508%_ _%klass99501%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99503%_))
                  (let ((_%slot99518%_ _%slot99503%_))
                    (__class-slot-set!
                     _%klass99508%_
                     _%obj99502%_
                     _%slot99518%_
                     _%val99504%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99503%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99501%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99476%_ _%obj99477%_ _%slot99478%_ _%val99479%_)
        (let* ((_%klass99482%_ _%klass99476%_) (_%slot99490%_ _%slot99478%_))
          (if (__class-instance? _%klass99482%_ _%obj99477%_)
              (let ((_%off99499%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99477%_))
                      _%slot99490%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99477%_
                 _%val99479%_
                 _%off99499%_
                 _%klass99482%_
                 _%slot99490%_))
              (not-an-instance__0 _%obj99477%_ _%klass99482%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99473%_ _%off99474%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj99473%_ _%off99474%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99469%_ _%off99470%_ _%val99471%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99469%_
           _%val99471%_
           _%off99470%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99466%_ _%slot99467%_)
        (unchecked-field-ref
         _%obj99466%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99466%_))
          _%slot99467%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99462%_ _%slot99463%_ _%val99464%_)
        (unchecked-field-set!
         _%obj99462%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99462%_))
          _%slot99463%_)
         _%val99464%_)))
    (define slot-ref__%
      (lambda (_%obj99424%_ _%slot99425%_ _%E99426%_)
        (if (symbol? _%slot99425%_)
            (let ((_%slot99430%_ _%slot99425%_))
              (if (procedure? _%E99426%_)
                  (let ((_%E99440%_ _%E99426%_))
                    (__slot-ref__% _%obj99424%_ _%slot99430%_ _%E99440%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99425%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99453%_ _%slot99454%_)
        (let ((_%E99456%_ __slot-error))
          (slot-ref__% _%obj99453%_ _%slot99454%_ _%E99456%_))))
    (define slot-ref
      (lambda _g102592_
        (let ((_g102591_ (let () (declare (not safe)) (##length _g102592_))))
          (cond ((let () (declare (not safe)) (##fx= _g102591_ 2))
                 (apply slot-ref__0 _g102592_))
                ((let () (declare (not safe)) (##fx= _g102591_ 3))
                 (apply slot-ref__% _g102592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102592_))))))
    (define __slot-ref__%
      (lambda (_%obj99380%_ _%slot99381%_ _%E99382%_)
        (let* ((_%slot99385%_ _%slot99381%_)
               (_%E99393%_ _%E99382%_)
               (_%klass99402%_ (class-of _%obj99380%_))
               (_%$e99405%_
                (__class-slot-offset _%klass99402%_ _%slot99385%_)))
          (if _%$e99405%_
              ((lambda (_%off99408%_)
                 (unchecked-field-ref _%obj99380%_ _%off99408%_))
               _%$e99405%_)
              (let ()
                (declare (not safe))
                (_%E99393%_ _%obj99380%_ _%slot99385%_))))))
    (define __slot-ref__0
      (lambda (_%obj99414%_ _%slot99415%_)
        (let ((_%E99417%_ __slot-error))
          (__slot-ref__% _%obj99414%_ _%slot99415%_ _%E99417%_))))
    (define __slot-ref
      (lambda _g102594_
        (let ((_g102593_ (let () (declare (not safe)) (##length _g102594_))))
          (cond ((let () (declare (not safe)) (##fx= _g102593_ 2))
                 (apply __slot-ref__0 _g102594_))
                ((let () (declare (not safe)) (##fx= _g102593_ 3))
                 (apply __slot-ref__% _g102594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102594_))))))
    (define slot-set!__%
      (lambda (_%obj99338%_ _%slot99339%_ _%val99340%_ _%E99341%_)
        (if (symbol? _%slot99339%_)
            (let ((_%slot99345%_ _%slot99339%_))
              (if (procedure? _%E99341%_)
                  (let ((_%E99355%_ _%E99341%_))
                    (__slot-set!__%
                     _%obj99338%_
                     _%slot99345%_
                     _%val99340%_
                     _%E99355%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99341%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99339%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99368%_ _%slot99369%_ _%val99370%_)
        (let ((_%E99372%_ __slot-error))
          (slot-set!__% _%obj99368%_ _%slot99369%_ _%val99370%_ _%E99372%_))))
    (define slot-set!
      (lambda _g102596_
        (let ((_g102595_ (let () (declare (not safe)) (##length _g102596_))))
          (cond ((let () (declare (not safe)) (##fx= _g102595_ 3))
                 (apply slot-set!__0 _g102596_))
                ((let () (declare (not safe)) (##fx= _g102595_ 4))
                 (apply slot-set!__% _g102596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102596_))))))
    (define __slot-set!__%
      (lambda (_%obj99291%_ _%slot99292%_ _%val99293%_ _%E99294%_)
        (let* ((_%slot99297%_ _%slot99292%_)
               (_%E99305%_ _%E99294%_)
               (_%klass99314%_ (class-of _%obj99291%_))
               (_%$e99317%_
                (__class-slot-offset _%klass99314%_ _%slot99297%_)))
          (if _%$e99317%_
              ((lambda (_%off99320%_)
                 (unchecked-field-set! _%obj99291%_ _%off99320%_ _%val99293%_))
               _%$e99317%_)
              (let ()
                (declare (not safe))
                (_%E99305%_ _%obj99291%_ _%slot99297%_))))))
    (define __slot-set!__0
      (lambda (_%obj99326%_ _%slot99327%_ _%val99328%_)
        (let ((_%E99330%_ __slot-error))
          (__slot-set!__%
           _%obj99326%_
           _%slot99327%_
           _%val99328%_
           _%E99330%_))))
    (define __slot-set!
      (lambda _g102598_
        (let ((_g102597_ (let () (declare (not safe)) (##length _g102598_))))
          (cond ((let () (declare (not safe)) (##fx= _g102597_ 3))
                 (apply __slot-set!__0 _g102598_))
                ((let () (declare (not safe)) (##fx= _g102597_ 4))
                 (apply __slot-set!__% _g102598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102598_))))))
    (define __slot-error
      (lambda (_%obj99287%_ _%slot99288%_)
        (error '"Cannot find slot"
               'object:
               _%obj99287%_
               'slot:
               _%slot99288%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99262%_ _%maybe-super-class99263%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99262%_ 'class))
            (let ((_%maybe-sub-class99267%_ _%maybe-sub-class99262%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99263%_
                     'class))
                  (let ((_%maybe-super-class99277%_
                         _%maybe-super-class99263%_))
                    (__subclass?
                     _%maybe-sub-class99267%_
                     _%maybe-super-class99277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99263%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99262%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99234%_ _%maybe-super-class99235%_)
        (let* ((_%maybe-sub-class99238%_ _%maybe-sub-class99234%_)
               (_%maybe-super-class99246%_ _%maybe-super-class99235%_)
               (_%maybe-super-class-id99255%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99246%_)))
               (_%$e99257%_
                (eq? _%maybe-super-class-id99255%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99238%_)))))
          (if _%$e99257%_
              _%$e99257%_
              (let ((__tmp102600
                     (lambda (_%super-class99260%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99260%_))
                            _%maybe-super-class-id99255%_)))
                    (__tmp102599
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99238%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102600 __tmp102599))))))
    (define object?
      (lambda (_%o99231%_)
        (if (let () (declare (not safe)) (##structure? _%o99231%_))
            (let ((__tmp102601
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99231%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102601 'class))
            '#f)))
    (define object-type
      (lambda (_%o99226%_)
        (if (let () (declare (not safe)) (##structure? _%o99226%_))
            (let ((_%klass99229%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99226%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99229%_ 'class))
                  _%klass99229%_
                  (begin
                    (error '"not an object" _%o99226%_ _%klass99229%_)
                    '#!void)))
            (begin (error '"not an object" _%o99226%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99211%_ _%obj99212%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99211%_ 'class))
            (let ((_%klass99216%_ _%klass99211%_))
              (__direct-instance? _%klass99216%_ _%obj99212%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99211%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99198%_ _%obj99199%_)
        (let* ((_%klass99202%_ _%klass99198%_)
               (__tmp102602
                (let () (declare (not safe)) (##type-id _%klass99202%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99199%_ __tmp102602))))
    (define immediate-instance-of?
      (lambda (_%klass99194%_ _%obj99195%_)
        (if (let () (declare (not safe)) (##structure? _%obj99195%_))
            (eq? _%klass99194%_
                 (let () (declare (not safe)) (##structure-type _%obj99195%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99179%_ _%obj99180%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99179%_ 'class))
            (let ((_%klass99184%_ _%klass99179%_))
              (__struct-instance? _%klass99184%_ _%obj99180%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99179%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99166%_ _%obj99167%_)
        (let* ((_%klass99170%_ _%klass99166%_)
               (__tmp102603
                (let () (declare (not safe)) (##type-id _%klass99170%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99167%_ __tmp102603))))
    (define class-instance?
      (lambda (_%klass99151%_ _%obj99152%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99151%_ 'class))
            (let ((_%klass99156%_ _%klass99151%_))
              (__class-instance? _%klass99156%_ _%obj99152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99151%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99136%_ _%obj99137%_)
        (let* ((_%klass99140%_ _%klass99136%_)
               (_%type99149%_ (class-of _%obj99137%_)))
          (__subclass? _%type99149%_ _%klass99140%_))))
    (define make-object
      (lambda (_%klass99111%_ _%k99112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99111%_ 'class))
            (let ((_%klass99116%_ _%klass99111%_))
              (if (fixnum? _%k99112%_)
                  (let ((_%k99126%_ _%k99112%_))
                    (__make-object _%klass99116%_ _%k99126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99111%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99088%_ _%k99089%_)
        (let* ((_%klass99092%_ _%klass99088%_) (_%k99100%_ _%k99089%_))
          (if (__class-type-system? _%klass99092%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99092%_)
                '#!void)
              (let ((_%obj99109%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99092%_ _%k99100%_))))
                (object-fill! _%obj99109%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99073%_ _%fill99074%_)
        (if '#t
            (let ((_%obj99078%_ _%obj99073%_))
              (__object-fill! _%obj99078%_ _%fill99074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99073%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99055%_ _%fill99056%_)
        (let ((_%obj99059%_ _%obj99055%_))
          (let _%loop99068%_ ((_%i99070%_
                               (let ((__tmp102604
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99059%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102604 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99070%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99059%_
                     _%fill99056%_
                     _%i99070%_
                     '#f
                     '#f))
                  (_%loop99068%_
                   (let () (declare (not safe)) (##fx- _%i99070%_ '1))))
                _%obj99059%_)))))
    (define new-instance
      (lambda (_%klass99041%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99041%_ 'class))
            (let ((_%klass99045%_ _%klass99041%_))
              (__new-instance _%klass99045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99041%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass99029%_)
        (let* ((_%klass99032%_ _%klass99029%_)
               (__obj102521
                (let ((__tmp102605
                       (let ((__tmp102606
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass99032%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102606))))
                  (declare (not safe))
                  (##make-structure _%klass99032%_ __tmp102605))))
          (object-fill! __obj102521 '#f)
          __obj102521)))
    (define make-instance
      (lambda (_%klass99014%_ . _%args99015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99014%_ 'class))
            (let ((_%klass99019%_ _%klass99014%_))
              (declare (not safe))
              (##apply __make-instance _%klass99019%_ _%args99015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass99014%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98986%_ . _%args98987%_)
        (let* ((_%klass98990%_ _%klass98986%_)
               (_%$e98999%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98990%_ '10 '#f '#f))))
          (if _%$e98999%_
              ((lambda (_%kons-id99002%_)
                 (let ((_%obj99004%_ (__new-instance _%klass98990%_)))
                   (___constructor-init!
                    _%klass98990%_
                    _%kons-id99002%_
                    _%obj99004%_
                    _%args98987%_)
                   _%obj99004%_))
               _%$e98999%_)
              (if (__class-type-metaclass? _%klass98990%_)
                  (let ((_%obj99007%_ (__new-instance _%klass98990%_)))
                    (__metaclass-instance-init!
                     _%klass98990%_
                     _%obj99007%_
                     _%args98987%_)
                    _%obj99007%_)
                  (if (__class-type-struct? _%klass98990%_)
                      (if (let ((__tmp102608
                                 (__class-type-field-count _%klass98990%_))
                                (__tmp102607
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98987%_))))
                            (declare (not safe))
                            (##fx= __tmp102608 __tmp102607))
                          (apply ##structure _%klass98990%_ _%args98987%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98990%_
                                   'slots:
                                   (__class-type-slot-list _%klass98990%_)
                                   'args:
                                   _%args98987%_)
                            '#!void))
                      (let ((_%obj99010%_ (__new-instance _%klass98990%_)))
                        (___class-instance-init!
                         _%klass98990%_
                         _%obj99010%_
                         _%args98987%_)
                        _%obj99010%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98971%_ . _%args98972%_)
        (if '#t
            (let ((_%obj98976%_ _%obj98971%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98976%_ _%args98972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98971%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98958%_ . _%args98959%_)
        (let ((_%obj98962%_ _%obj98958%_))
          (if (let ((__tmp102610
                     (let () (declare (not safe)) (##length _%args98959%_)))
                    (__tmp102609
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98962%_))))
                (declare (not safe))
                (##fx< __tmp102610 __tmp102609))
              (___struct-instance-init! _%obj98962%_ _%args98959%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98962%_
                     'args:
                     _%args98959%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98917%_ _%args98918%_)
        (let _%lp98920%_ ((_%k98922%_ '1) (_%rest98923%_ _%args98918%_))
          (let* ((_%rest9892498932%_ _%rest98923%_)
                 (_%else9892698940%_ (lambda () _%obj98917%_))
                 (_%K9892898946%_
                  (lambda (_%rest98943%_ _%hd98944%_)
                    (unchecked-field-set! _%obj98917%_ _%k98922%_ _%hd98944%_)
                    (_%lp98920%_
                     (let () (declare (not safe)) (##fx+ _%k98922%_ '1))
                     _%rest98943%_))))
            (if (pair? _%rest9892498932%_)
                (let ((_%hd9892998949%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9892498932%_)))
                      (_%tl9893098951%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9892498932%_))))
                  (let* ((_%hd98954%_ _%hd9892998949%_)
                         (_%rest98956%_ _%tl9893098951%_))
                    (_%K9892898946%_ _%rest98956%_ _%hd98954%_)))
                (_%else9892698940%_))))))
    (define class-instance-init!
      (lambda (_%obj98902%_ . _%args98903%_)
        (if '#t
            (let ((_%obj98907%_ _%obj98902%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98907%_ _%args98903%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98902%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98889%_ . _%args98890%_)
        (let ((_%obj98893%_ _%obj98889%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98893%_))
           _%obj98893%_
           _%args98890%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98831%_ _%obj98832%_ _%args98833%_)
        (let _%lp98835%_ ((_%rest98837%_ _%args98833%_))
          (let* ((_%rest9883898848%_ _%rest98837%_)
                 (_%else9884098856%_
                  (lambda ()
                    (if (null? _%rest98837%_)
                        _%obj98832%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98831%_
                               'rest:
                               _%rest98837%_))))
                 (_%K9884298870%_
                  (lambda (_%rest98859%_ _%val98860%_ _%key98861%_)
                    (if (keyword? _%key98861%_)
                        (let ((_%$e98864%_
                               (__class-slot-offset
                                _%klass98831%_
                                _%key98861%_)))
                          (if _%$e98864%_
                              ((lambda (_%off98867%_)
                                 (unchecked-field-set!
                                  _%obj98832%_
                                  _%off98867%_
                                  _%val98860%_)
                                 (_%lp98835%_ _%rest98859%_))
                               _%$e98864%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98831%_
                                     'slot:
                                     _%key98861%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98861%_)))))
            (if (pair? _%rest9883898848%_)
                (let ((_%hd9884398873%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9883898848%_)))
                      (_%tl9884498875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9883898848%_))))
                  (let ((_%key98878%_ _%hd9884398873%_))
                    (if (pair? _%tl9884498875%_)
                        (let ((_%hd9884598880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9884498875%_)))
                              (_%tl9884698882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9884498875%_))))
                          (let* ((_%val98885%_ _%hd9884598880%_)
                                 (_%rest98887%_ _%tl9884698882%_))
                            (_%K9884298870%_
                             _%rest98887%_
                             _%val98885%_
                             _%key98878%_)))
                        (_%else9884098856%_))))
                (_%else9884098856%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98827%_ _%obj98828%_ _%args98829%_)
        (apply call-method
               _%klass98827%_
               'instance-init!
               _%obj98828%_
               _%args98829%_)))
    (define constructor-init!
      (lambda (_%klass98790%_ _%kons-id98791%_ _%obj98792%_ . _%args98793%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98790%_ 'class))
            (let ((_%klass98797%_ _%klass98790%_))
              (if (symbol? _%kons-id98791%_)
                  (let ((_%kons-id98807%_ _%kons-id98791%_))
                    (if '#t
                        (let ((_%obj98817%_ _%obj98792%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98797%_
                                   _%kons-id98807%_
                                   _%obj98817%_
                                   _%args98793%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98792%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98791%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98790%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98759%_ _%kons-id98760%_ _%obj98761%_ . _%args98762%_)
        (let* ((_%klass98765%_ _%klass98759%_)
               (_%kons-id98773%_ _%kons-id98760%_)
               (_%obj98781%_ _%obj98761%_))
          (___constructor-init!
           _%klass98765%_
           _%kons-id98773%_
           _%obj98781%_
           _%args98762%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98748%_ _%kons-id98749%_ _%obj98750%_ _%args98751%_)
        (let ((_%$e98753%_
               (__find-method _%klass98748%_ _%obj98750%_ _%kons-id98749%_)))
          (if _%$e98753%_
              ((lambda (_%kons98756%_)
                 (apply _%kons98756%_ _%obj98750%_ _%args98751%_)
                 _%obj98750%_)
               _%$e98753%_)
              (error '"missing constructor"
                     'class:
                     _%klass98748%_
                     'method:
                     _%kons-id98749%_)))))
    (define struct-copy
      (lambda (_%struct98734%_)
        (if '#t
            (let ((_%struct98738%_ _%struct98734%_))
              (__struct-copy _%struct98738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98734%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98722%_)
        (let ((_%struct98725%_ _%struct98722%_))
          (declare (not safe))
          (##structure-copy _%struct98725%_))))
    (define struct->list
      (lambda (_%obj98708%_)
        (if '#t
            (let ((_%obj98712%_ _%obj98708%_)) (__struct->list _%obj98712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98708%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98689%_)
        (let* ((_%obj98692%_ _%obj98689%_)
               (_%len98701%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj98692%_))))
          (let _%recur98703%_ ((_%i98705%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i98705%_ _%len98701%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj98692%_
                         _%i98705%_
                         '#f
                         '#f))
                      (_%recur98703%_
                       (let () (declare (not safe)) (##fx+ _%i98705%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj98675%_)
        (if '#t
            (let ((_%obj98679%_ _%obj98675%_)) (__class->list _%obj98679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj98675%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98651%_)
        (let* ((_%obj98654%_ _%obj98651%_)
               (_%klass98663%_
                (let () (declare (not safe)) (##structure-type _%obj98654%_)))
               (_%slot-vector98665%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98663%_ '7 '#f '#f))))
          (let _%loop98667%_ ((_%index98669%_
                               (let ((__tmp102611
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98665%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102611 '1)))
                              (_%plist98670%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98669%_ '1))
                (cons _%klass98663%_ _%plist98670%_)
                (let ((_%slot98673%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98665%_ _%index98669%_))))
                  (_%loop98667%_
                   (let () (declare (not safe)) (##fx- _%index98669%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98673%_))
                         (cons (unchecked-field-ref
                                _%obj98654%_
                                _%index98669%_)
                               _%plist98670%_)))))))))
    (define call-method
      (lambda (_%obj98635%_ _%id98636%_ . _%args98637%_)
        (if (symbol? _%id98636%_)
            (let ((_%id98641%_ _%id98636%_))
              (declare (not safe))
              (##apply __call-method _%obj98635%_ _%id98641%_ _%args98637%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id98636%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98604%_ _%id98605%_ . _%args98606%_)
        (let* ((_%id98609%_ _%id98605%_)
               (_%$e98618%_ (__method-ref _%obj98604%_ _%id98609%_)))
          (if _%$e98618%_
              ((lambda (_%method98621%_)
                 (let ((_%method98623%_ _%method98621%_))
                   (apply _%method98623%_ _%obj98604%_ _%args98606%_)))
               _%$e98618%_)
              (error '"cannot find method"
                     'object:
                     _%obj98604%_
                     'method:
                     _%id98609%_)))))
    (define method-ref
      (lambda (_%obj98589%_ _%id98590%_)
        (if (symbol? _%id98590%_)
            (let ((_%id98594%_ _%id98590%_))
              (__method-ref _%obj98589%_ _%id98594%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id98590%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98576%_ _%id98577%_)
        (let ((_%id98580%_ _%id98577%_))
          (__find-method (class-of _%obj98576%_) _%obj98576%_ _%id98580%_))))
    (define checked-method-ref
      (lambda (_%obj98569%_ _%id98570%_)
        (let ((_%$e98573%_ (method-ref _%obj98569%_ _%id98570%_)))
          (if _%$e98573%_
              _%$e98573%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98569%_
                       'method:
                       _%id98570%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98554%_ _%id98555%_)
        (if (symbol? _%id98555%_)
            (let ((_%id98559%_ _%id98555%_))
              (__bound-method-ref _%obj98554%_ _%id98559%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id98555%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98522%_ _%id98523%_)
        (let* ((_%id98526%_ _%id98523%_)
               (_%$e98535%_ (__method-ref _%obj98522%_ _%id98526%_)))
          (if _%$e98535%_
              ((lambda (_%method98538%_)
                 (let ((_%method98540%_ _%method98538%_))
                   (lambda _%args98551%_
                     (apply _%method98540%_ _%obj98522%_ _%args98551%_))))
               _%$e98535%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98507%_ _%id98508%_)
        (if (symbol? _%id98508%_)
            (let ((_%id98512%_ _%id98508%_))
              (__checked-bound-method-ref _%obj98507%_ _%id98512%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id98508%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98490%_ _%id98491%_)
        (let* ((_%id98494%_ _%id98491%_)
               (_%method98503%_ (checked-method-ref _%obj98490%_ _%id98494%_)))
          (lambda _%args98505%_
            (apply _%method98503%_ _%obj98490%_ _%args98505%_)))))
    (define find-method
      (lambda (_%klass98464%_ _%obj98465%_ _%id98466%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98464%_ 'class))
            (let ((_%klass98470%_ _%klass98464%_))
              (if (symbol? _%id98466%_)
                  (let ((_%id98480%_ _%id98466%_))
                    (__find-method _%klass98470%_ _%obj98465%_ _%id98480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98466%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass98464%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98437%_ _%obj98438%_ _%id98439%_)
        (let* ((_%klass98442%_ _%klass98437%_)
               (_%id98450%_ _%id98439%_)
               (_%$e98459%_
                (__direct-method-ref _%klass98442%_ _%obj98438%_ _%id98450%_)))
          (if _%$e98459%_
              _%$e98459%_
              (if (__class-type-sealed? _%klass98442%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98442%_
                   _%obj98438%_
                   _%id98450%_))))))
    (define mixin-find-method
      (lambda (_%mixins98421%_ _%obj98422%_ _%id98423%_)
        (if (symbol? _%id98423%_)
            (let ((_%id98427%_ _%id98423%_))
              (__mixin-find-method _%mixins98421%_ _%obj98422%_ _%id98427%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id98423%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98403%_ _%obj98404%_ _%id98405%_)
        (let* ((_%id98408%_ _%id98405%_)
               (__tmp102612
                (lambda (_%g9841698418%_)
                  (direct-method-ref
                   _%g9841698418%_
                   _%obj98404%_
                   _%id98408%_))))
          (declare (not safe))
          (__ormap1 __tmp102612 _%mixins98403%_))))
    (define direct-method-ref
      (lambda (_%klass98377%_ _%obj98378%_ _%id98379%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98377%_ 'class))
            (let ((_%klass98383%_ _%klass98377%_))
              (if (symbol? _%id98379%_)
                  (let ((_%id98393%_ _%id98379%_))
                    (__direct-method-ref
                     _%klass98383%_
                     _%obj98378%_
                     _%id98393%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98379%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass98377%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98331%_ _%obj98332%_ _%id98333%_)
        (let* ((_%klass98336%_ _%klass98331%_) (_%id98344%_ _%id98333%_))
          (letrec ((_%metaclass-resolve-method98353%_
                    (lambda ()
                      (let ((__method102522
                             (__method-ref _%klass98336%_ 'direct-method-ref)))
                        (if __method102522
                            (let ()
                              (declare (not safe))
                              (__method102522
                               _%klass98336%_
                               _%obj98332%_
                               _%id98344%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98336%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98354%_
                    (lambda ()
                      (let ((_%method98374%_
                             (_%metaclass-resolve-method98353%_)))
                        (let ((__tmp102614
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98336%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102613
                               (if _%method98374%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102614
                           _%id98344%_
                           __tmp102613))
                        _%method98374%_))))
            (let ((_%$e98356%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98336%_ '11 '#f '#f))))
              (if _%$e98356%_
                  ((lambda (_%ht98359%_)
                     (let ((_%method98361%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98359%_
                               _%id98344%_
                               '#f))))
                       (if (procedure? _%method98361%_)
                           _%method98361%_
                           (if (__class-type-metaclass? _%klass98336%_)
                               (let ((_%$e98365%_ _%method98361%_))
                                 (if (eq? 'resolved _%$e98365%_)
                                     (_%metaclass-resolve-method98353%_)
                                     (if (eq? 'unknown _%$e98365%_)
                                         '#f
                                         (_%metaclass-resolve-method!98354%_))))
                               '#f))))
                   _%$e98356%_)
                  (if (__class-type-metaclass? _%klass98336%_)
                      (let ((_%tab98370%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98336%_
                           _%tab98370%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98354%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98305%_ _%obj98306%_ _%id98307%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98305%_ 'class))
            (let ((_%klass98311%_ _%klass98305%_))
              (if (symbol? _%id98307%_)
                  (let ((_%id98321%_ _%id98307%_))
                    (__mixin-method-ref
                     _%klass98311%_
                     _%obj98306%_
                     _%id98321%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98307%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass98305%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98283%_ _%obj98284%_ _%id98285%_)
        (let* ((_%klass98288%_ _%klass98283%_) (_%id98296%_ _%id98285%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98288%_ '6 '#f '#f))
           _%obj98284%_
           _%id98296%_))))
    (define bind-method!__%
      (lambda (_%klass98242%_ _%id98243%_ _%proc98244%_ _%rebind?98245%_)
        (if (symbol? _%id98243%_)
            (let ((_%id98249%_ _%id98243%_))
              (if (procedure? _%proc98244%_)
                  (let ((_%proc98259%_ _%proc98244%_))
                    (__bind-method!__%
                     _%klass98242%_
                     _%id98249%_
                     _%proc98259%_
                     _%rebind?98245%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98244%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id98243%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98272%_ _%id98273%_ _%proc98274%_)
        (let ((_%rebind?98276%_ '#f))
          (bind-method!__%
           _%klass98272%_
           _%id98273%_
           _%proc98274%_
           _%rebind?98276%_))))
    (define bind-method!
      (lambda _g102616_
        (let ((_g102615_ (let () (declare (not safe)) (##length _g102616_))))
          (cond ((let () (declare (not safe)) (##fx= _g102615_ 3))
                 (apply bind-method!__0 _g102616_))
                ((let () (declare (not safe)) (##fx= _g102615_ 4))
                 (apply bind-method!__% _g102616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102616_))))))
    (define __bind-method!__%
      (lambda (_%klass98193%_ _%id98194%_ _%proc98195%_ _%rebind?98196%_)
        (let* ((_%id98199%_ _%id98194%_) (_%proc98207%_ _%proc98195%_))
          (letrec ((_%bind!98216%_
                    (lambda (_%ht98225%_)
                      (if (and (not _%rebind?98196%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98225%_
                                  _%id98199%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98193%_
                                 'method:
                                 _%id98199%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98225%_
                               _%id98199%_
                               _%proc98207%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98193%_ 'class))
                (let ((_%ht98219%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98193%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98219%_
                      (_%bind!98216%_ _%ht98219%_)
                      (let ((_%ht98221%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98193%_
                           _%ht98221%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98216%_ _%ht98221%_))))
                (if (let () (declare (not safe)) (##type? _%klass98193%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98193%_)
                     _%id98199%_
                     _%proc98207%_
                     _%rebind?98196%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98193%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98230%_ _%id98231%_ _%proc98232%_)
        (let ((_%rebind?98234%_ '#f))
          (__bind-method!__%
           _%klass98230%_
           _%id98231%_
           _%proc98232%_
           _%rebind?98234%_))))
    (define __bind-method!
      (lambda _g102618_
        (let ((_g102617_ (let () (declare (not safe)) (##length _g102618_))))
          (cond ((let () (declare (not safe)) (##fx= _g102617_ 3))
                 (apply __bind-method!__0 _g102618_))
                ((let () (declare (not safe)) (##fx= _g102617_ 4))
                 (apply __bind-method!__% _g102618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102618_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98173%_ _%seed98175%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98173%_
           procedure-hash
           eq?
           _%seed98175%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98181%_ '#f) (_%seed98183%_ '0))
          (make-method-specializer-table__%
           _%size-hint98181%_
           _%seed98183%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98185%_)
        (let ((_%seed98187%_ '0))
          (make-method-specializer-table__%
           _%size-hint98185%_
           _%seed98187%_))))
    (define make-method-specializer-table
      (lambda _g102620_
        (let ((_g102619_ (let () (declare (not safe)) (##length _g102620_))))
          (cond ((let () (declare (not safe)) (##fx= _g102619_ 0))
                 (apply make-method-specializer-table__0 _g102620_))
                ((let () (declare (not safe)) (##fx= _g102619_ 1))
                 (apply make-method-specializer-table__1 _g102620_))
                ((let () (declare (not safe)) (##fx= _g102619_ 2))
                 (apply make-method-specializer-table__% _g102620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102620_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98126%_ _%key98127%_ _%default98128%_)
        (let ((_%table98130%_
               (let () (declare (not safe)) (&raw-table-table _%tab98126%_)))
              (_%seed98131%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98126%_))))
          (let* ((_%h98133%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98127%_))
                         _%seed98131%_))
                 (_%size98136%_ (vector-length _%table98130%_))
                 (_%entries98139%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98136%_ '2)))
                 (_%start98142%_
                  (let ((__tmp102621
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98133%_ _%entries98139%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102621 '1))))
            (let _%loop98146%_ ((_%probe98149%_ _%start98142%_)
                                (_%i98151%_ '1)
                                (_%deleted98153%_ '#f))
              (let ((_%k98156%_ (vector-ref _%table98130%_ _%probe98149%_)))
                (if (eq? _%k98156%_ (macro-unused-obj))
                    _%default98128%_
                    (if (eq? _%k98156%_ (macro-deleted-obj))
                        (_%loop98146%_
                         (let ((_%next-probe98161%_
                                (fx+ _%start98142%_
                                     _%i98151%_
                                     (fx* _%i98151%_ _%i98151%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98161%_ _%size98136%_))
                         (let () (declare (not safe)) (##fx+ _%i98151%_ '1))
                         (let ((_%$e98164%_ _%deleted98153%_))
                           (if _%$e98164%_ _%$e98164%_ _%probe98149%_)))
                        (if (eq? _%key98127%_ _%k98156%_)
                            (vector-ref
                             _%table98130%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98149%_ '1)))
                            (_%loop98146%_
                             (let ((_%next-probe98169%_
                                    (fx+ _%start98142%_
                                         _%i98151%_
                                         (fx* _%i98151%_ _%i98151%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98169%_ _%size98136%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98151%_ '1))
                             _%deleted98153%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98122%_ _%key98123%_ _%value98124%_)
        (if (let ((__tmp102624
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98122%_)))
                  (__tmp102622
                   (let ((__tmp102623
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98122%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102623 '4))))
              (declare (not safe))
              (##fx< __tmp102624 __tmp102622))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98122%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98122%_
         _%key98123%_
         _%value98124%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98073%_ _%key98074%_ _%value98075%_)
        (let ((_%table98078%_
               (let () (declare (not safe)) (&raw-table-table _%tab98073%_)))
              (_%seed98079%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98073%_))))
          (let* ((_%h98081%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98074%_))
                         _%seed98079%_))
                 (_%size98084%_ (vector-length _%table98078%_))
                 (_%entries98087%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98084%_ '2)))
                 (_%start98090%_
                  (let ((__tmp102625
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98081%_ _%entries98087%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102625 '1))))
            (let _%loop98094%_ ((_%probe98097%_ _%start98090%_)
                                (_%i98099%_ '1)
                                (_%deleted98101%_ '#f))
              (let ((_%k98104%_ (vector-ref _%table98078%_ _%probe98097%_)))
                (if (eq? _%k98104%_ (macro-unused-obj))
                    (if _%deleted98101%_
                        (begin
                          (vector-set!
                           _%table98078%_
                           _%deleted98101%_
                           _%key98074%_)
                          (vector-set!
                           _%table98078%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98101%_ '1))
                           _%value98075%_)
                          ((lambda ()
                             (let ((__tmp102626
                                    (let ((__tmp102627
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98073%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102627 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98073%_
                                __tmp102626)))))
                        (begin
                          (vector-set!
                           _%table98078%_
                           _%probe98097%_
                           _%key98074%_)
                          (vector-set!
                           _%table98078%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98097%_ '1))
                           _%value98075%_)
                          ((lambda ()
                             (let ((__tmp102628
                                    (let ((__tmp102629
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98073%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102629 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98073%_ __tmp102628))
                             (let ((__tmp102630
                                    (let ((__tmp102631
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98073%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102631 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98073%_
                                __tmp102630))))))
                    (if (eq? _%k98104%_ (macro-deleted-obj))
                        (_%loop98094%_
                         (let ((_%next-probe98111%_
                                (fx+ _%start98090%_
                                     _%i98099%_
                                     (fx* _%i98099%_ _%i98099%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98111%_ _%size98084%_))
                         (let () (declare (not safe)) (##fx+ _%i98099%_ '1))
                         (let ((_%$e98114%_ _%deleted98101%_))
                           (if _%$e98114%_ _%$e98114%_ _%probe98097%_)))
                        (if (eq? _%key98074%_ _%k98104%_)
                            (let ()
                              (vector-set!
                               _%table98078%_
                               _%probe98097%_
                               _%key98074%_)
                              (vector-set!
                               _%table98078%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98097%_ '1))
                               _%value98075%_))
                            (_%loop98094%_
                             (let ((_%next-probe98119%_
                                    (fx+ _%start98090%_
                                         _%i98099%_
                                         (fx* _%i98099%_ _%i98099%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98119%_ _%size98084%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98099%_ '1))
                             _%deleted98101%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98068%_
               _%key98069%_
               _%method-specializer-table-update!98070%_
               _%default98071%_)
        (if (let ((__tmp102634
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98068%_)))
                  (__tmp102632
                   (let ((__tmp102633
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98068%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102633 '4))))
              (declare (not safe))
              (##fx< __tmp102634 __tmp102632))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98068%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98068%_
         _%key98069%_
         _%method-specializer-table-update!98070%_
         _%default98071%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab98018%_
               _%key98019%_
               _%method-specializer-table-update!98020%_
               _%default98021%_)
        (let ((_%table98024%_
               (let () (declare (not safe)) (&raw-table-table _%tab98018%_)))
              (_%seed98025%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98018%_))))
          (let* ((_%h98027%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98019%_))
                         _%seed98025%_))
                 (_%size98030%_ (vector-length _%table98024%_))
                 (_%entries98033%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98030%_ '2)))
                 (_%start98036%_
                  (let ((__tmp102635
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98027%_ _%entries98033%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102635 '1))))
            (let _%loop98040%_ ((_%probe98043%_ _%start98036%_)
                                (_%i98045%_ '1)
                                (_%deleted98047%_ '#f))
              (let ((_%k98050%_ (vector-ref _%table98024%_ _%probe98043%_)))
                (if (eq? _%k98050%_ (macro-unused-obj))
                    (if _%deleted98047%_
                        (begin
                          (vector-set!
                           _%table98024%_
                           _%deleted98047%_
                           _%key98019%_)
                          (vector-set!
                           _%table98024%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98047%_ '1))
                           (_%method-specializer-table-update!98020%_
                            _%default98021%_))
                          ((lambda ()
                             (let ((__tmp102636
                                    (let ((__tmp102637
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98018%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102637 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98018%_
                                __tmp102636)))))
                        (begin
                          (vector-set!
                           _%table98024%_
                           _%probe98043%_
                           _%key98019%_)
                          (vector-set!
                           _%table98024%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98043%_ '1))
                           (_%method-specializer-table-update!98020%_
                            _%default98021%_))
                          ((lambda ()
                             (let ((__tmp102638
                                    (let ((__tmp102639
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98018%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102639 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98018%_ __tmp102638))
                             (let ((__tmp102640
                                    (let ((__tmp102641
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98018%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102641 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98018%_
                                __tmp102640))))))
                    (if (eq? _%k98050%_ (macro-deleted-obj))
                        (_%loop98040%_
                         (let ((_%next-probe98057%_
                                (fx+ _%start98036%_
                                     _%i98045%_
                                     (fx* _%i98045%_ _%i98045%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98057%_ _%size98030%_))
                         (let () (declare (not safe)) (##fx+ _%i98045%_ '1))
                         (let ((_%$e98060%_ _%deleted98047%_))
                           (if _%$e98060%_ _%$e98060%_ _%probe98043%_)))
                        (if (eq? _%key98019%_ _%k98050%_)
                            (let ()
                              (vector-set!
                               _%table98024%_
                               _%probe98043%_
                               _%key98019%_)
                              (vector-set!
                               _%table98024%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98043%_ '1))
                               (_%method-specializer-table-update!98020%_
                                (vector-ref
                                 _%table98024%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98043%_ '1))))))
                            (_%loop98040%_
                             (let ((_%next-probe98065%_
                                    (fx+ _%start98036%_
                                         _%i98045%_
                                         (fx* _%i98045%_ _%i98045%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98065%_ _%size98030%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98045%_ '1))
                             _%deleted98047%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97973%_ _%key97975%_)
        (let ((_%table97978%_
               (let () (declare (not safe)) (&raw-table-table _%tab97973%_)))
              (_%seed97980%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97973%_))))
          (let* ((_%h97983%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97975%_))
                         _%seed97980%_))
                 (_%size97986%_ (vector-length _%table97978%_))
                 (_%entries97989%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97986%_ '2)))
                 (_%start97992%_
                  (let ((__tmp102642
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97983%_ _%entries97989%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102642 '1))))
            (let _%loop97996%_ ((_%probe97999%_ _%start97992%_)
                                (_%i98001%_ '1))
              (let ((_%k98004%_ (vector-ref _%table97978%_ _%probe97999%_)))
                (if (eq? _%k98004%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k98004%_ (macro-deleted-obj))
                        (_%loop97996%_
                         (let ((_%next-probe98009%_
                                (fx+ _%start97992%_
                                     _%i98001%_
                                     (fx* _%i98001%_ _%i98001%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98009%_ _%size97986%_))
                         (let () (declare (not safe)) (##fx+ _%i98001%_ '1)))
                        (if (eq? _%key97975%_ _%k98004%_)
                            (let ()
                              (vector-set!
                               _%table97978%_
                               _%probe97999%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97978%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97999%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102643
                                        (let ((__tmp102644
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97973%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102644 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97973%_
                                    __tmp102643)))))
                            (_%loop97996%_
                             (let ((_%next-probe98015%_
                                    (fx+ _%start97992%_
                                         _%i98001%_
                                         (fx* _%i98001%_ _%i98001%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98015%_ _%size97986%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98001%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97964%_ _%specializer97965%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97969%_ ()
            (if (let ((__tmp102645
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102645 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97969%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97964%_
         _%specializer97965%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97954%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97958%_ ()
            (if (let ((__tmp102646
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102646 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97958%_)))))
        (let ((_%specializer97962%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97954%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97962%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97952%_)
        (let ((__tmp102647
               (let () (declare (not safe)) (##type-id _%klass97952%_))))
          (declare (not safe))
          (##symbol-hash __tmp102647))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97933%_ _%seed97935%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97933%_
           __class-specializer-hash-key
           eq?
           _%seed97935%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97941%_ '#f) (_%seed97943%_ '0))
          (make-class-specializer-table__% _%size-hint97941%_ _%seed97943%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97945%_)
        (let ((_%seed97947%_ '0))
          (make-class-specializer-table__% _%size-hint97945%_ _%seed97947%_))))
    (define make-class-specializer-table
      (lambda _g102649_
        (let ((_g102648_ (let () (declare (not safe)) (##length _g102649_))))
          (cond ((let () (declare (not safe)) (##fx= _g102648_ 0))
                 (apply make-class-specializer-table__0 _g102649_))
                ((let () (declare (not safe)) (##fx= _g102648_ 1))
                 (apply make-class-specializer-table__1 _g102649_))
                ((let () (declare (not safe)) (##fx= _g102648_ 2))
                 (apply make-class-specializer-table__% _g102649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102649_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97886%_ _%key97887%_ _%default97888%_)
        (let ((_%table97890%_
               (let () (declare (not safe)) (&raw-table-table _%tab97886%_)))
              (_%seed97891%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97886%_))))
          (let* ((_%h97893%_
                  (fxxor (__class-specializer-hash-key _%key97887%_)
                         _%seed97891%_))
                 (_%size97896%_ (vector-length _%table97890%_))
                 (_%entries97899%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97896%_ '2)))
                 (_%start97902%_
                  (let ((__tmp102650
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97893%_ _%entries97899%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102650 '1))))
            (let _%loop97906%_ ((_%probe97909%_ _%start97902%_)
                                (_%i97911%_ '1)
                                (_%deleted97913%_ '#f))
              (let ((_%k97916%_ (vector-ref _%table97890%_ _%probe97909%_)))
                (if (eq? _%k97916%_ (macro-unused-obj))
                    _%default97888%_
                    (if (eq? _%k97916%_ (macro-deleted-obj))
                        (_%loop97906%_
                         (let ((_%next-probe97921%_
                                (fx+ _%start97902%_
                                     _%i97911%_
                                     (fx* _%i97911%_ _%i97911%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97921%_ _%size97896%_))
                         (let () (declare (not safe)) (##fx+ _%i97911%_ '1))
                         (let ((_%$e97924%_ _%deleted97913%_))
                           (if _%$e97924%_ _%$e97924%_ _%probe97909%_)))
                        (if (eq? _%key97887%_ _%k97916%_)
                            (vector-ref
                             _%table97890%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97909%_ '1)))
                            (_%loop97906%_
                             (let ((_%next-probe97929%_
                                    (fx+ _%start97902%_
                                         _%i97911%_
                                         (fx* _%i97911%_ _%i97911%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97929%_ _%size97896%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97911%_ '1))
                             _%deleted97913%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97882%_ _%key97883%_ _%value97884%_)
        (if (let ((__tmp102653
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97882%_)))
                  (__tmp102651
                   (let ((__tmp102652
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97882%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102652 '4))))
              (declare (not safe))
              (##fx< __tmp102653 __tmp102651))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97882%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97882%_
         _%key97883%_
         _%value97884%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97833%_ _%key97834%_ _%value97835%_)
        (let ((_%table97838%_
               (let () (declare (not safe)) (&raw-table-table _%tab97833%_)))
              (_%seed97839%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97833%_))))
          (let* ((_%h97841%_
                  (fxxor (__class-specializer-hash-key _%key97834%_)
                         _%seed97839%_))
                 (_%size97844%_ (vector-length _%table97838%_))
                 (_%entries97847%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97844%_ '2)))
                 (_%start97850%_
                  (let ((__tmp102654
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97841%_ _%entries97847%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102654 '1))))
            (let _%loop97854%_ ((_%probe97857%_ _%start97850%_)
                                (_%i97859%_ '1)
                                (_%deleted97861%_ '#f))
              (let ((_%k97864%_ (vector-ref _%table97838%_ _%probe97857%_)))
                (if (eq? _%k97864%_ (macro-unused-obj))
                    (if _%deleted97861%_
                        (begin
                          (vector-set!
                           _%table97838%_
                           _%deleted97861%_
                           _%key97834%_)
                          (vector-set!
                           _%table97838%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97861%_ '1))
                           _%value97835%_)
                          ((lambda ()
                             (let ((__tmp102655
                                    (let ((__tmp102656
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97833%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102656 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97833%_
                                __tmp102655)))))
                        (begin
                          (vector-set!
                           _%table97838%_
                           _%probe97857%_
                           _%key97834%_)
                          (vector-set!
                           _%table97838%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97857%_ '1))
                           _%value97835%_)
                          ((lambda ()
                             (let ((__tmp102657
                                    (let ((__tmp102658
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97833%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102658 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97833%_ __tmp102657))
                             (let ((__tmp102659
                                    (let ((__tmp102660
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97833%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102660 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97833%_
                                __tmp102659))))))
                    (if (eq? _%k97864%_ (macro-deleted-obj))
                        (_%loop97854%_
                         (let ((_%next-probe97871%_
                                (fx+ _%start97850%_
                                     _%i97859%_
                                     (fx* _%i97859%_ _%i97859%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97871%_ _%size97844%_))
                         (let () (declare (not safe)) (##fx+ _%i97859%_ '1))
                         (let ((_%$e97874%_ _%deleted97861%_))
                           (if _%$e97874%_ _%$e97874%_ _%probe97857%_)))
                        (if (eq? _%key97834%_ _%k97864%_)
                            (let ()
                              (vector-set!
                               _%table97838%_
                               _%probe97857%_
                               _%key97834%_)
                              (vector-set!
                               _%table97838%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97857%_ '1))
                               _%value97835%_))
                            (_%loop97854%_
                             (let ((_%next-probe97879%_
                                    (fx+ _%start97850%_
                                         _%i97859%_
                                         (fx* _%i97859%_ _%i97859%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97879%_ _%size97844%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97859%_ '1))
                             _%deleted97861%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97828%_
               _%key97829%_
               _%class-specializer-table-update!97830%_
               _%default97831%_)
        (if (let ((__tmp102663
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97828%_)))
                  (__tmp102661
                   (let ((__tmp102662
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97828%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102662 '4))))
              (declare (not safe))
              (##fx< __tmp102663 __tmp102661))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97828%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97828%_
         _%key97829%_
         _%class-specializer-table-update!97830%_
         _%default97831%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97778%_
               _%key97779%_
               _%class-specializer-table-update!97780%_
               _%default97781%_)
        (let ((_%table97784%_
               (let () (declare (not safe)) (&raw-table-table _%tab97778%_)))
              (_%seed97785%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97778%_))))
          (let* ((_%h97787%_
                  (fxxor (__class-specializer-hash-key _%key97779%_)
                         _%seed97785%_))
                 (_%size97790%_ (vector-length _%table97784%_))
                 (_%entries97793%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97790%_ '2)))
                 (_%start97796%_
                  (let ((__tmp102664
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97787%_ _%entries97793%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102664 '1))))
            (let _%loop97800%_ ((_%probe97803%_ _%start97796%_)
                                (_%i97805%_ '1)
                                (_%deleted97807%_ '#f))
              (let ((_%k97810%_ (vector-ref _%table97784%_ _%probe97803%_)))
                (if (eq? _%k97810%_ (macro-unused-obj))
                    (if _%deleted97807%_
                        (begin
                          (vector-set!
                           _%table97784%_
                           _%deleted97807%_
                           _%key97779%_)
                          (vector-set!
                           _%table97784%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97807%_ '1))
                           (_%class-specializer-table-update!97780%_
                            _%default97781%_))
                          ((lambda ()
                             (let ((__tmp102665
                                    (let ((__tmp102666
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97778%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102666 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97778%_
                                __tmp102665)))))
                        (begin
                          (vector-set!
                           _%table97784%_
                           _%probe97803%_
                           _%key97779%_)
                          (vector-set!
                           _%table97784%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97803%_ '1))
                           (_%class-specializer-table-update!97780%_
                            _%default97781%_))
                          ((lambda ()
                             (let ((__tmp102667
                                    (let ((__tmp102668
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97778%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102668 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97778%_ __tmp102667))
                             (let ((__tmp102669
                                    (let ((__tmp102670
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97778%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102670 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97778%_
                                __tmp102669))))))
                    (if (eq? _%k97810%_ (macro-deleted-obj))
                        (_%loop97800%_
                         (let ((_%next-probe97817%_
                                (fx+ _%start97796%_
                                     _%i97805%_
                                     (fx* _%i97805%_ _%i97805%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97817%_ _%size97790%_))
                         (let () (declare (not safe)) (##fx+ _%i97805%_ '1))
                         (let ((_%$e97820%_ _%deleted97807%_))
                           (if _%$e97820%_ _%$e97820%_ _%probe97803%_)))
                        (if (eq? _%key97779%_ _%k97810%_)
                            (let ()
                              (vector-set!
                               _%table97784%_
                               _%probe97803%_
                               _%key97779%_)
                              (vector-set!
                               _%table97784%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97803%_ '1))
                               (_%class-specializer-table-update!97780%_
                                (vector-ref
                                 _%table97784%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97803%_ '1))))))
                            (_%loop97800%_
                             (let ((_%next-probe97825%_
                                    (fx+ _%start97796%_
                                         _%i97805%_
                                         (fx* _%i97805%_ _%i97805%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97825%_ _%size97790%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97805%_ '1))
                             _%deleted97807%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97733%_ _%key97735%_)
        (let ((_%table97738%_
               (let () (declare (not safe)) (&raw-table-table _%tab97733%_)))
              (_%seed97740%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97733%_))))
          (let* ((_%h97743%_
                  (fxxor (__class-specializer-hash-key _%key97735%_)
                         _%seed97740%_))
                 (_%size97746%_ (vector-length _%table97738%_))
                 (_%entries97749%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97746%_ '2)))
                 (_%start97752%_
                  (let ((__tmp102671
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97743%_ _%entries97749%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102671 '1))))
            (let _%loop97756%_ ((_%probe97759%_ _%start97752%_)
                                (_%i97761%_ '1))
              (let ((_%k97764%_ (vector-ref _%table97738%_ _%probe97759%_)))
                (if (eq? _%k97764%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97764%_ (macro-deleted-obj))
                        (_%loop97756%_
                         (let ((_%next-probe97769%_
                                (fx+ _%start97752%_
                                     _%i97761%_
                                     (fx* _%i97761%_ _%i97761%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97769%_ _%size97746%_))
                         (let () (declare (not safe)) (##fx+ _%i97761%_ '1)))
                        (if (eq? _%key97735%_ _%k97764%_)
                            (let ()
                              (vector-set!
                               _%table97738%_
                               _%probe97759%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97738%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97759%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102672
                                        (let ((__tmp102673
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97733%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102673 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97733%_
                                    __tmp102672)))))
                            (_%loop97756%_
                             (let ((_%next-probe97775%_
                                    (fx+ _%start97752%_
                                         _%i97761%_
                                         (fx* _%i97761%_ _%i97761%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97775%_ _%size97746%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97761%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97719%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97719%_ 'class))
            (let ((_%klass97723%_ _%klass97719%_))
              (__specialize-class _%klass97723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass97719%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97701%_)
        (let* ((_%klass97704%_ _%klass97701%_)
               (_%$e97713%_ (__lookup-class-specializer _%klass97704%_)))
          (if _%$e97713%_
              _%$e97713%_
              (let ((_%method-table97717%_
                     (___specialize-class _%klass97704%_)))
                (__bind-class-specializer!
                 _%klass97704%_
                 _%method-table97717%_)
                _%method-table97717%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97691%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97695%_ ()
            (if (let ((__tmp102674
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102674 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97695%_)))))
        (let ((_%method-table97699%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97691%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97699%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97682%_ _%method-table97683%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97687%_ ()
            (if (let ((__tmp102675
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102675 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97687%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97682%_
         _%method-table97683%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97666%_
               _%method-table97667%_
               _%method97668%_
               _%proc97669%_)
        (let ((_%$e97671%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97667%_
                  _%method97668%_
                  '#f))))
          (if _%$e97671%_
              _%$e97671%_
              (let ((_%$e97674%_ (__lookup-method-specializer _%proc97669%_)))
                (if _%$e97674%_
                    ((lambda (_%specialize97677%_)
                       (let ((_%specialized-proc97679%_
                              (_%specialize97677%_
                               _%klass97666%_
                               _%method-table97667%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97667%_
                          _%method97668%_
                          _%specialized-proc97679%_)))
                     _%$e97674%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97667%_
                       _%method97668%_
                       _%proc97669%_))))))))
    (define ___specialize-class
      (lambda (_%klass97608%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97608%_ 'class))
            (if (__class-type-metaclass? _%klass97608%_)
                (let ((__method102523
                       (__method-ref _%klass97608%_ 'specialize-class)))
                  (if __method102523
                      (let ()
                        (declare (not safe))
                        (__method102523 _%klass97608%_))
                      (begin
                        (error '"Missing method"
                               _%klass97608%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102676
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97608%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102676))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97608%_)
                    (let ((_%method-table97614%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97616%_ ((_%rest97618%_
                                           (__class-precedence-list
                                            _%klass97608%_)))
                        (let* ((_%rest9761997627%_ _%rest97618%_)
                               (_%else9762197635%_
                                (lambda () _%method-table97614%_))
                               (_%K9762397654%_
                                (lambda (_%rest97638%_ _%xklass97639%_)
                                  (let ((_%xmethod-table9764097642%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97639%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9764097642%_
                                        (let* ((_%xmethod-table97645%_
                                                _%xmethod-table9764097642%_)
                                               (__tmp102677
                                                (lambda (_%g9764697649%_
                                                         _%g9764797651%_)
                                                  (__specialize-method
                                                   _%klass97608%_
                                                   _%method-table97614%_
                                                   _%g9764697649%_
                                                   _%g9764797651%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97645%_
                                           __tmp102677))
                                        '#f))
                                  (_%loop97616%_ _%rest97638%_))))
                          (if (pair? _%rest9761997627%_)
                              (let ((_%hd9762497657%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9761997627%_)))
                                    (_%tl9762597659%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9761997627%_))))
                                (let* ((_%xklass97662%_ _%hd9762497657%_)
                                       (_%rest97664%_ _%tl9762597659%_))
                                  (_%K9762397654%_
                                   _%rest97664%_
                                   _%xklass97662%_)))
                              (_%else9762197635%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97608%_))
                (__specialize-class (__shadow-class _%klass97608%_))
                (error '"bad class; cannot specialize" _%klass97608%_)))))
    (define seal-class!
      (lambda (_%klass97594%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97594%_ 'class))
            (let ((_%klass97598%_ _%klass97594%_))
              (__seal-class! _%klass97598%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass97594%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97577%_)
        (let ((_%klass97580%_ _%klass97577%_))
          (if (__class-type-sealed? _%klass97580%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97580%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97580%_))
                (if (__class-type-metaclass? _%klass97580%_)
                    (let ((__method102524
                           (__method-ref _%klass97580%_ 'seal-class!)))
                      (if __method102524
                          (let ()
                            (declare (not safe))
                            (__method102524 _%klass97580%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97580%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102678
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97580%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102678))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97580%_)
                        (let ((_%method-table97592%_
                               (__specialize-class _%klass97580%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97580%_
                           _%method-table97592%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97580%_))))))
    (define next-method
      (lambda (_%subklass97551%_ _%obj97552%_ _%id97553%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97551%_ 'class))
            (let ((_%subklass97557%_ _%subklass97551%_))
              (if (symbol? _%id97553%_)
                  (let ((_%id97567%_ _%id97553%_))
                    (__next-method _%subklass97557%_ _%obj97552%_ _%id97567%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97553%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass97551%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97488%_ _%obj97489%_ _%id97490%_)
        (let* ((_%subklass97493%_ _%subklass97488%_) (_%id97501%_ _%id97490%_))
          (letrec ((_%find-next-method97510%_
                    (lambda (_%klass97512%_)
                      (let _%lp97514%_ ((_%rest97516%_
                                         (class-precedence-list
                                          _%klass97512%_)))
                        (let* ((_%rest9751797525%_ _%rest97516%_)
                               (_%else9751997533%_ (lambda () '#f))
                               (_%K9752197539%_
                                (lambda (_%rest97536%_ _%klass97537%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97493%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97537%_)))
                                      (__mixin-find-method
                                       _%rest97536%_
                                       _%obj97489%_
                                       _%id97501%_)
                                      (_%lp97514%_ _%rest97536%_)))))
                          (if (pair? _%rest9751797525%_)
                              (let ((_%hd9752297542%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9751797525%_)))
                                    (_%tl9752397544%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9751797525%_))))
                                (let* ((_%klass97547%_ _%hd9752297542%_)
                                       (_%rest97549%_ _%tl9752397544%_))
                                  (_%K9752197539%_
                                   _%rest97549%_
                                   _%klass97547%_)))
                              (_%else9751997533%_)))))))
            (_%find-next-method97510%_ (class-of _%obj97489%_))))))
    (define call-next-method
      (lambda (_%subklass97461%_ _%obj97462%_ _%id97463%_ . _%args97464%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97461%_ 'class))
            (let ((_%subklass97468%_ _%subklass97461%_))
              (if (symbol? _%id97463%_)
                  (let ((_%id97478%_ _%id97463%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97468%_
                             _%obj97462%_
                             _%id97478%_
                             _%args97464%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass97461%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97432%_ _%obj97433%_ _%id97434%_ . _%args97435%_)
        (let* ((_%subklass97438%_ _%subklass97432%_)
               (_%id97446%_ _%id97434%_)
               (_%$e97455%_
                (__next-method _%subklass97438%_ _%obj97433%_ _%id97446%_)))
          (if _%$e97455%_
              ((lambda (_%methodf97458%_)
                 (apply _%methodf97458%_ _%obj97433%_ _%args97435%_))
               _%$e97455%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97433%_
                     'method:
                     _%id97446%_)))))
    (define write-style
      (lambda (_%we97430%_) (values (macro-writeenv-style _%we97430%_))))
    (define write-object
      (lambda (_%we97421%_ _%obj97422%_)
        (let ((_%$e97424%_ (__method-ref _%obj97422%_ ':wr)))
          (if _%$e97424%_
              ((lambda (_%method97427%_)
                 (_%method97427%_ _%obj97422%_ _%we97421%_))
               _%$e97424%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97421%_ _%obj97422%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97336%_)
        (letrec ((_%shadow-type-id97338%_
                  (lambda (_%type97419%_)
                    (let ((__tmp102679
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97419%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102679 '"::t"))))
                 (_%shadow-type-name97339%_
                  (lambda (_%type97417%_)
                    (let () (declare (not safe)) (##type-name _%type97417%_))))
                 (_%make-shadow-class97340%_
                  (lambda (_%type97409%_ _%precedence-list97410%_)
                    (let* ((_%super97412%_
                            (if (pair? _%precedence-list97410%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97410%_))
                                      '())
                                '()))
                           (_%klass97414%_
                            (make-class-type
                             (_%shadow-type-id97338%_ _%type97409%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97409%_))
                             _%super97412%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97409%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102680
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97409%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102680
                         _%klass97414%_))
                      _%klass97414%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97344%_ ()
              (if (let ((__tmp102681
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102681 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97344%_)))))
          (let ((_%$e97348%_
                 (let ((__tmp102682
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97336%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102682 '#f))))
            (if _%$e97348%_
                ((lambda (_%klass97351%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97351%_)
                 _%$e97348%_)
                (let _%loop97354%_ ((_%super97356%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97336%_)))
                                    (_%hierarchy97357%_ '()))
                  (if (not _%super97356%_)
                      (let _%loop97360%_ ((_%rest97362%_ _%hierarchy97357%_)
                                          (_%precedence-list97363%_ '()))
                        (let* ((_%rest9736497372%_ _%rest97362%_)
                               (_%else9736697382%_
                                (lambda ()
                                  (let ((_%klass97380%_
                                         (_%make-shadow-class97340%_
                                          _%type97336%_
                                          _%precedence-list97363%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97380%_)))
                               (_%K9736897396%_
                                (lambda (_%rest97385%_ _%type97386%_)
                                  (let ((_%$e97388%_
                                         (let ((__tmp102683
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97386%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102683
                                            '#f))))
                                    (if _%$e97388%_
                                        ((lambda (_%klass97391%_)
                                           (_%loop97360%_
                                            _%rest97385%_
                                            (cons _%klass97391%_
                                                  _%precedence-list97363%_)))
                                         _%$e97388%_)
                                        (let ((_%klass97394%_
                                               (_%make-shadow-class97340%_
                                                _%type97386%_
                                                _%precedence-list97363%_)))
                                          (_%loop97360%_
                                           _%rest97385%_
                                           (cons _%klass97394%_
                                                 _%precedence-list97363%_))))))))
                          (if (pair? _%rest9736497372%_)
                              (let ((_%hd9736997399%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9736497372%_)))
                                    (_%tl9737097401%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9736497372%_))))
                                (let* ((_%type97404%_ _%hd9736997399%_)
                                       (_%rest97406%_ _%tl9737097401%_))
                                  (_%K9736897396%_
                                   _%rest97406%_
                                   _%type97404%_)))
                              (_%else9736697382%_))))
                      (_%loop97354%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97356%_))
                       (cons _%super97356%_ _%hierarchy97357%_)))))))))
    (define __type
      (let* ((_%tb97325%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97327%_ _%tb97325%_))
        (if (eq? '2 _%$e97327%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97327%_)
                (let ((_%flonum-self-tagging-tags97330%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97331%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97333%_ _%flonum-self-tagging-tags97330%_))
                    (if (eq? '0 _%$e97333%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97331%_ '2))
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
                        (if (eq? '1 _%$e97333%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97331%_ '2))
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
                            (if (eq? '2 _%$e97333%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97333%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97333%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97330%_))))))))
                (error '"unexpected tag width" _%tb97325%_)))))
    (define __class
      (let* ((_%len97278%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97280%_
              (let () (declare (not safe)) (##make-vector _%len97278%_ '#f))))
        (let _%loop97283%_ ((_%i97285%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97285%_ _%len97278%_))
              (let* ((_%t97287%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97285%_)))
                     (_%f97322%_
                      (if (eq? _%t97287%_ 'undefined)
                          (lambda (_%obj97290%_)
                            (error '"object type is undefined" _%obj97290%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97287%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97293%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97287%_))
                              (if (eq? _%t97287%_ 'subtyped)
                                  (lambda (_%obj97297%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97300%_
                                           (##subtype _%obj97297%_)))
                                      (if (##fx= _%st97300%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97303%_
                                                 (##structure-type
                                                  _%obj97297%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97303%_
                                                 'class)
                                                _%klass97303%_
                                                (__shadow-class
                                                 _%klass97303%_)))
                                          (if (##fx= _%st97300%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj97297%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97306%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97300%_)))
                                                (if _%$e97306%_
                                                    (__system-class
                                                     _%$e97306%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97300%_
                                                           'object:
                                                           _%obj97297%_)))))))
                                  (if (eq? _%t97287%_ 'special)
                                      (lambda (_%obj97311%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97311%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97311%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97311%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97311%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97311%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97287%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97280%_ _%i97285%_ _%f97322%_))
                (_%loop97283%_
                 (let () (declare (not safe)) (##fx+ _%i97285%_ '1))))
              _%cv97280%_))))
    (define type-of
      (lambda (_%obj97274%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97274%_)))))
    (define class-of
      (lambda (_%obj97265%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97269%_ (##type _%obj97265%_))
                 (_%f97271%_ (##vector-ref __class _%t97269%_)))
            (_%f97271%_ _%obj97265%_)))))
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
      (lambda (_%id97259%_)
        (let ((_%$e97261%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97259%_ '#f))))
          (if _%$e97261%_
              _%$e97261%_
              (error '"unknown system class" _%id97259%_)))))
    (define __make-system-class
      (lambda (_%id97254%_ _%super97255%_)
        (let ((_%klass97257%_
               (make-class-type
                _%id97254%_
                _%id97254%_
                _%super97255%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97254%_ _%klass97257%_))
          _%klass97257%_)))))
