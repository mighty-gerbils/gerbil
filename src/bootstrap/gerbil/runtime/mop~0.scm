(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1734225192)
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
      (let ((_%flags101059%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101060%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101061%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101059%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101061%_
           _%properties101060%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101035%_
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
             (_%slot-vector101037%_ (list->vector (cons '#f _%slots101035%_)))
             (_%slot-table101044%_
              (let ((_%slot-table101039%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102502
                       (lambda (_%slot101041%_ _%field101042%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101039%_
                            _%slot101041%_
                            _%field101042%_))
                         (let ((__tmp102503
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101041%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101039%_
                            __tmp102503
                            _%field101042%_))))
                      (__tmp102500
                       (let ((__tmp102501
                              (let ()
                                (declare (not safe))
                                (##length _%slots101035%_))))
                         (declare (not safe))
                         (##iota __tmp102501 '1))))
                  (declare (not safe))
                  (##for-each __tmp102502 _%slots101035%_ __tmp102500))
                _%slot-table101039%_))
             (_%flags101046%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101052%_
              (list->vector
               (let ((__tmp102504
                      (map (lambda (_%g101047101049%_)
                             (list _%g101047101049%_ '5 '#f))
                           (drop _%slots101035%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102504))))
             (_%properties101054%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101035%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101056%_
              (let ((__tmp102505 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101046%_
                 ##type-type
                 _%fields101052%_
                 __tmp102505
                 _%slot-vector101037%_
                 _%slot-table101044%_
                 _%properties101054%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101056%_ _%t101056%_))
        _%t101056%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101031%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101032%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101033%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102506 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101031%_
           '#f
           '#()
           __tmp102506
           '#(#f)
           _%slot-table101033%_
           _%properties101032%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101029%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101029%_ 'class))))
    (define class-type=?
      (lambda (_%x101004%_ _%y101005%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x101004%_ 'class))
            (let ((_%x101009%_ _%x101004%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y101005%_ 'class))
                  (let ((_%y101019%_ _%y101005%_))
                    (__class-type=? _%x101009%_ _%y101019%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y101005%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x101004%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x100983%_ _%y100984%_)
        (let* ((_%x100987%_ _%x100983%_) (_%y100995%_ _%y100984%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x100987%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y100995%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100969%_)
        (if (let () (declare (not safe)) (##type? _%type100969%_))
            (let ((_%type100973%_ _%type100969%_))
              (__type-opaque? _%type100973%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100969%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100957%_)
        (let* ((_%type100960%_ _%type100957%_)
               (__tmp102507
                (let ((__tmp102508
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100960%_))))
                  (declare (not safe))
                  (##fxand __tmp102508 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102507 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100943%_)
        (if (let () (declare (not safe)) (##type? _%type100943%_))
            (let ((_%type100947%_ _%type100943%_))
              (__type-extensible? _%type100947%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100943%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100931%_)
        (let* ((_%type100934%_ _%type100931%_)
               (__tmp102509
                (let ((__tmp102510
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100934%_))))
                  (declare (not safe))
                  (##fxand __tmp102510 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102509 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100917%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100917%_ 'class))
            (let ((_%type100921%_ _%type100917%_))
              (__class-type-final? _%type100921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100917%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100905%_)
        (let* ((_%type100908%_ _%type100905%_)
               (__tmp102511
                (let ((__tmp102512
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100908%_))))
                  (declare (not safe))
                  (##fxand __tmp102512 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102511 '0))))
    (define class-type-struct?
      (lambda (_%klass100891%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100891%_ 'class))
            (let ((_%klass100895%_ _%klass100891%_))
              (__class-type-struct? _%klass100895%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100891%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100879%_)
        (let* ((_%klass100882%_ _%klass100879%_)
               (__tmp102513
                (let ((__tmp102514
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100882%_))))
                  (declare (not safe))
                  (##fxand __tmp102514 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102513 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100865%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100865%_ 'class))
            (let ((_%klass100869%_ _%klass100865%_))
              (__class-type-sealed? _%klass100869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100865%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100853%_)
        (let* ((_%klass100856%_ _%klass100853%_)
               (__tmp102515
                (let ((__tmp102516
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100856%_))))
                  (declare (not safe))
                  (##fxand __tmp102516 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102515 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100839%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100839%_ 'class))
            (let ((_%klass100843%_ _%klass100839%_))
              (__class-type-metaclass? _%klass100843%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100839%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100827%_)
        (let* ((_%klass100830%_ _%klass100827%_)
               (__tmp102517
                (let ((__tmp102518
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100830%_))))
                  (declare (not safe))
                  (##fxand __tmp102518 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102517 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100813%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100813%_ 'class))
            (let ((_%klass100817%_ _%klass100813%_))
              (__class-type-system? _%klass100817%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100813%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100801%_)
        (let* ((_%klass100804%_ _%klass100801%_)
               (__tmp102519
                (let ((__tmp102520
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100804%_))))
                  (declare (not safe))
                  (##fxand __tmp102520 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102519 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100683%_
               _%type-name100684%_
               _%type-super100685%_
               _%precedence-list100686%_
               _%slot-vector100687%_
               _%properties100688%_
               _%constructor100689%_
               _%slot-table100690%_
               _%methods100691%_)
        (letrec ((_%make-props!100694%_
                  (lambda (_%key100770%_)
                    (letrec* ((_%ht100772%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100773%_
                               (lambda (_%ht100794%_ _%slots100795%_)
                                 (for-each
                                  (lambda (_%g100796100798%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100794%_
                                       _%g100796100798%_
                                       '#t)))
                                  _%slots100795%_)))
                              (_%put-alist!100774%_
                               (lambda (_%ht100783%_
                                        _%key100784%_
                                        _%alist100785%_)
                                 (let ((_%$e100787%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100784%_
                                           _%alist100785%_))))
                                   (if _%$e100787%_
                                       ((lambda (_%g100789100791%_)
                                          (_%put-slots!100773%_
                                           _%ht100783%_
                                           _%g100789100791%_))
                                        _%$e100787%_)
                                       '#!void)))))
                      (_%put-alist!100774%_
                       _%ht100772%_
                       _%key100770%_
                       _%properties100688%_)
                      (for-each
                       (lambda (_%mixin100776%_)
                         (let ((_%alist100778%_
                                (##structure-ref
                                 _%mixin100776%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100778%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100770%_
                                           _%alist100778%_))))
                               (_%put-slots!100773%_
                                _%ht100772%_
                                (class-type-slot-list _%mixin100776%_))
                               (_%put-alist!100774%_
                                _%ht100772%_
                                _%key100770%_
                                _%alist100778%_))))
                       _%precedence-list100686%_)
                      _%ht100772%_))))
          (let* ((_%transparent?100696%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100688%_)))
                 (_%all-slots-printable?100701%_
                  (let ((_%$e100698%_ _%transparent?100696%_))
                    (if _%$e100698%_
                        _%$e100698%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100688%_))))))
                 (_%printable100703%_
                  (if (not _%all-slots-printable?100701%_)
                      (_%make-props!100694%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100708%_
                  (let ((_%$e100705%_ _%transparent?100696%_))
                    (if _%$e100705%_
                        _%$e100705%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100688%_))))))
                 (_%equalable100710%_
                  (if (not _%all-slots-equalable?100708%_)
                      (_%make-props!100694%_ 'equal:)
                      '#f))
                 (_%first-new-field100712%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100685%_ 'class))
                      (let ((__tmp102521
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100685%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102521))
                      '1))
                 (_%field-info-length100714%_
                  (let ((__tmp102522
                         (let ((__tmp102523
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100687%_))))
                           (declare (not safe))
                           (##fx- __tmp102523 _%first-new-field100712%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102522)))
                 (_%field-info100716%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100714%_ '#f)))
                 (_%struct?100718%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100688%_)))
                 (_%final?100720%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100688%_)))
                 (_%metaclass100728%_
                  (let ((_%metaclass100721100723%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100688%_))))
                    (if _%metaclass100721100723%_
                        (let ((_%metaclass100726%_ _%metaclass100721100723%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100726%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100683%_
                                     'metaclass:
                                     _%metaclass100726%_))
                          _%metaclass100726%_)
                        '#f)))
                 (_%system?100730%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100688%_)))
                 (_%opaque?100738%_
                  (if (or _%transparent?100696%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100688%_)))
                      '#f
                      (let ((_%$e100735%_ (not _%type-super100685%_)))
                        (if _%$e100735%_
                            _%$e100735%_
                            (__type-opaque? _%type-super100685%_)))))
                 (_%type-flags100740%_
                  (let ((__tmp102528
                         (if _%final?100720%_ '0 type-flag-extensible))
                        (__tmp102527
                         (if _%opaque?100738%_ type-flag-opaque '0))
                        (__tmp102526
                         (if _%struct?100718%_ class-type-flag-struct '0))
                        (__tmp102525
                         (if _%metaclass100728%_ class-type-flag-metaclass '0))
                        (__tmp102524
                         (if _%system?100730%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102528
                             __tmp102527
                             __tmp102526
                             __tmp102525
                             __tmp102524)))
                 (_%precedence-list100748%_
                  (let ((_%$e100742%_ (memq t::t _%precedence-list100686%_)))
                    (if _%$e100742%_
                        ((lambda (_%tail100745%_)
                           (if (null? (cdr _%tail100745%_))
                               _%precedence-list100686%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100686%_)))
                         _%$e100742%_)
                        (let ((__tmp102529 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100686%_ __tmp102529))))))
            (let _%loop100751%_ ((_%i100753%_ _%first-new-field100712%_)
                                 (_%j100754%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100754%_ _%field-info-length100714%_))
                  (let* ((_%slot100756%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100687%_ _%i100753%_)))
                         (_%flags100764%_
                          (if _%transparent?100696%_
                              '0
                              (let ((__tmp102531
                                     (if (or _%all-slots-printable?100701%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100703%_
                                                _%slot100756%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102530
                                     (if (or _%all-slots-equalable?100708%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100710%_
                                                _%slot100756%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102531 __tmp102530)))))
                    (vector-set!
                     _%field-info100716%_
                     _%j100754%_
                     _%slot100756%_)
                    (vector-set!
                     _%field-info100716%_
                     (let () (declare (not safe)) (##fx+ _%j100754%_ '1))
                     _%flags100764%_)
                    (_%loop100751%_
                     (let () (declare (not safe)) (##fx+ _%i100753%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100754%_ '3))))
                  '#!void))
            (if _%metaclass100728%_
                (let ((_%val100767%_
                       (make-instance
                        _%metaclass100728%_
                        _%type-id100683%_
                        _%type-name100684%_
                        _%type-flags100740%_
                        _%type-super100685%_
                        _%field-info100716%_
                        _%precedence-list100748%_
                        _%slot-vector100687%_
                        _%slot-table100690%_
                        _%properties100688%_
                        _%constructor100689%_
                        _%methods100691%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100767%_ 'class))
                      _%val100767%_
                      (error '"bad cast" class::t _%val100767%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100683%_
                   _%type-name100684%_
                   _%type-flags100740%_
                   _%type-super100685%_
                   _%field-info100716%_
                   _%precedence-list100748%_
                   _%slot-vector100687%_
                   _%slot-table100690%_
                   _%properties100688%_
                   _%constructor100689%_
                   _%methods100691%_)))))))
    (define class-type-id
      (lambda (_%klass100681%_)
        (##structure-ref _%klass100681%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100679%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100679%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100676%_ _%val100677%_)
        (##structure-set! _%klass100676%_ _%val100677%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100671%_ _%val100673%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100671%_
           _%val100673%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100669%_)
        (##structure-ref _%klass100669%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100667%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100667%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100664%_ _%val100665%_)
        (##structure-set! _%klass100664%_ _%val100665%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100659%_ _%val100661%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100659%_
           _%val100661%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100657%_)
        (##structure-ref _%klass100657%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100655%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100655%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100652%_ _%val100653%_)
        (##structure-set! _%klass100652%_ _%val100653%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100647%_ _%val100649%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100647%_
           _%val100649%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100645%_)
        (##structure-ref _%klass100645%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100643%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100643%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100640%_ _%val100641%_)
        (##structure-set! _%klass100640%_ _%val100641%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100635%_ _%val100637%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100635%_
           _%val100637%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100633%_)
        (##structure-ref _%klass100633%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100631%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100631%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100628%_ _%val100629%_)
        (##structure-set! _%klass100628%_ _%val100629%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100623%_ _%val100625%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100623%_
           _%val100625%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100621%_)
        (##structure-ref _%klass100621%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100619%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100619%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100616%_ _%val100617%_)
        (##structure-set!
         _%klass100616%_
         _%val100617%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100611%_ _%val100613%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100611%_
           _%val100613%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100609%_)
        (##structure-ref _%klass100609%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100607%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100607%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100604%_ _%val100605%_)
        (##structure-set!
         _%klass100604%_
         _%val100605%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100599%_ _%val100601%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100599%_
           _%val100601%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100597%_)
        (##structure-ref _%klass100597%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100595%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100595%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100592%_ _%val100593%_)
        (##structure-set!
         _%klass100592%_
         _%val100593%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100587%_ _%val100589%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100587%_
           _%val100589%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100585%_)
        (##structure-ref _%klass100585%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100583%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100583%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100580%_ _%val100581%_)
        (##structure-set!
         _%klass100580%_
         _%val100581%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100575%_ _%val100577%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100575%_
           _%val100577%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100573%_)
        (##structure-ref _%klass100573%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100571%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100571%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100568%_ _%val100569%_)
        (##structure-set!
         _%klass100568%_
         _%val100569%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100563%_ _%val100565%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100563%_
           _%val100565%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100561%_)
        (##structure-ref _%klass100561%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100559%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100559%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100556%_ _%val100557%_)
        (##structure-set!
         _%klass100556%_
         _%val100557%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100551%_ _%val100553%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100551%_
           _%val100553%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100537%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100537%_ 'class))
            (let ((_%klass100541%_ _%klass100537%_))
              (__class-type-slot-list _%klass100541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100537%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100525%_)
        (let ((_%klass100528%_ _%klass100525%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100528%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100511%_ 'class))
            (let ((_%klass100515%_ _%klass100511%_))
              (__class-type-field-count _%klass100515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100511%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100499%_)
        (let* ((_%klass100502%_ _%klass100499%_)
               (__tmp102532
                (let ((__tmp102533
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100502%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102533))))
          (declare (not safe))
          (##fx- __tmp102532 '1))))
    (define class-type-seal!
      (lambda (_%klass100485%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100485%_ 'class))
            (let ((_%klass100489%_ _%klass100485%_))
              (__class-type-seal! _%klass100489%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100485%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100473%_)
        (let ((_%klass100476%_ _%klass100473%_))
          (let ((__tmp102534
                 (let ((__tmp102535
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100476%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102535))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100476%_
             __tmp102534
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100448%_ _%maybe-super-struct100449%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100448%_ 'class))
            (let ((_%maybe-sub-struct100453%_ _%maybe-sub-struct100448%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100449%_
                     'class))
                  (let ((_%maybe-super-struct100463%_
                         _%maybe-super-struct100449%_))
                    (__substruct?
                     _%maybe-sub-struct100453%_
                     _%maybe-super-struct100463%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100449%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100448%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100417%_ _%maybe-super-struct100418%_)
        (let* ((_%maybe-sub-struct100421%_ _%maybe-sub-struct100417%_)
               (_%maybe-super-struct100429%_ _%maybe-super-struct100418%_)
               (_%maybe-super-struct-id100438%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100429%_))))
          (let _%lp100440%_ ((_%super-struct100442%_
                              _%maybe-sub-struct100421%_))
            (if (not _%super-struct100442%_)
                '#f
                (if (eq? _%maybe-super-struct-id100438%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100442%_)))
                    '#t
                    (_%lp100440%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100442%_)))))))))
    (define base-struct/1
      (lambda (_%klass100412%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100412%_ 'class))
            (if (__class-type-struct? _%klass100412%_)
                _%klass100412%_
                (let () (declare (not safe)) (##type-super _%klass100412%_)))
            (if (not _%klass100412%_)
                '#f
                (error '"not a class or false" _%klass100412%_)))))
    (define base-struct/2
      (lambda (_%klass1100397%_ _%klass2100398%_)
        (let ((_%s1100400%_ (base-struct/1 _%klass1100397%_))
              (_%s2100401%_ (base-struct/1 _%klass2100398%_)))
          (if (or (not _%s1100400%_)
                  (and _%s2100401%_ (substruct? _%s1100400%_ _%s2100401%_)))
              _%s2100401%_
              (if (or (not _%s2100401%_)
                      (and _%s1100400%_
                           (substruct? _%s2100401%_ _%s1100400%_)))
                  _%s1100400%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100397%_
                         _%klass2100398%_
                         _%s1100400%_
                         _%s2100401%_))))))
    (define base-struct/list
      (lambda (_%all-supers100281%_)
        (let* ((_%all-supers100282100307%_ _%all-supers100281%_)
               (_%E100287100311%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100282100307%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100305100394%_ (lambda () '#f))
                (_%K100302100380%_
                 (lambda (_%x100378%_) (base-struct/1 _%x100378%_)))
                (_%K100297100357%_
                 (lambda (_%y100354%_ _%x100355%_)
                   (base-struct/2 _%x100355%_ _%y100354%_)))
                (_%K100288100318%_
                 (lambda (_%y100315%_ _%x100316%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100316%_ _%y100315%_)))))
            (let* ((_%__match102494102495%_
                    (lambda (_%hd100289100321%_ _%tl100290100323%_)
                      (let ((_%x100326%_ _%hd100289100321%_))
                        (letrec ((_%splice-rest100292100328%_
                                  (lambda (_%rest100296100335%_ _%y100337%_)
                                    (if (null? _%rest100296100335%_)
                                        (_%K100288100318%_
                                         _%y100337%_
                                         _%x100326%_)
                                        (_%E100287100311%_))))
                                 (_%splice-try100294100330%_
                                  (lambda (_%hd100295100339%_
                                           _%rest100296100341%_
                                           _%y100291100342%_)
                                    (let ((_%y100345%_ _%hd100295100339%_))
                                      (_%splice-loop100293100332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100296100341%_))
                                       (cons _%y100345%_ _%y100291100342%_)))))
                                 (_%splice-loop100293100332%_
                                  (lambda (_%rest100296100347%_
                                           _%y100291100348%_)
                                    (if (pair? _%rest100296100347%_)
                                        (_%splice-try100294100330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100296100347%_))
                                         _%rest100296100347%_
                                         _%y100291100348%_)
                                        (_%splice-rest100292100328%_
                                         _%rest100296100347%_
                                         (reverse _%y100291100348%_))))))
                          (_%splice-loop100293100332%_
                           _%tl100290100323%_
                           '())))))
                   (_%try-match100284100390%_
                    (lambda ()
                      (if (pair? _%all-supers100282100307%_)
                          (let ((_%tl100304100385%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100282100307%_)))
                                (_%hd100303100383%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100282100307%_))))
                            (if (null? _%tl100304100385%_)
                                (let ((_%x100388%_ _%hd100303100383%_))
                                  (base-struct/1 _%x100388%_))
                                (if (pair? _%tl100304100385%_)
                                    (let ((_%tl100301100369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100304100385%_)))
                                          (_%hd100300100367%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100304100385%_))))
                                      (if (null? _%tl100301100369%_)
                                          (let ((_%x100365%_
                                                 _%hd100303100383%_)
                                                (_%y100372%_
                                                 _%hd100300100367%_))
                                            (_%K100297100357%_
                                             _%y100372%_
                                             _%x100365%_))
                                          (_%__match102494102495%_
                                           _%hd100303100383%_
                                           _%tl100304100385%_)))
                                    (_%__match102494102495%_
                                     _%hd100303100383%_
                                     _%tl100304100385%_))))
                          (_%E100287100311%_)))))
              (if (null? _%all-supers100282100307%_)
                  (_%K100305100394%_)
                  (_%try-match100284100390%_)))))))
    (define base-struct
      (lambda _%all-supers100279%_ (base-struct/list _%all-supers100279%_)))
    (define find-super-constructor
      (lambda (_%super100230%_)
        (let _%lp100232%_ ((_%rest100234%_ _%super100230%_)
                           (_%constructor100235%_ '#f))
          (let* ((_%rest100236100244%_ _%rest100234%_)
                 (_%else100238100252%_ (lambda () _%constructor100235%_))
                 (_%K100240100267%_
                  (lambda (_%rest100255%_ _%hd100256%_)
                    (let ((_%$e100258%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100256%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100258%_
                          ((lambda (_%xconstructor100261%_)
                             (if (or (not _%constructor100235%_)
                                     (eq? _%constructor100235%_
                                          _%xconstructor100261%_))
                                 (_%lp100232%_
                                  _%rest100255%_
                                  _%xconstructor100261%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100235%_
                                        _%xconstructor100261%_)))
                           _%$e100258%_)
                          (_%lp100232%_
                           _%rest100255%_
                           _%constructor100235%_))))))
            (if (pair? _%rest100236100244%_)
                (let ((_%hd100241100270%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100236100244%_)))
                      (_%tl100242100272%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100236100244%_))))
                  (let* ((_%hd100275%_ _%hd100241100270%_)
                         (_%rest100277%_ _%tl100242100272%_))
                    (_%K100240100267%_ _%rest100277%_ _%hd100275%_)))
                (_%else100238100252%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100206%_ _%direct-slots100207%_)
        (let* ((_%next-slot100209%_ '1)
               (_%slot-table100211%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100213%_ '(__class))
               (_%process-slot100217%_
                (lambda (_%slot100215%_)
                  (if (symbol? _%slot100215%_)
                      '#!void
                      (error '"invalid slot name" _%slot100215%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100211%_
                              _%slot100215%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100211%_
                           _%slot100215%_
                           _%next-slot100209%_))
                        (let ((__tmp102536
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100215%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100211%_
                           __tmp102536
                           _%next-slot100209%_))
                        (set! _%r-slots100213%_
                              (cons _%slot100215%_ _%r-slots100213%_))
                        (set! _%next-slot100209%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100209%_ '1))))
                      '#!void)))
               (_%process-slots100223%_
                (lambda (_%g100218100220%_)
                  (for-each _%process-slot100217%_ _%g100218100220%_))))
          (let ((__tmp102538
                 (lambda (_%mixin100226%_)
                   (_%process-slots100223%_
                    (let ((__tmp102539
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100226%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102539 '())))))
                (__tmp102537 (reverse _%class-precedence-list100206%_)))
            (declare (not safe))
            (##for-each __tmp102538 __tmp102537))
          (_%process-slots100223%_ _%direct-slots100207%_)
          (let ((_%slot-vector100228%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100213%_)))))
            (values _%slot-vector100228%_ _%slot-table100211%_)))))
    (define make-class-type
      (lambda (_%id100131%_
               _%name100132%_
               _%direct-supers100133%_
               _%direct-slots100134%_
               _%properties100135%_
               _%constructor100136%_)
        (if (symbol? _%id100131%_)
            (let ((_%id100140%_ _%id100131%_))
              (if (symbol? _%name100132%_)
                  (let ((_%name100150%_ _%name100132%_))
                    (if (list? _%direct-supers100133%_)
                        (let ((_%direct-supers100160%_
                               _%direct-supers100133%_))
                          (if (list? _%direct-slots100134%_)
                              (let ((_%direct-slots100170%_
                                     _%direct-slots100134%_))
                                (if (list? _%properties100135%_)
                                    (let ((_%properties100180%_
                                           _%properties100135%_))
                                      (if ((lambda (_%$obj100189%_)
                                             (or (not _%$obj100189%_)
                                                 (symbol? _%$obj100189%_)))
                                           _%constructor100136%_)
                                          (let ((_%constructor100196%_
                                                 _%constructor100136%_))
                                            (__make-class-type
                                             _%id100140%_
                                             _%name100150%_
                                             _%direct-supers100160%_
                                             _%direct-slots100170%_
                                             _%properties100180%_
                                             _%constructor100196%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100136%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100135%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100134%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100133%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100132%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100131%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id100000%_
               _%name100001%_
               _%direct-supers100002%_
               _%direct-slots100003%_
               _%properties100004%_
               _%constructor100005%_)
        (let* ((_%id100008%_ _%id100000%_)
               (_%name100016%_ _%name100001%_)
               (_%direct-supers100024%_ _%direct-supers100002%_)
               (_%direct-slots100032%_ _%direct-slots100003%_)
               (_%properties100040%_ _%properties100004%_)
               (_%constructor100048%_ _%constructor100005%_))
          (let ((_%$e100060%_
                 (let ((__tmp102540
                        (lambda (_%$obj100057%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100057%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102540 _%direct-supers100024%_))))
            (if _%$e100060%_
                ((lambda (_%g100062100064%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100062100064%_))
                 _%$e100060%_)
                (let ((_%$e100067%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100024%_))))
                  (if _%$e100067%_
                      ((lambda (_%g100069100071%_)
                         (error '"Cannot extend final class"
                                _%g100069100071%_))
                       _%$e100067%_)
                      '#!void))))
          (let ((_g102541_ (compute-precedence-list _%direct-supers100024%_)))
            (begin
              (let ((_g102542_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102541_)
                           (##values-length _g102541_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102542_ 2)))
                    (error "Context expects 2 values" _g102542_)))
              (let ((_%precedence-list100074%_
                     (let () (declare (not safe)) (##values-ref _g102541_ 0)))
                    (_%struct-super100075%_
                     (let () (declare (not safe)) (##values-ref _g102541_ 1))))
                (let ((_g102543_
                       (compute-class-slots
                        _%precedence-list100074%_
                        _%direct-slots100032%_)))
                  (begin
                    (let ((_g102544_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102543_)
                                 (##values-length _g102543_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102544_ 2)))
                          (error "Context expects 2 values" _g102544_)))
                    (let ((_%slot-vector100077%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102543_ 0)))
                          (_%slot-table100078%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102543_ 1))))
                      (let* ((_%properties100080%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100032%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100024%_)
                                          _%properties100040%_)))
                             (_%constructor*100085%_
                              (let ((_%$e100082%_ _%constructor100048%_))
                                (if _%$e100082%_
                                    _%$e100082%_
                                    (find-super-constructor
                                     _%direct-supers100024%_))))
                             (_%precedence-list100128%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100080%_))
                                      (memq object::t
                                            _%precedence-list100074%_))
                                  _%precedence-list100074%_
                                  (let _%loop100090%_ ((_%tail100092%_
                                                        _%precedence-list100074%_)
                                                       (_%head100093%_ '()))
                                    (let* ((_%tail100094100102%_
                                            _%tail100092%_)
                                           (_%else100096100110%_
                                            (lambda ()
                                              (let ((__tmp102545
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102545
                                                 _%head100093%_))))
                                           (_%K100098100116%_
                                            (lambda (_%rest100113%_
                                                     _%hd100114%_)
                                              (if (eq? _%hd100114%_ t::t)
                                                  (let ((__tmp102546
                                                         (cons object::t
                                                               _%tail100092%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102546
                                                     _%head100093%_))
                                                  (_%loop100090%_
                                                   _%rest100113%_
                                                   (cons _%hd100114%_
                                                         _%head100093%_))))))
                                      (if (pair? _%tail100094100102%_)
                                          (let ((_%hd100099100119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100094100102%_)))
                                                (_%tl100100100121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100094100102%_))))
                                            (let* ((_%hd100124%_
                                                    _%hd100099100119%_)
                                                   (_%rest100126%_
                                                    _%tl100100100121%_))
                                              (_%K100098100116%_
                                               _%rest100126%_
                                               _%hd100124%_)))
                                          (_%else100096100110%_)))))))
                        (make-class-type-descriptor
                         _%id100008%_
                         _%name100016%_
                         _%struct-super100075%_
                         _%precedence-list100128%_
                         _%slot-vector100077%_
                         _%properties100080%_
                         _%constructor*100085%_
                         _%slot-table100078%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass99986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99986%_ 'class))
            (let ((_%klass99990%_ _%klass99986%_))
              (__class-precedence-list _%klass99990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass99986%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99974%_)
        (let ((_%klass99977%_ _%klass99974%_))
          (cons _%klass99977%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99977%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99971%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99971%_))))
    (define make-class-predicate
      (lambda (_%klass99957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99957%_ 'class))
            (let ((_%klass99961%_ _%klass99957%_))
              (__make-class-predicate _%klass99961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99957%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99928%_)
        (let* ((_%klass99931%_ _%klass99928%_)
               (_%tid99940%_
                (let () (declare (not safe)) (##type-id _%klass99931%_))))
          (if (__class-type-final? _%klass99931%_)
              (lambda (_%g9994299944%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9994299944%_
                   _%tid99940%_)))
              (if (__class-type-struct? _%klass99931%_)
                  (lambda (_%g9994799949%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9994799949%_ _%tid99940%_)))
                  (lambda (_%g9995299954%_)
                    (__class-instance? _%klass99931%_ _%g9995299954%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99903%_ _%slot99904%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99903%_ 'class))
            (let ((_%klass99908%_ _%klass99903%_))
              (if (symbol? _%slot99904%_)
                  (let ((_%slot99918%_ _%slot99904%_))
                    (__make-class-slot-accessor _%klass99908%_ _%slot99918%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99904%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99903%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99871%_ _%slot99872%_)
        (let* ((_%klass99875%_ _%klass99871%_)
               (_%slot99883%_ _%slot99872%_)
               (_%field99892%_
                (let ((__tmp102547
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99875%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102547 _%slot99883%_ '#f))))
          (if (not _%field99892%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99875%_
                       'slot:
                       _%slot99883%_)
                '#!void)
              (if (__class-type-final? _%klass99875%_)
                  (make-final-slot-accessor
                   _%klass99875%_
                   _%slot99883%_
                   _%field99892%_)
                  (if (__class-type-struct? _%klass99875%_)
                      (make-struct-slot-accessor
                       _%klass99875%_
                       _%slot99883%_
                       _%field99892%_)
                      (if (let ((_%strukt99898%_
                                 (base-struct/1 _%klass99875%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99898%_
                                    'class))
                                 (let ((__tmp102548
                                        (let ((__tmp102549
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99898%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102549))))
                                   (declare (not safe))
                                   (##fx< _%field99892%_ __tmp102548))))
                          (make-struct-subclass-slot-accessor
                           _%klass99875%_
                           _%slot99883%_
                           _%field99892%_)
                          (make-class-cached-slot-accessor
                           _%klass99875%_
                           _%slot99883%_
                           _%field99892%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99846%_ _%slot99847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99846%_ 'class))
            (let ((_%klass99851%_ _%klass99846%_))
              (if (symbol? _%slot99847%_)
                  (let ((_%slot99861%_ _%slot99847%_))
                    (__make-class-slot-mutator _%klass99851%_ _%slot99861%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99846%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99814%_ _%slot99815%_)
        (let* ((_%klass99818%_ _%klass99814%_)
               (_%slot99826%_ _%slot99815%_)
               (_%field99835%_
                (let ((__tmp102550
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99818%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102550 _%slot99826%_ '#f))))
          (if (not _%field99835%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99818%_
                       'slot:
                       _%slot99826%_)
                '#!void)
              (if (__class-type-final? _%klass99818%_)
                  (make-final-slot-mutator
                   _%klass99818%_
                   _%slot99826%_
                   _%field99835%_)
                  (if (__class-type-struct? _%klass99818%_)
                      (make-struct-slot-mutator
                       _%klass99818%_
                       _%slot99826%_
                       _%field99835%_)
                      (if (let ((_%strukt99841%_
                                 (base-struct/1 _%klass99818%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99841%_
                                    'class))
                                 (let ((__tmp102551
                                        (let ((__tmp102552
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99841%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102552))))
                                   (declare (not safe))
                                   (##fx< _%field99835%_ __tmp102551))))
                          (make-struct-subclass-slot-mutator
                           _%klass99818%_
                           _%slot99826%_
                           _%field99835%_)
                          (make-class-cached-slot-mutator
                           _%klass99818%_
                           _%slot99826%_
                           _%field99835%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99789%_ _%slot99790%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99789%_ 'class))
            (let ((_%klass99794%_ _%klass99789%_))
              (if (symbol? _%slot99790%_)
                  (let ((_%slot99804%_ _%slot99790%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99794%_
                     _%slot99804%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99790%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99789%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99757%_ _%slot99758%_)
        (let* ((_%klass99761%_ _%klass99757%_)
               (_%slot99769%_ _%slot99758%_)
               (_%field99778%_
                (let ((__tmp102553
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99761%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102553 _%slot99769%_ '#f))))
          (if (not _%field99778%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99761%_
                       'slot:
                       _%slot99769%_)
                '#!void)
              (if (__class-type-final? _%klass99761%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99761%_
                   _%slot99769%_
                   _%field99778%_)
                  (if (__class-type-struct? _%klass99761%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99761%_
                       _%slot99769%_
                       _%field99778%_)
                      (if (let ((_%strukt99784%_
                                 (base-struct/1 _%klass99761%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99784%_
                                    'class))
                                 (let ((__tmp102554
                                        (let ((__tmp102555
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99784%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102555))))
                                   (declare (not safe))
                                   (##fx< _%field99778%_ __tmp102554))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99761%_
                           _%slot99769%_
                           _%field99778%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99761%_
                           _%slot99769%_
                           _%field99778%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99732%_ _%slot99733%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99732%_ 'class))
            (let ((_%klass99737%_ _%klass99732%_))
              (if (symbol? _%slot99733%_)
                  (let ((_%slot99747%_ _%slot99733%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99737%_
                     _%slot99747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99732%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99700%_ _%slot99701%_)
        (let* ((_%klass99704%_ _%klass99700%_)
               (_%slot99712%_ _%slot99701%_)
               (_%field99721%_
                (let ((__tmp102556
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99704%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102556 _%slot99712%_ '#f))))
          (if (not _%field99721%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99704%_
                       'slot:
                       _%slot99712%_)
                '#!void)
              (if (__class-type-final? _%klass99704%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99704%_
                   _%slot99712%_
                   _%field99721%_)
                  (if (__class-type-struct? _%klass99704%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99704%_
                       _%slot99712%_
                       _%field99721%_)
                      (if (let ((_%strukt99727%_
                                 (base-struct/1 _%klass99704%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99727%_
                                    'class))
                                 (let ((__tmp102557
                                        (let ((__tmp102558
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99727%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102558))))
                                   (declare (not safe))
                                   (##fx< _%field99721%_ __tmp102557))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99704%_
                           _%slot99712%_
                           _%field99721%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99704%_
                           _%slot99712%_
                           _%field99721%_))))))))
    (define not-an-instance__%
      (lambda (_%object99684%_ _%class99685%_ _%slot99686%_)
        (apply error
               '"not an instance"
               'object:
               _%object99684%_
               'class:
               _%class99685%_
               (if _%slot99686%_ (cons 'slot: (cons _%slot99686%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99691%_ _%class99692%_)
        (let ((_%slot99694%_ '#f))
          (not-an-instance__% _%object99691%_ _%class99692%_ _%slot99694%_))))
    (define not-an-instance
      (lambda _g102560_
        (let ((_g102559_ (let () (declare (not safe)) (##length _g102560_))))
          (cond ((let () (declare (not safe)) (##fx= _g102559_ 2))
                 (apply not-an-instance__0 _g102560_))
                ((let () (declare (not safe)) (##fx= _g102559_ 3))
                 (apply not-an-instance__% _g102560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102560_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99677%_ _%slot99678%_ _%field99679%_)
        (lambda (_%obj99681%_)
          (##direct-structure-ref
           _%obj99681%_
           _%field99679%_
           _%klass99677%_
           _%slot99678%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99670%_ _%slot99671%_ _%field99672%_)
        (lambda (_%obj99674%_ _%val99675%_)
          (##direct-structure-set!
           _%obj99674%_
           _%val99675%_
           _%field99672%_
           _%klass99670%_
           _%slot99671%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99664%_ _%slot99665%_ _%field99666%_)
        (lambda (_%obj99668%_)
          (##structure-ref
           _%obj99668%_
           _%field99666%_
           _%klass99664%_
           _%slot99665%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99657%_ _%slot99658%_ _%field99659%_)
        (lambda (_%obj99661%_ _%val99662%_)
          (##structure-set!
           _%obj99661%_
           _%val99662%_
           _%field99659%_
           _%klass99657%_
           _%slot99658%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99651%_ _%slot99652%_ _%field99653%_)
        (lambda (_%obj99655%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99655%_
             _%field99653%_
             _%klass99651%_
             _%slot99652%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99644%_ _%slot99645%_ _%field99646%_)
        (lambda (_%obj99648%_ _%val99649%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99648%_
             _%val99649%_
             _%field99646%_
             _%klass99644%_
             _%slot99645%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99638%_ _%slot99639%_ _%field99640%_)
        (lambda (_%obj99642%_)
          (if (class-instance? _%klass99638%_ _%obj99642%_)
              (unchecked-slot-ref _%obj99642%_ _%field99640%_)
              (not-an-instance__%
               _%obj99642%_
               _%klass99638%_
               _%slot99639%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99631%_ _%slot99632%_ _%field99633%_)
        (lambda (_%obj99635%_ _%val99636%_)
          (if (class-instance? _%klass99631%_ _%obj99635%_)
              (unchecked-field-set! _%obj99635%_ _%field99633%_ _%val99636%_)
              (not-an-instance__%
               _%obj99635%_
               _%klass99631%_
               _%slot99632%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99622%_ _%slot99623%_ _%field99624%_)
        (lambda (_%obj99626%_)
          (if (let ((__tmp102561
                     (let () (declare (not safe)) (##type-id _%klass99622%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99626%_ __tmp102561))
              (unchecked-field-ref _%obj99626%_ _%field99624%_)
              (if (class-instance? _%klass99622%_ _%obj99626%_)
                  (unchecked-slot-ref _%obj99626%_ _%slot99623%_)
                  (not-an-instance__%
                   _%obj99626%_
                   _%klass99622%_
                   _%slot99623%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99612%_ _%slot99613%_ _%field99614%_)
        (lambda (_%obj99616%_ _%val99617%_)
          (if (let ((__tmp102562
                     (let () (declare (not safe)) (##type-id _%klass99612%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99616%_ __tmp102562))
              (unchecked-field-set! _%obj99616%_ _%field99614%_ _%val99617%_)
              (if (class-instance? _%klass99612%_ _%obj99616%_)
                  (unchecked-slot-set! _%obj99616%_ _%slot99613%_ _%val99617%_)
                  (not-an-instance__%
                   _%obj99616%_
                   _%klass99612%_
                   _%slot99613%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99606%_ _%slot99607%_ _%field99608%_)
        (lambda (_%obj99610%_)
          (if (let ((__tmp102563
                     (let () (declare (not safe)) (##type-id _%klass99606%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99610%_ __tmp102563))
              (unchecked-field-ref _%obj99610%_ _%field99608%_)
              (unchecked-slot-ref _%obj99610%_ _%slot99607%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99599%_ _%slot99600%_ _%field99601%_)
        (lambda (_%obj99603%_ _%val99604%_)
          (if (let ((__tmp102564
                     (let () (declare (not safe)) (##type-id _%klass99599%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99603%_ __tmp102564))
              (unchecked-field-set! _%obj99603%_ _%field99601%_ _%val99604%_)
              (unchecked-slot-set! _%obj99603%_ _%slot99600%_ _%val99604%_)))))
    (define class-slot-offset
      (lambda (_%klass99574%_ _%slot99575%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99574%_ 'class))
            (let ((_%klass99579%_ _%klass99574%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99575%_))
                  (let ((_%slot99589%_ _%slot99575%_))
                    (__class-slot-offset _%klass99579%_ _%slot99589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99574%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99553%_ _%slot99554%_)
        (let* ((_%klass99557%_ _%klass99553%_)
               (_%slot99565%_ _%slot99554%_)
               (__tmp102565
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99557%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102565 _%slot99565%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99527%_ _%obj99528%_ _%slot99529%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99527%_ 'class))
            (let ((_%klass99533%_ _%klass99527%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99529%_))
                  (let ((_%slot99543%_ _%slot99529%_))
                    (__class-slot-ref
                     _%klass99533%_
                     _%obj99528%_
                     _%slot99543%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99529%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99527%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99503%_ _%obj99504%_ _%slot99505%_)
        (let* ((_%klass99508%_ _%klass99503%_) (_%slot99516%_ _%slot99505%_))
          (if (__class-instance? _%klass99508%_ _%obj99504%_)
              (let ((_%off99525%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99504%_))
                      _%slot99516%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99504%_
                 _%off99525%_
                 _%klass99508%_
                 _%slot99516%_))
              (not-an-instance__0 _%obj99504%_ _%klass99508%_)))))
    (define class-slot-set!
      (lambda (_%klass99476%_ _%obj99477%_ _%slot99478%_ _%val99479%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99476%_ 'class))
            (let ((_%klass99483%_ _%klass99476%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99478%_))
                  (let ((_%slot99493%_ _%slot99478%_))
                    (__class-slot-set!
                     _%klass99483%_
                     _%obj99477%_
                     _%slot99493%_
                     _%val99479%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99478%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99476%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99451%_ _%obj99452%_ _%slot99453%_ _%val99454%_)
        (let* ((_%klass99457%_ _%klass99451%_) (_%slot99465%_ _%slot99453%_))
          (if (__class-instance? _%klass99457%_ _%obj99452%_)
              (let ((_%off99474%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99452%_))
                      _%slot99465%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99452%_
                 _%val99454%_
                 _%off99474%_
                 _%klass99457%_
                 _%slot99465%_))
              (not-an-instance__0 _%obj99452%_ _%klass99457%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99448%_ _%off99449%_)
        (let ((__tmp102566
               (let () (declare (not safe)) (##structure-type _%obj99448%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj99448%_
           _%off99449%_
           __tmp102566
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99444%_ _%off99445%_ _%val99446%_)
        (let ((__tmp102567
               (let () (declare (not safe)) (##structure-type _%obj99444%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99444%_
           _%val99446%_
           _%off99445%_
           __tmp102567
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99441%_ _%slot99442%_)
        (unchecked-field-ref
         _%obj99441%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99441%_))
          _%slot99442%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99437%_ _%slot99438%_ _%val99439%_)
        (unchecked-field-set!
         _%obj99437%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99437%_))
          _%slot99438%_)
         _%val99439%_)))
    (define slot-ref__%
      (lambda (_%obj99399%_ _%slot99400%_ _%E99401%_)
        (if (symbol? _%slot99400%_)
            (let ((_%slot99405%_ _%slot99400%_))
              (if (procedure? _%E99401%_)
                  (let ((_%E99415%_ _%E99401%_))
                    (__slot-ref__% _%obj99399%_ _%slot99405%_ _%E99415%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99401%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99400%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99428%_ _%slot99429%_)
        (let ((_%E99431%_ __slot-error))
          (slot-ref__% _%obj99428%_ _%slot99429%_ _%E99431%_))))
    (define slot-ref
      (lambda _g102569_
        (let ((_g102568_ (let () (declare (not safe)) (##length _g102569_))))
          (cond ((let () (declare (not safe)) (##fx= _g102568_ 2))
                 (apply slot-ref__0 _g102569_))
                ((let () (declare (not safe)) (##fx= _g102568_ 3))
                 (apply slot-ref__% _g102569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102569_))))))
    (define __slot-ref__%
      (lambda (_%obj99355%_ _%slot99356%_ _%E99357%_)
        (let* ((_%slot99360%_ _%slot99356%_)
               (_%E99368%_ _%E99357%_)
               (_%klass99377%_ (class-of _%obj99355%_))
               (_%$e99380%_
                (__class-slot-offset _%klass99377%_ _%slot99360%_)))
          (if _%$e99380%_
              ((lambda (_%off99383%_)
                 (unchecked-field-ref _%obj99355%_ _%off99383%_))
               _%$e99380%_)
              (let ()
                (declare (not safe))
                (_%E99368%_ _%obj99355%_ _%slot99360%_))))))
    (define __slot-ref__0
      (lambda (_%obj99389%_ _%slot99390%_)
        (let ((_%E99392%_ __slot-error))
          (__slot-ref__% _%obj99389%_ _%slot99390%_ _%E99392%_))))
    (define __slot-ref
      (lambda _g102571_
        (let ((_g102570_ (let () (declare (not safe)) (##length _g102571_))))
          (cond ((let () (declare (not safe)) (##fx= _g102570_ 2))
                 (apply __slot-ref__0 _g102571_))
                ((let () (declare (not safe)) (##fx= _g102570_ 3))
                 (apply __slot-ref__% _g102571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102571_))))))
    (define slot-set!__%
      (lambda (_%obj99313%_ _%slot99314%_ _%val99315%_ _%E99316%_)
        (if (symbol? _%slot99314%_)
            (let ((_%slot99320%_ _%slot99314%_))
              (if (procedure? _%E99316%_)
                  (let ((_%E99330%_ _%E99316%_))
                    (__slot-set!__%
                     _%obj99313%_
                     _%slot99320%_
                     _%val99315%_
                     _%E99330%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99316%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99314%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99343%_ _%slot99344%_ _%val99345%_)
        (let ((_%E99347%_ __slot-error))
          (slot-set!__% _%obj99343%_ _%slot99344%_ _%val99345%_ _%E99347%_))))
    (define slot-set!
      (lambda _g102573_
        (let ((_g102572_ (let () (declare (not safe)) (##length _g102573_))))
          (cond ((let () (declare (not safe)) (##fx= _g102572_ 3))
                 (apply slot-set!__0 _g102573_))
                ((let () (declare (not safe)) (##fx= _g102572_ 4))
                 (apply slot-set!__% _g102573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102573_))))))
    (define __slot-set!__%
      (lambda (_%obj99266%_ _%slot99267%_ _%val99268%_ _%E99269%_)
        (let* ((_%slot99272%_ _%slot99267%_)
               (_%E99280%_ _%E99269%_)
               (_%klass99289%_ (class-of _%obj99266%_))
               (_%$e99292%_
                (__class-slot-offset _%klass99289%_ _%slot99272%_)))
          (if _%$e99292%_
              ((lambda (_%off99295%_)
                 (unchecked-field-set! _%obj99266%_ _%off99295%_ _%val99268%_))
               _%$e99292%_)
              (let ()
                (declare (not safe))
                (_%E99280%_ _%obj99266%_ _%slot99272%_))))))
    (define __slot-set!__0
      (lambda (_%obj99301%_ _%slot99302%_ _%val99303%_)
        (let ((_%E99305%_ __slot-error))
          (__slot-set!__%
           _%obj99301%_
           _%slot99302%_
           _%val99303%_
           _%E99305%_))))
    (define __slot-set!
      (lambda _g102575_
        (let ((_g102574_ (let () (declare (not safe)) (##length _g102575_))))
          (cond ((let () (declare (not safe)) (##fx= _g102574_ 3))
                 (apply __slot-set!__0 _g102575_))
                ((let () (declare (not safe)) (##fx= _g102574_ 4))
                 (apply __slot-set!__% _g102575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102575_))))))
    (define __slot-error
      (lambda (_%obj99262%_ _%slot99263%_)
        (error '"Cannot find slot"
               'object:
               _%obj99262%_
               'slot:
               _%slot99263%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99237%_ _%maybe-super-class99238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99237%_ 'class))
            (let ((_%maybe-sub-class99242%_ _%maybe-sub-class99237%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99238%_
                     'class))
                  (let ((_%maybe-super-class99252%_
                         _%maybe-super-class99238%_))
                    (__subclass?
                     _%maybe-sub-class99242%_
                     _%maybe-super-class99252%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99238%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99237%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99209%_ _%maybe-super-class99210%_)
        (let* ((_%maybe-sub-class99213%_ _%maybe-sub-class99209%_)
               (_%maybe-super-class99221%_ _%maybe-super-class99210%_)
               (_%maybe-super-class-id99230%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99221%_)))
               (_%$e99232%_
                (eq? _%maybe-super-class-id99230%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99213%_)))))
          (if _%$e99232%_
              _%$e99232%_
              (let ((__tmp102577
                     (lambda (_%super-class99235%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99235%_))
                            _%maybe-super-class-id99230%_)))
                    (__tmp102576
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99213%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102577 __tmp102576))))))
    (define object?
      (lambda (_%o99206%_)
        (if (let () (declare (not safe)) (##structure? _%o99206%_))
            (let ((__tmp102578
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99206%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102578 'class))
            '#f)))
    (define object-type
      (lambda (_%o99201%_)
        (if (let () (declare (not safe)) (##structure? _%o99201%_))
            (let ((_%klass99204%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99201%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99204%_ 'class))
                  _%klass99204%_
                  (begin
                    (error '"not an object" _%o99201%_ _%klass99204%_)
                    '#!void)))
            (begin (error '"not an object" _%o99201%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99186%_ _%obj99187%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99186%_ 'class))
            (let ((_%klass99191%_ _%klass99186%_))
              (__direct-instance? _%klass99191%_ _%obj99187%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99186%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99173%_ _%obj99174%_)
        (let* ((_%klass99177%_ _%klass99173%_)
               (__tmp102579
                (let () (declare (not safe)) (##type-id _%klass99177%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99174%_ __tmp102579))))
    (define immediate-instance-of?
      (lambda (_%klass99169%_ _%obj99170%_)
        (if (let () (declare (not safe)) (##structure? _%obj99170%_))
            (eq? _%klass99169%_
                 (let () (declare (not safe)) (##structure-type _%obj99170%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99154%_ _%obj99155%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99154%_ 'class))
            (let ((_%klass99159%_ _%klass99154%_))
              (__struct-instance? _%klass99159%_ _%obj99155%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99154%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99141%_ _%obj99142%_)
        (let* ((_%klass99145%_ _%klass99141%_)
               (__tmp102580
                (let () (declare (not safe)) (##type-id _%klass99145%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99142%_ __tmp102580))))
    (define class-instance?
      (lambda (_%klass99126%_ _%obj99127%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99126%_ 'class))
            (let ((_%klass99131%_ _%klass99126%_))
              (__class-instance? _%klass99131%_ _%obj99127%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99126%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99111%_ _%obj99112%_)
        (let* ((_%klass99115%_ _%klass99111%_)
               (_%type99124%_ (class-of _%obj99112%_)))
          (__subclass? _%type99124%_ _%klass99115%_))))
    (define make-object
      (lambda (_%klass99086%_ _%k99087%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99086%_ 'class))
            (let ((_%klass99091%_ _%klass99086%_))
              (if (fixnum? _%k99087%_)
                  (let ((_%k99101%_ _%k99087%_))
                    (__make-object _%klass99091%_ _%k99101%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99087%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99086%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99063%_ _%k99064%_)
        (let* ((_%klass99067%_ _%klass99063%_) (_%k99075%_ _%k99064%_))
          (if (__class-type-system? _%klass99067%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99067%_)
                '#!void)
              (let ((_%obj99084%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99067%_ _%k99075%_))))
                (object-fill! _%obj99084%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99048%_ _%fill99049%_)
        (if '#t
            (let ((_%obj99053%_ _%obj99048%_))
              (__object-fill! _%obj99053%_ _%fill99049%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99048%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99030%_ _%fill99031%_)
        (let ((_%obj99034%_ _%obj99030%_))
          (let _%loop99043%_ ((_%i99045%_
                               (let ((__tmp102581
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99034%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102581 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99045%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99034%_
                     _%fill99031%_
                     _%i99045%_
                     '#f
                     '#f))
                  (_%loop99043%_
                   (let () (declare (not safe)) (##fx- _%i99045%_ '1))))
                _%obj99034%_)))))
    (define new-instance
      (lambda (_%klass99016%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99016%_ 'class))
            (let ((_%klass99020%_ _%klass99016%_))
              (__new-instance _%klass99020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99016%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass99004%_)
        (let* ((_%klass99007%_ _%klass99004%_)
               (__obj102496
                (let ((__tmp102582
                       (let ((__tmp102583
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass99007%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102583))))
                  (declare (not safe))
                  (##make-structure _%klass99007%_ __tmp102582))))
          (object-fill! __obj102496 '#f)
          __obj102496)))
    (define make-instance
      (lambda (_%klass98989%_ . _%args98990%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98989%_ 'class))
            (let ((_%klass98994%_ _%klass98989%_))
              (declare (not safe))
              (##apply __make-instance _%klass98994%_ _%args98990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass98989%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98961%_ . _%args98962%_)
        (let* ((_%klass98965%_ _%klass98961%_)
               (_%$e98974%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98965%_ '10 '#f '#f))))
          (if _%$e98974%_
              ((lambda (_%kons-id98977%_)
                 (let ((_%obj98979%_ (__new-instance _%klass98965%_)))
                   (___constructor-init!
                    _%klass98965%_
                    _%kons-id98977%_
                    _%obj98979%_
                    _%args98962%_)
                   _%obj98979%_))
               _%$e98974%_)
              (if (__class-type-metaclass? _%klass98965%_)
                  (let ((_%obj98982%_ (__new-instance _%klass98965%_)))
                    (__metaclass-instance-init!
                     _%klass98965%_
                     _%obj98982%_
                     _%args98962%_)
                    _%obj98982%_)
                  (if (__class-type-struct? _%klass98965%_)
                      (if (let ((__tmp102585
                                 (__class-type-field-count _%klass98965%_))
                                (__tmp102584
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98962%_))))
                            (declare (not safe))
                            (##fx= __tmp102585 __tmp102584))
                          (apply ##structure _%klass98965%_ _%args98962%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98965%_
                                   'slots:
                                   (__class-type-slot-list _%klass98965%_)
                                   'args:
                                   _%args98962%_)
                            '#!void))
                      (let ((_%obj98985%_ (__new-instance _%klass98965%_)))
                        (___class-instance-init!
                         _%klass98965%_
                         _%obj98985%_
                         _%args98962%_)
                        _%obj98985%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98946%_ . _%args98947%_)
        (if '#t
            (let ((_%obj98951%_ _%obj98946%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98951%_ _%args98947%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98946%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98933%_ . _%args98934%_)
        (let ((_%obj98937%_ _%obj98933%_))
          (if (let ((__tmp102587
                     (let () (declare (not safe)) (##length _%args98934%_)))
                    (__tmp102586
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98937%_))))
                (declare (not safe))
                (##fx< __tmp102587 __tmp102586))
              (___struct-instance-init! _%obj98937%_ _%args98934%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98937%_
                     'args:
                     _%args98934%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98892%_ _%args98893%_)
        (let _%lp98895%_ ((_%k98897%_ '1) (_%rest98898%_ _%args98893%_))
          (let* ((_%rest9889998907%_ _%rest98898%_)
                 (_%else9890198915%_ (lambda () _%obj98892%_))
                 (_%K9890398921%_
                  (lambda (_%rest98918%_ _%hd98919%_)
                    (unchecked-field-set! _%obj98892%_ _%k98897%_ _%hd98919%_)
                    (_%lp98895%_
                     (let () (declare (not safe)) (##fx+ _%k98897%_ '1))
                     _%rest98918%_))))
            (if (pair? _%rest9889998907%_)
                (let ((_%hd9890498924%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9889998907%_)))
                      (_%tl9890598926%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9889998907%_))))
                  (let* ((_%hd98929%_ _%hd9890498924%_)
                         (_%rest98931%_ _%tl9890598926%_))
                    (_%K9890398921%_ _%rest98931%_ _%hd98929%_)))
                (_%else9890198915%_))))))
    (define class-instance-init!
      (lambda (_%obj98877%_ . _%args98878%_)
        (if '#t
            (let ((_%obj98882%_ _%obj98877%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98882%_ _%args98878%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98877%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98864%_ . _%args98865%_)
        (let ((_%obj98868%_ _%obj98864%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98868%_))
           _%obj98868%_
           _%args98865%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98806%_ _%obj98807%_ _%args98808%_)
        (let _%lp98810%_ ((_%rest98812%_ _%args98808%_))
          (let* ((_%rest9881398823%_ _%rest98812%_)
                 (_%else9881598831%_
                  (lambda ()
                    (if (null? _%rest98812%_)
                        _%obj98807%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98806%_
                               'rest:
                               _%rest98812%_))))
                 (_%K9881798845%_
                  (lambda (_%rest98834%_ _%val98835%_ _%key98836%_)
                    (if (keyword? _%key98836%_)
                        (let ((_%$e98839%_
                               (__class-slot-offset
                                _%klass98806%_
                                _%key98836%_)))
                          (if _%$e98839%_
                              ((lambda (_%off98842%_)
                                 (unchecked-field-set!
                                  _%obj98807%_
                                  _%off98842%_
                                  _%val98835%_)
                                 (_%lp98810%_ _%rest98834%_))
                               _%$e98839%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98806%_
                                     'slot:
                                     _%key98836%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98836%_)))))
            (if (pair? _%rest9881398823%_)
                (let ((_%hd9881898848%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9881398823%_)))
                      (_%tl9881998850%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9881398823%_))))
                  (let ((_%key98853%_ _%hd9881898848%_))
                    (if (pair? _%tl9881998850%_)
                        (let ((_%hd9882098855%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9881998850%_)))
                              (_%tl9882198857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9881998850%_))))
                          (let* ((_%val98860%_ _%hd9882098855%_)
                                 (_%rest98862%_ _%tl9882198857%_))
                            (_%K9881798845%_
                             _%rest98862%_
                             _%val98860%_
                             _%key98853%_)))
                        (_%else9881598831%_))))
                (_%else9881598831%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98802%_ _%obj98803%_ _%args98804%_)
        (apply call-method
               _%klass98802%_
               'instance-init!
               _%obj98803%_
               _%args98804%_)))
    (define constructor-init!
      (lambda (_%klass98765%_ _%kons-id98766%_ _%obj98767%_ . _%args98768%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98765%_ 'class))
            (let ((_%klass98772%_ _%klass98765%_))
              (if (symbol? _%kons-id98766%_)
                  (let ((_%kons-id98782%_ _%kons-id98766%_))
                    (if '#t
                        (let ((_%obj98792%_ _%obj98767%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98772%_
                                   _%kons-id98782%_
                                   _%obj98792%_
                                   _%args98768%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98767%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98766%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98765%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98734%_ _%kons-id98735%_ _%obj98736%_ . _%args98737%_)
        (let* ((_%klass98740%_ _%klass98734%_)
               (_%kons-id98748%_ _%kons-id98735%_)
               (_%obj98756%_ _%obj98736%_))
          (___constructor-init!
           _%klass98740%_
           _%kons-id98748%_
           _%obj98756%_
           _%args98737%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98723%_ _%kons-id98724%_ _%obj98725%_ _%args98726%_)
        (let ((_%$e98728%_
               (__find-method _%klass98723%_ _%obj98725%_ _%kons-id98724%_)))
          (if _%$e98728%_
              ((lambda (_%kons98731%_)
                 (apply _%kons98731%_ _%obj98725%_ _%args98726%_)
                 _%obj98725%_)
               _%$e98728%_)
              (error '"missing constructor"
                     'class:
                     _%klass98723%_
                     'method:
                     _%kons-id98724%_)))))
    (define struct-copy
      (lambda (_%struct98709%_)
        (if '#t
            (let ((_%struct98713%_ _%struct98709%_))
              (__struct-copy _%struct98713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98709%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98697%_)
        (let ((_%struct98700%_ _%struct98697%_))
          (declare (not safe))
          (##structure-copy _%struct98700%_))))
    (define struct->list
      (lambda (_%obj98683%_)
        (if '#t
            (let ((_%obj98687%_ _%obj98683%_)) (__struct->list _%obj98687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98683%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98671%_)
        (let ((_%obj98674%_ _%obj98671%_))
          (declare (not safe))
          (##vector->list _%obj98674%_))))
    (define class->list
      (lambda (_%obj98657%_)
        (if '#t
            (let ((_%obj98661%_ _%obj98657%_)) (__class->list _%obj98661%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj98657%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98633%_)
        (let* ((_%obj98636%_ _%obj98633%_)
               (_%klass98645%_
                (let () (declare (not safe)) (##structure-type _%obj98636%_)))
               (_%slot-vector98647%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98645%_ '7 '#f '#f))))
          (let _%loop98649%_ ((_%index98651%_
                               (let ((__tmp102588
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98647%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102588 '1)))
                              (_%plist98652%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98651%_ '1))
                (cons _%klass98645%_ _%plist98652%_)
                (let ((_%slot98655%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98647%_ _%index98651%_))))
                  (_%loop98649%_
                   (let () (declare (not safe)) (##fx- _%index98651%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98655%_))
                         (cons (unchecked-field-ref
                                _%obj98636%_
                                _%index98651%_)
                               _%plist98652%_)))))))))
    (define call-method
      (lambda (_%obj98617%_ _%id98618%_ . _%args98619%_)
        (if (symbol? _%id98618%_)
            (let ((_%id98623%_ _%id98618%_))
              (declare (not safe))
              (##apply __call-method _%obj98617%_ _%id98623%_ _%args98619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id98618%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98586%_ _%id98587%_ . _%args98588%_)
        (let* ((_%id98591%_ _%id98587%_)
               (_%$e98600%_ (__method-ref _%obj98586%_ _%id98591%_)))
          (if _%$e98600%_
              ((lambda (_%method98603%_)
                 (let ((_%method98605%_ _%method98603%_))
                   (apply _%method98605%_ _%obj98586%_ _%args98588%_)))
               _%$e98600%_)
              (error '"cannot find method"
                     'object:
                     _%obj98586%_
                     'method:
                     _%id98591%_)))))
    (define method-ref
      (lambda (_%obj98571%_ _%id98572%_)
        (if (symbol? _%id98572%_)
            (let ((_%id98576%_ _%id98572%_))
              (__method-ref _%obj98571%_ _%id98576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id98572%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98558%_ _%id98559%_)
        (let ((_%id98562%_ _%id98559%_))
          (__find-method (class-of _%obj98558%_) _%obj98558%_ _%id98562%_))))
    (define checked-method-ref
      (lambda (_%obj98551%_ _%id98552%_)
        (let ((_%$e98555%_ (method-ref _%obj98551%_ _%id98552%_)))
          (if _%$e98555%_
              _%$e98555%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98551%_
                       'method:
                       _%id98552%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98536%_ _%id98537%_)
        (if (symbol? _%id98537%_)
            (let ((_%id98541%_ _%id98537%_))
              (__bound-method-ref _%obj98536%_ _%id98541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id98537%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98504%_ _%id98505%_)
        (let* ((_%id98508%_ _%id98505%_)
               (_%$e98517%_ (__method-ref _%obj98504%_ _%id98508%_)))
          (if _%$e98517%_
              ((lambda (_%method98520%_)
                 (let ((_%method98522%_ _%method98520%_))
                   (lambda _%args98533%_
                     (apply _%method98522%_ _%obj98504%_ _%args98533%_))))
               _%$e98517%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98489%_ _%id98490%_)
        (if (symbol? _%id98490%_)
            (let ((_%id98494%_ _%id98490%_))
              (__checked-bound-method-ref _%obj98489%_ _%id98494%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id98490%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98472%_ _%id98473%_)
        (let* ((_%id98476%_ _%id98473%_)
               (_%method98485%_ (checked-method-ref _%obj98472%_ _%id98476%_)))
          (lambda _%args98487%_
            (apply _%method98485%_ _%obj98472%_ _%args98487%_)))))
    (define find-method
      (lambda (_%klass98446%_ _%obj98447%_ _%id98448%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98446%_ 'class))
            (let ((_%klass98452%_ _%klass98446%_))
              (if (symbol? _%id98448%_)
                  (let ((_%id98462%_ _%id98448%_))
                    (__find-method _%klass98452%_ _%obj98447%_ _%id98462%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98448%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass98446%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98419%_ _%obj98420%_ _%id98421%_)
        (let* ((_%klass98424%_ _%klass98419%_)
               (_%id98432%_ _%id98421%_)
               (_%$e98441%_
                (__direct-method-ref _%klass98424%_ _%obj98420%_ _%id98432%_)))
          (if _%$e98441%_
              _%$e98441%_
              (if (__class-type-sealed? _%klass98424%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98424%_
                   _%obj98420%_
                   _%id98432%_))))))
    (define mixin-find-method
      (lambda (_%mixins98403%_ _%obj98404%_ _%id98405%_)
        (if (symbol? _%id98405%_)
            (let ((_%id98409%_ _%id98405%_))
              (__mixin-find-method _%mixins98403%_ _%obj98404%_ _%id98409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id98405%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98385%_ _%obj98386%_ _%id98387%_)
        (let* ((_%id98390%_ _%id98387%_)
               (__tmp102589
                (lambda (_%g9839898400%_)
                  (direct-method-ref
                   _%g9839898400%_
                   _%obj98386%_
                   _%id98390%_))))
          (declare (not safe))
          (__ormap1 __tmp102589 _%mixins98385%_))))
    (define direct-method-ref
      (lambda (_%klass98359%_ _%obj98360%_ _%id98361%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98359%_ 'class))
            (let ((_%klass98365%_ _%klass98359%_))
              (if (symbol? _%id98361%_)
                  (let ((_%id98375%_ _%id98361%_))
                    (__direct-method-ref
                     _%klass98365%_
                     _%obj98360%_
                     _%id98375%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98361%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass98359%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98313%_ _%obj98314%_ _%id98315%_)
        (let* ((_%klass98318%_ _%klass98313%_) (_%id98326%_ _%id98315%_))
          (letrec ((_%metaclass-resolve-method98335%_
                    (lambda ()
                      (let ((__method102497
                             (__method-ref _%klass98318%_ 'direct-method-ref)))
                        (if __method102497
                            (let ()
                              (declare (not safe))
                              (__method102497
                               _%klass98318%_
                               _%obj98314%_
                               _%id98326%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98318%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98336%_
                    (lambda ()
                      (let ((_%method98356%_
                             (_%metaclass-resolve-method98335%_)))
                        (let ((__tmp102591
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98318%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102590
                               (if _%method98356%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102591
                           _%id98326%_
                           __tmp102590))
                        _%method98356%_))))
            (let ((_%$e98338%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98318%_ '11 '#f '#f))))
              (if _%$e98338%_
                  ((lambda (_%ht98341%_)
                     (let ((_%method98343%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98341%_
                               _%id98326%_
                               '#f))))
                       (if (procedure? _%method98343%_)
                           _%method98343%_
                           (if (__class-type-metaclass? _%klass98318%_)
                               (let ((_%$e98347%_ _%method98343%_))
                                 (if (eq? 'resolved _%$e98347%_)
                                     (_%metaclass-resolve-method98335%_)
                                     (if (eq? 'unknown _%$e98347%_)
                                         '#f
                                         (_%metaclass-resolve-method!98336%_))))
                               '#f))))
                   _%$e98338%_)
                  (if (__class-type-metaclass? _%klass98318%_)
                      (let ((_%tab98352%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98318%_
                           _%tab98352%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98336%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98287%_ _%obj98288%_ _%id98289%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98287%_ 'class))
            (let ((_%klass98293%_ _%klass98287%_))
              (if (symbol? _%id98289%_)
                  (let ((_%id98303%_ _%id98289%_))
                    (__mixin-method-ref
                     _%klass98293%_
                     _%obj98288%_
                     _%id98303%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98289%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass98287%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98265%_ _%obj98266%_ _%id98267%_)
        (let* ((_%klass98270%_ _%klass98265%_) (_%id98278%_ _%id98267%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98270%_ '6 '#f '#f))
           _%obj98266%_
           _%id98278%_))))
    (define bind-method!__%
      (lambda (_%klass98224%_ _%id98225%_ _%proc98226%_ _%rebind?98227%_)
        (if (symbol? _%id98225%_)
            (let ((_%id98231%_ _%id98225%_))
              (if (procedure? _%proc98226%_)
                  (let ((_%proc98241%_ _%proc98226%_))
                    (__bind-method!__%
                     _%klass98224%_
                     _%id98231%_
                     _%proc98241%_
                     _%rebind?98227%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98226%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id98225%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98254%_ _%id98255%_ _%proc98256%_)
        (let ((_%rebind?98258%_ '#f))
          (bind-method!__%
           _%klass98254%_
           _%id98255%_
           _%proc98256%_
           _%rebind?98258%_))))
    (define bind-method!
      (lambda _g102593_
        (let ((_g102592_ (let () (declare (not safe)) (##length _g102593_))))
          (cond ((let () (declare (not safe)) (##fx= _g102592_ 3))
                 (apply bind-method!__0 _g102593_))
                ((let () (declare (not safe)) (##fx= _g102592_ 4))
                 (apply bind-method!__% _g102593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102593_))))))
    (define __bind-method!__%
      (lambda (_%klass98175%_ _%id98176%_ _%proc98177%_ _%rebind?98178%_)
        (let* ((_%id98181%_ _%id98176%_) (_%proc98189%_ _%proc98177%_))
          (letrec ((_%bind!98198%_
                    (lambda (_%ht98207%_)
                      (if (and (not _%rebind?98178%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98207%_
                                  _%id98181%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98175%_
                                 'method:
                                 _%id98181%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98207%_
                               _%id98181%_
                               _%proc98189%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98175%_ 'class))
                (let ((_%ht98201%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98175%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98201%_
                      (_%bind!98198%_ _%ht98201%_)
                      (let ((_%ht98203%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98175%_
                           _%ht98203%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98198%_ _%ht98203%_))))
                (if (let () (declare (not safe)) (##type? _%klass98175%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98175%_)
                     _%id98181%_
                     _%proc98189%_
                     _%rebind?98178%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98175%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98212%_ _%id98213%_ _%proc98214%_)
        (let ((_%rebind?98216%_ '#f))
          (__bind-method!__%
           _%klass98212%_
           _%id98213%_
           _%proc98214%_
           _%rebind?98216%_))))
    (define __bind-method!
      (lambda _g102595_
        (let ((_g102594_ (let () (declare (not safe)) (##length _g102595_))))
          (cond ((let () (declare (not safe)) (##fx= _g102594_ 3))
                 (apply __bind-method!__0 _g102595_))
                ((let () (declare (not safe)) (##fx= _g102594_ 4))
                 (apply __bind-method!__% _g102595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102595_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98155%_ _%seed98157%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98155%_
           procedure-hash
           eq?
           _%seed98157%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98163%_ '#f) (_%seed98165%_ '0))
          (make-method-specializer-table__%
           _%size-hint98163%_
           _%seed98165%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98167%_)
        (let ((_%seed98169%_ '0))
          (make-method-specializer-table__%
           _%size-hint98167%_
           _%seed98169%_))))
    (define make-method-specializer-table
      (lambda _g102597_
        (let ((_g102596_ (let () (declare (not safe)) (##length _g102597_))))
          (cond ((let () (declare (not safe)) (##fx= _g102596_ 0))
                 (apply make-method-specializer-table__0 _g102597_))
                ((let () (declare (not safe)) (##fx= _g102596_ 1))
                 (apply make-method-specializer-table__1 _g102597_))
                ((let () (declare (not safe)) (##fx= _g102596_ 2))
                 (apply make-method-specializer-table__% _g102597_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102597_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98108%_ _%key98109%_ _%default98110%_)
        (let ((_%table98112%_
               (let () (declare (not safe)) (&raw-table-table _%tab98108%_)))
              (_%seed98113%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98108%_))))
          (let* ((_%h98115%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98109%_))
                         _%seed98113%_))
                 (_%size98118%_ (vector-length _%table98112%_))
                 (_%entries98121%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98118%_ '2)))
                 (_%start98124%_
                  (let ((__tmp102598
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98115%_ _%entries98121%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102598 '1))))
            (let _%loop98128%_ ((_%probe98131%_ _%start98124%_)
                                (_%i98133%_ '1)
                                (_%deleted98135%_ '#f))
              (let ((_%k98138%_ (vector-ref _%table98112%_ _%probe98131%_)))
                (if (eq? _%k98138%_ (macro-unused-obj))
                    _%default98110%_
                    (if (eq? _%k98138%_ (macro-deleted-obj))
                        (_%loop98128%_
                         (let ((_%next-probe98143%_
                                (fx+ _%start98124%_
                                     _%i98133%_
                                     (fx* _%i98133%_ _%i98133%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98143%_ _%size98118%_))
                         (let () (declare (not safe)) (##fx+ _%i98133%_ '1))
                         (let ((_%$e98146%_ _%deleted98135%_))
                           (if _%$e98146%_ _%$e98146%_ _%probe98131%_)))
                        (if (eq? _%key98109%_ _%k98138%_)
                            (vector-ref
                             _%table98112%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98131%_ '1)))
                            (_%loop98128%_
                             (let ((_%next-probe98151%_
                                    (fx+ _%start98124%_
                                         _%i98133%_
                                         (fx* _%i98133%_ _%i98133%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98151%_ _%size98118%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98133%_ '1))
                             _%deleted98135%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98104%_ _%key98105%_ _%value98106%_)
        (if (let ((__tmp102601
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98104%_)))
                  (__tmp102599
                   (let ((__tmp102600
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98104%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102600 '4))))
              (declare (not safe))
              (##fx< __tmp102601 __tmp102599))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98104%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98104%_
         _%key98105%_
         _%value98106%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98055%_ _%key98056%_ _%value98057%_)
        (let ((_%table98060%_
               (let () (declare (not safe)) (&raw-table-table _%tab98055%_)))
              (_%seed98061%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98055%_))))
          (let* ((_%h98063%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98056%_))
                         _%seed98061%_))
                 (_%size98066%_ (vector-length _%table98060%_))
                 (_%entries98069%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98066%_ '2)))
                 (_%start98072%_
                  (let ((__tmp102602
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98063%_ _%entries98069%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102602 '1))))
            (let _%loop98076%_ ((_%probe98079%_ _%start98072%_)
                                (_%i98081%_ '1)
                                (_%deleted98083%_ '#f))
              (let ((_%k98086%_ (vector-ref _%table98060%_ _%probe98079%_)))
                (if (eq? _%k98086%_ (macro-unused-obj))
                    (if _%deleted98083%_
                        (begin
                          (vector-set!
                           _%table98060%_
                           _%deleted98083%_
                           _%key98056%_)
                          (vector-set!
                           _%table98060%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98083%_ '1))
                           _%value98057%_)
                          ((lambda ()
                             (let ((__tmp102603
                                    (let ((__tmp102604
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98055%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102604 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98055%_
                                __tmp102603)))))
                        (begin
                          (vector-set!
                           _%table98060%_
                           _%probe98079%_
                           _%key98056%_)
                          (vector-set!
                           _%table98060%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98079%_ '1))
                           _%value98057%_)
                          ((lambda ()
                             (let ((__tmp102605
                                    (let ((__tmp102606
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98055%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102606 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98055%_ __tmp102605))
                             (let ((__tmp102607
                                    (let ((__tmp102608
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98055%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102608 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98055%_
                                __tmp102607))))))
                    (if (eq? _%k98086%_ (macro-deleted-obj))
                        (_%loop98076%_
                         (let ((_%next-probe98093%_
                                (fx+ _%start98072%_
                                     _%i98081%_
                                     (fx* _%i98081%_ _%i98081%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98093%_ _%size98066%_))
                         (let () (declare (not safe)) (##fx+ _%i98081%_ '1))
                         (let ((_%$e98096%_ _%deleted98083%_))
                           (if _%$e98096%_ _%$e98096%_ _%probe98079%_)))
                        (if (eq? _%key98056%_ _%k98086%_)
                            (let ()
                              (vector-set!
                               _%table98060%_
                               _%probe98079%_
                               _%key98056%_)
                              (vector-set!
                               _%table98060%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98079%_ '1))
                               _%value98057%_))
                            (_%loop98076%_
                             (let ((_%next-probe98101%_
                                    (fx+ _%start98072%_
                                         _%i98081%_
                                         (fx* _%i98081%_ _%i98081%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98101%_ _%size98066%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98081%_ '1))
                             _%deleted98083%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98050%_
               _%key98051%_
               _%method-specializer-table-update!98052%_
               _%default98053%_)
        (if (let ((__tmp102611
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98050%_)))
                  (__tmp102609
                   (let ((__tmp102610
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98050%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102610 '4))))
              (declare (not safe))
              (##fx< __tmp102611 __tmp102609))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98050%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98050%_
         _%key98051%_
         _%method-specializer-table-update!98052%_
         _%default98053%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab98000%_
               _%key98001%_
               _%method-specializer-table-update!98002%_
               _%default98003%_)
        (let ((_%table98006%_
               (let () (declare (not safe)) (&raw-table-table _%tab98000%_)))
              (_%seed98007%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98000%_))))
          (let* ((_%h98009%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98001%_))
                         _%seed98007%_))
                 (_%size98012%_ (vector-length _%table98006%_))
                 (_%entries98015%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98012%_ '2)))
                 (_%start98018%_
                  (let ((__tmp102612
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98009%_ _%entries98015%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102612 '1))))
            (let _%loop98022%_ ((_%probe98025%_ _%start98018%_)
                                (_%i98027%_ '1)
                                (_%deleted98029%_ '#f))
              (let ((_%k98032%_ (vector-ref _%table98006%_ _%probe98025%_)))
                (if (eq? _%k98032%_ (macro-unused-obj))
                    (if _%deleted98029%_
                        (begin
                          (vector-set!
                           _%table98006%_
                           _%deleted98029%_
                           _%key98001%_)
                          (vector-set!
                           _%table98006%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98029%_ '1))
                           (_%method-specializer-table-update!98002%_
                            _%default98003%_))
                          ((lambda ()
                             (let ((__tmp102613
                                    (let ((__tmp102614
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98000%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102614 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98000%_
                                __tmp102613)))))
                        (begin
                          (vector-set!
                           _%table98006%_
                           _%probe98025%_
                           _%key98001%_)
                          (vector-set!
                           _%table98006%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98025%_ '1))
                           (_%method-specializer-table-update!98002%_
                            _%default98003%_))
                          ((lambda ()
                             (let ((__tmp102615
                                    (let ((__tmp102616
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98000%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102616 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98000%_ __tmp102615))
                             (let ((__tmp102617
                                    (let ((__tmp102618
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98000%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102618 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98000%_
                                __tmp102617))))))
                    (if (eq? _%k98032%_ (macro-deleted-obj))
                        (_%loop98022%_
                         (let ((_%next-probe98039%_
                                (fx+ _%start98018%_
                                     _%i98027%_
                                     (fx* _%i98027%_ _%i98027%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98039%_ _%size98012%_))
                         (let () (declare (not safe)) (##fx+ _%i98027%_ '1))
                         (let ((_%$e98042%_ _%deleted98029%_))
                           (if _%$e98042%_ _%$e98042%_ _%probe98025%_)))
                        (if (eq? _%key98001%_ _%k98032%_)
                            (let ()
                              (vector-set!
                               _%table98006%_
                               _%probe98025%_
                               _%key98001%_)
                              (vector-set!
                               _%table98006%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98025%_ '1))
                               (_%method-specializer-table-update!98002%_
                                (vector-ref
                                 _%table98006%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98025%_ '1))))))
                            (_%loop98022%_
                             (let ((_%next-probe98047%_
                                    (fx+ _%start98018%_
                                         _%i98027%_
                                         (fx* _%i98027%_ _%i98027%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98047%_ _%size98012%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98027%_ '1))
                             _%deleted98029%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97955%_ _%key97957%_)
        (let ((_%table97960%_
               (let () (declare (not safe)) (&raw-table-table _%tab97955%_)))
              (_%seed97962%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97955%_))))
          (let* ((_%h97965%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97957%_))
                         _%seed97962%_))
                 (_%size97968%_ (vector-length _%table97960%_))
                 (_%entries97971%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97968%_ '2)))
                 (_%start97974%_
                  (let ((__tmp102619
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97965%_ _%entries97971%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102619 '1))))
            (let _%loop97978%_ ((_%probe97981%_ _%start97974%_)
                                (_%i97983%_ '1))
              (let ((_%k97986%_ (vector-ref _%table97960%_ _%probe97981%_)))
                (if (eq? _%k97986%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97986%_ (macro-deleted-obj))
                        (_%loop97978%_
                         (let ((_%next-probe97991%_
                                (fx+ _%start97974%_
                                     _%i97983%_
                                     (fx* _%i97983%_ _%i97983%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97991%_ _%size97968%_))
                         (let () (declare (not safe)) (##fx+ _%i97983%_ '1)))
                        (if (eq? _%key97957%_ _%k97986%_)
                            (let ()
                              (vector-set!
                               _%table97960%_
                               _%probe97981%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97960%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97981%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102620
                                        (let ((__tmp102621
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97955%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102621 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97955%_
                                    __tmp102620)))))
                            (_%loop97978%_
                             (let ((_%next-probe97997%_
                                    (fx+ _%start97974%_
                                         _%i97983%_
                                         (fx* _%i97983%_ _%i97983%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97997%_ _%size97968%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97983%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97946%_ _%specializer97947%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97951%_ ()
            (if (let ((__tmp102622
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102622 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97951%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97946%_
         _%specializer97947%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97936%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97940%_ ()
            (if (let ((__tmp102623
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102623 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97940%_)))))
        (let ((_%specializer97944%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97936%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97944%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97934%_)
        (let ((__tmp102624
               (let () (declare (not safe)) (##type-id _%klass97934%_))))
          (declare (not safe))
          (symbolic-hash __tmp102624))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97915%_ _%seed97917%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97915%_
           __class-specializer-hash-key
           eq?
           _%seed97917%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97923%_ '#f) (_%seed97925%_ '0))
          (make-class-specializer-table__% _%size-hint97923%_ _%seed97925%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97927%_)
        (let ((_%seed97929%_ '0))
          (make-class-specializer-table__% _%size-hint97927%_ _%seed97929%_))))
    (define make-class-specializer-table
      (lambda _g102626_
        (let ((_g102625_ (let () (declare (not safe)) (##length _g102626_))))
          (cond ((let () (declare (not safe)) (##fx= _g102625_ 0))
                 (apply make-class-specializer-table__0 _g102626_))
                ((let () (declare (not safe)) (##fx= _g102625_ 1))
                 (apply make-class-specializer-table__1 _g102626_))
                ((let () (declare (not safe)) (##fx= _g102625_ 2))
                 (apply make-class-specializer-table__% _g102626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102626_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97868%_ _%key97869%_ _%default97870%_)
        (let ((_%table97872%_
               (let () (declare (not safe)) (&raw-table-table _%tab97868%_)))
              (_%seed97873%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97868%_))))
          (let* ((_%h97875%_
                  (fxxor (__class-specializer-hash-key _%key97869%_)
                         _%seed97873%_))
                 (_%size97878%_ (vector-length _%table97872%_))
                 (_%entries97881%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97878%_ '2)))
                 (_%start97884%_
                  (let ((__tmp102627
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97875%_ _%entries97881%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102627 '1))))
            (let _%loop97888%_ ((_%probe97891%_ _%start97884%_)
                                (_%i97893%_ '1)
                                (_%deleted97895%_ '#f))
              (let ((_%k97898%_ (vector-ref _%table97872%_ _%probe97891%_)))
                (if (eq? _%k97898%_ (macro-unused-obj))
                    _%default97870%_
                    (if (eq? _%k97898%_ (macro-deleted-obj))
                        (_%loop97888%_
                         (let ((_%next-probe97903%_
                                (fx+ _%start97884%_
                                     _%i97893%_
                                     (fx* _%i97893%_ _%i97893%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97903%_ _%size97878%_))
                         (let () (declare (not safe)) (##fx+ _%i97893%_ '1))
                         (let ((_%$e97906%_ _%deleted97895%_))
                           (if _%$e97906%_ _%$e97906%_ _%probe97891%_)))
                        (if (eq? _%key97869%_ _%k97898%_)
                            (vector-ref
                             _%table97872%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97891%_ '1)))
                            (_%loop97888%_
                             (let ((_%next-probe97911%_
                                    (fx+ _%start97884%_
                                         _%i97893%_
                                         (fx* _%i97893%_ _%i97893%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97911%_ _%size97878%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97893%_ '1))
                             _%deleted97895%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97864%_ _%key97865%_ _%value97866%_)
        (if (let ((__tmp102630
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97864%_)))
                  (__tmp102628
                   (let ((__tmp102629
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97864%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102629 '4))))
              (declare (not safe))
              (##fx< __tmp102630 __tmp102628))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97864%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97864%_
         _%key97865%_
         _%value97866%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97815%_ _%key97816%_ _%value97817%_)
        (let ((_%table97820%_
               (let () (declare (not safe)) (&raw-table-table _%tab97815%_)))
              (_%seed97821%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97815%_))))
          (let* ((_%h97823%_
                  (fxxor (__class-specializer-hash-key _%key97816%_)
                         _%seed97821%_))
                 (_%size97826%_ (vector-length _%table97820%_))
                 (_%entries97829%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97826%_ '2)))
                 (_%start97832%_
                  (let ((__tmp102631
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97823%_ _%entries97829%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102631 '1))))
            (let _%loop97836%_ ((_%probe97839%_ _%start97832%_)
                                (_%i97841%_ '1)
                                (_%deleted97843%_ '#f))
              (let ((_%k97846%_ (vector-ref _%table97820%_ _%probe97839%_)))
                (if (eq? _%k97846%_ (macro-unused-obj))
                    (if _%deleted97843%_
                        (begin
                          (vector-set!
                           _%table97820%_
                           _%deleted97843%_
                           _%key97816%_)
                          (vector-set!
                           _%table97820%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97843%_ '1))
                           _%value97817%_)
                          ((lambda ()
                             (let ((__tmp102632
                                    (let ((__tmp102633
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97815%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102633 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97815%_
                                __tmp102632)))))
                        (begin
                          (vector-set!
                           _%table97820%_
                           _%probe97839%_
                           _%key97816%_)
                          (vector-set!
                           _%table97820%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97839%_ '1))
                           _%value97817%_)
                          ((lambda ()
                             (let ((__tmp102634
                                    (let ((__tmp102635
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97815%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102635 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97815%_ __tmp102634))
                             (let ((__tmp102636
                                    (let ((__tmp102637
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97815%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102637 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97815%_
                                __tmp102636))))))
                    (if (eq? _%k97846%_ (macro-deleted-obj))
                        (_%loop97836%_
                         (let ((_%next-probe97853%_
                                (fx+ _%start97832%_
                                     _%i97841%_
                                     (fx* _%i97841%_ _%i97841%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97853%_ _%size97826%_))
                         (let () (declare (not safe)) (##fx+ _%i97841%_ '1))
                         (let ((_%$e97856%_ _%deleted97843%_))
                           (if _%$e97856%_ _%$e97856%_ _%probe97839%_)))
                        (if (eq? _%key97816%_ _%k97846%_)
                            (let ()
                              (vector-set!
                               _%table97820%_
                               _%probe97839%_
                               _%key97816%_)
                              (vector-set!
                               _%table97820%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97839%_ '1))
                               _%value97817%_))
                            (_%loop97836%_
                             (let ((_%next-probe97861%_
                                    (fx+ _%start97832%_
                                         _%i97841%_
                                         (fx* _%i97841%_ _%i97841%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97861%_ _%size97826%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97841%_ '1))
                             _%deleted97843%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97810%_
               _%key97811%_
               _%class-specializer-table-update!97812%_
               _%default97813%_)
        (if (let ((__tmp102640
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97810%_)))
                  (__tmp102638
                   (let ((__tmp102639
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97810%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102639 '4))))
              (declare (not safe))
              (##fx< __tmp102640 __tmp102638))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97810%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97810%_
         _%key97811%_
         _%class-specializer-table-update!97812%_
         _%default97813%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97760%_
               _%key97761%_
               _%class-specializer-table-update!97762%_
               _%default97763%_)
        (let ((_%table97766%_
               (let () (declare (not safe)) (&raw-table-table _%tab97760%_)))
              (_%seed97767%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97760%_))))
          (let* ((_%h97769%_
                  (fxxor (__class-specializer-hash-key _%key97761%_)
                         _%seed97767%_))
                 (_%size97772%_ (vector-length _%table97766%_))
                 (_%entries97775%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97772%_ '2)))
                 (_%start97778%_
                  (let ((__tmp102641
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97769%_ _%entries97775%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102641 '1))))
            (let _%loop97782%_ ((_%probe97785%_ _%start97778%_)
                                (_%i97787%_ '1)
                                (_%deleted97789%_ '#f))
              (let ((_%k97792%_ (vector-ref _%table97766%_ _%probe97785%_)))
                (if (eq? _%k97792%_ (macro-unused-obj))
                    (if _%deleted97789%_
                        (begin
                          (vector-set!
                           _%table97766%_
                           _%deleted97789%_
                           _%key97761%_)
                          (vector-set!
                           _%table97766%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97789%_ '1))
                           (_%class-specializer-table-update!97762%_
                            _%default97763%_))
                          ((lambda ()
                             (let ((__tmp102642
                                    (let ((__tmp102643
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97760%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102643 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97760%_
                                __tmp102642)))))
                        (begin
                          (vector-set!
                           _%table97766%_
                           _%probe97785%_
                           _%key97761%_)
                          (vector-set!
                           _%table97766%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97785%_ '1))
                           (_%class-specializer-table-update!97762%_
                            _%default97763%_))
                          ((lambda ()
                             (let ((__tmp102644
                                    (let ((__tmp102645
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97760%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102645 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97760%_ __tmp102644))
                             (let ((__tmp102646
                                    (let ((__tmp102647
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97760%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102647 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97760%_
                                __tmp102646))))))
                    (if (eq? _%k97792%_ (macro-deleted-obj))
                        (_%loop97782%_
                         (let ((_%next-probe97799%_
                                (fx+ _%start97778%_
                                     _%i97787%_
                                     (fx* _%i97787%_ _%i97787%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97799%_ _%size97772%_))
                         (let () (declare (not safe)) (##fx+ _%i97787%_ '1))
                         (let ((_%$e97802%_ _%deleted97789%_))
                           (if _%$e97802%_ _%$e97802%_ _%probe97785%_)))
                        (if (eq? _%key97761%_ _%k97792%_)
                            (let ()
                              (vector-set!
                               _%table97766%_
                               _%probe97785%_
                               _%key97761%_)
                              (vector-set!
                               _%table97766%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97785%_ '1))
                               (_%class-specializer-table-update!97762%_
                                (vector-ref
                                 _%table97766%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97785%_ '1))))))
                            (_%loop97782%_
                             (let ((_%next-probe97807%_
                                    (fx+ _%start97778%_
                                         _%i97787%_
                                         (fx* _%i97787%_ _%i97787%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97807%_ _%size97772%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97787%_ '1))
                             _%deleted97789%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97715%_ _%key97717%_)
        (let ((_%table97720%_
               (let () (declare (not safe)) (&raw-table-table _%tab97715%_)))
              (_%seed97722%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97715%_))))
          (let* ((_%h97725%_
                  (fxxor (__class-specializer-hash-key _%key97717%_)
                         _%seed97722%_))
                 (_%size97728%_ (vector-length _%table97720%_))
                 (_%entries97731%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97728%_ '2)))
                 (_%start97734%_
                  (let ((__tmp102648
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97725%_ _%entries97731%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102648 '1))))
            (let _%loop97738%_ ((_%probe97741%_ _%start97734%_)
                                (_%i97743%_ '1))
              (let ((_%k97746%_ (vector-ref _%table97720%_ _%probe97741%_)))
                (if (eq? _%k97746%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97746%_ (macro-deleted-obj))
                        (_%loop97738%_
                         (let ((_%next-probe97751%_
                                (fx+ _%start97734%_
                                     _%i97743%_
                                     (fx* _%i97743%_ _%i97743%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97751%_ _%size97728%_))
                         (let () (declare (not safe)) (##fx+ _%i97743%_ '1)))
                        (if (eq? _%key97717%_ _%k97746%_)
                            (let ()
                              (vector-set!
                               _%table97720%_
                               _%probe97741%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97720%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97741%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102649
                                        (let ((__tmp102650
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97715%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102650 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97715%_
                                    __tmp102649)))))
                            (_%loop97738%_
                             (let ((_%next-probe97757%_
                                    (fx+ _%start97734%_
                                         _%i97743%_
                                         (fx* _%i97743%_ _%i97743%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97757%_ _%size97728%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97743%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97701%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97701%_ 'class))
            (let ((_%klass97705%_ _%klass97701%_))
              (__specialize-class _%klass97705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass97701%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97683%_)
        (let* ((_%klass97686%_ _%klass97683%_)
               (_%$e97695%_ (__lookup-class-specializer _%klass97686%_)))
          (if _%$e97695%_
              _%$e97695%_
              (let ((_%method-table97699%_
                     (___specialize-class _%klass97686%_)))
                (__bind-class-specializer!
                 _%klass97686%_
                 _%method-table97699%_)
                _%method-table97699%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97673%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97677%_ ()
            (if (let ((__tmp102651
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102651 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97677%_)))))
        (let ((_%method-table97681%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97673%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97681%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97664%_ _%method-table97665%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97669%_ ()
            (if (let ((__tmp102652
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102652 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97669%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97664%_
         _%method-table97665%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97648%_
               _%method-table97649%_
               _%method97650%_
               _%proc97651%_)
        (let ((_%$e97653%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97649%_
                  _%method97650%_
                  '#f))))
          (if _%$e97653%_
              _%$e97653%_
              (let ((_%$e97656%_ (__lookup-method-specializer _%proc97651%_)))
                (if _%$e97656%_
                    ((lambda (_%specialize97659%_)
                       (let ((_%specialized-proc97661%_
                              (_%specialize97659%_
                               _%klass97648%_
                               _%method-table97649%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97649%_
                          _%method97650%_
                          _%specialized-proc97661%_)))
                     _%$e97656%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97649%_
                       _%method97650%_
                       _%proc97651%_))))))))
    (define ___specialize-class
      (lambda (_%klass97590%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97590%_ 'class))
            (if (__class-type-metaclass? _%klass97590%_)
                (let ((__method102498
                       (__method-ref _%klass97590%_ 'specialize-class)))
                  (if __method102498
                      (let ()
                        (declare (not safe))
                        (__method102498 _%klass97590%_))
                      (begin
                        (error '"Missing method"
                               _%klass97590%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102653
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97590%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102653))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97590%_)
                    (let ((_%method-table97596%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97598%_ ((_%rest97600%_
                                           (__class-precedence-list
                                            _%klass97590%_)))
                        (let* ((_%rest9760197609%_ _%rest97600%_)
                               (_%else9760397617%_
                                (lambda () _%method-table97596%_))
                               (_%K9760597636%_
                                (lambda (_%rest97620%_ _%xklass97621%_)
                                  (let ((_%xmethod-table9762297624%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97621%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9762297624%_
                                        (let* ((_%xmethod-table97627%_
                                                _%xmethod-table9762297624%_)
                                               (__tmp102654
                                                (lambda (_%g9762897631%_
                                                         _%g9762997633%_)
                                                  (__specialize-method
                                                   _%klass97590%_
                                                   _%method-table97596%_
                                                   _%g9762897631%_
                                                   _%g9762997633%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97627%_
                                           __tmp102654))
                                        '#f))
                                  (_%loop97598%_ _%rest97620%_))))
                          (if (pair? _%rest9760197609%_)
                              (let ((_%hd9760697639%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9760197609%_)))
                                    (_%tl9760797641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9760197609%_))))
                                (let* ((_%xklass97644%_ _%hd9760697639%_)
                                       (_%rest97646%_ _%tl9760797641%_))
                                  (_%K9760597636%_
                                   _%rest97646%_
                                   _%xklass97644%_)))
                              (_%else9760397617%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97590%_))
                (__specialize-class (__shadow-class _%klass97590%_))
                (error '"bad class; cannot specialize" _%klass97590%_)))))
    (define seal-class!
      (lambda (_%klass97576%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97576%_ 'class))
            (let ((_%klass97580%_ _%klass97576%_))
              (__seal-class! _%klass97580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass97576%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97559%_)
        (let ((_%klass97562%_ _%klass97559%_))
          (if (__class-type-sealed? _%klass97562%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97562%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97562%_))
                (if (__class-type-metaclass? _%klass97562%_)
                    (let ((__method102499
                           (__method-ref _%klass97562%_ 'seal-class!)))
                      (if __method102499
                          (let ()
                            (declare (not safe))
                            (__method102499 _%klass97562%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97562%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102655
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97562%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102655))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97562%_)
                        (let ((_%method-table97574%_
                               (__specialize-class _%klass97562%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97562%_
                           _%method-table97574%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97562%_))))))
    (define next-method
      (lambda (_%subklass97533%_ _%obj97534%_ _%id97535%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97533%_ 'class))
            (let ((_%subklass97539%_ _%subklass97533%_))
              (if (symbol? _%id97535%_)
                  (let ((_%id97549%_ _%id97535%_))
                    (__next-method _%subklass97539%_ _%obj97534%_ _%id97549%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97535%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass97533%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97470%_ _%obj97471%_ _%id97472%_)
        (let* ((_%subklass97475%_ _%subklass97470%_) (_%id97483%_ _%id97472%_))
          (letrec ((_%find-next-method97492%_
                    (lambda (_%klass97494%_)
                      (let _%lp97496%_ ((_%rest97498%_
                                         (class-precedence-list
                                          _%klass97494%_)))
                        (let* ((_%rest9749997507%_ _%rest97498%_)
                               (_%else9750197515%_ (lambda () '#f))
                               (_%K9750397521%_
                                (lambda (_%rest97518%_ _%klass97519%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97475%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97519%_)))
                                      (__mixin-find-method
                                       _%rest97518%_
                                       _%obj97471%_
                                       _%id97483%_)
                                      (_%lp97496%_ _%rest97518%_)))))
                          (if (pair? _%rest9749997507%_)
                              (let ((_%hd9750497524%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9749997507%_)))
                                    (_%tl9750597526%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9749997507%_))))
                                (let* ((_%klass97529%_ _%hd9750497524%_)
                                       (_%rest97531%_ _%tl9750597526%_))
                                  (_%K9750397521%_
                                   _%rest97531%_
                                   _%klass97529%_)))
                              (_%else9750197515%_)))))))
            (_%find-next-method97492%_ (class-of _%obj97471%_))))))
    (define call-next-method
      (lambda (_%subklass97443%_ _%obj97444%_ _%id97445%_ . _%args97446%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97443%_ 'class))
            (let ((_%subklass97450%_ _%subklass97443%_))
              (if (symbol? _%id97445%_)
                  (let ((_%id97460%_ _%id97445%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97450%_
                             _%obj97444%_
                             _%id97460%_
                             _%args97446%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97445%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass97443%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97414%_ _%obj97415%_ _%id97416%_ . _%args97417%_)
        (let* ((_%subklass97420%_ _%subklass97414%_)
               (_%id97428%_ _%id97416%_)
               (_%$e97437%_
                (__next-method _%subklass97420%_ _%obj97415%_ _%id97428%_)))
          (if _%$e97437%_
              ((lambda (_%methodf97440%_)
                 (apply _%methodf97440%_ _%obj97415%_ _%args97417%_))
               _%$e97437%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97415%_
                     'method:
                     _%id97428%_)))))
    (define write-style
      (lambda (_%we97412%_) (values (macro-writeenv-style _%we97412%_))))
    (define write-object
      (lambda (_%we97403%_ _%obj97404%_)
        (let ((_%$e97406%_ (__method-ref _%obj97404%_ ':wr)))
          (if _%$e97406%_
              ((lambda (_%method97409%_)
                 (_%method97409%_ _%obj97404%_ _%we97403%_))
               _%$e97406%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97403%_ _%obj97404%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97318%_)
        (letrec ((_%shadow-type-id97320%_
                  (lambda (_%type97401%_)
                    (let ((__tmp102656
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97401%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102656 '"::t"))))
                 (_%shadow-type-name97321%_
                  (lambda (_%type97399%_)
                    (let () (declare (not safe)) (##type-name _%type97399%_))))
                 (_%make-shadow-class97322%_
                  (lambda (_%type97391%_ _%precedence-list97392%_)
                    (let* ((_%super97394%_
                            (if (pair? _%precedence-list97392%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97392%_))
                                      '())
                                '()))
                           (_%klass97396%_
                            (make-class-type
                             (_%shadow-type-id97320%_ _%type97391%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97391%_))
                             _%super97394%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97391%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102657
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97391%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102657
                         _%klass97396%_))
                      _%klass97396%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97326%_ ()
              (if (let ((__tmp102658
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102658 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97326%_)))))
          (let ((_%$e97330%_
                 (let ((__tmp102659
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97318%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102659 '#f))))
            (if _%$e97330%_
                ((lambda (_%klass97333%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97333%_)
                 _%$e97330%_)
                (let _%loop97336%_ ((_%super97338%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97318%_)))
                                    (_%hierarchy97339%_ '()))
                  (if (not _%super97338%_)
                      (let _%loop97342%_ ((_%rest97344%_ _%hierarchy97339%_)
                                          (_%precedence-list97345%_ '()))
                        (let* ((_%rest9734697354%_ _%rest97344%_)
                               (_%else9734897364%_
                                (lambda ()
                                  (let ((_%klass97362%_
                                         (_%make-shadow-class97322%_
                                          _%type97318%_
                                          _%precedence-list97345%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97362%_)))
                               (_%K9735097378%_
                                (lambda (_%rest97367%_ _%type97368%_)
                                  (let ((_%$e97370%_
                                         (let ((__tmp102660
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97368%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102660
                                            '#f))))
                                    (if _%$e97370%_
                                        ((lambda (_%klass97373%_)
                                           (_%loop97342%_
                                            _%rest97367%_
                                            (cons _%klass97373%_
                                                  _%precedence-list97345%_)))
                                         _%$e97370%_)
                                        (let ((_%klass97376%_
                                               (_%make-shadow-class97322%_
                                                _%type97368%_
                                                _%precedence-list97345%_)))
                                          (_%loop97342%_
                                           _%rest97367%_
                                           (cons _%klass97376%_
                                                 _%precedence-list97345%_))))))))
                          (if (pair? _%rest9734697354%_)
                              (let ((_%hd9735197381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9734697354%_)))
                                    (_%tl9735297383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9734697354%_))))
                                (let* ((_%type97386%_ _%hd9735197381%_)
                                       (_%rest97388%_ _%tl9735297383%_))
                                  (_%K9735097378%_
                                   _%rest97388%_
                                   _%type97386%_)))
                              (_%else9734897364%_))))
                      (_%loop97336%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97338%_))
                       (cons _%super97338%_ _%hierarchy97339%_)))))))))
    (define __type
      (let* ((_%tb97307%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97309%_ _%tb97307%_))
        (if (eq? '2 _%$e97309%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97309%_)
                (let ((_%flonum-self-tagging-tags97312%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97313%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97315%_ _%flonum-self-tagging-tags97312%_))
                    (if (eq? '0 _%$e97315%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97313%_ '2))
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
                        (if (eq? '1 _%$e97315%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97313%_ '2))
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
                            (if (eq? '2 _%$e97315%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97315%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97315%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97312%_))))))))
                (error '"unexpected tag width" _%tb97307%_)))))
    (define __class
      (let* ((_%len97260%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97262%_
              (let () (declare (not safe)) (##make-vector _%len97260%_ '#f))))
        (let _%loop97265%_ ((_%i97267%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97267%_ _%len97260%_))
              (let* ((_%t97269%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97267%_)))
                     (_%f97304%_
                      (if (eq? _%t97269%_ 'undefined)
                          (lambda (_%obj97272%_)
                            (error '"object type is undefined" _%obj97272%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97269%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97275%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97269%_))
                              (if (eq? _%t97269%_ 'subtyped)
                                  (lambda (_%obj97279%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97282%_
                                           (##subtype _%obj97279%_)))
                                      (if (##fx= _%st97282%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97285%_
                                                 (##structure-type
                                                  _%obj97279%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97285%_
                                                 'class)
                                                _%klass97285%_
                                                (__shadow-class
                                                 _%klass97285%_)))
                                          (if (##fx= _%st97282%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##vector-length
                                                          _%obj97279%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97288%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97282%_)))
                                                (if _%$e97288%_
                                                    (__system-class
                                                     _%$e97288%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97282%_
                                                           'object:
                                                           _%obj97279%_)))))))
                                  (if (eq? _%t97269%_ 'special)
                                      (lambda (_%obj97293%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97293%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97293%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97293%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97293%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97293%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97269%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97262%_ _%i97267%_ _%f97304%_))
                (_%loop97265%_
                 (let () (declare (not safe)) (##fx+ _%i97267%_ '1))))
              _%cv97262%_))))
    (define type-of
      (lambda (_%obj97256%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97256%_)))))
    (define class-of
      (lambda (_%obj97247%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97251%_ (##type _%obj97247%_))
                 (_%f97253%_ (##vector-ref __class _%t97251%_)))
            (_%f97253%_ _%obj97247%_)))))
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
      (lambda (_%id97241%_)
        (let ((_%$e97243%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97241%_ '#f))))
          (if _%$e97243%_
              _%$e97243%_
              (error '"unknown system class" _%id97241%_)))))
    (define __make-system-class
      (lambda (_%id97236%_ _%super97237%_)
        (let ((_%klass97239%_
               (make-class-type
                _%id97236%_
                _%id97236%_
                _%super97237%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97236%_ _%klass97239%_))
          _%klass97239%_)))))
