(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712084084)
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
      (let ((_%flags96012%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96013%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96014%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96012%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96014%_
           _%properties96013%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots95988%_
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
             (_%slot-vector95990%_ (list->vector (cons '#f _%slots95988%_)))
             (_%slot-table95997%_
              (let ((_%slot-table95992%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97460
                       (lambda (_%slot95994%_ _%field95995%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table95992%_
                            _%slot95994%_
                            _%field95995%_))
                         (let ((__tmp97461
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot95994%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table95992%_
                            __tmp97461
                            _%field95995%_))))
                      (__tmp97458
                       (let ((__tmp97459
                              (let ()
                                (declare (not safe))
                                (##length _%slots95988%_))))
                         (declare (not safe))
                         (##iota __tmp97459 '1))))
                  (declare (not safe))
                  (##for-each __tmp97460 _%slots95988%_ __tmp97458))
                _%slot-table95992%_))
             (_%flags95999%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96005%_
              (list->vector
               (let ((__tmp97462
                      (map (lambda (_%g9600096002%_)
                             (list _%g9600096002%_ '5 '#f))
                           (drop _%slots95988%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97462))))
             (_%properties96007%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots95988%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96009%_
              (let ((__tmp97463 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags95999%_
                 ##type-type
                 _%fields96005%_
                 __tmp97463
                 _%slot-vector95990%_
                 _%slot-table95997%_
                 _%properties96007%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96009%_ _%t96009%_))
        _%t96009%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags95984%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties95985%_ '((direct-slots:) (system: . #t)))
            (_%slot-table95986%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97464 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags95984%_
           '#f
           '#()
           __tmp97464
           '#(#f)
           _%slot-table95986%_
           _%properties95985%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj95982%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj95982%_ 'class))))
    (define class-type=?
      (lambda (_%x95957%_ _%y95958%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x95957%_ 'class))
              (let ()
                (let ((_%x95962%_ _%x95957%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%y95958%_ 'class))
                      (let ()
                        (let ((_%y95972%_ _%y95958%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-type=? _%x95962%_ _%y95972%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y95958%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x95957%_)))))
    (define __class-type=?
      (lambda (_%x95936%_ _%y95937%_)
        (let ()
          (let ((_%x95940%_ _%x95936%_))
            (let ((_%y95948%_ _%y95937%_))
              (let ()
                (eq? (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%x95940%_ '1 '#f '#f))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%y95948%_
                        '1
                        '#f
                        '#f)))))))))
    (define type-opaque?
      (lambda (_%type95922%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type95922%_))
              (let ()
                (let ((_%type95926%_ _%type95922%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-opaque? _%type95926%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type95922%_)))))
    (define __type-opaque?
      (lambda (_%type95910%_)
        (let ()
          (let ((_%type95913%_ _%type95910%_))
            (let ()
              (let ((__tmp97465
                     (let ((__tmp97466
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95913%_))))
                       (declare (not safe))
                       (##fxand __tmp97466 type-flag-opaque))))
                (declare (not safe))
                (##fx= __tmp97465 type-flag-opaque)))))))
    (define type-extensible?
      (lambda (_%type95896%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type95896%_))
              (let ()
                (let ((_%type95900%_ _%type95896%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-extensible? _%type95900%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type95896%_)))))
    (define __type-extensible?
      (lambda (_%type95884%_)
        (let ()
          (let ((_%type95887%_ _%type95884%_))
            (let ()
              (let ((__tmp97467
                     (let ((__tmp97468
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95887%_))))
                       (declare (not safe))
                       (##fxand __tmp97468 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97467 type-flag-extensible)))))))
    (define class-type-final?
      (lambda (_%type95870%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type95870%_ 'class))
              (let ()
                (let ((_%type95874%_ _%type95870%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-final? _%type95874%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type95870%_)))))
    (define __class-type-final?
      (lambda (_%type95858%_)
        (let ()
          (let ((_%type95861%_ _%type95858%_))
            (let ()
              (let ((__tmp97469
                     (let ((__tmp97470
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95861%_))))
                       (declare (not safe))
                       (##fxand __tmp97470 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97469 '0)))))))
    (define class-type-struct?
      (lambda (_%klass95844%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95844%_ 'class))
              (let ()
                (let ((_%klass95848%_ _%klass95844%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95848%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass95844%_)))))
    (define __class-type-struct?
      (lambda (_%klass95832%_)
        (let ()
          (let ((_%klass95835%_ _%klass95832%_))
            (let ()
              (let ((__tmp97471
                     (let ((__tmp97472
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95835%_))))
                       (declare (not safe))
                       (##fxand __tmp97472 class-type-flag-struct))))
                (declare (not safe))
                (##fx= __tmp97471 class-type-flag-struct)))))))
    (define class-type-sealed?
      (lambda (_%klass95818%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95818%_ 'class))
              (let ()
                (let ((_%klass95822%_ _%klass95818%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass95822%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass95818%_)))))
    (define __class-type-sealed?
      (lambda (_%klass95806%_)
        (let ()
          (let ((_%klass95809%_ _%klass95806%_))
            (let ()
              (let ((__tmp97473
                     (let ((__tmp97474
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95809%_))))
                       (declare (not safe))
                       (##fxand __tmp97474 class-type-flag-sealed))))
                (declare (not safe))
                (##fx= __tmp97473 class-type-flag-sealed)))))))
    (define class-type-metaclass?
      (lambda (_%klass95792%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95792%_ 'class))
              (let ()
                (let ((_%klass95796%_ _%klass95792%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass95796%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass95792%_)))))
    (define __class-type-metaclass?
      (lambda (_%klass95780%_)
        (let ()
          (let ((_%klass95783%_ _%klass95780%_))
            (let ()
              (let ((__tmp97475
                     (let ((__tmp97476
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95783%_))))
                       (declare (not safe))
                       (##fxand __tmp97476 class-type-flag-metaclass))))
                (declare (not safe))
                (##fx= __tmp97475 class-type-flag-metaclass)))))))
    (define class-type-system?
      (lambda (_%klass95766%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95766%_ 'class))
              (let ()
                (let ((_%klass95770%_ _%klass95766%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass95770%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass95766%_)))))
    (define __class-type-system?
      (lambda (_%klass95754%_)
        (let ()
          (let ((_%klass95757%_ _%klass95754%_))
            (let ()
              (let ((__tmp97477
                     (let ((__tmp97478
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95757%_))))
                       (declare (not safe))
                       (##fxand __tmp97478 class-type-flag-system))))
                (declare (not safe))
                (##fx= __tmp97477 class-type-flag-system)))))))
    (define make-class-type-descriptor
      (lambda (_%type-id95639%_
               _%type-name95640%_
               _%type-super95641%_
               _%precedence-list95642%_
               _%slot-vector95643%_
               _%properties95644%_
               _%constructor95645%_
               _%slot-table95646%_
               _%methods95647%_)
        (let ()
          (letrec ((_%make-props!95650%_
                    (lambda (_%key95723%_)
                      (letrec* ((_%ht95725%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!95726%_
                                 (lambda (_%ht95747%_ _%slots95748%_)
                                   (for-each
                                    (lambda (_%g9574995751%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht95747%_
                                         _%g9574995751%_
                                         '#t)))
                                    _%slots95748%_)))
                                (_%put-alist!95727%_
                                 (lambda (_%ht95736%_
                                          _%key95737%_
                                          _%alist95738%_)
                                   (let ((_%$e95740%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95737%_
                                             _%alist95738%_))))
                                     (if _%$e95740%_
                                         ((lambda (_%g9574295744%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!95726%_
                                               _%ht95736%_
                                               _%g9574295744%_)))
                                          _%$e95740%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!95727%_
                           _%ht95725%_
                           _%key95723%_
                           _%properties95644%_))
                        (for-each
                         (lambda (_%mixin95729%_)
                           (let ((_%alist95731%_
                                  (##structure-ref
                                   _%mixin95729%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist95731%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95723%_
                                             _%alist95731%_))))
                                 (let ((__tmp97479
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin95729%_))))
                                   (declare (not safe))
                                   (_%put-slots!95726%_
                                    _%ht95725%_
                                    __tmp97479))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!95727%_
                                    _%ht95725%_
                                    _%key95723%_
                                    _%alist95731%_)))))
                         _%precedence-list95642%_)
                        _%ht95725%_))))
            (let* ((_%transparent?95652%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties95644%_)))
                   (_%all-slots-printable?95657%_
                    (let ((_%$e95654%_ _%transparent?95652%_))
                      (if _%$e95654%_
                          _%$e95654%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties95644%_))))))
                   (_%printable95659%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?95657%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95650%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?95664%_
                    (let ((_%$e95661%_ _%transparent?95652%_))
                      (if _%$e95661%_
                          _%$e95661%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties95644%_))))))
                   (_%equalable95666%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?95664%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95650%_ 'equal:))
                        '#f))
                   (_%first-new-field95668%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super95641%_
                           'class))
                        (let ((__tmp97480
                               (##structure-ref
                                _%type-super95641%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp97480))
                        '1))
                   (_%field-info-length95670%_
                    (let ((__tmp97481
                           (let ((__tmp97482
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector95643%_))))
                             (declare (not safe))
                             (##fx- __tmp97482 _%first-new-field95668%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp97481)))
                   (_%field-info95672%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length95670%_ '#f)))
                   (_%struct?95674%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties95644%_)))
                   (_%final?95676%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties95644%_)))
                   (_%metaclass95684%_
                    (let ((_%metaclass9567795679%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties95644%_))))
                      (if _%metaclass9567795679%_
                          (let ((_%metaclass95682%_ _%metaclass9567795679%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass95682%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id95639%_
                                       'metaclass:
                                       _%metaclass95682%_))
                            _%metaclass95682%_)
                          '#f)))
                   (_%system?95686%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties95644%_)))
                   (_%opaque?95691%_
                    (let ((_%$e95688%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?95664%_))))
                      (if _%$e95688%_
                          _%$e95688%_
                          (if _%type-super95641%_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _%type-super95641%_))
                              '#f))))
                   (_%type-flags95693%_
                    (let ((__tmp97487
                           (if _%final?95676%_ '0 type-flag-extensible))
                          (__tmp97486
                           (if _%opaque?95691%_ type-flag-opaque '0))
                          (__tmp97485
                           (if _%struct?95674%_ class-type-flag-struct '0))
                          (__tmp97484
                           (if _%metaclass95684%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp97483
                           (if _%system?95686%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp97487
                               __tmp97486
                               __tmp97485
                               __tmp97484
                               __tmp97483)))
                   (_%precedence-list95701%_
                    (let ((_%$e95695%_ (memq t::t _%precedence-list95642%_)))
                      (if _%$e95695%_
                          ((lambda (_%tail95698%_)
                             (if (let ((__tmp97488 (cdr _%tail95698%_)))
                                   (declare (not safe))
                                   (null? __tmp97488))
                                 _%precedence-list95642%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list95642%_)))
                           _%$e95695%_)
                          (let ()
                            (let ((__tmp97489 (cons t::t '())))
                              (declare (not safe))
                              (##append
                               _%precedence-list95642%_
                               __tmp97489)))))))
              (let _%loop95704%_ ((_%i95706%_ _%first-new-field95668%_)
                                  (_%j95707%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j95707%_ _%field-info-length95670%_))
                    (let* ((_%slot95709%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector95643%_ _%i95706%_)))
                           (_%flags95717%_
                            (if _%transparent?95652%_
                                '0
                                (let ((__tmp97491
                                       (if (or _%all-slots-printable?95657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable95659%_
                                                  _%slot95709%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp97490
                                       (if (or _%all-slots-equalable?95664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable95666%_
                                                  _%slot95709%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp97491 __tmp97490)))))
                      (vector-set!
                       _%field-info95672%_
                       _%j95707%_
                       _%slot95709%_)
                      (vector-set!
                       _%field-info95672%_
                       (let () (declare (not safe)) (##fx+ _%j95707%_ '1))
                       _%flags95717%_)
                      (let ((__tmp97493
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95706%_ '1)))
                            (__tmp97492
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j95707%_ '3))))
                        (declare (not safe))
                        (_%loop95704%_ __tmp97493 __tmp97492)))
                    '#!void))
              (if _%metaclass95684%_
                  (let ((_%val95720%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass95684%_
                            _%type-id95639%_
                            _%type-name95640%_
                            _%type-flags95693%_
                            _%type-super95641%_
                            _%field-info95672%_
                            _%precedence-list95701%_
                            _%slot-vector95643%_
                            _%slot-table95646%_
                            _%properties95644%_
                            _%constructor95645%_
                            _%methods95647%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val95720%_ 'class))
                        _%val95720%_
                        (error '"bad cast" class::t _%val95720%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id95639%_
                     _%type-name95640%_
                     _%type-flags95693%_
                     _%type-super95641%_
                     _%field-info95672%_
                     _%precedence-list95701%_
                     _%slot-vector95643%_
                     _%slot-table95646%_
                     _%properties95644%_
                     _%constructor95645%_
                     _%methods95647%_))))))))
    (define class-type-id
      (lambda (_%klass95637%_)
        (##structure-ref _%klass95637%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95635%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95635%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95632%_ _%val95633%_)
        (##structure-set! _%klass95632%_ _%val95633%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95627%_ _%val95629%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95627%_
           _%val95629%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95625%_)
        (##structure-ref _%klass95625%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95623%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95623%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95620%_ _%val95621%_)
        (##structure-set! _%klass95620%_ _%val95621%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95615%_ _%val95617%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95615%_
           _%val95617%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95613%_)
        (##structure-ref _%klass95613%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95611%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95611%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95608%_ _%val95609%_)
        (##structure-set! _%klass95608%_ _%val95609%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95603%_ _%val95605%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95603%_
           _%val95605%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95601%_)
        (##structure-ref _%klass95601%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95599%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95599%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95596%_ _%val95597%_)
        (##structure-set! _%klass95596%_ _%val95597%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95591%_ _%val95593%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95591%_
           _%val95593%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95589%_)
        (##structure-ref _%klass95589%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95587%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95587%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95584%_ _%val95585%_)
        (##structure-set! _%klass95584%_ _%val95585%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95579%_ _%val95581%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95579%_
           _%val95581%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95577%_)
        (##structure-ref _%klass95577%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95575%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95575%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95572%_ _%val95573%_)
        (##structure-set!
         _%klass95572%_
         _%val95573%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95567%_ _%val95569%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95567%_
           _%val95569%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95565%_)
        (##structure-ref _%klass95565%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95563%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95563%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95560%_ _%val95561%_)
        (##structure-set!
         _%klass95560%_
         _%val95561%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95555%_ _%val95557%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95555%_
           _%val95557%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95553%_)
        (##structure-ref _%klass95553%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95551%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95551%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95548%_ _%val95549%_)
        (##structure-set!
         _%klass95548%_
         _%val95549%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95543%_ _%val95545%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95543%_
           _%val95545%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95541%_)
        (##structure-ref _%klass95541%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95539%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95539%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95536%_ _%val95537%_)
        (##structure-set!
         _%klass95536%_
         _%val95537%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95531%_ _%val95533%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95531%_
           _%val95533%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95529%_)
        (##structure-ref _%klass95529%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95527%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95527%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95524%_ _%val95525%_)
        (##structure-set!
         _%klass95524%_
         _%val95525%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95519%_ _%val95521%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95519%_
           _%val95521%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95517%_)
        (##structure-ref _%klass95517%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95515%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95515%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95512%_ _%val95513%_)
        (##structure-set! _%klass95512%_ _%val95513%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95507%_ _%val95509%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95507%_
           _%val95509%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95493%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95493%_ 'class))
              (let ()
                (let ((_%klass95497%_ _%klass95493%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-slot-list _%klass95497%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass95493%_)))))
    (define __class-type-slot-list
      (lambda (_%klass95481%_)
        (let ()
          (let ((_%klass95484%_ _%klass95481%_))
            (let ()
              (cdr (vector->list
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95484%_
                       '7
                       '#f
                       '#f)))))))))
    (define class-type-field-count
      (lambda (_%klass95467%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95467%_ 'class))
              (let ()
                (let ((_%klass95471%_ _%klass95467%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-field-count _%klass95471%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass95467%_)))))
    (define __class-type-field-count
      (lambda (_%klass95455%_)
        (let ()
          (let ((_%klass95458%_ _%klass95455%_))
            (let ()
              (let ((__tmp97494
                     (let ((__tmp97495
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass95458%_
                               '7
                               '#f
                               '#f))))
                       (declare (not safe))
                       (##vector-length __tmp97495))))
                (declare (not safe))
                (##fx- __tmp97494 '1)))))))
    (define class-type-seal!
      (lambda (_%klass95441%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95441%_ 'class))
              (let ()
                (let ((_%klass95445%_ _%klass95441%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass95445%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass95441%_)))))
    (define __class-type-seal!
      (lambda (_%klass95429%_)
        (let ()
          (let ((_%klass95432%_ _%klass95429%_))
            (let ()
              (let ((__tmp97496
                     (let ((__tmp97497
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95432%_))))
                       (declare (not safe))
                       (##fxior class-type-flag-sealed __tmp97497))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%klass95432%_
                 __tmp97496
                 '3
                 class::t
                 class-type-seal!))
              '#!void)))))
    (define substruct?
      (lambda (_%maybe-sub-struct95404%_ _%maybe-super-struct95405%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct95404%_ 'class))
              (let ()
                (let ((_%maybe-sub-struct95409%_ _%maybe-sub-struct95404%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-struct95405%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-struct95419%_
                               _%maybe-super-struct95405%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__substruct?
                               _%maybe-sub-struct95409%_
                               _%maybe-super-struct95419%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct95405%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct95404%_)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95373%_ _%maybe-super-struct95374%_)
        (let ()
          (let ((_%maybe-sub-struct95377%_ _%maybe-sub-struct95373%_))
            (let ((_%maybe-super-struct95385%_ _%maybe-super-struct95374%_))
              (let ()
                (let ((_%maybe-super-struct-id95394%_
                       (let ()
                         (declare (not safe))
                         (##type-id _%maybe-super-struct95385%_))))
                  (let _%lp95396%_ ((_%super-struct95398%_
                                     _%maybe-sub-struct95377%_))
                    (let ()
                      (if (let ()
                            (declare (not safe))
                            (not _%super-struct95398%_))
                          (let () '#f)
                          (if (eq? _%maybe-super-struct-id95394%_
                                   (let ()
                                     (declare (not safe))
                                     (##type-id _%super-struct95398%_)))
                              (let () '#t)
                              (let ()
                                (let ((__tmp97498
                                       (let ()
                                         (declare (not safe))
                                         (##type-super
                                          _%super-struct95398%_))))
                                  (declare (not safe))
                                  (_%lp95396%_ __tmp97498))))))))))))))
    (define base-struct/1
      (lambda (_%klass95368%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95368%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass95368%_))
                  _%klass95368%_
                  (let () (declare (not safe)) (##type-super _%klass95368%_))))
            (if (let () (declare (not safe)) (not _%klass95368%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass95368%_))))))
    (define base-struct/2
      (lambda (_%klass195353%_ _%klass295354%_)
        (let ((_%s195356%_
               (let () (declare (not safe)) (base-struct/1 _%klass195353%_)))
              (_%s295357%_
               (let () (declare (not safe)) (base-struct/1 _%klass295354%_))))
          (if (or (let () (declare (not safe)) (not _%s195356%_))
                  (and _%s295357%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s195356%_ _%s295357%_))))
              (let () _%s295357%_)
              (if (or (let () (declare (not safe)) (not _%s295357%_))
                      (and _%s195356%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s295357%_ _%s195356%_))))
                  (let () _%s195356%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass195353%_
                           _%klass295354%_
                           _%s195356%_
                           _%s295357%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95237%_)
        (let* ((_%all-supers9523895263%_ _%all-supers95237%_)
               (_%E9524395267%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9523895263%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9526195350%_ (lambda () '#f))
                (_%K9525895336%_
                 (lambda (_%x95334%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95334%_))))
                (_%K9525395313%_
                 (lambda (_%y95310%_ _%x95311%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95311%_ _%y95310%_))))
                (_%K9524495274%_
                 (lambda (_%y95271%_ _%x95272%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95272%_ _%y95271%_)))))
            (let* ((_%__match9745297453%_
                    (lambda (_%hd9524595277%_ _%tl9524695279%_)
                      (let ((_%x95282%_ _%hd9524595277%_))
                        (letrec ((_%splice-rest9524895284%_
                                  (lambda (_%rest9525295291%_ _%y95293%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9525295291%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9524495274%_
                                           _%y95293%_
                                           _%x95282%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9524395267%_)))))
                                 (_%splice-try9525095286%_
                                  (lambda (_%hd9525195295%_
                                           _%rest9525295297%_
                                           _%y9524795298%_)
                                    (let ((_%y95301%_ _%hd9525195295%_))
                                      (let ((__tmp97500
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9525295297%_)))
                                            (__tmp97499
                                             (cons _%y95301%_
                                                   _%y9524795298%_)))
                                        (declare (not safe))
                                        (_%splice-loop9524995288%_
                                         __tmp97500
                                         __tmp97499)))))
                                 (_%splice-loop9524995288%_
                                  (lambda (_%rest9525295303%_ _%y9524795304%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9525295303%_))
                                        (let ((__tmp97501
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9525295303%_))))
                                          (declare (not safe))
                                          (_%splice-try9525095286%_
                                           __tmp97501
                                           _%rest9525295303%_
                                           _%y9524795304%_))
                                        (let ((__tmp97502
                                               (reverse _%y9524795304%_)))
                                          (declare (not safe))
                                          (_%splice-rest9524895284%_
                                           _%rest9525295303%_
                                           __tmp97502))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9524995288%_
                             _%tl9524695279%_
                             '()))))))
                   (_%try-match9524095346%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9523895263%_))
                          (let ((_%tl9526095341%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9523895263%_)))
                                (_%hd9525995339%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9523895263%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9526095341%_))
                                (let ((_%x95344%_ _%hd9525995339%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95344%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9526095341%_))
                                    (let ((_%tl9525795325%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9526095341%_)))
                                          (_%hd9525695323%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9526095341%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9525795325%_))
                                          (let ((_%x95321%_ _%hd9525995339%_)
                                                (_%y95328%_ _%hd9525695323%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9525395313%_
                                               _%y95328%_
                                               _%x95321%_)))
                                          (_%__match9745297453%_
                                           _%hd9525995339%_
                                           _%tl9526095341%_)))
                                    (_%__match9745297453%_
                                     _%hd9525995339%_
                                     _%tl9526095341%_))))
                          (let () (declare (not safe)) (_%E9524395267%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9523895263%_))
                  (let () (declare (not safe)) (_%K9526195350%_))
                  (let () (declare (not safe)) (_%try-match9524095346%_))))))))
    (define base-struct
      (lambda _%all-supers95235%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95235%_))))
    (define find-super-constructor
      (lambda (_%super95186%_)
        (let _%lp95188%_ ((_%rest95190%_ _%super95186%_)
                          (_%constructor95191%_ '#f))
          (let* ((_%rest9519295200%_ _%rest95190%_)
                 (_%else9519495208%_ (lambda () _%constructor95191%_))
                 (_%K9519695223%_
                  (lambda (_%rest95211%_ _%hd95212%_)
                    (let ((_%$e95214%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95212%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95214%_
                          ((lambda (_%xconstructor95217%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95191%_))
                                     (eq? _%constructor95191%_
                                          _%xconstructor95217%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95188%_
                                    _%rest95211%_
                                    _%xconstructor95217%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95191%_
                                        _%xconstructor95217%_)))
                           _%$e95214%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (_%lp95188%_
                               _%rest95211%_
                               _%constructor95191%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9519295200%_))
                (let ((_%hd9519795226%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9519295200%_)))
                      (_%tl9519895228%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9519295200%_))))
                  (let* ((_%hd95231%_ _%hd9519795226%_)
                         (_%rest95233%_ _%tl9519895228%_))
                    (declare (not safe))
                    (_%K9519695223%_ _%rest95233%_ _%hd95231%_)))
                (let () (declare (not safe)) (_%else9519495208%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95162%_ _%direct-slots95163%_)
        (let* ((_%next-slot95165%_ '1)
               (_%slot-table95167%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95169%_ '(__class))
               (_%process-slot95173%_
                (lambda (_%slot95171%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95171%_))
                      '#!void
                      (error '"invalid slot name" _%slot95171%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95167%_
                              _%slot95171%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95167%_
                           _%slot95171%_
                           _%next-slot95165%_))
                        (let ((__tmp97503
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95171%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95167%_
                           __tmp97503
                           _%next-slot95165%_))
                        (set! _%r-slots95169%_
                              (cons _%slot95171%_ _%r-slots95169%_))
                        (set! _%next-slot95165%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95165%_ '1))))
                      '#!void)))
               (_%process-slots95179%_
                (lambda (_%g9517495176%_)
                  (for-each _%process-slot95173%_ _%g9517495176%_))))
          (let ((__tmp97505
                 (lambda (_%mixin95182%_)
                   (let ((__tmp97506
                          (let ((__tmp97507
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95182%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp97507 '()))))
                     (declare (not safe))
                     (_%process-slots95179%_ __tmp97506))))
                (__tmp97504 (reverse _%class-precedence-list95162%_)))
            (declare (not safe))
            (##for-each __tmp97505 __tmp97504))
          (let ()
            (declare (not safe))
            (_%process-slots95179%_ _%direct-slots95163%_))
          (let ((_%slot-vector95184%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95169%_)))))
            (values _%slot-vector95184%_ _%slot-table95167%_)))))
    (define make-class-type
      (lambda (_%id95087%_
               _%name95088%_
               _%direct-supers95089%_
               _%direct-slots95090%_
               _%properties95091%_
               _%constructor95092%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95087%_))
              (let ()
                (let ((_%id95096%_ _%id95087%_))
                  (if (let () (declare (not safe)) (symbol? _%name95088%_))
                      (let ()
                        (let ((_%name95106%_ _%name95088%_))
                          (if (let ()
                                (declare (not safe))
                                (list? _%direct-supers95089%_))
                              (let ()
                                (let ((_%direct-supers95116%_
                                       _%direct-supers95089%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%direct-slots95090%_))
                                      (let ()
                                        (let ((_%direct-slots95126%_
                                               _%direct-slots95090%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (list? _%properties95091%_))
                                              (let ()
                                                (let ((_%properties95136%_
                                                       _%properties95091%_))
                                                  (if ((lambda (_%$obj95145%_)
                                                         (or (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (not _%$obj95145%_))
                     (let () (declare (not safe)) (symbol? _%$obj95145%_))))
               _%constructor95092%_)
              (let ()
                (let ((_%constructor95152%_ _%constructor95092%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-type
                       _%id95096%_
                       _%name95106%_
                       _%direct-supers95116%_
                       _%direct-slots95126%_
                       _%properties95136%_
                       _%constructor95152%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
               'contract:
               '(? (or not symbol?))
               'value:
               _%constructor95092%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                               'contract:
                                               'list?
                                               'value:
                                               _%properties95091%_))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                       'contract:
                                       'list?
                                       'value:
                                       _%direct-slots95090%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                               'contract:
                               'list?
                               'value:
                               _%direct-supers95089%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95088%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95087%_)))))
    (define __make-class-type
      (lambda (_%id94956%_
               _%name94957%_
               _%direct-supers94958%_
               _%direct-slots94959%_
               _%properties94960%_
               _%constructor94961%_)
        (let ()
          (let ((_%id94964%_ _%id94956%_))
            (let ((_%name94972%_ _%name94957%_))
              (let ((_%direct-supers94980%_ _%direct-supers94958%_))
                (let ((_%direct-slots94988%_ _%direct-slots94959%_))
                  (let ((_%properties94996%_ _%properties94960%_))
                    (let ((_%constructor95004%_ _%constructor94961%_))
                      (let ()
                        (let ((_%$e95016%_
                               (let ((__tmp97508
                                      (lambda (_%$obj95013%_)
                                        (let ((__tmp97509
                                               (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _%$obj95013%_
                                                  'class))))
                                          (declare (not safe))
                                          (not __tmp97509)))))
                                 (declare (not safe))
                                 (__find __tmp97508 _%direct-supers94980%_))))
                          (if _%$e95016%_
                              ((lambda (_%g9501895020%_)
                                 (error '"Illegal super class; not a class descriptor"
                                        _%g9501895020%_))
                               _%$e95016%_)
                              (let ((_%$e95023%_
                                     (let ()
                                       (declare (not safe))
                                       (__find __class-type-final?
                                               _%direct-supers94980%_))))
                                (if _%$e95023%_
                                    ((lambda (_%g9502595027%_)
                                       (error '"Cannot extend final class"
                                              _%g9502595027%_))
                                     _%$e95023%_)
                                    '#!void))))
                        (let ((_g97510_
                               (let ()
                                 (declare (not safe))
                                 (compute-precedence-list
                                  _%direct-supers94980%_))))
                          (begin
                            (let ((_g97511_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97510_)
                                         (##vector-length _g97510_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97511_ 2)))
                                  (error "Context expects 2 values" _g97511_)))
                            (let ((_%precedence-list95030%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97510_ 0)))
                                  (_%struct-super95031%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97510_ 1))))
                              (let ((_g97512_
                                     (let ()
                                       (declare (not safe))
                                       (compute-class-slots
                                        _%precedence-list95030%_
                                        _%direct-slots94988%_))))
                                (begin
                                  (let ((_g97513_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97512_)
                                               (##vector-length _g97512_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97513_ 2)))
                                        (error "Context expects 2 values"
                                               _g97513_)))
                                  (let ((_%slot-vector95033%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97512_ 0)))
                                        (_%slot-table95034%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97512_ 1))))
                                    (let* ((_%properties95036%_
                                            (cons (cons 'direct-slots:
                                                        _%direct-slots94988%_)
                                                  (cons (cons 'direct-supers:
                                                              _%direct-supers94980%_)
                                                        _%properties94996%_)))
                                           (_%constructor*95041%_
                                            (let ((_%$e95038%_
                                                   _%constructor95004%_))
                                              (if _%$e95038%_
                                                  _%$e95038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (find-super-constructor
                                                     _%direct-supers94980%_)))))
                                           (_%precedence-list95084%_
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (agetq__0
                                                       'system:
                                                       _%properties95036%_))
                                                    (memq object::t
                                                          _%precedence-list95030%_))
                                                _%precedence-list95030%_
                                                (let _%loop95046%_ ((_%tail95048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%precedence-list95030%_)
                            (_%head95049%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%tail9505095058%_
                                                          _%tail95048%_)
                                                         (_%else9505295066%_
                                                          (lambda ()
                                                            (let ((__tmp97514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons object::t (cons t::t '()))))
                      (declare (not safe))
                      (__foldl1 cons __tmp97514 _%head95049%_))))
                 (_%K9505495072%_
                  (lambda (_%rest95069%_ _%hd95070%_)
                    (if (eq? _%hd95070%_ t::t)
                        (let ((__tmp97515 (cons object::t _%tail95048%_)))
                          (declare (not safe))
                          (__foldl1 cons __tmp97515 _%head95049%_))
                        (let ((__tmp97516 (cons _%hd95070%_ _%head95049%_)))
                          (declare (not safe))
                          (_%loop95046%_ _%rest95069%_ __tmp97516))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tail9505095058%_))
                                                        (let ((_%hd9505595075%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%tail9505095058%_)))
                      (_%tl9505695077%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%tail9505095058%_))))
                  (let* ((_%hd95080%_ _%hd9505595075%_)
                         (_%rest95082%_ _%tl9505695077%_))
                    (declare (not safe))
                    (_%K9505495072%_ _%rest95082%_ _%hd95080%_)))
                (let () (declare (not safe)) (_%else9505295066%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (make-class-type-descriptor
                                         _%id94964%_
                                         _%name94972%_
                                         _%struct-super95031%_
                                         _%precedence-list95084%_
                                         _%slot-vector95033%_
                                         _%properties95036%_
                                         _%constructor*95041%_
                                         _%slot-table95034%_
                                         '#f)))))))))))))))))))
    (define class-precedence-list
      (lambda (_%klass94942%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94942%_ 'class))
              (let ()
                (let ((_%klass94946%_ _%klass94942%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-precedence-list _%klass94946%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass94942%_)))))
    (define __class-precedence-list
      (lambda (_%klass94930%_)
        (let ()
          (let ((_%klass94933%_ _%klass94930%_))
            (let ()
              (cons _%klass94933%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass94933%_
                       '6
                       '#f
                       '#f))))))))
    (define compute-precedence-list
      (lambda (_%direct-supers94927%_)
        (let ()
          (let ()
            (declare (not safe))
            (c4-linearize
             '()
             _%direct-supers94927%_
             'get-precedence-list:
             class-precedence-list
             'struct:
             class-type-struct?
             'eq:
             eq?
             'get-name:
             ##type-name)))))
    (define make-class-predicate
      (lambda (_%klass94913%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94913%_ 'class))
              (let ()
                (let ((_%klass94917%_ _%klass94913%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-predicate _%klass94917%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass94913%_)))))
    (define __make-class-predicate
      (lambda (_%klass94884%_)
        (let ()
          (let ((_%klass94887%_ _%klass94884%_))
            (let ()
              (let ((_%tid94896%_
                     (let () (declare (not safe)) (##type-id _%klass94887%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94887%_))
                    (let ()
                      (lambda (_%g9489894900%_)
                        (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           _%g9489894900%_
                           _%tid94896%_))))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94887%_))
                        (let ()
                          (lambda (_%g9490394905%_)
                            (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g9490394905%_
                               _%tid94896%_))))
                        (let ()
                          (lambda (_%g9490894910%_)
                            (let ()
                              (declare (not safe))
                              (__class-instance?
                               _%klass94887%_
                               _%g9490894910%_))))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass94859%_ _%slot94860%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94859%_ 'class))
              (let ()
                (let ((_%klass94864%_ _%klass94859%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94860%_))
                      (let ()
                        (let ((_%slot94874%_ _%slot94860%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-accessor
                               _%klass94864%_
                               _%slot94874%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94860%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass94859%_)))))
    (define __make-class-slot-accessor
      (lambda (_%klass94827%_ _%slot94828%_)
        (let ()
          (let ((_%klass94831%_ _%klass94827%_))
            (let ((_%slot94839%_ _%slot94828%_))
              (let ()
                (let ((_%field94848%_
                       (let ((__tmp97517
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94831%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97517 _%slot94839%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94848%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94831%_
                               'slot:
                               _%slot94839%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94831%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-accessor
                               _%klass94831%_
                               _%slot94839%_
                               _%field94848%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94831%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-accessor
                                   _%klass94831%_
                                   _%slot94839%_
                                   _%field94848%_)))
                              (if (let ((_%strukt94854%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94831%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94854%_
                                            'class))
                                         (let ((__tmp97518
                                                (let ((__tmp97519
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94854%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97519))))
                                           (declare (not safe))
                                           (##fx< _%field94848%_ __tmp97518))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-accessor
                                       _%klass94831%_
                                       _%slot94839%_
                                       _%field94848%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-accessor
                                       _%klass94831%_
                                       _%slot94839%_
                                       _%field94848%_))))))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass94802%_ _%slot94803%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94802%_ 'class))
              (let ()
                (let ((_%klass94807%_ _%klass94802%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94803%_))
                      (let ()
                        (let ((_%slot94817%_ _%slot94803%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-mutator
                               _%klass94807%_
                               _%slot94817%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94803%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass94802%_)))))
    (define __make-class-slot-mutator
      (lambda (_%klass94770%_ _%slot94771%_)
        (let ()
          (let ((_%klass94774%_ _%klass94770%_))
            (let ((_%slot94782%_ _%slot94771%_))
              (let ()
                (let ((_%field94791%_
                       (let ((__tmp97520
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94774%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97520 _%slot94782%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94791%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94774%_
                               'slot:
                               _%slot94782%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94774%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-mutator
                               _%klass94774%_
                               _%slot94782%_
                               _%field94791%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94774%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-mutator
                                   _%klass94774%_
                                   _%slot94782%_
                                   _%field94791%_)))
                              (if (let ((_%strukt94797%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94774%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94797%_
                                            'class))
                                         (let ((__tmp97521
                                                (let ((__tmp97522
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94797%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97522))))
                                           (declare (not safe))
                                           (##fx< _%field94791%_ __tmp97521))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-mutator
                                       _%klass94774%_
                                       _%slot94782%_
                                       _%field94791%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-mutator
                                       _%klass94774%_
                                       _%slot94782%_
                                       _%field94791%_))))))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass94745%_ _%slot94746%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94745%_ 'class))
              (let ()
                (let ((_%klass94750%_ _%klass94745%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94746%_))
                      (let ()
                        (let ((_%slot94760%_ _%slot94746%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-accessor
                               _%klass94750%_
                               _%slot94760%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94746%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass94745%_)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass94713%_ _%slot94714%_)
        (let ()
          (let ((_%klass94717%_ _%klass94713%_))
            (let ((_%slot94725%_ _%slot94714%_))
              (let ()
                (let ((_%field94734%_
                       (let ((__tmp97523
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94717%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97523 _%slot94725%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94734%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94717%_
                               'slot:
                               _%slot94725%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94717%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass94717%_
                               _%slot94725%_
                               _%field94734%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94717%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-accessor
                                   _%klass94717%_
                                   _%slot94725%_
                                   _%field94734%_)))
                              (if (let ((_%strukt94740%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94717%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94740%_
                                            'class))
                                         (let ((__tmp97524
                                                (let ((__tmp97525
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94740%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97525))))
                                           (declare (not safe))
                                           (##fx< _%field94734%_ __tmp97524))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-accessor
                                       _%klass94717%_
                                       _%slot94725%_
                                       _%field94734%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-accessor
                                       _%klass94717%_
                                       _%slot94725%_
                                       _%field94734%_))))))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass94688%_ _%slot94689%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94688%_ 'class))
              (let ()
                (let ((_%klass94693%_ _%klass94688%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94689%_))
                      (let ()
                        (let ((_%slot94703%_ _%slot94689%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-mutator
                               _%klass94693%_
                               _%slot94703%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94689%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass94688%_)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94656%_ _%slot94657%_)
        (let ()
          (let ((_%klass94660%_ _%klass94656%_))
            (let ((_%slot94668%_ _%slot94657%_))
              (let ()
                (let ((_%field94677%_
                       (let ((__tmp97526
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94660%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97526 _%slot94668%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94677%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94660%_
                               'slot:
                               _%slot94668%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94660%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass94660%_
                               _%slot94668%_
                               _%field94677%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94660%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-mutator
                                   _%klass94660%_
                                   _%slot94668%_
                                   _%field94677%_)))
                              (if (let ((_%strukt94683%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94660%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94683%_
                                            'class))
                                         (let ((__tmp97527
                                                (let ((__tmp97528
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94683%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97528))))
                                           (declare (not safe))
                                           (##fx< _%field94677%_ __tmp97527))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-mutator
                                       _%klass94660%_
                                       _%slot94668%_
                                       _%field94677%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-mutator
                                       _%klass94660%_
                                       _%slot94668%_
                                       _%field94677%_))))))))))))))
    (define not-an-instance__%
      (lambda (_%object94640%_ _%class94641%_ _%slot94642%_)
        (apply error
               '"not an instance"
               'object:
               _%object94640%_
               'class:
               _%class94641%_
               (if _%slot94642%_ (cons 'slot: (cons _%slot94642%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94647%_ _%class94648%_)
        (let ((_%slot94650%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object94647%_ _%class94648%_ _%slot94650%_))))
    (define not-an-instance
      (lambda _g97530_
        (let ((_g97529_ (let () (declare (not safe)) (##length _g97530_))))
          (cond ((let () (declare (not safe)) (##fx= _g97529_ 2))
                 (apply (lambda (_%object94647%_ _%class94648%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object94647%_
                             _%class94648%_)))
                        _g97530_))
                ((let () (declare (not safe)) (##fx= _g97529_ 3))
                 (apply (lambda (_%object94652%_ _%class94653%_ _%slot94654%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object94652%_
                             _%class94653%_
                             _%slot94654%_)))
                        _g97530_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97530_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94633%_ _%slot94634%_ _%field94635%_)
        (lambda (_%obj94637%_)
          (##direct-structure-ref
           _%obj94637%_
           _%field94635%_
           _%klass94633%_
           _%slot94634%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94626%_ _%slot94627%_ _%field94628%_)
        (lambda (_%obj94630%_ _%val94631%_)
          (##direct-structure-set!
           _%obj94630%_
           _%val94631%_
           _%field94628%_
           _%klass94626%_
           _%slot94627%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94620%_ _%slot94621%_ _%field94622%_)
        (lambda (_%obj94624%_)
          (##structure-ref
           _%obj94624%_
           _%field94622%_
           _%klass94620%_
           _%slot94621%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94613%_ _%slot94614%_ _%field94615%_)
        (lambda (_%obj94617%_ _%val94618%_)
          (##structure-set!
           _%obj94617%_
           _%val94618%_
           _%field94615%_
           _%klass94613%_
           _%slot94614%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94607%_ _%slot94608%_ _%field94609%_)
        (lambda (_%obj94611%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94611%_
             _%field94609%_
             _%klass94607%_
             _%slot94608%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94600%_ _%slot94601%_ _%field94602%_)
        (lambda (_%obj94604%_ _%val94605%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94604%_
             _%val94605%_
             _%field94602%_
             _%klass94600%_
             _%slot94601%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94594%_ _%slot94595%_ _%field94596%_)
        (lambda (_%obj94598%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94594%_ _%obj94598%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94598%_ _%field94596%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94598%_
                 _%klass94594%_
                 _%slot94595%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94587%_ _%slot94588%_ _%field94589%_)
        (lambda (_%obj94591%_ _%val94592%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94587%_ _%obj94591%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94591%_
                 _%field94589%_
                 _%val94592%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94591%_
                 _%klass94587%_
                 _%slot94588%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94578%_ _%slot94579%_ _%field94580%_)
        (lambda (_%obj94582%_)
          (if (let ((__tmp97531
                     (let () (declare (not safe)) (##type-id _%klass94578%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94582%_ __tmp97531))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-ref _%obj94582%_ _%field94580%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94578%_ _%obj94582%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _%obj94582%_ _%slot94579%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94582%_
                       _%klass94578%_
                       _%slot94579%_))))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94568%_ _%slot94569%_ _%field94570%_)
        (lambda (_%obj94572%_ _%val94573%_)
          (if (let ((__tmp97532
                     (let () (declare (not safe)) (##type-id _%klass94568%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94572%_ __tmp97532))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-set!
                   _%obj94572%_
                   _%field94570%_
                   _%val94573%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94568%_ _%obj94572%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-set!
                       _%obj94572%_
                       _%slot94569%_
                       _%val94573%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94572%_
                       _%klass94568%_
                       _%slot94569%_))))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94562%_ _%slot94563%_ _%field94564%_)
        (lambda (_%obj94566%_)
          (if (let ((__tmp97533
                     (let () (declare (not safe)) (##type-id _%klass94562%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94566%_ __tmp97533))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94566%_ _%field94564%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94566%_ _%slot94563%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94555%_ _%slot94556%_ _%field94557%_)
        (lambda (_%obj94559%_ _%val94560%_)
          (if (let ((__tmp97534
                     (let () (declare (not safe)) (##type-id _%klass94555%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94559%_ __tmp97534))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94559%_
                 _%field94557%_
                 _%val94560%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj94559%_
                 _%slot94556%_
                 _%val94560%_))))))
    (define class-slot-offset
      (lambda (_%klass94530%_ _%slot94531%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94530%_ 'class))
              (let ()
                (let ((_%klass94535%_ _%klass94530%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94531%_))
                      (let ()
                        (let ((_%slot94545%_ _%slot94531%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-offset
                               _%klass94535%_
                               _%slot94545%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94531%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass94530%_)))))
    (define __class-slot-offset
      (lambda (_%klass94509%_ _%slot94510%_)
        (let ()
          (let ((_%klass94513%_ _%klass94509%_))
            (let ((_%slot94521%_ _%slot94510%_))
              (let ()
                (let ((__tmp97535
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94513%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97535 _%slot94521%_ '#f))))))))
    (define class-slot-ref
      (lambda (_%klass94483%_ _%obj94484%_ _%slot94485%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94483%_ 'class))
              (let ()
                (let ((_%klass94489%_ _%klass94483%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94485%_))
                      (let ()
                        (let ((_%slot94499%_ _%slot94485%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-ref
                               _%klass94489%_
                               _%obj94484%_
                               _%slot94499%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94485%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass94483%_)))))
    (define __class-slot-ref
      (lambda (_%klass94459%_ _%obj94460%_ _%slot94461%_)
        (let ()
          (let ((_%klass94464%_ _%klass94459%_))
            (let ((_%slot94472%_ _%slot94461%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94464%_ _%obj94460%_))
                    (let ((_%off94481%_
                           (let ((__tmp97536
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94460%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97536 _%slot94472%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%obj94460%_
                       _%off94481%_
                       _%klass94464%_
                       _%slot94472%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94460%_ _%klass94464%_)))))))))
    (define class-slot-set!
      (lambda (_%klass94432%_ _%obj94433%_ _%slot94434%_ _%val94435%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94432%_ 'class))
              (let ()
                (let ((_%klass94439%_ _%klass94432%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94434%_))
                      (let ()
                        (let ((_%slot94449%_ _%slot94434%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-set!
                               _%klass94439%_
                               _%obj94433%_
                               _%slot94449%_
                               _%val94435%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94434%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass94432%_)))))
    (define __class-slot-set!
      (lambda (_%klass94407%_ _%obj94408%_ _%slot94409%_ _%val94410%_)
        (let ()
          (let ((_%klass94413%_ _%klass94407%_))
            (let ((_%slot94421%_ _%slot94409%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94413%_ _%obj94408%_))
                    (let ((_%off94430%_
                           (let ((__tmp97537
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94408%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97537 _%slot94421%_))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94408%_
                       _%val94410%_
                       _%off94430%_
                       _%klass94413%_
                       _%slot94421%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94408%_ _%klass94413%_)))))))))
    (define unchecked-field-ref
      (lambda (_%obj94404%_ _%off94405%_)
        (let ((__tmp97538
               (let () (declare (not safe)) (##structure-type _%obj94404%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94404%_
           _%off94405%_
           __tmp97538
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94400%_ _%off94401%_ _%val94402%_)
        (let ((__tmp97539
               (let () (declare (not safe)) (##structure-type _%obj94400%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94400%_
           _%val94402%_
           _%off94401%_
           __tmp97539
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94397%_ _%slot94398%_)
        (let ((__tmp97540
               (let ((__tmp97541
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94397%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97541 _%slot94398%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj94397%_ __tmp97540))))
    (define unchecked-slot-set!
      (lambda (_%obj94393%_ _%slot94394%_ _%val94395%_)
        (let ((__tmp97542
               (let ((__tmp97543
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94393%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97543 _%slot94394%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj94393%_ __tmp97542 _%val94395%_))))
    (define slot-ref__%
      (lambda (_%obj94355%_ _%slot94356%_ _%E94357%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94356%_))
              (let ()
                (let ((_%slot94361%_ _%slot94356%_))
                  (if (let () (declare (not safe)) (procedure? _%E94357%_))
                      (let ()
                        (let ((_%E94371%_ _%E94357%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-ref__%
                               _%obj94355%_
                               _%slot94361%_
                               _%E94371%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E94357%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot94356%_)))))
    (define slot-ref__0
      (lambda (_%obj94384%_ _%slot94385%_)
        (let ((_%E94387%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj94384%_ _%slot94385%_ _%E94387%_))))
    (define slot-ref
      (lambda _g97545_
        (let ((_g97544_ (let () (declare (not safe)) (##length _g97545_))))
          (cond ((let () (declare (not safe)) (##fx= _g97544_ 2))
                 (apply (lambda (_%obj94384%_ _%slot94385%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj94384%_ _%slot94385%_)))
                        _g97545_))
                ((let () (declare (not safe)) (##fx= _g97544_ 3))
                 (apply (lambda (_%obj94389%_ _%slot94390%_ _%E94391%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj94389%_
                             _%slot94390%_
                             _%E94391%_)))
                        _g97545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97545_))))))
    (define __slot-ref__%
      (lambda (_%obj94311%_ _%slot94312%_ _%E94313%_)
        (let ()
          (let ((_%slot94316%_ _%slot94312%_))
            (let ((_%E94324%_ _%E94313%_))
              (let ()
                (let* ((_%klass94333%_
                        (let () (declare (not safe)) (class-of _%obj94311%_)))
                       (_%$e94336%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94333%_ _%slot94316%_))))
                  (if _%$e94336%_
                      ((lambda (_%off94339%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-ref _%obj94311%_ _%off94339%_)))
                       _%$e94336%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94324%_ _%obj94311%_ _%slot94316%_)))))))))))
    (define __slot-ref__0
      (lambda (_%obj94345%_ _%slot94346%_)
        (let ((_%E94348%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94345%_ _%slot94346%_ _%E94348%_))))
    (define __slot-ref
      (lambda _g97547_
        (let ((_g97546_ (let () (declare (not safe)) (##length _g97547_))))
          (cond ((let () (declare (not safe)) (##fx= _g97546_ 2))
                 (apply (lambda (_%obj94345%_ _%slot94346%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94345%_ _%slot94346%_)))
                        _g97547_))
                ((let () (declare (not safe)) (##fx= _g97546_ 3))
                 (apply (lambda (_%obj94350%_ _%slot94351%_ _%E94352%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94350%_
                             _%slot94351%_
                             _%E94352%_)))
                        _g97547_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97547_))))))
    (define slot-set!__%
      (lambda (_%obj94269%_ _%slot94270%_ _%val94271%_ _%E94272%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94270%_))
              (let ()
                (let ((_%slot94276%_ _%slot94270%_))
                  (if (let () (declare (not safe)) (procedure? _%E94272%_))
                      (let ()
                        (let ((_%E94286%_ _%E94272%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-set!__%
                               _%obj94269%_
                               _%slot94276%_
                               _%val94271%_
                               _%E94286%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94272%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot94270%_)))))
    (define slot-set!__0
      (lambda (_%obj94299%_ _%slot94300%_ _%val94301%_)
        (let ((_%E94303%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94299%_ _%slot94300%_ _%val94301%_ _%E94303%_))))
    (define slot-set!
      (lambda _g97549_
        (let ((_g97548_ (let () (declare (not safe)) (##length _g97549_))))
          (cond ((let () (declare (not safe)) (##fx= _g97548_ 3))
                 (apply (lambda (_%obj94299%_ _%slot94300%_ _%val94301%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94299%_
                             _%slot94300%_
                             _%val94301%_)))
                        _g97549_))
                ((let () (declare (not safe)) (##fx= _g97548_ 4))
                 (apply (lambda (_%obj94305%_
                                 _%slot94306%_
                                 _%val94307%_
                                 _%E94308%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94305%_
                             _%slot94306%_
                             _%val94307%_
                             _%E94308%_)))
                        _g97549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97549_))))))
    (define __slot-set!__%
      (lambda (_%obj94222%_ _%slot94223%_ _%val94224%_ _%E94225%_)
        (let ()
          (let ((_%slot94228%_ _%slot94223%_))
            (let ((_%E94236%_ _%E94225%_))
              (let ()
                (let* ((_%klass94245%_
                        (let () (declare (not safe)) (class-of _%obj94222%_)))
                       (_%$e94248%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94245%_ _%slot94228%_))))
                  (if _%$e94248%_
                      ((lambda (_%off94251%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-set!
                            _%obj94222%_
                            _%off94251%_
                            _%val94224%_)))
                       _%$e94248%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94236%_ _%obj94222%_ _%slot94228%_)))))))))))
    (define __slot-set!__0
      (lambda (_%obj94257%_ _%slot94258%_ _%val94259%_)
        (let ((_%E94261%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94257%_
           _%slot94258%_
           _%val94259%_
           _%E94261%_))))
    (define __slot-set!
      (lambda _g97551_
        (let ((_g97550_ (let () (declare (not safe)) (##length _g97551_))))
          (cond ((let () (declare (not safe)) (##fx= _g97550_ 3))
                 (apply (lambda (_%obj94257%_ _%slot94258%_ _%val94259%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94257%_
                             _%slot94258%_
                             _%val94259%_)))
                        _g97551_))
                ((let () (declare (not safe)) (##fx= _g97550_ 4))
                 (apply (lambda (_%obj94263%_
                                 _%slot94264%_
                                 _%val94265%_
                                 _%E94266%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94263%_
                             _%slot94264%_
                             _%val94265%_
                             _%E94266%_)))
                        _g97551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97551_))))))
    (define __slot-error
      (lambda (_%obj94218%_ _%slot94219%_)
        (error '"Cannot find slot"
               'object:
               _%obj94218%_
               'slot:
               _%slot94219%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94193%_ _%maybe-super-class94194%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94193%_ 'class))
              (let ()
                (let ((_%maybe-sub-class94198%_ _%maybe-sub-class94193%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-class94194%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-class94208%_
                               _%maybe-super-class94194%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__subclass?
                               _%maybe-sub-class94198%_
                               _%maybe-super-class94208%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94194%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94193%_)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94165%_ _%maybe-super-class94166%_)
        (let ()
          (let ((_%maybe-sub-class94169%_ _%maybe-sub-class94165%_))
            (let ((_%maybe-super-class94177%_ _%maybe-super-class94166%_))
              (let ()
                (let* ((_%maybe-super-class-id94186%_
                        (let ()
                          (declare (not safe))
                          (##type-id _%maybe-super-class94177%_)))
                       (_%$e94188%_
                        (eq? _%maybe-super-class-id94186%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%maybe-sub-class94169%_)))))
                  (if _%$e94188%_
                      _%$e94188%_
                      (let ((__tmp97553
                             (lambda (_%super-class94191%_)
                               (eq? (let ()
                                      (declare (not safe))
                                      (##type-id _%super-class94191%_))
                                    _%maybe-super-class-id94186%_)))
                            (__tmp97552
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%maybe-sub-class94169%_
                                '6
                                '#f
                                '#f))))
                        (declare (not safe))
                        (__ormap1 __tmp97553 __tmp97552))))))))))
    (define object?
      (lambda (_%o94162%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94162%_))
              (let ((__tmp97554
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94162%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp97554 'class))
              '#f))))
    (define object-type
      (lambda (_%o94157%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94157%_))
              (let ((_%klass94160%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94157%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94160%_ 'class))
                    _%klass94160%_
                    (error '"not an object" _%o94157%_ _%klass94160%_)))
              (error '"not an object" _%o94157%_)))))
    (define direct-instance?
      (lambda (_%klass94142%_ _%obj94143%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94142%_ 'class))
              (let ()
                (let ((_%klass94147%_ _%klass94142%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__direct-instance? _%klass94147%_ _%obj94143%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94142%_)))))
    (define __direct-instance?
      (lambda (_%klass94129%_ _%obj94130%_)
        (let ()
          (let ((_%klass94133%_ _%klass94129%_))
            (let ()
              (let ((__tmp97555
                     (let () (declare (not safe)) (##type-id _%klass94133%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94130%_ __tmp97555)))))))
    (define immediate-instance-of?
      (lambda (_%klass94125%_ _%obj94126%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94126%_))
              (eq? _%klass94125%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94126%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94110%_ _%obj94111%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94110%_ 'class))
              (let ()
                (let ((_%klass94115%_ _%klass94110%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-instance? _%klass94115%_ _%obj94111%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94110%_)))))
    (define __struct-instance?
      (lambda (_%klass94097%_ _%obj94098%_)
        (let ()
          (let ((_%klass94101%_ _%klass94097%_))
            (let ()
              (let ((__tmp97556
                     (let () (declare (not safe)) (##type-id _%klass94101%_))))
                (declare (not safe))
                (##structure-instance-of? _%obj94098%_ __tmp97556)))))))
    (define class-instance?
      (lambda (_%klass94082%_ _%obj94083%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94082%_ 'class))
              (let ()
                (let ((_%klass94087%_ _%klass94082%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94087%_ _%obj94083%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94082%_)))))
    (define __class-instance?
      (lambda (_%klass94067%_ _%obj94068%_)
        (let ()
          (let ((_%klass94071%_ _%klass94067%_))
            (let ()
              (let ((_%type94080%_
                     (let () (declare (not safe)) (class-of _%obj94068%_))))
                (declare (not safe))
                (subclass? _%type94080%_ _%klass94071%_)))))))
    (define make-object
      (lambda (_%klass94042%_ _%k94043%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94042%_ 'class))
              (let ()
                (let ((_%klass94047%_ _%klass94042%_))
                  (if (let () (declare (not safe)) (fixnum? _%k94043%_))
                      (let ()
                        (let ((_%k94057%_ _%k94043%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-object _%klass94047%_ _%k94057%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94043%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94042%_)))))
    (define __make-object
      (lambda (_%klass94019%_ _%k94020%_)
        (let ()
          (let ((_%klass94023%_ _%klass94019%_))
            (let ((_%k94031%_ _%k94020%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass94023%_))
                    (error '"cannot instantiate system class"
                           'class:
                           _%klass94023%_)
                    (let ((_%obj94040%_
                           (let ()
                             (declare (not safe))
                             (##make-structure _%klass94023%_ _%k94031%_))))
                      (declare (not safe))
                      (object-fill! _%obj94040%_ '#f)))))))))
    (define object-fill!
      (lambda (_%obj94004%_ _%fill94005%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94009%_ _%obj94004%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__object-fill! _%obj94009%_ _%fill94005%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94004%_)))))
    (define __object-fill!
      (lambda (_%obj93986%_ _%fill93987%_)
        (let ()
          (let ((_%obj93990%_ _%obj93986%_))
            (let ()
              (let _%loop93999%_ ((_%i94001%_
                                   (let ((__tmp97558
                                          (let ()
                                            (declare (not safe))
                                            (##structure-length
                                             _%obj93990%_))))
                                     (declare (not safe))
                                     (##fx- __tmp97558 '1))))
                (let ()
                  (if (let () (declare (not safe)) (##fx> _%i94001%_ '0))
                      (begin
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%obj93990%_
                           _%fill93987%_
                           _%i94001%_
                           '#f
                           '#f))
                        (let ((__tmp97557
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%i94001%_ '1))))
                          (declare (not safe))
                          (_%loop93999%_ __tmp97557)))
                      _%obj93990%_))))))))
    (define new-instance
      (lambda (_%klass93972%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93972%_ 'class))
              (let ()
                (let ((_%klass93976%_ _%klass93972%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__new-instance _%klass93976%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass93972%_)))))
    (define __new-instance
      (lambda (_%klass93960%_)
        (let ()
          (let ((_%klass93963%_ _%klass93960%_))
            (let ()
              (let ((__obj97454
                     (let ((__tmp97559
                            (let ((__tmp97560
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass93963%_
                                      '7
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (##vector-length __tmp97560))))
                       (declare (not safe))
                       (##make-structure _%klass93963%_ __tmp97559))))
                (let () (declare (not safe)) (object-fill! __obj97454 '#f))
                __obj97454))))))
    (define make-instance
      (lambda (_%klass93945%_ . _%args93946%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93945%_ 'class))
              (let ()
                (let ((_%klass93950%_ _%klass93945%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __make-instance
                               _%klass93950%_
                               _%args93946%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass93945%_)))))
    (define __make-instance
      (lambda (_%klass93917%_ . _%args93918%_)
        (let ()
          (let ((_%klass93921%_ _%klass93917%_))
            (let ()
              (let ((_%$e93930%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass93921%_
                        '10
                        '#f
                        '#f))))
                (if _%$e93930%_
                    ((lambda (_%kons-id93933%_)
                       (let ((_%obj93935%_
                              (let ()
                                (declare (not safe))
                                (__new-instance _%klass93921%_))))
                         (let ()
                           (declare (not safe))
                           (___constructor-init!
                            _%klass93921%_
                            _%kons-id93933%_
                            _%obj93935%_
                            _%args93918%_))
                         _%obj93935%_))
                     _%$e93930%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass93921%_))
                        (let ()
                          (let ((_%obj93938%_
                                 (let ()
                                   (declare (not safe))
                                   (__new-instance _%klass93921%_))))
                            (let ()
                              (declare (not safe))
                              (__metaclass-instance-init!
                               _%klass93921%_
                               _%obj93938%_
                               _%args93918%_))
                            _%obj93938%_))
                        (if (let ((__tmp97561
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-struct? _%klass93921%_))))
                              (declare (not safe))
                              (not __tmp97561))
                            (let ()
                              (let ((_%obj93941%_
                                     (let ()
                                       (declare (not safe))
                                       (__new-instance _%klass93921%_))))
                                (let ()
                                  (declare (not safe))
                                  (___class-instance-init!
                                   _%klass93921%_
                                   _%obj93941%_
                                   _%args93918%_))
                                _%obj93941%_))
                            (if (let ((__tmp97563
                                       (let ()
                                         (declare (not safe))
                                         (__class-type-field-count
                                          _%klass93921%_)))
                                      (__tmp97562 (length _%args93918%_)))
                                  (declare (not safe))
                                  (##fx= __tmp97563 __tmp97562))
                                (let ()
                                  (apply ##structure
                                         _%klass93921%_
                                         _%args93918%_))
                                (let ()
                                  (error '"arguments don't match object size"
                                         'class:
                                         _%klass93921%_
                                         'slots:
                                         (let ()
                                           (declare (not safe))
                                           (__class-type-slot-list
                                            _%klass93921%_))
                                         'args:
                                         _%args93918%_))))))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj93902%_ . _%args93903%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93907%_ _%obj93902%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __struct-instance-init!
                               _%obj93907%_
                               _%args93903%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj93902%_)))))
    (define __struct-instance-init!
      (lambda (_%obj93889%_ . _%args93890%_)
        (let ()
          (let ((_%obj93893%_ _%obj93889%_))
            (let ()
              (if (let ((__tmp97565 (length _%args93890%_))
                        (__tmp97564
                         (let ()
                           (declare (not safe))
                           (##structure-length _%obj93893%_))))
                    (declare (not safe))
                    (##fx< __tmp97565 __tmp97564))
                  (let ()
                    (declare (not safe))
                    (___struct-instance-init! _%obj93893%_ _%args93890%_))
                  (error '"too many arguments for struct"
                         'object:
                         _%obj93893%_
                         'args:
                         _%args93890%_))
              '#!void)))))
    (define ___struct-instance-init!
      (lambda (_%obj93848%_ _%args93849%_)
        (let _%lp93851%_ ((_%k93853%_ '1) (_%rest93854%_ _%args93849%_))
          (let* ((_%rest9385593863%_ _%rest93854%_)
                 (_%else9385793871%_ (lambda () _%obj93848%_))
                 (_%K9385993877%_
                  (lambda (_%rest93874%_ _%hd93875%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj93848%_
                       _%k93853%_
                       _%hd93875%_))
                    (let ((__tmp97566
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k93853%_ '1))))
                      (declare (not safe))
                      (_%lp93851%_ __tmp97566 _%rest93874%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9385593863%_))
                (let ((_%hd9386093880%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9385593863%_)))
                      (_%tl9386193882%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9385593863%_))))
                  (let* ((_%hd93885%_ _%hd9386093880%_)
                         (_%rest93887%_ _%tl9386193882%_))
                    (declare (not safe))
                    (_%K9385993877%_ _%rest93887%_ _%hd93885%_)))
                (let () (declare (not safe)) (_%else9385793871%_)))))))
    (define class-instance-init!
      (lambda (_%obj93833%_ . _%args93834%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93838%_ _%obj93833%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __class-instance-init!
                               _%obj93838%_
                               _%args93834%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj93833%_)))))
    (define __class-instance-init!
      (lambda (_%obj93820%_ . _%args93821%_)
        (let ()
          (let ((_%obj93824%_ _%obj93820%_))
            (let ()
              (let ((__tmp97567
                     (let ()
                       (declare (not safe))
                       (##structure-type _%obj93824%_))))
                (declare (not safe))
                (___class-instance-init!
                 __tmp97567
                 _%obj93824%_
                 _%args93821%_))
              '#!void)))))
    (define ___class-instance-init!
      (lambda (_%klass93762%_ _%obj93763%_ _%args93764%_)
        (let _%lp93766%_ ((_%rest93768%_ _%args93764%_))
          (let* ((_%rest9376993779%_ _%rest93768%_)
                 (_%else9377193787%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest93768%_))
                        _%obj93763%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass93762%_
                               'rest:
                               _%rest93768%_))))
                 (_%K9377393801%_
                  (lambda (_%rest93790%_ _%val93791%_ _%key93792%_)
                    (if (let ((__tmp97568
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key93792%_))))
                          (declare (not safe))
                          (not __tmp97568))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key93792%_))
                        (let ((_%$e93795%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass93762%_
                                  _%key93792%_))))
                          (if _%$e93795%_
                              ((lambda (_%off93798%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj93763%_
                                    _%off93798%_
                                    _%val93791%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp93766%_ _%rest93790%_)))
                               _%$e93795%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass93762%_
                                       'slot:
                                       _%key93792%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9376993779%_))
                (let ((_%hd9377493804%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9376993779%_)))
                      (_%tl9377593806%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9376993779%_))))
                  (let ((_%key93809%_ _%hd9377493804%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9377593806%_))
                        (let ((_%hd9377693811%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9377593806%_)))
                              (_%tl9377793813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9377593806%_))))
                          (let* ((_%val93816%_ _%hd9377693811%_)
                                 (_%rest93818%_ _%tl9377793813%_))
                            (declare (not safe))
                            (_%K9377393801%_
                             _%rest93818%_
                             _%val93816%_
                             _%key93809%_)))
                        (let () (declare (not safe)) (_%else9377193787%_)))))
                (let () (declare (not safe)) (_%else9377193787%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass93758%_ _%obj93759%_ _%args93760%_)
        (apply call-method
               _%klass93758%_
               'instance-init!
               _%obj93759%_
               _%args93760%_)))
    (define constructor-init!
      (lambda (_%klass93721%_ _%kons-id93722%_ _%obj93723%_ . _%args93724%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93721%_ 'class))
              (let ()
                (let ((_%klass93728%_ _%klass93721%_))
                  (if (let () (declare (not safe)) (symbol? _%kons-id93722%_))
                      (let ()
                        (let ((_%kons-id93738%_ _%kons-id93722%_))
                          (if '#t
                              (let ()
                                (let ((_%obj93748%_ _%obj93723%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (##apply __constructor-init!
                                               _%klass93728%_
                                               _%kons-id93738%_
                                               _%obj93748%_
                                               _%args93724%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                               'contract:
                               'true
                               'value:
                               _%obj93723%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id93722%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass93721%_)))))
    (define __constructor-init!
      (lambda (_%klass93690%_ _%kons-id93691%_ _%obj93692%_ . _%args93693%_)
        (let ()
          (let ((_%klass93696%_ _%klass93690%_))
            (let ((_%kons-id93704%_ _%kons-id93691%_))
              (let ((_%obj93712%_ _%obj93692%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (___constructor-init!
                     _%klass93696%_
                     _%kons-id93704%_
                     _%obj93712%_
                     _%args93693%_))
                  '#!void)))))))
    (define ___constructor-init!
      (lambda (_%klass93679%_ _%kons-id93680%_ _%obj93681%_ _%args93682%_)
        (let ((_%$e93684%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass93679%_
                  _%obj93681%_
                  _%kons-id93680%_))))
          (if _%$e93684%_
              ((lambda (_%kons93687%_)
                 (apply _%kons93687%_ _%obj93681%_ _%args93682%_)
                 _%obj93681%_)
               _%$e93684%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass93679%_
                       'method:
                       _%kons-id93680%_))))))
    (define struct-copy
      (lambda (_%struct93665%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%struct93669%_ _%struct93665%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-copy _%struct93669%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct93665%_)))))
    (define __struct-copy
      (lambda (_%struct93653%_)
        (let ()
          (let ((_%struct93656%_ _%struct93653%_))
            (let ()
              (let ()
                (declare (not safe))
                (##structure-copy _%struct93656%_)))))))
    (define struct->list
      (lambda (_%obj93639%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93643%_ _%obj93639%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct->list _%obj93643%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj93639%_)))))
    (define __struct->list
      (lambda (_%obj93627%_)
        (let ()
          (let ((_%obj93630%_ _%obj93627%_))
            (let ()
              (let () (declare (not safe)) (##vector->list _%obj93630%_)))))))
    (define class->list
      (lambda (_%obj93613%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93617%_ _%obj93613%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class->list _%obj93617%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj93613%_)))))
    (define __class->list
      (lambda (_%obj93589%_)
        (let ()
          (let ((_%obj93592%_ _%obj93589%_))
            (let ()
              (let* ((_%klass93601%_
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj93592%_)))
                     (_%slot-vector93603%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%klass93601%_
                         '7
                         '#f
                         '#f))))
                (let _%loop93605%_ ((_%index93607%_
                                     (let ((__tmp97574
                                            (let ()
                                              (declare (not safe))
                                              (##vector-length
                                               _%slot-vector93603%_))))
                                       (declare (not safe))
                                       (##fx- __tmp97574 '1)))
                                    (_%plist93608%_ '()))
                  (let ()
                    (if (let () (declare (not safe)) (##fx< _%index93607%_ '1))
                        (cons _%klass93601%_ _%plist93608%_)
                        (let ((_%slot93611%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref
                                  _%slot-vector93603%_
                                  _%index93607%_))))
                          (let ((__tmp97573
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%index93607%_ '1)))
                                (__tmp97569
                                 (let ((__tmp97572
                                        (let ()
                                          (declare (not safe))
                                          (symbol->keyword _%slot93611%_)))
                                       (__tmp97570
                                        (let ((__tmp97571
                                               (let ()
                                                 (declare (not safe))
                                                 (unchecked-field-ref
                                                  _%obj93592%_
                                                  _%index93607%_))))
                                          (declare (not safe))
                                          (cons __tmp97571 _%plist93608%_))))
                                   (declare (not safe))
                                   (cons __tmp97572 __tmp97570))))
                            (declare (not safe))
                            (_%loop93605%_ __tmp97573 __tmp97569))))))))))))
    (define call-method
      (lambda (_%obj93573%_ _%id93574%_ . _%args93575%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93574%_))
              (let ()
                (let ((_%id93579%_ _%id93574%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-method
                               _%obj93573%_
                               _%id93579%_
                               _%args93575%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id93574%_)))))
    (define __call-method
      (lambda (_%obj93542%_ _%id93543%_ . _%args93544%_)
        (let ()
          (let ((_%id93547%_ _%id93543%_))
            (let ()
              (let ((_%$e93556%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93542%_ _%id93547%_))))
                (if _%$e93556%_
                    ((lambda (_%method93559%_)
                       (let ((_%method93561%_ _%method93559%_))
                         (apply _%method93561%_ _%obj93542%_ _%args93544%_)))
                     _%$e93556%_)
                    (let ()
                      (error '"cannot find method"
                             'object:
                             _%obj93542%_
                             'method:
                             _%id93547%_)))))))))
    (define method-ref
      (lambda (_%obj93527%_ _%id93528%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93528%_))
              (let ()
                (let ((_%id93532%_ _%id93528%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__method-ref _%obj93527%_ _%id93532%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
               'contract:
               'symbol?
               'value:
               _%id93528%_)))))
    (define __method-ref
      (lambda (_%obj93514%_ _%id93515%_)
        (let ()
          (let ((_%id93518%_ _%id93515%_))
            (let ()
              (let ((__tmp97575
                     (let () (declare (not safe)) (class-of _%obj93514%_))))
                (declare (not safe))
                (__find-method __tmp97575 _%obj93514%_ _%id93518%_)))))))
    (define checked-method-ref
      (lambda (_%obj93507%_ _%id93508%_)
        (let ()
          (let ((_%$e93511%_
                 (let ()
                   (declare (not safe))
                   (method-ref _%obj93507%_ _%id93508%_))))
            (if _%$e93511%_
                _%$e93511%_
                (error '"missing method"
                       'object:
                       _%obj93507%_
                       'method:
                       _%id93508%_))))))
    (define bound-method-ref
      (lambda (_%obj93492%_ _%id93493%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93493%_))
              (let ()
                (let ((_%id93497%_ _%id93493%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__bound-method-ref _%obj93492%_ _%id93497%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
               'contract:
               'symbol?
               'value:
               _%id93493%_)))))
    (define __bound-method-ref
      (lambda (_%obj93460%_ _%id93461%_)
        (let ()
          (let ((_%id93464%_ _%id93461%_))
            (let ()
              (let ((_%$e93473%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93460%_ _%id93464%_))))
                (if _%$e93473%_
                    ((lambda (_%method93476%_)
                       (let ((_%method93478%_ _%method93476%_))
                         (lambda _%args93489%_
                           (apply _%method93478%_
                                  _%obj93460%_
                                  _%args93489%_))))
                     _%$e93473%_)
                    (let () '#f))))))))
    (define checked-bound-method-ref
      (lambda (_%obj93445%_ _%id93446%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93446%_))
              (let ()
                (let ((_%id93450%_ _%id93446%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__checked-bound-method-ref _%obj93445%_ _%id93450%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
               'contract:
               'symbol?
               'value:
               _%id93446%_)))))
    (define __checked-bound-method-ref
      (lambda (_%obj93428%_ _%id93429%_)
        (let ()
          (let ((_%id93432%_ _%id93429%_))
            (let ()
              (let ((_%method93441%_
                     (let ()
                       (declare (not safe))
                       (checked-method-ref _%obj93428%_ _%id93432%_))))
                (lambda _%args93443%_
                  (apply _%method93441%_ _%obj93428%_ _%args93443%_))))))))
    (define find-method
      (lambda (_%klass93402%_ _%obj93403%_ _%id93404%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93402%_ 'class))
              (let ()
                (let ((_%klass93408%_ _%klass93402%_))
                  (if (let () (declare (not safe)) (symbol? _%id93404%_))
                      (let ()
                        (let ((_%id93418%_ _%id93404%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__find-method
                               _%klass93408%_
                               _%obj93403%_
                               _%id93418%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id93404%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
               'contract:
               'class-type?
               'value:
               _%klass93402%_)))))
    (define __find-method
      (lambda (_%klass93375%_ _%obj93376%_ _%id93377%_)
        (let ()
          (let ((_%klass93380%_ _%klass93375%_))
            (let ((_%id93388%_ _%id93377%_))
              (let ()
                (let ((_%$e93397%_
                       (let ()
                         (declare (not safe))
                         (__direct-method-ref
                          _%klass93380%_
                          _%obj93376%_
                          _%id93388%_))))
                  (if _%$e93397%_
                      _%$e93397%_
                      (if (let ()
                            (declare (not safe))
                            (__class-type-sealed? _%klass93380%_))
                          (let () '#f)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93380%_
                               _%obj93376%_
                               _%id93388%_))))))))))))
    (define mixin-find-method
      (lambda (_%mixins93359%_ _%obj93360%_ _%id93361%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93361%_))
              (let ()
                (let ((_%id93365%_ _%id93361%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__mixin-find-method
                       _%mixins93359%_
                       _%obj93360%_
                       _%id93365%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
               'contract:
               'symbol?
               'value:
               _%id93361%_)))))
    (define __mixin-find-method
      (lambda (_%mixins93341%_ _%obj93342%_ _%id93343%_)
        (let ()
          (let ((_%id93346%_ _%id93343%_))
            (let ()
              (let ((__tmp97576
                     (lambda (_%g9335493356%_)
                       (let ()
                         (declare (not safe))
                         (direct-method-ref
                          _%g9335493356%_
                          _%obj93342%_
                          _%id93346%_)))))
                (declare (not safe))
                (__ormap1 __tmp97576 _%mixins93341%_)))))))
    (define direct-method-ref
      (lambda (_%klass93315%_ _%obj93316%_ _%id93317%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93315%_ 'class))
              (let ()
                (let ((_%klass93321%_ _%klass93315%_))
                  (if (let () (declare (not safe)) (symbol? _%id93317%_))
                      (let ()
                        (let ((_%id93331%_ _%id93317%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__direct-method-ref
                               _%klass93321%_
                               _%obj93316%_
                               _%id93331%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93317%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
               'contract:
               'class-type?
               'value:
               _%klass93315%_)))))
    (define __direct-method-ref
      (lambda (_%klass93269%_ _%obj93270%_ _%id93271%_)
        (let ()
          (let ((_%klass93274%_ _%klass93269%_))
            (let ((_%id93282%_ _%id93271%_))
              (let ()
                (letrec ((_%metaclass-resolve-method93291%_
                          (lambda ()
                            (let ((__method97455
                                   (let ()
                                     (declare (not safe))
                                     (__method-ref
                                      _%klass93274%_
                                      'direct-method-ref))))
                              (if __method97455
                                  (__method97455
                                   _%klass93274%_
                                   _%obj93270%_
                                   _%id93282%_)
                                  (error '"Missing method"
                                         _%klass93274%_
                                         'direct-method-ref)))))
                         (_%metaclass-resolve-method!93292%_
                          (lambda ()
                            (let ((_%method93312%_
                                   (let ()
                                     (declare (not safe))
                                     (_%metaclass-resolve-method93291%_))))
                              (let ((__tmp97578
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass93274%_
                                        '11
                                        '#f
                                        '#f)))
                                    (__tmp97577
                                     (if _%method93312%_ 'resolved 'unknown)))
                                (declare (not safe))
                                (symbolic-table-set!
                                 __tmp97578
                                 _%id93282%_
                                 __tmp97577))
                              _%method93312%_))))
                  (let ((_%$e93294%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93274%_
                            '11
                            '#f
                            '#f))))
                    (if _%$e93294%_
                        ((lambda (_%ht93297%_)
                           (let ((_%method93299%_
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-ref
                                     _%ht93297%_
                                     _%id93282%_
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (procedure? _%method93299%_))
                                 (let () _%method93299%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__class-type-metaclass?
                                        _%klass93274%_))
                                     (let ()
                                       (let ((_%$e93303%_ _%method93299%_))
                                         (if (eq? 'resolved _%$e93303%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%metaclass-resolve-method93291%_))
                                             (if (eq? 'unknown _%$e93303%_)
                                                 '#f
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%metaclass-resolve-method!93292%_))))))
                                     (let () '#f)))))
                         _%$e93294%_)
                        (if (let ()
                              (declare (not safe))
                              (__class-type-metaclass? _%klass93274%_))
                            (let ()
                              (let ((_%tab93308%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93274%_
                                   _%tab93308%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%metaclass-resolve-method!93292%_))))
                            (let () '#f)))))))))))
    (define mixin-method-ref
      (lambda (_%klass93243%_ _%obj93244%_ _%id93245%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93243%_ 'class))
              (let ()
                (let ((_%klass93249%_ _%klass93243%_))
                  (if (let () (declare (not safe)) (symbol? _%id93245%_))
                      (let ()
                        (let ((_%id93259%_ _%id93245%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93249%_
                               _%obj93244%_
                               _%id93259%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93245%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
               'contract:
               'class-type?
               'value:
               _%klass93243%_)))))
    (define __mixin-method-ref
      (lambda (_%klass93221%_ _%obj93222%_ _%id93223%_)
        (let ()
          (let ((_%klass93226%_ _%klass93221%_))
            (let ((_%id93234%_ _%id93223%_))
              (let ()
                (let ((__tmp97579
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93226%_
                          '6
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__mixin-find-method
                   __tmp97579
                   _%obj93222%_
                   _%id93234%_))))))))
    (define bind-method!__%
      (lambda (_%klass93180%_ _%id93181%_ _%proc93182%_ _%rebind?93183%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93181%_))
              (let ()
                (let ((_%id93187%_ _%id93181%_))
                  (if (let () (declare (not safe)) (procedure? _%proc93182%_))
                      (let ()
                        (let ((_%proc93197%_ _%proc93182%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bind-method!__%
                               _%klass93180%_
                               _%id93187%_
                               _%proc93197%_
                               _%rebind?93183%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93182%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
               'contract:
               'symbol?
               'value:
               _%id93181%_)))))
    (define bind-method!__0
      (lambda (_%klass93210%_ _%id93211%_ _%proc93212%_)
        (let ((_%rebind?93214%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93210%_
           _%id93211%_
           _%proc93212%_
           _%rebind?93214%_))))
    (define bind-method!
      (lambda _g97581_
        (let ((_g97580_ (let () (declare (not safe)) (##length _g97581_))))
          (cond ((let () (declare (not safe)) (##fx= _g97580_ 3))
                 (apply (lambda (_%klass93210%_ _%id93211%_ _%proc93212%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93210%_
                             _%id93211%_
                             _%proc93212%_)))
                        _g97581_))
                ((let () (declare (not safe)) (##fx= _g97580_ 4))
                 (apply (lambda (_%klass93216%_
                                 _%id93217%_
                                 _%proc93218%_
                                 _%rebind?93219%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93216%_
                             _%id93217%_
                             _%proc93218%_
                             _%rebind?93219%_)))
                        _g97581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97581_))))))
    (define __bind-method!__%
      (lambda (_%klass93131%_ _%id93132%_ _%proc93133%_ _%rebind?93134%_)
        (let ()
          (let ((_%id93137%_ _%id93132%_))
            (let ((_%proc93145%_ _%proc93133%_))
              (let ()
                (letrec ((_%bind!93154%_
                          (lambda (_%ht93163%_)
                            (if (and (let ()
                                       (declare (not safe))
                                       (not _%rebind?93134%_))
                                     (let ()
                                       (declare (not safe))
                                       (symbolic-table-ref
                                        _%ht93163%_
                                        _%id93137%_
                                        '#f)))
                                (error '"method already bound"
                                       'class:
                                       _%klass93131%_
                                       'method:
                                       _%id93137%_)
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-set!
                                     _%ht93163%_
                                     _%id93137%_
                                     _%proc93145%_))
                                  '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%klass93131%_ 'class))
                      (let ()
                        (let ((_%ht93157%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93131%_
                                  '11
                                  '#f
                                  '#f))))
                          (if _%ht93157%_
                              (let ()
                                (declare (not safe))
                                (_%bind!93154%_ _%ht93157%_))
                              (let ((_%ht93159%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93131%_
                                   _%ht93159%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%bind!93154%_ _%ht93159%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##type? _%klass93131%_))
                          (let ()
                            (let ((__tmp97582
                                   (let ()
                                     (declare (not safe))
                                     (__shadow-class _%klass93131%_))))
                              (declare (not safe))
                              (__bind-method!
                               __tmp97582
                               _%id93137%_
                               _%proc93145%_
                               _%rebind?93134%_)))
                          (let ()
                            (error '"bad class; expected class or builtin type"
                                   _%klass93131%_)))))))))))
    (define __bind-method!__0
      (lambda (_%klass93168%_ _%id93169%_ _%proc93170%_)
        (let ((_%rebind?93172%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93168%_
           _%id93169%_
           _%proc93170%_
           _%rebind?93172%_))))
    (define __bind-method!
      (lambda _g97584_
        (let ((_g97583_ (let () (declare (not safe)) (##length _g97584_))))
          (cond ((let () (declare (not safe)) (##fx= _g97583_ 3))
                 (apply (lambda (_%klass93168%_ _%id93169%_ _%proc93170%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93168%_
                             _%id93169%_
                             _%proc93170%_)))
                        _g97584_))
                ((let () (declare (not safe)) (##fx= _g97583_ 4))
                 (apply (lambda (_%klass93174%_
                                 _%id93175%_
                                 _%proc93176%_
                                 _%rebind?93177%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93174%_
                             _%id93175%_
                             _%proc93176%_
                             _%rebind?93177%_)))
                        _g97584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97584_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93111%_ _%seed93113%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93111%_
           procedure-hash
           eq?
           _%seed93113%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93119%_ '#f) (_%seed93121%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93119%_
           _%seed93121%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93123%_)
        (let ((_%seed93125%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93123%_
           _%seed93125%_))))
    (define make-method-specializer-table
      (lambda _g97586_
        (let ((_g97585_ (let () (declare (not safe)) (##length _g97586_))))
          (cond ((let () (declare (not safe)) (##fx= _g97585_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g97586_))
                ((let () (declare (not safe)) (##fx= _g97585_ 1))
                 (apply (lambda (_%size-hint93123%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93123%_)))
                        _g97586_))
                ((let () (declare (not safe)) (##fx= _g97585_ 2))
                 (apply (lambda (_%size-hint93127%_ _%seed93128%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93127%_
                             _%seed93128%_)))
                        _g97586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97586_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93064%_ _%key93065%_ _%default93066%_)
        (let ((_%table93068%_
               (let () (declare (not safe)) (&raw-table-table _%tab93064%_)))
              (_%seed93069%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93064%_))))
          (let* ((_%h93071%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93065%_))
                         _%seed93069%_))
                 (_%size93074%_ (vector-length _%table93068%_))
                 (_%entries93077%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93074%_ '2)))
                 (_%start93080%_
                  (let ((__tmp97587
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93071%_ _%entries93077%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97587 '1))))
            (let _%loop93084%_ ((_%probe93087%_ _%start93080%_)
                                (_%i93089%_ '1)
                                (_%deleted93091%_ '#f))
              (let ((_%k93094%_ (vector-ref _%table93068%_ _%probe93087%_)))
                (if (eq? _%k93094%_ (macro-unused-obj))
                    (let () _%default93066%_)
                    (if (eq? _%k93094%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97590
                                 (let ((_%next-probe93099%_
                                        (fx+ _%start93080%_
                                             _%i93089%_
                                             (fx* _%i93089%_ _%i93089%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93099%_
                                    _%size93074%_)))
                                (__tmp97589
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93089%_ '1)))
                                (__tmp97588
                                 (let ((_%$e93102%_ _%deleted93091%_))
                                   (if _%$e93102%_
                                       _%$e93102%_
                                       _%probe93087%_))))
                            (declare (not safe))
                            (_%loop93084%_ __tmp97590 __tmp97589 __tmp97588)))
                        (if (eq? _%key93065%_ _%k93094%_)
                            (let ()
                              (vector-ref
                               _%table93068%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93087%_ '1))))
                            (let ()
                              (let ((__tmp97592
                                     (let ((_%next-probe93107%_
                                            (fx+ _%start93080%_
                                                 _%i93089%_
                                                 (fx* _%i93089%_ _%i93089%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93107%_
                                        _%size93074%_)))
                                    (__tmp97591
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93089%_ '1))))
                                (declare (not safe))
                                (_%loop93084%_
                                 __tmp97592
                                 __tmp97591
                                 _%deleted93091%_))))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93060%_ _%key93061%_ _%value93062%_)
        (if (let ((__tmp97595
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93060%_)))
                  (__tmp97593
                   (let ((__tmp97594
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93060%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97594 '4))))
              (declare (not safe))
              (##fx< __tmp97595 __tmp97593))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93060%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93060%_
           _%key93061%_
           _%value93062%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93011%_ _%key93012%_ _%value93013%_)
        (let ((_%table93016%_
               (let () (declare (not safe)) (&raw-table-table _%tab93011%_)))
              (_%seed93017%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93011%_))))
          (let* ((_%h93019%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93012%_))
                         _%seed93017%_))
                 (_%size93022%_ (vector-length _%table93016%_))
                 (_%entries93025%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93022%_ '2)))
                 (_%start93028%_
                  (let ((__tmp97596
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93019%_ _%entries93025%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97596 '1))))
            (let _%loop93032%_ ((_%probe93035%_ _%start93028%_)
                                (_%i93037%_ '1)
                                (_%deleted93039%_ '#f))
              (let ((_%k93042%_ (vector-ref _%table93016%_ _%probe93035%_)))
                (if (eq? _%k93042%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93039%_
                          (begin
                            (vector-set!
                             _%table93016%_
                             _%deleted93039%_
                             _%key93012%_)
                            (vector-set!
                             _%table93016%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93039%_ '1))
                             _%value93013%_)
                            ((lambda ()
                               (let ((__tmp97597
                                      (let ((__tmp97598
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93011%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97598 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93011%_
                                  __tmp97597)))))
                          (begin
                            (vector-set!
                             _%table93016%_
                             _%probe93035%_
                             _%key93012%_)
                            (vector-set!
                             _%table93016%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93035%_ '1))
                             _%value93013%_)
                            ((lambda ()
                               (let ((__tmp97599
                                      (let ((__tmp97600
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93011%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97600 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93011%_
                                  __tmp97599))
                               (let ((__tmp97601
                                      (let ((__tmp97602
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93011%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97602 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93011%_
                                  __tmp97601)))))))
                    (if (eq? _%k93042%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97605
                                 (let ((_%next-probe93049%_
                                        (fx+ _%start93028%_
                                             _%i93037%_
                                             (fx* _%i93037%_ _%i93037%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93049%_
                                    _%size93022%_)))
                                (__tmp97604
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93037%_ '1)))
                                (__tmp97603
                                 (let ((_%$e93052%_ _%deleted93039%_))
                                   (if _%$e93052%_
                                       _%$e93052%_
                                       _%probe93035%_))))
                            (declare (not safe))
                            (_%loop93032%_ __tmp97605 __tmp97604 __tmp97603)))
                        (if (eq? _%key93012%_ _%k93042%_)
                            (let ()
                              (vector-set!
                               _%table93016%_
                               _%probe93035%_
                               _%key93012%_)
                              (vector-set!
                               _%table93016%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93035%_ '1))
                               _%value93013%_))
                            (let ()
                              (let ((__tmp97607
                                     (let ((_%next-probe93057%_
                                            (fx+ _%start93028%_
                                                 _%i93037%_
                                                 (fx* _%i93037%_ _%i93037%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93057%_
                                        _%size93022%_)))
                                    (__tmp97606
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93037%_ '1))))
                                (declare (not safe))
                                (_%loop93032%_
                                 __tmp97607
                                 __tmp97606
                                 _%deleted93039%_))))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93006%_
               _%key93007%_
               _%method-specializer-table-update!93008%_
               _%default93009%_)
        (if (let ((__tmp97610
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93006%_)))
                  (__tmp97608
                   (let ((__tmp97609
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93006%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97609 '4))))
              (declare (not safe))
              (##fx< __tmp97610 __tmp97608))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93006%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93006%_
           _%key93007%_
           _%method-specializer-table-update!93008%_
           _%default93009%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab92956%_
               _%key92957%_
               _%method-specializer-table-update!92958%_
               _%default92959%_)
        (let ((_%table92962%_
               (let () (declare (not safe)) (&raw-table-table _%tab92956%_)))
              (_%seed92963%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92956%_))))
          (let* ((_%h92965%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key92957%_))
                         _%seed92963%_))
                 (_%size92968%_ (vector-length _%table92962%_))
                 (_%entries92971%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92968%_ '2)))
                 (_%start92974%_
                  (let ((__tmp97611
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92965%_ _%entries92971%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97611 '1))))
            (let _%loop92978%_ ((_%probe92981%_ _%start92974%_)
                                (_%i92983%_ '1)
                                (_%deleted92985%_ '#f))
              (let ((_%k92988%_ (vector-ref _%table92962%_ _%probe92981%_)))
                (if (eq? _%k92988%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92985%_
                          (begin
                            (vector-set!
                             _%table92962%_
                             _%deleted92985%_
                             _%key92957%_)
                            (vector-set!
                             _%table92962%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92985%_ '1))
                             (_%method-specializer-table-update!92958%_
                              _%default92959%_))
                            ((lambda ()
                               (let ((__tmp97612
                                      (let ((__tmp97613
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92956%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97613 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92956%_
                                  __tmp97612)))))
                          (begin
                            (vector-set!
                             _%table92962%_
                             _%probe92981%_
                             _%key92957%_)
                            (vector-set!
                             _%table92962%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92981%_ '1))
                             (_%method-specializer-table-update!92958%_
                              _%default92959%_))
                            ((lambda ()
                               (let ((__tmp97614
                                      (let ((__tmp97615
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92956%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97615 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92956%_
                                  __tmp97614))
                               (let ((__tmp97616
                                      (let ((__tmp97617
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92956%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97617 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92956%_
                                  __tmp97616)))))))
                    (if (eq? _%k92988%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97620
                                 (let ((_%next-probe92995%_
                                        (fx+ _%start92974%_
                                             _%i92983%_
                                             (fx* _%i92983%_ _%i92983%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92995%_
                                    _%size92968%_)))
                                (__tmp97619
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92983%_ '1)))
                                (__tmp97618
                                 (let ((_%$e92998%_ _%deleted92985%_))
                                   (if _%$e92998%_
                                       _%$e92998%_
                                       _%probe92981%_))))
                            (declare (not safe))
                            (_%loop92978%_ __tmp97620 __tmp97619 __tmp97618)))
                        (if (eq? _%key92957%_ _%k92988%_)
                            (let ()
                              (vector-set!
                               _%table92962%_
                               _%probe92981%_
                               _%key92957%_)
                              (vector-set!
                               _%table92962%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92981%_ '1))
                               (_%method-specializer-table-update!92958%_
                                (vector-ref
                                 _%table92962%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92981%_ '1))))))
                            (let ()
                              (let ((__tmp97622
                                     (let ((_%next-probe93003%_
                                            (fx+ _%start92974%_
                                                 _%i92983%_
                                                 (fx* _%i92983%_ _%i92983%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93003%_
                                        _%size92968%_)))
                                    (__tmp97621
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92983%_ '1))))
                                (declare (not safe))
                                (_%loop92978%_
                                 __tmp97622
                                 __tmp97621
                                 _%deleted92985%_))))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab92911%_ _%key92913%_)
        (let ((_%table92916%_
               (let () (declare (not safe)) (&raw-table-table _%tab92911%_)))
              (_%seed92918%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92911%_))))
          (let* ((_%h92921%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key92913%_))
                         _%seed92918%_))
                 (_%size92924%_ (vector-length _%table92916%_))
                 (_%entries92927%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92924%_ '2)))
                 (_%start92930%_
                  (let ((__tmp97623
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92921%_ _%entries92927%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97623 '1))))
            (let _%loop92934%_ ((_%probe92937%_ _%start92930%_)
                                (_%i92939%_ '1))
              (let ((_%k92942%_ (vector-ref _%table92916%_ _%probe92937%_)))
                (if (eq? _%k92942%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92942%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97625
                                 (let ((_%next-probe92947%_
                                        (fx+ _%start92930%_
                                             _%i92939%_
                                             (fx* _%i92939%_ _%i92939%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92947%_
                                    _%size92924%_)))
                                (__tmp97624
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92939%_ '1))))
                            (declare (not safe))
                            (_%loop92934%_ __tmp97625 __tmp97624)))
                        (if (eq? _%key92913%_ _%k92942%_)
                            (let ()
                              (vector-set!
                               _%table92916%_
                               _%probe92937%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92916%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92937%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97626
                                        (let ((__tmp97627
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92911%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97627 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92911%_
                                    __tmp97626)))))
                            (let ()
                              (let ((__tmp97629
                                     (let ((_%next-probe92953%_
                                            (fx+ _%start92930%_
                                                 _%i92939%_
                                                 (fx* _%i92939%_ _%i92939%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92953%_
                                        _%size92924%_)))
                                    (__tmp97628
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92939%_ '1))))
                                (declare (not safe))
                                (_%loop92934%_
                                 __tmp97629
                                 __tmp97628))))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc92902%_ _%specializer92903%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92907%_ ()
            (if (let ((__tmp97630
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97630 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92907%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc92902%_
           _%specializer92903%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc92892%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92896%_ ()
            (if (let ((__tmp97631
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97631 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92896%_))))))
        (let ((_%specializer92900%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc92892%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer92900%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass92890%_)
        (let ((__tmp97632
               (let () (declare (not safe)) (##type-id _%klass92890%_))))
          (declare (not safe))
          (symbolic-hash __tmp97632))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint92871%_ _%seed92873%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint92871%_
           __class-specializer-hash-key
           eq?
           _%seed92873%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint92879%_ '#f) (_%seed92881%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92879%_ _%seed92881%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint92883%_)
        (let ((_%seed92885%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92883%_ _%seed92885%_))))
    (define make-class-specializer-table
      (lambda _g97634_
        (let ((_g97633_ (let () (declare (not safe)) (##length _g97634_))))
          (cond ((let () (declare (not safe)) (##fx= _g97633_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g97634_))
                ((let () (declare (not safe)) (##fx= _g97633_ 1))
                 (apply (lambda (_%size-hint92883%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint92883%_)))
                        _g97634_))
                ((let () (declare (not safe)) (##fx= _g97633_ 2))
                 (apply (lambda (_%size-hint92887%_ _%seed92888%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint92887%_
                             _%seed92888%_)))
                        _g97634_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97634_))))))
    (define class-specializer-table-ref
      (lambda (_%tab92824%_ _%key92825%_ _%default92826%_)
        (let ((_%table92828%_
               (let () (declare (not safe)) (&raw-table-table _%tab92824%_)))
              (_%seed92829%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92824%_))))
          (let* ((_%h92831%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92825%_))
                         _%seed92829%_))
                 (_%size92834%_ (vector-length _%table92828%_))
                 (_%entries92837%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92834%_ '2)))
                 (_%start92840%_
                  (let ((__tmp97635
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92831%_ _%entries92837%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97635 '1))))
            (let _%loop92844%_ ((_%probe92847%_ _%start92840%_)
                                (_%i92849%_ '1)
                                (_%deleted92851%_ '#f))
              (let ((_%k92854%_ (vector-ref _%table92828%_ _%probe92847%_)))
                (if (eq? _%k92854%_ (macro-unused-obj))
                    (let () _%default92826%_)
                    (if (eq? _%k92854%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97638
                                 (let ((_%next-probe92859%_
                                        (fx+ _%start92840%_
                                             _%i92849%_
                                             (fx* _%i92849%_ _%i92849%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92859%_
                                    _%size92834%_)))
                                (__tmp97637
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92849%_ '1)))
                                (__tmp97636
                                 (let ((_%$e92862%_ _%deleted92851%_))
                                   (if _%$e92862%_
                                       _%$e92862%_
                                       _%probe92847%_))))
                            (declare (not safe))
                            (_%loop92844%_ __tmp97638 __tmp97637 __tmp97636)))
                        (if (eq? _%key92825%_ _%k92854%_)
                            (let ()
                              (vector-ref
                               _%table92828%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92847%_ '1))))
                            (let ()
                              (let ((__tmp97640
                                     (let ((_%next-probe92867%_
                                            (fx+ _%start92840%_
                                                 _%i92849%_
                                                 (fx* _%i92849%_ _%i92849%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92867%_
                                        _%size92834%_)))
                                    (__tmp97639
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92849%_ '1))))
                                (declare (not safe))
                                (_%loop92844%_
                                 __tmp97640
                                 __tmp97639
                                 _%deleted92851%_))))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab92820%_ _%key92821%_ _%value92822%_)
        (if (let ((__tmp97643
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92820%_)))
                  (__tmp97641
                   (let ((__tmp97642
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92820%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97642 '4))))
              (declare (not safe))
              (##fx< __tmp97643 __tmp97641))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92820%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab92820%_
           _%key92821%_
           _%value92822%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab92771%_ _%key92772%_ _%value92773%_)
        (let ((_%table92776%_
               (let () (declare (not safe)) (&raw-table-table _%tab92771%_)))
              (_%seed92777%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92771%_))))
          (let* ((_%h92779%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92772%_))
                         _%seed92777%_))
                 (_%size92782%_ (vector-length _%table92776%_))
                 (_%entries92785%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92782%_ '2)))
                 (_%start92788%_
                  (let ((__tmp97644
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92779%_ _%entries92785%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97644 '1))))
            (let _%loop92792%_ ((_%probe92795%_ _%start92788%_)
                                (_%i92797%_ '1)
                                (_%deleted92799%_ '#f))
              (let ((_%k92802%_ (vector-ref _%table92776%_ _%probe92795%_)))
                (if (eq? _%k92802%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92799%_
                          (begin
                            (vector-set!
                             _%table92776%_
                             _%deleted92799%_
                             _%key92772%_)
                            (vector-set!
                             _%table92776%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92799%_ '1))
                             _%value92773%_)
                            ((lambda ()
                               (let ((__tmp97645
                                      (let ((__tmp97646
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92771%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97646 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92771%_
                                  __tmp97645)))))
                          (begin
                            (vector-set!
                             _%table92776%_
                             _%probe92795%_
                             _%key92772%_)
                            (vector-set!
                             _%table92776%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92795%_ '1))
                             _%value92773%_)
                            ((lambda ()
                               (let ((__tmp97647
                                      (let ((__tmp97648
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92771%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97648 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92771%_
                                  __tmp97647))
                               (let ((__tmp97649
                                      (let ((__tmp97650
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92771%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97650 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92771%_
                                  __tmp97649)))))))
                    (if (eq? _%k92802%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97653
                                 (let ((_%next-probe92809%_
                                        (fx+ _%start92788%_
                                             _%i92797%_
                                             (fx* _%i92797%_ _%i92797%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92809%_
                                    _%size92782%_)))
                                (__tmp97652
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92797%_ '1)))
                                (__tmp97651
                                 (let ((_%$e92812%_ _%deleted92799%_))
                                   (if _%$e92812%_
                                       _%$e92812%_
                                       _%probe92795%_))))
                            (declare (not safe))
                            (_%loop92792%_ __tmp97653 __tmp97652 __tmp97651)))
                        (if (eq? _%key92772%_ _%k92802%_)
                            (let ()
                              (vector-set!
                               _%table92776%_
                               _%probe92795%_
                               _%key92772%_)
                              (vector-set!
                               _%table92776%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92795%_ '1))
                               _%value92773%_))
                            (let ()
                              (let ((__tmp97655
                                     (let ((_%next-probe92817%_
                                            (fx+ _%start92788%_
                                                 _%i92797%_
                                                 (fx* _%i92797%_ _%i92797%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92817%_
                                        _%size92782%_)))
                                    (__tmp97654
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92797%_ '1))))
                                (declare (not safe))
                                (_%loop92792%_
                                 __tmp97655
                                 __tmp97654
                                 _%deleted92799%_))))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab92766%_
               _%key92767%_
               _%class-specializer-table-update!92768%_
               _%default92769%_)
        (if (let ((__tmp97658
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92766%_)))
                  (__tmp97656
                   (let ((__tmp97657
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92766%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97657 '4))))
              (declare (not safe))
              (##fx< __tmp97658 __tmp97656))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92766%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab92766%_
           _%key92767%_
           _%class-specializer-table-update!92768%_
           _%default92769%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab92716%_
               _%key92717%_
               _%class-specializer-table-update!92718%_
               _%default92719%_)
        (let ((_%table92722%_
               (let () (declare (not safe)) (&raw-table-table _%tab92716%_)))
              (_%seed92723%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92716%_))))
          (let* ((_%h92725%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92717%_))
                         _%seed92723%_))
                 (_%size92728%_ (vector-length _%table92722%_))
                 (_%entries92731%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92728%_ '2)))
                 (_%start92734%_
                  (let ((__tmp97659
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92725%_ _%entries92731%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97659 '1))))
            (let _%loop92738%_ ((_%probe92741%_ _%start92734%_)
                                (_%i92743%_ '1)
                                (_%deleted92745%_ '#f))
              (let ((_%k92748%_ (vector-ref _%table92722%_ _%probe92741%_)))
                (if (eq? _%k92748%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92745%_
                          (begin
                            (vector-set!
                             _%table92722%_
                             _%deleted92745%_
                             _%key92717%_)
                            (vector-set!
                             _%table92722%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92745%_ '1))
                             (_%class-specializer-table-update!92718%_
                              _%default92719%_))
                            ((lambda ()
                               (let ((__tmp97660
                                      (let ((__tmp97661
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92716%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97661 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92716%_
                                  __tmp97660)))))
                          (begin
                            (vector-set!
                             _%table92722%_
                             _%probe92741%_
                             _%key92717%_)
                            (vector-set!
                             _%table92722%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92741%_ '1))
                             (_%class-specializer-table-update!92718%_
                              _%default92719%_))
                            ((lambda ()
                               (let ((__tmp97662
                                      (let ((__tmp97663
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92716%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97663 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92716%_
                                  __tmp97662))
                               (let ((__tmp97664
                                      (let ((__tmp97665
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92716%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97665 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92716%_
                                  __tmp97664)))))))
                    (if (eq? _%k92748%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97668
                                 (let ((_%next-probe92755%_
                                        (fx+ _%start92734%_
                                             _%i92743%_
                                             (fx* _%i92743%_ _%i92743%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92755%_
                                    _%size92728%_)))
                                (__tmp97667
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92743%_ '1)))
                                (__tmp97666
                                 (let ((_%$e92758%_ _%deleted92745%_))
                                   (if _%$e92758%_
                                       _%$e92758%_
                                       _%probe92741%_))))
                            (declare (not safe))
                            (_%loop92738%_ __tmp97668 __tmp97667 __tmp97666)))
                        (if (eq? _%key92717%_ _%k92748%_)
                            (let ()
                              (vector-set!
                               _%table92722%_
                               _%probe92741%_
                               _%key92717%_)
                              (vector-set!
                               _%table92722%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92741%_ '1))
                               (_%class-specializer-table-update!92718%_
                                (vector-ref
                                 _%table92722%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92741%_ '1))))))
                            (let ()
                              (let ((__tmp97670
                                     (let ((_%next-probe92763%_
                                            (fx+ _%start92734%_
                                                 _%i92743%_
                                                 (fx* _%i92743%_ _%i92743%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92763%_
                                        _%size92728%_)))
                                    (__tmp97669
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92743%_ '1))))
                                (declare (not safe))
                                (_%loop92738%_
                                 __tmp97670
                                 __tmp97669
                                 _%deleted92745%_))))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92671%_ _%key92673%_)
        (let ((_%table92676%_
               (let () (declare (not safe)) (&raw-table-table _%tab92671%_)))
              (_%seed92678%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92671%_))))
          (let* ((_%h92681%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92673%_))
                         _%seed92678%_))
                 (_%size92684%_ (vector-length _%table92676%_))
                 (_%entries92687%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92684%_ '2)))
                 (_%start92690%_
                  (let ((__tmp97671
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92681%_ _%entries92687%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97671 '1))))
            (let _%loop92694%_ ((_%probe92697%_ _%start92690%_)
                                (_%i92699%_ '1))
              (let ((_%k92702%_ (vector-ref _%table92676%_ _%probe92697%_)))
                (if (eq? _%k92702%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92702%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97673
                                 (let ((_%next-probe92707%_
                                        (fx+ _%start92690%_
                                             _%i92699%_
                                             (fx* _%i92699%_ _%i92699%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92707%_
                                    _%size92684%_)))
                                (__tmp97672
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92699%_ '1))))
                            (declare (not safe))
                            (_%loop92694%_ __tmp97673 __tmp97672)))
                        (if (eq? _%key92673%_ _%k92702%_)
                            (let ()
                              (vector-set!
                               _%table92676%_
                               _%probe92697%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92676%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92697%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97674
                                        (let ((__tmp97675
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92671%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97675 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92671%_
                                    __tmp97674)))))
                            (let ()
                              (let ((__tmp97677
                                     (let ((_%next-probe92713%_
                                            (fx+ _%start92690%_
                                                 _%i92699%_
                                                 (fx* _%i92699%_ _%i92699%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92713%_
                                        _%size92684%_)))
                                    (__tmp97676
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92699%_ '1))))
                                (declare (not safe))
                                (_%loop92694%_
                                 __tmp97677
                                 __tmp97676))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92657%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92657%_ 'class))
              (let ()
                (let ((_%klass92661%_ _%klass92657%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__specialize-class _%klass92661%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass92657%_)))))
    (define __specialize-class
      (lambda (_%klass92639%_)
        (let ()
          (let ((_%klass92642%_ _%klass92639%_))
            (let ()
              (let ((_%$e92651%_
                     (let ()
                       (declare (not safe))
                       (__lookup-class-specializer _%klass92642%_))))
                (if _%$e92651%_
                    _%$e92651%_
                    (let ()
                      (let ((_%method-table92655%_
                             (let ()
                               (declare (not safe))
                               (___specialize-class _%klass92642%_))))
                        (let ()
                          (declare (not safe))
                          (__bind-class-specializer!
                           _%klass92642%_
                           _%method-table92655%_))
                        _%method-table92655%_)))))))))
    (define __lookup-class-specializer
      (lambda (_%klass92629%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92633%_ ()
            (if (let ((__tmp97678
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97678 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92633%_))))))
        (let ((_%method-table92637%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass92629%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92637%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92620%_ _%method-table92621%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92625%_ ()
            (if (let ((__tmp97679
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97679 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92625%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass92620%_
           _%method-table92621%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92604%_
               _%method-table92605%_
               _%method92606%_
               _%proc92607%_)
        (let ((_%$e92609%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92605%_
                  _%method92606%_
                  '#f))))
          (if _%$e92609%_
              _%$e92609%_
              (let ((_%$e92612%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc92607%_))))
                (if _%$e92612%_
                    ((lambda (_%specialize92615%_)
                       (let ((_%specialized-proc92617%_
                              (_%specialize92615%_
                               _%klass92604%_
                               _%method-table92605%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92605%_
                          _%method92606%_
                          _%specialized-proc92617%_)))
                     _%$e92612%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (symbolic-table-set!
                         _%method-table92605%_
                         _%method92606%_
                         _%proc92607%_)))))))))
    (define ___specialize-class
      (lambda (_%klass92546%_)
        (if (let ((__tmp97680
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass92546%_ 'class))))
              (declare (not safe))
              (not __tmp97680))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass92546%_))
                  (let ((__tmp97681
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass92546%_))))
                    (declare (not safe))
                    (__specialize-class __tmp97681))
                  (error '"bad class; cannot specialize" _%klass92546%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass92546%_))
                (let ()
                  (let ((__method97456
                         (let ()
                           (declare (not safe))
                           (__method-ref _%klass92546%_ 'specialize-class))))
                    (if __method97456
                        (__method97456 _%klass92546%_)
                        (error '"Missing method"
                               _%klass92546%_
                               'specialize-class))))
                (if (let ((__tmp97682
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92546%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97682))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass92546%_))
                    (let ()
                      (let ((_%method-table92552%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let _%loop92554%_ ((_%rest92556%_
                                             (let ()
                                               (declare (not safe))
                                               (class-precedence-list
                                                _%klass92546%_))))
                          (let* ((_%rest9255792565%_ _%rest92556%_)
                                 (_%else9255992573%_
                                  (lambda () _%method-table92552%_))
                                 (_%K9256192592%_
                                  (lambda (_%rest92576%_ _%xklass92577%_)
                                    (let ((_%xmethod-table9257892580%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%xklass92577%_
                                              '11
                                              '#f
                                              '#f))))
                                      (if _%xmethod-table9257892580%_
                                          (let* ((_%xmethod-table92583%_
                                                  _%xmethod-table9257892580%_)
                                                 (__tmp97683
                                                  (lambda (_%g9258492587%_
                                                           _%g9258592589%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (__specialize-method
                                                       _%klass92546%_
                                                       _%method-table92552%_
                                                       _%g9258492587%_
                                                       _%g9258592589%_)))))
                                            (declare (not safe))
                                            (raw-table-for-each
                                             _%xmethod-table92583%_
                                             __tmp97683))
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop92554%_ _%rest92576%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9255792565%_))
                                (let ((_%hd9256292595%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9255792565%_)))
                                      (_%tl9256392597%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9255792565%_))))
                                  (let* ((_%xklass92600%_ _%hd9256292595%_)
                                         (_%rest92602%_ _%tl9256392597%_))
                                    (declare (not safe))
                                    (_%K9256192592%_
                                     _%rest92602%_
                                     _%xklass92600%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9255992573%_))))))))))))
    (define seal-class!
      (lambda (_%klass92532%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92532%_ 'class))
              (let ()
                (let ((_%klass92536%_ _%klass92532%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__seal-class! _%klass92536%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
               'contract:
               'class-type?
               'value:
               _%klass92532%_)))))
    (define __seal-class!
      (lambda (_%klass92515%_)
        (let ()
          (let ((_%klass92518%_ _%klass92515%_))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (__class-type-sealed? _%klass92518%_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (__class-type-final? _%klass92518%_))
                        '#!void
                        (error '"cannot seal non-final class" _%klass92518%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass92518%_))
                        (let ()
                          (let ((__method97457
                                 (let ()
                                   (declare (not safe))
                                   (__method-ref
                                    _%klass92518%_
                                    'seal-class!))))
                            (if __method97457
                                (__method97457 _%klass92518%_)
                                (error '"Missing method"
                                       _%klass92518%_
                                       'seal-class!))))
                        (if (let ((__tmp97684
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass92518%_
                                      '6
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (__find class-type-metaclass? __tmp97684))
                            (let ()
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _%klass92518%_))
                            (let ()
                              (let ((_%method-table92530%_
                                     (let ()
                                       (declare (not safe))
                                       (__specialize-class _%klass92518%_))))
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _%klass92518%_
                                 _%method-table92530%_
                                 '11
                                 '#f
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass92518%_)))))))))
    (define next-method
      (lambda (_%subklass92489%_ _%obj92490%_ _%id92491%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92489%_ 'class))
              (let ()
                (let ((_%subklass92495%_ _%subklass92489%_))
                  (if (let () (declare (not safe)) (symbol? _%id92491%_))
                      (let ()
                        (let ((_%id92505%_ _%id92491%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__next-method
                               _%subklass92495%_
                               _%obj92490%_
                               _%id92505%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id92491%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
               'contract:
               'class-type?
               'value:
               _%subklass92489%_)))))
    (define __next-method
      (lambda (_%subklass92426%_ _%obj92427%_ _%id92428%_)
        (let ()
          (let ((_%subklass92431%_ _%subklass92426%_))
            (let ((_%id92439%_ _%id92428%_))
              (let ()
                (letrec ((_%find-next-method92448%_
                          (lambda (_%klass92450%_)
                            (let _%lp92452%_ ((_%rest92454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (class-precedence-list
                                                  _%klass92450%_))))
                              (let* ((_%rest9245592463%_ _%rest92454%_)
                                     (_%else9245792471%_ (lambda () '#f))
                                     (_%K9245992477%_
                                      (lambda (_%rest92474%_ _%klass92475%_)
                                        (if (eq? (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%subklass92431%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass92475%_)))
                                            (let ()
                                              (declare (not safe))
                                              (__mixin-find-method
                                               _%rest92474%_
                                               _%obj92427%_
                                               _%id92439%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp92452%_ _%rest92474%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest9245592463%_))
                                    (let ((_%hd9246092480%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest9245592463%_)))
                                          (_%tl9246192482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest9245592463%_))))
                                      (let* ((_%klass92485%_ _%hd9246092480%_)
                                             (_%rest92487%_ _%tl9246192482%_))
                                        (declare (not safe))
                                        (_%K9245992477%_
                                         _%rest92487%_
                                         _%klass92485%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else9245792471%_))))))))
                  (let ((__tmp97685
                         (let ()
                           (declare (not safe))
                           (class-of _%obj92427%_))))
                    (declare (not safe))
                    (_%find-next-method92448%_ __tmp97685)))))))))
    (define call-next-method
      (lambda (_%subklass92399%_ _%obj92400%_ _%id92401%_ . _%args92402%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92399%_ 'class))
              (let ()
                (let ((_%subklass92406%_ _%subklass92399%_))
                  (if (let () (declare (not safe)) (symbol? _%id92401%_))
                      (let ()
                        (let ((_%id92416%_ _%id92401%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (##apply __call-next-method
                                       _%subklass92406%_
                                       _%obj92400%_
                                       _%id92416%_
                                       _%args92402%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id92401%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
               'contract:
               'class-type?
               'value:
               _%subklass92399%_)))))
    (define __call-next-method
      (lambda (_%subklass92370%_ _%obj92371%_ _%id92372%_ . _%args92373%_)
        (let ()
          (let ((_%subklass92376%_ _%subklass92370%_))
            (let ((_%id92384%_ _%id92372%_))
              (let ()
                (let ((_%$e92393%_
                       (let ()
                         (declare (not safe))
                         (__next-method
                          _%subklass92376%_
                          _%obj92371%_
                          _%id92384%_))))
                  (if _%$e92393%_
                      ((lambda (_%methodf92396%_)
                         (apply _%methodf92396%_ _%obj92371%_ _%args92373%_))
                       _%$e92393%_)
                      (let ()
                        (error '"cannot find next method"
                               'object:
                               _%obj92371%_
                               'method:
                               _%id92384%_))))))))))
    (define write-style
      (lambda (_%we92368%_) (macro-writeenv-style _%we92368%_)))
    (define write-object
      (lambda (_%we92359%_ _%obj92360%_)
        (let ((_%$e92362%_
               (let () (declare (not safe)) (__method-ref _%obj92360%_ ':wr))))
          (if _%$e92362%_
              ((lambda (_%method92365%_)
                 (_%method92365%_ _%obj92360%_ _%we92359%_))
               _%$e92362%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-wr _%we92359%_ _%obj92360%_)))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92274%_)
        (letrec ((_%shadow-type-id92276%_
                  (lambda (_%type92357%_)
                    (let ((__tmp97686
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92357%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97686 '"::t"))))
                 (_%shadow-type-name92277%_
                  (lambda (_%type92355%_)
                    (let () (declare (not safe)) (##type-name _%type92355%_))))
                 (_%make-shadow-class92278%_
                  (lambda (_%type92347%_ _%precedence-list92348%_)
                    (let* ((_%super92350%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92348%_))
                                (cons (car _%precedence-list92348%_) '())
                                '()))
                           (_%klass92352%_
                            (let ((__tmp97689
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92276%_ _%type92347%_)))
                                  (__tmp97688
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92347%_)))
                                  (__tmp97687
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _%type92347%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp97689
                               __tmp97688
                               _%super92350%_
                               '()
                               __tmp97687
                               '#f))))
                      (let ((__tmp97690
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92347%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97690
                         _%klass92352%_))
                      _%klass92352%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92282%_ ()
              (if (let ((__tmp97691
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97691 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92282%_))))))
          (let ((_%$e92286%_
                 (let ((__tmp97692
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92274%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97692 '#f))))
            (if _%$e92286%_
                ((lambda (_%klass92289%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92289%_)
                 _%$e92286%_)
                (let ()
                  (let _%loop92292%_ ((_%super92294%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%type92274%_)))
                                      (_%hierarchy92295%_ '()))
                    (if (let () (declare (not safe)) (not _%super92294%_))
                        (let ()
                          (let _%loop92298%_ ((_%rest92300%_
                                               _%hierarchy92295%_)
                                              (_%precedence-list92301%_ '()))
                            (let* ((_%rest9230292310%_ _%rest92300%_)
                                   (_%else9230492320%_
                                    (lambda ()
                                      (let ((_%klass92318%_
                                             (let ()
                                               (declare (not safe))
                                               (_%make-shadow-class92278%_
                                                _%type92274%_
                                                _%precedence-list92301%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##vector-cas!
                                           __shadow-classes-mx
                                           '0
                                           '0
                                           '1))
                                        _%klass92318%_)))
                                   (_%K9230692334%_
                                    (lambda (_%rest92323%_ _%type92324%_)
                                      (let ((_%$e92326%_
                                             (let ((__tmp97693
                                                    (let ()
                                                      (declare (not safe))
                                                      (##type-id
                                                       _%type92324%_))))
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                __shadow-classes
                                                __tmp97693
                                                '#f))))
                                        (if _%$e92326%_
                                            ((lambda (_%klass92329%_)
                                               (let ((__tmp97694
                                                      (cons _%klass92329%_
                                                            _%precedence-list92301%_)))
                                                 (declare (not safe))
                                                 (_%loop92298%_
                                                  _%rest92323%_
                                                  __tmp97694)))
                                             _%$e92326%_)
                                            (let ()
                                              (let* ((_%klass92332%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make-shadow-class92278%_
                                                         _%type92324%_
                                                         _%precedence-list92301%_)))
                                                     (__tmp97695
                                                      (cons _%klass92332%_
                                                            _%precedence-list92301%_)))
                                                (declare (not safe))
                                                (_%loop92298%_
                                                 _%rest92323%_
                                                 __tmp97695))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest9230292310%_))
                                  (let ((_%hd9230792337%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9230292310%_)))
                                        (_%tl9230892339%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest9230292310%_))))
                                    (let* ((_%type92342%_ _%hd9230792337%_)
                                           (_%rest92344%_ _%tl9230892339%_))
                                      (declare (not safe))
                                      (_%K9230692334%_
                                       _%rest92344%_
                                       _%type92342%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else9230492320%_))))))
                        (let ()
                          (let ((__tmp97697
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _%super92294%_)))
                                (__tmp97696
                                 (cons _%super92294%_ _%hierarchy92295%_)))
                            (declare (not safe))
                            (_%loop92292%_ __tmp97697 __tmp97696)))))))))))
    (define class-of
      (lambda (_%obj92247%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92251%_
                 (let () (declare (not safe)) (##type _%obj92247%_))))
            (if (fx= _%t92251%_ (macro-type-subtyped))
                (let ()
                  (let ((_%st92254%_
                         (let ()
                           (declare (not safe))
                           (##subtype _%obj92247%_))))
                    (if (fx= _%st92254%_ (macro-subtype-structure))
                        (let ()
                          (let ((_%klass92257%_
                                 (let ()
                                   (declare (not safe))
                                   (##structure-type _%obj92247%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%klass92257%_
                                   'class))
                                _%klass92257%_
                                (let ()
                                  (declare (not safe))
                                  (__shadow-class _%klass92257%_)))))
                        (if (fx= _%st92254%_ (macro-subtype-boxvalues))
                            (let ()
                              (if (let ((__tmp97698
                                         (let ()
                                           (declare (not safe))
                                           (##vector-length _%obj92247%_))))
                                    (declare (not safe))
                                    (##fx= __tmp97698 '1))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'box))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'values))))
                            (let ((_%$e92260%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref __subtype-id _%st92254%_))))
                              (if _%$e92260%_
                                  (let ()
                                    (declare (not safe))
                                    (__system-class _%$e92260%_))
                                  (let ()
                                    (error '"unknown class"
                                           'subtype:
                                           _%st92254%_
                                           'object:
                                           _%obj92247%_))))))))
                (if (fx= _%t92251%_ (macro-type-mem2))
                    (let ()
                      (let () (declare (not safe)) (__system-class 'pair)))
                    (if (fx= _%t92251%_ (macro-type-fixnum))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (__system-class 'fixnum)))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92247%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'char)))
                              (if (eq? _%obj92247%_ '())
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__system-class 'null)))
                                  (if (eq? _%obj92247%_ '#f)
                                      (let ()
                                        (let ()
                                          (declare (not safe))
                                          (__system-class 'boolean)))
                                      (if (eq? _%obj92247%_ '#t)
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__system-class 'boolean)))
                                          (if (eq? _%obj92247%_ '#!void)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class 'void)))
                                              (if (eq? _%obj92247%_ '#!eof)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (__system-class 'eof)))
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (__system-class
                                                       'special)))))))))))))))))
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
      (lambda (_%id92241%_)
        (let ((_%$e92243%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92241%_ '#f))))
          (if _%$e92243%_
              _%$e92243%_
              (let () (error '"unknown system class" _%id92241%_))))))
    (define __make-system-class
      (lambda (_%id92236%_ _%super92237%_)
        (let ((_%klass92239%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92236%_
                  _%id92236%_
                  _%super92237%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92236%_ _%klass92239%_))
          _%klass92239%_)))))
