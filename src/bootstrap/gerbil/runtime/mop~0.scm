(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712093475)
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
      (let ((_%flags96092%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96093%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96094%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96092%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96094%_
           _%properties96093%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96068%_
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
             (_%slot-vector96070%_ (list->vector (cons '#f _%slots96068%_)))
             (_%slot-table96077%_
              (let ((_%slot-table96072%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97540
                       (lambda (_%slot96074%_ _%field96075%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96072%_
                            _%slot96074%_
                            _%field96075%_))
                         (let ((__tmp97541
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96074%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96072%_
                            __tmp97541
                            _%field96075%_))))
                      (__tmp97538
                       (let ((__tmp97539
                              (let ()
                                (declare (not safe))
                                (##length _%slots96068%_))))
                         (declare (not safe))
                         (##iota __tmp97539 '1))))
                  (declare (not safe))
                  (##for-each __tmp97540 _%slots96068%_ __tmp97538))
                _%slot-table96072%_))
             (_%flags96079%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96085%_
              (list->vector
               (let ((__tmp97542
                      (map (lambda (_%g9608096082%_)
                             (list _%g9608096082%_ '5 '#f))
                           (drop _%slots96068%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97542))))
             (_%properties96087%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96068%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96089%_
              (let ((__tmp97543 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96079%_
                 ##type-type
                 _%fields96085%_
                 __tmp97543
                 _%slot-vector96070%_
                 _%slot-table96077%_
                 _%properties96087%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96089%_ _%t96089%_))
        _%t96089%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96064%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96065%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96066%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97544 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96064%_
           '#f
           '#()
           __tmp97544
           '#(#f)
           _%slot-table96066%_
           _%properties96065%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96062%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96062%_ 'class))))
    (define class-type=?
      (lambda (_%x96037%_ _%y96038%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96037%_ 'class))
              (let ()
                (let ((_%x96042%_ _%x96037%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%y96038%_ 'class))
                      (let ()
                        (let ((_%y96052%_ _%y96038%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-type=? _%x96042%_ _%y96052%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96038%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96037%_)))))
    (define __class-type=?
      (lambda (_%x96016%_ _%y96017%_)
        (let ()
          (let ((_%x96020%_ _%x96016%_))
            (let ((_%y96028%_ _%y96017%_))
              (let ()
                (eq? (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%x96020%_ '1 '#f '#f))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%y96028%_
                        '1
                        '#f
                        '#f)))))))))
    (define type-opaque?
      (lambda (_%type96002%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96002%_))
              (let ()
                (let ((_%type96006%_ _%type96002%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-opaque? _%type96006%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96002%_)))))
    (define __type-opaque?
      (lambda (_%type95990%_)
        (let ()
          (let ((_%type95993%_ _%type95990%_))
            (let ()
              (let ((__tmp97545
                     (let ((__tmp97546
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95993%_))))
                       (declare (not safe))
                       (##fxand __tmp97546 type-flag-opaque))))
                (declare (not safe))
                (##fx= __tmp97545 type-flag-opaque)))))))
    (define type-extensible?
      (lambda (_%type95976%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type95976%_))
              (let ()
                (let ((_%type95980%_ _%type95976%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-extensible? _%type95980%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type95976%_)))))
    (define __type-extensible?
      (lambda (_%type95964%_)
        (let ()
          (let ((_%type95967%_ _%type95964%_))
            (let ()
              (let ((__tmp97547
                     (let ((__tmp97548
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95967%_))))
                       (declare (not safe))
                       (##fxand __tmp97548 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97547 type-flag-extensible)))))))
    (define class-type-final?
      (lambda (_%type95950%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type95950%_ 'class))
              (let ()
                (let ((_%type95954%_ _%type95950%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-final? _%type95954%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type95950%_)))))
    (define __class-type-final?
      (lambda (_%type95938%_)
        (let ()
          (let ((_%type95941%_ _%type95938%_))
            (let ()
              (let ((__tmp97549
                     (let ((__tmp97550
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95941%_))))
                       (declare (not safe))
                       (##fxand __tmp97550 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97549 '0)))))))
    (define class-type-struct?
      (lambda (_%klass95924%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95924%_ 'class))
              (let ()
                (let ((_%klass95928%_ _%klass95924%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95928%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass95924%_)))))
    (define __class-type-struct?
      (lambda (_%klass95912%_)
        (let ()
          (let ((_%klass95915%_ _%klass95912%_))
            (let ()
              (let ((__tmp97551
                     (let ((__tmp97552
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95915%_))))
                       (declare (not safe))
                       (##fxand __tmp97552 class-type-flag-struct))))
                (declare (not safe))
                (##fx= __tmp97551 class-type-flag-struct)))))))
    (define class-type-sealed?
      (lambda (_%klass95898%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95898%_ 'class))
              (let ()
                (let ((_%klass95902%_ _%klass95898%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass95902%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass95898%_)))))
    (define __class-type-sealed?
      (lambda (_%klass95886%_)
        (let ()
          (let ((_%klass95889%_ _%klass95886%_))
            (let ()
              (let ((__tmp97553
                     (let ((__tmp97554
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95889%_))))
                       (declare (not safe))
                       (##fxand __tmp97554 class-type-flag-sealed))))
                (declare (not safe))
                (##fx= __tmp97553 class-type-flag-sealed)))))))
    (define class-type-metaclass?
      (lambda (_%klass95872%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95872%_ 'class))
              (let ()
                (let ((_%klass95876%_ _%klass95872%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass95876%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass95872%_)))))
    (define __class-type-metaclass?
      (lambda (_%klass95860%_)
        (let ()
          (let ((_%klass95863%_ _%klass95860%_))
            (let ()
              (let ((__tmp97555
                     (let ((__tmp97556
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95863%_))))
                       (declare (not safe))
                       (##fxand __tmp97556 class-type-flag-metaclass))))
                (declare (not safe))
                (##fx= __tmp97555 class-type-flag-metaclass)))))))
    (define class-type-system?
      (lambda (_%klass95846%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95846%_ 'class))
              (let ()
                (let ((_%klass95850%_ _%klass95846%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass95850%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass95846%_)))))
    (define __class-type-system?
      (lambda (_%klass95834%_)
        (let ()
          (let ((_%klass95837%_ _%klass95834%_))
            (let ()
              (let ((__tmp97557
                     (let ((__tmp97558
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95837%_))))
                       (declare (not safe))
                       (##fxand __tmp97558 class-type-flag-system))))
                (declare (not safe))
                (##fx= __tmp97557 class-type-flag-system)))))))
    (define make-class-type-descriptor
      (lambda (_%type-id95719%_
               _%type-name95720%_
               _%type-super95721%_
               _%precedence-list95722%_
               _%slot-vector95723%_
               _%properties95724%_
               _%constructor95725%_
               _%slot-table95726%_
               _%methods95727%_)
        (let ()
          (letrec ((_%make-props!95730%_
                    (lambda (_%key95803%_)
                      (letrec* ((_%ht95805%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!95806%_
                                 (lambda (_%ht95827%_ _%slots95828%_)
                                   (for-each
                                    (lambda (_%g9582995831%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht95827%_
                                         _%g9582995831%_
                                         '#t)))
                                    _%slots95828%_)))
                                (_%put-alist!95807%_
                                 (lambda (_%ht95816%_
                                          _%key95817%_
                                          _%alist95818%_)
                                   (let ((_%$e95820%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95817%_
                                             _%alist95818%_))))
                                     (if _%$e95820%_
                                         ((lambda (_%g9582295824%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!95806%_
                                               _%ht95816%_
                                               _%g9582295824%_)))
                                          _%$e95820%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!95807%_
                           _%ht95805%_
                           _%key95803%_
                           _%properties95724%_))
                        (for-each
                         (lambda (_%mixin95809%_)
                           (let ((_%alist95811%_
                                  (##structure-ref
                                   _%mixin95809%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist95811%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95803%_
                                             _%alist95811%_))))
                                 (let ((__tmp97559
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin95809%_))))
                                   (declare (not safe))
                                   (_%put-slots!95806%_
                                    _%ht95805%_
                                    __tmp97559))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!95807%_
                                    _%ht95805%_
                                    _%key95803%_
                                    _%alist95811%_)))))
                         _%precedence-list95722%_)
                        _%ht95805%_))))
            (let* ((_%transparent?95732%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties95724%_)))
                   (_%all-slots-printable?95737%_
                    (let ((_%$e95734%_ _%transparent?95732%_))
                      (if _%$e95734%_
                          _%$e95734%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties95724%_))))))
                   (_%printable95739%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?95737%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95730%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?95744%_
                    (let ((_%$e95741%_ _%transparent?95732%_))
                      (if _%$e95741%_
                          _%$e95741%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties95724%_))))))
                   (_%equalable95746%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?95744%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95730%_ 'equal:))
                        '#f))
                   (_%first-new-field95748%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super95721%_
                           'class))
                        (let ((__tmp97560
                               (##structure-ref
                                _%type-super95721%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp97560))
                        '1))
                   (_%field-info-length95750%_
                    (let ((__tmp97561
                           (let ((__tmp97562
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector95723%_))))
                             (declare (not safe))
                             (##fx- __tmp97562 _%first-new-field95748%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp97561)))
                   (_%field-info95752%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length95750%_ '#f)))
                   (_%struct?95754%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties95724%_)))
                   (_%final?95756%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties95724%_)))
                   (_%metaclass95764%_
                    (let ((_%metaclass9575795759%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties95724%_))))
                      (if _%metaclass9575795759%_
                          (let ((_%metaclass95762%_ _%metaclass9575795759%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass95762%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id95719%_
                                       'metaclass:
                                       _%metaclass95762%_))
                            _%metaclass95762%_)
                          '#f)))
                   (_%system?95766%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties95724%_)))
                   (_%opaque?95771%_
                    (let ((_%$e95768%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?95744%_))))
                      (if _%$e95768%_
                          _%$e95768%_
                          (if _%type-super95721%_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _%type-super95721%_))
                              '#f))))
                   (_%type-flags95773%_
                    (let ((__tmp97567
                           (if _%final?95756%_ '0 type-flag-extensible))
                          (__tmp97566
                           (if _%opaque?95771%_ type-flag-opaque '0))
                          (__tmp97565
                           (if _%struct?95754%_ class-type-flag-struct '0))
                          (__tmp97564
                           (if _%metaclass95764%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp97563
                           (if _%system?95766%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp97567
                               __tmp97566
                               __tmp97565
                               __tmp97564
                               __tmp97563)))
                   (_%precedence-list95781%_
                    (let ((_%$e95775%_ (memq t::t _%precedence-list95722%_)))
                      (if _%$e95775%_
                          ((lambda (_%tail95778%_)
                             (if (let ((__tmp97568 (cdr _%tail95778%_)))
                                   (declare (not safe))
                                   (null? __tmp97568))
                                 _%precedence-list95722%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list95722%_)))
                           _%$e95775%_)
                          (let ()
                            (let ((__tmp97569 (cons t::t '())))
                              (declare (not safe))
                              (##append
                               _%precedence-list95722%_
                               __tmp97569)))))))
              (let _%loop95784%_ ((_%i95786%_ _%first-new-field95748%_)
                                  (_%j95787%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j95787%_ _%field-info-length95750%_))
                    (let* ((_%slot95789%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector95723%_ _%i95786%_)))
                           (_%flags95797%_
                            (if _%transparent?95732%_
                                '0
                                (let ((__tmp97571
                                       (if (or _%all-slots-printable?95737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable95739%_
                                                  _%slot95789%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp97570
                                       (if (or _%all-slots-equalable?95744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable95746%_
                                                  _%slot95789%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp97571 __tmp97570)))))
                      (vector-set!
                       _%field-info95752%_
                       _%j95787%_
                       _%slot95789%_)
                      (vector-set!
                       _%field-info95752%_
                       (let () (declare (not safe)) (##fx+ _%j95787%_ '1))
                       _%flags95797%_)
                      (let ((__tmp97573
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95786%_ '1)))
                            (__tmp97572
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j95787%_ '3))))
                        (declare (not safe))
                        (_%loop95784%_ __tmp97573 __tmp97572)))
                    '#!void))
              (if _%metaclass95764%_
                  (let ((_%val95800%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass95764%_
                            _%type-id95719%_
                            _%type-name95720%_
                            _%type-flags95773%_
                            _%type-super95721%_
                            _%field-info95752%_
                            _%precedence-list95781%_
                            _%slot-vector95723%_
                            _%slot-table95726%_
                            _%properties95724%_
                            _%constructor95725%_
                            _%methods95727%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val95800%_ 'class))
                        _%val95800%_
                        (error '"bad cast" class::t _%val95800%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id95719%_
                     _%type-name95720%_
                     _%type-flags95773%_
                     _%type-super95721%_
                     _%field-info95752%_
                     _%precedence-list95781%_
                     _%slot-vector95723%_
                     _%slot-table95726%_
                     _%properties95724%_
                     _%constructor95725%_
                     _%methods95727%_))))))))
    (define class-type-id
      (lambda (_%klass95717%_)
        (##structure-ref _%klass95717%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95715%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95715%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95712%_ _%val95713%_)
        (##structure-set! _%klass95712%_ _%val95713%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95707%_ _%val95709%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95707%_
           _%val95709%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95705%_)
        (##structure-ref _%klass95705%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95703%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95703%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95700%_ _%val95701%_)
        (##structure-set! _%klass95700%_ _%val95701%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95695%_ _%val95697%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95695%_
           _%val95697%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95693%_)
        (##structure-ref _%klass95693%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95691%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95691%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95688%_ _%val95689%_)
        (##structure-set! _%klass95688%_ _%val95689%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95683%_ _%val95685%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95683%_
           _%val95685%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95681%_)
        (##structure-ref _%klass95681%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95679%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95679%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95676%_ _%val95677%_)
        (##structure-set! _%klass95676%_ _%val95677%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95671%_ _%val95673%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95671%_
           _%val95673%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95669%_)
        (##structure-ref _%klass95669%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95667%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95667%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95664%_ _%val95665%_)
        (##structure-set! _%klass95664%_ _%val95665%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95659%_ _%val95661%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95659%_
           _%val95661%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95657%_)
        (##structure-ref _%klass95657%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95655%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95655%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95652%_ _%val95653%_)
        (##structure-set!
         _%klass95652%_
         _%val95653%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95647%_ _%val95649%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95647%_
           _%val95649%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95645%_)
        (##structure-ref _%klass95645%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95643%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95643%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95640%_ _%val95641%_)
        (##structure-set!
         _%klass95640%_
         _%val95641%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95635%_ _%val95637%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95635%_
           _%val95637%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95633%_)
        (##structure-ref _%klass95633%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95631%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95631%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95628%_ _%val95629%_)
        (##structure-set!
         _%klass95628%_
         _%val95629%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95623%_ _%val95625%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95623%_
           _%val95625%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95621%_)
        (##structure-ref _%klass95621%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95619%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95619%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95616%_ _%val95617%_)
        (##structure-set!
         _%klass95616%_
         _%val95617%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95611%_ _%val95613%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95611%_
           _%val95613%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95609%_)
        (##structure-ref _%klass95609%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95607%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95607%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95604%_ _%val95605%_)
        (##structure-set!
         _%klass95604%_
         _%val95605%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95599%_ _%val95601%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95599%_
           _%val95601%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95597%_)
        (##structure-ref _%klass95597%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95595%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95595%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95592%_ _%val95593%_)
        (##structure-set! _%klass95592%_ _%val95593%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95587%_ _%val95589%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95587%_
           _%val95589%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95573%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95573%_ 'class))
              (let ()
                (let ((_%klass95577%_ _%klass95573%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-slot-list _%klass95577%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass95573%_)))))
    (define __class-type-slot-list
      (lambda (_%klass95561%_)
        (let ()
          (let ((_%klass95564%_ _%klass95561%_))
            (let ()
              (cdr (vector->list
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95564%_
                       '7
                       '#f
                       '#f)))))))))
    (define class-type-field-count
      (lambda (_%klass95547%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95547%_ 'class))
              (let ()
                (let ((_%klass95551%_ _%klass95547%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-field-count _%klass95551%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass95547%_)))))
    (define __class-type-field-count
      (lambda (_%klass95535%_)
        (let ()
          (let ((_%klass95538%_ _%klass95535%_))
            (let ()
              (let ((__tmp97574
                     (let ((__tmp97575
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass95538%_
                               '7
                               '#f
                               '#f))))
                       (declare (not safe))
                       (##vector-length __tmp97575))))
                (declare (not safe))
                (##fx- __tmp97574 '1)))))))
    (define class-type-seal!
      (lambda (_%klass95521%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95521%_ 'class))
              (let ()
                (let ((_%klass95525%_ _%klass95521%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass95525%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass95521%_)))))
    (define __class-type-seal!
      (lambda (_%klass95509%_)
        (let ()
          (let ((_%klass95512%_ _%klass95509%_))
            (let ()
              (let ((__tmp97576
                     (let ((__tmp97577
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95512%_))))
                       (declare (not safe))
                       (##fxior class-type-flag-sealed __tmp97577))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%klass95512%_
                 __tmp97576
                 '3
                 class::t
                 class-type-seal!))
              '#!void)))))
    (define substruct?
      (lambda (_%maybe-sub-struct95484%_ _%maybe-super-struct95485%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct95484%_ 'class))
              (let ()
                (let ((_%maybe-sub-struct95489%_ _%maybe-sub-struct95484%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-struct95485%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-struct95499%_
                               _%maybe-super-struct95485%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__substruct?
                               _%maybe-sub-struct95489%_
                               _%maybe-super-struct95499%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct95485%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct95484%_)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95453%_ _%maybe-super-struct95454%_)
        (let ()
          (let ((_%maybe-sub-struct95457%_ _%maybe-sub-struct95453%_))
            (let ((_%maybe-super-struct95465%_ _%maybe-super-struct95454%_))
              (let ()
                (let ((_%maybe-super-struct-id95474%_
                       (let ()
                         (declare (not safe))
                         (##type-id _%maybe-super-struct95465%_))))
                  (let _%lp95476%_ ((_%super-struct95478%_
                                     _%maybe-sub-struct95457%_))
                    (let ()
                      (if (let ()
                            (declare (not safe))
                            (not _%super-struct95478%_))
                          (let () '#f)
                          (if (eq? _%maybe-super-struct-id95474%_
                                   (let ()
                                     (declare (not safe))
                                     (##type-id _%super-struct95478%_)))
                              (let () '#t)
                              (let ()
                                (let ((__tmp97578
                                       (let ()
                                         (declare (not safe))
                                         (##type-super
                                          _%super-struct95478%_))))
                                  (declare (not safe))
                                  (_%lp95476%_ __tmp97578))))))))))))))
    (define base-struct/1
      (lambda (_%klass95448%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95448%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass95448%_))
                  _%klass95448%_
                  (let () (declare (not safe)) (##type-super _%klass95448%_))))
            (if (let () (declare (not safe)) (not _%klass95448%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass95448%_))))))
    (define base-struct/2
      (lambda (_%klass195433%_ _%klass295434%_)
        (let ((_%s195436%_
               (let () (declare (not safe)) (base-struct/1 _%klass195433%_)))
              (_%s295437%_
               (let () (declare (not safe)) (base-struct/1 _%klass295434%_))))
          (if (or (let () (declare (not safe)) (not _%s195436%_))
                  (and _%s295437%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s195436%_ _%s295437%_))))
              (let () _%s295437%_)
              (if (or (let () (declare (not safe)) (not _%s295437%_))
                      (and _%s195436%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s295437%_ _%s195436%_))))
                  (let () _%s195436%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass195433%_
                           _%klass295434%_
                           _%s195436%_
                           _%s295437%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95317%_)
        (let* ((_%all-supers9531895343%_ _%all-supers95317%_)
               (_%E9532395347%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9531895343%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9534195430%_ (lambda () '#f))
                (_%K9533895416%_
                 (lambda (_%x95414%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95414%_))))
                (_%K9533395393%_
                 (lambda (_%y95390%_ _%x95391%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95391%_ _%y95390%_))))
                (_%K9532495354%_
                 (lambda (_%y95351%_ _%x95352%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95352%_ _%y95351%_)))))
            (let* ((_%__match9753297533%_
                    (lambda (_%hd9532595357%_ _%tl9532695359%_)
                      (let ((_%x95362%_ _%hd9532595357%_))
                        (letrec ((_%splice-rest9532895364%_
                                  (lambda (_%rest9533295371%_ _%y95373%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9533295371%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9532495354%_
                                           _%y95373%_
                                           _%x95362%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9532395347%_)))))
                                 (_%splice-try9533095366%_
                                  (lambda (_%hd9533195375%_
                                           _%rest9533295377%_
                                           _%y9532795378%_)
                                    (let ((_%y95381%_ _%hd9533195375%_))
                                      (let ((__tmp97580
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9533295377%_)))
                                            (__tmp97579
                                             (cons _%y95381%_
                                                   _%y9532795378%_)))
                                        (declare (not safe))
                                        (_%splice-loop9532995368%_
                                         __tmp97580
                                         __tmp97579)))))
                                 (_%splice-loop9532995368%_
                                  (lambda (_%rest9533295383%_ _%y9532795384%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9533295383%_))
                                        (let ((__tmp97581
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9533295383%_))))
                                          (declare (not safe))
                                          (_%splice-try9533095366%_
                                           __tmp97581
                                           _%rest9533295383%_
                                           _%y9532795384%_))
                                        (let ((__tmp97582
                                               (reverse _%y9532795384%_)))
                                          (declare (not safe))
                                          (_%splice-rest9532895364%_
                                           _%rest9533295383%_
                                           __tmp97582))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9532995368%_
                             _%tl9532695359%_
                             '()))))))
                   (_%try-match9532095426%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9531895343%_))
                          (let ((_%tl9534095421%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9531895343%_)))
                                (_%hd9533995419%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9531895343%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9534095421%_))
                                (let ((_%x95424%_ _%hd9533995419%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95424%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9534095421%_))
                                    (let ((_%tl9533795405%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9534095421%_)))
                                          (_%hd9533695403%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9534095421%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9533795405%_))
                                          (let ((_%x95401%_ _%hd9533995419%_)
                                                (_%y95408%_ _%hd9533695403%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9533395393%_
                                               _%y95408%_
                                               _%x95401%_)))
                                          (_%__match9753297533%_
                                           _%hd9533995419%_
                                           _%tl9534095421%_)))
                                    (_%__match9753297533%_
                                     _%hd9533995419%_
                                     _%tl9534095421%_))))
                          (let () (declare (not safe)) (_%E9532395347%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9531895343%_))
                  (let () (declare (not safe)) (_%K9534195430%_))
                  (let () (declare (not safe)) (_%try-match9532095426%_))))))))
    (define base-struct
      (lambda _%all-supers95315%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95315%_))))
    (define find-super-constructor
      (lambda (_%super95266%_)
        (let _%lp95268%_ ((_%rest95270%_ _%super95266%_)
                          (_%constructor95271%_ '#f))
          (let* ((_%rest9527295280%_ _%rest95270%_)
                 (_%else9527495288%_ (lambda () _%constructor95271%_))
                 (_%K9527695303%_
                  (lambda (_%rest95291%_ _%hd95292%_)
                    (let ((_%$e95294%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95292%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95294%_
                          ((lambda (_%xconstructor95297%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95271%_))
                                     (eq? _%constructor95271%_
                                          _%xconstructor95297%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95268%_
                                    _%rest95291%_
                                    _%xconstructor95297%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95271%_
                                        _%xconstructor95297%_)))
                           _%$e95294%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (_%lp95268%_
                               _%rest95291%_
                               _%constructor95271%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9527295280%_))
                (let ((_%hd9527795306%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9527295280%_)))
                      (_%tl9527895308%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9527295280%_))))
                  (let* ((_%hd95311%_ _%hd9527795306%_)
                         (_%rest95313%_ _%tl9527895308%_))
                    (declare (not safe))
                    (_%K9527695303%_ _%rest95313%_ _%hd95311%_)))
                (let () (declare (not safe)) (_%else9527495288%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95242%_ _%direct-slots95243%_)
        (let* ((_%next-slot95245%_ '1)
               (_%slot-table95247%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95249%_ '(__class))
               (_%process-slot95253%_
                (lambda (_%slot95251%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95251%_))
                      '#!void
                      (error '"invalid slot name" _%slot95251%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95247%_
                              _%slot95251%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95247%_
                           _%slot95251%_
                           _%next-slot95245%_))
                        (let ((__tmp97583
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95251%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95247%_
                           __tmp97583
                           _%next-slot95245%_))
                        (set! _%r-slots95249%_
                              (cons _%slot95251%_ _%r-slots95249%_))
                        (set! _%next-slot95245%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95245%_ '1))))
                      '#!void)))
               (_%process-slots95259%_
                (lambda (_%g9525495256%_)
                  (for-each _%process-slot95253%_ _%g9525495256%_))))
          (let ((__tmp97585
                 (lambda (_%mixin95262%_)
                   (let ((__tmp97586
                          (let ((__tmp97587
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95262%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp97587 '()))))
                     (declare (not safe))
                     (_%process-slots95259%_ __tmp97586))))
                (__tmp97584 (reverse _%class-precedence-list95242%_)))
            (declare (not safe))
            (##for-each __tmp97585 __tmp97584))
          (let ()
            (declare (not safe))
            (_%process-slots95259%_ _%direct-slots95243%_))
          (let ((_%slot-vector95264%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95249%_)))))
            (values _%slot-vector95264%_ _%slot-table95247%_)))))
    (define make-class-type
      (lambda (_%id95167%_
               _%name95168%_
               _%direct-supers95169%_
               _%direct-slots95170%_
               _%properties95171%_
               _%constructor95172%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95167%_))
              (let ()
                (let ((_%id95176%_ _%id95167%_))
                  (if (let () (declare (not safe)) (symbol? _%name95168%_))
                      (let ()
                        (let ((_%name95186%_ _%name95168%_))
                          (if (let ()
                                (declare (not safe))
                                (list? _%direct-supers95169%_))
                              (let ()
                                (let ((_%direct-supers95196%_
                                       _%direct-supers95169%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%direct-slots95170%_))
                                      (let ()
                                        (let ((_%direct-slots95206%_
                                               _%direct-slots95170%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (list? _%properties95171%_))
                                              (let ()
                                                (let ((_%properties95216%_
                                                       _%properties95171%_))
                                                  (if ((lambda (_%$obj95225%_)
                                                         (or (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (not _%$obj95225%_))
                     (let () (declare (not safe)) (symbol? _%$obj95225%_))))
               _%constructor95172%_)
              (let ()
                (let ((_%constructor95232%_ _%constructor95172%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-type
                       _%id95176%_
                       _%name95186%_
                       _%direct-supers95196%_
                       _%direct-slots95206%_
                       _%properties95216%_
                       _%constructor95232%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
               'contract:
               '(? (or not symbol?))
               'value:
               _%constructor95172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                               'contract:
                                               'list?
                                               'value:
                                               _%properties95171%_))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                       'contract:
                                       'list?
                                       'value:
                                       _%direct-slots95170%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                               'contract:
                               'list?
                               'value:
                               _%direct-supers95169%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95168%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95167%_)))))
    (define __make-class-type
      (lambda (_%id95036%_
               _%name95037%_
               _%direct-supers95038%_
               _%direct-slots95039%_
               _%properties95040%_
               _%constructor95041%_)
        (let ()
          (let ((_%id95044%_ _%id95036%_))
            (let ((_%name95052%_ _%name95037%_))
              (let ((_%direct-supers95060%_ _%direct-supers95038%_))
                (let ((_%direct-slots95068%_ _%direct-slots95039%_))
                  (let ((_%properties95076%_ _%properties95040%_))
                    (let ((_%constructor95084%_ _%constructor95041%_))
                      (let ()
                        (let ((_%$e95096%_
                               (let ((__tmp97588
                                      (lambda (_%$obj95093%_)
                                        (let ((__tmp97589
                                               (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _%$obj95093%_
                                                  'class))))
                                          (declare (not safe))
                                          (not __tmp97589)))))
                                 (declare (not safe))
                                 (__find __tmp97588 _%direct-supers95060%_))))
                          (if _%$e95096%_
                              ((lambda (_%g9509895100%_)
                                 (error '"Illegal super class; not a class descriptor"
                                        _%g9509895100%_))
                               _%$e95096%_)
                              (let ((_%$e95103%_
                                     (let ()
                                       (declare (not safe))
                                       (__find __class-type-final?
                                               _%direct-supers95060%_))))
                                (if _%$e95103%_
                                    ((lambda (_%g9510595107%_)
                                       (error '"Cannot extend final class"
                                              _%g9510595107%_))
                                     _%$e95103%_)
                                    '#!void))))
                        (let ((_g97590_
                               (let ()
                                 (declare (not safe))
                                 (compute-precedence-list
                                  _%direct-supers95060%_))))
                          (begin
                            (let ((_g97591_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97590_)
                                         (##vector-length _g97590_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97591_ 2)))
                                  (error "Context expects 2 values" _g97591_)))
                            (let ((_%precedence-list95110%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97590_ 0)))
                                  (_%struct-super95111%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97590_ 1))))
                              (let ((_g97592_
                                     (let ()
                                       (declare (not safe))
                                       (compute-class-slots
                                        _%precedence-list95110%_
                                        _%direct-slots95068%_))))
                                (begin
                                  (let ((_g97593_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97592_)
                                               (##vector-length _g97592_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97593_ 2)))
                                        (error "Context expects 2 values"
                                               _g97593_)))
                                  (let ((_%slot-vector95113%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97592_ 0)))
                                        (_%slot-table95114%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97592_ 1))))
                                    (let* ((_%properties95116%_
                                            (cons (cons 'direct-slots:
                                                        _%direct-slots95068%_)
                                                  (cons (cons 'direct-supers:
                                                              _%direct-supers95060%_)
                                                        _%properties95076%_)))
                                           (_%constructor*95121%_
                                            (let ((_%$e95118%_
                                                   _%constructor95084%_))
                                              (if _%$e95118%_
                                                  _%$e95118%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (find-super-constructor
                                                     _%direct-supers95060%_)))))
                                           (_%precedence-list95164%_
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (agetq__0
                                                       'system:
                                                       _%properties95116%_))
                                                    (memq object::t
                                                          _%precedence-list95110%_))
                                                _%precedence-list95110%_
                                                (let _%loop95126%_ ((_%tail95128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%precedence-list95110%_)
                            (_%head95129%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%tail9513095138%_
                                                          _%tail95128%_)
                                                         (_%else9513295146%_
                                                          (lambda ()
                                                            (let ((__tmp97594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons object::t (cons t::t '()))))
                      (declare (not safe))
                      (__foldl1 cons __tmp97594 _%head95129%_))))
                 (_%K9513495152%_
                  (lambda (_%rest95149%_ _%hd95150%_)
                    (if (eq? _%hd95150%_ t::t)
                        (let ((__tmp97595 (cons object::t _%tail95128%_)))
                          (declare (not safe))
                          (__foldl1 cons __tmp97595 _%head95129%_))
                        (let ((__tmp97596 (cons _%hd95150%_ _%head95129%_)))
                          (declare (not safe))
                          (_%loop95126%_ _%rest95149%_ __tmp97596))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tail9513095138%_))
                                                        (let ((_%hd9513595155%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%tail9513095138%_)))
                      (_%tl9513695157%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%tail9513095138%_))))
                  (let* ((_%hd95160%_ _%hd9513595155%_)
                         (_%rest95162%_ _%tl9513695157%_))
                    (declare (not safe))
                    (_%K9513495152%_ _%rest95162%_ _%hd95160%_)))
                (let () (declare (not safe)) (_%else9513295146%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (make-class-type-descriptor
                                         _%id95044%_
                                         _%name95052%_
                                         _%struct-super95111%_
                                         _%precedence-list95164%_
                                         _%slot-vector95113%_
                                         _%properties95116%_
                                         _%constructor*95121%_
                                         _%slot-table95114%_
                                         '#f)))))))))))))))))))
    (define class-precedence-list
      (lambda (_%klass95022%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95022%_ 'class))
              (let ()
                (let ((_%klass95026%_ _%klass95022%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-precedence-list _%klass95026%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95022%_)))))
    (define __class-precedence-list
      (lambda (_%klass95010%_)
        (let ()
          (let ((_%klass95013%_ _%klass95010%_))
            (let ()
              (cons _%klass95013%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95013%_
                       '6
                       '#f
                       '#f))))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95007%_)
        (let ()
          (let ()
            (declare (not safe))
            (c4-linearize
             '()
             _%direct-supers95007%_
             'get-precedence-list:
             class-precedence-list
             'struct:
             class-type-struct?
             'eq:
             eq?
             'get-name:
             ##type-name)))))
    (define make-class-predicate
      (lambda (_%klass94993%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94993%_ 'class))
              (let ()
                (let ((_%klass94997%_ _%klass94993%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-predicate _%klass94997%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass94993%_)))))
    (define __make-class-predicate
      (lambda (_%klass94964%_)
        (let ()
          (let ((_%klass94967%_ _%klass94964%_))
            (let ()
              (let ((_%tid94976%_
                     (let () (declare (not safe)) (##type-id _%klass94967%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94967%_))
                    (let ()
                      (lambda (_%g9497894980%_)
                        (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           _%g9497894980%_
                           _%tid94976%_))))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94967%_))
                        (let ()
                          (lambda (_%g9498394985%_)
                            (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g9498394985%_
                               _%tid94976%_))))
                        (let ()
                          (lambda (_%g9498894990%_)
                            (let ()
                              (declare (not safe))
                              (__class-instance?
                               _%klass94967%_
                               _%g9498894990%_))))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass94939%_ _%slot94940%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94939%_ 'class))
              (let ()
                (let ((_%klass94944%_ _%klass94939%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94940%_))
                      (let ()
                        (let ((_%slot94954%_ _%slot94940%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-accessor
                               _%klass94944%_
                               _%slot94954%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94940%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass94939%_)))))
    (define __make-class-slot-accessor
      (lambda (_%klass94907%_ _%slot94908%_)
        (let ()
          (let ((_%klass94911%_ _%klass94907%_))
            (let ((_%slot94919%_ _%slot94908%_))
              (let ()
                (let ((_%field94928%_
                       (let ((__tmp97597
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94911%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97597 _%slot94919%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94928%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94911%_
                               'slot:
                               _%slot94919%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94911%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-accessor
                               _%klass94911%_
                               _%slot94919%_
                               _%field94928%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94911%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-accessor
                                   _%klass94911%_
                                   _%slot94919%_
                                   _%field94928%_)))
                              (if (let ((_%strukt94934%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94911%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94934%_
                                            'class))
                                         (let ((__tmp97598
                                                (let ((__tmp97599
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94934%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97599))))
                                           (declare (not safe))
                                           (##fx< _%field94928%_ __tmp97598))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-accessor
                                       _%klass94911%_
                                       _%slot94919%_
                                       _%field94928%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-accessor
                                       _%klass94911%_
                                       _%slot94919%_
                                       _%field94928%_))))))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass94882%_ _%slot94883%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94882%_ 'class))
              (let ()
                (let ((_%klass94887%_ _%klass94882%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94883%_))
                      (let ()
                        (let ((_%slot94897%_ _%slot94883%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-mutator
                               _%klass94887%_
                               _%slot94897%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94883%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass94882%_)))))
    (define __make-class-slot-mutator
      (lambda (_%klass94850%_ _%slot94851%_)
        (let ()
          (let ((_%klass94854%_ _%klass94850%_))
            (let ((_%slot94862%_ _%slot94851%_))
              (let ()
                (let ((_%field94871%_
                       (let ((__tmp97600
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94854%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97600 _%slot94862%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94871%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94854%_
                               'slot:
                               _%slot94862%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94854%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-mutator
                               _%klass94854%_
                               _%slot94862%_
                               _%field94871%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94854%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-mutator
                                   _%klass94854%_
                                   _%slot94862%_
                                   _%field94871%_)))
                              (if (let ((_%strukt94877%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94854%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94877%_
                                            'class))
                                         (let ((__tmp97601
                                                (let ((__tmp97602
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94877%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97602))))
                                           (declare (not safe))
                                           (##fx< _%field94871%_ __tmp97601))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-mutator
                                       _%klass94854%_
                                       _%slot94862%_
                                       _%field94871%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-mutator
                                       _%klass94854%_
                                       _%slot94862%_
                                       _%field94871%_))))))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass94825%_ _%slot94826%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94825%_ 'class))
              (let ()
                (let ((_%klass94830%_ _%klass94825%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94826%_))
                      (let ()
                        (let ((_%slot94840%_ _%slot94826%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-accessor
                               _%klass94830%_
                               _%slot94840%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94826%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass94825%_)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass94793%_ _%slot94794%_)
        (let ()
          (let ((_%klass94797%_ _%klass94793%_))
            (let ((_%slot94805%_ _%slot94794%_))
              (let ()
                (let ((_%field94814%_
                       (let ((__tmp97603
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94797%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97603 _%slot94805%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94814%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94797%_
                               'slot:
                               _%slot94805%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94797%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass94797%_
                               _%slot94805%_
                               _%field94814%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94797%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-accessor
                                   _%klass94797%_
                                   _%slot94805%_
                                   _%field94814%_)))
                              (if (let ((_%strukt94820%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94797%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94820%_
                                            'class))
                                         (let ((__tmp97604
                                                (let ((__tmp97605
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94820%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97605))))
                                           (declare (not safe))
                                           (##fx< _%field94814%_ __tmp97604))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-accessor
                                       _%klass94797%_
                                       _%slot94805%_
                                       _%field94814%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-accessor
                                       _%klass94797%_
                                       _%slot94805%_
                                       _%field94814%_))))))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass94768%_ _%slot94769%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94768%_ 'class))
              (let ()
                (let ((_%klass94773%_ _%klass94768%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94769%_))
                      (let ()
                        (let ((_%slot94783%_ _%slot94769%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-unchecked-mutator
                               _%klass94773%_
                               _%slot94783%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94769%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass94768%_)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94736%_ _%slot94737%_)
        (let ()
          (let ((_%klass94740%_ _%klass94736%_))
            (let ((_%slot94748%_ _%slot94737%_))
              (let ()
                (let ((_%field94757%_
                       (let ((__tmp97606
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94740%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97606 _%slot94748%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94757%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94740%_
                               'slot:
                               _%slot94748%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94740%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass94740%_
                               _%slot94748%_
                               _%field94757%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94740%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-mutator
                                   _%klass94740%_
                                   _%slot94748%_
                                   _%field94757%_)))
                              (if (let ((_%strukt94763%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94740%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94763%_
                                            'class))
                                         (let ((__tmp97607
                                                (let ((__tmp97608
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94763%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97608))))
                                           (declare (not safe))
                                           (##fx< _%field94757%_ __tmp97607))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-mutator
                                       _%klass94740%_
                                       _%slot94748%_
                                       _%field94757%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-mutator
                                       _%klass94740%_
                                       _%slot94748%_
                                       _%field94757%_))))))))))))))
    (define not-an-instance__%
      (lambda (_%object94720%_ _%class94721%_ _%slot94722%_)
        (apply error
               '"not an instance"
               'object:
               _%object94720%_
               'class:
               _%class94721%_
               (if _%slot94722%_ (cons 'slot: (cons _%slot94722%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94727%_ _%class94728%_)
        (let ((_%slot94730%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object94727%_ _%class94728%_ _%slot94730%_))))
    (define not-an-instance
      (lambda _g97610_
        (let ((_g97609_ (let () (declare (not safe)) (##length _g97610_))))
          (cond ((let () (declare (not safe)) (##fx= _g97609_ 2))
                 (apply (lambda (_%object94727%_ _%class94728%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object94727%_
                             _%class94728%_)))
                        _g97610_))
                ((let () (declare (not safe)) (##fx= _g97609_ 3))
                 (apply (lambda (_%object94732%_ _%class94733%_ _%slot94734%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object94732%_
                             _%class94733%_
                             _%slot94734%_)))
                        _g97610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97610_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94713%_ _%slot94714%_ _%field94715%_)
        (lambda (_%obj94717%_)
          (##direct-structure-ref
           _%obj94717%_
           _%field94715%_
           _%klass94713%_
           _%slot94714%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94706%_ _%slot94707%_ _%field94708%_)
        (lambda (_%obj94710%_ _%val94711%_)
          (##direct-structure-set!
           _%obj94710%_
           _%val94711%_
           _%field94708%_
           _%klass94706%_
           _%slot94707%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94700%_ _%slot94701%_ _%field94702%_)
        (lambda (_%obj94704%_)
          (##structure-ref
           _%obj94704%_
           _%field94702%_
           _%klass94700%_
           _%slot94701%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94693%_ _%slot94694%_ _%field94695%_)
        (lambda (_%obj94697%_ _%val94698%_)
          (##structure-set!
           _%obj94697%_
           _%val94698%_
           _%field94695%_
           _%klass94693%_
           _%slot94694%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94687%_ _%slot94688%_ _%field94689%_)
        (lambda (_%obj94691%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94691%_
             _%field94689%_
             _%klass94687%_
             _%slot94688%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94680%_ _%slot94681%_ _%field94682%_)
        (lambda (_%obj94684%_ _%val94685%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94684%_
             _%val94685%_
             _%field94682%_
             _%klass94680%_
             _%slot94681%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94674%_ _%slot94675%_ _%field94676%_)
        (lambda (_%obj94678%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94674%_ _%obj94678%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94678%_ _%field94676%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94678%_
                 _%klass94674%_
                 _%slot94675%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94667%_ _%slot94668%_ _%field94669%_)
        (lambda (_%obj94671%_ _%val94672%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94667%_ _%obj94671%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94671%_
                 _%field94669%_
                 _%val94672%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94671%_
                 _%klass94667%_
                 _%slot94668%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94658%_ _%slot94659%_ _%field94660%_)
        (lambda (_%obj94662%_)
          (if (let ((__tmp97611
                     (let () (declare (not safe)) (##type-id _%klass94658%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94662%_ __tmp97611))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-ref _%obj94662%_ _%field94660%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94658%_ _%obj94662%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _%obj94662%_ _%slot94659%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94662%_
                       _%klass94658%_
                       _%slot94659%_))))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94648%_ _%slot94649%_ _%field94650%_)
        (lambda (_%obj94652%_ _%val94653%_)
          (if (let ((__tmp97612
                     (let () (declare (not safe)) (##type-id _%klass94648%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94652%_ __tmp97612))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-set!
                   _%obj94652%_
                   _%field94650%_
                   _%val94653%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94648%_ _%obj94652%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-set!
                       _%obj94652%_
                       _%slot94649%_
                       _%val94653%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94652%_
                       _%klass94648%_
                       _%slot94649%_))))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94642%_ _%slot94643%_ _%field94644%_)
        (lambda (_%obj94646%_)
          (if (let ((__tmp97613
                     (let () (declare (not safe)) (##type-id _%klass94642%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94646%_ __tmp97613))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94646%_ _%field94644%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94646%_ _%slot94643%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94635%_ _%slot94636%_ _%field94637%_)
        (lambda (_%obj94639%_ _%val94640%_)
          (if (let ((__tmp97614
                     (let () (declare (not safe)) (##type-id _%klass94635%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94639%_ __tmp97614))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94639%_
                 _%field94637%_
                 _%val94640%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj94639%_
                 _%slot94636%_
                 _%val94640%_))))))
    (define class-slot-offset
      (lambda (_%klass94610%_ _%slot94611%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94610%_ 'class))
              (let ()
                (let ((_%klass94615%_ _%klass94610%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94611%_))
                      (let ()
                        (let ((_%slot94625%_ _%slot94611%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-offset
                               _%klass94615%_
                               _%slot94625%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94611%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass94610%_)))))
    (define __class-slot-offset
      (lambda (_%klass94589%_ _%slot94590%_)
        (let ()
          (let ((_%klass94593%_ _%klass94589%_))
            (let ((_%slot94601%_ _%slot94590%_))
              (let ()
                (let ((__tmp97615
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94593%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97615 _%slot94601%_ '#f))))))))
    (define class-slot-ref
      (lambda (_%klass94563%_ _%obj94564%_ _%slot94565%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94563%_ 'class))
              (let ()
                (let ((_%klass94569%_ _%klass94563%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94565%_))
                      (let ()
                        (let ((_%slot94579%_ _%slot94565%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-ref
                               _%klass94569%_
                               _%obj94564%_
                               _%slot94579%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94565%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass94563%_)))))
    (define __class-slot-ref
      (lambda (_%klass94539%_ _%obj94540%_ _%slot94541%_)
        (let ()
          (let ((_%klass94544%_ _%klass94539%_))
            (let ((_%slot94552%_ _%slot94541%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94544%_ _%obj94540%_))
                    (let ((_%off94561%_
                           (let ((__tmp97616
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94540%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97616 _%slot94552%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%obj94540%_
                       _%off94561%_
                       _%klass94544%_
                       _%slot94552%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94540%_ _%klass94544%_)))))))))
    (define class-slot-set!
      (lambda (_%klass94512%_ _%obj94513%_ _%slot94514%_ _%val94515%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94512%_ 'class))
              (let ()
                (let ((_%klass94519%_ _%klass94512%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94514%_))
                      (let ()
                        (let ((_%slot94529%_ _%slot94514%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-set!
                               _%klass94519%_
                               _%obj94513%_
                               _%slot94529%_
                               _%val94515%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94514%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass94512%_)))))
    (define __class-slot-set!
      (lambda (_%klass94487%_ _%obj94488%_ _%slot94489%_ _%val94490%_)
        (let ()
          (let ((_%klass94493%_ _%klass94487%_))
            (let ((_%slot94501%_ _%slot94489%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94493%_ _%obj94488%_))
                    (let ((_%off94510%_
                           (let ((__tmp97617
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94488%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97617 _%slot94501%_))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94488%_
                       _%val94490%_
                       _%off94510%_
                       _%klass94493%_
                       _%slot94501%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94488%_ _%klass94493%_)))))))))
    (define unchecked-field-ref
      (lambda (_%obj94484%_ _%off94485%_)
        (let ((__tmp97618
               (let () (declare (not safe)) (##structure-type _%obj94484%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94484%_
           _%off94485%_
           __tmp97618
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94480%_ _%off94481%_ _%val94482%_)
        (let ((__tmp97619
               (let () (declare (not safe)) (##structure-type _%obj94480%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94480%_
           _%val94482%_
           _%off94481%_
           __tmp97619
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94477%_ _%slot94478%_)
        (let ((__tmp97620
               (let ((__tmp97621
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94477%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97621 _%slot94478%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj94477%_ __tmp97620))))
    (define unchecked-slot-set!
      (lambda (_%obj94473%_ _%slot94474%_ _%val94475%_)
        (let ((__tmp97622
               (let ((__tmp97623
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94473%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97623 _%slot94474%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj94473%_ __tmp97622 _%val94475%_))))
    (define slot-ref__%
      (lambda (_%obj94435%_ _%slot94436%_ _%E94437%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94436%_))
              (let ()
                (let ((_%slot94441%_ _%slot94436%_))
                  (if (let () (declare (not safe)) (procedure? _%E94437%_))
                      (let ()
                        (let ((_%E94451%_ _%E94437%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-ref__%
                               _%obj94435%_
                               _%slot94441%_
                               _%E94451%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E94437%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot94436%_)))))
    (define slot-ref__0
      (lambda (_%obj94464%_ _%slot94465%_)
        (let ((_%E94467%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj94464%_ _%slot94465%_ _%E94467%_))))
    (define slot-ref
      (lambda _g97625_
        (let ((_g97624_ (let () (declare (not safe)) (##length _g97625_))))
          (cond ((let () (declare (not safe)) (##fx= _g97624_ 2))
                 (apply (lambda (_%obj94464%_ _%slot94465%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj94464%_ _%slot94465%_)))
                        _g97625_))
                ((let () (declare (not safe)) (##fx= _g97624_ 3))
                 (apply (lambda (_%obj94469%_ _%slot94470%_ _%E94471%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj94469%_
                             _%slot94470%_
                             _%E94471%_)))
                        _g97625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97625_))))))
    (define __slot-ref__%
      (lambda (_%obj94391%_ _%slot94392%_ _%E94393%_)
        (let ()
          (let ((_%slot94396%_ _%slot94392%_))
            (let ((_%E94404%_ _%E94393%_))
              (let ()
                (let* ((_%klass94413%_
                        (let () (declare (not safe)) (class-of _%obj94391%_)))
                       (_%$e94416%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94413%_ _%slot94396%_))))
                  (if _%$e94416%_
                      ((lambda (_%off94419%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-ref _%obj94391%_ _%off94419%_)))
                       _%$e94416%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94404%_ _%obj94391%_ _%slot94396%_)))))))))))
    (define __slot-ref__0
      (lambda (_%obj94425%_ _%slot94426%_)
        (let ((_%E94428%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94425%_ _%slot94426%_ _%E94428%_))))
    (define __slot-ref
      (lambda _g97627_
        (let ((_g97626_ (let () (declare (not safe)) (##length _g97627_))))
          (cond ((let () (declare (not safe)) (##fx= _g97626_ 2))
                 (apply (lambda (_%obj94425%_ _%slot94426%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94425%_ _%slot94426%_)))
                        _g97627_))
                ((let () (declare (not safe)) (##fx= _g97626_ 3))
                 (apply (lambda (_%obj94430%_ _%slot94431%_ _%E94432%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94430%_
                             _%slot94431%_
                             _%E94432%_)))
                        _g97627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97627_))))))
    (define slot-set!__%
      (lambda (_%obj94349%_ _%slot94350%_ _%val94351%_ _%E94352%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94350%_))
              (let ()
                (let ((_%slot94356%_ _%slot94350%_))
                  (if (let () (declare (not safe)) (procedure? _%E94352%_))
                      (let ()
                        (let ((_%E94366%_ _%E94352%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-set!__%
                               _%obj94349%_
                               _%slot94356%_
                               _%val94351%_
                               _%E94366%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94352%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot94350%_)))))
    (define slot-set!__0
      (lambda (_%obj94379%_ _%slot94380%_ _%val94381%_)
        (let ((_%E94383%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94379%_ _%slot94380%_ _%val94381%_ _%E94383%_))))
    (define slot-set!
      (lambda _g97629_
        (let ((_g97628_ (let () (declare (not safe)) (##length _g97629_))))
          (cond ((let () (declare (not safe)) (##fx= _g97628_ 3))
                 (apply (lambda (_%obj94379%_ _%slot94380%_ _%val94381%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94379%_
                             _%slot94380%_
                             _%val94381%_)))
                        _g97629_))
                ((let () (declare (not safe)) (##fx= _g97628_ 4))
                 (apply (lambda (_%obj94385%_
                                 _%slot94386%_
                                 _%val94387%_
                                 _%E94388%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94385%_
                             _%slot94386%_
                             _%val94387%_
                             _%E94388%_)))
                        _g97629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97629_))))))
    (define __slot-set!__%
      (lambda (_%obj94302%_ _%slot94303%_ _%val94304%_ _%E94305%_)
        (let ()
          (let ((_%slot94308%_ _%slot94303%_))
            (let ((_%E94316%_ _%E94305%_))
              (let ()
                (let* ((_%klass94325%_
                        (let () (declare (not safe)) (class-of _%obj94302%_)))
                       (_%$e94328%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94325%_ _%slot94308%_))))
                  (if _%$e94328%_
                      ((lambda (_%off94331%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-set!
                            _%obj94302%_
                            _%off94331%_
                            _%val94304%_)))
                       _%$e94328%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94316%_ _%obj94302%_ _%slot94308%_)))))))))))
    (define __slot-set!__0
      (lambda (_%obj94337%_ _%slot94338%_ _%val94339%_)
        (let ((_%E94341%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94337%_
           _%slot94338%_
           _%val94339%_
           _%E94341%_))))
    (define __slot-set!
      (lambda _g97631_
        (let ((_g97630_ (let () (declare (not safe)) (##length _g97631_))))
          (cond ((let () (declare (not safe)) (##fx= _g97630_ 3))
                 (apply (lambda (_%obj94337%_ _%slot94338%_ _%val94339%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94337%_
                             _%slot94338%_
                             _%val94339%_)))
                        _g97631_))
                ((let () (declare (not safe)) (##fx= _g97630_ 4))
                 (apply (lambda (_%obj94343%_
                                 _%slot94344%_
                                 _%val94345%_
                                 _%E94346%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94343%_
                             _%slot94344%_
                             _%val94345%_
                             _%E94346%_)))
                        _g97631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97631_))))))
    (define __slot-error
      (lambda (_%obj94298%_ _%slot94299%_)
        (error '"Cannot find slot"
               'object:
               _%obj94298%_
               'slot:
               _%slot94299%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94273%_ _%maybe-super-class94274%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94273%_ 'class))
              (let ()
                (let ((_%maybe-sub-class94278%_ _%maybe-sub-class94273%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-class94274%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-class94288%_
                               _%maybe-super-class94274%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__subclass?
                               _%maybe-sub-class94278%_
                               _%maybe-super-class94288%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94274%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94273%_)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94245%_ _%maybe-super-class94246%_)
        (let ()
          (let ((_%maybe-sub-class94249%_ _%maybe-sub-class94245%_))
            (let ((_%maybe-super-class94257%_ _%maybe-super-class94246%_))
              (let ()
                (let* ((_%maybe-super-class-id94266%_
                        (let ()
                          (declare (not safe))
                          (##type-id _%maybe-super-class94257%_)))
                       (_%$e94268%_
                        (eq? _%maybe-super-class-id94266%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%maybe-sub-class94249%_)))))
                  (if _%$e94268%_
                      _%$e94268%_
                      (let ((__tmp97633
                             (lambda (_%super-class94271%_)
                               (eq? (let ()
                                      (declare (not safe))
                                      (##type-id _%super-class94271%_))
                                    _%maybe-super-class-id94266%_)))
                            (__tmp97632
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%maybe-sub-class94249%_
                                '6
                                '#f
                                '#f))))
                        (declare (not safe))
                        (__ormap1 __tmp97633 __tmp97632))))))))))
    (define object?
      (lambda (_%o94242%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94242%_))
              (let ((__tmp97634
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94242%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp97634 'class))
              '#f))))
    (define object-type
      (lambda (_%o94237%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94237%_))
              (let ((_%klass94240%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94237%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94240%_ 'class))
                    _%klass94240%_
                    (error '"not an object" _%o94237%_ _%klass94240%_)))
              (error '"not an object" _%o94237%_)))))
    (define direct-instance?
      (lambda (_%klass94222%_ _%obj94223%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94222%_ 'class))
              (let ()
                (let ((_%klass94227%_ _%klass94222%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__direct-instance? _%klass94227%_ _%obj94223%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94222%_)))))
    (define __direct-instance?
      (lambda (_%klass94209%_ _%obj94210%_)
        (let ()
          (let ((_%klass94213%_ _%klass94209%_))
            (let ()
              (let ((__tmp97635
                     (let () (declare (not safe)) (##type-id _%klass94213%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94210%_ __tmp97635)))))))
    (define immediate-instance-of?
      (lambda (_%klass94205%_ _%obj94206%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94206%_))
              (eq? _%klass94205%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94206%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94190%_ _%obj94191%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94190%_ 'class))
              (let ()
                (let ((_%klass94195%_ _%klass94190%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-instance? _%klass94195%_ _%obj94191%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94190%_)))))
    (define __struct-instance?
      (lambda (_%klass94177%_ _%obj94178%_)
        (let ()
          (let ((_%klass94181%_ _%klass94177%_))
            (let ()
              (let ((__tmp97636
                     (let () (declare (not safe)) (##type-id _%klass94181%_))))
                (declare (not safe))
                (##structure-instance-of? _%obj94178%_ __tmp97636)))))))
    (define class-instance?
      (lambda (_%klass94162%_ _%obj94163%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94162%_ 'class))
              (let ()
                (let ((_%klass94167%_ _%klass94162%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94167%_ _%obj94163%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94162%_)))))
    (define __class-instance?
      (lambda (_%klass94147%_ _%obj94148%_)
        (let ()
          (let ((_%klass94151%_ _%klass94147%_))
            (let ()
              (let ((_%type94160%_
                     (let () (declare (not safe)) (class-of _%obj94148%_))))
                (declare (not safe))
                (subclass? _%type94160%_ _%klass94151%_)))))))
    (define make-object
      (lambda (_%klass94122%_ _%k94123%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94122%_ 'class))
              (let ()
                (let ((_%klass94127%_ _%klass94122%_))
                  (if (let () (declare (not safe)) (fixnum? _%k94123%_))
                      (let ()
                        (let ((_%k94137%_ _%k94123%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-object _%klass94127%_ _%k94137%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94123%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94122%_)))))
    (define __make-object
      (lambda (_%klass94099%_ _%k94100%_)
        (let ()
          (let ((_%klass94103%_ _%klass94099%_))
            (let ((_%k94111%_ _%k94100%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass94103%_))
                    (error '"cannot instantiate system class"
                           'class:
                           _%klass94103%_)
                    (let ((_%obj94120%_
                           (let ()
                             (declare (not safe))
                             (##make-structure _%klass94103%_ _%k94111%_))))
                      (declare (not safe))
                      (object-fill! _%obj94120%_ '#f)))))))))
    (define object-fill!
      (lambda (_%obj94084%_ _%fill94085%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94089%_ _%obj94084%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__object-fill! _%obj94089%_ _%fill94085%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94084%_)))))
    (define __object-fill!
      (lambda (_%obj94066%_ _%fill94067%_)
        (let ()
          (let ((_%obj94070%_ _%obj94066%_))
            (let ()
              (let _%loop94079%_ ((_%i94081%_
                                   (let ((__tmp97638
                                          (let ()
                                            (declare (not safe))
                                            (##structure-length
                                             _%obj94070%_))))
                                     (declare (not safe))
                                     (##fx- __tmp97638 '1))))
                (let ()
                  (if (let () (declare (not safe)) (##fx> _%i94081%_ '0))
                      (begin
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%obj94070%_
                           _%fill94067%_
                           _%i94081%_
                           '#f
                           '#f))
                        (let ((__tmp97637
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%i94081%_ '1))))
                          (declare (not safe))
                          (_%loop94079%_ __tmp97637)))
                      _%obj94070%_))))))))
    (define new-instance
      (lambda (_%klass94052%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94052%_ 'class))
              (let ()
                (let ((_%klass94056%_ _%klass94052%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__new-instance _%klass94056%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass94052%_)))))
    (define __new-instance
      (lambda (_%klass94040%_)
        (let ()
          (let ((_%klass94043%_ _%klass94040%_))
            (let ()
              (let ((__obj97534
                     (let ((__tmp97639
                            (let ((__tmp97640
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass94043%_
                                      '7
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (##vector-length __tmp97640))))
                       (declare (not safe))
                       (##make-structure _%klass94043%_ __tmp97639))))
                (let () (declare (not safe)) (object-fill! __obj97534 '#f))
                __obj97534))))))
    (define make-instance
      (lambda (_%klass94025%_ . _%args94026%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94025%_ 'class))
              (let ()
                (let ((_%klass94030%_ _%klass94025%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __make-instance
                               _%klass94030%_
                               _%args94026%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94025%_)))))
    (define __make-instance
      (lambda (_%klass93997%_ . _%args93998%_)
        (let ()
          (let ((_%klass94001%_ _%klass93997%_))
            (let ()
              (let ((_%$e94010%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass94001%_
                        '10
                        '#f
                        '#f))))
                (if _%$e94010%_
                    ((lambda (_%kons-id94013%_)
                       (let ((_%obj94015%_
                              (let ()
                                (declare (not safe))
                                (__new-instance _%klass94001%_))))
                         (let ()
                           (declare (not safe))
                           (___constructor-init!
                            _%klass94001%_
                            _%kons-id94013%_
                            _%obj94015%_
                            _%args93998%_))
                         _%obj94015%_))
                     _%$e94010%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass94001%_))
                        (let ()
                          (let ((_%obj94018%_
                                 (let ()
                                   (declare (not safe))
                                   (__new-instance _%klass94001%_))))
                            (let ()
                              (declare (not safe))
                              (__metaclass-instance-init!
                               _%klass94001%_
                               _%obj94018%_
                               _%args93998%_))
                            _%obj94018%_))
                        (if (let ((__tmp97641
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-struct? _%klass94001%_))))
                              (declare (not safe))
                              (not __tmp97641))
                            (let ()
                              (let ((_%obj94021%_
                                     (let ()
                                       (declare (not safe))
                                       (__new-instance _%klass94001%_))))
                                (let ()
                                  (declare (not safe))
                                  (___class-instance-init!
                                   _%klass94001%_
                                   _%obj94021%_
                                   _%args93998%_))
                                _%obj94021%_))
                            (if (let ((__tmp97643
                                       (let ()
                                         (declare (not safe))
                                         (__class-type-field-count
                                          _%klass94001%_)))
                                      (__tmp97642 (length _%args93998%_)))
                                  (declare (not safe))
                                  (##fx= __tmp97643 __tmp97642))
                                (let ()
                                  (apply ##structure
                                         _%klass94001%_
                                         _%args93998%_))
                                (let ()
                                  (error '"arguments don't match object size"
                                         'class:
                                         _%klass94001%_
                                         'slots:
                                         (let ()
                                           (declare (not safe))
                                           (__class-type-slot-list
                                            _%klass94001%_))
                                         'args:
                                         _%args93998%_))))))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj93982%_ . _%args93983%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93987%_ _%obj93982%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __struct-instance-init!
                               _%obj93987%_
                               _%args93983%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj93982%_)))))
    (define __struct-instance-init!
      (lambda (_%obj93969%_ . _%args93970%_)
        (let ()
          (let ((_%obj93973%_ _%obj93969%_))
            (let ()
              (if (let ((__tmp97645 (length _%args93970%_))
                        (__tmp97644
                         (let ()
                           (declare (not safe))
                           (##structure-length _%obj93973%_))))
                    (declare (not safe))
                    (##fx< __tmp97645 __tmp97644))
                  (let ()
                    (declare (not safe))
                    (___struct-instance-init! _%obj93973%_ _%args93970%_))
                  (error '"too many arguments for struct"
                         'object:
                         _%obj93973%_
                         'args:
                         _%args93970%_))
              '#!void)))))
    (define ___struct-instance-init!
      (lambda (_%obj93928%_ _%args93929%_)
        (let _%lp93931%_ ((_%k93933%_ '1) (_%rest93934%_ _%args93929%_))
          (let* ((_%rest9393593943%_ _%rest93934%_)
                 (_%else9393793951%_ (lambda () _%obj93928%_))
                 (_%K9393993957%_
                  (lambda (_%rest93954%_ _%hd93955%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj93928%_
                       _%k93933%_
                       _%hd93955%_))
                    (let ((__tmp97646
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k93933%_ '1))))
                      (declare (not safe))
                      (_%lp93931%_ __tmp97646 _%rest93954%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9393593943%_))
                (let ((_%hd9394093960%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9393593943%_)))
                      (_%tl9394193962%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9393593943%_))))
                  (let* ((_%hd93965%_ _%hd9394093960%_)
                         (_%rest93967%_ _%tl9394193962%_))
                    (declare (not safe))
                    (_%K9393993957%_ _%rest93967%_ _%hd93965%_)))
                (let () (declare (not safe)) (_%else9393793951%_)))))))
    (define class-instance-init!
      (lambda (_%obj93913%_ . _%args93914%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93918%_ _%obj93913%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __class-instance-init!
                               _%obj93918%_
                               _%args93914%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj93913%_)))))
    (define __class-instance-init!
      (lambda (_%obj93900%_ . _%args93901%_)
        (let ()
          (let ((_%obj93904%_ _%obj93900%_))
            (let ()
              (let ((__tmp97647
                     (let ()
                       (declare (not safe))
                       (##structure-type _%obj93904%_))))
                (declare (not safe))
                (___class-instance-init!
                 __tmp97647
                 _%obj93904%_
                 _%args93901%_))
              '#!void)))))
    (define ___class-instance-init!
      (lambda (_%klass93842%_ _%obj93843%_ _%args93844%_)
        (let _%lp93846%_ ((_%rest93848%_ _%args93844%_))
          (let* ((_%rest9384993859%_ _%rest93848%_)
                 (_%else9385193867%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest93848%_))
                        _%obj93843%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass93842%_
                               'rest:
                               _%rest93848%_))))
                 (_%K9385393881%_
                  (lambda (_%rest93870%_ _%val93871%_ _%key93872%_)
                    (if (let ((__tmp97648
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key93872%_))))
                          (declare (not safe))
                          (not __tmp97648))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key93872%_))
                        (let ((_%$e93875%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass93842%_
                                  _%key93872%_))))
                          (if _%$e93875%_
                              ((lambda (_%off93878%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj93843%_
                                    _%off93878%_
                                    _%val93871%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp93846%_ _%rest93870%_)))
                               _%$e93875%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass93842%_
                                       'slot:
                                       _%key93872%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9384993859%_))
                (let ((_%hd9385493884%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9384993859%_)))
                      (_%tl9385593886%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9384993859%_))))
                  (let ((_%key93889%_ _%hd9385493884%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9385593886%_))
                        (let ((_%hd9385693891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9385593886%_)))
                              (_%tl9385793893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9385593886%_))))
                          (let* ((_%val93896%_ _%hd9385693891%_)
                                 (_%rest93898%_ _%tl9385793893%_))
                            (declare (not safe))
                            (_%K9385393881%_
                             _%rest93898%_
                             _%val93896%_
                             _%key93889%_)))
                        (let () (declare (not safe)) (_%else9385193867%_)))))
                (let () (declare (not safe)) (_%else9385193867%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass93838%_ _%obj93839%_ _%args93840%_)
        (apply call-method
               _%klass93838%_
               'instance-init!
               _%obj93839%_
               _%args93840%_)))
    (define constructor-init!
      (lambda (_%klass93801%_ _%kons-id93802%_ _%obj93803%_ . _%args93804%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93801%_ 'class))
              (let ()
                (let ((_%klass93808%_ _%klass93801%_))
                  (if (let () (declare (not safe)) (symbol? _%kons-id93802%_))
                      (let ()
                        (let ((_%kons-id93818%_ _%kons-id93802%_))
                          (if '#t
                              (let ()
                                (let ((_%obj93828%_ _%obj93803%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (##apply __constructor-init!
                                               _%klass93808%_
                                               _%kons-id93818%_
                                               _%obj93828%_
                                               _%args93804%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                               'contract:
                               'true
                               'value:
                               _%obj93803%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id93802%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass93801%_)))))
    (define __constructor-init!
      (lambda (_%klass93770%_ _%kons-id93771%_ _%obj93772%_ . _%args93773%_)
        (let ()
          (let ((_%klass93776%_ _%klass93770%_))
            (let ((_%kons-id93784%_ _%kons-id93771%_))
              (let ((_%obj93792%_ _%obj93772%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (___constructor-init!
                     _%klass93776%_
                     _%kons-id93784%_
                     _%obj93792%_
                     _%args93773%_))
                  '#!void)))))))
    (define ___constructor-init!
      (lambda (_%klass93759%_ _%kons-id93760%_ _%obj93761%_ _%args93762%_)
        (let ((_%$e93764%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass93759%_
                  _%obj93761%_
                  _%kons-id93760%_))))
          (if _%$e93764%_
              ((lambda (_%kons93767%_)
                 (apply _%kons93767%_ _%obj93761%_ _%args93762%_)
                 _%obj93761%_)
               _%$e93764%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass93759%_
                       'method:
                       _%kons-id93760%_))))))
    (define struct-copy
      (lambda (_%struct93745%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%struct93749%_ _%struct93745%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-copy _%struct93749%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct93745%_)))))
    (define __struct-copy
      (lambda (_%struct93733%_)
        (let ()
          (let ((_%struct93736%_ _%struct93733%_))
            (let ()
              (let ()
                (declare (not safe))
                (##structure-copy _%struct93736%_)))))))
    (define struct->list
      (lambda (_%obj93719%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93723%_ _%obj93719%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct->list _%obj93723%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj93719%_)))))
    (define __struct->list
      (lambda (_%obj93707%_)
        (let ()
          (let ((_%obj93710%_ _%obj93707%_))
            (let ()
              (let () (declare (not safe)) (##vector->list _%obj93710%_)))))))
    (define class->list
      (lambda (_%obj93693%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93697%_ _%obj93693%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class->list _%obj93697%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj93693%_)))))
    (define __class->list
      (lambda (_%obj93669%_)
        (let ()
          (let ((_%obj93672%_ _%obj93669%_))
            (let ()
              (let* ((_%klass93681%_
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj93672%_)))
                     (_%slot-vector93683%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%klass93681%_
                         '7
                         '#f
                         '#f))))
                (let _%loop93685%_ ((_%index93687%_
                                     (let ((__tmp97654
                                            (let ()
                                              (declare (not safe))
                                              (##vector-length
                                               _%slot-vector93683%_))))
                                       (declare (not safe))
                                       (##fx- __tmp97654 '1)))
                                    (_%plist93688%_ '()))
                  (let ()
                    (if (let () (declare (not safe)) (##fx< _%index93687%_ '1))
                        (cons _%klass93681%_ _%plist93688%_)
                        (let ((_%slot93691%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref
                                  _%slot-vector93683%_
                                  _%index93687%_))))
                          (let ((__tmp97653
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%index93687%_ '1)))
                                (__tmp97649
                                 (let ((__tmp97652
                                        (let ()
                                          (declare (not safe))
                                          (symbol->keyword _%slot93691%_)))
                                       (__tmp97650
                                        (let ((__tmp97651
                                               (let ()
                                                 (declare (not safe))
                                                 (unchecked-field-ref
                                                  _%obj93672%_
                                                  _%index93687%_))))
                                          (declare (not safe))
                                          (cons __tmp97651 _%plist93688%_))))
                                   (declare (not safe))
                                   (cons __tmp97652 __tmp97650))))
                            (declare (not safe))
                            (_%loop93685%_ __tmp97653 __tmp97649))))))))))))
    (define call-method
      (lambda (_%obj93653%_ _%id93654%_ . _%args93655%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93654%_))
              (let ()
                (let ((_%id93659%_ _%id93654%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-method
                               _%obj93653%_
                               _%id93659%_
                               _%args93655%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id93654%_)))))
    (define __call-method
      (lambda (_%obj93622%_ _%id93623%_ . _%args93624%_)
        (let ()
          (let ((_%id93627%_ _%id93623%_))
            (let ()
              (let ((_%$e93636%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93622%_ _%id93627%_))))
                (if _%$e93636%_
                    ((lambda (_%method93639%_)
                       (let ((_%method93641%_ _%method93639%_))
                         (apply _%method93641%_ _%obj93622%_ _%args93624%_)))
                     _%$e93636%_)
                    (let ()
                      (error '"cannot find method"
                             'object:
                             _%obj93622%_
                             'method:
                             _%id93627%_)))))))))
    (define method-ref
      (lambda (_%obj93607%_ _%id93608%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93608%_))
              (let ()
                (let ((_%id93612%_ _%id93608%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__method-ref _%obj93607%_ _%id93612%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
               'contract:
               'symbol?
               'value:
               _%id93608%_)))))
    (define __method-ref
      (lambda (_%obj93594%_ _%id93595%_)
        (let ()
          (let ((_%id93598%_ _%id93595%_))
            (let ()
              (let ((__tmp97655
                     (let () (declare (not safe)) (class-of _%obj93594%_))))
                (declare (not safe))
                (__find-method __tmp97655 _%obj93594%_ _%id93598%_)))))))
    (define checked-method-ref
      (lambda (_%obj93587%_ _%id93588%_)
        (let ()
          (let ((_%$e93591%_
                 (let ()
                   (declare (not safe))
                   (method-ref _%obj93587%_ _%id93588%_))))
            (if _%$e93591%_
                _%$e93591%_
                (error '"missing method"
                       'object:
                       _%obj93587%_
                       'method:
                       _%id93588%_))))))
    (define bound-method-ref
      (lambda (_%obj93572%_ _%id93573%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93573%_))
              (let ()
                (let ((_%id93577%_ _%id93573%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__bound-method-ref _%obj93572%_ _%id93577%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
               'contract:
               'symbol?
               'value:
               _%id93573%_)))))
    (define __bound-method-ref
      (lambda (_%obj93540%_ _%id93541%_)
        (let ()
          (let ((_%id93544%_ _%id93541%_))
            (let ()
              (let ((_%$e93553%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93540%_ _%id93544%_))))
                (if _%$e93553%_
                    ((lambda (_%method93556%_)
                       (let ((_%method93558%_ _%method93556%_))
                         (lambda _%args93569%_
                           (apply _%method93558%_
                                  _%obj93540%_
                                  _%args93569%_))))
                     _%$e93553%_)
                    (let () '#f))))))))
    (define checked-bound-method-ref
      (lambda (_%obj93525%_ _%id93526%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93526%_))
              (let ()
                (let ((_%id93530%_ _%id93526%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__checked-bound-method-ref _%obj93525%_ _%id93530%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
               'contract:
               'symbol?
               'value:
               _%id93526%_)))))
    (define __checked-bound-method-ref
      (lambda (_%obj93508%_ _%id93509%_)
        (let ()
          (let ((_%id93512%_ _%id93509%_))
            (let ()
              (let ((_%method93521%_
                     (let ()
                       (declare (not safe))
                       (checked-method-ref _%obj93508%_ _%id93512%_))))
                (lambda _%args93523%_
                  (apply _%method93521%_ _%obj93508%_ _%args93523%_))))))))
    (define find-method
      (lambda (_%klass93482%_ _%obj93483%_ _%id93484%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93482%_ 'class))
              (let ()
                (let ((_%klass93488%_ _%klass93482%_))
                  (if (let () (declare (not safe)) (symbol? _%id93484%_))
                      (let ()
                        (let ((_%id93498%_ _%id93484%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__find-method
                               _%klass93488%_
                               _%obj93483%_
                               _%id93498%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id93484%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
               'contract:
               'class-type?
               'value:
               _%klass93482%_)))))
    (define __find-method
      (lambda (_%klass93455%_ _%obj93456%_ _%id93457%_)
        (let ()
          (let ((_%klass93460%_ _%klass93455%_))
            (let ((_%id93468%_ _%id93457%_))
              (let ()
                (let ((_%$e93477%_
                       (let ()
                         (declare (not safe))
                         (__direct-method-ref
                          _%klass93460%_
                          _%obj93456%_
                          _%id93468%_))))
                  (if _%$e93477%_
                      _%$e93477%_
                      (if (let ()
                            (declare (not safe))
                            (__class-type-sealed? _%klass93460%_))
                          (let () '#f)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93460%_
                               _%obj93456%_
                               _%id93468%_))))))))))))
    (define mixin-find-method
      (lambda (_%mixins93439%_ _%obj93440%_ _%id93441%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93441%_))
              (let ()
                (let ((_%id93445%_ _%id93441%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__mixin-find-method
                       _%mixins93439%_
                       _%obj93440%_
                       _%id93445%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
               'contract:
               'symbol?
               'value:
               _%id93441%_)))))
    (define __mixin-find-method
      (lambda (_%mixins93421%_ _%obj93422%_ _%id93423%_)
        (let ()
          (let ((_%id93426%_ _%id93423%_))
            (let ()
              (let ((__tmp97656
                     (lambda (_%g9343493436%_)
                       (let ()
                         (declare (not safe))
                         (direct-method-ref
                          _%g9343493436%_
                          _%obj93422%_
                          _%id93426%_)))))
                (declare (not safe))
                (__ormap1 __tmp97656 _%mixins93421%_)))))))
    (define direct-method-ref
      (lambda (_%klass93395%_ _%obj93396%_ _%id93397%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93395%_ 'class))
              (let ()
                (let ((_%klass93401%_ _%klass93395%_))
                  (if (let () (declare (not safe)) (symbol? _%id93397%_))
                      (let ()
                        (let ((_%id93411%_ _%id93397%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__direct-method-ref
                               _%klass93401%_
                               _%obj93396%_
                               _%id93411%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93397%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
               'contract:
               'class-type?
               'value:
               _%klass93395%_)))))
    (define __direct-method-ref
      (lambda (_%klass93349%_ _%obj93350%_ _%id93351%_)
        (let ()
          (let ((_%klass93354%_ _%klass93349%_))
            (let ((_%id93362%_ _%id93351%_))
              (let ()
                (letrec ((_%metaclass-resolve-method93371%_
                          (lambda ()
                            (let ((__method97535
                                   (let ()
                                     (declare (not safe))
                                     (__method-ref
                                      _%klass93354%_
                                      'direct-method-ref))))
                              (if __method97535
                                  (__method97535
                                   _%klass93354%_
                                   _%obj93350%_
                                   _%id93362%_)
                                  (error '"Missing method"
                                         _%klass93354%_
                                         'direct-method-ref)))))
                         (_%metaclass-resolve-method!93372%_
                          (lambda ()
                            (let ((_%method93392%_
                                   (let ()
                                     (declare (not safe))
                                     (_%metaclass-resolve-method93371%_))))
                              (let ((__tmp97658
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass93354%_
                                        '11
                                        '#f
                                        '#f)))
                                    (__tmp97657
                                     (if _%method93392%_ 'resolved 'unknown)))
                                (declare (not safe))
                                (symbolic-table-set!
                                 __tmp97658
                                 _%id93362%_
                                 __tmp97657))
                              _%method93392%_))))
                  (let ((_%$e93374%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93354%_
                            '11
                            '#f
                            '#f))))
                    (if _%$e93374%_
                        ((lambda (_%ht93377%_)
                           (let ((_%method93379%_
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-ref
                                     _%ht93377%_
                                     _%id93362%_
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (procedure? _%method93379%_))
                                 (let () _%method93379%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__class-type-metaclass?
                                        _%klass93354%_))
                                     (let ()
                                       (let ((_%$e93383%_ _%method93379%_))
                                         (if (eq? 'resolved _%$e93383%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%metaclass-resolve-method93371%_))
                                             (if (eq? 'unknown _%$e93383%_)
                                                 '#f
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%metaclass-resolve-method!93372%_))))))
                                     (let () '#f)))))
                         _%$e93374%_)
                        (if (let ()
                              (declare (not safe))
                              (__class-type-metaclass? _%klass93354%_))
                            (let ()
                              (let ((_%tab93388%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93354%_
                                   _%tab93388%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%metaclass-resolve-method!93372%_))))
                            (let () '#f)))))))))))
    (define mixin-method-ref
      (lambda (_%klass93323%_ _%obj93324%_ _%id93325%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93323%_ 'class))
              (let ()
                (let ((_%klass93329%_ _%klass93323%_))
                  (if (let () (declare (not safe)) (symbol? _%id93325%_))
                      (let ()
                        (let ((_%id93339%_ _%id93325%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93329%_
                               _%obj93324%_
                               _%id93339%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93325%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
               'contract:
               'class-type?
               'value:
               _%klass93323%_)))))
    (define __mixin-method-ref
      (lambda (_%klass93301%_ _%obj93302%_ _%id93303%_)
        (let ()
          (let ((_%klass93306%_ _%klass93301%_))
            (let ((_%id93314%_ _%id93303%_))
              (let ()
                (let ((__tmp97659
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93306%_
                          '6
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__mixin-find-method
                   __tmp97659
                   _%obj93302%_
                   _%id93314%_))))))))
    (define bind-method!__%
      (lambda (_%klass93260%_ _%id93261%_ _%proc93262%_ _%rebind?93263%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93261%_))
              (let ()
                (let ((_%id93267%_ _%id93261%_))
                  (if (let () (declare (not safe)) (procedure? _%proc93262%_))
                      (let ()
                        (let ((_%proc93277%_ _%proc93262%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bind-method!__%
                               _%klass93260%_
                               _%id93267%_
                               _%proc93277%_
                               _%rebind?93263%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93262%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
               'contract:
               'symbol?
               'value:
               _%id93261%_)))))
    (define bind-method!__0
      (lambda (_%klass93290%_ _%id93291%_ _%proc93292%_)
        (let ((_%rebind?93294%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93290%_
           _%id93291%_
           _%proc93292%_
           _%rebind?93294%_))))
    (define bind-method!
      (lambda _g97661_
        (let ((_g97660_ (let () (declare (not safe)) (##length _g97661_))))
          (cond ((let () (declare (not safe)) (##fx= _g97660_ 3))
                 (apply (lambda (_%klass93290%_ _%id93291%_ _%proc93292%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93290%_
                             _%id93291%_
                             _%proc93292%_)))
                        _g97661_))
                ((let () (declare (not safe)) (##fx= _g97660_ 4))
                 (apply (lambda (_%klass93296%_
                                 _%id93297%_
                                 _%proc93298%_
                                 _%rebind?93299%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93296%_
                             _%id93297%_
                             _%proc93298%_
                             _%rebind?93299%_)))
                        _g97661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97661_))))))
    (define __bind-method!__%
      (lambda (_%klass93211%_ _%id93212%_ _%proc93213%_ _%rebind?93214%_)
        (let ()
          (let ((_%id93217%_ _%id93212%_))
            (let ((_%proc93225%_ _%proc93213%_))
              (let ()
                (letrec ((_%bind!93234%_
                          (lambda (_%ht93243%_)
                            (if (and (let ()
                                       (declare (not safe))
                                       (not _%rebind?93214%_))
                                     (let ()
                                       (declare (not safe))
                                       (symbolic-table-ref
                                        _%ht93243%_
                                        _%id93217%_
                                        '#f)))
                                (error '"method already bound"
                                       'class:
                                       _%klass93211%_
                                       'method:
                                       _%id93217%_)
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-set!
                                     _%ht93243%_
                                     _%id93217%_
                                     _%proc93225%_))
                                  '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%klass93211%_ 'class))
                      (let ()
                        (let ((_%ht93237%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93211%_
                                  '11
                                  '#f
                                  '#f))))
                          (if _%ht93237%_
                              (let ()
                                (declare (not safe))
                                (_%bind!93234%_ _%ht93237%_))
                              (let ((_%ht93239%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93211%_
                                   _%ht93239%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%bind!93234%_ _%ht93239%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##type? _%klass93211%_))
                          (let ()
                            (let ((__tmp97662
                                   (let ()
                                     (declare (not safe))
                                     (__shadow-class _%klass93211%_))))
                              (declare (not safe))
                              (__bind-method!
                               __tmp97662
                               _%id93217%_
                               _%proc93225%_
                               _%rebind?93214%_)))
                          (let ()
                            (error '"bad class; expected class or builtin type"
                                   _%klass93211%_)))))))))))
    (define __bind-method!__0
      (lambda (_%klass93248%_ _%id93249%_ _%proc93250%_)
        (let ((_%rebind?93252%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93248%_
           _%id93249%_
           _%proc93250%_
           _%rebind?93252%_))))
    (define __bind-method!
      (lambda _g97664_
        (let ((_g97663_ (let () (declare (not safe)) (##length _g97664_))))
          (cond ((let () (declare (not safe)) (##fx= _g97663_ 3))
                 (apply (lambda (_%klass93248%_ _%id93249%_ _%proc93250%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93248%_
                             _%id93249%_
                             _%proc93250%_)))
                        _g97664_))
                ((let () (declare (not safe)) (##fx= _g97663_ 4))
                 (apply (lambda (_%klass93254%_
                                 _%id93255%_
                                 _%proc93256%_
                                 _%rebind?93257%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93254%_
                             _%id93255%_
                             _%proc93256%_
                             _%rebind?93257%_)))
                        _g97664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97664_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93191%_ _%seed93193%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93191%_
           procedure-hash
           eq?
           _%seed93193%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93199%_ '#f) (_%seed93201%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93199%_
           _%seed93201%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93203%_)
        (let ((_%seed93205%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93203%_
           _%seed93205%_))))
    (define make-method-specializer-table
      (lambda _g97666_
        (let ((_g97665_ (let () (declare (not safe)) (##length _g97666_))))
          (cond ((let () (declare (not safe)) (##fx= _g97665_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g97666_))
                ((let () (declare (not safe)) (##fx= _g97665_ 1))
                 (apply (lambda (_%size-hint93203%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93203%_)))
                        _g97666_))
                ((let () (declare (not safe)) (##fx= _g97665_ 2))
                 (apply (lambda (_%size-hint93207%_ _%seed93208%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93207%_
                             _%seed93208%_)))
                        _g97666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97666_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93144%_ _%key93145%_ _%default93146%_)
        (let ((_%table93148%_
               (let () (declare (not safe)) (&raw-table-table _%tab93144%_)))
              (_%seed93149%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93144%_))))
          (let* ((_%h93151%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93145%_))
                         _%seed93149%_))
                 (_%size93154%_ (vector-length _%table93148%_))
                 (_%entries93157%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93154%_ '2)))
                 (_%start93160%_
                  (let ((__tmp97667
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93151%_ _%entries93157%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97667 '1))))
            (let _%loop93164%_ ((_%probe93167%_ _%start93160%_)
                                (_%i93169%_ '1)
                                (_%deleted93171%_ '#f))
              (let ((_%k93174%_ (vector-ref _%table93148%_ _%probe93167%_)))
                (if (eq? _%k93174%_ (macro-unused-obj))
                    (let () _%default93146%_)
                    (if (eq? _%k93174%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97670
                                 (let ((_%next-probe93179%_
                                        (fx+ _%start93160%_
                                             _%i93169%_
                                             (fx* _%i93169%_ _%i93169%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93179%_
                                    _%size93154%_)))
                                (__tmp97669
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93169%_ '1)))
                                (__tmp97668
                                 (let ((_%$e93182%_ _%deleted93171%_))
                                   (if _%$e93182%_
                                       _%$e93182%_
                                       _%probe93167%_))))
                            (declare (not safe))
                            (_%loop93164%_ __tmp97670 __tmp97669 __tmp97668)))
                        (if (eq? _%key93145%_ _%k93174%_)
                            (let ()
                              (vector-ref
                               _%table93148%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93167%_ '1))))
                            (let ()
                              (let ((__tmp97672
                                     (let ((_%next-probe93187%_
                                            (fx+ _%start93160%_
                                                 _%i93169%_
                                                 (fx* _%i93169%_ _%i93169%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93187%_
                                        _%size93154%_)))
                                    (__tmp97671
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93169%_ '1))))
                                (declare (not safe))
                                (_%loop93164%_
                                 __tmp97672
                                 __tmp97671
                                 _%deleted93171%_))))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93140%_ _%key93141%_ _%value93142%_)
        (if (let ((__tmp97675
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93140%_)))
                  (__tmp97673
                   (let ((__tmp97674
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93140%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97674 '4))))
              (declare (not safe))
              (##fx< __tmp97675 __tmp97673))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93140%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93140%_
           _%key93141%_
           _%value93142%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93091%_ _%key93092%_ _%value93093%_)
        (let ((_%table93096%_
               (let () (declare (not safe)) (&raw-table-table _%tab93091%_)))
              (_%seed93097%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93091%_))))
          (let* ((_%h93099%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93092%_))
                         _%seed93097%_))
                 (_%size93102%_ (vector-length _%table93096%_))
                 (_%entries93105%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93102%_ '2)))
                 (_%start93108%_
                  (let ((__tmp97676
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93099%_ _%entries93105%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97676 '1))))
            (let _%loop93112%_ ((_%probe93115%_ _%start93108%_)
                                (_%i93117%_ '1)
                                (_%deleted93119%_ '#f))
              (let ((_%k93122%_ (vector-ref _%table93096%_ _%probe93115%_)))
                (if (eq? _%k93122%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93119%_
                          (begin
                            (vector-set!
                             _%table93096%_
                             _%deleted93119%_
                             _%key93092%_)
                            (vector-set!
                             _%table93096%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93119%_ '1))
                             _%value93093%_)
                            ((lambda ()
                               (let ((__tmp97677
                                      (let ((__tmp97678
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93091%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97678 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93091%_
                                  __tmp97677)))))
                          (begin
                            (vector-set!
                             _%table93096%_
                             _%probe93115%_
                             _%key93092%_)
                            (vector-set!
                             _%table93096%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93115%_ '1))
                             _%value93093%_)
                            ((lambda ()
                               (let ((__tmp97679
                                      (let ((__tmp97680
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93091%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97680 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93091%_
                                  __tmp97679))
                               (let ((__tmp97681
                                      (let ((__tmp97682
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93091%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97682 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93091%_
                                  __tmp97681)))))))
                    (if (eq? _%k93122%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97685
                                 (let ((_%next-probe93129%_
                                        (fx+ _%start93108%_
                                             _%i93117%_
                                             (fx* _%i93117%_ _%i93117%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93129%_
                                    _%size93102%_)))
                                (__tmp97684
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93117%_ '1)))
                                (__tmp97683
                                 (let ((_%$e93132%_ _%deleted93119%_))
                                   (if _%$e93132%_
                                       _%$e93132%_
                                       _%probe93115%_))))
                            (declare (not safe))
                            (_%loop93112%_ __tmp97685 __tmp97684 __tmp97683)))
                        (if (eq? _%key93092%_ _%k93122%_)
                            (let ()
                              (vector-set!
                               _%table93096%_
                               _%probe93115%_
                               _%key93092%_)
                              (vector-set!
                               _%table93096%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93115%_ '1))
                               _%value93093%_))
                            (let ()
                              (let ((__tmp97687
                                     (let ((_%next-probe93137%_
                                            (fx+ _%start93108%_
                                                 _%i93117%_
                                                 (fx* _%i93117%_ _%i93117%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93137%_
                                        _%size93102%_)))
                                    (__tmp97686
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93117%_ '1))))
                                (declare (not safe))
                                (_%loop93112%_
                                 __tmp97687
                                 __tmp97686
                                 _%deleted93119%_))))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93086%_
               _%key93087%_
               _%method-specializer-table-update!93088%_
               _%default93089%_)
        (if (let ((__tmp97690
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93086%_)))
                  (__tmp97688
                   (let ((__tmp97689
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93086%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97689 '4))))
              (declare (not safe))
              (##fx< __tmp97690 __tmp97688))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93086%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93086%_
           _%key93087%_
           _%method-specializer-table-update!93088%_
           _%default93089%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93036%_
               _%key93037%_
               _%method-specializer-table-update!93038%_
               _%default93039%_)
        (let ((_%table93042%_
               (let () (declare (not safe)) (&raw-table-table _%tab93036%_)))
              (_%seed93043%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93036%_))))
          (let* ((_%h93045%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93037%_))
                         _%seed93043%_))
                 (_%size93048%_ (vector-length _%table93042%_))
                 (_%entries93051%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93048%_ '2)))
                 (_%start93054%_
                  (let ((__tmp97691
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93045%_ _%entries93051%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97691 '1))))
            (let _%loop93058%_ ((_%probe93061%_ _%start93054%_)
                                (_%i93063%_ '1)
                                (_%deleted93065%_ '#f))
              (let ((_%k93068%_ (vector-ref _%table93042%_ _%probe93061%_)))
                (if (eq? _%k93068%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93065%_
                          (begin
                            (vector-set!
                             _%table93042%_
                             _%deleted93065%_
                             _%key93037%_)
                            (vector-set!
                             _%table93042%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93065%_ '1))
                             (_%method-specializer-table-update!93038%_
                              _%default93039%_))
                            ((lambda ()
                               (let ((__tmp97692
                                      (let ((__tmp97693
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93036%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97693 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93036%_
                                  __tmp97692)))))
                          (begin
                            (vector-set!
                             _%table93042%_
                             _%probe93061%_
                             _%key93037%_)
                            (vector-set!
                             _%table93042%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93061%_ '1))
                             (_%method-specializer-table-update!93038%_
                              _%default93039%_))
                            ((lambda ()
                               (let ((__tmp97694
                                      (let ((__tmp97695
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93036%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97695 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93036%_
                                  __tmp97694))
                               (let ((__tmp97696
                                      (let ((__tmp97697
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93036%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97697 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93036%_
                                  __tmp97696)))))))
                    (if (eq? _%k93068%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97700
                                 (let ((_%next-probe93075%_
                                        (fx+ _%start93054%_
                                             _%i93063%_
                                             (fx* _%i93063%_ _%i93063%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93075%_
                                    _%size93048%_)))
                                (__tmp97699
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93063%_ '1)))
                                (__tmp97698
                                 (let ((_%$e93078%_ _%deleted93065%_))
                                   (if _%$e93078%_
                                       _%$e93078%_
                                       _%probe93061%_))))
                            (declare (not safe))
                            (_%loop93058%_ __tmp97700 __tmp97699 __tmp97698)))
                        (if (eq? _%key93037%_ _%k93068%_)
                            (let ()
                              (vector-set!
                               _%table93042%_
                               _%probe93061%_
                               _%key93037%_)
                              (vector-set!
                               _%table93042%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93061%_ '1))
                               (_%method-specializer-table-update!93038%_
                                (vector-ref
                                 _%table93042%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93061%_ '1))))))
                            (let ()
                              (let ((__tmp97702
                                     (let ((_%next-probe93083%_
                                            (fx+ _%start93054%_
                                                 _%i93063%_
                                                 (fx* _%i93063%_ _%i93063%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93083%_
                                        _%size93048%_)))
                                    (__tmp97701
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93063%_ '1))))
                                (declare (not safe))
                                (_%loop93058%_
                                 __tmp97702
                                 __tmp97701
                                 _%deleted93065%_))))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab92991%_ _%key92993%_)
        (let ((_%table92996%_
               (let () (declare (not safe)) (&raw-table-table _%tab92991%_)))
              (_%seed92998%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92991%_))))
          (let* ((_%h93001%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key92993%_))
                         _%seed92998%_))
                 (_%size93004%_ (vector-length _%table92996%_))
                 (_%entries93007%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93004%_ '2)))
                 (_%start93010%_
                  (let ((__tmp97703
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93001%_ _%entries93007%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97703 '1))))
            (let _%loop93014%_ ((_%probe93017%_ _%start93010%_)
                                (_%i93019%_ '1))
              (let ((_%k93022%_ (vector-ref _%table92996%_ _%probe93017%_)))
                (if (eq? _%k93022%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93022%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97705
                                 (let ((_%next-probe93027%_
                                        (fx+ _%start93010%_
                                             _%i93019%_
                                             (fx* _%i93019%_ _%i93019%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93027%_
                                    _%size93004%_)))
                                (__tmp97704
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93019%_ '1))))
                            (declare (not safe))
                            (_%loop93014%_ __tmp97705 __tmp97704)))
                        (if (eq? _%key92993%_ _%k93022%_)
                            (let ()
                              (vector-set!
                               _%table92996%_
                               _%probe93017%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92996%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93017%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97706
                                        (let ((__tmp97707
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92991%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97707 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92991%_
                                    __tmp97706)))))
                            (let ()
                              (let ((__tmp97709
                                     (let ((_%next-probe93033%_
                                            (fx+ _%start93010%_
                                                 _%i93019%_
                                                 (fx* _%i93019%_ _%i93019%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93033%_
                                        _%size93004%_)))
                                    (__tmp97708
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93019%_ '1))))
                                (declare (not safe))
                                (_%loop93014%_
                                 __tmp97709
                                 __tmp97708))))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc92982%_ _%specializer92983%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92987%_ ()
            (if (let ((__tmp97710
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97710 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92987%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc92982%_
           _%specializer92983%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc92972%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92976%_ ()
            (if (let ((__tmp97711
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97711 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92976%_))))))
        (let ((_%specializer92980%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc92972%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer92980%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass92970%_)
        (let ((__tmp97712
               (let () (declare (not safe)) (##type-id _%klass92970%_))))
          (declare (not safe))
          (symbolic-hash __tmp97712))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint92951%_ _%seed92953%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint92951%_
           __class-specializer-hash-key
           eq?
           _%seed92953%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint92959%_ '#f) (_%seed92961%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92959%_ _%seed92961%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint92963%_)
        (let ((_%seed92965%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92963%_ _%seed92965%_))))
    (define make-class-specializer-table
      (lambda _g97714_
        (let ((_g97713_ (let () (declare (not safe)) (##length _g97714_))))
          (cond ((let () (declare (not safe)) (##fx= _g97713_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g97714_))
                ((let () (declare (not safe)) (##fx= _g97713_ 1))
                 (apply (lambda (_%size-hint92963%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint92963%_)))
                        _g97714_))
                ((let () (declare (not safe)) (##fx= _g97713_ 2))
                 (apply (lambda (_%size-hint92967%_ _%seed92968%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint92967%_
                             _%seed92968%_)))
                        _g97714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97714_))))))
    (define class-specializer-table-ref
      (lambda (_%tab92904%_ _%key92905%_ _%default92906%_)
        (let ((_%table92908%_
               (let () (declare (not safe)) (&raw-table-table _%tab92904%_)))
              (_%seed92909%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92904%_))))
          (let* ((_%h92911%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92905%_))
                         _%seed92909%_))
                 (_%size92914%_ (vector-length _%table92908%_))
                 (_%entries92917%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92914%_ '2)))
                 (_%start92920%_
                  (let ((__tmp97715
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92911%_ _%entries92917%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97715 '1))))
            (let _%loop92924%_ ((_%probe92927%_ _%start92920%_)
                                (_%i92929%_ '1)
                                (_%deleted92931%_ '#f))
              (let ((_%k92934%_ (vector-ref _%table92908%_ _%probe92927%_)))
                (if (eq? _%k92934%_ (macro-unused-obj))
                    (let () _%default92906%_)
                    (if (eq? _%k92934%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97718
                                 (let ((_%next-probe92939%_
                                        (fx+ _%start92920%_
                                             _%i92929%_
                                             (fx* _%i92929%_ _%i92929%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92939%_
                                    _%size92914%_)))
                                (__tmp97717
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92929%_ '1)))
                                (__tmp97716
                                 (let ((_%$e92942%_ _%deleted92931%_))
                                   (if _%$e92942%_
                                       _%$e92942%_
                                       _%probe92927%_))))
                            (declare (not safe))
                            (_%loop92924%_ __tmp97718 __tmp97717 __tmp97716)))
                        (if (eq? _%key92905%_ _%k92934%_)
                            (let ()
                              (vector-ref
                               _%table92908%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92927%_ '1))))
                            (let ()
                              (let ((__tmp97720
                                     (let ((_%next-probe92947%_
                                            (fx+ _%start92920%_
                                                 _%i92929%_
                                                 (fx* _%i92929%_ _%i92929%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92947%_
                                        _%size92914%_)))
                                    (__tmp97719
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92929%_ '1))))
                                (declare (not safe))
                                (_%loop92924%_
                                 __tmp97720
                                 __tmp97719
                                 _%deleted92931%_))))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab92900%_ _%key92901%_ _%value92902%_)
        (if (let ((__tmp97723
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92900%_)))
                  (__tmp97721
                   (let ((__tmp97722
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92900%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97722 '4))))
              (declare (not safe))
              (##fx< __tmp97723 __tmp97721))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92900%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab92900%_
           _%key92901%_
           _%value92902%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab92851%_ _%key92852%_ _%value92853%_)
        (let ((_%table92856%_
               (let () (declare (not safe)) (&raw-table-table _%tab92851%_)))
              (_%seed92857%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92851%_))))
          (let* ((_%h92859%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92852%_))
                         _%seed92857%_))
                 (_%size92862%_ (vector-length _%table92856%_))
                 (_%entries92865%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92862%_ '2)))
                 (_%start92868%_
                  (let ((__tmp97724
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92859%_ _%entries92865%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97724 '1))))
            (let _%loop92872%_ ((_%probe92875%_ _%start92868%_)
                                (_%i92877%_ '1)
                                (_%deleted92879%_ '#f))
              (let ((_%k92882%_ (vector-ref _%table92856%_ _%probe92875%_)))
                (if (eq? _%k92882%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92879%_
                          (begin
                            (vector-set!
                             _%table92856%_
                             _%deleted92879%_
                             _%key92852%_)
                            (vector-set!
                             _%table92856%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92879%_ '1))
                             _%value92853%_)
                            ((lambda ()
                               (let ((__tmp97725
                                      (let ((__tmp97726
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92851%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97726 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92851%_
                                  __tmp97725)))))
                          (begin
                            (vector-set!
                             _%table92856%_
                             _%probe92875%_
                             _%key92852%_)
                            (vector-set!
                             _%table92856%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92875%_ '1))
                             _%value92853%_)
                            ((lambda ()
                               (let ((__tmp97727
                                      (let ((__tmp97728
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92851%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97728 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92851%_
                                  __tmp97727))
                               (let ((__tmp97729
                                      (let ((__tmp97730
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92851%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97730 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92851%_
                                  __tmp97729)))))))
                    (if (eq? _%k92882%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97733
                                 (let ((_%next-probe92889%_
                                        (fx+ _%start92868%_
                                             _%i92877%_
                                             (fx* _%i92877%_ _%i92877%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92889%_
                                    _%size92862%_)))
                                (__tmp97732
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92877%_ '1)))
                                (__tmp97731
                                 (let ((_%$e92892%_ _%deleted92879%_))
                                   (if _%$e92892%_
                                       _%$e92892%_
                                       _%probe92875%_))))
                            (declare (not safe))
                            (_%loop92872%_ __tmp97733 __tmp97732 __tmp97731)))
                        (if (eq? _%key92852%_ _%k92882%_)
                            (let ()
                              (vector-set!
                               _%table92856%_
                               _%probe92875%_
                               _%key92852%_)
                              (vector-set!
                               _%table92856%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92875%_ '1))
                               _%value92853%_))
                            (let ()
                              (let ((__tmp97735
                                     (let ((_%next-probe92897%_
                                            (fx+ _%start92868%_
                                                 _%i92877%_
                                                 (fx* _%i92877%_ _%i92877%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92897%_
                                        _%size92862%_)))
                                    (__tmp97734
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92877%_ '1))))
                                (declare (not safe))
                                (_%loop92872%_
                                 __tmp97735
                                 __tmp97734
                                 _%deleted92879%_))))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab92846%_
               _%key92847%_
               _%class-specializer-table-update!92848%_
               _%default92849%_)
        (if (let ((__tmp97738
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92846%_)))
                  (__tmp97736
                   (let ((__tmp97737
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92846%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97737 '4))))
              (declare (not safe))
              (##fx< __tmp97738 __tmp97736))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92846%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab92846%_
           _%key92847%_
           _%class-specializer-table-update!92848%_
           _%default92849%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab92796%_
               _%key92797%_
               _%class-specializer-table-update!92798%_
               _%default92799%_)
        (let ((_%table92802%_
               (let () (declare (not safe)) (&raw-table-table _%tab92796%_)))
              (_%seed92803%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92796%_))))
          (let* ((_%h92805%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92797%_))
                         _%seed92803%_))
                 (_%size92808%_ (vector-length _%table92802%_))
                 (_%entries92811%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92808%_ '2)))
                 (_%start92814%_
                  (let ((__tmp97739
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92805%_ _%entries92811%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97739 '1))))
            (let _%loop92818%_ ((_%probe92821%_ _%start92814%_)
                                (_%i92823%_ '1)
                                (_%deleted92825%_ '#f))
              (let ((_%k92828%_ (vector-ref _%table92802%_ _%probe92821%_)))
                (if (eq? _%k92828%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92825%_
                          (begin
                            (vector-set!
                             _%table92802%_
                             _%deleted92825%_
                             _%key92797%_)
                            (vector-set!
                             _%table92802%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92825%_ '1))
                             (_%class-specializer-table-update!92798%_
                              _%default92799%_))
                            ((lambda ()
                               (let ((__tmp97740
                                      (let ((__tmp97741
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92796%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97741 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92796%_
                                  __tmp97740)))))
                          (begin
                            (vector-set!
                             _%table92802%_
                             _%probe92821%_
                             _%key92797%_)
                            (vector-set!
                             _%table92802%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92821%_ '1))
                             (_%class-specializer-table-update!92798%_
                              _%default92799%_))
                            ((lambda ()
                               (let ((__tmp97742
                                      (let ((__tmp97743
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92796%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97743 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92796%_
                                  __tmp97742))
                               (let ((__tmp97744
                                      (let ((__tmp97745
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92796%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97745 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92796%_
                                  __tmp97744)))))))
                    (if (eq? _%k92828%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97748
                                 (let ((_%next-probe92835%_
                                        (fx+ _%start92814%_
                                             _%i92823%_
                                             (fx* _%i92823%_ _%i92823%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92835%_
                                    _%size92808%_)))
                                (__tmp97747
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92823%_ '1)))
                                (__tmp97746
                                 (let ((_%$e92838%_ _%deleted92825%_))
                                   (if _%$e92838%_
                                       _%$e92838%_
                                       _%probe92821%_))))
                            (declare (not safe))
                            (_%loop92818%_ __tmp97748 __tmp97747 __tmp97746)))
                        (if (eq? _%key92797%_ _%k92828%_)
                            (let ()
                              (vector-set!
                               _%table92802%_
                               _%probe92821%_
                               _%key92797%_)
                              (vector-set!
                               _%table92802%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92821%_ '1))
                               (_%class-specializer-table-update!92798%_
                                (vector-ref
                                 _%table92802%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92821%_ '1))))))
                            (let ()
                              (let ((__tmp97750
                                     (let ((_%next-probe92843%_
                                            (fx+ _%start92814%_
                                                 _%i92823%_
                                                 (fx* _%i92823%_ _%i92823%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92843%_
                                        _%size92808%_)))
                                    (__tmp97749
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92823%_ '1))))
                                (declare (not safe))
                                (_%loop92818%_
                                 __tmp97750
                                 __tmp97749
                                 _%deleted92825%_))))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92751%_ _%key92753%_)
        (let ((_%table92756%_
               (let () (declare (not safe)) (&raw-table-table _%tab92751%_)))
              (_%seed92758%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92751%_))))
          (let* ((_%h92761%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92753%_))
                         _%seed92758%_))
                 (_%size92764%_ (vector-length _%table92756%_))
                 (_%entries92767%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92764%_ '2)))
                 (_%start92770%_
                  (let ((__tmp97751
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92761%_ _%entries92767%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97751 '1))))
            (let _%loop92774%_ ((_%probe92777%_ _%start92770%_)
                                (_%i92779%_ '1))
              (let ((_%k92782%_ (vector-ref _%table92756%_ _%probe92777%_)))
                (if (eq? _%k92782%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92782%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97753
                                 (let ((_%next-probe92787%_
                                        (fx+ _%start92770%_
                                             _%i92779%_
                                             (fx* _%i92779%_ _%i92779%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92787%_
                                    _%size92764%_)))
                                (__tmp97752
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92779%_ '1))))
                            (declare (not safe))
                            (_%loop92774%_ __tmp97753 __tmp97752)))
                        (if (eq? _%key92753%_ _%k92782%_)
                            (let ()
                              (vector-set!
                               _%table92756%_
                               _%probe92777%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92756%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92777%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97754
                                        (let ((__tmp97755
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92751%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97755 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92751%_
                                    __tmp97754)))))
                            (let ()
                              (let ((__tmp97757
                                     (let ((_%next-probe92793%_
                                            (fx+ _%start92770%_
                                                 _%i92779%_
                                                 (fx* _%i92779%_ _%i92779%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92793%_
                                        _%size92764%_)))
                                    (__tmp97756
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92779%_ '1))))
                                (declare (not safe))
                                (_%loop92774%_
                                 __tmp97757
                                 __tmp97756))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92737%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92737%_ 'class))
              (let ()
                (let ((_%klass92741%_ _%klass92737%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__specialize-class _%klass92741%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass92737%_)))))
    (define __specialize-class
      (lambda (_%klass92719%_)
        (let ()
          (let ((_%klass92722%_ _%klass92719%_))
            (let ()
              (let ((_%$e92731%_
                     (let ()
                       (declare (not safe))
                       (__lookup-class-specializer _%klass92722%_))))
                (if _%$e92731%_
                    _%$e92731%_
                    (let ()
                      (let ((_%method-table92735%_
                             (let ()
                               (declare (not safe))
                               (___specialize-class _%klass92722%_))))
                        (let ()
                          (declare (not safe))
                          (__bind-class-specializer!
                           _%klass92722%_
                           _%method-table92735%_))
                        _%method-table92735%_)))))))))
    (define __lookup-class-specializer
      (lambda (_%klass92709%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92713%_ ()
            (if (let ((__tmp97758
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97758 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92713%_))))))
        (let ((_%method-table92717%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass92709%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92717%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92700%_ _%method-table92701%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92705%_ ()
            (if (let ((__tmp97759
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97759 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92705%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass92700%_
           _%method-table92701%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92684%_
               _%method-table92685%_
               _%method92686%_
               _%proc92687%_)
        (let ((_%$e92689%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92685%_
                  _%method92686%_
                  '#f))))
          (if _%$e92689%_
              _%$e92689%_
              (let ((_%$e92692%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc92687%_))))
                (if _%$e92692%_
                    ((lambda (_%specialize92695%_)
                       (let ((_%specialized-proc92697%_
                              (_%specialize92695%_
                               _%klass92684%_
                               _%method-table92685%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92685%_
                          _%method92686%_
                          _%specialized-proc92697%_)))
                     _%$e92692%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (symbolic-table-set!
                         _%method-table92685%_
                         _%method92686%_
                         _%proc92687%_)))))))))
    (define ___specialize-class
      (lambda (_%klass92626%_)
        (if (let ((__tmp97760
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass92626%_ 'class))))
              (declare (not safe))
              (not __tmp97760))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass92626%_))
                  (let ((__tmp97761
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass92626%_))))
                    (declare (not safe))
                    (__specialize-class __tmp97761))
                  (error '"bad class; cannot specialize" _%klass92626%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass92626%_))
                (let ()
                  (let ((__method97536
                         (let ()
                           (declare (not safe))
                           (__method-ref _%klass92626%_ 'specialize-class))))
                    (if __method97536
                        (__method97536 _%klass92626%_)
                        (error '"Missing method"
                               _%klass92626%_
                               'specialize-class))))
                (if (let ((__tmp97762
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92626%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97762))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass92626%_))
                    (let ()
                      (let ((_%method-table92632%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let _%loop92634%_ ((_%rest92636%_
                                             (let ()
                                               (declare (not safe))
                                               (class-precedence-list
                                                _%klass92626%_))))
                          (let* ((_%rest9263792645%_ _%rest92636%_)
                                 (_%else9263992653%_
                                  (lambda () _%method-table92632%_))
                                 (_%K9264192672%_
                                  (lambda (_%rest92656%_ _%xklass92657%_)
                                    (let ((_%xmethod-table9265892660%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%xklass92657%_
                                              '11
                                              '#f
                                              '#f))))
                                      (if _%xmethod-table9265892660%_
                                          (let* ((_%xmethod-table92663%_
                                                  _%xmethod-table9265892660%_)
                                                 (__tmp97763
                                                  (lambda (_%g9266492667%_
                                                           _%g9266592669%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (__specialize-method
                                                       _%klass92626%_
                                                       _%method-table92632%_
                                                       _%g9266492667%_
                                                       _%g9266592669%_)))))
                                            (declare (not safe))
                                            (raw-table-for-each
                                             _%xmethod-table92663%_
                                             __tmp97763))
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop92634%_ _%rest92656%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9263792645%_))
                                (let ((_%hd9264292675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9263792645%_)))
                                      (_%tl9264392677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9263792645%_))))
                                  (let* ((_%xklass92680%_ _%hd9264292675%_)
                                         (_%rest92682%_ _%tl9264392677%_))
                                    (declare (not safe))
                                    (_%K9264192672%_
                                     _%rest92682%_
                                     _%xklass92680%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9263992653%_))))))))))))
    (define seal-class!
      (lambda (_%klass92612%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92612%_ 'class))
              (let ()
                (let ((_%klass92616%_ _%klass92612%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__seal-class! _%klass92616%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
               'contract:
               'class-type?
               'value:
               _%klass92612%_)))))
    (define __seal-class!
      (lambda (_%klass92595%_)
        (let ()
          (let ((_%klass92598%_ _%klass92595%_))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (__class-type-sealed? _%klass92598%_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (__class-type-final? _%klass92598%_))
                        '#!void
                        (error '"cannot seal non-final class" _%klass92598%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass92598%_))
                        (let ()
                          (let ((__method97537
                                 (let ()
                                   (declare (not safe))
                                   (__method-ref
                                    _%klass92598%_
                                    'seal-class!))))
                            (if __method97537
                                (__method97537 _%klass92598%_)
                                (error '"Missing method"
                                       _%klass92598%_
                                       'seal-class!))))
                        (if (let ((__tmp97764
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass92598%_
                                      '6
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (__find class-type-metaclass? __tmp97764))
                            (let ()
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _%klass92598%_))
                            (let ()
                              (let ((_%method-table92610%_
                                     (let ()
                                       (declare (not safe))
                                       (__specialize-class _%klass92598%_))))
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _%klass92598%_
                                 _%method-table92610%_
                                 '11
                                 '#f
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass92598%_)))))))))
    (define next-method
      (lambda (_%subklass92569%_ _%obj92570%_ _%id92571%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92569%_ 'class))
              (let ()
                (let ((_%subklass92575%_ _%subklass92569%_))
                  (if (let () (declare (not safe)) (symbol? _%id92571%_))
                      (let ()
                        (let ((_%id92585%_ _%id92571%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__next-method
                               _%subklass92575%_
                               _%obj92570%_
                               _%id92585%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id92571%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
               'contract:
               'class-type?
               'value:
               _%subklass92569%_)))))
    (define __next-method
      (lambda (_%subklass92506%_ _%obj92507%_ _%id92508%_)
        (let ()
          (let ((_%subklass92511%_ _%subklass92506%_))
            (let ((_%id92519%_ _%id92508%_))
              (let ()
                (letrec ((_%find-next-method92528%_
                          (lambda (_%klass92530%_)
                            (let _%lp92532%_ ((_%rest92534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (class-precedence-list
                                                  _%klass92530%_))))
                              (let* ((_%rest9253592543%_ _%rest92534%_)
                                     (_%else9253792551%_ (lambda () '#f))
                                     (_%K9253992557%_
                                      (lambda (_%rest92554%_ _%klass92555%_)
                                        (if (eq? (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%subklass92511%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass92555%_)))
                                            (let ()
                                              (declare (not safe))
                                              (__mixin-find-method
                                               _%rest92554%_
                                               _%obj92507%_
                                               _%id92519%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp92532%_ _%rest92554%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest9253592543%_))
                                    (let ((_%hd9254092560%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest9253592543%_)))
                                          (_%tl9254192562%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest9253592543%_))))
                                      (let* ((_%klass92565%_ _%hd9254092560%_)
                                             (_%rest92567%_ _%tl9254192562%_))
                                        (declare (not safe))
                                        (_%K9253992557%_
                                         _%rest92567%_
                                         _%klass92565%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else9253792551%_))))))))
                  (let ((__tmp97765
                         (let ()
                           (declare (not safe))
                           (class-of _%obj92507%_))))
                    (declare (not safe))
                    (_%find-next-method92528%_ __tmp97765)))))))))
    (define call-next-method
      (lambda (_%subklass92479%_ _%obj92480%_ _%id92481%_ . _%args92482%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92479%_ 'class))
              (let ()
                (let ((_%subklass92486%_ _%subklass92479%_))
                  (if (let () (declare (not safe)) (symbol? _%id92481%_))
                      (let ()
                        (let ((_%id92496%_ _%id92481%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (##apply __call-next-method
                                       _%subklass92486%_
                                       _%obj92480%_
                                       _%id92496%_
                                       _%args92482%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id92481%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
               'contract:
               'class-type?
               'value:
               _%subklass92479%_)))))
    (define __call-next-method
      (lambda (_%subklass92450%_ _%obj92451%_ _%id92452%_ . _%args92453%_)
        (let ()
          (let ((_%subklass92456%_ _%subklass92450%_))
            (let ((_%id92464%_ _%id92452%_))
              (let ()
                (let ((_%$e92473%_
                       (let ()
                         (declare (not safe))
                         (__next-method
                          _%subklass92456%_
                          _%obj92451%_
                          _%id92464%_))))
                  (if _%$e92473%_
                      ((lambda (_%methodf92476%_)
                         (apply _%methodf92476%_ _%obj92451%_ _%args92453%_))
                       _%$e92473%_)
                      (let ()
                        (error '"cannot find next method"
                               'object:
                               _%obj92451%_
                               'method:
                               _%id92464%_))))))))))
    (define write-style
      (lambda (_%we92448%_) (macro-writeenv-style _%we92448%_)))
    (define write-object
      (lambda (_%we92439%_ _%obj92440%_)
        (let ((_%$e92442%_
               (let () (declare (not safe)) (__method-ref _%obj92440%_ ':wr))))
          (if _%$e92442%_
              ((lambda (_%method92445%_)
                 (_%method92445%_ _%obj92440%_ _%we92439%_))
               _%$e92442%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-wr _%we92439%_ _%obj92440%_)))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92354%_)
        (letrec ((_%shadow-type-id92356%_
                  (lambda (_%type92437%_)
                    (let ((__tmp97766
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92437%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97766 '"::t"))))
                 (_%shadow-type-name92357%_
                  (lambda (_%type92435%_)
                    (let () (declare (not safe)) (##type-name _%type92435%_))))
                 (_%make-shadow-class92358%_
                  (lambda (_%type92427%_ _%precedence-list92428%_)
                    (let* ((_%super92430%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92428%_))
                                (cons (car _%precedence-list92428%_) '())
                                '()))
                           (_%klass92432%_
                            (let ((__tmp97769
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92356%_ _%type92427%_)))
                                  (__tmp97768
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92427%_)))
                                  (__tmp97767
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _%type92427%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp97769
                               __tmp97768
                               _%super92430%_
                               '()
                               __tmp97767
                               '#f))))
                      (let ((__tmp97770
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92427%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97770
                         _%klass92432%_))
                      _%klass92432%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92362%_ ()
              (if (let ((__tmp97771
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97771 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92362%_))))))
          (let ((_%$e92366%_
                 (let ((__tmp97772
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92354%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97772 '#f))))
            (if _%$e92366%_
                ((lambda (_%klass92369%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92369%_)
                 _%$e92366%_)
                (let ()
                  (let _%loop92372%_ ((_%super92374%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%type92354%_)))
                                      (_%hierarchy92375%_ '()))
                    (if (let () (declare (not safe)) (not _%super92374%_))
                        (let ()
                          (let _%loop92378%_ ((_%rest92380%_
                                               _%hierarchy92375%_)
                                              (_%precedence-list92381%_ '()))
                            (let* ((_%rest9238292390%_ _%rest92380%_)
                                   (_%else9238492400%_
                                    (lambda ()
                                      (let ((_%klass92398%_
                                             (let ()
                                               (declare (not safe))
                                               (_%make-shadow-class92358%_
                                                _%type92354%_
                                                _%precedence-list92381%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##vector-cas!
                                           __shadow-classes-mx
                                           '0
                                           '0
                                           '1))
                                        _%klass92398%_)))
                                   (_%K9238692414%_
                                    (lambda (_%rest92403%_ _%type92404%_)
                                      (let ((_%$e92406%_
                                             (let ((__tmp97773
                                                    (let ()
                                                      (declare (not safe))
                                                      (##type-id
                                                       _%type92404%_))))
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                __shadow-classes
                                                __tmp97773
                                                '#f))))
                                        (if _%$e92406%_
                                            ((lambda (_%klass92409%_)
                                               (let ((__tmp97774
                                                      (cons _%klass92409%_
                                                            _%precedence-list92381%_)))
                                                 (declare (not safe))
                                                 (_%loop92378%_
                                                  _%rest92403%_
                                                  __tmp97774)))
                                             _%$e92406%_)
                                            (let ()
                                              (let* ((_%klass92412%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make-shadow-class92358%_
                                                         _%type92404%_
                                                         _%precedence-list92381%_)))
                                                     (__tmp97775
                                                      (cons _%klass92412%_
                                                            _%precedence-list92381%_)))
                                                (declare (not safe))
                                                (_%loop92378%_
                                                 _%rest92403%_
                                                 __tmp97775))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest9238292390%_))
                                  (let ((_%hd9238792417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9238292390%_)))
                                        (_%tl9238892419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest9238292390%_))))
                                    (let* ((_%type92422%_ _%hd9238792417%_)
                                           (_%rest92424%_ _%tl9238892419%_))
                                      (declare (not safe))
                                      (_%K9238692414%_
                                       _%rest92424%_
                                       _%type92422%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else9238492400%_))))))
                        (let ()
                          (let ((__tmp97777
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _%super92374%_)))
                                (__tmp97776
                                 (cons _%super92374%_ _%hierarchy92375%_)))
                            (declare (not safe))
                            (_%loop92372%_ __tmp97777 __tmp97776)))))))))))
    (define class-of
      (lambda (_%obj92327%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92331%_
                 (let () (declare (not safe)) (##type _%obj92327%_))))
            (if (fx= _%t92331%_ (macro-type-subtyped))
                (let ()
                  (let ((_%st92334%_
                         (let ()
                           (declare (not safe))
                           (##subtype _%obj92327%_))))
                    (if (fx= _%st92334%_ (macro-subtype-structure))
                        (let ()
                          (let ((_%klass92337%_
                                 (let ()
                                   (declare (not safe))
                                   (##structure-type _%obj92327%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%klass92337%_
                                   'class))
                                _%klass92337%_
                                (let ()
                                  (declare (not safe))
                                  (__shadow-class _%klass92337%_)))))
                        (if (fx= _%st92334%_ (macro-subtype-boxvalues))
                            (let ()
                              (if (let ((__tmp97778
                                         (let ()
                                           (declare (not safe))
                                           (##vector-length _%obj92327%_))))
                                    (declare (not safe))
                                    (##fx= __tmp97778 '1))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'box))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'values))))
                            (let ((_%$e92340%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref __subtype-id _%st92334%_))))
                              (if _%$e92340%_
                                  (let ()
                                    (declare (not safe))
                                    (__system-class _%$e92340%_))
                                  (let ()
                                    (error '"unknown class"
                                           'subtype:
                                           _%st92334%_
                                           'object:
                                           _%obj92327%_))))))))
                (if (fx= _%t92331%_ (macro-type-mem2))
                    (let ()
                      (let () (declare (not safe)) (__system-class 'pair)))
                    (if (fx= _%t92331%_ (macro-type-fixnum))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (__system-class 'fixnum)))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92327%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'char)))
                              (if (eq? _%obj92327%_ '())
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__system-class 'null)))
                                  (if (eq? _%obj92327%_ '#f)
                                      (let ()
                                        (let ()
                                          (declare (not safe))
                                          (__system-class 'boolean)))
                                      (if (eq? _%obj92327%_ '#t)
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__system-class 'boolean)))
                                          (if (eq? _%obj92327%_ '#!void)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class 'void)))
                                              (if (eq? _%obj92327%_ '#!eof)
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
      (lambda (_%id92321%_)
        (let ((_%$e92323%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92321%_ '#f))))
          (if _%$e92323%_
              _%$e92323%_
              (let () (error '"unknown system class" _%id92321%_))))))
    (define __make-system-class
      (lambda (_%id92316%_ _%super92317%_)
        (let ((_%klass92319%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92316%_
                  _%id92316%_
                  _%super92317%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92316%_ _%klass92319%_))
          _%klass92319%_)))))
