(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1733868034)
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
      (let ((_%flags100158%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties100159%_ '((direct-slots:) (system: . #t)))
            (_%slot-table100160%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags100158%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table100160%_
           _%properties100159%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots100134%_
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
             (_%slot-vector100136%_ (list->vector (cons '#f _%slots100134%_)))
             (_%slot-table100143%_
              (let ((_%slot-table100138%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp101601
                       (lambda (_%slot100140%_ _%field100141%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table100138%_
                            _%slot100140%_
                            _%field100141%_))
                         (let ((__tmp101602
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot100140%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table100138%_
                            __tmp101602
                            _%field100141%_))))
                      (__tmp101599
                       (let ((__tmp101600
                              (let ()
                                (declare (not safe))
                                (##length _%slots100134%_))))
                         (declare (not safe))
                         (##iota __tmp101600 '1))))
                  (declare (not safe))
                  (##for-each __tmp101601 _%slots100134%_ __tmp101599))
                _%slot-table100138%_))
             (_%flags100145%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields100151%_
              (list->vector
               (let ((__tmp101603
                      (map (lambda (_%g100146100148%_)
                             (list _%g100146100148%_ '5 '#f))
                           (drop _%slots100134%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp101603))))
             (_%properties100153%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots100134%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t100155%_
              (let ((__tmp101604 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags100145%_
                 ##type-type
                 _%fields100151%_
                 __tmp101604
                 _%slot-vector100136%_
                 _%slot-table100143%_
                 _%properties100153%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t100155%_ _%t100155%_))
        _%t100155%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags100130%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties100131%_ '((direct-slots:) (system: . #t)))
            (_%slot-table100132%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp101605 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags100130%_
           '#f
           '#()
           __tmp101605
           '#(#f)
           _%slot-table100132%_
           _%properties100131%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj100128%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj100128%_ 'class))))
    (define class-type=?
      (lambda (_%x100103%_ _%y100104%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x100103%_ 'class))
            (let ((_%x100108%_ _%x100103%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y100104%_ 'class))
                  (let ((_%y100118%_ _%y100104%_))
                    (__class-type=? _%x100108%_ _%y100118%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y100104%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x100103%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x100082%_ _%y100083%_)
        (let* ((_%x100086%_ _%x100082%_) (_%y100094%_ _%y100083%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x100086%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y100094%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100068%_)
        (if (let () (declare (not safe)) (##type? _%type100068%_))
            (let ((_%type100072%_ _%type100068%_))
              (__type-opaque? _%type100072%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100068%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100056%_)
        (let* ((_%type100059%_ _%type100056%_)
               (__tmp101606
                (let ((__tmp101607
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100059%_))))
                  (declare (not safe))
                  (##fxand __tmp101607 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp101606 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100042%_)
        (if (let () (declare (not safe)) (##type? _%type100042%_))
            (let ((_%type100046%_ _%type100042%_))
              (__type-extensible? _%type100046%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100042%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100030%_)
        (let* ((_%type100033%_ _%type100030%_)
               (__tmp101608
                (let ((__tmp101609
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100033%_))))
                  (declare (not safe))
                  (##fxand __tmp101609 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101608 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100016%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100016%_ 'class))
            (let ((_%type100020%_ _%type100016%_))
              (__class-type-final? _%type100020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100016%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100004%_)
        (let* ((_%type100007%_ _%type100004%_)
               (__tmp101610
                (let ((__tmp101611
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100007%_))))
                  (declare (not safe))
                  (##fxand __tmp101611 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101610 '0))))
    (define class-type-struct?
      (lambda (_%klass99990%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99990%_ 'class))
            (let ((_%klass99994%_ _%klass99990%_))
              (__class-type-struct? _%klass99994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass99990%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass99978%_)
        (let* ((_%klass99981%_ _%klass99978%_)
               (__tmp101612
                (let ((__tmp101613
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99981%_))))
                  (declare (not safe))
                  (##fxand __tmp101613 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp101612 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass99964%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99964%_ 'class))
            (let ((_%klass99968%_ _%klass99964%_))
              (__class-type-sealed? _%klass99968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass99964%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass99952%_)
        (let* ((_%klass99955%_ _%klass99952%_)
               (__tmp101614
                (let ((__tmp101615
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99955%_))))
                  (declare (not safe))
                  (##fxand __tmp101615 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp101614 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass99938%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99938%_ 'class))
            (let ((_%klass99942%_ _%klass99938%_))
              (__class-type-metaclass? _%klass99942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass99938%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass99926%_)
        (let* ((_%klass99929%_ _%klass99926%_)
               (__tmp101616
                (let ((__tmp101617
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99929%_))))
                  (declare (not safe))
                  (##fxand __tmp101617 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp101616 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass99912%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99912%_ 'class))
            (let ((_%klass99916%_ _%klass99912%_))
              (__class-type-system? _%klass99916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass99912%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass99900%_)
        (let* ((_%klass99903%_ _%klass99900%_)
               (__tmp101618
                (let ((__tmp101619
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99903%_))))
                  (declare (not safe))
                  (##fxand __tmp101619 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp101618 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id99782%_
               _%type-name99783%_
               _%type-super99784%_
               _%precedence-list99785%_
               _%slot-vector99786%_
               _%properties99787%_
               _%constructor99788%_
               _%slot-table99789%_
               _%methods99790%_)
        (letrec ((_%make-props!99793%_
                  (lambda (_%key99869%_)
                    (letrec* ((_%ht99871%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!99872%_
                               (lambda (_%ht99893%_ _%slots99894%_)
                                 (for-each
                                  (lambda (_%g9989599897%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht99893%_
                                       _%g9989599897%_
                                       '#t)))
                                  _%slots99894%_)))
                              (_%put-alist!99873%_
                               (lambda (_%ht99882%_
                                        _%key99883%_
                                        _%alist99884%_)
                                 (let ((_%$e99886%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99883%_
                                           _%alist99884%_))))
                                   (if _%$e99886%_
                                       ((lambda (_%g9988899890%_)
                                          (_%put-slots!99872%_
                                           _%ht99882%_
                                           _%g9988899890%_))
                                        _%$e99886%_)
                                       '#!void)))))
                      (_%put-alist!99873%_
                       _%ht99871%_
                       _%key99869%_
                       _%properties99787%_)
                      (for-each
                       (lambda (_%mixin99875%_)
                         (let ((_%alist99877%_
                                (##structure-ref
                                 _%mixin99875%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist99877%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99869%_
                                           _%alist99877%_))))
                               (_%put-slots!99872%_
                                _%ht99871%_
                                (class-type-slot-list _%mixin99875%_))
                               (_%put-alist!99873%_
                                _%ht99871%_
                                _%key99869%_
                                _%alist99877%_))))
                       _%precedence-list99785%_)
                      _%ht99871%_))))
          (let* ((_%transparent?99795%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties99787%_)))
                 (_%all-slots-printable?99800%_
                  (let ((_%$e99797%_ _%transparent?99795%_))
                    (if _%$e99797%_
                        _%$e99797%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties99787%_))))))
                 (_%printable99802%_
                  (if (not _%all-slots-printable?99800%_)
                      (_%make-props!99793%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?99807%_
                  (let ((_%$e99804%_ _%transparent?99795%_))
                    (if _%$e99804%_
                        _%$e99804%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties99787%_))))))
                 (_%equalable99809%_
                  (if (not _%all-slots-equalable?99807%_)
                      (_%make-props!99793%_ 'equal:)
                      '#f))
                 (_%first-new-field99811%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super99784%_ 'class))
                      (let ((__tmp101620
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super99784%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp101620))
                      '1))
                 (_%field-info-length99813%_
                  (let ((__tmp101621
                         (let ((__tmp101622
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector99786%_))))
                           (declare (not safe))
                           (##fx- __tmp101622 _%first-new-field99811%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp101621)))
                 (_%field-info99815%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length99813%_ '#f)))
                 (_%struct?99817%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties99787%_)))
                 (_%final?99819%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties99787%_)))
                 (_%metaclass99827%_
                  (let ((_%metaclass9982099822%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties99787%_))))
                    (if _%metaclass9982099822%_
                        (let ((_%metaclass99825%_ _%metaclass9982099822%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass99825%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id99782%_
                                     'metaclass:
                                     _%metaclass99825%_))
                          _%metaclass99825%_)
                        '#f)))
                 (_%system?99829%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties99787%_)))
                 (_%opaque?99837%_
                  (if (or _%transparent?99795%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties99787%_)))
                      '#f
                      (let ((_%$e99834%_ (not _%type-super99784%_)))
                        (if _%$e99834%_
                            _%$e99834%_
                            (__type-opaque? _%type-super99784%_)))))
                 (_%type-flags99839%_
                  (let ((__tmp101627
                         (if _%final?99819%_ '0 type-flag-extensible))
                        (__tmp101626 (if _%opaque?99837%_ type-flag-opaque '0))
                        (__tmp101625
                         (if _%struct?99817%_ class-type-flag-struct '0))
                        (__tmp101624
                         (if _%metaclass99827%_ class-type-flag-metaclass '0))
                        (__tmp101623
                         (if _%system?99829%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp101627
                             __tmp101626
                             __tmp101625
                             __tmp101624
                             __tmp101623)))
                 (_%precedence-list99847%_
                  (let ((_%$e99841%_ (memq t::t _%precedence-list99785%_)))
                    (if _%$e99841%_
                        ((lambda (_%tail99844%_)
                           (if (null? (cdr _%tail99844%_))
                               _%precedence-list99785%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list99785%_)))
                         _%$e99841%_)
                        (let ((__tmp101628 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list99785%_ __tmp101628))))))
            (let _%loop99850%_ ((_%i99852%_ _%first-new-field99811%_)
                                (_%j99853%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j99853%_ _%field-info-length99813%_))
                  (let* ((_%slot99855%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector99786%_ _%i99852%_)))
                         (_%flags99863%_
                          (if _%transparent?99795%_
                              '0
                              (let ((__tmp101630
                                     (if (or _%all-slots-printable?99800%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable99802%_
                                                _%slot99855%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp101629
                                     (if (or _%all-slots-equalable?99807%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable99809%_
                                                _%slot99855%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp101630 __tmp101629)))))
                    (vector-set! _%field-info99815%_ _%j99853%_ _%slot99855%_)
                    (vector-set!
                     _%field-info99815%_
                     (let () (declare (not safe)) (##fx+ _%j99853%_ '1))
                     _%flags99863%_)
                    (_%loop99850%_
                     (let () (declare (not safe)) (##fx+ _%i99852%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j99853%_ '3))))
                  '#!void))
            (if _%metaclass99827%_
                (let ((_%val99866%_
                       (make-instance
                        _%metaclass99827%_
                        _%type-id99782%_
                        _%type-name99783%_
                        _%type-flags99839%_
                        _%type-super99784%_
                        _%field-info99815%_
                        _%precedence-list99847%_
                        _%slot-vector99786%_
                        _%slot-table99789%_
                        _%properties99787%_
                        _%constructor99788%_
                        _%methods99790%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val99866%_ 'class))
                      _%val99866%_
                      (error '"bad cast" class::t _%val99866%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id99782%_
                   _%type-name99783%_
                   _%type-flags99839%_
                   _%type-super99784%_
                   _%field-info99815%_
                   _%precedence-list99847%_
                   _%slot-vector99786%_
                   _%slot-table99789%_
                   _%properties99787%_
                   _%constructor99788%_
                   _%methods99790%_)))))))
    (define class-type-id
      (lambda (_%klass99780%_)
        (##structure-ref _%klass99780%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass99778%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99778%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass99775%_ _%val99776%_)
        (##structure-set! _%klass99775%_ _%val99776%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass99770%_ _%val99772%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99770%_
           _%val99772%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass99768%_)
        (##structure-ref _%klass99768%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass99766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99766%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass99763%_ _%val99764%_)
        (##structure-set! _%klass99763%_ _%val99764%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass99758%_ _%val99760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99758%_
           _%val99760%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass99756%_)
        (##structure-ref _%klass99756%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass99754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99754%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass99751%_ _%val99752%_)
        (##structure-set! _%klass99751%_ _%val99752%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass99746%_ _%val99748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99746%_
           _%val99748%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass99744%_)
        (##structure-ref _%klass99744%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass99742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99742%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass99739%_ _%val99740%_)
        (##structure-set! _%klass99739%_ _%val99740%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass99734%_ _%val99736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99734%_
           _%val99736%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass99732%_)
        (##structure-ref _%klass99732%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass99730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99730%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass99727%_ _%val99728%_)
        (##structure-set! _%klass99727%_ _%val99728%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass99722%_ _%val99724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99722%_
           _%val99724%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass99720%_)
        (##structure-ref _%klass99720%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass99718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99718%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass99715%_ _%val99716%_)
        (##structure-set!
         _%klass99715%_
         _%val99716%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass99710%_ _%val99712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99710%_
           _%val99712%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass99708%_)
        (##structure-ref _%klass99708%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass99706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99706%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass99703%_ _%val99704%_)
        (##structure-set!
         _%klass99703%_
         _%val99704%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass99698%_ _%val99700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99698%_
           _%val99700%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass99696%_)
        (##structure-ref _%klass99696%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass99694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99694%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass99691%_ _%val99692%_)
        (##structure-set!
         _%klass99691%_
         _%val99692%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass99686%_ _%val99688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99686%_
           _%val99688%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass99684%_)
        (##structure-ref _%klass99684%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass99682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99682%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass99679%_ _%val99680%_)
        (##structure-set!
         _%klass99679%_
         _%val99680%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass99674%_ _%val99676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99674%_
           _%val99676%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass99672%_)
        (##structure-ref _%klass99672%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass99670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99670%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass99667%_ _%val99668%_)
        (##structure-set!
         _%klass99667%_
         _%val99668%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass99662%_ _%val99664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99662%_
           _%val99664%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass99660%_)
        (##structure-ref _%klass99660%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass99658%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99658%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass99655%_ _%val99656%_)
        (##structure-set! _%klass99655%_ _%val99656%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass99650%_ _%val99652%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99650%_
           _%val99652%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass99636%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99636%_ 'class))
            (let ((_%klass99640%_ _%klass99636%_))
              (__class-type-slot-list _%klass99640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass99636%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass99624%_)
        (let ((_%klass99627%_ _%klass99624%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99627%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass99610%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99610%_ 'class))
            (let ((_%klass99614%_ _%klass99610%_))
              (__class-type-field-count _%klass99614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass99610%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass99598%_)
        (let* ((_%klass99601%_ _%klass99598%_)
               (__tmp101631
                (let ((__tmp101632
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99601%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp101632))))
          (declare (not safe))
          (##fx- __tmp101631 '1))))
    (define class-type-seal!
      (lambda (_%klass99584%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99584%_ 'class))
            (let ((_%klass99588%_ _%klass99584%_))
              (__class-type-seal! _%klass99588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass99584%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass99572%_)
        (let ((_%klass99575%_ _%klass99572%_))
          (let ((__tmp101633
                 (let ((__tmp101634
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass99575%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp101634))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass99575%_
             __tmp101633
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct99547%_ _%maybe-super-struct99548%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct99547%_ 'class))
            (let ((_%maybe-sub-struct99552%_ _%maybe-sub-struct99547%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct99548%_
                     'class))
                  (let ((_%maybe-super-struct99562%_
                         _%maybe-super-struct99548%_))
                    (__substruct?
                     _%maybe-sub-struct99552%_
                     _%maybe-super-struct99562%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct99548%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct99547%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct99516%_ _%maybe-super-struct99517%_)
        (let* ((_%maybe-sub-struct99520%_ _%maybe-sub-struct99516%_)
               (_%maybe-super-struct99528%_ _%maybe-super-struct99517%_)
               (_%maybe-super-struct-id99537%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct99528%_))))
          (let _%lp99539%_ ((_%super-struct99541%_ _%maybe-sub-struct99520%_))
            (if (not _%super-struct99541%_)
                '#f
                (if (eq? _%maybe-super-struct-id99537%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct99541%_)))
                    '#t
                    (_%lp99539%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct99541%_)))))))))
    (define base-struct/1
      (lambda (_%klass99511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99511%_ 'class))
            (if (__class-type-struct? _%klass99511%_)
                _%klass99511%_
                (let () (declare (not safe)) (##type-super _%klass99511%_)))
            (if (not _%klass99511%_)
                '#f
                (error '"not a class or false" _%klass99511%_)))))
    (define base-struct/2
      (lambda (_%klass199496%_ _%klass299497%_)
        (let ((_%s199499%_ (base-struct/1 _%klass199496%_))
              (_%s299500%_ (base-struct/1 _%klass299497%_)))
          (if (or (not _%s199499%_)
                  (and _%s299500%_ (substruct? _%s199499%_ _%s299500%_)))
              _%s299500%_
              (if (or (not _%s299500%_)
                      (and _%s199499%_ (substruct? _%s299500%_ _%s199499%_)))
                  _%s199499%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass199496%_
                         _%klass299497%_
                         _%s199499%_
                         _%s299500%_))))))
    (define base-struct/list
      (lambda (_%all-supers99380%_)
        (let* ((_%all-supers9938199406%_ _%all-supers99380%_)
               (_%E9938699410%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9938199406%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9940499493%_ (lambda () '#f))
                (_%K9940199479%_
                 (lambda (_%x99477%_) (base-struct/1 _%x99477%_)))
                (_%K9939699456%_
                 (lambda (_%y99453%_ _%x99454%_)
                   (base-struct/2 _%x99454%_ _%y99453%_)))
                (_%K9938799417%_
                 (lambda (_%y99414%_ _%x99415%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x99415%_ _%y99414%_)))))
            (let* ((_%__match101593101594%_
                    (lambda (_%hd9938899420%_ _%tl9938999422%_)
                      (let ((_%x99425%_ _%hd9938899420%_))
                        (letrec ((_%splice-rest9939199427%_
                                  (lambda (_%rest9939599434%_ _%y99436%_)
                                    (if (null? _%rest9939599434%_)
                                        (_%K9938799417%_ _%y99436%_ _%x99425%_)
                                        (_%E9938699410%_))))
                                 (_%splice-try9939399429%_
                                  (lambda (_%hd9939499438%_
                                           _%rest9939599440%_
                                           _%y9939099441%_)
                                    (let ((_%y99444%_ _%hd9939499438%_))
                                      (_%splice-loop9939299431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9939599440%_))
                                       (cons _%y99444%_ _%y9939099441%_)))))
                                 (_%splice-loop9939299431%_
                                  (lambda (_%rest9939599446%_ _%y9939099447%_)
                                    (if (pair? _%rest9939599446%_)
                                        (_%splice-try9939399429%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9939599446%_))
                                         _%rest9939599446%_
                                         _%y9939099447%_)
                                        (_%splice-rest9939199427%_
                                         _%rest9939599446%_
                                         (reverse _%y9939099447%_))))))
                          (_%splice-loop9939299431%_ _%tl9938999422%_ '())))))
                   (_%try-match9938399489%_
                    (lambda ()
                      (if (pair? _%all-supers9938199406%_)
                          (let ((_%tl9940399484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9938199406%_)))
                                (_%hd9940299482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9938199406%_))))
                            (if (null? _%tl9940399484%_)
                                (let ((_%x99487%_ _%hd9940299482%_))
                                  (base-struct/1 _%x99487%_))
                                (if (pair? _%tl9940399484%_)
                                    (let ((_%tl9940099468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9940399484%_)))
                                          (_%hd9939999466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9940399484%_))))
                                      (if (null? _%tl9940099468%_)
                                          (let ((_%x99464%_ _%hd9940299482%_)
                                                (_%y99471%_ _%hd9939999466%_))
                                            (_%K9939699456%_
                                             _%y99471%_
                                             _%x99464%_))
                                          (_%__match101593101594%_
                                           _%hd9940299482%_
                                           _%tl9940399484%_)))
                                    (_%__match101593101594%_
                                     _%hd9940299482%_
                                     _%tl9940399484%_))))
                          (_%E9938699410%_)))))
              (if (null? _%all-supers9938199406%_)
                  (_%K9940499493%_)
                  (_%try-match9938399489%_)))))))
    (define base-struct
      (lambda _%all-supers99378%_ (base-struct/list _%all-supers99378%_)))
    (define find-super-constructor
      (lambda (_%super99329%_)
        (let _%lp99331%_ ((_%rest99333%_ _%super99329%_)
                          (_%constructor99334%_ '#f))
          (let* ((_%rest9933599343%_ _%rest99333%_)
                 (_%else9933799351%_ (lambda () _%constructor99334%_))
                 (_%K9933999366%_
                  (lambda (_%rest99354%_ _%hd99355%_)
                    (let ((_%$e99357%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd99355%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e99357%_
                          ((lambda (_%xconstructor99360%_)
                             (if (or (not _%constructor99334%_)
                                     (eq? _%constructor99334%_
                                          _%xconstructor99360%_))
                                 (_%lp99331%_
                                  _%rest99354%_
                                  _%xconstructor99360%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor99334%_
                                        _%xconstructor99360%_)))
                           _%$e99357%_)
                          (_%lp99331%_ _%rest99354%_ _%constructor99334%_))))))
            (if (pair? _%rest9933599343%_)
                (let ((_%hd9934099369%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9933599343%_)))
                      (_%tl9934199371%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9933599343%_))))
                  (let* ((_%hd99374%_ _%hd9934099369%_)
                         (_%rest99376%_ _%tl9934199371%_))
                    (_%K9933999366%_ _%rest99376%_ _%hd99374%_)))
                (_%else9933799351%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list99305%_ _%direct-slots99306%_)
        (let* ((_%next-slot99308%_ '1)
               (_%slot-table99310%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots99312%_ '(__class))
               (_%process-slot99316%_
                (lambda (_%slot99314%_)
                  (if (symbol? _%slot99314%_)
                      '#!void
                      (error '"invalid slot name" _%slot99314%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table99310%_
                              _%slot99314%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99310%_
                           _%slot99314%_
                           _%next-slot99308%_))
                        (let ((__tmp101635
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot99314%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99310%_
                           __tmp101635
                           _%next-slot99308%_))
                        (set! _%r-slots99312%_
                              (cons _%slot99314%_ _%r-slots99312%_))
                        (set! _%next-slot99308%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot99308%_ '1))))
                      '#!void)))
               (_%process-slots99322%_
                (lambda (_%g9931799319%_)
                  (for-each _%process-slot99316%_ _%g9931799319%_))))
          (let ((__tmp101637
                 (lambda (_%mixin99325%_)
                   (_%process-slots99322%_
                    (let ((__tmp101638
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin99325%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp101638 '())))))
                (__tmp101636 (reverse _%class-precedence-list99305%_)))
            (declare (not safe))
            (##for-each __tmp101637 __tmp101636))
          (_%process-slots99322%_ _%direct-slots99306%_)
          (let ((_%slot-vector99327%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots99312%_)))))
            (values _%slot-vector99327%_ _%slot-table99310%_)))))
    (define make-class-type
      (lambda (_%id99230%_
               _%name99231%_
               _%direct-supers99232%_
               _%direct-slots99233%_
               _%properties99234%_
               _%constructor99235%_)
        (if (symbol? _%id99230%_)
            (let ((_%id99239%_ _%id99230%_))
              (if (symbol? _%name99231%_)
                  (let ((_%name99249%_ _%name99231%_))
                    (if (list? _%direct-supers99232%_)
                        (let ((_%direct-supers99259%_ _%direct-supers99232%_))
                          (if (list? _%direct-slots99233%_)
                              (let ((_%direct-slots99269%_
                                     _%direct-slots99233%_))
                                (if (list? _%properties99234%_)
                                    (let ((_%properties99279%_
                                           _%properties99234%_))
                                      (if ((lambda (_%$obj99288%_)
                                             (or (not _%$obj99288%_)
                                                 (symbol? _%$obj99288%_)))
                                           _%constructor99235%_)
                                          (let ((_%constructor99295%_
                                                 _%constructor99235%_))
                                            (__make-class-type
                                             _%id99239%_
                                             _%name99249%_
                                             _%direct-supers99259%_
                                             _%direct-slots99269%_
                                             _%properties99279%_
                                             _%constructor99295%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor99235%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties99234%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots99233%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers99232%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name99231%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id99230%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id99099%_
               _%name99100%_
               _%direct-supers99101%_
               _%direct-slots99102%_
               _%properties99103%_
               _%constructor99104%_)
        (let* ((_%id99107%_ _%id99099%_)
               (_%name99115%_ _%name99100%_)
               (_%direct-supers99123%_ _%direct-supers99101%_)
               (_%direct-slots99131%_ _%direct-slots99102%_)
               (_%properties99139%_ _%properties99103%_)
               (_%constructor99147%_ _%constructor99104%_))
          (let ((_%$e99159%_
                 (let ((__tmp101639
                        (lambda (_%$obj99156%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj99156%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp101639 _%direct-supers99123%_))))
            (if _%$e99159%_
                ((lambda (_%g9916199163%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9916199163%_))
                 _%$e99159%_)
                (let ((_%$e99166%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers99123%_))))
                  (if _%$e99166%_
                      ((lambda (_%g9916899170%_)
                         (error '"Cannot extend final class" _%g9916899170%_))
                       _%$e99166%_)
                      '#!void))))
          (let ((_g101640_ (compute-precedence-list _%direct-supers99123%_)))
            (begin
              (let ((_g101641_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g101640_)
                           (##vector-length _g101640_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101641_ 2)))
                    (error "Context expects 2 values" _g101641_)))
              (let ((_%precedence-list99173%_
                     (let () (declare (not safe)) (##vector-ref _g101640_ 0)))
                    (_%struct-super99174%_
                     (let () (declare (not safe)) (##vector-ref _g101640_ 1))))
                (let ((_g101642_
                       (compute-class-slots
                        _%precedence-list99173%_
                        _%direct-slots99131%_)))
                  (begin
                    (let ((_g101643_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g101642_)
                                 (##vector-length _g101642_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g101643_ 2)))
                          (error "Context expects 2 values" _g101643_)))
                    (let ((_%slot-vector99176%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g101642_ 0)))
                          (_%slot-table99177%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g101642_ 1))))
                      (let* ((_%properties99179%_
                              (cons (cons 'direct-slots: _%direct-slots99131%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers99123%_)
                                          _%properties99139%_)))
                             (_%constructor*99184%_
                              (let ((_%$e99181%_ _%constructor99147%_))
                                (if _%$e99181%_
                                    _%$e99181%_
                                    (find-super-constructor
                                     _%direct-supers99123%_))))
                             (_%precedence-list99227%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties99179%_))
                                      (memq object::t
                                            _%precedence-list99173%_))
                                  _%precedence-list99173%_
                                  (let _%loop99189%_ ((_%tail99191%_
                                                       _%precedence-list99173%_)
                                                      (_%head99192%_ '()))
                                    (let* ((_%tail9919399201%_ _%tail99191%_)
                                           (_%else9919599209%_
                                            (lambda ()
                                              (let ((__tmp101644
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp101644
                                                 _%head99192%_))))
                                           (_%K9919799215%_
                                            (lambda (_%rest99212%_ _%hd99213%_)
                                              (if (eq? _%hd99213%_ t::t)
                                                  (let ((__tmp101645
                                                         (cons object::t
                                                               _%tail99191%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp101645
                                                     _%head99192%_))
                                                  (_%loop99189%_
                                                   _%rest99212%_
                                                   (cons _%hd99213%_
                                                         _%head99192%_))))))
                                      (if (pair? _%tail9919399201%_)
                                          (let ((_%hd9919899218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9919399201%_)))
                                                (_%tl9919999220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9919399201%_))))
                                            (let* ((_%hd99223%_
                                                    _%hd9919899218%_)
                                                   (_%rest99225%_
                                                    _%tl9919999220%_))
                                              (_%K9919799215%_
                                               _%rest99225%_
                                               _%hd99223%_)))
                                          (_%else9919599209%_)))))))
                        (make-class-type-descriptor
                         _%id99107%_
                         _%name99115%_
                         _%struct-super99174%_
                         _%precedence-list99227%_
                         _%slot-vector99176%_
                         _%properties99179%_
                         _%constructor*99184%_
                         _%slot-table99177%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass99085%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99085%_ 'class))
            (let ((_%klass99089%_ _%klass99085%_))
              (__class-precedence-list _%klass99089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass99085%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99073%_)
        (let ((_%klass99076%_ _%klass99073%_))
          (cons _%klass99076%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99076%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99070%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99070%_))))
    (define make-class-predicate
      (lambda (_%klass99056%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99056%_ 'class))
            (let ((_%klass99060%_ _%klass99056%_))
              (__make-class-predicate _%klass99060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99056%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99027%_)
        (let* ((_%klass99030%_ _%klass99027%_)
               (_%tid99039%_
                (let () (declare (not safe)) (##type-id _%klass99030%_))))
          (if (__class-type-final? _%klass99030%_)
              (lambda (_%g9904199043%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9904199043%_
                   _%tid99039%_)))
              (if (__class-type-struct? _%klass99030%_)
                  (lambda (_%g9904699048%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9904699048%_ _%tid99039%_)))
                  (lambda (_%g9905199053%_)
                    (__class-instance? _%klass99030%_ _%g9905199053%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99002%_ _%slot99003%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99002%_ 'class))
            (let ((_%klass99007%_ _%klass99002%_))
              (if (symbol? _%slot99003%_)
                  (let ((_%slot99017%_ _%slot99003%_))
                    (__make-class-slot-accessor _%klass99007%_ _%slot99017%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99003%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99002%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass98970%_ _%slot98971%_)
        (let* ((_%klass98974%_ _%klass98970%_)
               (_%slot98982%_ _%slot98971%_)
               (_%field98991%_
                (let ((__tmp101646
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98974%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101646 _%slot98982%_ '#f))))
          (if (not _%field98991%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98974%_
                       'slot:
                       _%slot98982%_)
                '#!void)
              (if (__class-type-final? _%klass98974%_)
                  (make-final-slot-accessor
                   _%klass98974%_
                   _%slot98982%_
                   _%field98991%_)
                  (if (__class-type-struct? _%klass98974%_)
                      (make-struct-slot-accessor
                       _%klass98974%_
                       _%slot98982%_
                       _%field98991%_)
                      (if (let ((_%strukt98997%_
                                 (base-struct/1 _%klass98974%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98997%_
                                    'class))
                                 (let ((__tmp101647
                                        (let ((__tmp101648
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98997%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101648))))
                                   (declare (not safe))
                                   (##fx< _%field98991%_ __tmp101647))))
                          (make-struct-subclass-slot-accessor
                           _%klass98974%_
                           _%slot98982%_
                           _%field98991%_)
                          (make-class-cached-slot-accessor
                           _%klass98974%_
                           _%slot98982%_
                           _%field98991%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass98945%_ _%slot98946%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98945%_ 'class))
            (let ((_%klass98950%_ _%klass98945%_))
              (if (symbol? _%slot98946%_)
                  (let ((_%slot98960%_ _%slot98946%_))
                    (__make-class-slot-mutator _%klass98950%_ _%slot98960%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass98945%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass98913%_ _%slot98914%_)
        (let* ((_%klass98917%_ _%klass98913%_)
               (_%slot98925%_ _%slot98914%_)
               (_%field98934%_
                (let ((__tmp101649
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98917%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101649 _%slot98925%_ '#f))))
          (if (not _%field98934%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98917%_
                       'slot:
                       _%slot98925%_)
                '#!void)
              (if (__class-type-final? _%klass98917%_)
                  (make-final-slot-mutator
                   _%klass98917%_
                   _%slot98925%_
                   _%field98934%_)
                  (if (__class-type-struct? _%klass98917%_)
                      (make-struct-slot-mutator
                       _%klass98917%_
                       _%slot98925%_
                       _%field98934%_)
                      (if (let ((_%strukt98940%_
                                 (base-struct/1 _%klass98917%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98940%_
                                    'class))
                                 (let ((__tmp101650
                                        (let ((__tmp101651
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98940%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101651))))
                                   (declare (not safe))
                                   (##fx< _%field98934%_ __tmp101650))))
                          (make-struct-subclass-slot-mutator
                           _%klass98917%_
                           _%slot98925%_
                           _%field98934%_)
                          (make-class-cached-slot-mutator
                           _%klass98917%_
                           _%slot98925%_
                           _%field98934%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass98888%_ _%slot98889%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98888%_ 'class))
            (let ((_%klass98893%_ _%klass98888%_))
              (if (symbol? _%slot98889%_)
                  (let ((_%slot98903%_ _%slot98889%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass98893%_
                     _%slot98903%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98889%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass98888%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass98856%_ _%slot98857%_)
        (let* ((_%klass98860%_ _%klass98856%_)
               (_%slot98868%_ _%slot98857%_)
               (_%field98877%_
                (let ((__tmp101652
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98860%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101652 _%slot98868%_ '#f))))
          (if (not _%field98877%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98860%_
                       'slot:
                       _%slot98868%_)
                '#!void)
              (if (__class-type-final? _%klass98860%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass98860%_
                   _%slot98868%_
                   _%field98877%_)
                  (if (__class-type-struct? _%klass98860%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass98860%_
                       _%slot98868%_
                       _%field98877%_)
                      (if (let ((_%strukt98883%_
                                 (base-struct/1 _%klass98860%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98883%_
                                    'class))
                                 (let ((__tmp101653
                                        (let ((__tmp101654
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98883%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101654))))
                                   (declare (not safe))
                                   (##fx< _%field98877%_ __tmp101653))))
                          (make-struct-slot-unchecked-accessor
                           _%klass98860%_
                           _%slot98868%_
                           _%field98877%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass98860%_
                           _%slot98868%_
                           _%field98877%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass98831%_ _%slot98832%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98831%_ 'class))
            (let ((_%klass98836%_ _%klass98831%_))
              (if (symbol? _%slot98832%_)
                  (let ((_%slot98846%_ _%slot98832%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass98836%_
                     _%slot98846%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98832%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass98831%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass98799%_ _%slot98800%_)
        (let* ((_%klass98803%_ _%klass98799%_)
               (_%slot98811%_ _%slot98800%_)
               (_%field98820%_
                (let ((__tmp101655
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98803%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101655 _%slot98811%_ '#f))))
          (if (not _%field98820%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98803%_
                       'slot:
                       _%slot98811%_)
                '#!void)
              (if (__class-type-final? _%klass98803%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass98803%_
                   _%slot98811%_
                   _%field98820%_)
                  (if (__class-type-struct? _%klass98803%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass98803%_
                       _%slot98811%_
                       _%field98820%_)
                      (if (let ((_%strukt98826%_
                                 (base-struct/1 _%klass98803%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98826%_
                                    'class))
                                 (let ((__tmp101656
                                        (let ((__tmp101657
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98826%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101657))))
                                   (declare (not safe))
                                   (##fx< _%field98820%_ __tmp101656))))
                          (make-struct-slot-unchecked-mutator
                           _%klass98803%_
                           _%slot98811%_
                           _%field98820%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass98803%_
                           _%slot98811%_
                           _%field98820%_))))))))
    (define not-an-instance__%
      (lambda (_%object98783%_ _%class98784%_ _%slot98785%_)
        (apply error
               '"not an instance"
               'object:
               _%object98783%_
               'class:
               _%class98784%_
               (if _%slot98785%_ (cons 'slot: (cons _%slot98785%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object98790%_ _%class98791%_)
        (let ((_%slot98793%_ '#f))
          (not-an-instance__% _%object98790%_ _%class98791%_ _%slot98793%_))))
    (define not-an-instance
      (lambda _g101659_
        (let ((_g101658_ (let () (declare (not safe)) (##length _g101659_))))
          (cond ((let () (declare (not safe)) (##fx= _g101658_ 2))
                 (apply not-an-instance__0 _g101659_))
                ((let () (declare (not safe)) (##fx= _g101658_ 3))
                 (apply not-an-instance__% _g101659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g101659_))))))
    (define make-final-slot-accessor
      (lambda (_%klass98776%_ _%slot98777%_ _%field98778%_)
        (lambda (_%obj98780%_)
          (##direct-structure-ref
           _%obj98780%_
           _%field98778%_
           _%klass98776%_
           _%slot98777%_))))
    (define make-final-slot-mutator
      (lambda (_%klass98769%_ _%slot98770%_ _%field98771%_)
        (lambda (_%obj98773%_ _%val98774%_)
          (##direct-structure-set!
           _%obj98773%_
           _%val98774%_
           _%field98771%_
           _%klass98769%_
           _%slot98770%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass98763%_ _%slot98764%_ _%field98765%_)
        (lambda (_%obj98767%_)
          (##structure-ref
           _%obj98767%_
           _%field98765%_
           _%klass98763%_
           _%slot98764%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass98756%_ _%slot98757%_ _%field98758%_)
        (lambda (_%obj98760%_ _%val98761%_)
          (##structure-set!
           _%obj98760%_
           _%val98761%_
           _%field98758%_
           _%klass98756%_
           _%slot98757%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass98750%_ _%slot98751%_ _%field98752%_)
        (lambda (_%obj98754%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj98754%_
             _%field98752%_
             _%klass98750%_
             _%slot98751%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass98743%_ _%slot98744%_ _%field98745%_)
        (lambda (_%obj98747%_ _%val98748%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj98747%_
             _%val98748%_
             _%field98745%_
             _%klass98743%_
             _%slot98744%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass98737%_ _%slot98738%_ _%field98739%_)
        (lambda (_%obj98741%_)
          (if (class-instance? _%klass98737%_ _%obj98741%_)
              (unchecked-slot-ref _%obj98741%_ _%field98739%_)
              (not-an-instance__%
               _%obj98741%_
               _%klass98737%_
               _%slot98738%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass98730%_ _%slot98731%_ _%field98732%_)
        (lambda (_%obj98734%_ _%val98735%_)
          (if (class-instance? _%klass98730%_ _%obj98734%_)
              (unchecked-field-set! _%obj98734%_ _%field98732%_ _%val98735%_)
              (not-an-instance__%
               _%obj98734%_
               _%klass98730%_
               _%slot98731%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass98721%_ _%slot98722%_ _%field98723%_)
        (lambda (_%obj98725%_)
          (if (let ((__tmp101660
                     (let () (declare (not safe)) (##type-id _%klass98721%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98725%_ __tmp101660))
              (unchecked-field-ref _%obj98725%_ _%field98723%_)
              (if (class-instance? _%klass98721%_ _%obj98725%_)
                  (unchecked-slot-ref _%obj98725%_ _%slot98722%_)
                  (not-an-instance__%
                   _%obj98725%_
                   _%klass98721%_
                   _%slot98722%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass98711%_ _%slot98712%_ _%field98713%_)
        (lambda (_%obj98715%_ _%val98716%_)
          (if (let ((__tmp101661
                     (let () (declare (not safe)) (##type-id _%klass98711%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98715%_ __tmp101661))
              (unchecked-field-set! _%obj98715%_ _%field98713%_ _%val98716%_)
              (if (class-instance? _%klass98711%_ _%obj98715%_)
                  (unchecked-slot-set! _%obj98715%_ _%slot98712%_ _%val98716%_)
                  (not-an-instance__%
                   _%obj98715%_
                   _%klass98711%_
                   _%slot98712%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass98705%_ _%slot98706%_ _%field98707%_)
        (lambda (_%obj98709%_)
          (if (let ((__tmp101662
                     (let () (declare (not safe)) (##type-id _%klass98705%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98709%_ __tmp101662))
              (unchecked-field-ref _%obj98709%_ _%field98707%_)
              (unchecked-slot-ref _%obj98709%_ _%slot98706%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass98698%_ _%slot98699%_ _%field98700%_)
        (lambda (_%obj98702%_ _%val98703%_)
          (if (let ((__tmp101663
                     (let () (declare (not safe)) (##type-id _%klass98698%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98702%_ __tmp101663))
              (unchecked-field-set! _%obj98702%_ _%field98700%_ _%val98703%_)
              (unchecked-slot-set! _%obj98702%_ _%slot98699%_ _%val98703%_)))))
    (define class-slot-offset
      (lambda (_%klass98673%_ _%slot98674%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98673%_ 'class))
            (let ((_%klass98678%_ _%klass98673%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98674%_))
                  (let ((_%slot98688%_ _%slot98674%_))
                    (__class-slot-offset _%klass98678%_ _%slot98688%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98674%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass98673%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass98652%_ _%slot98653%_)
        (let* ((_%klass98656%_ _%klass98652%_)
               (_%slot98664%_ _%slot98653%_)
               (__tmp101664
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98656%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp101664 _%slot98664%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass98626%_ _%obj98627%_ _%slot98628%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98626%_ 'class))
            (let ((_%klass98632%_ _%klass98626%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98628%_))
                  (let ((_%slot98642%_ _%slot98628%_))
                    (__class-slot-ref
                     _%klass98632%_
                     _%obj98627%_
                     _%slot98642%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass98626%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass98602%_ _%obj98603%_ _%slot98604%_)
        (let* ((_%klass98607%_ _%klass98602%_) (_%slot98615%_ _%slot98604%_))
          (if (__class-instance? _%klass98607%_ _%obj98603%_)
              (let ((_%off98624%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98603%_))
                      _%slot98615%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj98603%_
                 _%off98624%_
                 _%klass98607%_
                 _%slot98615%_))
              (not-an-instance__0 _%obj98603%_ _%klass98607%_)))))
    (define class-slot-set!
      (lambda (_%klass98575%_ _%obj98576%_ _%slot98577%_ _%val98578%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98575%_ 'class))
            (let ((_%klass98582%_ _%klass98575%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98577%_))
                  (let ((_%slot98592%_ _%slot98577%_))
                    (__class-slot-set!
                     _%klass98582%_
                     _%obj98576%_
                     _%slot98592%_
                     _%val98578%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98577%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass98575%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass98550%_ _%obj98551%_ _%slot98552%_ _%val98553%_)
        (let* ((_%klass98556%_ _%klass98550%_) (_%slot98564%_ _%slot98552%_))
          (if (__class-instance? _%klass98556%_ _%obj98551%_)
              (let ((_%off98573%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98551%_))
                      _%slot98564%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj98551%_
                 _%val98553%_
                 _%off98573%_
                 _%klass98556%_
                 _%slot98564%_))
              (not-an-instance__0 _%obj98551%_ _%klass98556%_)))))
    (define unchecked-field-ref
      (lambda (_%obj98547%_ _%off98548%_)
        (let ((__tmp101665
               (let () (declare (not safe)) (##structure-type _%obj98547%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj98547%_
           _%off98548%_
           __tmp101665
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj98543%_ _%off98544%_ _%val98545%_)
        (let ((__tmp101666
               (let () (declare (not safe)) (##structure-type _%obj98543%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj98543%_
           _%val98545%_
           _%off98544%_
           __tmp101666
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj98540%_ _%slot98541%_)
        (unchecked-field-ref
         _%obj98540%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98540%_))
          _%slot98541%_))))
    (define unchecked-slot-set!
      (lambda (_%obj98536%_ _%slot98537%_ _%val98538%_)
        (unchecked-field-set!
         _%obj98536%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98536%_))
          _%slot98537%_)
         _%val98538%_)))
    (define slot-ref__%
      (lambda (_%obj98498%_ _%slot98499%_ _%E98500%_)
        (if (symbol? _%slot98499%_)
            (let ((_%slot98504%_ _%slot98499%_))
              (if (procedure? _%E98500%_)
                  (let ((_%E98514%_ _%E98500%_))
                    (__slot-ref__% _%obj98498%_ _%slot98504%_ _%E98514%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E98500%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot98499%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj98527%_ _%slot98528%_)
        (let ((_%E98530%_ __slot-error))
          (slot-ref__% _%obj98527%_ _%slot98528%_ _%E98530%_))))
    (define slot-ref
      (lambda _g101668_
        (let ((_g101667_ (let () (declare (not safe)) (##length _g101668_))))
          (cond ((let () (declare (not safe)) (##fx= _g101667_ 2))
                 (apply slot-ref__0 _g101668_))
                ((let () (declare (not safe)) (##fx= _g101667_ 3))
                 (apply slot-ref__% _g101668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g101668_))))))
    (define __slot-ref__%
      (lambda (_%obj98454%_ _%slot98455%_ _%E98456%_)
        (let* ((_%slot98459%_ _%slot98455%_)
               (_%E98467%_ _%E98456%_)
               (_%klass98476%_ (class-of _%obj98454%_))
               (_%$e98479%_
                (__class-slot-offset _%klass98476%_ _%slot98459%_)))
          (if _%$e98479%_
              ((lambda (_%off98482%_)
                 (unchecked-field-ref _%obj98454%_ _%off98482%_))
               _%$e98479%_)
              (let ()
                (declare (not safe))
                (_%E98467%_ _%obj98454%_ _%slot98459%_))))))
    (define __slot-ref__0
      (lambda (_%obj98488%_ _%slot98489%_)
        (let ((_%E98491%_ __slot-error))
          (__slot-ref__% _%obj98488%_ _%slot98489%_ _%E98491%_))))
    (define __slot-ref
      (lambda _g101670_
        (let ((_g101669_ (let () (declare (not safe)) (##length _g101670_))))
          (cond ((let () (declare (not safe)) (##fx= _g101669_ 2))
                 (apply __slot-ref__0 _g101670_))
                ((let () (declare (not safe)) (##fx= _g101669_ 3))
                 (apply __slot-ref__% _g101670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g101670_))))))
    (define slot-set!__%
      (lambda (_%obj98412%_ _%slot98413%_ _%val98414%_ _%E98415%_)
        (if (symbol? _%slot98413%_)
            (let ((_%slot98419%_ _%slot98413%_))
              (if (procedure? _%E98415%_)
                  (let ((_%E98429%_ _%E98415%_))
                    (__slot-set!__%
                     _%obj98412%_
                     _%slot98419%_
                     _%val98414%_
                     _%E98429%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E98415%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot98413%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj98442%_ _%slot98443%_ _%val98444%_)
        (let ((_%E98446%_ __slot-error))
          (slot-set!__% _%obj98442%_ _%slot98443%_ _%val98444%_ _%E98446%_))))
    (define slot-set!
      (lambda _g101672_
        (let ((_g101671_ (let () (declare (not safe)) (##length _g101672_))))
          (cond ((let () (declare (not safe)) (##fx= _g101671_ 3))
                 (apply slot-set!__0 _g101672_))
                ((let () (declare (not safe)) (##fx= _g101671_ 4))
                 (apply slot-set!__% _g101672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g101672_))))))
    (define __slot-set!__%
      (lambda (_%obj98365%_ _%slot98366%_ _%val98367%_ _%E98368%_)
        (let* ((_%slot98371%_ _%slot98366%_)
               (_%E98379%_ _%E98368%_)
               (_%klass98388%_ (class-of _%obj98365%_))
               (_%$e98391%_
                (__class-slot-offset _%klass98388%_ _%slot98371%_)))
          (if _%$e98391%_
              ((lambda (_%off98394%_)
                 (unchecked-field-set! _%obj98365%_ _%off98394%_ _%val98367%_))
               _%$e98391%_)
              (let ()
                (declare (not safe))
                (_%E98379%_ _%obj98365%_ _%slot98371%_))))))
    (define __slot-set!__0
      (lambda (_%obj98400%_ _%slot98401%_ _%val98402%_)
        (let ((_%E98404%_ __slot-error))
          (__slot-set!__%
           _%obj98400%_
           _%slot98401%_
           _%val98402%_
           _%E98404%_))))
    (define __slot-set!
      (lambda _g101674_
        (let ((_g101673_ (let () (declare (not safe)) (##length _g101674_))))
          (cond ((let () (declare (not safe)) (##fx= _g101673_ 3))
                 (apply __slot-set!__0 _g101674_))
                ((let () (declare (not safe)) (##fx= _g101673_ 4))
                 (apply __slot-set!__% _g101674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g101674_))))))
    (define __slot-error
      (lambda (_%obj98361%_ _%slot98362%_)
        (error '"Cannot find slot"
               'object:
               _%obj98361%_
               'slot:
               _%slot98362%_)))
    (define subclass?
      (lambda (_%maybe-sub-class98336%_ _%maybe-super-class98337%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class98336%_ 'class))
            (let ((_%maybe-sub-class98341%_ _%maybe-sub-class98336%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class98337%_
                     'class))
                  (let ((_%maybe-super-class98351%_
                         _%maybe-super-class98337%_))
                    (__subclass?
                     _%maybe-sub-class98341%_
                     _%maybe-super-class98351%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class98337%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class98336%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class98308%_ _%maybe-super-class98309%_)
        (let* ((_%maybe-sub-class98312%_ _%maybe-sub-class98308%_)
               (_%maybe-super-class98320%_ _%maybe-super-class98309%_)
               (_%maybe-super-class-id98329%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class98320%_)))
               (_%$e98331%_
                (eq? _%maybe-super-class-id98329%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class98312%_)))))
          (if _%$e98331%_
              _%$e98331%_
              (let ((__tmp101676
                     (lambda (_%super-class98334%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class98334%_))
                            _%maybe-super-class-id98329%_)))
                    (__tmp101675
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class98312%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp101676 __tmp101675))))))
    (define object?
      (lambda (_%o98305%_)
        (if (let () (declare (not safe)) (##structure? _%o98305%_))
            (let ((__tmp101677
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98305%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp101677 'class))
            '#f)))
    (define object-type
      (lambda (_%o98300%_)
        (if (let () (declare (not safe)) (##structure? _%o98300%_))
            (let ((_%klass98303%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98300%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass98303%_ 'class))
                  _%klass98303%_
                  (begin
                    (error '"not an object" _%o98300%_ _%klass98303%_)
                    '#!void)))
            (begin (error '"not an object" _%o98300%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass98285%_ _%obj98286%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98285%_ 'class))
            (let ((_%klass98290%_ _%klass98285%_))
              (__direct-instance? _%klass98290%_ _%obj98286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass98285%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass98272%_ _%obj98273%_)
        (let* ((_%klass98276%_ _%klass98272%_)
               (__tmp101678
                (let () (declare (not safe)) (##type-id _%klass98276%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj98273%_ __tmp101678))))
    (define immediate-instance-of?
      (lambda (_%klass98268%_ _%obj98269%_)
        (if (let () (declare (not safe)) (##structure? _%obj98269%_))
            (eq? _%klass98268%_
                 (let () (declare (not safe)) (##structure-type _%obj98269%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass98253%_ _%obj98254%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98253%_ 'class))
            (let ((_%klass98258%_ _%klass98253%_))
              (__struct-instance? _%klass98258%_ _%obj98254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass98253%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass98240%_ _%obj98241%_)
        (let* ((_%klass98244%_ _%klass98240%_)
               (__tmp101679
                (let () (declare (not safe)) (##type-id _%klass98244%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj98241%_ __tmp101679))))
    (define class-instance?
      (lambda (_%klass98225%_ _%obj98226%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98225%_ 'class))
            (let ((_%klass98230%_ _%klass98225%_))
              (__class-instance? _%klass98230%_ _%obj98226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass98225%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass98210%_ _%obj98211%_)
        (let* ((_%klass98214%_ _%klass98210%_)
               (_%type98223%_ (class-of _%obj98211%_)))
          (__subclass? _%type98223%_ _%klass98214%_))))
    (define make-object
      (lambda (_%klass98185%_ _%k98186%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98185%_ 'class))
            (let ((_%klass98190%_ _%klass98185%_))
              (if (fixnum? _%k98186%_)
                  (let ((_%k98200%_ _%k98186%_))
                    (__make-object _%klass98190%_ _%k98200%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k98186%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass98185%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass98162%_ _%k98163%_)
        (let* ((_%klass98166%_ _%klass98162%_) (_%k98174%_ _%k98163%_))
          (if (__class-type-system? _%klass98166%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass98166%_)
                '#!void)
              (let ((_%obj98183%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass98166%_ _%k98174%_))))
                (object-fill! _%obj98183%_ '#f))))))
    (define object-fill!
      (lambda (_%obj98147%_ _%fill98148%_)
        (if '#t
            (let ((_%obj98152%_ _%obj98147%_))
              (__object-fill! _%obj98152%_ _%fill98148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj98147%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj98129%_ _%fill98130%_)
        (let ((_%obj98133%_ _%obj98129%_))
          (let _%loop98142%_ ((_%i98144%_
                               (let ((__tmp101680
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj98133%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101680 '1))))
            (if (let () (declare (not safe)) (##fx> _%i98144%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj98133%_
                     _%fill98130%_
                     _%i98144%_
                     '#f
                     '#f))
                  (_%loop98142%_
                   (let () (declare (not safe)) (##fx- _%i98144%_ '1))))
                _%obj98133%_)))))
    (define new-instance
      (lambda (_%klass98115%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98115%_ 'class))
            (let ((_%klass98119%_ _%klass98115%_))
              (__new-instance _%klass98119%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass98115%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass98103%_)
        (let* ((_%klass98106%_ _%klass98103%_)
               (__obj101595
                (let ((__tmp101681
                       (let ((__tmp101682
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass98106%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp101682))))
                  (declare (not safe))
                  (##make-structure _%klass98106%_ __tmp101681))))
          (object-fill! __obj101595 '#f)
          __obj101595)))
    (define make-instance
      (lambda (_%klass98088%_ . _%args98089%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98088%_ 'class))
            (let ((_%klass98093%_ _%klass98088%_))
              (declare (not safe))
              (##apply __make-instance _%klass98093%_ _%args98089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass98088%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98060%_ . _%args98061%_)
        (let* ((_%klass98064%_ _%klass98060%_)
               (_%$e98073%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98064%_ '10 '#f '#f))))
          (if _%$e98073%_
              ((lambda (_%kons-id98076%_)
                 (let ((_%obj98078%_ (__new-instance _%klass98064%_)))
                   (___constructor-init!
                    _%klass98064%_
                    _%kons-id98076%_
                    _%obj98078%_
                    _%args98061%_)
                   _%obj98078%_))
               _%$e98073%_)
              (if (__class-type-metaclass? _%klass98064%_)
                  (let ((_%obj98081%_ (__new-instance _%klass98064%_)))
                    (__metaclass-instance-init!
                     _%klass98064%_
                     _%obj98081%_
                     _%args98061%_)
                    _%obj98081%_)
                  (if (__class-type-struct? _%klass98064%_)
                      (if (let ((__tmp101684
                                 (__class-type-field-count _%klass98064%_))
                                (__tmp101683
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98061%_))))
                            (declare (not safe))
                            (##fx= __tmp101684 __tmp101683))
                          (apply ##structure _%klass98064%_ _%args98061%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98064%_
                                   'slots:
                                   (__class-type-slot-list _%klass98064%_)
                                   'args:
                                   _%args98061%_)
                            '#!void))
                      (let ((_%obj98084%_ (__new-instance _%klass98064%_)))
                        (___class-instance-init!
                         _%klass98064%_
                         _%obj98084%_
                         _%args98061%_)
                        _%obj98084%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98045%_ . _%args98046%_)
        (if '#t
            (let ((_%obj98050%_ _%obj98045%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98050%_ _%args98046%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98045%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98032%_ . _%args98033%_)
        (let ((_%obj98036%_ _%obj98032%_))
          (if (let ((__tmp101686
                     (let () (declare (not safe)) (##length _%args98033%_)))
                    (__tmp101685
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98036%_))))
                (declare (not safe))
                (##fx< __tmp101686 __tmp101685))
              (___struct-instance-init! _%obj98036%_ _%args98033%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98036%_
                     'args:
                     _%args98033%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj97991%_ _%args97992%_)
        (let _%lp97994%_ ((_%k97996%_ '1) (_%rest97997%_ _%args97992%_))
          (let* ((_%rest9799898006%_ _%rest97997%_)
                 (_%else9800098014%_ (lambda () _%obj97991%_))
                 (_%K9800298020%_
                  (lambda (_%rest98017%_ _%hd98018%_)
                    (unchecked-field-set! _%obj97991%_ _%k97996%_ _%hd98018%_)
                    (_%lp97994%_
                     (let () (declare (not safe)) (##fx+ _%k97996%_ '1))
                     _%rest98017%_))))
            (if (pair? _%rest9799898006%_)
                (let ((_%hd9800398023%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9799898006%_)))
                      (_%tl9800498025%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9799898006%_))))
                  (let* ((_%hd98028%_ _%hd9800398023%_)
                         (_%rest98030%_ _%tl9800498025%_))
                    (_%K9800298020%_ _%rest98030%_ _%hd98028%_)))
                (_%else9800098014%_))))))
    (define class-instance-init!
      (lambda (_%obj97976%_ . _%args97977%_)
        (if '#t
            (let ((_%obj97981%_ _%obj97976%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj97981%_ _%args97977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj97976%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj97963%_ . _%args97964%_)
        (let ((_%obj97967%_ _%obj97963%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj97967%_))
           _%obj97967%_
           _%args97964%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass97905%_ _%obj97906%_ _%args97907%_)
        (let _%lp97909%_ ((_%rest97911%_ _%args97907%_))
          (let* ((_%rest9791297922%_ _%rest97911%_)
                 (_%else9791497930%_
                  (lambda ()
                    (if (null? _%rest97911%_)
                        _%obj97906%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass97905%_
                               'rest:
                               _%rest97911%_))))
                 (_%K9791697944%_
                  (lambda (_%rest97933%_ _%val97934%_ _%key97935%_)
                    (if (keyword? _%key97935%_)
                        (let ((_%$e97938%_
                               (__class-slot-offset
                                _%klass97905%_
                                _%key97935%_)))
                          (if _%$e97938%_
                              ((lambda (_%off97941%_)
                                 (unchecked-field-set!
                                  _%obj97906%_
                                  _%off97941%_
                                  _%val97934%_)
                                 (_%lp97909%_ _%rest97933%_))
                               _%$e97938%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass97905%_
                                     'slot:
                                     _%key97935%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key97935%_)))))
            (if (pair? _%rest9791297922%_)
                (let ((_%hd9791797947%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9791297922%_)))
                      (_%tl9791897949%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9791297922%_))))
                  (let ((_%key97952%_ _%hd9791797947%_))
                    (if (pair? _%tl9791897949%_)
                        (let ((_%hd9791997954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9791897949%_)))
                              (_%tl9792097956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9791897949%_))))
                          (let* ((_%val97959%_ _%hd9791997954%_)
                                 (_%rest97961%_ _%tl9792097956%_))
                            (_%K9791697944%_
                             _%rest97961%_
                             _%val97959%_
                             _%key97952%_)))
                        (_%else9791497930%_))))
                (_%else9791497930%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass97901%_ _%obj97902%_ _%args97903%_)
        (apply call-method
               _%klass97901%_
               'instance-init!
               _%obj97902%_
               _%args97903%_)))
    (define constructor-init!
      (lambda (_%klass97864%_ _%kons-id97865%_ _%obj97866%_ . _%args97867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97864%_ 'class))
            (let ((_%klass97871%_ _%klass97864%_))
              (if (symbol? _%kons-id97865%_)
                  (let ((_%kons-id97881%_ _%kons-id97865%_))
                    (if '#t
                        (let ((_%obj97891%_ _%obj97866%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass97871%_
                                   _%kons-id97881%_
                                   _%obj97891%_
                                   _%args97867%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj97866%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id97865%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass97864%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass97833%_ _%kons-id97834%_ _%obj97835%_ . _%args97836%_)
        (let* ((_%klass97839%_ _%klass97833%_)
               (_%kons-id97847%_ _%kons-id97834%_)
               (_%obj97855%_ _%obj97835%_))
          (___constructor-init!
           _%klass97839%_
           _%kons-id97847%_
           _%obj97855%_
           _%args97836%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass97822%_ _%kons-id97823%_ _%obj97824%_ _%args97825%_)
        (let ((_%$e97827%_
               (__find-method _%klass97822%_ _%obj97824%_ _%kons-id97823%_)))
          (if _%$e97827%_
              ((lambda (_%kons97830%_)
                 (apply _%kons97830%_ _%obj97824%_ _%args97825%_)
                 _%obj97824%_)
               _%$e97827%_)
              (error '"missing constructor"
                     'class:
                     _%klass97822%_
                     'method:
                     _%kons-id97823%_)))))
    (define struct-copy
      (lambda (_%struct97808%_)
        (if '#t
            (let ((_%struct97812%_ _%struct97808%_))
              (__struct-copy _%struct97812%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct97808%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct97796%_)
        (let ((_%struct97799%_ _%struct97796%_))
          (declare (not safe))
          (##structure-copy _%struct97799%_))))
    (define struct->list
      (lambda (_%obj97782%_)
        (if '#t
            (let ((_%obj97786%_ _%obj97782%_)) (__struct->list _%obj97786%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj97782%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj97770%_)
        (let ((_%obj97773%_ _%obj97770%_))
          (declare (not safe))
          (##vector->list _%obj97773%_))))
    (define class->list
      (lambda (_%obj97756%_)
        (if '#t
            (let ((_%obj97760%_ _%obj97756%_)) (__class->list _%obj97760%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj97756%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj97732%_)
        (let* ((_%obj97735%_ _%obj97732%_)
               (_%klass97744%_
                (let () (declare (not safe)) (##structure-type _%obj97735%_)))
               (_%slot-vector97746%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97744%_ '7 '#f '#f))))
          (let _%loop97748%_ ((_%index97750%_
                               (let ((__tmp101687
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector97746%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101687 '1)))
                              (_%plist97751%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index97750%_ '1))
                (cons _%klass97744%_ _%plist97751%_)
                (let ((_%slot97754%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector97746%_ _%index97750%_))))
                  (_%loop97748%_
                   (let () (declare (not safe)) (##fx- _%index97750%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot97754%_))
                         (cons (unchecked-field-ref
                                _%obj97735%_
                                _%index97750%_)
                               _%plist97751%_)))))))))
    (define call-method
      (lambda (_%obj97716%_ _%id97717%_ . _%args97718%_)
        (if (symbol? _%id97717%_)
            (let ((_%id97722%_ _%id97717%_))
              (declare (not safe))
              (##apply __call-method _%obj97716%_ _%id97722%_ _%args97718%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id97717%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj97685%_ _%id97686%_ . _%args97687%_)
        (let* ((_%id97690%_ _%id97686%_)
               (_%$e97699%_ (__method-ref _%obj97685%_ _%id97690%_)))
          (if _%$e97699%_
              ((lambda (_%method97702%_)
                 (let ((_%method97704%_ _%method97702%_))
                   (apply _%method97704%_ _%obj97685%_ _%args97687%_)))
               _%$e97699%_)
              (error '"cannot find method"
                     'object:
                     _%obj97685%_
                     'method:
                     _%id97690%_)))))
    (define method-ref
      (lambda (_%obj97670%_ _%id97671%_)
        (if (symbol? _%id97671%_)
            (let ((_%id97675%_ _%id97671%_))
              (__method-ref _%obj97670%_ _%id97675%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id97671%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj97657%_ _%id97658%_)
        (let ((_%id97661%_ _%id97658%_))
          (__find-method (class-of _%obj97657%_) _%obj97657%_ _%id97661%_))))
    (define checked-method-ref
      (lambda (_%obj97650%_ _%id97651%_)
        (let ((_%$e97654%_ (method-ref _%obj97650%_ _%id97651%_)))
          (if _%$e97654%_
              _%$e97654%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj97650%_
                       'method:
                       _%id97651%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj97635%_ _%id97636%_)
        (if (symbol? _%id97636%_)
            (let ((_%id97640%_ _%id97636%_))
              (__bound-method-ref _%obj97635%_ _%id97640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id97636%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj97603%_ _%id97604%_)
        (let* ((_%id97607%_ _%id97604%_)
               (_%$e97616%_ (__method-ref _%obj97603%_ _%id97607%_)))
          (if _%$e97616%_
              ((lambda (_%method97619%_)
                 (let ((_%method97621%_ _%method97619%_))
                   (lambda _%args97632%_
                     (apply _%method97621%_ _%obj97603%_ _%args97632%_))))
               _%$e97616%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj97588%_ _%id97589%_)
        (if (symbol? _%id97589%_)
            (let ((_%id97593%_ _%id97589%_))
              (__checked-bound-method-ref _%obj97588%_ _%id97593%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id97589%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj97571%_ _%id97572%_)
        (let* ((_%id97575%_ _%id97572%_)
               (_%method97584%_ (checked-method-ref _%obj97571%_ _%id97575%_)))
          (lambda _%args97586%_
            (apply _%method97584%_ _%obj97571%_ _%args97586%_)))))
    (define find-method
      (lambda (_%klass97545%_ _%obj97546%_ _%id97547%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97545%_ 'class))
            (let ((_%klass97551%_ _%klass97545%_))
              (if (symbol? _%id97547%_)
                  (let ((_%id97561%_ _%id97547%_))
                    (__find-method _%klass97551%_ _%obj97546%_ _%id97561%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id97547%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass97545%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass97518%_ _%obj97519%_ _%id97520%_)
        (let* ((_%klass97523%_ _%klass97518%_)
               (_%id97531%_ _%id97520%_)
               (_%$e97540%_
                (__direct-method-ref _%klass97523%_ _%obj97519%_ _%id97531%_)))
          (if _%$e97540%_
              _%$e97540%_
              (if (__class-type-sealed? _%klass97523%_)
                  '#f
                  (__mixin-method-ref
                   _%klass97523%_
                   _%obj97519%_
                   _%id97531%_))))))
    (define mixin-find-method
      (lambda (_%mixins97502%_ _%obj97503%_ _%id97504%_)
        (if (symbol? _%id97504%_)
            (let ((_%id97508%_ _%id97504%_))
              (__mixin-find-method _%mixins97502%_ _%obj97503%_ _%id97508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id97504%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins97484%_ _%obj97485%_ _%id97486%_)
        (let* ((_%id97489%_ _%id97486%_)
               (__tmp101688
                (lambda (_%g9749797499%_)
                  (direct-method-ref
                   _%g9749797499%_
                   _%obj97485%_
                   _%id97489%_))))
          (declare (not safe))
          (__ormap1 __tmp101688 _%mixins97484%_))))
    (define direct-method-ref
      (lambda (_%klass97458%_ _%obj97459%_ _%id97460%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97458%_ 'class))
            (let ((_%klass97464%_ _%klass97458%_))
              (if (symbol? _%id97460%_)
                  (let ((_%id97474%_ _%id97460%_))
                    (__direct-method-ref
                     _%klass97464%_
                     _%obj97459%_
                     _%id97474%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id97460%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass97458%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass97412%_ _%obj97413%_ _%id97414%_)
        (let* ((_%klass97417%_ _%klass97412%_) (_%id97425%_ _%id97414%_))
          (letrec ((_%metaclass-resolve-method97434%_
                    (lambda ()
                      (let ((__method101596
                             (__method-ref _%klass97417%_ 'direct-method-ref)))
                        (if __method101596
                            (let ()
                              (declare (not safe))
                              (__method101596
                               _%klass97417%_
                               _%obj97413%_
                               _%id97425%_))
                            (begin
                              (error '"Missing method"
                                     _%klass97417%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!97435%_
                    (lambda ()
                      (let ((_%method97455%_
                             (_%metaclass-resolve-method97434%_)))
                        (let ((__tmp101690
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97417%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp101689
                               (if _%method97455%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp101690
                           _%id97425%_
                           __tmp101689))
                        _%method97455%_))))
            (let ((_%$e97437%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass97417%_ '11 '#f '#f))))
              (if _%$e97437%_
                  ((lambda (_%ht97440%_)
                     (let ((_%method97442%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht97440%_
                               _%id97425%_
                               '#f))))
                       (if (procedure? _%method97442%_)
                           _%method97442%_
                           (if (__class-type-metaclass? _%klass97417%_)
                               (let ((_%$e97446%_ _%method97442%_))
                                 (if (eq? 'resolved _%$e97446%_)
                                     (_%metaclass-resolve-method97434%_)
                                     (if (eq? 'unknown _%$e97446%_)
                                         '#f
                                         (_%metaclass-resolve-method!97435%_))))
                               '#f))))
                   _%$e97437%_)
                  (if (__class-type-metaclass? _%klass97417%_)
                      (let ((_%tab97451%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97417%_
                           _%tab97451%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!97435%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass97386%_ _%obj97387%_ _%id97388%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97386%_ 'class))
            (let ((_%klass97392%_ _%klass97386%_))
              (if (symbol? _%id97388%_)
                  (let ((_%id97402%_ _%id97388%_))
                    (__mixin-method-ref
                     _%klass97392%_
                     _%obj97387%_
                     _%id97402%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id97388%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass97386%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass97364%_ _%obj97365%_ _%id97366%_)
        (let* ((_%klass97369%_ _%klass97364%_) (_%id97377%_ _%id97366%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass97369%_ '6 '#f '#f))
           _%obj97365%_
           _%id97377%_))))
    (define bind-method!__%
      (lambda (_%klass97323%_ _%id97324%_ _%proc97325%_ _%rebind?97326%_)
        (if (symbol? _%id97324%_)
            (let ((_%id97330%_ _%id97324%_))
              (if (procedure? _%proc97325%_)
                  (let ((_%proc97340%_ _%proc97325%_))
                    (__bind-method!__%
                     _%klass97323%_
                     _%id97330%_
                     _%proc97340%_
                     _%rebind?97326%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc97325%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id97324%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass97353%_ _%id97354%_ _%proc97355%_)
        (let ((_%rebind?97357%_ '#f))
          (bind-method!__%
           _%klass97353%_
           _%id97354%_
           _%proc97355%_
           _%rebind?97357%_))))
    (define bind-method!
      (lambda _g101692_
        (let ((_g101691_ (let () (declare (not safe)) (##length _g101692_))))
          (cond ((let () (declare (not safe)) (##fx= _g101691_ 3))
                 (apply bind-method!__0 _g101692_))
                ((let () (declare (not safe)) (##fx= _g101691_ 4))
                 (apply bind-method!__% _g101692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g101692_))))))
    (define __bind-method!__%
      (lambda (_%klass97274%_ _%id97275%_ _%proc97276%_ _%rebind?97277%_)
        (let* ((_%id97280%_ _%id97275%_) (_%proc97288%_ _%proc97276%_))
          (letrec ((_%bind!97297%_
                    (lambda (_%ht97306%_)
                      (if (and (not _%rebind?97277%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht97306%_
                                  _%id97280%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass97274%_
                                 'method:
                                 _%id97280%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht97306%_
                               _%id97280%_
                               _%proc97288%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass97274%_ 'class))
                (let ((_%ht97300%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97274%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht97300%_
                      (_%bind!97297%_ _%ht97300%_)
                      (let ((_%ht97302%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97274%_
                           _%ht97302%_
                           '11
                           '#f
                           '#f))
                        (_%bind!97297%_ _%ht97302%_))))
                (if (let () (declare (not safe)) (##type? _%klass97274%_))
                    (__bind-method!__%
                     (__shadow-class _%klass97274%_)
                     _%id97280%_
                     _%proc97288%_
                     _%rebind?97277%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass97274%_)))))))
    (define __bind-method!__0
      (lambda (_%klass97311%_ _%id97312%_ _%proc97313%_)
        (let ((_%rebind?97315%_ '#f))
          (__bind-method!__%
           _%klass97311%_
           _%id97312%_
           _%proc97313%_
           _%rebind?97315%_))))
    (define __bind-method!
      (lambda _g101694_
        (let ((_g101693_ (let () (declare (not safe)) (##length _g101694_))))
          (cond ((let () (declare (not safe)) (##fx= _g101693_ 3))
                 (apply __bind-method!__0 _g101694_))
                ((let () (declare (not safe)) (##fx= _g101693_ 4))
                 (apply __bind-method!__% _g101694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g101694_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint97254%_ _%seed97256%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97254%_
           procedure-hash
           eq?
           _%seed97256%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97262%_ '#f) (_%seed97264%_ '0))
          (make-method-specializer-table__%
           _%size-hint97262%_
           _%seed97264%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint97266%_)
        (let ((_%seed97268%_ '0))
          (make-method-specializer-table__%
           _%size-hint97266%_
           _%seed97268%_))))
    (define make-method-specializer-table
      (lambda _g101696_
        (let ((_g101695_ (let () (declare (not safe)) (##length _g101696_))))
          (cond ((let () (declare (not safe)) (##fx= _g101695_ 0))
                 (apply make-method-specializer-table__0 _g101696_))
                ((let () (declare (not safe)) (##fx= _g101695_ 1))
                 (apply make-method-specializer-table__1 _g101696_))
                ((let () (declare (not safe)) (##fx= _g101695_ 2))
                 (apply make-method-specializer-table__% _g101696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g101696_))))))
    (define method-specializer-table-ref
      (lambda (_%tab97207%_ _%key97208%_ _%default97209%_)
        (let ((_%table97211%_
               (let () (declare (not safe)) (&raw-table-table _%tab97207%_)))
              (_%seed97212%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97207%_))))
          (let* ((_%h97214%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97208%_))
                         _%seed97212%_))
                 (_%size97217%_ (vector-length _%table97211%_))
                 (_%entries97220%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97217%_ '2)))
                 (_%start97223%_
                  (let ((__tmp101697
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97214%_ _%entries97220%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101697 '1))))
            (let _%loop97227%_ ((_%probe97230%_ _%start97223%_)
                                (_%i97232%_ '1)
                                (_%deleted97234%_ '#f))
              (let ((_%k97237%_ (vector-ref _%table97211%_ _%probe97230%_)))
                (if (eq? _%k97237%_ (macro-unused-obj))
                    _%default97209%_
                    (if (eq? _%k97237%_ (macro-deleted-obj))
                        (_%loop97227%_
                         (let ((_%next-probe97242%_
                                (fx+ _%start97223%_
                                     _%i97232%_
                                     (fx* _%i97232%_ _%i97232%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97242%_ _%size97217%_))
                         (let () (declare (not safe)) (##fx+ _%i97232%_ '1))
                         (let ((_%$e97245%_ _%deleted97234%_))
                           (if _%$e97245%_ _%$e97245%_ _%probe97230%_)))
                        (if (eq? _%key97208%_ _%k97237%_)
                            (vector-ref
                             _%table97211%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97230%_ '1)))
                            (_%loop97227%_
                             (let ((_%next-probe97250%_
                                    (fx+ _%start97223%_
                                         _%i97232%_
                                         (fx* _%i97232%_ _%i97232%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97250%_ _%size97217%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97232%_ '1))
                             _%deleted97234%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab97203%_ _%key97204%_ _%value97205%_)
        (if (let ((__tmp101700
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97203%_)))
                  (__tmp101698
                   (let ((__tmp101699
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97203%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101699 '4))))
              (declare (not safe))
              (##fx< __tmp101700 __tmp101698))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97203%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab97203%_
         _%key97204%_
         _%value97205%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab97154%_ _%key97155%_ _%value97156%_)
        (let ((_%table97159%_
               (let () (declare (not safe)) (&raw-table-table _%tab97154%_)))
              (_%seed97160%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97154%_))))
          (let* ((_%h97162%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97155%_))
                         _%seed97160%_))
                 (_%size97165%_ (vector-length _%table97159%_))
                 (_%entries97168%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97165%_ '2)))
                 (_%start97171%_
                  (let ((__tmp101701
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97162%_ _%entries97168%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101701 '1))))
            (let _%loop97175%_ ((_%probe97178%_ _%start97171%_)
                                (_%i97180%_ '1)
                                (_%deleted97182%_ '#f))
              (let ((_%k97185%_ (vector-ref _%table97159%_ _%probe97178%_)))
                (if (eq? _%k97185%_ (macro-unused-obj))
                    (if _%deleted97182%_
                        (begin
                          (vector-set!
                           _%table97159%_
                           _%deleted97182%_
                           _%key97155%_)
                          (vector-set!
                           _%table97159%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97182%_ '1))
                           _%value97156%_)
                          ((lambda ()
                             (let ((__tmp101702
                                    (let ((__tmp101703
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97154%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101703 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97154%_
                                __tmp101702)))))
                        (begin
                          (vector-set!
                           _%table97159%_
                           _%probe97178%_
                           _%key97155%_)
                          (vector-set!
                           _%table97159%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97178%_ '1))
                           _%value97156%_)
                          ((lambda ()
                             (let ((__tmp101704
                                    (let ((__tmp101705
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97154%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101705 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97154%_ __tmp101704))
                             (let ((__tmp101706
                                    (let ((__tmp101707
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97154%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101707 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97154%_
                                __tmp101706))))))
                    (if (eq? _%k97185%_ (macro-deleted-obj))
                        (_%loop97175%_
                         (let ((_%next-probe97192%_
                                (fx+ _%start97171%_
                                     _%i97180%_
                                     (fx* _%i97180%_ _%i97180%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97192%_ _%size97165%_))
                         (let () (declare (not safe)) (##fx+ _%i97180%_ '1))
                         (let ((_%$e97195%_ _%deleted97182%_))
                           (if _%$e97195%_ _%$e97195%_ _%probe97178%_)))
                        (if (eq? _%key97155%_ _%k97185%_)
                            (let ()
                              (vector-set!
                               _%table97159%_
                               _%probe97178%_
                               _%key97155%_)
                              (vector-set!
                               _%table97159%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97178%_ '1))
                               _%value97156%_))
                            (_%loop97175%_
                             (let ((_%next-probe97200%_
                                    (fx+ _%start97171%_
                                         _%i97180%_
                                         (fx* _%i97180%_ _%i97180%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97200%_ _%size97165%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97180%_ '1))
                             _%deleted97182%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab97149%_
               _%key97150%_
               _%method-specializer-table-update!97151%_
               _%default97152%_)
        (if (let ((__tmp101710
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97149%_)))
                  (__tmp101708
                   (let ((__tmp101709
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97149%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101709 '4))))
              (declare (not safe))
              (##fx< __tmp101710 __tmp101708))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97149%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab97149%_
         _%key97150%_
         _%method-specializer-table-update!97151%_
         _%default97152%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab97099%_
               _%key97100%_
               _%method-specializer-table-update!97101%_
               _%default97102%_)
        (let ((_%table97105%_
               (let () (declare (not safe)) (&raw-table-table _%tab97099%_)))
              (_%seed97106%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97099%_))))
          (let* ((_%h97108%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97100%_))
                         _%seed97106%_))
                 (_%size97111%_ (vector-length _%table97105%_))
                 (_%entries97114%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97111%_ '2)))
                 (_%start97117%_
                  (let ((__tmp101711
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97108%_ _%entries97114%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101711 '1))))
            (let _%loop97121%_ ((_%probe97124%_ _%start97117%_)
                                (_%i97126%_ '1)
                                (_%deleted97128%_ '#f))
              (let ((_%k97131%_ (vector-ref _%table97105%_ _%probe97124%_)))
                (if (eq? _%k97131%_ (macro-unused-obj))
                    (if _%deleted97128%_
                        (begin
                          (vector-set!
                           _%table97105%_
                           _%deleted97128%_
                           _%key97100%_)
                          (vector-set!
                           _%table97105%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97128%_ '1))
                           (_%method-specializer-table-update!97101%_
                            _%default97102%_))
                          ((lambda ()
                             (let ((__tmp101712
                                    (let ((__tmp101713
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97099%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101713 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97099%_
                                __tmp101712)))))
                        (begin
                          (vector-set!
                           _%table97105%_
                           _%probe97124%_
                           _%key97100%_)
                          (vector-set!
                           _%table97105%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97124%_ '1))
                           (_%method-specializer-table-update!97101%_
                            _%default97102%_))
                          ((lambda ()
                             (let ((__tmp101714
                                    (let ((__tmp101715
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97099%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101715 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97099%_ __tmp101714))
                             (let ((__tmp101716
                                    (let ((__tmp101717
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97099%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101717 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97099%_
                                __tmp101716))))))
                    (if (eq? _%k97131%_ (macro-deleted-obj))
                        (_%loop97121%_
                         (let ((_%next-probe97138%_
                                (fx+ _%start97117%_
                                     _%i97126%_
                                     (fx* _%i97126%_ _%i97126%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97138%_ _%size97111%_))
                         (let () (declare (not safe)) (##fx+ _%i97126%_ '1))
                         (let ((_%$e97141%_ _%deleted97128%_))
                           (if _%$e97141%_ _%$e97141%_ _%probe97124%_)))
                        (if (eq? _%key97100%_ _%k97131%_)
                            (let ()
                              (vector-set!
                               _%table97105%_
                               _%probe97124%_
                               _%key97100%_)
                              (vector-set!
                               _%table97105%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97124%_ '1))
                               (_%method-specializer-table-update!97101%_
                                (vector-ref
                                 _%table97105%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97124%_ '1))))))
                            (_%loop97121%_
                             (let ((_%next-probe97146%_
                                    (fx+ _%start97117%_
                                         _%i97126%_
                                         (fx* _%i97126%_ _%i97126%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97146%_ _%size97111%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97126%_ '1))
                             _%deleted97128%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97054%_ _%key97056%_)
        (let ((_%table97059%_
               (let () (declare (not safe)) (&raw-table-table _%tab97054%_)))
              (_%seed97061%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97054%_))))
          (let* ((_%h97064%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97056%_))
                         _%seed97061%_))
                 (_%size97067%_ (vector-length _%table97059%_))
                 (_%entries97070%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97067%_ '2)))
                 (_%start97073%_
                  (let ((__tmp101718
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97064%_ _%entries97070%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101718 '1))))
            (let _%loop97077%_ ((_%probe97080%_ _%start97073%_)
                                (_%i97082%_ '1))
              (let ((_%k97085%_ (vector-ref _%table97059%_ _%probe97080%_)))
                (if (eq? _%k97085%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97085%_ (macro-deleted-obj))
                        (_%loop97077%_
                         (let ((_%next-probe97090%_
                                (fx+ _%start97073%_
                                     _%i97082%_
                                     (fx* _%i97082%_ _%i97082%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97090%_ _%size97067%_))
                         (let () (declare (not safe)) (##fx+ _%i97082%_ '1)))
                        (if (eq? _%key97056%_ _%k97085%_)
                            (let ()
                              (vector-set!
                               _%table97059%_
                               _%probe97080%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97059%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97080%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101719
                                        (let ((__tmp101720
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97054%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101720 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97054%_
                                    __tmp101719)))))
                            (_%loop97077%_
                             (let ((_%next-probe97096%_
                                    (fx+ _%start97073%_
                                         _%i97082%_
                                         (fx* _%i97082%_ _%i97082%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97096%_ _%size97067%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97082%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97045%_ _%specializer97046%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97050%_ ()
            (if (let ((__tmp101721
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101721 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97050%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97045%_
         _%specializer97046%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97035%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97039%_ ()
            (if (let ((__tmp101722
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101722 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97039%_)))))
        (let ((_%specializer97043%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97035%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97043%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97033%_)
        (let ((__tmp101723
               (let () (declare (not safe)) (##type-id _%klass97033%_))))
          (declare (not safe))
          (symbolic-hash __tmp101723))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97014%_ _%seed97016%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97014%_
           __class-specializer-hash-key
           eq?
           _%seed97016%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97022%_ '#f) (_%seed97024%_ '0))
          (make-class-specializer-table__% _%size-hint97022%_ _%seed97024%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97026%_)
        (let ((_%seed97028%_ '0))
          (make-class-specializer-table__% _%size-hint97026%_ _%seed97028%_))))
    (define make-class-specializer-table
      (lambda _g101725_
        (let ((_g101724_ (let () (declare (not safe)) (##length _g101725_))))
          (cond ((let () (declare (not safe)) (##fx= _g101724_ 0))
                 (apply make-class-specializer-table__0 _g101725_))
                ((let () (declare (not safe)) (##fx= _g101724_ 1))
                 (apply make-class-specializer-table__1 _g101725_))
                ((let () (declare (not safe)) (##fx= _g101724_ 2))
                 (apply make-class-specializer-table__% _g101725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g101725_))))))
    (define class-specializer-table-ref
      (lambda (_%tab96967%_ _%key96968%_ _%default96969%_)
        (let ((_%table96971%_
               (let () (declare (not safe)) (&raw-table-table _%tab96967%_)))
              (_%seed96972%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96967%_))))
          (let* ((_%h96974%_
                  (fxxor (__class-specializer-hash-key _%key96968%_)
                         _%seed96972%_))
                 (_%size96977%_ (vector-length _%table96971%_))
                 (_%entries96980%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96977%_ '2)))
                 (_%start96983%_
                  (let ((__tmp101726
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96974%_ _%entries96980%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101726 '1))))
            (let _%loop96987%_ ((_%probe96990%_ _%start96983%_)
                                (_%i96992%_ '1)
                                (_%deleted96994%_ '#f))
              (let ((_%k96997%_ (vector-ref _%table96971%_ _%probe96990%_)))
                (if (eq? _%k96997%_ (macro-unused-obj))
                    _%default96969%_
                    (if (eq? _%k96997%_ (macro-deleted-obj))
                        (_%loop96987%_
                         (let ((_%next-probe97002%_
                                (fx+ _%start96983%_
                                     _%i96992%_
                                     (fx* _%i96992%_ _%i96992%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97002%_ _%size96977%_))
                         (let () (declare (not safe)) (##fx+ _%i96992%_ '1))
                         (let ((_%$e97005%_ _%deleted96994%_))
                           (if _%$e97005%_ _%$e97005%_ _%probe96990%_)))
                        (if (eq? _%key96968%_ _%k96997%_)
                            (vector-ref
                             _%table96971%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe96990%_ '1)))
                            (_%loop96987%_
                             (let ((_%next-probe97010%_
                                    (fx+ _%start96983%_
                                         _%i96992%_
                                         (fx* _%i96992%_ _%i96992%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97010%_ _%size96977%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96992%_ '1))
                             _%deleted96994%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab96963%_ _%key96964%_ _%value96965%_)
        (if (let ((__tmp101729
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96963%_)))
                  (__tmp101727
                   (let ((__tmp101728
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96963%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101728 '4))))
              (declare (not safe))
              (##fx< __tmp101729 __tmp101727))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96963%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab96963%_
         _%key96964%_
         _%value96965%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab96914%_ _%key96915%_ _%value96916%_)
        (let ((_%table96919%_
               (let () (declare (not safe)) (&raw-table-table _%tab96914%_)))
              (_%seed96920%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96914%_))))
          (let* ((_%h96922%_
                  (fxxor (__class-specializer-hash-key _%key96915%_)
                         _%seed96920%_))
                 (_%size96925%_ (vector-length _%table96919%_))
                 (_%entries96928%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96925%_ '2)))
                 (_%start96931%_
                  (let ((__tmp101730
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96922%_ _%entries96928%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101730 '1))))
            (let _%loop96935%_ ((_%probe96938%_ _%start96931%_)
                                (_%i96940%_ '1)
                                (_%deleted96942%_ '#f))
              (let ((_%k96945%_ (vector-ref _%table96919%_ _%probe96938%_)))
                (if (eq? _%k96945%_ (macro-unused-obj))
                    (if _%deleted96942%_
                        (begin
                          (vector-set!
                           _%table96919%_
                           _%deleted96942%_
                           _%key96915%_)
                          (vector-set!
                           _%table96919%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96942%_ '1))
                           _%value96916%_)
                          ((lambda ()
                             (let ((__tmp101731
                                    (let ((__tmp101732
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96914%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101732 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96914%_
                                __tmp101731)))))
                        (begin
                          (vector-set!
                           _%table96919%_
                           _%probe96938%_
                           _%key96915%_)
                          (vector-set!
                           _%table96919%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96938%_ '1))
                           _%value96916%_)
                          ((lambda ()
                             (let ((__tmp101733
                                    (let ((__tmp101734
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96914%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101734 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96914%_ __tmp101733))
                             (let ((__tmp101735
                                    (let ((__tmp101736
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96914%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101736 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96914%_
                                __tmp101735))))))
                    (if (eq? _%k96945%_ (macro-deleted-obj))
                        (_%loop96935%_
                         (let ((_%next-probe96952%_
                                (fx+ _%start96931%_
                                     _%i96940%_
                                     (fx* _%i96940%_ _%i96940%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96952%_ _%size96925%_))
                         (let () (declare (not safe)) (##fx+ _%i96940%_ '1))
                         (let ((_%$e96955%_ _%deleted96942%_))
                           (if _%$e96955%_ _%$e96955%_ _%probe96938%_)))
                        (if (eq? _%key96915%_ _%k96945%_)
                            (let ()
                              (vector-set!
                               _%table96919%_
                               _%probe96938%_
                               _%key96915%_)
                              (vector-set!
                               _%table96919%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96938%_ '1))
                               _%value96916%_))
                            (_%loop96935%_
                             (let ((_%next-probe96960%_
                                    (fx+ _%start96931%_
                                         _%i96940%_
                                         (fx* _%i96940%_ _%i96940%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96960%_ _%size96925%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96940%_ '1))
                             _%deleted96942%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab96909%_
               _%key96910%_
               _%class-specializer-table-update!96911%_
               _%default96912%_)
        (if (let ((__tmp101739
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96909%_)))
                  (__tmp101737
                   (let ((__tmp101738
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96909%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101738 '4))))
              (declare (not safe))
              (##fx< __tmp101739 __tmp101737))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96909%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab96909%_
         _%key96910%_
         _%class-specializer-table-update!96911%_
         _%default96912%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab96859%_
               _%key96860%_
               _%class-specializer-table-update!96861%_
               _%default96862%_)
        (let ((_%table96865%_
               (let () (declare (not safe)) (&raw-table-table _%tab96859%_)))
              (_%seed96866%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96859%_))))
          (let* ((_%h96868%_
                  (fxxor (__class-specializer-hash-key _%key96860%_)
                         _%seed96866%_))
                 (_%size96871%_ (vector-length _%table96865%_))
                 (_%entries96874%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96871%_ '2)))
                 (_%start96877%_
                  (let ((__tmp101740
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96868%_ _%entries96874%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101740 '1))))
            (let _%loop96881%_ ((_%probe96884%_ _%start96877%_)
                                (_%i96886%_ '1)
                                (_%deleted96888%_ '#f))
              (let ((_%k96891%_ (vector-ref _%table96865%_ _%probe96884%_)))
                (if (eq? _%k96891%_ (macro-unused-obj))
                    (if _%deleted96888%_
                        (begin
                          (vector-set!
                           _%table96865%_
                           _%deleted96888%_
                           _%key96860%_)
                          (vector-set!
                           _%table96865%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96888%_ '1))
                           (_%class-specializer-table-update!96861%_
                            _%default96862%_))
                          ((lambda ()
                             (let ((__tmp101741
                                    (let ((__tmp101742
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96859%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101742 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96859%_
                                __tmp101741)))))
                        (begin
                          (vector-set!
                           _%table96865%_
                           _%probe96884%_
                           _%key96860%_)
                          (vector-set!
                           _%table96865%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96884%_ '1))
                           (_%class-specializer-table-update!96861%_
                            _%default96862%_))
                          ((lambda ()
                             (let ((__tmp101743
                                    (let ((__tmp101744
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96859%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101744 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96859%_ __tmp101743))
                             (let ((__tmp101745
                                    (let ((__tmp101746
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96859%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101746 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96859%_
                                __tmp101745))))))
                    (if (eq? _%k96891%_ (macro-deleted-obj))
                        (_%loop96881%_
                         (let ((_%next-probe96898%_
                                (fx+ _%start96877%_
                                     _%i96886%_
                                     (fx* _%i96886%_ _%i96886%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96898%_ _%size96871%_))
                         (let () (declare (not safe)) (##fx+ _%i96886%_ '1))
                         (let ((_%$e96901%_ _%deleted96888%_))
                           (if _%$e96901%_ _%$e96901%_ _%probe96884%_)))
                        (if (eq? _%key96860%_ _%k96891%_)
                            (let ()
                              (vector-set!
                               _%table96865%_
                               _%probe96884%_
                               _%key96860%_)
                              (vector-set!
                               _%table96865%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96884%_ '1))
                               (_%class-specializer-table-update!96861%_
                                (vector-ref
                                 _%table96865%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe96884%_ '1))))))
                            (_%loop96881%_
                             (let ((_%next-probe96906%_
                                    (fx+ _%start96877%_
                                         _%i96886%_
                                         (fx* _%i96886%_ _%i96886%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96906%_ _%size96871%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96886%_ '1))
                             _%deleted96888%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab96814%_ _%key96816%_)
        (let ((_%table96819%_
               (let () (declare (not safe)) (&raw-table-table _%tab96814%_)))
              (_%seed96821%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96814%_))))
          (let* ((_%h96824%_
                  (fxxor (__class-specializer-hash-key _%key96816%_)
                         _%seed96821%_))
                 (_%size96827%_ (vector-length _%table96819%_))
                 (_%entries96830%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96827%_ '2)))
                 (_%start96833%_
                  (let ((__tmp101747
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96824%_ _%entries96830%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101747 '1))))
            (let _%loop96837%_ ((_%probe96840%_ _%start96833%_)
                                (_%i96842%_ '1))
              (let ((_%k96845%_ (vector-ref _%table96819%_ _%probe96840%_)))
                (if (eq? _%k96845%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96845%_ (macro-deleted-obj))
                        (_%loop96837%_
                         (let ((_%next-probe96850%_
                                (fx+ _%start96833%_
                                     _%i96842%_
                                     (fx* _%i96842%_ _%i96842%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96850%_ _%size96827%_))
                         (let () (declare (not safe)) (##fx+ _%i96842%_ '1)))
                        (if (eq? _%key96816%_ _%k96845%_)
                            (let ()
                              (vector-set!
                               _%table96819%_
                               _%probe96840%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96819%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96840%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101748
                                        (let ((__tmp101749
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab96814%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101749 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab96814%_
                                    __tmp101748)))))
                            (_%loop96837%_
                             (let ((_%next-probe96856%_
                                    (fx+ _%start96833%_
                                         _%i96842%_
                                         (fx* _%i96842%_ _%i96842%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96856%_ _%size96827%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96842%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass96800%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96800%_ 'class))
            (let ((_%klass96804%_ _%klass96800%_))
              (__specialize-class _%klass96804%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass96800%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass96782%_)
        (let* ((_%klass96785%_ _%klass96782%_)
               (_%$e96794%_ (__lookup-class-specializer _%klass96785%_)))
          (if _%$e96794%_
              _%$e96794%_
              (let ((_%method-table96798%_
                     (___specialize-class _%klass96785%_)))
                (__bind-class-specializer!
                 _%klass96785%_
                 _%method-table96798%_)
                _%method-table96798%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass96772%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96776%_ ()
            (if (let ((__tmp101750
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101750 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96776%_)))))
        (let ((_%method-table96780%_
               (class-specializer-table-ref
                __class-specializers
                _%klass96772%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table96780%_)))
    (define __bind-class-specializer!
      (lambda (_%klass96763%_ _%method-table96764%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96768%_ ()
            (if (let ((__tmp101751
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101751 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96768%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass96763%_
         _%method-table96764%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass96747%_
               _%method-table96748%_
               _%method96749%_
               _%proc96750%_)
        (let ((_%$e96752%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table96748%_
                  _%method96749%_
                  '#f))))
          (if _%$e96752%_
              _%$e96752%_
              (let ((_%$e96755%_ (__lookup-method-specializer _%proc96750%_)))
                (if _%$e96755%_
                    ((lambda (_%specialize96758%_)
                       (let ((_%specialized-proc96760%_
                              (_%specialize96758%_
                               _%klass96747%_
                               _%method-table96748%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table96748%_
                          _%method96749%_
                          _%specialized-proc96760%_)))
                     _%$e96755%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table96748%_
                       _%method96749%_
                       _%proc96750%_))))))))
    (define ___specialize-class
      (lambda (_%klass96689%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96689%_ 'class))
            (if (__class-type-metaclass? _%klass96689%_)
                (let ((__method101597
                       (__method-ref _%klass96689%_ 'specialize-class)))
                  (if __method101597
                      (let ()
                        (declare (not safe))
                        (__method101597 _%klass96689%_))
                      (begin
                        (error '"Missing method"
                               _%klass96689%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp101752
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass96689%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp101752))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass96689%_)
                    (let ((_%method-table96695%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop96697%_ ((_%rest96699%_
                                           (__class-precedence-list
                                            _%klass96689%_)))
                        (let* ((_%rest9670096708%_ _%rest96699%_)
                               (_%else9670296716%_
                                (lambda () _%method-table96695%_))
                               (_%K9670496735%_
                                (lambda (_%rest96719%_ _%xklass96720%_)
                                  (let ((_%xmethod-table9672196723%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass96720%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9672196723%_
                                        (let* ((_%xmethod-table96726%_
                                                _%xmethod-table9672196723%_)
                                               (__tmp101753
                                                (lambda (_%g9672796730%_
                                                         _%g9672896732%_)
                                                  (__specialize-method
                                                   _%klass96689%_
                                                   _%method-table96695%_
                                                   _%g9672796730%_
                                                   _%g9672896732%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table96726%_
                                           __tmp101753))
                                        '#f))
                                  (_%loop96697%_ _%rest96719%_))))
                          (if (pair? _%rest9670096708%_)
                              (let ((_%hd9670596738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9670096708%_)))
                                    (_%tl9670696740%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9670096708%_))))
                                (let* ((_%xklass96743%_ _%hd9670596738%_)
                                       (_%rest96745%_ _%tl9670696740%_))
                                  (_%K9670496735%_
                                   _%rest96745%_
                                   _%xklass96743%_)))
                              (_%else9670296716%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass96689%_))
                (__specialize-class (__shadow-class _%klass96689%_))
                (error '"bad class; cannot specialize" _%klass96689%_)))))
    (define seal-class!
      (lambda (_%klass96675%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96675%_ 'class))
            (let ((_%klass96679%_ _%klass96675%_))
              (__seal-class! _%klass96679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass96675%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass96658%_)
        (let ((_%klass96661%_ _%klass96658%_))
          (if (__class-type-sealed? _%klass96661%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass96661%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass96661%_))
                (if (__class-type-metaclass? _%klass96661%_)
                    (let ((__method101598
                           (__method-ref _%klass96661%_ 'seal-class!)))
                      (if __method101598
                          (let ()
                            (declare (not safe))
                            (__method101598 _%klass96661%_))
                          (begin
                            (error '"Missing method"
                                   _%klass96661%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp101754
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass96661%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp101754))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass96661%_)
                        (let ((_%method-table96673%_
                               (__specialize-class _%klass96661%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96661%_
                           _%method-table96673%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass96661%_))))))
    (define next-method
      (lambda (_%subklass96632%_ _%obj96633%_ _%id96634%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96632%_ 'class))
            (let ((_%subklass96638%_ _%subklass96632%_))
              (if (symbol? _%id96634%_)
                  (let ((_%id96648%_ _%id96634%_))
                    (__next-method _%subklass96638%_ _%obj96633%_ _%id96648%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id96634%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass96632%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass96569%_ _%obj96570%_ _%id96571%_)
        (let* ((_%subklass96574%_ _%subklass96569%_) (_%id96582%_ _%id96571%_))
          (letrec ((_%find-next-method96591%_
                    (lambda (_%klass96593%_)
                      (let _%lp96595%_ ((_%rest96597%_
                                         (class-precedence-list
                                          _%klass96593%_)))
                        (let* ((_%rest9659896606%_ _%rest96597%_)
                               (_%else9660096614%_ (lambda () '#f))
                               (_%K9660296620%_
                                (lambda (_%rest96617%_ _%klass96618%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass96574%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass96618%_)))
                                      (__mixin-find-method
                                       _%rest96617%_
                                       _%obj96570%_
                                       _%id96582%_)
                                      (_%lp96595%_ _%rest96617%_)))))
                          (if (pair? _%rest9659896606%_)
                              (let ((_%hd9660396623%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9659896606%_)))
                                    (_%tl9660496625%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9659896606%_))))
                                (let* ((_%klass96628%_ _%hd9660396623%_)
                                       (_%rest96630%_ _%tl9660496625%_))
                                  (_%K9660296620%_
                                   _%rest96630%_
                                   _%klass96628%_)))
                              (_%else9660096614%_)))))))
            (_%find-next-method96591%_ (class-of _%obj96570%_))))))
    (define call-next-method
      (lambda (_%subklass96542%_ _%obj96543%_ _%id96544%_ . _%args96545%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96542%_ 'class))
            (let ((_%subklass96549%_ _%subklass96542%_))
              (if (symbol? _%id96544%_)
                  (let ((_%id96559%_ _%id96544%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass96549%_
                             _%obj96543%_
                             _%id96559%_
                             _%args96545%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id96544%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass96542%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass96513%_ _%obj96514%_ _%id96515%_ . _%args96516%_)
        (let* ((_%subklass96519%_ _%subklass96513%_)
               (_%id96527%_ _%id96515%_)
               (_%$e96536%_
                (__next-method _%subklass96519%_ _%obj96514%_ _%id96527%_)))
          (if _%$e96536%_
              ((lambda (_%methodf96539%_)
                 (apply _%methodf96539%_ _%obj96514%_ _%args96516%_))
               _%$e96536%_)
              (error '"cannot find next method"
                     'object:
                     _%obj96514%_
                     'method:
                     _%id96527%_)))))
    (define write-style
      (lambda (_%we96511%_) (values (macro-writeenv-style _%we96511%_))))
    (define write-object
      (lambda (_%we96502%_ _%obj96503%_)
        (let ((_%$e96505%_ (__method-ref _%obj96503%_ ':wr)))
          (if _%$e96505%_
              ((lambda (_%method96508%_)
                 (_%method96508%_ _%obj96503%_ _%we96502%_))
               _%$e96505%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we96502%_ _%obj96503%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type96417%_)
        (letrec ((_%shadow-type-id96419%_
                  (lambda (_%type96500%_)
                    (let ((__tmp101755
                           (let ()
                             (declare (not safe))
                             (##type-name _%type96500%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp101755 '"::t"))))
                 (_%shadow-type-name96420%_
                  (lambda (_%type96498%_)
                    (let () (declare (not safe)) (##type-name _%type96498%_))))
                 (_%make-shadow-class96421%_
                  (lambda (_%type96490%_ _%precedence-list96491%_)
                    (let* ((_%super96493%_
                            (if (pair? _%precedence-list96491%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list96491%_))
                                      '())
                                '()))
                           (_%klass96495%_
                            (make-class-type
                             (_%shadow-type-id96419%_ _%type96490%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type96490%_))
                             _%super96493%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type96490%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp101756
                             (let ()
                               (declare (not safe))
                               (##type-id _%type96490%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp101756
                         _%klass96495%_))
                      _%klass96495%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again96425%_ ()
              (if (let ((__tmp101757
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp101757 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again96425%_)))))
          (let ((_%$e96429%_
                 (let ((__tmp101758
                        (let ()
                          (declare (not safe))
                          (##type-id _%type96417%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp101758 '#f))))
            (if _%$e96429%_
                ((lambda (_%klass96432%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass96432%_)
                 _%$e96429%_)
                (let _%loop96435%_ ((_%super96437%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type96417%_)))
                                    (_%hierarchy96438%_ '()))
                  (if (not _%super96437%_)
                      (let _%loop96441%_ ((_%rest96443%_ _%hierarchy96438%_)
                                          (_%precedence-list96444%_ '()))
                        (let* ((_%rest9644596453%_ _%rest96443%_)
                               (_%else9644796463%_
                                (lambda ()
                                  (let ((_%klass96461%_
                                         (_%make-shadow-class96421%_
                                          _%type96417%_
                                          _%precedence-list96444%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass96461%_)))
                               (_%K9644996477%_
                                (lambda (_%rest96466%_ _%type96467%_)
                                  (let ((_%$e96469%_
                                         (let ((__tmp101759
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type96467%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp101759
                                            '#f))))
                                    (if _%$e96469%_
                                        ((lambda (_%klass96472%_)
                                           (_%loop96441%_
                                            _%rest96466%_
                                            (cons _%klass96472%_
                                                  _%precedence-list96444%_)))
                                         _%$e96469%_)
                                        (let ((_%klass96475%_
                                               (_%make-shadow-class96421%_
                                                _%type96467%_
                                                _%precedence-list96444%_)))
                                          (_%loop96441%_
                                           _%rest96466%_
                                           (cons _%klass96475%_
                                                 _%precedence-list96444%_))))))))
                          (if (pair? _%rest9644596453%_)
                              (let ((_%hd9645096480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9644596453%_)))
                                    (_%tl9645196482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9644596453%_))))
                                (let* ((_%type96485%_ _%hd9645096480%_)
                                       (_%rest96487%_ _%tl9645196482%_))
                                  (_%K9644996477%_
                                   _%rest96487%_
                                   _%type96485%_)))
                              (_%else9644796463%_))))
                      (_%loop96435%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super96437%_))
                       (cons _%super96437%_ _%hierarchy96438%_)))))))))
    (define class-of
      (lambda (_%obj96390%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t96394%_
                 (let () (declare (not safe)) (##type _%obj96390%_))))
            (if (fx= _%t96394%_ (macro-type-subtyped))
                (let ((_%st96397%_
                       (let () (declare (not safe)) (##subtype _%obj96390%_))))
                  (if (fx= _%st96397%_ (macro-subtype-structure))
                      (let ((_%klass96400%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj96390%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass96400%_ 'class))
                            _%klass96400%_
                            (__shadow-class _%klass96400%_)))
                      (if (fx= _%st96397%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp101760
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj96390%_))))
                                (declare (not safe))
                                (##fx= __tmp101760 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e96403%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st96397%_))))
                            (if _%$e96403%_
                                (__system-class _%$e96403%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st96397%_
                                       'object:
                                       _%obj96390%_))))))
                (if (fx= _%t96394%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t96394%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj96390%_)
                            (__system-class 'char)
                            (if (eq? _%obj96390%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj96390%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj96390%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj96390%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj96390%_ '#!eof)
                                                (__system-class 'eof)
                                                (__system-class
                                                 'special))))))))))))))
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
      (lambda (_%id96384%_)
        (let ((_%$e96386%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id96384%_ '#f))))
          (if _%$e96386%_
              _%$e96386%_
              (error '"unknown system class" _%id96384%_)))))
    (define __make-system-class
      (lambda (_%id96379%_ _%super96380%_)
        (let ((_%klass96382%_
               (make-class-type
                _%id96379%_
                _%id96379%_
                _%super96380%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id96379%_ _%klass96382%_))
          _%klass96382%_)))))
