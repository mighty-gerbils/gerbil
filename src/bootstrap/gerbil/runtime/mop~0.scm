(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712121897)
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
      (let ((_%flags96126%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96127%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96128%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96126%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96128%_
           _%properties96127%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96102%_
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
             (_%slot-vector96104%_ (list->vector (cons '#f _%slots96102%_)))
             (_%slot-table96111%_
              (let ((_%slot-table96106%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97574
                       (lambda (_%slot96108%_ _%field96109%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96106%_
                            _%slot96108%_
                            _%field96109%_))
                         (let ((__tmp97575
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96108%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96106%_
                            __tmp97575
                            _%field96109%_))))
                      (__tmp97572
                       (let ((__tmp97573
                              (let ()
                                (declare (not safe))
                                (##length _%slots96102%_))))
                         (declare (not safe))
                         (##iota __tmp97573 '1))))
                  (declare (not safe))
                  (##for-each __tmp97574 _%slots96102%_ __tmp97572))
                _%slot-table96106%_))
             (_%flags96113%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96119%_
              (list->vector
               (let ((__tmp97576
                      (map (lambda (_%g9611496116%_)
                             (list _%g9611496116%_ '5 '#f))
                           (drop _%slots96102%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97576))))
             (_%properties96121%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96102%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96123%_
              (let ((__tmp97577 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96113%_
                 ##type-type
                 _%fields96119%_
                 __tmp97577
                 _%slot-vector96104%_
                 _%slot-table96111%_
                 _%properties96121%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96123%_ _%t96123%_))
        _%t96123%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96098%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96099%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96100%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97578 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96098%_
           '#f
           '#()
           __tmp97578
           '#(#f)
           _%slot-table96100%_
           _%properties96099%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96096%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96096%_ 'class))))
    (define class-type=?
      (lambda (_%x96071%_ _%y96072%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96071%_ 'class))
              (let ()
                (let ((_%x96076%_ _%x96071%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%y96072%_ 'class))
                      (let ()
                        (let ((_%y96086%_ _%y96072%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-type=? _%x96076%_ _%y96086%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96072%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96071%_)))))
    (define __class-type=?
      (lambda (_%x96050%_ _%y96051%_)
        (let ()
          (let ((_%x96054%_ _%x96050%_))
            (let ((_%y96062%_ _%y96051%_))
              (let ()
                (eq? (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%x96054%_ '1 '#f '#f))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%y96062%_
                        '1
                        '#f
                        '#f)))))))))
    (define type-opaque?
      (lambda (_%type96036%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96036%_))
              (let ()
                (let ((_%type96040%_ _%type96036%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-opaque? _%type96040%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96036%_)))))
    (define __type-opaque?
      (lambda (_%type96024%_)
        (let ()
          (let ((_%type96027%_ _%type96024%_))
            (let ()
              (let ((__tmp97579
                     (let ((__tmp97580
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type96027%_))))
                       (declare (not safe))
                       (##fxand __tmp97580 type-flag-opaque))))
                (declare (not safe))
                (##fx= __tmp97579 type-flag-opaque)))))))
    (define type-extensible?
      (lambda (_%type96010%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96010%_))
              (let ()
                (let ((_%type96014%_ _%type96010%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__type-extensible? _%type96014%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type96010%_)))))
    (define __type-extensible?
      (lambda (_%type95998%_)
        (let ()
          (let ((_%type96001%_ _%type95998%_))
            (let ()
              (let ((__tmp97581
                     (let ((__tmp97582
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type96001%_))))
                       (declare (not safe))
                       (##fxand __tmp97582 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97581 type-flag-extensible)))))))
    (define class-type-final?
      (lambda (_%type95984%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type95984%_ 'class))
              (let ()
                (let ((_%type95988%_ _%type95984%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-final? _%type95988%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type95984%_)))))
    (define __class-type-final?
      (lambda (_%type95972%_)
        (let ()
          (let ((_%type95975%_ _%type95972%_))
            (let ()
              (let ((__tmp97583
                     (let ((__tmp97584
                            (let ()
                              (declare (not safe))
                              (##type-flags _%type95975%_))))
                       (declare (not safe))
                       (##fxand __tmp97584 type-flag-extensible))))
                (declare (not safe))
                (##fx= __tmp97583 '0)))))))
    (define class-type-struct?
      (lambda (_%klass95958%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95958%_ 'class))
              (let ()
                (let ((_%klass95962%_ _%klass95958%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95962%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass95958%_)))))
    (define __class-type-struct?
      (lambda (_%klass95946%_)
        (let ()
          (let ((_%klass95949%_ _%klass95946%_))
            (let ()
              (let ((__tmp97585
                     (let ((__tmp97586
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95949%_))))
                       (declare (not safe))
                       (##fxand __tmp97586 class-type-flag-struct))))
                (declare (not safe))
                (##fx= __tmp97585 class-type-flag-struct)))))))
    (define class-type-sealed?
      (lambda (_%klass95932%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95932%_ 'class))
              (let ()
                (let ((_%klass95936%_ _%klass95932%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass95936%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass95932%_)))))
    (define __class-type-sealed?
      (lambda (_%klass95920%_)
        (let ()
          (let ((_%klass95923%_ _%klass95920%_))
            (let ()
              (let ((__tmp97587
                     (let ((__tmp97588
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95923%_))))
                       (declare (not safe))
                       (##fxand __tmp97588 class-type-flag-sealed))))
                (declare (not safe))
                (##fx= __tmp97587 class-type-flag-sealed)))))))
    (define class-type-metaclass?
      (lambda (_%klass95906%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95906%_ 'class))
              (let ()
                (let ((_%klass95910%_ _%klass95906%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass95910%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass95906%_)))))
    (define __class-type-metaclass?
      (lambda (_%klass95894%_)
        (let ()
          (let ((_%klass95897%_ _%klass95894%_))
            (let ()
              (let ((__tmp97589
                     (let ((__tmp97590
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95897%_))))
                       (declare (not safe))
                       (##fxand __tmp97590 class-type-flag-metaclass))))
                (declare (not safe))
                (##fx= __tmp97589 class-type-flag-metaclass)))))))
    (define class-type-system?
      (lambda (_%klass95880%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95880%_ 'class))
              (let ()
                (let ((_%klass95884%_ _%klass95880%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass95884%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass95880%_)))))
    (define __class-type-system?
      (lambda (_%klass95868%_)
        (let ()
          (let ((_%klass95871%_ _%klass95868%_))
            (let ()
              (let ((__tmp97591
                     (let ((__tmp97592
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95871%_))))
                       (declare (not safe))
                       (##fxand __tmp97592 class-type-flag-system))))
                (declare (not safe))
                (##fx= __tmp97591 class-type-flag-system)))))))
    (define make-class-type-descriptor
      (lambda (_%type-id95753%_
               _%type-name95754%_
               _%type-super95755%_
               _%precedence-list95756%_
               _%slot-vector95757%_
               _%properties95758%_
               _%constructor95759%_
               _%slot-table95760%_
               _%methods95761%_)
        (let ()
          (letrec ((_%make-props!95764%_
                    (lambda (_%key95837%_)
                      (letrec* ((_%ht95839%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!95840%_
                                 (lambda (_%ht95861%_ _%slots95862%_)
                                   (for-each
                                    (lambda (_%g9586395865%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht95861%_
                                         _%g9586395865%_
                                         '#t)))
                                    _%slots95862%_)))
                                (_%put-alist!95841%_
                                 (lambda (_%ht95850%_
                                          _%key95851%_
                                          _%alist95852%_)
                                   (let ((_%$e95854%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95851%_
                                             _%alist95852%_))))
                                     (if _%$e95854%_
                                         ((lambda (_%g9585695858%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!95840%_
                                               _%ht95850%_
                                               _%g9585695858%_)))
                                          _%$e95854%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!95841%_
                           _%ht95839%_
                           _%key95837%_
                           _%properties95758%_))
                        (for-each
                         (lambda (_%mixin95843%_)
                           (let ((_%alist95845%_
                                  (##structure-ref
                                   _%mixin95843%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist95845%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95837%_
                                             _%alist95845%_))))
                                 (let ((__tmp97593
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin95843%_))))
                                   (declare (not safe))
                                   (_%put-slots!95840%_
                                    _%ht95839%_
                                    __tmp97593))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!95841%_
                                    _%ht95839%_
                                    _%key95837%_
                                    _%alist95845%_)))))
                         _%precedence-list95756%_)
                        _%ht95839%_))))
            (let* ((_%transparent?95766%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties95758%_)))
                   (_%all-slots-printable?95771%_
                    (let ((_%$e95768%_ _%transparent?95766%_))
                      (if _%$e95768%_
                          _%$e95768%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties95758%_))))))
                   (_%printable95773%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?95771%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95764%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?95778%_
                    (let ((_%$e95775%_ _%transparent?95766%_))
                      (if _%$e95775%_
                          _%$e95775%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties95758%_))))))
                   (_%equalable95780%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?95778%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95764%_ 'equal:))
                        '#f))
                   (_%first-new-field95782%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super95755%_
                           'class))
                        (let ((__tmp97594
                               (##structure-ref
                                _%type-super95755%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp97594))
                        '1))
                   (_%field-info-length95784%_
                    (let ((__tmp97595
                           (let ((__tmp97596
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector95757%_))))
                             (declare (not safe))
                             (##fx- __tmp97596 _%first-new-field95782%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp97595)))
                   (_%field-info95786%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length95784%_ '#f)))
                   (_%struct?95788%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties95758%_)))
                   (_%final?95790%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties95758%_)))
                   (_%metaclass95798%_
                    (let ((_%metaclass9579195793%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties95758%_))))
                      (if _%metaclass9579195793%_
                          (let ((_%metaclass95796%_ _%metaclass9579195793%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass95796%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id95753%_
                                       'metaclass:
                                       _%metaclass95796%_))
                            _%metaclass95796%_)
                          '#f)))
                   (_%system?95800%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties95758%_)))
                   (_%opaque?95805%_
                    (let ((_%$e95802%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?95778%_))))
                      (if _%$e95802%_
                          _%$e95802%_
                          (if _%type-super95755%_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _%type-super95755%_))
                              '#f))))
                   (_%type-flags95807%_
                    (let ((__tmp97601
                           (if _%final?95790%_ '0 type-flag-extensible))
                          (__tmp97600
                           (if _%opaque?95805%_ type-flag-opaque '0))
                          (__tmp97599
                           (if _%struct?95788%_ class-type-flag-struct '0))
                          (__tmp97598
                           (if _%metaclass95798%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp97597
                           (if _%system?95800%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp97601
                               __tmp97600
                               __tmp97599
                               __tmp97598
                               __tmp97597)))
                   (_%precedence-list95815%_
                    (let ((_%$e95809%_ (memq t::t _%precedence-list95756%_)))
                      (if _%$e95809%_
                          ((lambda (_%tail95812%_)
                             (if (let ((__tmp97602 (cdr _%tail95812%_)))
                                   (declare (not safe))
                                   (null? __tmp97602))
                                 _%precedence-list95756%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list95756%_)))
                           _%$e95809%_)
                          (let ()
                            (let ((__tmp97603 (cons t::t '())))
                              (declare (not safe))
                              (##append
                               _%precedence-list95756%_
                               __tmp97603)))))))
              (let _%loop95818%_ ((_%i95820%_ _%first-new-field95782%_)
                                  (_%j95821%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j95821%_ _%field-info-length95784%_))
                    (let* ((_%slot95823%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector95757%_ _%i95820%_)))
                           (_%flags95831%_
                            (if _%transparent?95766%_
                                '0
                                (let ((__tmp97605
                                       (if (or _%all-slots-printable?95771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable95773%_
                                                  _%slot95823%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp97604
                                       (if (or _%all-slots-equalable?95778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable95780%_
                                                  _%slot95823%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp97605 __tmp97604)))))
                      (vector-set!
                       _%field-info95786%_
                       _%j95821%_
                       _%slot95823%_)
                      (vector-set!
                       _%field-info95786%_
                       (let () (declare (not safe)) (##fx+ _%j95821%_ '1))
                       _%flags95831%_)
                      (let ((__tmp97607
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95820%_ '1)))
                            (__tmp97606
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j95821%_ '3))))
                        (declare (not safe))
                        (_%loop95818%_ __tmp97607 __tmp97606)))
                    '#!void))
              (if _%metaclass95798%_
                  (let ((_%val95834%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass95798%_
                            _%type-id95753%_
                            _%type-name95754%_
                            _%type-flags95807%_
                            _%type-super95755%_
                            _%field-info95786%_
                            _%precedence-list95815%_
                            _%slot-vector95757%_
                            _%slot-table95760%_
                            _%properties95758%_
                            _%constructor95759%_
                            _%methods95761%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val95834%_ 'class))
                        _%val95834%_
                        (error '"bad cast" class::t _%val95834%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id95753%_
                     _%type-name95754%_
                     _%type-flags95807%_
                     _%type-super95755%_
                     _%field-info95786%_
                     _%precedence-list95815%_
                     _%slot-vector95757%_
                     _%slot-table95760%_
                     _%properties95758%_
                     _%constructor95759%_
                     _%methods95761%_))))))))
    (define class-type-id
      (lambda (_%klass95751%_)
        (##structure-ref _%klass95751%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95749%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95749%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95746%_ _%val95747%_)
        (##structure-set! _%klass95746%_ _%val95747%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95741%_ _%val95743%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95741%_
           _%val95743%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95739%_)
        (##structure-ref _%klass95739%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95737%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95737%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95734%_ _%val95735%_)
        (##structure-set! _%klass95734%_ _%val95735%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95729%_ _%val95731%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95729%_
           _%val95731%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95727%_)
        (##structure-ref _%klass95727%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95725%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95725%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95722%_ _%val95723%_)
        (##structure-set! _%klass95722%_ _%val95723%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95717%_ _%val95719%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95717%_
           _%val95719%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95715%_)
        (##structure-ref _%klass95715%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95713%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95713%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95710%_ _%val95711%_)
        (##structure-set! _%klass95710%_ _%val95711%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95705%_ _%val95707%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95705%_
           _%val95707%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95703%_)
        (##structure-ref _%klass95703%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95701%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95701%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95698%_ _%val95699%_)
        (##structure-set! _%klass95698%_ _%val95699%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95693%_ _%val95695%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95693%_
           _%val95695%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95691%_)
        (##structure-ref _%klass95691%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95689%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95689%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95686%_ _%val95687%_)
        (##structure-set!
         _%klass95686%_
         _%val95687%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95681%_ _%val95683%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95681%_
           _%val95683%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95679%_)
        (##structure-ref _%klass95679%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95677%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95677%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95674%_ _%val95675%_)
        (##structure-set!
         _%klass95674%_
         _%val95675%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95669%_ _%val95671%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95669%_
           _%val95671%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95667%_)
        (##structure-ref _%klass95667%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95665%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95665%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95662%_ _%val95663%_)
        (##structure-set!
         _%klass95662%_
         _%val95663%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95657%_ _%val95659%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95657%_
           _%val95659%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95655%_)
        (##structure-ref _%klass95655%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95653%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95653%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95650%_ _%val95651%_)
        (##structure-set!
         _%klass95650%_
         _%val95651%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95645%_ _%val95647%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95645%_
           _%val95647%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95643%_)
        (##structure-ref _%klass95643%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95641%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95641%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95638%_ _%val95639%_)
        (##structure-set!
         _%klass95638%_
         _%val95639%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95633%_ _%val95635%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95633%_
           _%val95635%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95631%_)
        (##structure-ref _%klass95631%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95629%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95629%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95626%_ _%val95627%_)
        (##structure-set! _%klass95626%_ _%val95627%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95621%_ _%val95623%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95621%_
           _%val95623%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95607%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95607%_ 'class))
              (let ()
                (let ((_%klass95611%_ _%klass95607%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-slot-list _%klass95611%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass95607%_)))))
    (define __class-type-slot-list
      (lambda (_%klass95595%_)
        (let ()
          (let ((_%klass95598%_ _%klass95595%_))
            (let ()
              (cdr (vector->list
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95598%_
                       '7
                       '#f
                       '#f)))))))))
    (define class-type-field-count
      (lambda (_%klass95581%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95581%_ 'class))
              (let ()
                (let ((_%klass95585%_ _%klass95581%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-field-count _%klass95585%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass95581%_)))))
    (define __class-type-field-count
      (lambda (_%klass95569%_)
        (let ()
          (let ((_%klass95572%_ _%klass95569%_))
            (let ()
              (let ((__tmp97608
                     (let ((__tmp97609
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass95572%_
                               '7
                               '#f
                               '#f))))
                       (declare (not safe))
                       (##vector-length __tmp97609))))
                (declare (not safe))
                (##fx- __tmp97608 '1)))))))
    (define class-type-seal!
      (lambda (_%klass95555%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95555%_ 'class))
              (let ()
                (let ((_%klass95559%_ _%klass95555%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass95559%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass95555%_)))))
    (define __class-type-seal!
      (lambda (_%klass95543%_)
        (let ()
          (let ((_%klass95546%_ _%klass95543%_))
            (let ()
              (let ((__tmp97610
                     (let ((__tmp97611
                            (let ()
                              (declare (not safe))
                              (##type-flags _%klass95546%_))))
                       (declare (not safe))
                       (##fxior class-type-flag-sealed __tmp97611))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%klass95546%_
                 __tmp97610
                 '3
                 class::t
                 class-type-seal!))
              '#!void)))))
    (define substruct?
      (lambda (_%maybe-sub-struct95518%_ _%maybe-super-struct95519%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct95518%_ 'class))
              (let ()
                (let ((_%maybe-sub-struct95523%_ _%maybe-sub-struct95518%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-struct95519%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-struct95533%_
                               _%maybe-super-struct95519%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__substruct?
                               _%maybe-sub-struct95523%_
                               _%maybe-super-struct95533%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct95519%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct95518%_)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95487%_ _%maybe-super-struct95488%_)
        (let ()
          (let ((_%maybe-sub-struct95491%_ _%maybe-sub-struct95487%_))
            (let ((_%maybe-super-struct95499%_ _%maybe-super-struct95488%_))
              (let ()
                (let ((_%maybe-super-struct-id95508%_
                       (let ()
                         (declare (not safe))
                         (##type-id _%maybe-super-struct95499%_))))
                  (let _%lp95510%_ ((_%super-struct95512%_
                                     _%maybe-sub-struct95491%_))
                    (let ()
                      (if (let ()
                            (declare (not safe))
                            (not _%super-struct95512%_))
                          (let () '#f)
                          (if (eq? _%maybe-super-struct-id95508%_
                                   (let ()
                                     (declare (not safe))
                                     (##type-id _%super-struct95512%_)))
                              (let () '#t)
                              (let ()
                                (let ((__tmp97612
                                       (let ()
                                         (declare (not safe))
                                         (##type-super
                                          _%super-struct95512%_))))
                                  (declare (not safe))
                                  (_%lp95510%_ __tmp97612))))))))))))))
    (define base-struct/1
      (lambda (_%klass95482%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95482%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass95482%_))
                  _%klass95482%_
                  (let () (declare (not safe)) (##type-super _%klass95482%_))))
            (if (let () (declare (not safe)) (not _%klass95482%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass95482%_))))))
    (define base-struct/2
      (lambda (_%klass195467%_ _%klass295468%_)
        (let ((_%s195470%_
               (let () (declare (not safe)) (base-struct/1 _%klass195467%_)))
              (_%s295471%_
               (let () (declare (not safe)) (base-struct/1 _%klass295468%_))))
          (if (or (let () (declare (not safe)) (not _%s195470%_))
                  (and _%s295471%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s195470%_ _%s295471%_))))
              (let () _%s295471%_)
              (if (or (let () (declare (not safe)) (not _%s295471%_))
                      (and _%s195470%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s295471%_ _%s195470%_))))
                  (let () _%s195470%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass195467%_
                           _%klass295468%_
                           _%s195470%_
                           _%s295471%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95351%_)
        (let* ((_%all-supers9535295377%_ _%all-supers95351%_)
               (_%E9535795381%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9535295377%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9537595464%_ (lambda () '#f))
                (_%K9537295450%_
                 (lambda (_%x95448%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95448%_))))
                (_%K9536795427%_
                 (lambda (_%y95424%_ _%x95425%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95425%_ _%y95424%_))))
                (_%K9535895388%_
                 (lambda (_%y95385%_ _%x95386%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95386%_ _%y95385%_)))))
            (let* ((_%__match9756697567%_
                    (lambda (_%hd9535995391%_ _%tl9536095393%_)
                      (let ((_%x95396%_ _%hd9535995391%_))
                        (letrec ((_%splice-rest9536295398%_
                                  (lambda (_%rest9536695405%_ _%y95407%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9536695405%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9535895388%_
                                           _%y95407%_
                                           _%x95396%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9535795381%_)))))
                                 (_%splice-try9536495400%_
                                  (lambda (_%hd9536595409%_
                                           _%rest9536695411%_
                                           _%y9536195412%_)
                                    (let ((_%y95415%_ _%hd9536595409%_))
                                      (let ((__tmp97614
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9536695411%_)))
                                            (__tmp97613
                                             (cons _%y95415%_
                                                   _%y9536195412%_)))
                                        (declare (not safe))
                                        (_%splice-loop9536395402%_
                                         __tmp97614
                                         __tmp97613)))))
                                 (_%splice-loop9536395402%_
                                  (lambda (_%rest9536695417%_ _%y9536195418%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9536695417%_))
                                        (let ((__tmp97615
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9536695417%_))))
                                          (declare (not safe))
                                          (_%splice-try9536495400%_
                                           __tmp97615
                                           _%rest9536695417%_
                                           _%y9536195418%_))
                                        (let ((__tmp97616
                                               (reverse _%y9536195418%_)))
                                          (declare (not safe))
                                          (_%splice-rest9536295398%_
                                           _%rest9536695417%_
                                           __tmp97616))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9536395402%_
                             _%tl9536095393%_
                             '()))))))
                   (_%try-match9535495460%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9535295377%_))
                          (let ((_%tl9537495455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9535295377%_)))
                                (_%hd9537395453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9535295377%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9537495455%_))
                                (let ((_%x95458%_ _%hd9537395453%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95458%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9537495455%_))
                                    (let ((_%tl9537195439%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9537495455%_)))
                                          (_%hd9537095437%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9537495455%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9537195439%_))
                                          (let ((_%x95435%_ _%hd9537395453%_)
                                                (_%y95442%_ _%hd9537095437%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9536795427%_
                                               _%y95442%_
                                               _%x95435%_)))
                                          (_%__match9756697567%_
                                           _%hd9537395453%_
                                           _%tl9537495455%_)))
                                    (_%__match9756697567%_
                                     _%hd9537395453%_
                                     _%tl9537495455%_))))
                          (let () (declare (not safe)) (_%E9535795381%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9535295377%_))
                  (let () (declare (not safe)) (_%K9537595464%_))
                  (let () (declare (not safe)) (_%try-match9535495460%_))))))))
    (define base-struct
      (lambda _%all-supers95349%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95349%_))))
    (define find-super-constructor
      (lambda (_%super95300%_)
        (let _%lp95302%_ ((_%rest95304%_ _%super95300%_)
                          (_%constructor95305%_ '#f))
          (let* ((_%rest9530695314%_ _%rest95304%_)
                 (_%else9530895322%_ (lambda () _%constructor95305%_))
                 (_%K9531095337%_
                  (lambda (_%rest95325%_ _%hd95326%_)
                    (let ((_%$e95328%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95326%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95328%_
                          ((lambda (_%xconstructor95331%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95305%_))
                                     (eq? _%constructor95305%_
                                          _%xconstructor95331%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95302%_
                                    _%rest95325%_
                                    _%xconstructor95331%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95305%_
                                        _%xconstructor95331%_)))
                           _%$e95328%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (_%lp95302%_
                               _%rest95325%_
                               _%constructor95305%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9530695314%_))
                (let ((_%hd9531195340%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9530695314%_)))
                      (_%tl9531295342%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9530695314%_))))
                  (let* ((_%hd95345%_ _%hd9531195340%_)
                         (_%rest95347%_ _%tl9531295342%_))
                    (declare (not safe))
                    (_%K9531095337%_ _%rest95347%_ _%hd95345%_)))
                (let () (declare (not safe)) (_%else9530895322%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95276%_ _%direct-slots95277%_)
        (let* ((_%next-slot95279%_ '1)
               (_%slot-table95281%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95283%_ '(__class))
               (_%process-slot95287%_
                (lambda (_%slot95285%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95285%_))
                      '#!void
                      (error '"invalid slot name" _%slot95285%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95281%_
                              _%slot95285%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95281%_
                           _%slot95285%_
                           _%next-slot95279%_))
                        (let ((__tmp97617
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95285%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95281%_
                           __tmp97617
                           _%next-slot95279%_))
                        (set! _%r-slots95283%_
                              (cons _%slot95285%_ _%r-slots95283%_))
                        (set! _%next-slot95279%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95279%_ '1))))
                      '#!void)))
               (_%process-slots95293%_
                (lambda (_%g9528895290%_)
                  (for-each _%process-slot95287%_ _%g9528895290%_))))
          (let ((__tmp97619
                 (lambda (_%mixin95296%_)
                   (let ((__tmp97620
                          (let ((__tmp97621
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95296%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp97621 '()))))
                     (declare (not safe))
                     (_%process-slots95293%_ __tmp97620))))
                (__tmp97618 (reverse _%class-precedence-list95276%_)))
            (declare (not safe))
            (##for-each __tmp97619 __tmp97618))
          (let ()
            (declare (not safe))
            (_%process-slots95293%_ _%direct-slots95277%_))
          (let ((_%slot-vector95298%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95283%_)))))
            (values _%slot-vector95298%_ _%slot-table95281%_)))))
    (define make-class-type
      (lambda (_%id95201%_
               _%name95202%_
               _%direct-supers95203%_
               _%direct-slots95204%_
               _%properties95205%_
               _%constructor95206%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95201%_))
              (let ()
                (let ((_%id95210%_ _%id95201%_))
                  (if (let () (declare (not safe)) (symbol? _%name95202%_))
                      (let ()
                        (let ((_%name95220%_ _%name95202%_))
                          (if (let ()
                                (declare (not safe))
                                (list? _%direct-supers95203%_))
                              (let ()
                                (let ((_%direct-supers95230%_
                                       _%direct-supers95203%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%direct-slots95204%_))
                                      (let ()
                                        (let ((_%direct-slots95240%_
                                               _%direct-slots95204%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (list? _%properties95205%_))
                                              (let ()
                                                (let ((_%properties95250%_
                                                       _%properties95205%_))
                                                  (if ((lambda (_%$obj95259%_)
                                                         (or (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (not _%$obj95259%_))
                     (let () (declare (not safe)) (symbol? _%$obj95259%_))))
               _%constructor95206%_)
              (let ()
                (let ((_%constructor95266%_ _%constructor95206%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-type
                       _%id95210%_
                       _%name95220%_
                       _%direct-supers95230%_
                       _%direct-slots95240%_
                       _%properties95250%_
                       _%constructor95266%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
               'contract:
               '(? (or not symbol?))
               'value:
               _%constructor95206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                               'contract:
                                               'list?
                                               'value:
                                               _%properties95205%_))))
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                       'contract:
                                       'list?
                                       'value:
                                       _%direct-slots95204%_))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                               'contract:
                               'list?
                               'value:
                               _%direct-supers95203%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95202%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95201%_)))))
    (define __make-class-type
      (lambda (_%id95070%_
               _%name95071%_
               _%direct-supers95072%_
               _%direct-slots95073%_
               _%properties95074%_
               _%constructor95075%_)
        (let ()
          (let ((_%id95078%_ _%id95070%_))
            (let ((_%name95086%_ _%name95071%_))
              (let ((_%direct-supers95094%_ _%direct-supers95072%_))
                (let ((_%direct-slots95102%_ _%direct-slots95073%_))
                  (let ((_%properties95110%_ _%properties95074%_))
                    (let ((_%constructor95118%_ _%constructor95075%_))
                      (let ()
                        (let ((_%$e95130%_
                               (let ((__tmp97622
                                      (lambda (_%$obj95127%_)
                                        (let ((__tmp97623
                                               (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _%$obj95127%_
                                                  'class))))
                                          (declare (not safe))
                                          (not __tmp97623)))))
                                 (declare (not safe))
                                 (__find __tmp97622 _%direct-supers95094%_))))
                          (if _%$e95130%_
                              ((lambda (_%g9513295134%_)
                                 (error '"Illegal super class; not a class descriptor"
                                        _%g9513295134%_))
                               _%$e95130%_)
                              (let ((_%$e95137%_
                                     (let ()
                                       (declare (not safe))
                                       (__find __class-type-final?
                                               _%direct-supers95094%_))))
                                (if _%$e95137%_
                                    ((lambda (_%g9513995141%_)
                                       (error '"Cannot extend final class"
                                              _%g9513995141%_))
                                     _%$e95137%_)
                                    '#!void))))
                        (let ((_g97624_
                               (let ()
                                 (declare (not safe))
                                 (compute-precedence-list
                                  _%direct-supers95094%_))))
                          (begin
                            (let ((_g97625_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g97624_)
                                         (##vector-length _g97624_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g97625_ 2)))
                                  (error "Context expects 2 values" _g97625_)))
                            (let ((_%precedence-list95144%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97624_ 0)))
                                  (_%struct-super95145%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g97624_ 1))))
                              (let ((_g97626_
                                     (let ()
                                       (declare (not safe))
                                       (compute-class-slots
                                        _%precedence-list95144%_
                                        _%direct-slots95102%_))))
                                (begin
                                  (let ((_g97627_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g97626_)
                                               (##vector-length _g97626_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g97627_ 2)))
                                        (error "Context expects 2 values"
                                               _g97627_)))
                                  (let ((_%slot-vector95147%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97626_ 0)))
                                        (_%slot-table95148%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g97626_ 1))))
                                    (let* ((_%properties95150%_
                                            (cons (cons 'direct-slots:
                                                        _%direct-slots95102%_)
                                                  (cons (cons 'direct-supers:
                                                              _%direct-supers95094%_)
                                                        _%properties95110%_)))
                                           (_%constructor*95155%_
                                            (let ((_%$e95152%_
                                                   _%constructor95118%_))
                                              (if _%$e95152%_
                                                  _%$e95152%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (find-super-constructor
                                                     _%direct-supers95094%_)))))
                                           (_%precedence-list95198%_
                                            (if (or (let ()
                                                      (declare (not safe))
                                                      (agetq__0
                                                       'system:
                                                       _%properties95150%_))
                                                    (memq object::t
                                                          _%precedence-list95144%_))
                                                _%precedence-list95144%_
                                                (let _%loop95160%_ ((_%tail95162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%precedence-list95144%_)
                            (_%head95163%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%tail9516495172%_
                                                          _%tail95162%_)
                                                         (_%else9516695180%_
                                                          (lambda ()
                                                            (let ((__tmp97628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons object::t (cons t::t '()))))
                      (declare (not safe))
                      (__foldl1 cons __tmp97628 _%head95163%_))))
                 (_%K9516895186%_
                  (lambda (_%rest95183%_ _%hd95184%_)
                    (if (eq? _%hd95184%_ t::t)
                        (let ((__tmp97629 (cons object::t _%tail95162%_)))
                          (declare (not safe))
                          (__foldl1 cons __tmp97629 _%head95163%_))
                        (let ((__tmp97630 (cons _%hd95184%_ _%head95163%_)))
                          (declare (not safe))
                          (_%loop95160%_ _%rest95183%_ __tmp97630))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tail9516495172%_))
                                                        (let ((_%hd9516995189%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%tail9516495172%_)))
                      (_%tl9517095191%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%tail9516495172%_))))
                  (let* ((_%hd95194%_ _%hd9516995189%_)
                         (_%rest95196%_ _%tl9517095191%_))
                    (declare (not safe))
                    (_%K9516895186%_ _%rest95196%_ _%hd95194%_)))
                (let () (declare (not safe)) (_%else9516695180%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (make-class-type-descriptor
                                         _%id95078%_
                                         _%name95086%_
                                         _%struct-super95145%_
                                         _%precedence-list95198%_
                                         _%slot-vector95147%_
                                         _%properties95150%_
                                         _%constructor*95155%_
                                         _%slot-table95148%_
                                         '#f)))))))))))))))))))
    (define class-precedence-list
      (lambda (_%klass95056%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95056%_ 'class))
              (let ()
                (let ((_%klass95060%_ _%klass95056%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-precedence-list _%klass95060%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95056%_)))))
    (define __class-precedence-list
      (lambda (_%klass95044%_)
        (let ()
          (let ((_%klass95047%_ _%klass95044%_))
            (let ()
              (cons _%klass95047%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass95047%_
                       '6
                       '#f
                       '#f))))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95041%_)
        (let ()
          (let ()
            (declare (not safe))
            (c4-linearize
             '()
             _%direct-supers95041%_
             'get-precedence-list:
             class-precedence-list
             'struct:
             class-type-struct?
             'eq:
             eq?
             'get-name:
             ##type-name)))))
    (define make-class-predicate
      (lambda (_%klass95027%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95027%_ 'class))
              (let ()
                (let ((_%klass95031%_ _%klass95027%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__make-class-predicate _%klass95031%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass95027%_)))))
    (define __make-class-predicate
      (lambda (_%klass94998%_)
        (let ()
          (let ((_%klass95001%_ _%klass94998%_))
            (let ()
              (let ((_%tid95010%_
                     (let () (declare (not safe)) (##type-id _%klass95001%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95001%_))
                    (let ()
                      (lambda (_%g9501295014%_)
                        (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           _%g9501295014%_
                           _%tid95010%_))))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95001%_))
                        (let ()
                          (lambda (_%g9501795019%_)
                            (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%g9501795019%_
                               _%tid95010%_))))
                        (let ()
                          (lambda (_%g9502295024%_)
                            (let ()
                              (declare (not safe))
                              (__class-instance?
                               _%klass95001%_
                               _%g9502295024%_))))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass94973%_ _%slot94974%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94973%_ 'class))
              (let ()
                (let ((_%klass94978%_ _%klass94973%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94974%_))
                      (let ()
                        (let ((_%slot94988%_ _%slot94974%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-accessor
                               _%klass94978%_
                               _%slot94988%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94974%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass94973%_)))))
    (define __make-class-slot-accessor
      (lambda (_%klass94941%_ _%slot94942%_)
        (let ()
          (let ((_%klass94945%_ _%klass94941%_))
            (let ((_%slot94953%_ _%slot94942%_))
              (let ()
                (let ((_%field94962%_
                       (let ((__tmp97631
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94945%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97631 _%slot94953%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94962%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94945%_
                               'slot:
                               _%slot94953%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94945%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-accessor
                               _%klass94945%_
                               _%slot94953%_
                               _%field94962%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94945%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-accessor
                                   _%klass94945%_
                                   _%slot94953%_
                                   _%field94962%_)))
                              (if (let ((_%strukt94968%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94945%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94968%_
                                            'class))
                                         (let ((__tmp97632
                                                (let ((__tmp97633
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94968%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97633))))
                                           (declare (not safe))
                                           (##fx< _%field94962%_ __tmp97632))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-accessor
                                       _%klass94945%_
                                       _%slot94953%_
                                       _%field94962%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-accessor
                                       _%klass94945%_
                                       _%slot94953%_
                                       _%field94962%_))))))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass94916%_ _%slot94917%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94916%_ 'class))
              (let ()
                (let ((_%klass94921%_ _%klass94916%_))
                  (if (let () (declare (not safe)) (symbol? _%slot94917%_))
                      (let ()
                        (let ((_%slot94931%_ _%slot94917%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-class-slot-mutator
                               _%klass94921%_
                               _%slot94931%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94917%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass94916%_)))))
    (define __make-class-slot-mutator
      (lambda (_%klass94884%_ _%slot94885%_)
        (let ()
          (let ((_%klass94888%_ _%klass94884%_))
            (let ((_%slot94896%_ _%slot94885%_))
              (let ()
                (let ((_%field94905%_
                       (let ((__tmp97634
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94888%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97634 _%slot94896%_ '#f))))
                  (if (let () (declare (not safe)) (not _%field94905%_))
                      (let ()
                        (error '"unknown slot"
                               'class:
                               _%klass94888%_
                               'slot:
                               _%slot94896%_))
                      (if (let ()
                            (declare (not safe))
                            (__class-type-final? _%klass94888%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (make-final-slot-mutator
                               _%klass94888%_
                               _%slot94896%_
                               _%field94905%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94888%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-mutator
                                   _%klass94888%_
                                   _%slot94896%_
                                   _%field94905%_)))
                              (if (let ((_%strukt94911%_
                                         (let ()
                                           (declare (not safe))
                                           (base-struct/1 _%klass94888%_))))
                                    (and (let ()
                                           (declare (not safe))
                                           (##structure-instance-of?
                                            _%strukt94911%_
                                            'class))
                                         (let ((__tmp97635
                                                (let ((__tmp97636
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94911%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97636))))
                                           (declare (not safe))
                                           (##fx< _%field94905%_ __tmp97635))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-subclass-slot-mutator
                                       _%klass94888%_
                                       _%slot94896%_
                                       _%field94905%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-mutator
                                       _%klass94888%_
                                       _%slot94896%_
                                       _%field94905%_))))))))))))))
    (define make-class-slot-unchecked-accessor
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
                              (__make-class-slot-unchecked-accessor
                               _%klass94864%_
                               _%slot94874%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94860%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass94859%_)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass94827%_ _%slot94828%_)
        (let ()
          (let ((_%klass94831%_ _%klass94827%_))
            (let ((_%slot94839%_ _%slot94828%_))
              (let ()
                (let ((_%field94848%_
                       (let ((__tmp97637
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94831%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97637 _%slot94839%_ '#f))))
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
                              (make-struct-slot-unchecked-accessor
                               _%klass94831%_
                               _%slot94839%_
                               _%field94848%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94831%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-accessor
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
                                         (let ((__tmp97638
                                                (let ((__tmp97639
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94854%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97639))))
                                           (declare (not safe))
                                           (##fx< _%field94848%_ __tmp97638))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-accessor
                                       _%klass94831%_
                                       _%slot94839%_
                                       _%field94848%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-accessor
                                       _%klass94831%_
                                       _%slot94839%_
                                       _%field94848%_))))))))))))))
    (define make-class-slot-unchecked-mutator
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
                              (__make-class-slot-unchecked-mutator
                               _%klass94807%_
                               _%slot94817%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94803%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass94802%_)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94770%_ _%slot94771%_)
        (let ()
          (let ((_%klass94774%_ _%klass94770%_))
            (let ((_%slot94782%_ _%slot94771%_))
              (let ()
                (let ((_%field94791%_
                       (let ((__tmp97640
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94774%_
                                 '8
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (symbolic-table-ref __tmp97640 _%slot94782%_ '#f))))
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
                              (make-struct-slot-unchecked-mutator
                               _%klass94774%_
                               _%slot94782%_
                               _%field94791%_)))
                          (if (let ()
                                (declare (not safe))
                                (__class-type-struct? _%klass94774%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (make-struct-slot-unchecked-mutator
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
                                         (let ((__tmp97641
                                                (let ((__tmp97642
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%strukt94797%_
                                                          '7
                                                          '#f
                                                          '#f))))
                                                  (declare (not safe))
                                                  (##vector-length
                                                   __tmp97642))))
                                           (declare (not safe))
                                           (##fx< _%field94791%_ __tmp97641))))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-struct-slot-unchecked-mutator
                                       _%klass94774%_
                                       _%slot94782%_
                                       _%field94791%_)))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (make-class-cached-slot-unchecked-mutator
                                       _%klass94774%_
                                       _%slot94782%_
                                       _%field94791%_))))))))))))))
    (define not-an-instance__%
      (lambda (_%object94754%_ _%class94755%_ _%slot94756%_)
        (apply error
               '"not an instance"
               'object:
               _%object94754%_
               'class:
               _%class94755%_
               (if _%slot94756%_ (cons 'slot: (cons _%slot94756%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94761%_ _%class94762%_)
        (let ((_%slot94764%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object94761%_ _%class94762%_ _%slot94764%_))))
    (define not-an-instance
      (lambda _g97644_
        (let ((_g97643_ (let () (declare (not safe)) (##length _g97644_))))
          (cond ((let () (declare (not safe)) (##fx= _g97643_ 2))
                 (apply (lambda (_%object94761%_ _%class94762%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object94761%_
                             _%class94762%_)))
                        _g97644_))
                ((let () (declare (not safe)) (##fx= _g97643_ 3))
                 (apply (lambda (_%object94766%_ _%class94767%_ _%slot94768%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object94766%_
                             _%class94767%_
                             _%slot94768%_)))
                        _g97644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97644_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94747%_ _%slot94748%_ _%field94749%_)
        (lambda (_%obj94751%_)
          (##direct-structure-ref
           _%obj94751%_
           _%field94749%_
           _%klass94747%_
           _%slot94748%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94740%_ _%slot94741%_ _%field94742%_)
        (lambda (_%obj94744%_ _%val94745%_)
          (##direct-structure-set!
           _%obj94744%_
           _%val94745%_
           _%field94742%_
           _%klass94740%_
           _%slot94741%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94734%_ _%slot94735%_ _%field94736%_)
        (lambda (_%obj94738%_)
          (##structure-ref
           _%obj94738%_
           _%field94736%_
           _%klass94734%_
           _%slot94735%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94727%_ _%slot94728%_ _%field94729%_)
        (lambda (_%obj94731%_ _%val94732%_)
          (##structure-set!
           _%obj94731%_
           _%val94732%_
           _%field94729%_
           _%klass94727%_
           _%slot94728%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94721%_ _%slot94722%_ _%field94723%_)
        (lambda (_%obj94725%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94725%_
             _%field94723%_
             _%klass94721%_
             _%slot94722%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94714%_ _%slot94715%_ _%field94716%_)
        (lambda (_%obj94718%_ _%val94719%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94718%_
             _%val94719%_
             _%field94716%_
             _%klass94714%_
             _%slot94715%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94708%_ _%slot94709%_ _%field94710%_)
        (lambda (_%obj94712%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94708%_ _%obj94712%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94712%_ _%field94710%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94712%_
                 _%klass94708%_
                 _%slot94709%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94701%_ _%slot94702%_ _%field94703%_)
        (lambda (_%obj94705%_ _%val94706%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94701%_ _%obj94705%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94705%_
                 _%field94703%_
                 _%val94706%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94705%_
                 _%klass94701%_
                 _%slot94702%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94692%_ _%slot94693%_ _%field94694%_)
        (lambda (_%obj94696%_)
          (if (let ((__tmp97645
                     (let () (declare (not safe)) (##type-id _%klass94692%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94696%_ __tmp97645))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-ref _%obj94696%_ _%field94694%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94692%_ _%obj94696%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _%obj94696%_ _%slot94693%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94696%_
                       _%klass94692%_
                       _%slot94693%_))))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94682%_ _%slot94683%_ _%field94684%_)
        (lambda (_%obj94686%_ _%val94687%_)
          (if (let ((__tmp97646
                     (let () (declare (not safe)) (##type-id _%klass94682%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94686%_ __tmp97646))
              (let ()
                (let ()
                  (declare (not safe))
                  (unchecked-field-set!
                   _%obj94686%_
                   _%field94684%_
                   _%val94687%_)))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94682%_ _%obj94686%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-set!
                       _%obj94686%_
                       _%slot94683%_
                       _%val94687%_)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (not-an-instance__%
                       _%obj94686%_
                       _%klass94682%_
                       _%slot94683%_))))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94676%_ _%slot94677%_ _%field94678%_)
        (lambda (_%obj94680%_)
          (if (let ((__tmp97647
                     (let () (declare (not safe)) (##type-id _%klass94676%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94680%_ __tmp97647))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94680%_ _%field94678%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94680%_ _%slot94677%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94669%_ _%slot94670%_ _%field94671%_)
        (lambda (_%obj94673%_ _%val94674%_)
          (if (let ((__tmp97648
                     (let () (declare (not safe)) (##type-id _%klass94669%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94673%_ __tmp97648))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94673%_
                 _%field94671%_
                 _%val94674%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj94673%_
                 _%slot94670%_
                 _%val94674%_))))))
    (define class-slot-offset
      (lambda (_%klass94644%_ _%slot94645%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94644%_ 'class))
              (let ()
                (let ((_%klass94649%_ _%klass94644%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94645%_))
                      (let ()
                        (let ((_%slot94659%_ _%slot94645%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-offset
                               _%klass94649%_
                               _%slot94659%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94645%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass94644%_)))))
    (define __class-slot-offset
      (lambda (_%klass94623%_ _%slot94624%_)
        (let ()
          (let ((_%klass94627%_ _%klass94623%_))
            (let ((_%slot94635%_ _%slot94624%_))
              (let ()
                (let ((__tmp97649
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94627%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97649 _%slot94635%_ '#f))))))))
    (define class-slot-ref
      (lambda (_%klass94597%_ _%obj94598%_ _%slot94599%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94597%_ 'class))
              (let ()
                (let ((_%klass94603%_ _%klass94597%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94599%_))
                      (let ()
                        (let ((_%slot94613%_ _%slot94599%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-ref
                               _%klass94603%_
                               _%obj94598%_
                               _%slot94613%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94599%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass94597%_)))))
    (define __class-slot-ref
      (lambda (_%klass94573%_ _%obj94574%_ _%slot94575%_)
        (let ()
          (let ((_%klass94578%_ _%klass94573%_))
            (let ((_%slot94586%_ _%slot94575%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94578%_ _%obj94574%_))
                    (let ((_%off94595%_
                           (let ((__tmp97650
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94574%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97650 _%slot94586%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%obj94574%_
                       _%off94595%_
                       _%klass94578%_
                       _%slot94586%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94574%_ _%klass94578%_)))))))))
    (define class-slot-set!
      (lambda (_%klass94546%_ _%obj94547%_ _%slot94548%_ _%val94549%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94546%_ 'class))
              (let ()
                (let ((_%klass94553%_ _%klass94546%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot94548%_))
                      (let ()
                        (let ((_%slot94563%_ _%slot94548%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__class-slot-set!
                               _%klass94553%_
                               _%obj94547%_
                               _%slot94563%_
                               _%val94549%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94548%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass94546%_)))))
    (define __class-slot-set!
      (lambda (_%klass94521%_ _%obj94522%_ _%slot94523%_ _%val94524%_)
        (let ()
          (let ((_%klass94527%_ _%klass94521%_))
            (let ((_%slot94535%_ _%slot94523%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94527%_ _%obj94522%_))
                    (let ((_%off94544%_
                           (let ((__tmp97651
                                  (let ()
                                    (declare (not safe))
                                    (##structure-type _%obj94522%_))))
                             (declare (not safe))
                             (class-slot-offset __tmp97651 _%slot94535%_))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94522%_
                       _%val94524%_
                       _%off94544%_
                       _%klass94527%_
                       _%slot94535%_))
                    (let ()
                      (declare (not safe))
                      (not-an-instance__0 _%obj94522%_ _%klass94527%_)))))))))
    (define unchecked-field-ref
      (lambda (_%obj94518%_ _%off94519%_)
        (let ((__tmp97652
               (let () (declare (not safe)) (##structure-type _%obj94518%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94518%_
           _%off94519%_
           __tmp97652
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94514%_ _%off94515%_ _%val94516%_)
        (let ((__tmp97653
               (let () (declare (not safe)) (##structure-type _%obj94514%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94514%_
           _%val94516%_
           _%off94515%_
           __tmp97653
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94511%_ _%slot94512%_)
        (let ((__tmp97654
               (let ((__tmp97655
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94511%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97655 _%slot94512%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj94511%_ __tmp97654))))
    (define unchecked-slot-set!
      (lambda (_%obj94507%_ _%slot94508%_ _%val94509%_)
        (let ((__tmp97656
               (let ((__tmp97657
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94507%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97657 _%slot94508%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj94507%_ __tmp97656 _%val94509%_))))
    (define slot-ref__%
      (lambda (_%obj94469%_ _%slot94470%_ _%E94471%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94470%_))
              (let ()
                (let ((_%slot94475%_ _%slot94470%_))
                  (if (let () (declare (not safe)) (procedure? _%E94471%_))
                      (let ()
                        (let ((_%E94485%_ _%E94471%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-ref__%
                               _%obj94469%_
                               _%slot94475%_
                               _%E94485%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E94471%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot94470%_)))))
    (define slot-ref__0
      (lambda (_%obj94498%_ _%slot94499%_)
        (let ((_%E94501%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj94498%_ _%slot94499%_ _%E94501%_))))
    (define slot-ref
      (lambda _g97659_
        (let ((_g97658_ (let () (declare (not safe)) (##length _g97659_))))
          (cond ((let () (declare (not safe)) (##fx= _g97658_ 2))
                 (apply (lambda (_%obj94498%_ _%slot94499%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj94498%_ _%slot94499%_)))
                        _g97659_))
                ((let () (declare (not safe)) (##fx= _g97658_ 3))
                 (apply (lambda (_%obj94503%_ _%slot94504%_ _%E94505%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj94503%_
                             _%slot94504%_
                             _%E94505%_)))
                        _g97659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97659_))))))
    (define __slot-ref__%
      (lambda (_%obj94425%_ _%slot94426%_ _%E94427%_)
        (let ()
          (let ((_%slot94430%_ _%slot94426%_))
            (let ((_%E94438%_ _%E94427%_))
              (let ()
                (let* ((_%klass94447%_
                        (let () (declare (not safe)) (class-of _%obj94425%_)))
                       (_%$e94450%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94447%_ _%slot94430%_))))
                  (if _%$e94450%_
                      ((lambda (_%off94453%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-ref _%obj94425%_ _%off94453%_)))
                       _%$e94450%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94438%_ _%obj94425%_ _%slot94430%_)))))))))))
    (define __slot-ref__0
      (lambda (_%obj94459%_ _%slot94460%_)
        (let ((_%E94462%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94459%_ _%slot94460%_ _%E94462%_))))
    (define __slot-ref
      (lambda _g97661_
        (let ((_g97660_ (let () (declare (not safe)) (##length _g97661_))))
          (cond ((let () (declare (not safe)) (##fx= _g97660_ 2))
                 (apply (lambda (_%obj94459%_ _%slot94460%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94459%_ _%slot94460%_)))
                        _g97661_))
                ((let () (declare (not safe)) (##fx= _g97660_ 3))
                 (apply (lambda (_%obj94464%_ _%slot94465%_ _%E94466%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94464%_
                             _%slot94465%_
                             _%E94466%_)))
                        _g97661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97661_))))))
    (define slot-set!__%
      (lambda (_%obj94383%_ _%slot94384%_ _%val94385%_ _%E94386%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94384%_))
              (let ()
                (let ((_%slot94390%_ _%slot94384%_))
                  (if (let () (declare (not safe)) (procedure? _%E94386%_))
                      (let ()
                        (let ((_%E94400%_ _%E94386%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__slot-set!__%
                               _%obj94383%_
                               _%slot94390%_
                               _%val94385%_
                               _%E94400%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94386%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot94384%_)))))
    (define slot-set!__0
      (lambda (_%obj94413%_ _%slot94414%_ _%val94415%_)
        (let ((_%E94417%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94413%_ _%slot94414%_ _%val94415%_ _%E94417%_))))
    (define slot-set!
      (lambda _g97663_
        (let ((_g97662_ (let () (declare (not safe)) (##length _g97663_))))
          (cond ((let () (declare (not safe)) (##fx= _g97662_ 3))
                 (apply (lambda (_%obj94413%_ _%slot94414%_ _%val94415%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94413%_
                             _%slot94414%_
                             _%val94415%_)))
                        _g97663_))
                ((let () (declare (not safe)) (##fx= _g97662_ 4))
                 (apply (lambda (_%obj94419%_
                                 _%slot94420%_
                                 _%val94421%_
                                 _%E94422%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94419%_
                             _%slot94420%_
                             _%val94421%_
                             _%E94422%_)))
                        _g97663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97663_))))))
    (define __slot-set!__%
      (lambda (_%obj94336%_ _%slot94337%_ _%val94338%_ _%E94339%_)
        (let ()
          (let ((_%slot94342%_ _%slot94337%_))
            (let ((_%E94350%_ _%E94339%_))
              (let ()
                (let* ((_%klass94359%_
                        (let () (declare (not safe)) (class-of _%obj94336%_)))
                       (_%$e94362%_
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _%klass94359%_ _%slot94342%_))))
                  (if _%$e94362%_
                      ((lambda (_%off94365%_)
                         (let ()
                           (declare (not safe))
                           (unchecked-field-set!
                            _%obj94336%_
                            _%off94365%_
                            _%val94338%_)))
                       _%$e94362%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (_%E94350%_ _%obj94336%_ _%slot94342%_)))))))))))
    (define __slot-set!__0
      (lambda (_%obj94371%_ _%slot94372%_ _%val94373%_)
        (let ((_%E94375%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94371%_
           _%slot94372%_
           _%val94373%_
           _%E94375%_))))
    (define __slot-set!
      (lambda _g97665_
        (let ((_g97664_ (let () (declare (not safe)) (##length _g97665_))))
          (cond ((let () (declare (not safe)) (##fx= _g97664_ 3))
                 (apply (lambda (_%obj94371%_ _%slot94372%_ _%val94373%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94371%_
                             _%slot94372%_
                             _%val94373%_)))
                        _g97665_))
                ((let () (declare (not safe)) (##fx= _g97664_ 4))
                 (apply (lambda (_%obj94377%_
                                 _%slot94378%_
                                 _%val94379%_
                                 _%E94380%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94377%_
                             _%slot94378%_
                             _%val94379%_
                             _%E94380%_)))
                        _g97665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97665_))))))
    (define __slot-error
      (lambda (_%obj94332%_ _%slot94333%_)
        (error '"Cannot find slot"
               'object:
               _%obj94332%_
               'slot:
               _%slot94333%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94307%_ _%maybe-super-class94308%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94307%_ 'class))
              (let ()
                (let ((_%maybe-sub-class94312%_ _%maybe-sub-class94307%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _%maybe-super-class94308%_
                         'class))
                      (let ()
                        (let ((_%maybe-super-class94322%_
                               _%maybe-super-class94308%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__subclass?
                               _%maybe-sub-class94312%_
                               _%maybe-super-class94322%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94308%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94307%_)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94279%_ _%maybe-super-class94280%_)
        (let ()
          (let ((_%maybe-sub-class94283%_ _%maybe-sub-class94279%_))
            (let ((_%maybe-super-class94291%_ _%maybe-super-class94280%_))
              (let ()
                (let* ((_%maybe-super-class-id94300%_
                        (let ()
                          (declare (not safe))
                          (##type-id _%maybe-super-class94291%_)))
                       (_%$e94302%_
                        (eq? _%maybe-super-class-id94300%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%maybe-sub-class94283%_)))))
                  (if _%$e94302%_
                      _%$e94302%_
                      (let ((__tmp97667
                             (lambda (_%super-class94305%_)
                               (eq? (let ()
                                      (declare (not safe))
                                      (##type-id _%super-class94305%_))
                                    _%maybe-super-class-id94300%_)))
                            (__tmp97666
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%maybe-sub-class94283%_
                                '6
                                '#f
                                '#f))))
                        (declare (not safe))
                        (__ormap1 __tmp97667 __tmp97666))))))))))
    (define object?
      (lambda (_%o94276%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94276%_))
              (let ((__tmp97668
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94276%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp97668 'class))
              '#f))))
    (define object-type
      (lambda (_%o94271%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94271%_))
              (let ((_%klass94274%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94271%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94274%_ 'class))
                    _%klass94274%_
                    (error '"not an object" _%o94271%_ _%klass94274%_)))
              (error '"not an object" _%o94271%_)))))
    (define direct-instance?
      (lambda (_%klass94256%_ _%obj94257%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94256%_ 'class))
              (let ()
                (let ((_%klass94261%_ _%klass94256%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__direct-instance? _%klass94261%_ _%obj94257%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94256%_)))))
    (define __direct-instance?
      (lambda (_%klass94243%_ _%obj94244%_)
        (let ()
          (let ((_%klass94247%_ _%klass94243%_))
            (let ()
              (let ((__tmp97669
                     (let () (declare (not safe)) (##type-id _%klass94247%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94244%_ __tmp97669)))))))
    (define immediate-instance-of?
      (lambda (_%klass94239%_ _%obj94240%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94240%_))
              (eq? _%klass94239%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94240%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94224%_ _%obj94225%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94224%_ 'class))
              (let ()
                (let ((_%klass94229%_ _%klass94224%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-instance? _%klass94229%_ _%obj94225%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94224%_)))))
    (define __struct-instance?
      (lambda (_%klass94211%_ _%obj94212%_)
        (let ()
          (let ((_%klass94215%_ _%klass94211%_))
            (let ()
              (let ((__tmp97670
                     (let () (declare (not safe)) (##type-id _%klass94215%_))))
                (declare (not safe))
                (##structure-instance-of? _%obj94212%_ __tmp97670)))))))
    (define class-instance?
      (lambda (_%klass94196%_ _%obj94197%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94196%_ 'class))
              (let ()
                (let ((_%klass94201%_ _%klass94196%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class-instance? _%klass94201%_ _%obj94197%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94196%_)))))
    (define __class-instance?
      (lambda (_%klass94181%_ _%obj94182%_)
        (let ()
          (let ((_%klass94185%_ _%klass94181%_))
            (let ()
              (let ((_%type94194%_
                     (let () (declare (not safe)) (class-of _%obj94182%_))))
                (declare (not safe))
                (subclass? _%type94194%_ _%klass94185%_)))))))
    (define make-object
      (lambda (_%klass94156%_ _%k94157%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94156%_ 'class))
              (let ()
                (let ((_%klass94161%_ _%klass94156%_))
                  (if (let () (declare (not safe)) (fixnum? _%k94157%_))
                      (let ()
                        (let ((_%k94171%_ _%k94157%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__make-object _%klass94161%_ _%k94171%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94157%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94156%_)))))
    (define __make-object
      (lambda (_%klass94133%_ _%k94134%_)
        (let ()
          (let ((_%klass94137%_ _%klass94133%_))
            (let ((_%k94145%_ _%k94134%_))
              (let ()
                (if (let ()
                      (declare (not safe))
                      (__class-type-system? _%klass94137%_))
                    (error '"cannot instantiate system class"
                           'class:
                           _%klass94137%_)
                    (let ((_%obj94154%_
                           (let ()
                             (declare (not safe))
                             (##make-structure _%klass94137%_ _%k94145%_))))
                      (declare (not safe))
                      (object-fill! _%obj94154%_ '#f)))))))))
    (define object-fill!
      (lambda (_%obj94118%_ _%fill94119%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94123%_ _%obj94118%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__object-fill! _%obj94123%_ _%fill94119%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94118%_)))))
    (define __object-fill!
      (lambda (_%obj94100%_ _%fill94101%_)
        (let ()
          (let ((_%obj94104%_ _%obj94100%_))
            (let ()
              (let _%loop94113%_ ((_%i94115%_
                                   (let ((__tmp97672
                                          (let ()
                                            (declare (not safe))
                                            (##structure-length
                                             _%obj94104%_))))
                                     (declare (not safe))
                                     (##fx- __tmp97672 '1))))
                (let ()
                  (if (let () (declare (not safe)) (##fx> _%i94115%_ '0))
                      (begin
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%obj94104%_
                           _%fill94101%_
                           _%i94115%_
                           '#f
                           '#f))
                        (let ((__tmp97671
                               (let ()
                                 (declare (not safe))
                                 (##fx- _%i94115%_ '1))))
                          (declare (not safe))
                          (_%loop94113%_ __tmp97671)))
                      _%obj94104%_))))))))
    (define new-instance
      (lambda (_%klass94086%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94086%_ 'class))
              (let ()
                (let ((_%klass94090%_ _%klass94086%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__new-instance _%klass94090%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass94086%_)))))
    (define __new-instance
      (lambda (_%klass94074%_)
        (let ()
          (let ((_%klass94077%_ _%klass94074%_))
            (let ()
              (let ((__obj97568
                     (let ((__tmp97673
                            (let ((__tmp97674
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass94077%_
                                      '7
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (##vector-length __tmp97674))))
                       (declare (not safe))
                       (##make-structure _%klass94077%_ __tmp97673))))
                (let () (declare (not safe)) (object-fill! __obj97568 '#f))
                __obj97568))))))
    (define make-instance
      (lambda (_%klass94059%_ . _%args94060%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94059%_ 'class))
              (let ()
                (let ((_%klass94064%_ _%klass94059%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __make-instance
                               _%klass94064%_
                               _%args94060%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94059%_)))))
    (define __make-instance
      (lambda (_%klass94031%_ . _%args94032%_)
        (let ()
          (let ((_%klass94035%_ _%klass94031%_))
            (let ()
              (let ((_%$e94044%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass94035%_
                        '10
                        '#f
                        '#f))))
                (if _%$e94044%_
                    ((lambda (_%kons-id94047%_)
                       (let ((_%obj94049%_
                              (let ()
                                (declare (not safe))
                                (__new-instance _%klass94035%_))))
                         (let ()
                           (declare (not safe))
                           (___constructor-init!
                            _%klass94035%_
                            _%kons-id94047%_
                            _%obj94049%_
                            _%args94032%_))
                         _%obj94049%_))
                     _%$e94044%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass94035%_))
                        (let ()
                          (let ((_%obj94052%_
                                 (let ()
                                   (declare (not safe))
                                   (__new-instance _%klass94035%_))))
                            (let ()
                              (declare (not safe))
                              (__metaclass-instance-init!
                               _%klass94035%_
                               _%obj94052%_
                               _%args94032%_))
                            _%obj94052%_))
                        (if (let ((__tmp97675
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-struct? _%klass94035%_))))
                              (declare (not safe))
                              (not __tmp97675))
                            (let ()
                              (let ((_%obj94055%_
                                     (let ()
                                       (declare (not safe))
                                       (__new-instance _%klass94035%_))))
                                (let ()
                                  (declare (not safe))
                                  (___class-instance-init!
                                   _%klass94035%_
                                   _%obj94055%_
                                   _%args94032%_))
                                _%obj94055%_))
                            (if (let ((__tmp97677
                                       (let ()
                                         (declare (not safe))
                                         (__class-type-field-count
                                          _%klass94035%_)))
                                      (__tmp97676 (length _%args94032%_)))
                                  (declare (not safe))
                                  (##fx= __tmp97677 __tmp97676))
                                (let ()
                                  (apply ##structure
                                         _%klass94035%_
                                         _%args94032%_))
                                (let ()
                                  (error '"arguments don't match object size"
                                         'class:
                                         _%klass94035%_
                                         'slots:
                                         (let ()
                                           (declare (not safe))
                                           (__class-type-slot-list
                                            _%klass94035%_))
                                         'args:
                                         _%args94032%_))))))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94016%_ . _%args94017%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj94021%_ _%obj94016%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __struct-instance-init!
                               _%obj94021%_
                               _%args94017%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj94016%_)))))
    (define __struct-instance-init!
      (lambda (_%obj94003%_ . _%args94004%_)
        (let ()
          (let ((_%obj94007%_ _%obj94003%_))
            (let ()
              (if (let ((__tmp97679 (length _%args94004%_))
                        (__tmp97678
                         (let ()
                           (declare (not safe))
                           (##structure-length _%obj94007%_))))
                    (declare (not safe))
                    (##fx< __tmp97679 __tmp97678))
                  (let ()
                    (declare (not safe))
                    (___struct-instance-init! _%obj94007%_ _%args94004%_))
                  (error '"too many arguments for struct"
                         'object:
                         _%obj94007%_
                         'args:
                         _%args94004%_))
              '#!void)))))
    (define ___struct-instance-init!
      (lambda (_%obj93962%_ _%args93963%_)
        (let _%lp93965%_ ((_%k93967%_ '1) (_%rest93968%_ _%args93963%_))
          (let* ((_%rest9396993977%_ _%rest93968%_)
                 (_%else9397193985%_ (lambda () _%obj93962%_))
                 (_%K9397393991%_
                  (lambda (_%rest93988%_ _%hd93989%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj93962%_
                       _%k93967%_
                       _%hd93989%_))
                    (let ((__tmp97680
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k93967%_ '1))))
                      (declare (not safe))
                      (_%lp93965%_ __tmp97680 _%rest93988%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9396993977%_))
                (let ((_%hd9397493994%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9396993977%_)))
                      (_%tl9397593996%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9396993977%_))))
                  (let* ((_%hd93999%_ _%hd9397493994%_)
                         (_%rest94001%_ _%tl9397593996%_))
                    (declare (not safe))
                    (_%K9397393991%_ _%rest94001%_ _%hd93999%_)))
                (let () (declare (not safe)) (_%else9397193985%_)))))))
    (define class-instance-init!
      (lambda (_%obj93947%_ . _%args93948%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93952%_ _%obj93947%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __class-instance-init!
                               _%obj93952%_
                               _%args93948%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj93947%_)))))
    (define __class-instance-init!
      (lambda (_%obj93934%_ . _%args93935%_)
        (let ()
          (let ((_%obj93938%_ _%obj93934%_))
            (let ()
              (let ((__tmp97681
                     (let ()
                       (declare (not safe))
                       (##structure-type _%obj93938%_))))
                (declare (not safe))
                (___class-instance-init!
                 __tmp97681
                 _%obj93938%_
                 _%args93935%_))
              '#!void)))))
    (define ___class-instance-init!
      (lambda (_%klass93876%_ _%obj93877%_ _%args93878%_)
        (let _%lp93880%_ ((_%rest93882%_ _%args93878%_))
          (let* ((_%rest9388393893%_ _%rest93882%_)
                 (_%else9388593901%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest93882%_))
                        _%obj93877%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass93876%_
                               'rest:
                               _%rest93882%_))))
                 (_%K9388793915%_
                  (lambda (_%rest93904%_ _%val93905%_ _%key93906%_)
                    (if (let ((__tmp97682
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key93906%_))))
                          (declare (not safe))
                          (not __tmp97682))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key93906%_))
                        (let ((_%$e93909%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass93876%_
                                  _%key93906%_))))
                          (if _%$e93909%_
                              ((lambda (_%off93912%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj93877%_
                                    _%off93912%_
                                    _%val93905%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp93880%_ _%rest93904%_)))
                               _%$e93909%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass93876%_
                                       'slot:
                                       _%key93906%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9388393893%_))
                (let ((_%hd9388893918%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9388393893%_)))
                      (_%tl9388993920%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9388393893%_))))
                  (let ((_%key93923%_ _%hd9388893918%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9388993920%_))
                        (let ((_%hd9389093925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9388993920%_)))
                              (_%tl9389193927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9388993920%_))))
                          (let* ((_%val93930%_ _%hd9389093925%_)
                                 (_%rest93932%_ _%tl9389193927%_))
                            (declare (not safe))
                            (_%K9388793915%_
                             _%rest93932%_
                             _%val93930%_
                             _%key93923%_)))
                        (let () (declare (not safe)) (_%else9388593901%_)))))
                (let () (declare (not safe)) (_%else9388593901%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass93872%_ _%obj93873%_ _%args93874%_)
        (apply call-method
               _%klass93872%_
               'instance-init!
               _%obj93873%_
               _%args93874%_)))
    (define constructor-init!
      (lambda (_%klass93835%_ _%kons-id93836%_ _%obj93837%_ . _%args93838%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93835%_ 'class))
              (let ()
                (let ((_%klass93842%_ _%klass93835%_))
                  (if (let () (declare (not safe)) (symbol? _%kons-id93836%_))
                      (let ()
                        (let ((_%kons-id93852%_ _%kons-id93836%_))
                          (if '#t
                              (let ()
                                (let ((_%obj93862%_ _%obj93837%_))
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (##apply __constructor-init!
                                               _%klass93842%_
                                               _%kons-id93852%_
                                               _%obj93862%_
                                               _%args93838%_)))))
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                               'contract:
                               'true
                               'value:
                               _%obj93837%_))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id93836%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass93835%_)))))
    (define __constructor-init!
      (lambda (_%klass93804%_ _%kons-id93805%_ _%obj93806%_ . _%args93807%_)
        (let ()
          (let ((_%klass93810%_ _%klass93804%_))
            (let ((_%kons-id93818%_ _%kons-id93805%_))
              (let ((_%obj93826%_ _%obj93806%_))
                (let ()
                  (let ()
                    (declare (not safe))
                    (___constructor-init!
                     _%klass93810%_
                     _%kons-id93818%_
                     _%obj93826%_
                     _%args93807%_))
                  '#!void)))))))
    (define ___constructor-init!
      (lambda (_%klass93793%_ _%kons-id93794%_ _%obj93795%_ _%args93796%_)
        (let ((_%$e93798%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass93793%_
                  _%obj93795%_
                  _%kons-id93794%_))))
          (if _%$e93798%_
              ((lambda (_%kons93801%_)
                 (apply _%kons93801%_ _%obj93795%_ _%args93796%_)
                 _%obj93795%_)
               _%$e93798%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass93793%_
                       'method:
                       _%kons-id93794%_))))))
    (define struct-copy
      (lambda (_%struct93779%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%struct93783%_ _%struct93779%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct-copy _%struct93783%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct93779%_)))))
    (define __struct-copy
      (lambda (_%struct93767%_)
        (let ()
          (let ((_%struct93770%_ _%struct93767%_))
            (let ()
              (let ()
                (declare (not safe))
                (##structure-copy _%struct93770%_)))))))
    (define struct->list
      (lambda (_%obj93753%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93757%_ _%obj93753%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__struct->list _%obj93757%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj93753%_)))))
    (define __struct->list
      (lambda (_%obj93741%_)
        (let ()
          (let ((_%obj93744%_ _%obj93741%_))
            (let ()
              (let () (declare (not safe)) (##vector->list _%obj93744%_)))))))
    (define class->list
      (lambda (_%obj93727%_)
        (let ()
          (if '#t
              (let ()
                (let ((_%obj93731%_ _%obj93727%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__class->list _%obj93731%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj93727%_)))))
    (define __class->list
      (lambda (_%obj93703%_)
        (let ()
          (let ((_%obj93706%_ _%obj93703%_))
            (let ()
              (let* ((_%klass93715%_
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj93706%_)))
                     (_%slot-vector93717%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%klass93715%_
                         '7
                         '#f
                         '#f))))
                (let _%loop93719%_ ((_%index93721%_
                                     (let ((__tmp97688
                                            (let ()
                                              (declare (not safe))
                                              (##vector-length
                                               _%slot-vector93717%_))))
                                       (declare (not safe))
                                       (##fx- __tmp97688 '1)))
                                    (_%plist93722%_ '()))
                  (let ()
                    (if (let () (declare (not safe)) (##fx< _%index93721%_ '1))
                        (cons _%klass93715%_ _%plist93722%_)
                        (let ((_%slot93725%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref
                                  _%slot-vector93717%_
                                  _%index93721%_))))
                          (let ((__tmp97687
                                 (let ()
                                   (declare (not safe))
                                   (##fx- _%index93721%_ '1)))
                                (__tmp97683
                                 (let ((__tmp97686
                                        (let ()
                                          (declare (not safe))
                                          (symbol->keyword _%slot93725%_)))
                                       (__tmp97684
                                        (let ((__tmp97685
                                               (let ()
                                                 (declare (not safe))
                                                 (unchecked-field-ref
                                                  _%obj93706%_
                                                  _%index93721%_))))
                                          (declare (not safe))
                                          (cons __tmp97685 _%plist93722%_))))
                                   (declare (not safe))
                                   (cons __tmp97686 __tmp97684))))
                            (declare (not safe))
                            (_%loop93719%_ __tmp97687 __tmp97683))))))))))))
    (define call-method
      (lambda (_%obj93687%_ _%id93688%_ . _%args93689%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93688%_))
              (let ()
                (let ((_%id93693%_ _%id93688%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (##apply __call-method
                               _%obj93687%_
                               _%id93693%_
                               _%args93689%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id93688%_)))))
    (define __call-method
      (lambda (_%obj93656%_ _%id93657%_ . _%args93658%_)
        (let ()
          (let ((_%id93661%_ _%id93657%_))
            (let ()
              (let ((_%$e93670%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93656%_ _%id93661%_))))
                (if _%$e93670%_
                    ((lambda (_%method93673%_)
                       (let ((_%method93675%_ _%method93673%_))
                         (apply _%method93675%_ _%obj93656%_ _%args93658%_)))
                     _%$e93670%_)
                    (let ()
                      (error '"cannot find method"
                             'object:
                             _%obj93656%_
                             'method:
                             _%id93661%_)))))))))
    (define method-ref
      (lambda (_%obj93641%_ _%id93642%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93642%_))
              (let ()
                (let ((_%id93646%_ _%id93642%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__method-ref _%obj93641%_ _%id93646%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
               'contract:
               'symbol?
               'value:
               _%id93642%_)))))
    (define __method-ref
      (lambda (_%obj93628%_ _%id93629%_)
        (let ()
          (let ((_%id93632%_ _%id93629%_))
            (let ()
              (let ((__tmp97689
                     (let () (declare (not safe)) (class-of _%obj93628%_))))
                (declare (not safe))
                (__find-method __tmp97689 _%obj93628%_ _%id93632%_)))))))
    (define checked-method-ref
      (lambda (_%obj93621%_ _%id93622%_)
        (let ()
          (let ((_%$e93625%_
                 (let ()
                   (declare (not safe))
                   (method-ref _%obj93621%_ _%id93622%_))))
            (if _%$e93625%_
                _%$e93625%_
                (error '"missing method"
                       'object:
                       _%obj93621%_
                       'method:
                       _%id93622%_))))))
    (define bound-method-ref
      (lambda (_%obj93606%_ _%id93607%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93607%_))
              (let ()
                (let ((_%id93611%_ _%id93607%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__bound-method-ref _%obj93606%_ _%id93611%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
               'contract:
               'symbol?
               'value:
               _%id93607%_)))))
    (define __bound-method-ref
      (lambda (_%obj93574%_ _%id93575%_)
        (let ()
          (let ((_%id93578%_ _%id93575%_))
            (let ()
              (let ((_%$e93587%_
                     (let ()
                       (declare (not safe))
                       (__method-ref _%obj93574%_ _%id93578%_))))
                (if _%$e93587%_
                    ((lambda (_%method93590%_)
                       (let ((_%method93592%_ _%method93590%_))
                         (lambda _%args93603%_
                           (apply _%method93592%_
                                  _%obj93574%_
                                  _%args93603%_))))
                     _%$e93587%_)
                    (let () '#f))))))))
    (define checked-bound-method-ref
      (lambda (_%obj93559%_ _%id93560%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93560%_))
              (let ()
                (let ((_%id93564%_ _%id93560%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__checked-bound-method-ref _%obj93559%_ _%id93564%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
               'contract:
               'symbol?
               'value:
               _%id93560%_)))))
    (define __checked-bound-method-ref
      (lambda (_%obj93542%_ _%id93543%_)
        (let ()
          (let ((_%id93546%_ _%id93543%_))
            (let ()
              (let ((_%method93555%_
                     (let ()
                       (declare (not safe))
                       (checked-method-ref _%obj93542%_ _%id93546%_))))
                (lambda _%args93557%_
                  (apply _%method93555%_ _%obj93542%_ _%args93557%_))))))))
    (define find-method
      (lambda (_%klass93516%_ _%obj93517%_ _%id93518%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93516%_ 'class))
              (let ()
                (let ((_%klass93522%_ _%klass93516%_))
                  (if (let () (declare (not safe)) (symbol? _%id93518%_))
                      (let ()
                        (let ((_%id93532%_ _%id93518%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__find-method
                               _%klass93522%_
                               _%obj93517%_
                               _%id93532%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id93518%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
               'contract:
               'class-type?
               'value:
               _%klass93516%_)))))
    (define __find-method
      (lambda (_%klass93489%_ _%obj93490%_ _%id93491%_)
        (let ()
          (let ((_%klass93494%_ _%klass93489%_))
            (let ((_%id93502%_ _%id93491%_))
              (let ()
                (let ((_%$e93511%_
                       (let ()
                         (declare (not safe))
                         (__direct-method-ref
                          _%klass93494%_
                          _%obj93490%_
                          _%id93502%_))))
                  (if _%$e93511%_
                      _%$e93511%_
                      (if (let ()
                            (declare (not safe))
                            (__class-type-sealed? _%klass93494%_))
                          (let () '#f)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93494%_
                               _%obj93490%_
                               _%id93502%_))))))))))))
    (define mixin-find-method
      (lambda (_%mixins93473%_ _%obj93474%_ _%id93475%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93475%_))
              (let ()
                (let ((_%id93479%_ _%id93475%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__mixin-find-method
                       _%mixins93473%_
                       _%obj93474%_
                       _%id93479%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
               'contract:
               'symbol?
               'value:
               _%id93475%_)))))
    (define __mixin-find-method
      (lambda (_%mixins93455%_ _%obj93456%_ _%id93457%_)
        (let ()
          (let ((_%id93460%_ _%id93457%_))
            (let ()
              (let ((__tmp97690
                     (lambda (_%g9346893470%_)
                       (let ()
                         (declare (not safe))
                         (direct-method-ref
                          _%g9346893470%_
                          _%obj93456%_
                          _%id93460%_)))))
                (declare (not safe))
                (__ormap1 __tmp97690 _%mixins93455%_)))))))
    (define direct-method-ref
      (lambda (_%klass93429%_ _%obj93430%_ _%id93431%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93429%_ 'class))
              (let ()
                (let ((_%klass93435%_ _%klass93429%_))
                  (if (let () (declare (not safe)) (symbol? _%id93431%_))
                      (let ()
                        (let ((_%id93445%_ _%id93431%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__direct-method-ref
                               _%klass93435%_
                               _%obj93430%_
                               _%id93445%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93431%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
               'contract:
               'class-type?
               'value:
               _%klass93429%_)))))
    (define __direct-method-ref
      (lambda (_%klass93383%_ _%obj93384%_ _%id93385%_)
        (let ()
          (let ((_%klass93388%_ _%klass93383%_))
            (let ((_%id93396%_ _%id93385%_))
              (let ()
                (letrec ((_%metaclass-resolve-method93405%_
                          (lambda ()
                            (let ((__method97569
                                   (let ()
                                     (declare (not safe))
                                     (__method-ref
                                      _%klass93388%_
                                      'direct-method-ref))))
                              (if __method97569
                                  (__method97569
                                   _%klass93388%_
                                   _%obj93384%_
                                   _%id93396%_)
                                  (error '"Missing method"
                                         _%klass93388%_
                                         'direct-method-ref)))))
                         (_%metaclass-resolve-method!93406%_
                          (lambda ()
                            (let ((_%method93426%_
                                   (let ()
                                     (declare (not safe))
                                     (_%metaclass-resolve-method93405%_))))
                              (let ((__tmp97692
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%klass93388%_
                                        '11
                                        '#f
                                        '#f)))
                                    (__tmp97691
                                     (if _%method93426%_ 'resolved 'unknown)))
                                (declare (not safe))
                                (symbolic-table-set!
                                 __tmp97692
                                 _%id93396%_
                                 __tmp97691))
                              _%method93426%_))))
                  (let ((_%$e93408%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93388%_
                            '11
                            '#f
                            '#f))))
                    (if _%$e93408%_
                        ((lambda (_%ht93411%_)
                           (let ((_%method93413%_
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-ref
                                     _%ht93411%_
                                     _%id93396%_
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (procedure? _%method93413%_))
                                 (let () _%method93413%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__class-type-metaclass?
                                        _%klass93388%_))
                                     (let ()
                                       (let ((_%$e93417%_ _%method93413%_))
                                         (if (eq? 'resolved _%$e93417%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%metaclass-resolve-method93405%_))
                                             (if (eq? 'unknown _%$e93417%_)
                                                 '#f
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%metaclass-resolve-method!93406%_))))))
                                     (let () '#f)))))
                         _%$e93408%_)
                        (if (let ()
                              (declare (not safe))
                              (__class-type-metaclass? _%klass93388%_))
                            (let ()
                              (let ((_%tab93422%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93388%_
                                   _%tab93422%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%metaclass-resolve-method!93406%_))))
                            (let () '#f)))))))))))
    (define mixin-method-ref
      (lambda (_%klass93357%_ _%obj93358%_ _%id93359%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93357%_ 'class))
              (let ()
                (let ((_%klass93363%_ _%klass93357%_))
                  (if (let () (declare (not safe)) (symbol? _%id93359%_))
                      (let ()
                        (let ((_%id93373%_ _%id93359%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__mixin-method-ref
                               _%klass93363%_
                               _%obj93358%_
                               _%id93373%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93359%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
               'contract:
               'class-type?
               'value:
               _%klass93357%_)))))
    (define __mixin-method-ref
      (lambda (_%klass93335%_ _%obj93336%_ _%id93337%_)
        (let ()
          (let ((_%klass93340%_ _%klass93335%_))
            (let ((_%id93348%_ _%id93337%_))
              (let ()
                (let ((__tmp97693
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93340%_
                          '6
                          '#f
                          '#f))))
                  (declare (not safe))
                  (__mixin-find-method
                   __tmp97693
                   _%obj93336%_
                   _%id93348%_))))))))
    (define bind-method!__%
      (lambda (_%klass93294%_ _%id93295%_ _%proc93296%_ _%rebind?93297%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93295%_))
              (let ()
                (let ((_%id93301%_ _%id93295%_))
                  (if (let () (declare (not safe)) (procedure? _%proc93296%_))
                      (let ()
                        (let ((_%proc93311%_ _%proc93296%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__bind-method!__%
                               _%klass93294%_
                               _%id93301%_
                               _%proc93311%_
                               _%rebind?93297%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93296%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
               'contract:
               'symbol?
               'value:
               _%id93295%_)))))
    (define bind-method!__0
      (lambda (_%klass93324%_ _%id93325%_ _%proc93326%_)
        (let ((_%rebind?93328%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93324%_
           _%id93325%_
           _%proc93326%_
           _%rebind?93328%_))))
    (define bind-method!
      (lambda _g97695_
        (let ((_g97694_ (let () (declare (not safe)) (##length _g97695_))))
          (cond ((let () (declare (not safe)) (##fx= _g97694_ 3))
                 (apply (lambda (_%klass93324%_ _%id93325%_ _%proc93326%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93324%_
                             _%id93325%_
                             _%proc93326%_)))
                        _g97695_))
                ((let () (declare (not safe)) (##fx= _g97694_ 4))
                 (apply (lambda (_%klass93330%_
                                 _%id93331%_
                                 _%proc93332%_
                                 _%rebind?93333%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93330%_
                             _%id93331%_
                             _%proc93332%_
                             _%rebind?93333%_)))
                        _g97695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97695_))))))
    (define __bind-method!__%
      (lambda (_%klass93245%_ _%id93246%_ _%proc93247%_ _%rebind?93248%_)
        (let ()
          (let ((_%id93251%_ _%id93246%_))
            (let ((_%proc93259%_ _%proc93247%_))
              (let ()
                (letrec ((_%bind!93268%_
                          (lambda (_%ht93277%_)
                            (if (and (let ()
                                       (declare (not safe))
                                       (not _%rebind?93248%_))
                                     (let ()
                                       (declare (not safe))
                                       (symbolic-table-ref
                                        _%ht93277%_
                                        _%id93251%_
                                        '#f)))
                                (error '"method already bound"
                                       'class:
                                       _%klass93245%_
                                       'method:
                                       _%id93251%_)
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (symbolic-table-set!
                                     _%ht93277%_
                                     _%id93251%_
                                     _%proc93259%_))
                                  '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%klass93245%_ 'class))
                      (let ()
                        (let ((_%ht93271%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93245%_
                                  '11
                                  '#f
                                  '#f))))
                          (if _%ht93271%_
                              (let ()
                                (declare (not safe))
                                (_%bind!93268%_ _%ht93271%_))
                              (let ((_%ht93273%_
                                     (let ()
                                       (declare (not safe))
                                       (make-symbolic-table__% '#f '0))))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass93245%_
                                   _%ht93273%_
                                   '11
                                   '#f
                                   '#f))
                                (let ()
                                  (declare (not safe))
                                  (_%bind!93268%_ _%ht93273%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##type? _%klass93245%_))
                          (let ()
                            (let ((__tmp97696
                                   (let ()
                                     (declare (not safe))
                                     (__shadow-class _%klass93245%_))))
                              (declare (not safe))
                              (__bind-method!
                               __tmp97696
                               _%id93251%_
                               _%proc93259%_
                               _%rebind?93248%_)))
                          (let ()
                            (error '"bad class; expected class or builtin type"
                                   _%klass93245%_)))))))))))
    (define __bind-method!__0
      (lambda (_%klass93282%_ _%id93283%_ _%proc93284%_)
        (let ((_%rebind?93286%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93282%_
           _%id93283%_
           _%proc93284%_
           _%rebind?93286%_))))
    (define __bind-method!
      (lambda _g97698_
        (let ((_g97697_ (let () (declare (not safe)) (##length _g97698_))))
          (cond ((let () (declare (not safe)) (##fx= _g97697_ 3))
                 (apply (lambda (_%klass93282%_ _%id93283%_ _%proc93284%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93282%_
                             _%id93283%_
                             _%proc93284%_)))
                        _g97698_))
                ((let () (declare (not safe)) (##fx= _g97697_ 4))
                 (apply (lambda (_%klass93288%_
                                 _%id93289%_
                                 _%proc93290%_
                                 _%rebind?93291%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93288%_
                             _%id93289%_
                             _%proc93290%_
                             _%rebind?93291%_)))
                        _g97698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97698_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93225%_ _%seed93227%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93225%_
           procedure-hash
           eq?
           _%seed93227%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93233%_ '#f) (_%seed93235%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93233%_
           _%seed93235%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93237%_)
        (let ((_%seed93239%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93237%_
           _%seed93239%_))))
    (define make-method-specializer-table
      (lambda _g97700_
        (let ((_g97699_ (let () (declare (not safe)) (##length _g97700_))))
          (cond ((let () (declare (not safe)) (##fx= _g97699_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g97700_))
                ((let () (declare (not safe)) (##fx= _g97699_ 1))
                 (apply (lambda (_%size-hint93237%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93237%_)))
                        _g97700_))
                ((let () (declare (not safe)) (##fx= _g97699_ 2))
                 (apply (lambda (_%size-hint93241%_ _%seed93242%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93241%_
                             _%seed93242%_)))
                        _g97700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97700_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93178%_ _%key93179%_ _%default93180%_)
        (let ((_%table93182%_
               (let () (declare (not safe)) (&raw-table-table _%tab93178%_)))
              (_%seed93183%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93178%_))))
          (let* ((_%h93185%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93179%_))
                         _%seed93183%_))
                 (_%size93188%_ (vector-length _%table93182%_))
                 (_%entries93191%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93188%_ '2)))
                 (_%start93194%_
                  (let ((__tmp97701
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93185%_ _%entries93191%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97701 '1))))
            (let _%loop93198%_ ((_%probe93201%_ _%start93194%_)
                                (_%i93203%_ '1)
                                (_%deleted93205%_ '#f))
              (let ((_%k93208%_ (vector-ref _%table93182%_ _%probe93201%_)))
                (if (eq? _%k93208%_ (macro-unused-obj))
                    (let () _%default93180%_)
                    (if (eq? _%k93208%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97704
                                 (let ((_%next-probe93213%_
                                        (fx+ _%start93194%_
                                             _%i93203%_
                                             (fx* _%i93203%_ _%i93203%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93213%_
                                    _%size93188%_)))
                                (__tmp97703
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93203%_ '1)))
                                (__tmp97702
                                 (let ((_%$e93216%_ _%deleted93205%_))
                                   (if _%$e93216%_
                                       _%$e93216%_
                                       _%probe93201%_))))
                            (declare (not safe))
                            (_%loop93198%_ __tmp97704 __tmp97703 __tmp97702)))
                        (if (eq? _%key93179%_ _%k93208%_)
                            (let ()
                              (vector-ref
                               _%table93182%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93201%_ '1))))
                            (let ()
                              (let ((__tmp97706
                                     (let ((_%next-probe93221%_
                                            (fx+ _%start93194%_
                                                 _%i93203%_
                                                 (fx* _%i93203%_ _%i93203%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93221%_
                                        _%size93188%_)))
                                    (__tmp97705
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93203%_ '1))))
                                (declare (not safe))
                                (_%loop93198%_
                                 __tmp97706
                                 __tmp97705
                                 _%deleted93205%_))))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93174%_ _%key93175%_ _%value93176%_)
        (if (let ((__tmp97709
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93174%_)))
                  (__tmp97707
                   (let ((__tmp97708
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93174%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97708 '4))))
              (declare (not safe))
              (##fx< __tmp97709 __tmp97707))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93174%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93174%_
           _%key93175%_
           _%value93176%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93125%_ _%key93126%_ _%value93127%_)
        (let ((_%table93130%_
               (let () (declare (not safe)) (&raw-table-table _%tab93125%_)))
              (_%seed93131%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93125%_))))
          (let* ((_%h93133%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93126%_))
                         _%seed93131%_))
                 (_%size93136%_ (vector-length _%table93130%_))
                 (_%entries93139%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93136%_ '2)))
                 (_%start93142%_
                  (let ((__tmp97710
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93133%_ _%entries93139%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97710 '1))))
            (let _%loop93146%_ ((_%probe93149%_ _%start93142%_)
                                (_%i93151%_ '1)
                                (_%deleted93153%_ '#f))
              (let ((_%k93156%_ (vector-ref _%table93130%_ _%probe93149%_)))
                (if (eq? _%k93156%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93153%_
                          (begin
                            (vector-set!
                             _%table93130%_
                             _%deleted93153%_
                             _%key93126%_)
                            (vector-set!
                             _%table93130%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93153%_ '1))
                             _%value93127%_)
                            ((lambda ()
                               (let ((__tmp97711
                                      (let ((__tmp97712
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93125%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97712 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93125%_
                                  __tmp97711)))))
                          (begin
                            (vector-set!
                             _%table93130%_
                             _%probe93149%_
                             _%key93126%_)
                            (vector-set!
                             _%table93130%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93149%_ '1))
                             _%value93127%_)
                            ((lambda ()
                               (let ((__tmp97713
                                      (let ((__tmp97714
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93125%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97714 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93125%_
                                  __tmp97713))
                               (let ((__tmp97715
                                      (let ((__tmp97716
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93125%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97716 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93125%_
                                  __tmp97715)))))))
                    (if (eq? _%k93156%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97719
                                 (let ((_%next-probe93163%_
                                        (fx+ _%start93142%_
                                             _%i93151%_
                                             (fx* _%i93151%_ _%i93151%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93163%_
                                    _%size93136%_)))
                                (__tmp97718
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93151%_ '1)))
                                (__tmp97717
                                 (let ((_%$e93166%_ _%deleted93153%_))
                                   (if _%$e93166%_
                                       _%$e93166%_
                                       _%probe93149%_))))
                            (declare (not safe))
                            (_%loop93146%_ __tmp97719 __tmp97718 __tmp97717)))
                        (if (eq? _%key93126%_ _%k93156%_)
                            (let ()
                              (vector-set!
                               _%table93130%_
                               _%probe93149%_
                               _%key93126%_)
                              (vector-set!
                               _%table93130%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93149%_ '1))
                               _%value93127%_))
                            (let ()
                              (let ((__tmp97721
                                     (let ((_%next-probe93171%_
                                            (fx+ _%start93142%_
                                                 _%i93151%_
                                                 (fx* _%i93151%_ _%i93151%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93171%_
                                        _%size93136%_)))
                                    (__tmp97720
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93151%_ '1))))
                                (declare (not safe))
                                (_%loop93146%_
                                 __tmp97721
                                 __tmp97720
                                 _%deleted93153%_))))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93120%_
               _%key93121%_
               _%method-specializer-table-update!93122%_
               _%default93123%_)
        (if (let ((__tmp97724
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93120%_)))
                  (__tmp97722
                   (let ((__tmp97723
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93120%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97723 '4))))
              (declare (not safe))
              (##fx< __tmp97724 __tmp97722))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93120%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93120%_
           _%key93121%_
           _%method-specializer-table-update!93122%_
           _%default93123%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93070%_
               _%key93071%_
               _%method-specializer-table-update!93072%_
               _%default93073%_)
        (let ((_%table93076%_
               (let () (declare (not safe)) (&raw-table-table _%tab93070%_)))
              (_%seed93077%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93070%_))))
          (let* ((_%h93079%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93071%_))
                         _%seed93077%_))
                 (_%size93082%_ (vector-length _%table93076%_))
                 (_%entries93085%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93082%_ '2)))
                 (_%start93088%_
                  (let ((__tmp97725
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93079%_ _%entries93085%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97725 '1))))
            (let _%loop93092%_ ((_%probe93095%_ _%start93088%_)
                                (_%i93097%_ '1)
                                (_%deleted93099%_ '#f))
              (let ((_%k93102%_ (vector-ref _%table93076%_ _%probe93095%_)))
                (if (eq? _%k93102%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93099%_
                          (begin
                            (vector-set!
                             _%table93076%_
                             _%deleted93099%_
                             _%key93071%_)
                            (vector-set!
                             _%table93076%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93099%_ '1))
                             (_%method-specializer-table-update!93072%_
                              _%default93073%_))
                            ((lambda ()
                               (let ((__tmp97726
                                      (let ((__tmp97727
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93070%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97727 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93070%_
                                  __tmp97726)))))
                          (begin
                            (vector-set!
                             _%table93076%_
                             _%probe93095%_
                             _%key93071%_)
                            (vector-set!
                             _%table93076%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93095%_ '1))
                             (_%method-specializer-table-update!93072%_
                              _%default93073%_))
                            ((lambda ()
                               (let ((__tmp97728
                                      (let ((__tmp97729
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93070%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97729 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93070%_
                                  __tmp97728))
                               (let ((__tmp97730
                                      (let ((__tmp97731
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93070%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97731 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93070%_
                                  __tmp97730)))))))
                    (if (eq? _%k93102%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97734
                                 (let ((_%next-probe93109%_
                                        (fx+ _%start93088%_
                                             _%i93097%_
                                             (fx* _%i93097%_ _%i93097%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93109%_
                                    _%size93082%_)))
                                (__tmp97733
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93097%_ '1)))
                                (__tmp97732
                                 (let ((_%$e93112%_ _%deleted93099%_))
                                   (if _%$e93112%_
                                       _%$e93112%_
                                       _%probe93095%_))))
                            (declare (not safe))
                            (_%loop93092%_ __tmp97734 __tmp97733 __tmp97732)))
                        (if (eq? _%key93071%_ _%k93102%_)
                            (let ()
                              (vector-set!
                               _%table93076%_
                               _%probe93095%_
                               _%key93071%_)
                              (vector-set!
                               _%table93076%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93095%_ '1))
                               (_%method-specializer-table-update!93072%_
                                (vector-ref
                                 _%table93076%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93095%_ '1))))))
                            (let ()
                              (let ((__tmp97736
                                     (let ((_%next-probe93117%_
                                            (fx+ _%start93088%_
                                                 _%i93097%_
                                                 (fx* _%i93097%_ _%i93097%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93117%_
                                        _%size93082%_)))
                                    (__tmp97735
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93097%_ '1))))
                                (declare (not safe))
                                (_%loop93092%_
                                 __tmp97736
                                 __tmp97735
                                 _%deleted93099%_))))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93025%_ _%key93027%_)
        (let ((_%table93030%_
               (let () (declare (not safe)) (&raw-table-table _%tab93025%_)))
              (_%seed93032%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93025%_))))
          (let* ((_%h93035%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93027%_))
                         _%seed93032%_))
                 (_%size93038%_ (vector-length _%table93030%_))
                 (_%entries93041%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93038%_ '2)))
                 (_%start93044%_
                  (let ((__tmp97737
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93035%_ _%entries93041%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97737 '1))))
            (let _%loop93048%_ ((_%probe93051%_ _%start93044%_)
                                (_%i93053%_ '1))
              (let ((_%k93056%_ (vector-ref _%table93030%_ _%probe93051%_)))
                (if (eq? _%k93056%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93056%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97739
                                 (let ((_%next-probe93061%_
                                        (fx+ _%start93044%_
                                             _%i93053%_
                                             (fx* _%i93053%_ _%i93053%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe93061%_
                                    _%size93038%_)))
                                (__tmp97738
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i93053%_ '1))))
                            (declare (not safe))
                            (_%loop93048%_ __tmp97739 __tmp97738)))
                        (if (eq? _%key93027%_ _%k93056%_)
                            (let ()
                              (vector-set!
                               _%table93030%_
                               _%probe93051%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93030%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93051%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97740
                                        (let ((__tmp97741
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93025%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97741 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93025%_
                                    __tmp97740)))))
                            (let ()
                              (let ((__tmp97743
                                     (let ((_%next-probe93067%_
                                            (fx+ _%start93044%_
                                                 _%i93053%_
                                                 (fx* _%i93053%_ _%i93053%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe93067%_
                                        _%size93038%_)))
                                    (__tmp97742
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i93053%_ '1))))
                                (declare (not safe))
                                (_%loop93048%_
                                 __tmp97743
                                 __tmp97742))))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93016%_ _%specializer93017%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93021%_ ()
            (if (let ((__tmp97744
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97744 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93021%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93016%_
           _%specializer93017%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93006%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93010%_ ()
            (if (let ((__tmp97745
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97745 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93010%_))))))
        (let ((_%specializer93014%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93006%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93014%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93004%_)
        (let ((__tmp97746
               (let () (declare (not safe)) (##type-id _%klass93004%_))))
          (declare (not safe))
          (symbolic-hash __tmp97746))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint92985%_ _%seed92987%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint92985%_
           __class-specializer-hash-key
           eq?
           _%seed92987%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint92993%_ '#f) (_%seed92995%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92993%_ _%seed92995%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint92997%_)
        (let ((_%seed92999%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint92997%_ _%seed92999%_))))
    (define make-class-specializer-table
      (lambda _g97748_
        (let ((_g97747_ (let () (declare (not safe)) (##length _g97748_))))
          (cond ((let () (declare (not safe)) (##fx= _g97747_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g97748_))
                ((let () (declare (not safe)) (##fx= _g97747_ 1))
                 (apply (lambda (_%size-hint92997%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint92997%_)))
                        _g97748_))
                ((let () (declare (not safe)) (##fx= _g97747_ 2))
                 (apply (lambda (_%size-hint93001%_ _%seed93002%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93001%_
                             _%seed93002%_)))
                        _g97748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97748_))))))
    (define class-specializer-table-ref
      (lambda (_%tab92938%_ _%key92939%_ _%default92940%_)
        (let ((_%table92942%_
               (let () (declare (not safe)) (&raw-table-table _%tab92938%_)))
              (_%seed92943%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92938%_))))
          (let* ((_%h92945%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92939%_))
                         _%seed92943%_))
                 (_%size92948%_ (vector-length _%table92942%_))
                 (_%entries92951%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92948%_ '2)))
                 (_%start92954%_
                  (let ((__tmp97749
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92945%_ _%entries92951%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97749 '1))))
            (let _%loop92958%_ ((_%probe92961%_ _%start92954%_)
                                (_%i92963%_ '1)
                                (_%deleted92965%_ '#f))
              (let ((_%k92968%_ (vector-ref _%table92942%_ _%probe92961%_)))
                (if (eq? _%k92968%_ (macro-unused-obj))
                    (let () _%default92940%_)
                    (if (eq? _%k92968%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97752
                                 (let ((_%next-probe92973%_
                                        (fx+ _%start92954%_
                                             _%i92963%_
                                             (fx* _%i92963%_ _%i92963%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92973%_
                                    _%size92948%_)))
                                (__tmp97751
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92963%_ '1)))
                                (__tmp97750
                                 (let ((_%$e92976%_ _%deleted92965%_))
                                   (if _%$e92976%_
                                       _%$e92976%_
                                       _%probe92961%_))))
                            (declare (not safe))
                            (_%loop92958%_ __tmp97752 __tmp97751 __tmp97750)))
                        (if (eq? _%key92939%_ _%k92968%_)
                            (let ()
                              (vector-ref
                               _%table92942%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92961%_ '1))))
                            (let ()
                              (let ((__tmp97754
                                     (let ((_%next-probe92981%_
                                            (fx+ _%start92954%_
                                                 _%i92963%_
                                                 (fx* _%i92963%_ _%i92963%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92981%_
                                        _%size92948%_)))
                                    (__tmp97753
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92963%_ '1))))
                                (declare (not safe))
                                (_%loop92958%_
                                 __tmp97754
                                 __tmp97753
                                 _%deleted92965%_))))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab92934%_ _%key92935%_ _%value92936%_)
        (if (let ((__tmp97757
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92934%_)))
                  (__tmp97755
                   (let ((__tmp97756
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92934%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97756 '4))))
              (declare (not safe))
              (##fx< __tmp97757 __tmp97755))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92934%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab92934%_
           _%key92935%_
           _%value92936%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab92885%_ _%key92886%_ _%value92887%_)
        (let ((_%table92890%_
               (let () (declare (not safe)) (&raw-table-table _%tab92885%_)))
              (_%seed92891%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92885%_))))
          (let* ((_%h92893%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92886%_))
                         _%seed92891%_))
                 (_%size92896%_ (vector-length _%table92890%_))
                 (_%entries92899%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92896%_ '2)))
                 (_%start92902%_
                  (let ((__tmp97758
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92893%_ _%entries92899%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97758 '1))))
            (let _%loop92906%_ ((_%probe92909%_ _%start92902%_)
                                (_%i92911%_ '1)
                                (_%deleted92913%_ '#f))
              (let ((_%k92916%_ (vector-ref _%table92890%_ _%probe92909%_)))
                (if (eq? _%k92916%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92913%_
                          (begin
                            (vector-set!
                             _%table92890%_
                             _%deleted92913%_
                             _%key92886%_)
                            (vector-set!
                             _%table92890%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92913%_ '1))
                             _%value92887%_)
                            ((lambda ()
                               (let ((__tmp97759
                                      (let ((__tmp97760
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92885%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97760 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92885%_
                                  __tmp97759)))))
                          (begin
                            (vector-set!
                             _%table92890%_
                             _%probe92909%_
                             _%key92886%_)
                            (vector-set!
                             _%table92890%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92909%_ '1))
                             _%value92887%_)
                            ((lambda ()
                               (let ((__tmp97761
                                      (let ((__tmp97762
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92885%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97762 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92885%_
                                  __tmp97761))
                               (let ((__tmp97763
                                      (let ((__tmp97764
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92885%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97764 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92885%_
                                  __tmp97763)))))))
                    (if (eq? _%k92916%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97767
                                 (let ((_%next-probe92923%_
                                        (fx+ _%start92902%_
                                             _%i92911%_
                                             (fx* _%i92911%_ _%i92911%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92923%_
                                    _%size92896%_)))
                                (__tmp97766
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92911%_ '1)))
                                (__tmp97765
                                 (let ((_%$e92926%_ _%deleted92913%_))
                                   (if _%$e92926%_
                                       _%$e92926%_
                                       _%probe92909%_))))
                            (declare (not safe))
                            (_%loop92906%_ __tmp97767 __tmp97766 __tmp97765)))
                        (if (eq? _%key92886%_ _%k92916%_)
                            (let ()
                              (vector-set!
                               _%table92890%_
                               _%probe92909%_
                               _%key92886%_)
                              (vector-set!
                               _%table92890%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92909%_ '1))
                               _%value92887%_))
                            (let ()
                              (let ((__tmp97769
                                     (let ((_%next-probe92931%_
                                            (fx+ _%start92902%_
                                                 _%i92911%_
                                                 (fx* _%i92911%_ _%i92911%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92931%_
                                        _%size92896%_)))
                                    (__tmp97768
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92911%_ '1))))
                                (declare (not safe))
                                (_%loop92906%_
                                 __tmp97769
                                 __tmp97768
                                 _%deleted92913%_))))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab92880%_
               _%key92881%_
               _%class-specializer-table-update!92882%_
               _%default92883%_)
        (if (let ((__tmp97772
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92880%_)))
                  (__tmp97770
                   (let ((__tmp97771
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92880%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97771 '4))))
              (declare (not safe))
              (##fx< __tmp97772 __tmp97770))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92880%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab92880%_
           _%key92881%_
           _%class-specializer-table-update!92882%_
           _%default92883%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab92830%_
               _%key92831%_
               _%class-specializer-table-update!92832%_
               _%default92833%_)
        (let ((_%table92836%_
               (let () (declare (not safe)) (&raw-table-table _%tab92830%_)))
              (_%seed92837%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92830%_))))
          (let* ((_%h92839%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92831%_))
                         _%seed92837%_))
                 (_%size92842%_ (vector-length _%table92836%_))
                 (_%entries92845%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92842%_ '2)))
                 (_%start92848%_
                  (let ((__tmp97773
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92839%_ _%entries92845%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97773 '1))))
            (let _%loop92852%_ ((_%probe92855%_ _%start92848%_)
                                (_%i92857%_ '1)
                                (_%deleted92859%_ '#f))
              (let ((_%k92862%_ (vector-ref _%table92836%_ _%probe92855%_)))
                (if (eq? _%k92862%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92859%_
                          (begin
                            (vector-set!
                             _%table92836%_
                             _%deleted92859%_
                             _%key92831%_)
                            (vector-set!
                             _%table92836%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92859%_ '1))
                             (_%class-specializer-table-update!92832%_
                              _%default92833%_))
                            ((lambda ()
                               (let ((__tmp97774
                                      (let ((__tmp97775
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92830%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97775 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92830%_
                                  __tmp97774)))))
                          (begin
                            (vector-set!
                             _%table92836%_
                             _%probe92855%_
                             _%key92831%_)
                            (vector-set!
                             _%table92836%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92855%_ '1))
                             (_%class-specializer-table-update!92832%_
                              _%default92833%_))
                            ((lambda ()
                               (let ((__tmp97776
                                      (let ((__tmp97777
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92830%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97777 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92830%_
                                  __tmp97776))
                               (let ((__tmp97778
                                      (let ((__tmp97779
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92830%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97779 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92830%_
                                  __tmp97778)))))))
                    (if (eq? _%k92862%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97782
                                 (let ((_%next-probe92869%_
                                        (fx+ _%start92848%_
                                             _%i92857%_
                                             (fx* _%i92857%_ _%i92857%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92869%_
                                    _%size92842%_)))
                                (__tmp97781
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92857%_ '1)))
                                (__tmp97780
                                 (let ((_%$e92872%_ _%deleted92859%_))
                                   (if _%$e92872%_
                                       _%$e92872%_
                                       _%probe92855%_))))
                            (declare (not safe))
                            (_%loop92852%_ __tmp97782 __tmp97781 __tmp97780)))
                        (if (eq? _%key92831%_ _%k92862%_)
                            (let ()
                              (vector-set!
                               _%table92836%_
                               _%probe92855%_
                               _%key92831%_)
                              (vector-set!
                               _%table92836%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92855%_ '1))
                               (_%class-specializer-table-update!92832%_
                                (vector-ref
                                 _%table92836%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92855%_ '1))))))
                            (let ()
                              (let ((__tmp97784
                                     (let ((_%next-probe92877%_
                                            (fx+ _%start92848%_
                                                 _%i92857%_
                                                 (fx* _%i92857%_ _%i92857%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92877%_
                                        _%size92842%_)))
                                    (__tmp97783
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92857%_ '1))))
                                (declare (not safe))
                                (_%loop92852%_
                                 __tmp97784
                                 __tmp97783
                                 _%deleted92859%_))))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92785%_ _%key92787%_)
        (let ((_%table92790%_
               (let () (declare (not safe)) (&raw-table-table _%tab92785%_)))
              (_%seed92792%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92785%_))))
          (let* ((_%h92795%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92787%_))
                         _%seed92792%_))
                 (_%size92798%_ (vector-length _%table92790%_))
                 (_%entries92801%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92798%_ '2)))
                 (_%start92804%_
                  (let ((__tmp97785
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92795%_ _%entries92801%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97785 '1))))
            (let _%loop92808%_ ((_%probe92811%_ _%start92804%_)
                                (_%i92813%_ '1))
              (let ((_%k92816%_ (vector-ref _%table92790%_ _%probe92811%_)))
                (if (eq? _%k92816%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92816%_ (macro-deleted-obj))
                        (let ()
                          (let ((__tmp97787
                                 (let ((_%next-probe92821%_
                                        (fx+ _%start92804%_
                                             _%i92813%_
                                             (fx* _%i92813%_ _%i92813%_))))
                                   (declare (not safe))
                                   (##fxmodulo
                                    _%next-probe92821%_
                                    _%size92798%_)))
                                (__tmp97786
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%i92813%_ '1))))
                            (declare (not safe))
                            (_%loop92808%_ __tmp97787 __tmp97786)))
                        (if (eq? _%key92787%_ _%k92816%_)
                            (let ()
                              (vector-set!
                               _%table92790%_
                               _%probe92811%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92790%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92811%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97788
                                        (let ((__tmp97789
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92785%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97789 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92785%_
                                    __tmp97788)))))
                            (let ()
                              (let ((__tmp97791
                                     (let ((_%next-probe92827%_
                                            (fx+ _%start92804%_
                                                 _%i92813%_
                                                 (fx* _%i92813%_ _%i92813%_))))
                                       (declare (not safe))
                                       (##fxmodulo
                                        _%next-probe92827%_
                                        _%size92798%_)))
                                    (__tmp97790
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i92813%_ '1))))
                                (declare (not safe))
                                (_%loop92808%_
                                 __tmp97791
                                 __tmp97790))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92771%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92771%_ 'class))
              (let ()
                (let ((_%klass92775%_ _%klass92771%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__specialize-class _%klass92775%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass92771%_)))))
    (define __specialize-class
      (lambda (_%klass92753%_)
        (let ()
          (let ((_%klass92756%_ _%klass92753%_))
            (let ()
              (let ((_%$e92765%_
                     (let ()
                       (declare (not safe))
                       (__lookup-class-specializer _%klass92756%_))))
                (if _%$e92765%_
                    _%$e92765%_
                    (let ()
                      (let ((_%method-table92769%_
                             (let ()
                               (declare (not safe))
                               (___specialize-class _%klass92756%_))))
                        (let ()
                          (declare (not safe))
                          (__bind-class-specializer!
                           _%klass92756%_
                           _%method-table92769%_))
                        _%method-table92769%_)))))))))
    (define __lookup-class-specializer
      (lambda (_%klass92743%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92747%_ ()
            (if (let ((__tmp97792
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97792 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92747%_))))))
        (let ((_%method-table92751%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass92743%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92751%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92734%_ _%method-table92735%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92739%_ ()
            (if (let ((__tmp97793
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97793 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92739%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass92734%_
           _%method-table92735%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92718%_
               _%method-table92719%_
               _%method92720%_
               _%proc92721%_)
        (let ((_%$e92723%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92719%_
                  _%method92720%_
                  '#f))))
          (if _%$e92723%_
              _%$e92723%_
              (let ((_%$e92726%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc92721%_))))
                (if _%$e92726%_
                    ((lambda (_%specialize92729%_)
                       (let ((_%specialized-proc92731%_
                              (_%specialize92729%_
                               _%klass92718%_
                               _%method-table92719%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92719%_
                          _%method92720%_
                          _%specialized-proc92731%_)))
                     _%$e92726%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (symbolic-table-set!
                         _%method-table92719%_
                         _%method92720%_
                         _%proc92721%_)))))))))
    (define ___specialize-class
      (lambda (_%klass92660%_)
        (if (let ((__tmp97794
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass92660%_ 'class))))
              (declare (not safe))
              (not __tmp97794))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass92660%_))
                  (let ((__tmp97795
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass92660%_))))
                    (declare (not safe))
                    (__specialize-class __tmp97795))
                  (error '"bad class; cannot specialize" _%klass92660%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass92660%_))
                (let ()
                  (let ((__method97570
                         (let ()
                           (declare (not safe))
                           (__method-ref _%klass92660%_ 'specialize-class))))
                    (if __method97570
                        (__method97570 _%klass92660%_)
                        (error '"Missing method"
                               _%klass92660%_
                               'specialize-class))))
                (if (let ((__tmp97796
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92660%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97796))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass92660%_))
                    (let ()
                      (let ((_%method-table92666%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let _%loop92668%_ ((_%rest92670%_
                                             (let ()
                                               (declare (not safe))
                                               (class-precedence-list
                                                _%klass92660%_))))
                          (let* ((_%rest9267192679%_ _%rest92670%_)
                                 (_%else9267392687%_
                                  (lambda () _%method-table92666%_))
                                 (_%K9267592706%_
                                  (lambda (_%rest92690%_ _%xklass92691%_)
                                    (let ((_%xmethod-table9269292694%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%xklass92691%_
                                              '11
                                              '#f
                                              '#f))))
                                      (if _%xmethod-table9269292694%_
                                          (let* ((_%xmethod-table92697%_
                                                  _%xmethod-table9269292694%_)
                                                 (__tmp97797
                                                  (lambda (_%g9269892701%_
                                                           _%g9269992703%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (__specialize-method
                                                       _%klass92660%_
                                                       _%method-table92666%_
                                                       _%g9269892701%_
                                                       _%g9269992703%_)))))
                                            (declare (not safe))
                                            (raw-table-for-each
                                             _%xmethod-table92697%_
                                             __tmp97797))
                                          '#f))
                                    (let ()
                                      (declare (not safe))
                                      (_%loop92668%_ _%rest92690%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9267192679%_))
                                (let ((_%hd9267692709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9267192679%_)))
                                      (_%tl9267792711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9267192679%_))))
                                  (let* ((_%xklass92714%_ _%hd9267692709%_)
                                         (_%rest92716%_ _%tl9267792711%_))
                                    (declare (not safe))
                                    (_%K9267592706%_
                                     _%rest92716%_
                                     _%xklass92714%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9267392687%_))))))))))))
    (define seal-class!
      (lambda (_%klass92646%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92646%_ 'class))
              (let ()
                (let ((_%klass92650%_ _%klass92646%_))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (__seal-class! _%klass92650%_)))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
               'contract:
               'class-type?
               'value:
               _%klass92646%_)))))
    (define __seal-class!
      (lambda (_%klass92629%_)
        (let ()
          (let ((_%klass92632%_ _%klass92629%_))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (__class-type-sealed? _%klass92632%_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (__class-type-final? _%klass92632%_))
                        '#!void
                        (error '"cannot seal non-final class" _%klass92632%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass92632%_))
                        (let ()
                          (let ((__method97571
                                 (let ()
                                   (declare (not safe))
                                   (__method-ref
                                    _%klass92632%_
                                    'seal-class!))))
                            (if __method97571
                                (__method97571 _%klass92632%_)
                                (error '"Missing method"
                                       _%klass92632%_
                                       'seal-class!))))
                        (if (let ((__tmp97798
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass92632%_
                                      '6
                                      '#f
                                      '#f))))
                              (declare (not safe))
                              (__find class-type-metaclass? __tmp97798))
                            (let ()
                              (error '"cannot seal class that extends metaclass without a metaclass"
                                     _%klass92632%_))
                            (let ()
                              (let ((_%method-table92644%_
                                     (let ()
                                       (declare (not safe))
                                       (__specialize-class _%klass92632%_))))
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _%klass92632%_
                                 _%method-table92644%_
                                 '11
                                 '#f
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (__class-type-seal! _%klass92632%_)))))))))
    (define next-method
      (lambda (_%subklass92603%_ _%obj92604%_ _%id92605%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92603%_ 'class))
              (let ()
                (let ((_%subklass92609%_ _%subklass92603%_))
                  (if (let () (declare (not safe)) (symbol? _%id92605%_))
                      (let ()
                        (let ((_%id92619%_ _%id92605%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (__next-method
                               _%subklass92609%_
                               _%obj92604%_
                               _%id92619%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id92605%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
               'contract:
               'class-type?
               'value:
               _%subklass92603%_)))))
    (define __next-method
      (lambda (_%subklass92540%_ _%obj92541%_ _%id92542%_)
        (let ()
          (let ((_%subklass92545%_ _%subklass92540%_))
            (let ((_%id92553%_ _%id92542%_))
              (let ()
                (letrec ((_%find-next-method92562%_
                          (lambda (_%klass92564%_)
                            (let _%lp92566%_ ((_%rest92568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (class-precedence-list
                                                  _%klass92564%_))))
                              (let* ((_%rest9256992577%_ _%rest92568%_)
                                     (_%else9257192585%_ (lambda () '#f))
                                     (_%K9257392591%_
                                      (lambda (_%rest92588%_ _%klass92589%_)
                                        (if (eq? (let ()
                                                   (declare (not safe))
                                                   (##type-id
                                                    _%subklass92545%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _%klass92589%_)))
                                            (let ()
                                              (declare (not safe))
                                              (__mixin-find-method
                                               _%rest92588%_
                                               _%obj92541%_
                                               _%id92553%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp92566%_ _%rest92588%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest9256992577%_))
                                    (let ((_%hd9257492594%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest9256992577%_)))
                                          (_%tl9257592596%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest9256992577%_))))
                                      (let* ((_%klass92599%_ _%hd9257492594%_)
                                             (_%rest92601%_ _%tl9257592596%_))
                                        (declare (not safe))
                                        (_%K9257392591%_
                                         _%rest92601%_
                                         _%klass92599%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else9257192585%_))))))))
                  (let ((__tmp97799
                         (let ()
                           (declare (not safe))
                           (class-of _%obj92541%_))))
                    (declare (not safe))
                    (_%find-next-method92562%_ __tmp97799)))))))))
    (define call-next-method
      (lambda (_%subklass92513%_ _%obj92514%_ _%id92515%_ . _%args92516%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92513%_ 'class))
              (let ()
                (let ((_%subklass92520%_ _%subklass92513%_))
                  (if (let () (declare (not safe)) (symbol? _%id92515%_))
                      (let ()
                        (let ((_%id92530%_ _%id92515%_))
                          (let ()
                            (let ()
                              (declare (not safe))
                              (##apply __call-next-method
                                       _%subklass92520%_
                                       _%obj92514%_
                                       _%id92530%_
                                       _%args92516%_)))))
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id92515%_))))
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
               'contract:
               'class-type?
               'value:
               _%subklass92513%_)))))
    (define __call-next-method
      (lambda (_%subklass92484%_ _%obj92485%_ _%id92486%_ . _%args92487%_)
        (let ()
          (let ((_%subklass92490%_ _%subklass92484%_))
            (let ((_%id92498%_ _%id92486%_))
              (let ()
                (let ((_%$e92507%_
                       (let ()
                         (declare (not safe))
                         (__next-method
                          _%subklass92490%_
                          _%obj92485%_
                          _%id92498%_))))
                  (if _%$e92507%_
                      ((lambda (_%methodf92510%_)
                         (apply _%methodf92510%_ _%obj92485%_ _%args92487%_))
                       _%$e92507%_)
                      (let ()
                        (error '"cannot find next method"
                               'object:
                               _%obj92485%_
                               'method:
                               _%id92498%_))))))))))
    (define write-style
      (lambda (_%we92482%_) (macro-writeenv-style _%we92482%_)))
    (define write-object
      (lambda (_%we92473%_ _%obj92474%_)
        (let ((_%$e92476%_
               (let () (declare (not safe)) (__method-ref _%obj92474%_ ':wr))))
          (if _%$e92476%_
              ((lambda (_%method92479%_)
                 (_%method92479%_ _%obj92474%_ _%we92473%_))
               _%$e92476%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (##default-wr _%we92473%_ _%obj92474%_)))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92388%_)
        (letrec ((_%shadow-type-id92390%_
                  (lambda (_%type92471%_)
                    (let ((__tmp97800
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92471%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97800 '"::t"))))
                 (_%shadow-type-name92391%_
                  (lambda (_%type92469%_)
                    (let () (declare (not safe)) (##type-name _%type92469%_))))
                 (_%make-shadow-class92392%_
                  (lambda (_%type92461%_ _%precedence-list92462%_)
                    (let* ((_%super92464%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92462%_))
                                (cons (car _%precedence-list92462%_) '())
                                '()))
                           (_%klass92466%_
                            (let ((__tmp97803
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92390%_ _%type92461%_)))
                                  (__tmp97802
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92461%_)))
                                  (__tmp97801
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _%type92461%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp97803
                               __tmp97802
                               _%super92464%_
                               '()
                               __tmp97801
                               '#f))))
                      (let ((__tmp97804
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92461%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97804
                         _%klass92466%_))
                      _%klass92466%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92396%_ ()
              (if (let ((__tmp97805
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97805 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92396%_))))))
          (let ((_%$e92400%_
                 (let ((__tmp97806
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92388%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97806 '#f))))
            (if _%$e92400%_
                ((lambda (_%klass92403%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92403%_)
                 _%$e92400%_)
                (let ()
                  (let _%loop92406%_ ((_%super92408%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%type92388%_)))
                                      (_%hierarchy92409%_ '()))
                    (if (let () (declare (not safe)) (not _%super92408%_))
                        (let ()
                          (let _%loop92412%_ ((_%rest92414%_
                                               _%hierarchy92409%_)
                                              (_%precedence-list92415%_ '()))
                            (let* ((_%rest9241692424%_ _%rest92414%_)
                                   (_%else9241892434%_
                                    (lambda ()
                                      (let ((_%klass92432%_
                                             (let ()
                                               (declare (not safe))
                                               (_%make-shadow-class92392%_
                                                _%type92388%_
                                                _%precedence-list92415%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##vector-cas!
                                           __shadow-classes-mx
                                           '0
                                           '0
                                           '1))
                                        _%klass92432%_)))
                                   (_%K9242092448%_
                                    (lambda (_%rest92437%_ _%type92438%_)
                                      (let ((_%$e92440%_
                                             (let ((__tmp97807
                                                    (let ()
                                                      (declare (not safe))
                                                      (##type-id
                                                       _%type92438%_))))
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                __shadow-classes
                                                __tmp97807
                                                '#f))))
                                        (if _%$e92440%_
                                            ((lambda (_%klass92443%_)
                                               (let ((__tmp97808
                                                      (cons _%klass92443%_
                                                            _%precedence-list92415%_)))
                                                 (declare (not safe))
                                                 (_%loop92412%_
                                                  _%rest92437%_
                                                  __tmp97808)))
                                             _%$e92440%_)
                                            (let ()
                                              (let* ((_%klass92446%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%make-shadow-class92392%_
                                                         _%type92438%_
                                                         _%precedence-list92415%_)))
                                                     (__tmp97809
                                                      (cons _%klass92446%_
                                                            _%precedence-list92415%_)))
                                                (declare (not safe))
                                                (_%loop92412%_
                                                 _%rest92437%_
                                                 __tmp97809))))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%rest9241692424%_))
                                  (let ((_%hd9242192451%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9241692424%_)))
                                        (_%tl9242292453%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%rest9241692424%_))))
                                    (let* ((_%type92456%_ _%hd9242192451%_)
                                           (_%rest92458%_ _%tl9242292453%_))
                                      (declare (not safe))
                                      (_%K9242092448%_
                                       _%rest92458%_
                                       _%type92456%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else9241892434%_))))))
                        (let ()
                          (let ((__tmp97811
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _%super92408%_)))
                                (__tmp97810
                                 (cons _%super92408%_ _%hierarchy92409%_)))
                            (declare (not safe))
                            (_%loop92406%_ __tmp97811 __tmp97810)))))))))))
    (define class-of
      (lambda (_%obj92361%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92365%_
                 (let () (declare (not safe)) (##type _%obj92361%_))))
            (if (fx= _%t92365%_ (macro-type-subtyped))
                (let ()
                  (let ((_%st92368%_
                         (let ()
                           (declare (not safe))
                           (##subtype _%obj92361%_))))
                    (if (fx= _%st92368%_ (macro-subtype-structure))
                        (let ()
                          (let ((_%klass92371%_
                                 (let ()
                                   (declare (not safe))
                                   (##structure-type _%obj92361%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%klass92371%_
                                   'class))
                                _%klass92371%_
                                (let ()
                                  (declare (not safe))
                                  (__shadow-class _%klass92371%_)))))
                        (if (fx= _%st92368%_ (macro-subtype-boxvalues))
                            (let ()
                              (if (let ((__tmp97812
                                         (let ()
                                           (declare (not safe))
                                           (##vector-length _%obj92361%_))))
                                    (declare (not safe))
                                    (##fx= __tmp97812 '1))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'box))
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'values))))
                            (let ((_%$e92374%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref __subtype-id _%st92368%_))))
                              (if _%$e92374%_
                                  (let ()
                                    (declare (not safe))
                                    (__system-class _%$e92374%_))
                                  (let ()
                                    (error '"unknown class"
                                           'subtype:
                                           _%st92368%_
                                           'object:
                                           _%obj92361%_))))))))
                (if (fx= _%t92365%_ (macro-type-mem2))
                    (let ()
                      (let () (declare (not safe)) (__system-class 'pair)))
                    (if (fx= _%t92365%_ (macro-type-fixnum))
                        (let ()
                          (let ()
                            (declare (not safe))
                            (__system-class 'fixnum)))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92361%_))
                              (let ()
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'char)))
                              (if (eq? _%obj92361%_ '())
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (__system-class 'null)))
                                  (if (eq? _%obj92361%_ '#f)
                                      (let ()
                                        (let ()
                                          (declare (not safe))
                                          (__system-class 'boolean)))
                                      (if (eq? _%obj92361%_ '#t)
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (__system-class 'boolean)))
                                          (if (eq? _%obj92361%_ '#!void)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__system-class 'void)))
                                              (if (eq? _%obj92361%_ '#!eof)
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
      (lambda (_%id92355%_)
        (let ((_%$e92357%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92355%_ '#f))))
          (if _%$e92357%_
              _%$e92357%_
              (let () (error '"unknown system class" _%id92355%_))))))
    (define __make-system-class
      (lambda (_%id92350%_ _%super92351%_)
        (let ((_%klass92353%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92350%_
                  _%id92350%_
                  _%super92351%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92350%_ _%klass92353%_))
          _%klass92353%_)))))
