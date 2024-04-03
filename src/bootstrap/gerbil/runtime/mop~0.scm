(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712161239)
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
      (let ((_%flags96143%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96144%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96145%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96143%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96145%_
           _%properties96144%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96119%_
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
             (_%slot-vector96121%_ (list->vector (cons '#f _%slots96119%_)))
             (_%slot-table96128%_
              (let ((_%slot-table96123%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97591
                       (lambda (_%slot96125%_ _%field96126%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96123%_
                            _%slot96125%_
                            _%field96126%_))
                         (let ((__tmp97592
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96125%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96123%_
                            __tmp97592
                            _%field96126%_))))
                      (__tmp97589
                       (let ((__tmp97590
                              (let ()
                                (declare (not safe))
                                (##length _%slots96119%_))))
                         (declare (not safe))
                         (##iota __tmp97590 '1))))
                  (declare (not safe))
                  (##for-each __tmp97591 _%slots96119%_ __tmp97589))
                _%slot-table96123%_))
             (_%flags96130%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96136%_
              (list->vector
               (let ((__tmp97593
                      (map (lambda (_%g9613196133%_)
                             (list _%g9613196133%_ '5 '#f))
                           (drop _%slots96119%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97593))))
             (_%properties96138%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96119%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96140%_
              (let ((__tmp97594 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96130%_
                 ##type-type
                 _%fields96136%_
                 __tmp97594
                 _%slot-vector96121%_
                 _%slot-table96128%_
                 _%properties96138%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96140%_ _%t96140%_))
        _%t96140%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96115%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96116%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96117%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97595 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96115%_
           '#f
           '#()
           __tmp97595
           '#(#f)
           _%slot-table96117%_
           _%properties96116%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96113%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96113%_ 'class))))
    (define class-type=?
      (lambda (_%x96088%_ _%y96089%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96088%_ 'class))
              (let ((_%x96093%_ _%x96088%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%y96089%_ 'class))
                    (let ((_%y96103%_ _%y96089%_))
                      (declare (not safe))
                      (__class-type=? _%x96093%_ _%y96103%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96089%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
                 'contract:
                 'class-type?
                 'value:
                 _%x96088%_)
                '#!void)))))
    (define __class-type=?
      (lambda (_%x96067%_ _%y96068%_)
        (let ()
          (let* ((_%x96071%_ _%x96067%_) (_%y96079%_ _%y96068%_))
            (eq? (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%x96071%_ '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%y96079%_ '1 '#f '#f)))))))
    (define type-opaque?
      (lambda (_%type96053%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96053%_))
              (let ((_%type96057%_ _%type96053%_))
                (declare (not safe))
                (__type-opaque? _%type96057%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96053%_)
                '#!void)))))
    (define __type-opaque?
      (lambda (_%type96041%_)
        (let ()
          (let* ((_%type96044%_ _%type96041%_)
                 (__tmp97596
                  (let ((__tmp97597
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96044%_))))
                    (declare (not safe))
                    (##fxand __tmp97597 type-flag-opaque))))
            (declare (not safe))
            (##fx= __tmp97596 type-flag-opaque)))))
    (define type-extensible?
      (lambda (_%type96027%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96027%_))
              (let ((_%type96031%_ _%type96027%_))
                (declare (not safe))
                (__type-extensible? _%type96031%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96027%_)
                '#!void)))))
    (define __type-extensible?
      (lambda (_%type96015%_)
        (let ()
          (let* ((_%type96018%_ _%type96015%_)
                 (__tmp97598
                  (let ((__tmp97599
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96018%_))))
                    (declare (not safe))
                    (##fxand __tmp97599 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp97598 type-flag-extensible)))))
    (define class-type-final?
      (lambda (_%type96001%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96001%_ 'class))
              (let ((_%type96005%_ _%type96001%_))
                (declare (not safe))
                (__class-type-final? _%type96005%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
                 'contract:
                 'class-type?
                 'value:
                 _%type96001%_)
                '#!void)))))
    (define __class-type-final?
      (lambda (_%type95989%_)
        (let ()
          (let* ((_%type95992%_ _%type95989%_)
                 (__tmp97600
                  (let ((__tmp97601
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type95992%_))))
                    (declare (not safe))
                    (##fxand __tmp97601 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp97600 '0)))))
    (define class-type-struct?
      (lambda (_%klass95975%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95975%_ 'class))
              (let ((_%klass95979%_ _%klass95975%_))
                (declare (not safe))
                (__class-type-struct? _%klass95979%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95975%_)
                '#!void)))))
    (define __class-type-struct?
      (lambda (_%klass95963%_)
        (let ()
          (let* ((_%klass95966%_ _%klass95963%_)
                 (__tmp97602
                  (let ((__tmp97603
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass95966%_))))
                    (declare (not safe))
                    (##fxand __tmp97603 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp97602 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_%klass95949%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95949%_ 'class))
              (let ((_%klass95953%_ _%klass95949%_))
                (declare (not safe))
                (__class-type-sealed? _%klass95953%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95949%_)
                '#!void)))))
    (define __class-type-sealed?
      (lambda (_%klass95937%_)
        (let ()
          (let* ((_%klass95940%_ _%klass95937%_)
                 (__tmp97604
                  (let ((__tmp97605
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass95940%_))))
                    (declare (not safe))
                    (##fxand __tmp97605 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp97604 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_%klass95923%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95923%_ 'class))
              (let ((_%klass95927%_ _%klass95923%_))
                (declare (not safe))
                (__class-type-metaclass? _%klass95927%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95923%_)
                '#!void)))))
    (define __class-type-metaclass?
      (lambda (_%klass95911%_)
        (let ()
          (let* ((_%klass95914%_ _%klass95911%_)
                 (__tmp97606
                  (let ((__tmp97607
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass95914%_))))
                    (declare (not safe))
                    (##fxand __tmp97607 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp97606 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_%klass95897%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95897%_ 'class))
              (let ((_%klass95901%_ _%klass95897%_))
                (declare (not safe))
                (__class-type-system? _%klass95901%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95897%_)
                '#!void)))))
    (define __class-type-system?
      (lambda (_%klass95885%_)
        (let ()
          (let* ((_%klass95888%_ _%klass95885%_)
                 (__tmp97608
                  (let ((__tmp97609
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass95888%_))))
                    (declare (not safe))
                    (##fxand __tmp97609 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp97608 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_%type-id95770%_
               _%type-name95771%_
               _%type-super95772%_
               _%precedence-list95773%_
               _%slot-vector95774%_
               _%properties95775%_
               _%constructor95776%_
               _%slot-table95777%_
               _%methods95778%_)
        (let ()
          (letrec ((_%make-props!95781%_
                    (lambda (_%key95854%_)
                      (letrec* ((_%ht95856%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!95857%_
                                 (lambda (_%ht95878%_ _%slots95879%_)
                                   (for-each
                                    (lambda (_%g9588095882%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht95878%_
                                         _%g9588095882%_
                                         '#t)))
                                    _%slots95879%_)))
                                (_%put-alist!95858%_
                                 (lambda (_%ht95867%_
                                          _%key95868%_
                                          _%alist95869%_)
                                   (let ((_%$e95871%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95868%_
                                             _%alist95869%_))))
                                     (if _%$e95871%_
                                         ((lambda (_%g9587395875%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!95857%_
                                               _%ht95867%_
                                               _%g9587395875%_)))
                                          _%$e95871%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!95858%_
                           _%ht95856%_
                           _%key95854%_
                           _%properties95775%_))
                        (for-each
                         (lambda (_%mixin95860%_)
                           (let ((_%alist95862%_
                                  (##structure-ref
                                   _%mixin95860%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist95862%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key95854%_
                                             _%alist95862%_))))
                                 (let ((__tmp97610
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin95860%_))))
                                   (declare (not safe))
                                   (_%put-slots!95857%_
                                    _%ht95856%_
                                    __tmp97610))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!95858%_
                                    _%ht95856%_
                                    _%key95854%_
                                    _%alist95862%_)))))
                         _%precedence-list95773%_)
                        _%ht95856%_))))
            (let* ((_%transparent?95783%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties95775%_)))
                   (_%all-slots-printable?95788%_
                    (let ((_%$e95785%_ _%transparent?95783%_))
                      (if _%$e95785%_
                          _%$e95785%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties95775%_))))))
                   (_%printable95790%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?95788%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95781%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?95795%_
                    (let ((_%$e95792%_ _%transparent?95783%_))
                      (if _%$e95792%_
                          _%$e95792%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties95775%_))))))
                   (_%equalable95797%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?95795%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!95781%_ 'equal:))
                        '#f))
                   (_%first-new-field95799%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super95772%_
                           'class))
                        (let ((__tmp97611
                               (##structure-ref
                                _%type-super95772%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp97611))
                        '1))
                   (_%field-info-length95801%_
                    (let ((__tmp97612
                           (let ((__tmp97613
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector95774%_))))
                             (declare (not safe))
                             (##fx- __tmp97613 _%first-new-field95799%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp97612)))
                   (_%field-info95803%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length95801%_ '#f)))
                   (_%struct?95805%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties95775%_)))
                   (_%final?95807%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties95775%_)))
                   (_%metaclass95815%_
                    (let ((_%metaclass9580895810%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties95775%_))))
                      (if _%metaclass9580895810%_
                          (let ((_%metaclass95813%_ _%metaclass9580895810%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass95813%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id95770%_
                                       'metaclass:
                                       _%metaclass95813%_))
                            _%metaclass95813%_)
                          '#f)))
                   (_%system?95817%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties95775%_)))
                   (_%opaque?95822%_
                    (let ((_%$e95819%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?95795%_))))
                      (if _%$e95819%_
                          _%$e95819%_
                          (if _%type-super95772%_
                              (let ()
                                (declare (not safe))
                                (type-opaque? _%type-super95772%_))
                              '#f))))
                   (_%type-flags95824%_
                    (let ((__tmp97618
                           (if _%final?95807%_ '0 type-flag-extensible))
                          (__tmp97617
                           (if _%opaque?95822%_ type-flag-opaque '0))
                          (__tmp97616
                           (if _%struct?95805%_ class-type-flag-struct '0))
                          (__tmp97615
                           (if _%metaclass95815%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp97614
                           (if _%system?95817%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp97618
                               __tmp97617
                               __tmp97616
                               __tmp97615
                               __tmp97614)))
                   (_%precedence-list95832%_
                    (let ((_%$e95826%_ (memq t::t _%precedence-list95773%_)))
                      (if _%$e95826%_
                          ((lambda (_%tail95829%_)
                             (if (let ((__tmp97619 (cdr _%tail95829%_)))
                                   (declare (not safe))
                                   (null? __tmp97619))
                                 _%precedence-list95773%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list95773%_)))
                           _%$e95826%_)
                          (let ((__tmp97620 (cons t::t '())))
                            (declare (not safe))
                            (##append _%precedence-list95773%_ __tmp97620))))))
              (let _%loop95835%_ ((_%i95837%_ _%first-new-field95799%_)
                                  (_%j95838%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j95838%_ _%field-info-length95801%_))
                    (let* ((_%slot95840%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector95774%_ _%i95837%_)))
                           (_%flags95848%_
                            (if _%transparent?95783%_
                                '0
                                (let ((__tmp97622
                                       (if (or _%all-slots-printable?95788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable95790%_
                                                  _%slot95840%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp97621
                                       (if (or _%all-slots-equalable?95795%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable95797%_
                                                  _%slot95840%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp97622 __tmp97621)))))
                      (vector-set!
                       _%field-info95803%_
                       _%j95838%_
                       _%slot95840%_)
                      (vector-set!
                       _%field-info95803%_
                       (let () (declare (not safe)) (##fx+ _%j95838%_ '1))
                       _%flags95848%_)
                      (let ((__tmp97624
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95837%_ '1)))
                            (__tmp97623
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j95838%_ '3))))
                        (declare (not safe))
                        (_%loop95835%_ __tmp97624 __tmp97623)))
                    '#!void))
              (if _%metaclass95815%_
                  (let ((_%val95851%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass95815%_
                            _%type-id95770%_
                            _%type-name95771%_
                            _%type-flags95824%_
                            _%type-super95772%_
                            _%field-info95803%_
                            _%precedence-list95832%_
                            _%slot-vector95774%_
                            _%slot-table95777%_
                            _%properties95775%_
                            _%constructor95776%_
                            _%methods95778%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val95851%_ 'class))
                        _%val95851%_
                        (error '"bad cast" class::t _%val95851%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id95770%_
                     _%type-name95771%_
                     _%type-flags95824%_
                     _%type-super95772%_
                     _%field-info95803%_
                     _%precedence-list95832%_
                     _%slot-vector95774%_
                     _%slot-table95777%_
                     _%properties95775%_
                     _%constructor95776%_
                     _%methods95778%_))))))))
    (define class-type-id
      (lambda (_%klass95768%_)
        (##structure-ref _%klass95768%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95766%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95763%_ _%val95764%_)
        (##structure-set! _%klass95763%_ _%val95764%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95758%_ _%val95760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95758%_
           _%val95760%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95756%_)
        (##structure-ref _%klass95756%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95754%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95751%_ _%val95752%_)
        (##structure-set! _%klass95751%_ _%val95752%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95746%_ _%val95748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95746%_
           _%val95748%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95744%_)
        (##structure-ref _%klass95744%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95742%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95739%_ _%val95740%_)
        (##structure-set! _%klass95739%_ _%val95740%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95734%_ _%val95736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95734%_
           _%val95736%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95732%_)
        (##structure-ref _%klass95732%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95730%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95727%_ _%val95728%_)
        (##structure-set! _%klass95727%_ _%val95728%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95722%_ _%val95724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95722%_
           _%val95724%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95720%_)
        (##structure-ref _%klass95720%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95718%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95715%_ _%val95716%_)
        (##structure-set! _%klass95715%_ _%val95716%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95710%_ _%val95712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95710%_
           _%val95712%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95708%_)
        (##structure-ref _%klass95708%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95706%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95703%_ _%val95704%_)
        (##structure-set!
         _%klass95703%_
         _%val95704%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95698%_ _%val95700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95698%_
           _%val95700%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95696%_)
        (##structure-ref _%klass95696%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95694%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95691%_ _%val95692%_)
        (##structure-set!
         _%klass95691%_
         _%val95692%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95686%_ _%val95688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95686%_
           _%val95688%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95684%_)
        (##structure-ref _%klass95684%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95682%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95679%_ _%val95680%_)
        (##structure-set!
         _%klass95679%_
         _%val95680%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95674%_ _%val95676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95674%_
           _%val95676%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95672%_)
        (##structure-ref _%klass95672%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95670%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95667%_ _%val95668%_)
        (##structure-set!
         _%klass95667%_
         _%val95668%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95662%_ _%val95664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95662%_
           _%val95664%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95660%_)
        (##structure-ref _%klass95660%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95658%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95658%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95655%_ _%val95656%_)
        (##structure-set!
         _%klass95655%_
         _%val95656%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95650%_ _%val95652%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95650%_
           _%val95652%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95648%_)
        (##structure-ref _%klass95648%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95646%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95646%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95643%_ _%val95644%_)
        (##structure-set! _%klass95643%_ _%val95644%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95638%_ _%val95640%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95638%_
           _%val95640%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95624%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95624%_ 'class))
              (let ((_%klass95628%_ _%klass95624%_))
                (declare (not safe))
                (__class-type-slot-list _%klass95628%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95624%_)
                '#!void)))))
    (define __class-type-slot-list
      (lambda (_%klass95612%_)
        (let ((_%klass95615%_ _%klass95612%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95615%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass95598%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95598%_ 'class))
              (let ((_%klass95602%_ _%klass95598%_))
                (declare (not safe))
                (__class-type-field-count _%klass95602%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95598%_)
                '#!void)))))
    (define __class-type-field-count
      (lambda (_%klass95586%_)
        (let ()
          (let* ((_%klass95589%_ _%klass95586%_)
                 (__tmp97625
                  (let ((__tmp97626
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95589%_
                            '7
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##vector-length __tmp97626))))
            (declare (not safe))
            (##fx- __tmp97625 '1)))))
    (define class-type-seal!
      (lambda (_%klass95572%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95572%_ 'class))
              (let ((_%klass95576%_ _%klass95572%_))
                (declare (not safe))
                (__class-type-seal! _%klass95576%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95572%_)
                '#!void)))))
    (define __class-type-seal!
      (lambda (_%klass95560%_)
        (let ((_%klass95563%_ _%klass95560%_))
          (let ((__tmp97627
                 (let ((__tmp97628
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass95563%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp97628))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass95563%_
             __tmp97627
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct95535%_ _%maybe-super-struct95536%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct95535%_ 'class))
              (let ((_%maybe-sub-struct95540%_ _%maybe-sub-struct95535%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-struct95536%_
                       'class))
                    (let ((_%maybe-super-struct95550%_
                           _%maybe-super-struct95536%_))
                      (declare (not safe))
                      (__substruct?
                       _%maybe-sub-struct95540%_
                       _%maybe-super-struct95550%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct95536%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-struct95535%_)
                '#!void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95504%_ _%maybe-super-struct95505%_)
        (let ((_%maybe-sub-struct95508%_ _%maybe-sub-struct95504%_))
          (let* ((_%maybe-super-struct95516%_ _%maybe-super-struct95505%_)
                 (_%maybe-super-struct-id95525%_
                  (let ()
                    (declare (not safe))
                    (##type-id _%maybe-super-struct95516%_))))
            (let _%lp95527%_ ((_%super-struct95529%_
                               _%maybe-sub-struct95508%_))
              (let ()
                (if (let () (declare (not safe)) (not _%super-struct95529%_))
                    (let () '#f)
                    (if (eq? _%maybe-super-struct-id95525%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%super-struct95529%_)))
                        (let () '#t)
                        (let ((__tmp97629
                               (let ()
                                 (declare (not safe))
                                 (##type-super _%super-struct95529%_))))
                          (declare (not safe))
                          (_%lp95527%_ __tmp97629))))))))))
    (define base-struct/1
      (lambda (_%klass95499%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95499%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass95499%_))
                  _%klass95499%_
                  (let () (declare (not safe)) (##type-super _%klass95499%_))))
            (if (let () (declare (not safe)) (not _%klass95499%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass95499%_))))))
    (define base-struct/2
      (lambda (_%klass195484%_ _%klass295485%_)
        (let ((_%s195487%_
               (let () (declare (not safe)) (base-struct/1 _%klass195484%_)))
              (_%s295488%_
               (let () (declare (not safe)) (base-struct/1 _%klass295485%_))))
          (if (or (let () (declare (not safe)) (not _%s195487%_))
                  (and _%s295488%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s195487%_ _%s295488%_))))
              (let () _%s295488%_)
              (if (or (let () (declare (not safe)) (not _%s295488%_))
                      (and _%s195487%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s295488%_ _%s195487%_))))
                  (let () _%s195487%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass195484%_
                           _%klass295485%_
                           _%s195487%_
                           _%s295488%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95368%_)
        (let* ((_%all-supers9536995394%_ _%all-supers95368%_)
               (_%E9537495398%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9536995394%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9539295481%_ (lambda () '#f))
                (_%K9538995467%_
                 (lambda (_%x95465%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95465%_))))
                (_%K9538495444%_
                 (lambda (_%y95441%_ _%x95442%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95442%_ _%y95441%_))))
                (_%K9537595405%_
                 (lambda (_%y95402%_ _%x95403%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95403%_ _%y95402%_)))))
            (let* ((_%__match9758397584%_
                    (lambda (_%hd9537695408%_ _%tl9537795410%_)
                      (let ((_%x95413%_ _%hd9537695408%_))
                        (letrec ((_%splice-rest9537995415%_
                                  (lambda (_%rest9538395422%_ _%y95424%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9538395422%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9537595405%_
                                           _%y95424%_
                                           _%x95413%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9537495398%_)))))
                                 (_%splice-try9538195417%_
                                  (lambda (_%hd9538295426%_
                                           _%rest9538395428%_
                                           _%y9537895429%_)
                                    (let ((_%y95432%_ _%hd9538295426%_))
                                      (let ((__tmp97631
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9538395428%_)))
                                            (__tmp97630
                                             (cons _%y95432%_
                                                   _%y9537895429%_)))
                                        (declare (not safe))
                                        (_%splice-loop9538095419%_
                                         __tmp97631
                                         __tmp97630)))))
                                 (_%splice-loop9538095419%_
                                  (lambda (_%rest9538395434%_ _%y9537895435%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9538395434%_))
                                        (let ((__tmp97632
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9538395434%_))))
                                          (declare (not safe))
                                          (_%splice-try9538195417%_
                                           __tmp97632
                                           _%rest9538395434%_
                                           _%y9537895435%_))
                                        (let ((__tmp97633
                                               (reverse _%y9537895435%_)))
                                          (declare (not safe))
                                          (_%splice-rest9537995415%_
                                           _%rest9538395434%_
                                           __tmp97633))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9538095419%_
                             _%tl9537795410%_
                             '()))))))
                   (_%try-match9537195477%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9536995394%_))
                          (let ((_%tl9539195472%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9536995394%_)))
                                (_%hd9539095470%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9536995394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9539195472%_))
                                (let ((_%x95475%_ _%hd9539095470%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95475%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9539195472%_))
                                    (let ((_%tl9538895456%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9539195472%_)))
                                          (_%hd9538795454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9539195472%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9538895456%_))
                                          (let ((_%x95452%_ _%hd9539095470%_)
                                                (_%y95459%_ _%hd9538795454%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9538495444%_
                                               _%y95459%_
                                               _%x95452%_)))
                                          (_%__match9758397584%_
                                           _%hd9539095470%_
                                           _%tl9539195472%_)))
                                    (_%__match9758397584%_
                                     _%hd9539095470%_
                                     _%tl9539195472%_))))
                          (let () (declare (not safe)) (_%E9537495398%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9536995394%_))
                  (let () (declare (not safe)) (_%K9539295481%_))
                  (let () (declare (not safe)) (_%try-match9537195477%_))))))))
    (define base-struct
      (lambda _%all-supers95366%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95366%_))))
    (define find-super-constructor
      (lambda (_%super95317%_)
        (let _%lp95319%_ ((_%rest95321%_ _%super95317%_)
                          (_%constructor95322%_ '#f))
          (let* ((_%rest9532395331%_ _%rest95321%_)
                 (_%else9532595339%_ (lambda () _%constructor95322%_))
                 (_%K9532795354%_
                  (lambda (_%rest95342%_ _%hd95343%_)
                    (let ((_%$e95345%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95343%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95345%_
                          ((lambda (_%xconstructor95348%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95322%_))
                                     (eq? _%constructor95322%_
                                          _%xconstructor95348%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95319%_
                                    _%rest95342%_
                                    _%xconstructor95348%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95322%_
                                        _%xconstructor95348%_)))
                           _%$e95345%_)
                          (let ()
                            (declare (not safe))
                            (_%lp95319%_
                             _%rest95342%_
                             _%constructor95322%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9532395331%_))
                (let ((_%hd9532895357%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9532395331%_)))
                      (_%tl9532995359%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9532395331%_))))
                  (let* ((_%hd95362%_ _%hd9532895357%_)
                         (_%rest95364%_ _%tl9532995359%_))
                    (declare (not safe))
                    (_%K9532795354%_ _%rest95364%_ _%hd95362%_)))
                (let () (declare (not safe)) (_%else9532595339%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95293%_ _%direct-slots95294%_)
        (let* ((_%next-slot95296%_ '1)
               (_%slot-table95298%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95300%_ '(__class))
               (_%process-slot95304%_
                (lambda (_%slot95302%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95302%_))
                      '#!void
                      (error '"invalid slot name" _%slot95302%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95298%_
                              _%slot95302%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95298%_
                           _%slot95302%_
                           _%next-slot95296%_))
                        (let ((__tmp97634
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95302%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95298%_
                           __tmp97634
                           _%next-slot95296%_))
                        (set! _%r-slots95300%_
                              (cons _%slot95302%_ _%r-slots95300%_))
                        (set! _%next-slot95296%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95296%_ '1))))
                      '#!void)))
               (_%process-slots95310%_
                (lambda (_%g9530595307%_)
                  (for-each _%process-slot95304%_ _%g9530595307%_))))
          (let ((__tmp97636
                 (lambda (_%mixin95313%_)
                   (let ((__tmp97637
                          (let ((__tmp97638
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95313%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp97638 '()))))
                     (declare (not safe))
                     (_%process-slots95310%_ __tmp97637))))
                (__tmp97635 (reverse _%class-precedence-list95293%_)))
            (declare (not safe))
            (##for-each __tmp97636 __tmp97635))
          (let ()
            (declare (not safe))
            (_%process-slots95310%_ _%direct-slots95294%_))
          (let ((_%slot-vector95315%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95300%_)))))
            (values _%slot-vector95315%_ _%slot-table95298%_)))))
    (define make-class-type
      (lambda (_%id95218%_
               _%name95219%_
               _%direct-supers95220%_
               _%direct-slots95221%_
               _%properties95222%_
               _%constructor95223%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95218%_))
              (let ((_%id95227%_ _%id95218%_))
                (if (let () (declare (not safe)) (symbol? _%name95219%_))
                    (let ((_%name95237%_ _%name95219%_))
                      (if (let ()
                            (declare (not safe))
                            (list? _%direct-supers95220%_))
                          (let ((_%direct-supers95247%_
                                 _%direct-supers95220%_))
                            (if (let ()
                                  (declare (not safe))
                                  (list? _%direct-slots95221%_))
                                (let ((_%direct-slots95257%_
                                       _%direct-slots95221%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%properties95222%_))
                                      (let ((_%properties95267%_
                                             _%properties95222%_))
                                        (if ((lambda (_%$obj95276%_)
                                               (or (let ()
                                                     (declare (not safe))
                                                     (not _%$obj95276%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (symbol? _%$obj95276%_))))
                                             _%constructor95223%_)
                                            (let ((_%constructor95283%_
                                                   _%constructor95223%_))
                                              (declare (not safe))
                                              (__make-class-type
                                               _%id95227%_
                                               _%name95237%_
                                               _%direct-supers95247%_
                                               _%direct-slots95257%_
                                               _%properties95267%_
                                               _%constructor95283%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                               'contract:
                                               '(? (or not symbol?))
                                               'value:
                                               _%constructor95223%_)
                                              '#!void)))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                         'contract:
                                         'list?
                                         'value:
                                         _%properties95222%_)
                                        '#!void)))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                   'contract:
                                   'list?
                                   'value:
                                   _%direct-slots95221%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                             'contract:
                             'list?
                             'value:
                             _%direct-supers95220%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95219%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id95218%_)
                '#!void)))))
    (define __make-class-type
      (lambda (_%id95087%_
               _%name95088%_
               _%direct-supers95089%_
               _%direct-slots95090%_
               _%properties95091%_
               _%constructor95092%_)
        (let ()
          (let* ((_%id95095%_ _%id95087%_) (_%name95103%_ _%name95088%_))
            (let* ((_%direct-supers95111%_ _%direct-supers95089%_)
                   (_%direct-slots95119%_ _%direct-slots95090%_))
              (let* ((_%properties95127%_ _%properties95091%_)
                     (_%constructor95135%_ _%constructor95092%_))
                (let ((_%$e95147%_
                       (let ((__tmp97639
                              (lambda (_%$obj95144%_)
                                (let ((__tmp97640
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%$obj95144%_
                                          'class))))
                                  (declare (not safe))
                                  (not __tmp97640)))))
                         (declare (not safe))
                         (__find __tmp97639 _%direct-supers95111%_))))
                  (if _%$e95147%_
                      ((lambda (_%g9514995151%_)
                         (error '"Illegal super class; not a class descriptor"
                                _%g9514995151%_))
                       _%$e95147%_)
                      (let ((_%$e95154%_
                             (let ()
                               (declare (not safe))
                               (__find __class-type-final?
                                       _%direct-supers95111%_))))
                        (if _%$e95154%_
                            ((lambda (_%g9515695158%_)
                               (error '"Cannot extend final class"
                                      _%g9515695158%_))
                             _%$e95154%_)
                            '#!void))))
                (let ((_g97641_
                       (let ()
                         (declare (not safe))
                         (compute-precedence-list _%direct-supers95111%_))))
                  (begin
                    (let ((_g97642_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97641_)
                                 (##vector-length _g97641_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97642_ 2)))
                          (error "Context expects 2 values" _g97642_)))
                    (let ((_%precedence-list95161%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97641_ 0)))
                          (_%struct-super95162%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97641_ 1))))
                      (let ((_g97643_
                             (let ()
                               (declare (not safe))
                               (compute-class-slots
                                _%precedence-list95161%_
                                _%direct-slots95119%_))))
                        (begin
                          (let ((_g97644_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g97643_)
                                       (##vector-length _g97643_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g97644_ 2)))
                                (error "Context expects 2 values" _g97644_)))
                          (let ((_%slot-vector95164%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97643_ 0)))
                                (_%slot-table95165%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g97643_ 1))))
                            (let* ((_%properties95167%_
                                    (cons (cons 'direct-slots:
                                                _%direct-slots95119%_)
                                          (cons (cons 'direct-supers:
                                                      _%direct-supers95111%_)
                                                _%properties95127%_)))
                                   (_%constructor*95172%_
                                    (let ((_%$e95169%_ _%constructor95135%_))
                                      (if _%$e95169%_
                                          _%$e95169%_
                                          (let ()
                                            (declare (not safe))
                                            (find-super-constructor
                                             _%direct-supers95111%_)))))
                                   (_%precedence-list95215%_
                                    (if (or (let ()
                                              (declare (not safe))
                                              (agetq__0
                                               'system:
                                               _%properties95167%_))
                                            (memq object::t
                                                  _%precedence-list95161%_))
                                        _%precedence-list95161%_
                                        (let _%loop95177%_ ((_%tail95179%_
                                                             _%precedence-list95161%_)
                                                            (_%head95180%_
                                                             '()))
                                          (let* ((_%tail9518195189%_
                                                  _%tail95179%_)
                                                 (_%else9518395197%_
                                                  (lambda ()
                                                    (let ((__tmp97645
                                                           (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons t::t '()))))
              (declare (not safe))
              (__foldl1 cons __tmp97645 _%head95180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K9518595203%_
                                                  (lambda (_%rest95200%_
                                                           _%hd95201%_)
                                                    (if (eq? _%hd95201%_ t::t)
                                                        (let ((__tmp97646
                                                               (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tail95179%_)))
                  (declare (not safe))
                  (__foldl1 cons __tmp97646 _%head95180%_))
                (let ((__tmp97647 (cons _%hd95201%_ _%head95180%_)))
                  (declare (not safe))
                  (_%loop95177%_ _%rest95200%_ __tmp97647))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tail9518195189%_))
                                                (let ((_%hd9518695206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tail9518195189%_)))
                                                      (_%tl9518795208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tail9518195189%_))))
                                                  (let* ((_%hd95211%_
                                                          _%hd9518695206%_)
                                                         (_%rest95213%_
                                                          _%tl9518795208%_))
                                                    (declare (not safe))
                                                    (_%K9518595203%_
                                                     _%rest95213%_
                                                     _%hd95211%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else9518395197%_))))))))
                              (declare (not safe))
                              (make-class-type-descriptor
                               _%id95095%_
                               _%name95103%_
                               _%struct-super95162%_
                               _%precedence-list95215%_
                               _%slot-vector95164%_
                               _%properties95167%_
                               _%constructor*95172%_
                               _%slot-table95165%_
                               '#f))))))))))))))
    (define class-precedence-list
      (lambda (_%klass95073%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95073%_ 'class))
              (let ((_%klass95077%_ _%klass95073%_))
                (declare (not safe))
                (__class-precedence-list _%klass95077%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95073%_)
                '#!void)))))
    (define __class-precedence-list
      (lambda (_%klass95061%_)
        (let ((_%klass95064%_ _%klass95061%_))
          (cons _%klass95064%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95064%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95058%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95058%_))))
    (define make-class-predicate
      (lambda (_%klass95044%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95044%_ 'class))
              (let ((_%klass95048%_ _%klass95044%_))
                (declare (not safe))
                (__make-class-predicate _%klass95048%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95044%_)
                '#!void)))))
    (define __make-class-predicate
      (lambda (_%klass95015%_)
        (let ()
          (let* ((_%klass95018%_ _%klass95015%_)
                 (_%tid95027%_
                  (let () (declare (not safe)) (##type-id _%klass95018%_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _%klass95018%_))
                (let ()
                  (lambda (_%g9502995031%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%g9502995031%_
                       _%tid95027%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95018%_))
                    (let ()
                      (lambda (_%g9503495036%_)
                        (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%g9503495036%_
                           _%tid95027%_))))
                    (let ()
                      (lambda (_%g9503995041%_)
                        (let ()
                          (declare (not safe))
                          (__class-instance?
                           _%klass95018%_
                           _%g9503995041%_))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass94990%_ _%slot94991%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94990%_ 'class))
              (let ((_%klass94995%_ _%klass94990%_))
                (if (let () (declare (not safe)) (symbol? _%slot94991%_))
                    (let ((_%slot95005%_ _%slot94991%_))
                      (declare (not safe))
                      (__make-class-slot-accessor
                       _%klass94995%_
                       _%slot95005%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94991%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94990%_)
                '#!void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass94958%_ _%slot94959%_)
        (let ((_%klass94962%_ _%klass94958%_))
          (let* ((_%slot94970%_ _%slot94959%_)
                 (_%field94979%_
                  (let ((__tmp97648
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass94962%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp97648 _%slot94970%_ '#f))))
            (if (let () (declare (not safe)) (not _%field94979%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass94962%_
                         'slot:
                         _%slot94970%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94962%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _%klass94962%_
                       _%slot94970%_
                       _%field94979%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94962%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _%klass94962%_
                           _%slot94970%_
                           _%field94979%_))
                        (if (let ((_%strukt94985%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass94962%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt94985%_
                                      'class))
                                   (let ((__tmp97649
                                          (let ((__tmp97650
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt94985%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp97650))))
                                     (declare (not safe))
                                     (##fx< _%field94979%_ __tmp97649))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _%klass94962%_
                               _%slot94970%_
                               _%field94979%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _%klass94962%_
                               _%slot94970%_
                               _%field94979%_))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass94933%_ _%slot94934%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94933%_ 'class))
              (let ((_%klass94938%_ _%klass94933%_))
                (if (let () (declare (not safe)) (symbol? _%slot94934%_))
                    (let ((_%slot94948%_ _%slot94934%_))
                      (declare (not safe))
                      (__make-class-slot-mutator _%klass94938%_ _%slot94948%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94934%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94933%_)
                '#!void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass94901%_ _%slot94902%_)
        (let ((_%klass94905%_ _%klass94901%_))
          (let* ((_%slot94913%_ _%slot94902%_)
                 (_%field94922%_
                  (let ((__tmp97651
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass94905%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp97651 _%slot94913%_ '#f))))
            (if (let () (declare (not safe)) (not _%field94922%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass94905%_
                         'slot:
                         _%slot94913%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94905%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _%klass94905%_
                       _%slot94913%_
                       _%field94922%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94905%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _%klass94905%_
                           _%slot94913%_
                           _%field94922%_))
                        (if (let ((_%strukt94928%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass94905%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt94928%_
                                      'class))
                                   (let ((__tmp97652
                                          (let ((__tmp97653
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt94928%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp97653))))
                                     (declare (not safe))
                                     (##fx< _%field94922%_ __tmp97652))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _%klass94905%_
                               _%slot94913%_
                               _%field94922%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _%klass94905%_
                               _%slot94913%_
                               _%field94922%_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass94876%_ _%slot94877%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94876%_ 'class))
              (let ((_%klass94881%_ _%klass94876%_))
                (if (let () (declare (not safe)) (symbol? _%slot94877%_))
                    (let ((_%slot94891%_ _%slot94877%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-accessor
                       _%klass94881%_
                       _%slot94891%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94877%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94876%_)
                '#!void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass94844%_ _%slot94845%_)
        (let ((_%klass94848%_ _%klass94844%_))
          (let* ((_%slot94856%_ _%slot94845%_)
                 (_%field94865%_
                  (let ((__tmp97654
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass94848%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp97654 _%slot94856%_ '#f))))
            (if (let () (declare (not safe)) (not _%field94865%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass94848%_
                         'slot:
                         _%slot94856%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94848%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _%klass94848%_
                       _%slot94856%_
                       _%field94865%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94848%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _%klass94848%_
                           _%slot94856%_
                           _%field94865%_))
                        (if (let ((_%strukt94871%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass94848%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt94871%_
                                      'class))
                                   (let ((__tmp97655
                                          (let ((__tmp97656
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt94871%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp97656))))
                                     (declare (not safe))
                                     (##fx< _%field94865%_ __tmp97655))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass94848%_
                               _%slot94856%_
                               _%field94865%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _%klass94848%_
                               _%slot94856%_
                               _%field94865%_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass94819%_ _%slot94820%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94819%_ 'class))
              (let ((_%klass94824%_ _%klass94819%_))
                (if (let () (declare (not safe)) (symbol? _%slot94820%_))
                    (let ((_%slot94834%_ _%slot94820%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-mutator
                       _%klass94824%_
                       _%slot94834%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot94820%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94819%_)
                '#!void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94787%_ _%slot94788%_)
        (let ((_%klass94791%_ _%klass94787%_))
          (let* ((_%slot94799%_ _%slot94788%_)
                 (_%field94808%_
                  (let ((__tmp97657
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass94791%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp97657 _%slot94799%_ '#f))))
            (if (let () (declare (not safe)) (not _%field94808%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass94791%_
                         'slot:
                         _%slot94799%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass94791%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _%klass94791%_
                       _%slot94799%_
                       _%field94808%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass94791%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _%klass94791%_
                           _%slot94799%_
                           _%field94808%_))
                        (if (let ((_%strukt94814%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass94791%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt94814%_
                                      'class))
                                   (let ((__tmp97658
                                          (let ((__tmp97659
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt94814%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp97659))))
                                     (declare (not safe))
                                     (##fx< _%field94808%_ __tmp97658))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass94791%_
                               _%slot94799%_
                               _%field94808%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _%klass94791%_
                               _%slot94799%_
                               _%field94808%_))))))))))
    (define not-an-instance__%
      (lambda (_%object94771%_ _%class94772%_ _%slot94773%_)
        (apply error
               '"not an instance"
               'object:
               _%object94771%_
               'class:
               _%class94772%_
               (if _%slot94773%_ (cons 'slot: (cons _%slot94773%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94778%_ _%class94779%_)
        (let ((_%slot94781%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object94778%_ _%class94779%_ _%slot94781%_))))
    (define not-an-instance
      (lambda _g97661_
        (let ((_g97660_ (let () (declare (not safe)) (##length _g97661_))))
          (cond ((let () (declare (not safe)) (##fx= _g97660_ 2))
                 (apply (lambda (_%object94778%_ _%class94779%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object94778%_
                             _%class94779%_)))
                        _g97661_))
                ((let () (declare (not safe)) (##fx= _g97660_ 3))
                 (apply (lambda (_%object94783%_ _%class94784%_ _%slot94785%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object94783%_
                             _%class94784%_
                             _%slot94785%_)))
                        _g97661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97661_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94764%_ _%slot94765%_ _%field94766%_)
        (lambda (_%obj94768%_)
          (##direct-structure-ref
           _%obj94768%_
           _%field94766%_
           _%klass94764%_
           _%slot94765%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94757%_ _%slot94758%_ _%field94759%_)
        (lambda (_%obj94761%_ _%val94762%_)
          (##direct-structure-set!
           _%obj94761%_
           _%val94762%_
           _%field94759%_
           _%klass94757%_
           _%slot94758%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94751%_ _%slot94752%_ _%field94753%_)
        (lambda (_%obj94755%_)
          (##structure-ref
           _%obj94755%_
           _%field94753%_
           _%klass94751%_
           _%slot94752%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94744%_ _%slot94745%_ _%field94746%_)
        (lambda (_%obj94748%_ _%val94749%_)
          (##structure-set!
           _%obj94748%_
           _%val94749%_
           _%field94746%_
           _%klass94744%_
           _%slot94745%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94738%_ _%slot94739%_ _%field94740%_)
        (lambda (_%obj94742%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94742%_
             _%field94740%_
             _%klass94738%_
             _%slot94739%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94731%_ _%slot94732%_ _%field94733%_)
        (lambda (_%obj94735%_ _%val94736%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94735%_
             _%val94736%_
             _%field94733%_
             _%klass94731%_
             _%slot94732%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94725%_ _%slot94726%_ _%field94727%_)
        (lambda (_%obj94729%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94725%_ _%obj94729%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94729%_ _%field94727%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94729%_
                 _%klass94725%_
                 _%slot94726%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94718%_ _%slot94719%_ _%field94720%_)
        (lambda (_%obj94722%_ _%val94723%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass94718%_ _%obj94722%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94722%_
                 _%field94720%_
                 _%val94723%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj94722%_
                 _%klass94718%_
                 _%slot94719%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94709%_ _%slot94710%_ _%field94711%_)
        (lambda (_%obj94713%_)
          (if (let ((__tmp97662
                     (let () (declare (not safe)) (##type-id _%klass94709%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94713%_ __tmp97662))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94713%_ _%field94711%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94709%_ _%obj94713%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _%obj94713%_ _%slot94710%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj94713%_
                     _%klass94709%_
                     _%slot94710%_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94699%_ _%slot94700%_ _%field94701%_)
        (lambda (_%obj94703%_ _%val94704%_)
          (if (let ((__tmp97663
                     (let () (declare (not safe)) (##type-id _%klass94699%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94703%_ __tmp97663))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94703%_
                 _%field94701%_
                 _%val94704%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass94699%_ _%obj94703%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set!
                     _%obj94703%_
                     _%slot94700%_
                     _%val94704%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj94703%_
                     _%klass94699%_
                     _%slot94700%_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94693%_ _%slot94694%_ _%field94695%_)
        (lambda (_%obj94697%_)
          (if (let ((__tmp97664
                     (let () (declare (not safe)) (##type-id _%klass94693%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94697%_ __tmp97664))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj94697%_ _%field94695%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj94697%_ _%slot94694%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94686%_ _%slot94687%_ _%field94688%_)
        (lambda (_%obj94690%_ _%val94691%_)
          (if (let ((__tmp97665
                     (let () (declare (not safe)) (##type-id _%klass94686%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94690%_ __tmp97665))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj94690%_
                 _%field94688%_
                 _%val94691%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj94690%_
                 _%slot94687%_
                 _%val94691%_))))))
    (define class-slot-offset
      (lambda (_%klass94661%_ _%slot94662%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94661%_ 'class))
              (let ((_%klass94666%_ _%klass94661%_))
                (if (let () (declare (not safe)) (symbolic? _%slot94662%_))
                    (let ((_%slot94676%_ _%slot94662%_))
                      (declare (not safe))
                      (__class-slot-offset _%klass94666%_ _%slot94676%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94662%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94661%_)
                '#!void)))))
    (define __class-slot-offset
      (lambda (_%klass94640%_ _%slot94641%_)
        (let ((_%klass94644%_ _%klass94640%_))
          (let* ((_%slot94652%_ _%slot94641%_)
                 (__tmp97666
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94644%_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp97666 _%slot94652%_ '#f)))))
    (define class-slot-ref
      (lambda (_%klass94614%_ _%obj94615%_ _%slot94616%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94614%_ 'class))
              (let ((_%klass94620%_ _%klass94614%_))
                (if (let () (declare (not safe)) (symbolic? _%slot94616%_))
                    (let ((_%slot94630%_ _%slot94616%_))
                      (declare (not safe))
                      (__class-slot-ref
                       _%klass94620%_
                       _%obj94615%_
                       _%slot94630%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94616%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94614%_)
                '#!void)))))
    (define __class-slot-ref
      (lambda (_%klass94590%_ _%obj94591%_ _%slot94592%_)
        (let ()
          (let* ((_%klass94595%_ _%klass94590%_) (_%slot94603%_ _%slot94592%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass94595%_ _%obj94591%_))
                (let ((_%off94612%_
                       (let ((__tmp97667
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj94591%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp97667 _%slot94603%_))))
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%obj94591%_
                   _%off94612%_
                   _%klass94595%_
                   _%slot94603%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj94591%_ _%klass94595%_)))))))
    (define class-slot-set!
      (lambda (_%klass94563%_ _%obj94564%_ _%slot94565%_ _%val94566%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94563%_ 'class))
              (let ((_%klass94570%_ _%klass94563%_))
                (if (let () (declare (not safe)) (symbolic? _%slot94565%_))
                    (let ((_%slot94580%_ _%slot94565%_))
                      (declare (not safe))
                      (__class-slot-set!
                       _%klass94570%_
                       _%obj94564%_
                       _%slot94580%_
                       _%val94566%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot94565%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94563%_)
                '#!void)))))
    (define __class-slot-set!
      (lambda (_%klass94538%_ _%obj94539%_ _%slot94540%_ _%val94541%_)
        (let ()
          (let* ((_%klass94544%_ _%klass94538%_) (_%slot94552%_ _%slot94540%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass94544%_ _%obj94539%_))
                (let ((_%off94561%_
                       (let ((__tmp97668
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj94539%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp97668 _%slot94552%_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%obj94539%_
                   _%val94541%_
                   _%off94561%_
                   _%klass94544%_
                   _%slot94552%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj94539%_ _%klass94544%_)))))))
    (define unchecked-field-ref
      (lambda (_%obj94535%_ _%off94536%_)
        (let ((__tmp97669
               (let () (declare (not safe)) (##structure-type _%obj94535%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94535%_
           _%off94536%_
           __tmp97669
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94531%_ _%off94532%_ _%val94533%_)
        (let ((__tmp97670
               (let () (declare (not safe)) (##structure-type _%obj94531%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94531%_
           _%val94533%_
           _%off94532%_
           __tmp97670
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94528%_ _%slot94529%_)
        (let ((__tmp97671
               (let ((__tmp97672
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94528%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97672 _%slot94529%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj94528%_ __tmp97671))))
    (define unchecked-slot-set!
      (lambda (_%obj94524%_ _%slot94525%_ _%val94526%_)
        (let ((__tmp97673
               (let ((__tmp97674
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94524%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp97674 _%slot94525%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj94524%_ __tmp97673 _%val94526%_))))
    (define slot-ref__%
      (lambda (_%obj94486%_ _%slot94487%_ _%E94488%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94487%_))
              (let ((_%slot94492%_ _%slot94487%_))
                (if (let () (declare (not safe)) (procedure? _%E94488%_))
                    (let ((_%E94502%_ _%E94488%_))
                      (declare (not safe))
                      (__slot-ref__% _%obj94486%_ _%slot94492%_ _%E94502%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E94488%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94487%_)
                '#!void)))))
    (define slot-ref__0
      (lambda (_%obj94515%_ _%slot94516%_)
        (let ((_%E94518%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj94515%_ _%slot94516%_ _%E94518%_))))
    (define slot-ref
      (lambda _g97676_
        (let ((_g97675_ (let () (declare (not safe)) (##length _g97676_))))
          (cond ((let () (declare (not safe)) (##fx= _g97675_ 2))
                 (apply (lambda (_%obj94515%_ _%slot94516%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj94515%_ _%slot94516%_)))
                        _g97676_))
                ((let () (declare (not safe)) (##fx= _g97675_ 3))
                 (apply (lambda (_%obj94520%_ _%slot94521%_ _%E94522%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj94520%_
                             _%slot94521%_
                             _%E94522%_)))
                        _g97676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97676_))))))
    (define __slot-ref__%
      (lambda (_%obj94442%_ _%slot94443%_ _%E94444%_)
        (let ()
          (let* ((_%slot94447%_ _%slot94443%_) (_%E94455%_ _%E94444%_))
            (let* ((_%klass94464%_
                    (let () (declare (not safe)) (class-of _%obj94442%_)))
                   (_%$e94467%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94464%_ _%slot94447%_))))
              (if _%$e94467%_
                  ((lambda (_%off94470%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _%obj94442%_ _%off94470%_)))
                   _%$e94467%_)
                  (let ()
                    (declare (not safe))
                    (_%E94455%_ _%obj94442%_ _%slot94447%_))))))))
    (define __slot-ref__0
      (lambda (_%obj94476%_ _%slot94477%_)
        (let ((_%E94479%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94476%_ _%slot94477%_ _%E94479%_))))
    (define __slot-ref
      (lambda _g97678_
        (let ((_g97677_ (let () (declare (not safe)) (##length _g97678_))))
          (cond ((let () (declare (not safe)) (##fx= _g97677_ 2))
                 (apply (lambda (_%obj94476%_ _%slot94477%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94476%_ _%slot94477%_)))
                        _g97678_))
                ((let () (declare (not safe)) (##fx= _g97677_ 3))
                 (apply (lambda (_%obj94481%_ _%slot94482%_ _%E94483%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94481%_
                             _%slot94482%_
                             _%E94483%_)))
                        _g97678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97678_))))))
    (define slot-set!__%
      (lambda (_%obj94400%_ _%slot94401%_ _%val94402%_ _%E94403%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94401%_))
              (let ((_%slot94407%_ _%slot94401%_))
                (if (let () (declare (not safe)) (procedure? _%E94403%_))
                    (let ((_%E94417%_ _%E94403%_))
                      (declare (not safe))
                      (__slot-set!__%
                       _%obj94400%_
                       _%slot94407%_
                       _%val94402%_
                       _%E94417%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94403%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94401%_)
                '#!void)))))
    (define slot-set!__0
      (lambda (_%obj94430%_ _%slot94431%_ _%val94432%_)
        (let ((_%E94434%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94430%_ _%slot94431%_ _%val94432%_ _%E94434%_))))
    (define slot-set!
      (lambda _g97680_
        (let ((_g97679_ (let () (declare (not safe)) (##length _g97680_))))
          (cond ((let () (declare (not safe)) (##fx= _g97679_ 3))
                 (apply (lambda (_%obj94430%_ _%slot94431%_ _%val94432%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94430%_
                             _%slot94431%_
                             _%val94432%_)))
                        _g97680_))
                ((let () (declare (not safe)) (##fx= _g97679_ 4))
                 (apply (lambda (_%obj94436%_
                                 _%slot94437%_
                                 _%val94438%_
                                 _%E94439%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94436%_
                             _%slot94437%_
                             _%val94438%_
                             _%E94439%_)))
                        _g97680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97680_))))))
    (define __slot-set!__%
      (lambda (_%obj94353%_ _%slot94354%_ _%val94355%_ _%E94356%_)
        (let ()
          (let* ((_%slot94359%_ _%slot94354%_) (_%E94367%_ _%E94356%_))
            (let* ((_%klass94376%_
                    (let () (declare (not safe)) (class-of _%obj94353%_)))
                   (_%$e94379%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94376%_ _%slot94359%_))))
              (if _%$e94379%_
                  ((lambda (_%off94382%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _%obj94353%_
                        _%off94382%_
                        _%val94355%_)))
                   _%$e94379%_)
                  (let ()
                    (declare (not safe))
                    (_%E94367%_ _%obj94353%_ _%slot94359%_))))))))
    (define __slot-set!__0
      (lambda (_%obj94388%_ _%slot94389%_ _%val94390%_)
        (let ((_%E94392%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94388%_
           _%slot94389%_
           _%val94390%_
           _%E94392%_))))
    (define __slot-set!
      (lambda _g97682_
        (let ((_g97681_ (let () (declare (not safe)) (##length _g97682_))))
          (cond ((let () (declare (not safe)) (##fx= _g97681_ 3))
                 (apply (lambda (_%obj94388%_ _%slot94389%_ _%val94390%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94388%_
                             _%slot94389%_
                             _%val94390%_)))
                        _g97682_))
                ((let () (declare (not safe)) (##fx= _g97681_ 4))
                 (apply (lambda (_%obj94394%_
                                 _%slot94395%_
                                 _%val94396%_
                                 _%E94397%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94394%_
                             _%slot94395%_
                             _%val94396%_
                             _%E94397%_)))
                        _g97682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97682_))))))
    (define __slot-error
      (lambda (_%obj94349%_ _%slot94350%_)
        (error '"Cannot find slot"
               'object:
               _%obj94349%_
               'slot:
               _%slot94350%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94324%_ _%maybe-super-class94325%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94324%_ 'class))
              (let ((_%maybe-sub-class94329%_ _%maybe-sub-class94324%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-class94325%_
                       'class))
                    (let ((_%maybe-super-class94339%_
                           _%maybe-super-class94325%_))
                      (declare (not safe))
                      (__subclass?
                       _%maybe-sub-class94329%_
                       _%maybe-super-class94339%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94325%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class94324%_)
                '#!void)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94296%_ _%maybe-super-class94297%_)
        (let ()
          (let* ((_%maybe-sub-class94300%_ _%maybe-sub-class94296%_)
                 (_%maybe-super-class94308%_ _%maybe-super-class94297%_))
            (let* ((_%maybe-super-class-id94317%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%maybe-super-class94308%_)))
                   (_%$e94319%_
                    (eq? _%maybe-super-class-id94317%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%maybe-sub-class94300%_)))))
              (if _%$e94319%_
                  _%$e94319%_
                  (let ((__tmp97684
                         (lambda (_%super-class94322%_)
                           (eq? (let ()
                                  (declare (not safe))
                                  (##type-id _%super-class94322%_))
                                _%maybe-super-class-id94317%_)))
                        (__tmp97683
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%maybe-sub-class94300%_
                            '6
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__ormap1 __tmp97684 __tmp97683))))))))
    (define object?
      (lambda (_%o94293%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94293%_))
              (let ((__tmp97685
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94293%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp97685 'class))
              '#f))))
    (define object-type
      (lambda (_%o94288%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94288%_))
              (let ((_%klass94291%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94288%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94291%_ 'class))
                    _%klass94291%_
                    (begin
                      (error '"not an object" _%o94288%_ _%klass94291%_)
                      '#!void)))
              (begin (error '"not an object" _%o94288%_) '#!void)))))
    (define direct-instance?
      (lambda (_%klass94273%_ _%obj94274%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94273%_ 'class))
              (let ((_%klass94278%_ _%klass94273%_))
                (declare (not safe))
                (__direct-instance? _%klass94278%_ _%obj94274%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94273%_)
                '#!void)))))
    (define __direct-instance?
      (lambda (_%klass94260%_ _%obj94261%_)
        (let ()
          (let* ((_%klass94264%_ _%klass94260%_)
                 (__tmp97686
                  (let () (declare (not safe)) (##type-id _%klass94264%_))))
            (declare (not safe))
            (##structure-direct-instance-of? _%obj94261%_ __tmp97686)))))
    (define immediate-instance-of?
      (lambda (_%klass94256%_ _%obj94257%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94257%_))
              (eq? _%klass94256%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94257%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94241%_ _%obj94242%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94241%_ 'class))
              (let ((_%klass94246%_ _%klass94241%_))
                (declare (not safe))
                (__struct-instance? _%klass94246%_ _%obj94242%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94241%_)
                '#!void)))))
    (define __struct-instance?
      (lambda (_%klass94228%_ _%obj94229%_)
        (let ()
          (let* ((_%klass94232%_ _%klass94228%_)
                 (__tmp97687
                  (let () (declare (not safe)) (##type-id _%klass94232%_))))
            (declare (not safe))
            (##structure-instance-of? _%obj94229%_ __tmp97687)))))
    (define class-instance?
      (lambda (_%klass94213%_ _%obj94214%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94213%_ 'class))
              (let ((_%klass94218%_ _%klass94213%_))
                (declare (not safe))
                (__class-instance? _%klass94218%_ _%obj94214%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94213%_)
                '#!void)))))
    (define __class-instance?
      (lambda (_%klass94198%_ _%obj94199%_)
        (let ()
          (let* ((_%klass94202%_ _%klass94198%_)
                 (_%type94211%_
                  (let () (declare (not safe)) (class-of _%obj94199%_))))
            (declare (not safe))
            (subclass? _%type94211%_ _%klass94202%_)))))
    (define make-object
      (lambda (_%klass94173%_ _%k94174%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94173%_ 'class))
              (let ((_%klass94178%_ _%klass94173%_))
                (if (let () (declare (not safe)) (fixnum? _%k94174%_))
                    (let ((_%k94188%_ _%k94174%_))
                      (declare (not safe))
                      (__make-object _%klass94178%_ _%k94188%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94174%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94173%_)
                '#!void)))))
    (define __make-object
      (lambda (_%klass94150%_ _%k94151%_)
        (let ()
          (let* ((_%klass94154%_ _%klass94150%_) (_%k94162%_ _%k94151%_))
            (if (let ()
                  (declare (not safe))
                  (__class-type-system? _%klass94154%_))
                (begin
                  (error '"cannot instantiate system class"
                         'class:
                         _%klass94154%_)
                  '#!void)
                (let ((_%obj94171%_
                       (let ()
                         (declare (not safe))
                         (##make-structure _%klass94154%_ _%k94162%_))))
                  (declare (not safe))
                  (object-fill! _%obj94171%_ '#f)))))))
    (define object-fill!
      (lambda (_%obj94135%_ _%fill94136%_)
        (let ()
          (if '#t
              (let ((_%obj94140%_ _%obj94135%_))
                (declare (not safe))
                (__object-fill! _%obj94140%_ _%fill94136%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
                 'contract:
                 'true
                 'value:
                 _%obj94135%_)
                '#!void)))))
    (define __object-fill!
      (lambda (_%obj94117%_ _%fill94118%_)
        (let ((_%obj94121%_ _%obj94117%_))
          (let _%loop94130%_ ((_%i94132%_
                               (let ((__tmp97689
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94121%_))))
                                 (declare (not safe))
                                 (##fx- __tmp97689 '1))))
            (let ()
              (if (let () (declare (not safe)) (##fx> _%i94132%_ '0))
                  (begin
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94121%_
                       _%fill94118%_
                       _%i94132%_
                       '#f
                       '#f))
                    (let ((__tmp97688
                           (let ()
                             (declare (not safe))
                             (##fx- _%i94132%_ '1))))
                      (declare (not safe))
                      (_%loop94130%_ __tmp97688)))
                  _%obj94121%_))))))
    (define new-instance
      (lambda (_%klass94103%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94103%_ 'class))
              (let ((_%klass94107%_ _%klass94103%_))
                (declare (not safe))
                (__new-instance _%klass94107%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94103%_)
                '#!void)))))
    (define __new-instance
      (lambda (_%klass94091%_)
        (let ()
          (let* ((_%klass94094%_ _%klass94091%_)
                 (__obj97585
                  (let ((__tmp97690
                         (let ((__tmp97691
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass94094%_
                                   '7
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (##vector-length __tmp97691))))
                    (declare (not safe))
                    (##make-structure _%klass94094%_ __tmp97690))))
            (let () (declare (not safe)) (object-fill! __obj97585 '#f))
            __obj97585))))
    (define make-instance
      (lambda (_%klass94076%_ . _%args94077%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94076%_ 'class))
              (let ((_%klass94081%_ _%klass94076%_))
                (declare (not safe))
                (##apply __make-instance _%klass94081%_ _%args94077%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94076%_)
                '#!void)))))
    (define __make-instance
      (lambda (_%klass94048%_ . _%args94049%_)
        (let ()
          (let* ((_%klass94052%_ _%klass94048%_)
                 (_%$e94061%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94052%_ '10 '#f '#f))))
            (if _%$e94061%_
                ((lambda (_%kons-id94064%_)
                   (let ((_%obj94066%_
                          (let ()
                            (declare (not safe))
                            (__new-instance _%klass94052%_))))
                     (let ()
                       (declare (not safe))
                       (___constructor-init!
                        _%klass94052%_
                        _%kons-id94064%_
                        _%obj94066%_
                        _%args94049%_))
                     _%obj94066%_))
                 _%$e94061%_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass94052%_))
                    (let ((_%obj94069%_
                           (let ()
                             (declare (not safe))
                             (__new-instance _%klass94052%_))))
                      (let ()
                        (declare (not safe))
                        (__metaclass-instance-init!
                         _%klass94052%_
                         _%obj94069%_
                         _%args94049%_))
                      _%obj94069%_)
                    (if (let ((__tmp97692
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _%klass94052%_))))
                          (declare (not safe))
                          (not __tmp97692))
                        (let ((_%obj94072%_
                               (let ()
                                 (declare (not safe))
                                 (__new-instance _%klass94052%_))))
                          (let ()
                            (declare (not safe))
                            (___class-instance-init!
                             _%klass94052%_
                             _%obj94072%_
                             _%args94049%_))
                          _%obj94072%_)
                        (if (let ((__tmp97694
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-field-count
                                      _%klass94052%_)))
                                  (__tmp97693 (length _%args94049%_)))
                              (declare (not safe))
                              (##fx= __tmp97694 __tmp97693))
                            (let ()
                              (apply ##structure _%klass94052%_ _%args94049%_))
                            (let ()
                              (error '"arguments don't match object size"
                                     'class:
                                     _%klass94052%_
                                     'slots:
                                     (let ()
                                       (declare (not safe))
                                       (__class-type-slot-list _%klass94052%_))
                                     'args:
                                     _%args94049%_)
                              '#!void)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94033%_ . _%args94034%_)
        (let ()
          (if '#t
              (let ((_%obj94038%_ _%obj94033%_))
                (declare (not safe))
                (##apply __struct-instance-init! _%obj94038%_ _%args94034%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
                 'contract:
                 'true
                 'value:
                 _%obj94033%_)
                '#!void)))))
    (define __struct-instance-init!
      (lambda (_%obj94020%_ . _%args94021%_)
        (let ((_%obj94024%_ _%obj94020%_))
          (if (let ((__tmp97696 (length _%args94021%_))
                    (__tmp97695
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94024%_))))
                (declare (not safe))
                (##fx< __tmp97696 __tmp97695))
              (let ()
                (declare (not safe))
                (___struct-instance-init! _%obj94024%_ _%args94021%_))
              (error '"too many arguments for struct"
                     'object:
                     _%obj94024%_
                     'args:
                     _%args94021%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj93979%_ _%args93980%_)
        (let _%lp93982%_ ((_%k93984%_ '1) (_%rest93985%_ _%args93980%_))
          (let* ((_%rest9398693994%_ _%rest93985%_)
                 (_%else9398894002%_ (lambda () _%obj93979%_))
                 (_%K9399094008%_
                  (lambda (_%rest94005%_ _%hd94006%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj93979%_
                       _%k93984%_
                       _%hd94006%_))
                    (let ((__tmp97697
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k93984%_ '1))))
                      (declare (not safe))
                      (_%lp93982%_ __tmp97697 _%rest94005%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9398693994%_))
                (let ((_%hd9399194011%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9398693994%_)))
                      (_%tl9399294013%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9398693994%_))))
                  (let* ((_%hd94016%_ _%hd9399194011%_)
                         (_%rest94018%_ _%tl9399294013%_))
                    (declare (not safe))
                    (_%K9399094008%_ _%rest94018%_ _%hd94016%_)))
                (let () (declare (not safe)) (_%else9398894002%_)))))))
    (define class-instance-init!
      (lambda (_%obj93964%_ . _%args93965%_)
        (let ()
          (if '#t
              (let ((_%obj93969%_ _%obj93964%_))
                (declare (not safe))
                (##apply __class-instance-init! _%obj93969%_ _%args93965%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
                 'contract:
                 'true
                 'value:
                 _%obj93964%_)
                '#!void)))))
    (define __class-instance-init!
      (lambda (_%obj93951%_ . _%args93952%_)
        (let ((_%obj93955%_ _%obj93951%_))
          (let ((__tmp97698
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj93955%_))))
            (declare (not safe))
            (___class-instance-init! __tmp97698 _%obj93955%_ _%args93952%_))
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass93893%_ _%obj93894%_ _%args93895%_)
        (let _%lp93897%_ ((_%rest93899%_ _%args93895%_))
          (let* ((_%rest9390093910%_ _%rest93899%_)
                 (_%else9390293918%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest93899%_))
                        _%obj93894%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass93893%_
                               'rest:
                               _%rest93899%_))))
                 (_%K9390493932%_
                  (lambda (_%rest93921%_ _%val93922%_ _%key93923%_)
                    (if (let ((__tmp97699
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key93923%_))))
                          (declare (not safe))
                          (not __tmp97699))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key93923%_))
                        (let ((_%$e93926%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass93893%_
                                  _%key93923%_))))
                          (if _%$e93926%_
                              ((lambda (_%off93929%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj93894%_
                                    _%off93929%_
                                    _%val93922%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp93897%_ _%rest93921%_)))
                               _%$e93926%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass93893%_
                                       'slot:
                                       _%key93923%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9390093910%_))
                (let ((_%hd9390593935%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9390093910%_)))
                      (_%tl9390693937%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9390093910%_))))
                  (let ((_%key93940%_ _%hd9390593935%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9390693937%_))
                        (let ((_%hd9390793942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9390693937%_)))
                              (_%tl9390893944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9390693937%_))))
                          (let* ((_%val93947%_ _%hd9390793942%_)
                                 (_%rest93949%_ _%tl9390893944%_))
                            (declare (not safe))
                            (_%K9390493932%_
                             _%rest93949%_
                             _%val93947%_
                             _%key93940%_)))
                        (let () (declare (not safe)) (_%else9390293918%_)))))
                (let () (declare (not safe)) (_%else9390293918%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass93889%_ _%obj93890%_ _%args93891%_)
        (apply call-method
               _%klass93889%_
               'instance-init!
               _%obj93890%_
               _%args93891%_)))
    (define constructor-init!
      (lambda (_%klass93852%_ _%kons-id93853%_ _%obj93854%_ . _%args93855%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93852%_ 'class))
              (let ((_%klass93859%_ _%klass93852%_))
                (if (let () (declare (not safe)) (symbol? _%kons-id93853%_))
                    (let ((_%kons-id93869%_ _%kons-id93853%_))
                      (if '#t
                          (let ((_%obj93879%_ _%obj93854%_))
                            (declare (not safe))
                            (##apply __constructor-init!
                                     _%klass93859%_
                                     _%kons-id93869%_
                                     _%obj93879%_
                                     _%args93855%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                             'contract:
                             'true
                             'value:
                             _%obj93854%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id93853%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93852%_)
                '#!void)))))
    (define __constructor-init!
      (lambda (_%klass93821%_ _%kons-id93822%_ _%obj93823%_ . _%args93824%_)
        (let ((_%klass93827%_ _%klass93821%_))
          (let* ((_%kons-id93835%_ _%kons-id93822%_)
                 (_%obj93843%_ _%obj93823%_))
            (let ()
              (declare (not safe))
              (___constructor-init!
               _%klass93827%_
               _%kons-id93835%_
               _%obj93843%_
               _%args93824%_))
            '#!void))))
    (define ___constructor-init!
      (lambda (_%klass93810%_ _%kons-id93811%_ _%obj93812%_ _%args93813%_)
        (let ((_%$e93815%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass93810%_
                  _%obj93812%_
                  _%kons-id93811%_))))
          (if _%$e93815%_
              ((lambda (_%kons93818%_)
                 (apply _%kons93818%_ _%obj93812%_ _%args93813%_)
                 _%obj93812%_)
               _%$e93815%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass93810%_
                       'method:
                       _%kons-id93811%_))))))
    (define struct-copy
      (lambda (_%struct93796%_)
        (let ()
          (if '#t
              (let ((_%struct93800%_ _%struct93796%_))
                (declare (not safe))
                (__struct-copy _%struct93800%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
                 'contract:
                 'true
                 'value:
                 _%struct93796%_)
                '#!void)))))
    (define __struct-copy
      (lambda (_%struct93784%_)
        (let ((_%struct93787%_ _%struct93784%_))
          (declare (not safe))
          (##structure-copy _%struct93787%_))))
    (define struct->list
      (lambda (_%obj93770%_)
        (let ()
          (if '#t
              (let ((_%obj93774%_ _%obj93770%_))
                (declare (not safe))
                (__struct->list _%obj93774%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
                 'contract:
                 'true
                 'value:
                 _%obj93770%_)
                '#!void)))))
    (define __struct->list
      (lambda (_%obj93758%_)
        (let ((_%obj93761%_ _%obj93758%_))
          (declare (not safe))
          (##vector->list _%obj93761%_))))
    (define class->list
      (lambda (_%obj93744%_)
        (let ()
          (if '#t
              (let ((_%obj93748%_ _%obj93744%_))
                (declare (not safe))
                (__class->list _%obj93748%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
                 'contract:
                 'true
                 'value:
                 _%obj93744%_)
                '#!void)))))
    (define __class->list
      (lambda (_%obj93720%_)
        (let ((_%obj93723%_ _%obj93720%_))
          (let* ((_%klass93732%_
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj93723%_)))
                 (_%slot-vector93734%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93732%_ '7 '#f '#f))))
            (let _%loop93736%_ ((_%index93738%_
                                 (let ((__tmp97705
                                        (let ()
                                          (declare (not safe))
                                          (##vector-length
                                           _%slot-vector93734%_))))
                                   (declare (not safe))
                                   (##fx- __tmp97705 '1)))
                                (_%plist93739%_ '()))
              (let ()
                (if (let () (declare (not safe)) (##fx< _%index93738%_ '1))
                    (cons _%klass93732%_ _%plist93739%_)
                    (let ((_%slot93742%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref
                              _%slot-vector93734%_
                              _%index93738%_))))
                      (let ((__tmp97704
                             (let ()
                               (declare (not safe))
                               (##fx- _%index93738%_ '1)))
                            (__tmp97700
                             (let ((__tmp97703
                                    (let ()
                                      (declare (not safe))
                                      (symbol->keyword _%slot93742%_)))
                                   (__tmp97701
                                    (let ((__tmp97702
                                           (let ()
                                             (declare (not safe))
                                             (unchecked-field-ref
                                              _%obj93723%_
                                              _%index93738%_))))
                                      (declare (not safe))
                                      (cons __tmp97702 _%plist93739%_))))
                               (declare (not safe))
                               (cons __tmp97703 __tmp97701))))
                        (declare (not safe))
                        (_%loop93736%_ __tmp97704 __tmp97700))))))))))
    (define call-method
      (lambda (_%obj93704%_ _%id93705%_ . _%args93706%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93705%_))
              (let ((_%id93710%_ _%id93705%_))
                (declare (not safe))
                (##apply __call-method _%obj93704%_ _%id93710%_ _%args93706%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id93705%_)
                '#!void)))))
    (define __call-method
      (lambda (_%obj93673%_ _%id93674%_ . _%args93675%_)
        (let ()
          (let* ((_%id93678%_ _%id93674%_)
                 (_%$e93687%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj93673%_ _%id93678%_))))
            (if _%$e93687%_
                ((lambda (_%method93690%_)
                   (let ((_%method93692%_ _%method93690%_))
                     (apply _%method93692%_ _%obj93673%_ _%args93675%_)))
                 _%$e93687%_)
                (let ()
                  (error '"cannot find method"
                         'object:
                         _%obj93673%_
                         'method:
                         _%id93678%_)))))))
    (define method-ref
      (lambda (_%obj93658%_ _%id93659%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93659%_))
              (let ((_%id93663%_ _%id93659%_))
                (declare (not safe))
                (__method-ref _%obj93658%_ _%id93663%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
                 'contract:
                 'symbol?
                 'value:
                 _%id93659%_)
                '#!void)))))
    (define __method-ref
      (lambda (_%obj93645%_ _%id93646%_)
        (let ()
          (let* ((_%id93649%_ _%id93646%_)
                 (__tmp97706
                  (let () (declare (not safe)) (class-of _%obj93645%_))))
            (declare (not safe))
            (__find-method __tmp97706 _%obj93645%_ _%id93649%_)))))
    (define checked-method-ref
      (lambda (_%obj93638%_ _%id93639%_)
        (let ((_%$e93642%_
               (let ()
                 (declare (not safe))
                 (method-ref _%obj93638%_ _%id93639%_))))
          (if _%$e93642%_
              _%$e93642%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj93638%_
                       'method:
                       _%id93639%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj93623%_ _%id93624%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93624%_))
              (let ((_%id93628%_ _%id93624%_))
                (declare (not safe))
                (__bound-method-ref _%obj93623%_ _%id93628%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
                 'contract:
                 'symbol?
                 'value:
                 _%id93624%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj93591%_ _%id93592%_)
        (let ()
          (let* ((_%id93595%_ _%id93592%_)
                 (_%$e93604%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj93591%_ _%id93595%_))))
            (if _%$e93604%_
                ((lambda (_%method93607%_)
                   (let ((_%method93609%_ _%method93607%_))
                     (lambda _%args93620%_
                       (apply _%method93609%_ _%obj93591%_ _%args93620%_))))
                 _%$e93604%_)
                (let () '#f))))))
    (define checked-bound-method-ref
      (lambda (_%obj93576%_ _%id93577%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93577%_))
              (let ((_%id93581%_ _%id93577%_))
                (declare (not safe))
                (__checked-bound-method-ref _%obj93576%_ _%id93581%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id93577%_)
                '#!void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj93559%_ _%id93560%_)
        (let ()
          (let* ((_%id93563%_ _%id93560%_)
                 (_%method93572%_
                  (let ()
                    (declare (not safe))
                    (checked-method-ref _%obj93559%_ _%id93563%_))))
            (lambda _%args93574%_
              (apply _%method93572%_ _%obj93559%_ _%args93574%_))))))
    (define find-method
      (lambda (_%klass93533%_ _%obj93534%_ _%id93535%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93533%_ 'class))
              (let ((_%klass93539%_ _%klass93533%_))
                (if (let () (declare (not safe)) (symbol? _%id93535%_))
                    (let ((_%id93549%_ _%id93535%_))
                      (declare (not safe))
                      (__find-method _%klass93539%_ _%obj93534%_ _%id93549%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id93535%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93533%_)
                '#!void)))))
    (define __find-method
      (lambda (_%klass93506%_ _%obj93507%_ _%id93508%_)
        (let ((_%klass93511%_ _%klass93506%_))
          (let* ((_%id93519%_ _%id93508%_)
                 (_%$e93528%_
                  (let ()
                    (declare (not safe))
                    (__direct-method-ref
                     _%klass93511%_
                     _%obj93507%_
                     _%id93519%_))))
            (if _%$e93528%_
                _%$e93528%_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass93511%_))
                    (let () '#f)
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93511%_
                       _%obj93507%_
                       _%id93519%_))))))))
    (define mixin-find-method
      (lambda (_%mixins93490%_ _%obj93491%_ _%id93492%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93492%_))
              (let ((_%id93496%_ _%id93492%_))
                (declare (not safe))
                (__mixin-find-method _%mixins93490%_ _%obj93491%_ _%id93496%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id93492%_)
                '#!void)))))
    (define __mixin-find-method
      (lambda (_%mixins93472%_ _%obj93473%_ _%id93474%_)
        (let ()
          (let* ((_%id93477%_ _%id93474%_)
                 (__tmp97707
                  (lambda (_%g9348593487%_)
                    (let ()
                      (declare (not safe))
                      (direct-method-ref
                       _%g9348593487%_
                       _%obj93473%_
                       _%id93477%_)))))
            (declare (not safe))
            (__ormap1 __tmp97707 _%mixins93472%_)))))
    (define direct-method-ref
      (lambda (_%klass93446%_ _%obj93447%_ _%id93448%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93446%_ 'class))
              (let ((_%klass93452%_ _%klass93446%_))
                (if (let () (declare (not safe)) (symbol? _%id93448%_))
                    (let ((_%id93462%_ _%id93448%_))
                      (declare (not safe))
                      (__direct-method-ref
                       _%klass93452%_
                       _%obj93447%_
                       _%id93462%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93448%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93446%_)
                '#!void)))))
    (define __direct-method-ref
      (lambda (_%klass93400%_ _%obj93401%_ _%id93402%_)
        (let ()
          (let* ((_%klass93405%_ _%klass93400%_) (_%id93413%_ _%id93402%_))
            (letrec ((_%metaclass-resolve-method93422%_
                      (lambda ()
                        (let ((__method97586
                               (let ()
                                 (declare (not safe))
                                 (__method-ref
                                  _%klass93405%_
                                  'direct-method-ref))))
                          (if __method97586
                              (__method97586
                               _%klass93405%_
                               _%obj93401%_
                               _%id93413%_)
                              (error '"Missing method"
                                     _%klass93405%_
                                     'direct-method-ref)))))
                     (_%metaclass-resolve-method!93423%_
                      (lambda ()
                        (let ((_%method93443%_
                               (let ()
                                 (declare (not safe))
                                 (_%metaclass-resolve-method93422%_))))
                          (let ((__tmp97709
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass93405%_
                                    '11
                                    '#f
                                    '#f)))
                                (__tmp97708
                                 (if _%method93443%_ 'resolved 'unknown)))
                            (declare (not safe))
                            (symbolic-table-set!
                             __tmp97709
                             _%id93413%_
                             __tmp97708))
                          _%method93443%_))))
              (let ((_%$e93425%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass93405%_
                        '11
                        '#f
                        '#f))))
                (if _%$e93425%_
                    ((lambda (_%ht93428%_)
                       (let ((_%method93430%_
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht93428%_
                                 _%id93413%_
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (procedure? _%method93430%_))
                             (let () _%method93430%_)
                             (if (let ()
                                   (declare (not safe))
                                   (__class-type-metaclass? _%klass93405%_))
                                 (let ((_%$e93434%_ _%method93430%_))
                                   (if (eq? 'resolved _%$e93434%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%metaclass-resolve-method93422%_))
                                       (if (eq? 'unknown _%$e93434%_)
                                           '#f
                                           (let ()
                                             (declare (not safe))
                                             (_%metaclass-resolve-method!93423%_)))))
                                 (let () '#f)))))
                     _%$e93425%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass93405%_))
                        (let ((_%tab93439%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93405%_
                             _%tab93439%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%metaclass-resolve-method!93423%_)))
                        (let () '#f)))))))))
    (define mixin-method-ref
      (lambda (_%klass93374%_ _%obj93375%_ _%id93376%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93374%_ 'class))
              (let ((_%klass93380%_ _%klass93374%_))
                (if (let () (declare (not safe)) (symbol? _%id93376%_))
                    (let ((_%id93390%_ _%id93376%_))
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93380%_
                       _%obj93375%_
                       _%id93390%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93376%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93374%_)
                '#!void)))))
    (define __mixin-method-ref
      (lambda (_%klass93352%_ _%obj93353%_ _%id93354%_)
        (let ((_%klass93357%_ _%klass93352%_))
          (let* ((_%id93365%_ _%id93354%_)
                 (__tmp97710
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93357%_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp97710 _%obj93353%_ _%id93365%_)))))
    (define bind-method!__%
      (lambda (_%klass93311%_ _%id93312%_ _%proc93313%_ _%rebind?93314%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93312%_))
              (let ((_%id93318%_ _%id93312%_))
                (if (let () (declare (not safe)) (procedure? _%proc93313%_))
                    (let ((_%proc93328%_ _%proc93313%_))
                      (declare (not safe))
                      (__bind-method!__%
                       _%klass93311%_
                       _%id93318%_
                       _%proc93328%_
                       _%rebind?93314%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93313%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
                 'contract:
                 'symbol?
                 'value:
                 _%id93312%_)
                '#!void)))))
    (define bind-method!__0
      (lambda (_%klass93341%_ _%id93342%_ _%proc93343%_)
        (let ((_%rebind?93345%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93341%_
           _%id93342%_
           _%proc93343%_
           _%rebind?93345%_))))
    (define bind-method!
      (lambda _g97712_
        (let ((_g97711_ (let () (declare (not safe)) (##length _g97712_))))
          (cond ((let () (declare (not safe)) (##fx= _g97711_ 3))
                 (apply (lambda (_%klass93341%_ _%id93342%_ _%proc93343%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93341%_
                             _%id93342%_
                             _%proc93343%_)))
                        _g97712_))
                ((let () (declare (not safe)) (##fx= _g97711_ 4))
                 (apply (lambda (_%klass93347%_
                                 _%id93348%_
                                 _%proc93349%_
                                 _%rebind?93350%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93347%_
                             _%id93348%_
                             _%proc93349%_
                             _%rebind?93350%_)))
                        _g97712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97712_))))))
    (define __bind-method!__%
      (lambda (_%klass93262%_ _%id93263%_ _%proc93264%_ _%rebind?93265%_)
        (let ()
          (let* ((_%id93268%_ _%id93263%_) (_%proc93276%_ _%proc93264%_))
            (letrec ((_%bind!93285%_
                      (lambda (_%ht93294%_)
                        (if (and (let ()
                                   (declare (not safe))
                                   (not _%rebind?93265%_))
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%ht93294%_
                                    _%id93268%_
                                    '#f)))
                            (error '"method already bound"
                                   'class:
                                   _%klass93262%_
                                   'method:
                                   _%id93268%_)
                            (begin
                              (let ()
                                (declare (not safe))
                                (symbolic-table-set!
                                 _%ht93294%_
                                 _%id93268%_
                                 _%proc93276%_))
                              '#!void)))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass93262%_ 'class))
                  (let ((_%ht93288%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93262%_
                            '11
                            '#f
                            '#f))))
                    (if _%ht93288%_
                        (let ()
                          (declare (not safe))
                          (_%bind!93285%_ _%ht93288%_))
                        (let ((_%ht93290%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93262%_
                             _%ht93290%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%bind!93285%_ _%ht93290%_)))))
                  (if (let () (declare (not safe)) (##type? _%klass93262%_))
                      (let ((__tmp97713
                             (let ()
                               (declare (not safe))
                               (__shadow-class _%klass93262%_))))
                        (declare (not safe))
                        (__bind-method!
                         __tmp97713
                         _%id93268%_
                         _%proc93276%_
                         _%rebind?93265%_))
                      (let ()
                        (error '"bad class; expected class or builtin type"
                               _%klass93262%_)))))))))
    (define __bind-method!__0
      (lambda (_%klass93299%_ _%id93300%_ _%proc93301%_)
        (let ((_%rebind?93303%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93299%_
           _%id93300%_
           _%proc93301%_
           _%rebind?93303%_))))
    (define __bind-method!
      (lambda _g97715_
        (let ((_g97714_ (let () (declare (not safe)) (##length _g97715_))))
          (cond ((let () (declare (not safe)) (##fx= _g97714_ 3))
                 (apply (lambda (_%klass93299%_ _%id93300%_ _%proc93301%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93299%_
                             _%id93300%_
                             _%proc93301%_)))
                        _g97715_))
                ((let () (declare (not safe)) (##fx= _g97714_ 4))
                 (apply (lambda (_%klass93305%_
                                 _%id93306%_
                                 _%proc93307%_
                                 _%rebind?93308%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93305%_
                             _%id93306%_
                             _%proc93307%_
                             _%rebind?93308%_)))
                        _g97715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97715_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93242%_ _%seed93244%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93242%_
           procedure-hash
           eq?
           _%seed93244%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93250%_ '#f) (_%seed93252%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93250%_
           _%seed93252%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93254%_)
        (let ((_%seed93256%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93254%_
           _%seed93256%_))))
    (define make-method-specializer-table
      (lambda _g97717_
        (let ((_g97716_ (let () (declare (not safe)) (##length _g97717_))))
          (cond ((let () (declare (not safe)) (##fx= _g97716_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g97717_))
                ((let () (declare (not safe)) (##fx= _g97716_ 1))
                 (apply (lambda (_%size-hint93254%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93254%_)))
                        _g97717_))
                ((let () (declare (not safe)) (##fx= _g97716_ 2))
                 (apply (lambda (_%size-hint93258%_ _%seed93259%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93258%_
                             _%seed93259%_)))
                        _g97717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97717_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93195%_ _%key93196%_ _%default93197%_)
        (let ((_%table93199%_
               (let () (declare (not safe)) (&raw-table-table _%tab93195%_)))
              (_%seed93200%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93195%_))))
          (let* ((_%h93202%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93196%_))
                         _%seed93200%_))
                 (_%size93205%_ (vector-length _%table93199%_))
                 (_%entries93208%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93205%_ '2)))
                 (_%start93211%_
                  (let ((__tmp97718
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93202%_ _%entries93208%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97718 '1))))
            (let _%loop93215%_ ((_%probe93218%_ _%start93211%_)
                                (_%i93220%_ '1)
                                (_%deleted93222%_ '#f))
              (let ((_%k93225%_ (vector-ref _%table93199%_ _%probe93218%_)))
                (if (eq? _%k93225%_ (macro-unused-obj))
                    (let () _%default93197%_)
                    (if (eq? _%k93225%_ (macro-deleted-obj))
                        (let ((__tmp97721
                               (let ((_%next-probe93230%_
                                      (fx+ _%start93211%_
                                           _%i93220%_
                                           (fx* _%i93220%_ _%i93220%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93230%_
                                  _%size93205%_)))
                              (__tmp97720
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93220%_ '1)))
                              (__tmp97719
                               (let ((_%$e93233%_ _%deleted93222%_))
                                 (if _%$e93233%_ _%$e93233%_ _%probe93218%_))))
                          (declare (not safe))
                          (_%loop93215%_ __tmp97721 __tmp97720 __tmp97719))
                        (if (eq? _%key93196%_ _%k93225%_)
                            (let ()
                              (vector-ref
                               _%table93199%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93218%_ '1))))
                            (let ((__tmp97723
                                   (let ((_%next-probe93238%_
                                          (fx+ _%start93211%_
                                               _%i93220%_
                                               (fx* _%i93220%_ _%i93220%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93238%_
                                      _%size93205%_)))
                                  (__tmp97722
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93220%_ '1))))
                              (declare (not safe))
                              (_%loop93215%_
                               __tmp97723
                               __tmp97722
                               _%deleted93222%_)))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93191%_ _%key93192%_ _%value93193%_)
        (if (let ((__tmp97726
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93191%_)))
                  (__tmp97724
                   (let ((__tmp97725
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93191%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97725 '4))))
              (declare (not safe))
              (##fx< __tmp97726 __tmp97724))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93191%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93191%_
           _%key93192%_
           _%value93193%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93142%_ _%key93143%_ _%value93144%_)
        (let ((_%table93147%_
               (let () (declare (not safe)) (&raw-table-table _%tab93142%_)))
              (_%seed93148%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93142%_))))
          (let* ((_%h93150%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93143%_))
                         _%seed93148%_))
                 (_%size93153%_ (vector-length _%table93147%_))
                 (_%entries93156%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93153%_ '2)))
                 (_%start93159%_
                  (let ((__tmp97727
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93150%_ _%entries93156%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97727 '1))))
            (let _%loop93163%_ ((_%probe93166%_ _%start93159%_)
                                (_%i93168%_ '1)
                                (_%deleted93170%_ '#f))
              (let ((_%k93173%_ (vector-ref _%table93147%_ _%probe93166%_)))
                (if (eq? _%k93173%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93170%_
                          (begin
                            (vector-set!
                             _%table93147%_
                             _%deleted93170%_
                             _%key93143%_)
                            (vector-set!
                             _%table93147%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93170%_ '1))
                             _%value93144%_)
                            ((lambda ()
                               (let ((__tmp97728
                                      (let ((__tmp97729
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93142%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97729 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93142%_
                                  __tmp97728)))))
                          (begin
                            (vector-set!
                             _%table93147%_
                             _%probe93166%_
                             _%key93143%_)
                            (vector-set!
                             _%table93147%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93166%_ '1))
                             _%value93144%_)
                            ((lambda ()
                               (let ((__tmp97730
                                      (let ((__tmp97731
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93142%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97731 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93142%_
                                  __tmp97730))
                               (let ((__tmp97732
                                      (let ((__tmp97733
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93142%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97733 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93142%_
                                  __tmp97732)))))))
                    (if (eq? _%k93173%_ (macro-deleted-obj))
                        (let ((__tmp97736
                               (let ((_%next-probe93180%_
                                      (fx+ _%start93159%_
                                           _%i93168%_
                                           (fx* _%i93168%_ _%i93168%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93180%_
                                  _%size93153%_)))
                              (__tmp97735
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93168%_ '1)))
                              (__tmp97734
                               (let ((_%$e93183%_ _%deleted93170%_))
                                 (if _%$e93183%_ _%$e93183%_ _%probe93166%_))))
                          (declare (not safe))
                          (_%loop93163%_ __tmp97736 __tmp97735 __tmp97734))
                        (if (eq? _%key93143%_ _%k93173%_)
                            (let ()
                              (vector-set!
                               _%table93147%_
                               _%probe93166%_
                               _%key93143%_)
                              (vector-set!
                               _%table93147%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93166%_ '1))
                               _%value93144%_))
                            (let ((__tmp97738
                                   (let ((_%next-probe93188%_
                                          (fx+ _%start93159%_
                                               _%i93168%_
                                               (fx* _%i93168%_ _%i93168%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93188%_
                                      _%size93153%_)))
                                  (__tmp97737
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93168%_ '1))))
                              (declare (not safe))
                              (_%loop93163%_
                               __tmp97738
                               __tmp97737
                               _%deleted93170%_)))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93137%_
               _%key93138%_
               _%method-specializer-table-update!93139%_
               _%default93140%_)
        (if (let ((__tmp97741
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93137%_)))
                  (__tmp97739
                   (let ((__tmp97740
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93137%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97740 '4))))
              (declare (not safe))
              (##fx< __tmp97741 __tmp97739))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93137%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93137%_
           _%key93138%_
           _%method-specializer-table-update!93139%_
           _%default93140%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93087%_
               _%key93088%_
               _%method-specializer-table-update!93089%_
               _%default93090%_)
        (let ((_%table93093%_
               (let () (declare (not safe)) (&raw-table-table _%tab93087%_)))
              (_%seed93094%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93087%_))))
          (let* ((_%h93096%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93088%_))
                         _%seed93094%_))
                 (_%size93099%_ (vector-length _%table93093%_))
                 (_%entries93102%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93099%_ '2)))
                 (_%start93105%_
                  (let ((__tmp97742
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93096%_ _%entries93102%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97742 '1))))
            (let _%loop93109%_ ((_%probe93112%_ _%start93105%_)
                                (_%i93114%_ '1)
                                (_%deleted93116%_ '#f))
              (let ((_%k93119%_ (vector-ref _%table93093%_ _%probe93112%_)))
                (if (eq? _%k93119%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93116%_
                          (begin
                            (vector-set!
                             _%table93093%_
                             _%deleted93116%_
                             _%key93088%_)
                            (vector-set!
                             _%table93093%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93116%_ '1))
                             (_%method-specializer-table-update!93089%_
                              _%default93090%_))
                            ((lambda ()
                               (let ((__tmp97743
                                      (let ((__tmp97744
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93087%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97744 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93087%_
                                  __tmp97743)))))
                          (begin
                            (vector-set!
                             _%table93093%_
                             _%probe93112%_
                             _%key93088%_)
                            (vector-set!
                             _%table93093%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93112%_ '1))
                             (_%method-specializer-table-update!93089%_
                              _%default93090%_))
                            ((lambda ()
                               (let ((__tmp97745
                                      (let ((__tmp97746
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93087%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97746 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93087%_
                                  __tmp97745))
                               (let ((__tmp97747
                                      (let ((__tmp97748
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93087%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97748 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93087%_
                                  __tmp97747)))))))
                    (if (eq? _%k93119%_ (macro-deleted-obj))
                        (let ((__tmp97751
                               (let ((_%next-probe93126%_
                                      (fx+ _%start93105%_
                                           _%i93114%_
                                           (fx* _%i93114%_ _%i93114%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93126%_
                                  _%size93099%_)))
                              (__tmp97750
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93114%_ '1)))
                              (__tmp97749
                               (let ((_%$e93129%_ _%deleted93116%_))
                                 (if _%$e93129%_ _%$e93129%_ _%probe93112%_))))
                          (declare (not safe))
                          (_%loop93109%_ __tmp97751 __tmp97750 __tmp97749))
                        (if (eq? _%key93088%_ _%k93119%_)
                            (let ()
                              (vector-set!
                               _%table93093%_
                               _%probe93112%_
                               _%key93088%_)
                              (vector-set!
                               _%table93093%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93112%_ '1))
                               (_%method-specializer-table-update!93089%_
                                (vector-ref
                                 _%table93093%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93112%_ '1))))))
                            (let ((__tmp97753
                                   (let ((_%next-probe93134%_
                                          (fx+ _%start93105%_
                                               _%i93114%_
                                               (fx* _%i93114%_ _%i93114%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93134%_
                                      _%size93099%_)))
                                  (__tmp97752
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93114%_ '1))))
                              (declare (not safe))
                              (_%loop93109%_
                               __tmp97753
                               __tmp97752
                               _%deleted93116%_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93042%_ _%key93044%_)
        (let ((_%table93047%_
               (let () (declare (not safe)) (&raw-table-table _%tab93042%_)))
              (_%seed93049%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93042%_))))
          (let* ((_%h93052%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93044%_))
                         _%seed93049%_))
                 (_%size93055%_ (vector-length _%table93047%_))
                 (_%entries93058%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93055%_ '2)))
                 (_%start93061%_
                  (let ((__tmp97754
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93052%_ _%entries93058%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97754 '1))))
            (let _%loop93065%_ ((_%probe93068%_ _%start93061%_)
                                (_%i93070%_ '1))
              (let ((_%k93073%_ (vector-ref _%table93047%_ _%probe93068%_)))
                (if (eq? _%k93073%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93073%_ (macro-deleted-obj))
                        (let ((__tmp97756
                               (let ((_%next-probe93078%_
                                      (fx+ _%start93061%_
                                           _%i93070%_
                                           (fx* _%i93070%_ _%i93070%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93078%_
                                  _%size93055%_)))
                              (__tmp97755
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93070%_ '1))))
                          (declare (not safe))
                          (_%loop93065%_ __tmp97756 __tmp97755))
                        (if (eq? _%key93044%_ _%k93073%_)
                            (let ()
                              (vector-set!
                               _%table93047%_
                               _%probe93068%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93047%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93068%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97757
                                        (let ((__tmp97758
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93042%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97758 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93042%_
                                    __tmp97757)))))
                            (let ((__tmp97760
                                   (let ((_%next-probe93084%_
                                          (fx+ _%start93061%_
                                               _%i93070%_
                                               (fx* _%i93070%_ _%i93070%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93084%_
                                      _%size93055%_)))
                                  (__tmp97759
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93070%_ '1))))
                              (declare (not safe))
                              (_%loop93065%_ __tmp97760 __tmp97759)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93033%_ _%specializer93034%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93038%_ ()
            (if (let ((__tmp97761
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97761 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93038%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93033%_
           _%specializer93034%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93023%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93027%_ ()
            (if (let ((__tmp97762
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97762 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93027%_))))))
        (let ((_%specializer93031%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93023%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93031%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93021%_)
        (let ((__tmp97763
               (let () (declare (not safe)) (##type-id _%klass93021%_))))
          (declare (not safe))
          (symbolic-hash __tmp97763))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93002%_ _%seed93004%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93002%_
           __class-specializer-hash-key
           eq?
           _%seed93004%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93010%_ '#f) (_%seed93012%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93010%_ _%seed93012%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93014%_)
        (let ((_%seed93016%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93014%_ _%seed93016%_))))
    (define make-class-specializer-table
      (lambda _g97765_
        (let ((_g97764_ (let () (declare (not safe)) (##length _g97765_))))
          (cond ((let () (declare (not safe)) (##fx= _g97764_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g97765_))
                ((let () (declare (not safe)) (##fx= _g97764_ 1))
                 (apply (lambda (_%size-hint93014%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93014%_)))
                        _g97765_))
                ((let () (declare (not safe)) (##fx= _g97764_ 2))
                 (apply (lambda (_%size-hint93018%_ _%seed93019%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93018%_
                             _%seed93019%_)))
                        _g97765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97765_))))))
    (define class-specializer-table-ref
      (lambda (_%tab92955%_ _%key92956%_ _%default92957%_)
        (let ((_%table92959%_
               (let () (declare (not safe)) (&raw-table-table _%tab92955%_)))
              (_%seed92960%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92955%_))))
          (let* ((_%h92962%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92956%_))
                         _%seed92960%_))
                 (_%size92965%_ (vector-length _%table92959%_))
                 (_%entries92968%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92965%_ '2)))
                 (_%start92971%_
                  (let ((__tmp97766
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92962%_ _%entries92968%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97766 '1))))
            (let _%loop92975%_ ((_%probe92978%_ _%start92971%_)
                                (_%i92980%_ '1)
                                (_%deleted92982%_ '#f))
              (let ((_%k92985%_ (vector-ref _%table92959%_ _%probe92978%_)))
                (if (eq? _%k92985%_ (macro-unused-obj))
                    (let () _%default92957%_)
                    (if (eq? _%k92985%_ (macro-deleted-obj))
                        (let ((__tmp97769
                               (let ((_%next-probe92990%_
                                      (fx+ _%start92971%_
                                           _%i92980%_
                                           (fx* _%i92980%_ _%i92980%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe92990%_
                                  _%size92965%_)))
                              (__tmp97768
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i92980%_ '1)))
                              (__tmp97767
                               (let ((_%$e92993%_ _%deleted92982%_))
                                 (if _%$e92993%_ _%$e92993%_ _%probe92978%_))))
                          (declare (not safe))
                          (_%loop92975%_ __tmp97769 __tmp97768 __tmp97767))
                        (if (eq? _%key92956%_ _%k92985%_)
                            (let ()
                              (vector-ref
                               _%table92959%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92978%_ '1))))
                            (let ((__tmp97771
                                   (let ((_%next-probe92998%_
                                          (fx+ _%start92971%_
                                               _%i92980%_
                                               (fx* _%i92980%_ _%i92980%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe92998%_
                                      _%size92965%_)))
                                  (__tmp97770
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i92980%_ '1))))
                              (declare (not safe))
                              (_%loop92975%_
                               __tmp97771
                               __tmp97770
                               _%deleted92982%_)))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab92951%_ _%key92952%_ _%value92953%_)
        (if (let ((__tmp97774
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92951%_)))
                  (__tmp97772
                   (let ((__tmp97773
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92951%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97773 '4))))
              (declare (not safe))
              (##fx< __tmp97774 __tmp97772))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92951%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab92951%_
           _%key92952%_
           _%value92953%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab92902%_ _%key92903%_ _%value92904%_)
        (let ((_%table92907%_
               (let () (declare (not safe)) (&raw-table-table _%tab92902%_)))
              (_%seed92908%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92902%_))))
          (let* ((_%h92910%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92903%_))
                         _%seed92908%_))
                 (_%size92913%_ (vector-length _%table92907%_))
                 (_%entries92916%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92913%_ '2)))
                 (_%start92919%_
                  (let ((__tmp97775
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92910%_ _%entries92916%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97775 '1))))
            (let _%loop92923%_ ((_%probe92926%_ _%start92919%_)
                                (_%i92928%_ '1)
                                (_%deleted92930%_ '#f))
              (let ((_%k92933%_ (vector-ref _%table92907%_ _%probe92926%_)))
                (if (eq? _%k92933%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92930%_
                          (begin
                            (vector-set!
                             _%table92907%_
                             _%deleted92930%_
                             _%key92903%_)
                            (vector-set!
                             _%table92907%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92930%_ '1))
                             _%value92904%_)
                            ((lambda ()
                               (let ((__tmp97776
                                      (let ((__tmp97777
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92902%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97777 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92902%_
                                  __tmp97776)))))
                          (begin
                            (vector-set!
                             _%table92907%_
                             _%probe92926%_
                             _%key92903%_)
                            (vector-set!
                             _%table92907%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92926%_ '1))
                             _%value92904%_)
                            ((lambda ()
                               (let ((__tmp97778
                                      (let ((__tmp97779
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92902%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97779 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92902%_
                                  __tmp97778))
                               (let ((__tmp97780
                                      (let ((__tmp97781
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92902%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97781 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92902%_
                                  __tmp97780)))))))
                    (if (eq? _%k92933%_ (macro-deleted-obj))
                        (let ((__tmp97784
                               (let ((_%next-probe92940%_
                                      (fx+ _%start92919%_
                                           _%i92928%_
                                           (fx* _%i92928%_ _%i92928%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe92940%_
                                  _%size92913%_)))
                              (__tmp97783
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i92928%_ '1)))
                              (__tmp97782
                               (let ((_%$e92943%_ _%deleted92930%_))
                                 (if _%$e92943%_ _%$e92943%_ _%probe92926%_))))
                          (declare (not safe))
                          (_%loop92923%_ __tmp97784 __tmp97783 __tmp97782))
                        (if (eq? _%key92903%_ _%k92933%_)
                            (let ()
                              (vector-set!
                               _%table92907%_
                               _%probe92926%_
                               _%key92903%_)
                              (vector-set!
                               _%table92907%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92926%_ '1))
                               _%value92904%_))
                            (let ((__tmp97786
                                   (let ((_%next-probe92948%_
                                          (fx+ _%start92919%_
                                               _%i92928%_
                                               (fx* _%i92928%_ _%i92928%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe92948%_
                                      _%size92913%_)))
                                  (__tmp97785
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i92928%_ '1))))
                              (declare (not safe))
                              (_%loop92923%_
                               __tmp97786
                               __tmp97785
                               _%deleted92930%_)))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab92897%_
               _%key92898%_
               _%class-specializer-table-update!92899%_
               _%default92900%_)
        (if (let ((__tmp97789
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab92897%_)))
                  (__tmp97787
                   (let ((__tmp97788
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab92897%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97788 '4))))
              (declare (not safe))
              (##fx< __tmp97789 __tmp97787))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab92897%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab92897%_
           _%key92898%_
           _%class-specializer-table-update!92899%_
           _%default92900%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab92847%_
               _%key92848%_
               _%class-specializer-table-update!92849%_
               _%default92850%_)
        (let ((_%table92853%_
               (let () (declare (not safe)) (&raw-table-table _%tab92847%_)))
              (_%seed92854%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92847%_))))
          (let* ((_%h92856%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92848%_))
                         _%seed92854%_))
                 (_%size92859%_ (vector-length _%table92853%_))
                 (_%entries92862%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92859%_ '2)))
                 (_%start92865%_
                  (let ((__tmp97790
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92856%_ _%entries92862%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97790 '1))))
            (let _%loop92869%_ ((_%probe92872%_ _%start92865%_)
                                (_%i92874%_ '1)
                                (_%deleted92876%_ '#f))
              (let ((_%k92879%_ (vector-ref _%table92853%_ _%probe92872%_)))
                (if (eq? _%k92879%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted92876%_
                          (begin
                            (vector-set!
                             _%table92853%_
                             _%deleted92876%_
                             _%key92848%_)
                            (vector-set!
                             _%table92853%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted92876%_ '1))
                             (_%class-specializer-table-update!92849%_
                              _%default92850%_))
                            ((lambda ()
                               (let ((__tmp97791
                                      (let ((__tmp97792
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92847%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97792 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92847%_
                                  __tmp97791)))))
                          (begin
                            (vector-set!
                             _%table92853%_
                             _%probe92872%_
                             _%key92848%_)
                            (vector-set!
                             _%table92853%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe92872%_ '1))
                             (_%class-specializer-table-update!92849%_
                              _%default92850%_))
                            ((lambda ()
                               (let ((__tmp97793
                                      (let ((__tmp97794
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab92847%_))))
                                        (declare (not safe))
                                        (##fx- __tmp97794 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab92847%_
                                  __tmp97793))
                               (let ((__tmp97795
                                      (let ((__tmp97796
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab92847%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp97796 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab92847%_
                                  __tmp97795)))))))
                    (if (eq? _%k92879%_ (macro-deleted-obj))
                        (let ((__tmp97799
                               (let ((_%next-probe92886%_
                                      (fx+ _%start92865%_
                                           _%i92874%_
                                           (fx* _%i92874%_ _%i92874%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe92886%_
                                  _%size92859%_)))
                              (__tmp97798
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i92874%_ '1)))
                              (__tmp97797
                               (let ((_%$e92889%_ _%deleted92876%_))
                                 (if _%$e92889%_ _%$e92889%_ _%probe92872%_))))
                          (declare (not safe))
                          (_%loop92869%_ __tmp97799 __tmp97798 __tmp97797))
                        (if (eq? _%key92848%_ _%k92879%_)
                            (let ()
                              (vector-set!
                               _%table92853%_
                               _%probe92872%_
                               _%key92848%_)
                              (vector-set!
                               _%table92853%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92872%_ '1))
                               (_%class-specializer-table-update!92849%_
                                (vector-ref
                                 _%table92853%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe92872%_ '1))))))
                            (let ((__tmp97801
                                   (let ((_%next-probe92894%_
                                          (fx+ _%start92865%_
                                               _%i92874%_
                                               (fx* _%i92874%_ _%i92874%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe92894%_
                                      _%size92859%_)))
                                  (__tmp97800
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i92874%_ '1))))
                              (declare (not safe))
                              (_%loop92869%_
                               __tmp97801
                               __tmp97800
                               _%deleted92876%_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92802%_ _%key92804%_)
        (let ((_%table92807%_
               (let () (declare (not safe)) (&raw-table-table _%tab92802%_)))
              (_%seed92809%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92802%_))))
          (let* ((_%h92812%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key92804%_))
                         _%seed92809%_))
                 (_%size92815%_ (vector-length _%table92807%_))
                 (_%entries92818%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size92815%_ '2)))
                 (_%start92821%_
                  (let ((__tmp97802
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h92812%_ _%entries92818%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97802 '1))))
            (let _%loop92825%_ ((_%probe92828%_ _%start92821%_)
                                (_%i92830%_ '1))
              (let ((_%k92833%_ (vector-ref _%table92807%_ _%probe92828%_)))
                (if (eq? _%k92833%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k92833%_ (macro-deleted-obj))
                        (let ((__tmp97804
                               (let ((_%next-probe92838%_
                                      (fx+ _%start92821%_
                                           _%i92830%_
                                           (fx* _%i92830%_ _%i92830%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe92838%_
                                  _%size92815%_)))
                              (__tmp97803
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i92830%_ '1))))
                          (declare (not safe))
                          (_%loop92825%_ __tmp97804 __tmp97803))
                        (if (eq? _%key92804%_ _%k92833%_)
                            (let ()
                              (vector-set!
                               _%table92807%_
                               _%probe92828%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table92807%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe92828%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97805
                                        (let ((__tmp97806
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92802%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97806 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92802%_
                                    __tmp97805)))))
                            (let ((__tmp97808
                                   (let ((_%next-probe92844%_
                                          (fx+ _%start92821%_
                                               _%i92830%_
                                               (fx* _%i92830%_ _%i92830%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe92844%_
                                      _%size92815%_)))
                                  (__tmp97807
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i92830%_ '1))))
                              (declare (not safe))
                              (_%loop92825%_ __tmp97808 __tmp97807)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92788%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92788%_ 'class))
              (let ((_%klass92792%_ _%klass92788%_))
                (declare (not safe))
                (__specialize-class _%klass92792%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass92788%_)
                '#!void)))))
    (define __specialize-class
      (lambda (_%klass92770%_)
        (let ()
          (let* ((_%klass92773%_ _%klass92770%_)
                 (_%$e92782%_
                  (let ()
                    (declare (not safe))
                    (__lookup-class-specializer _%klass92773%_))))
            (if _%$e92782%_
                _%$e92782%_
                (let ((_%method-table92786%_
                       (let ()
                         (declare (not safe))
                         (___specialize-class _%klass92773%_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _%klass92773%_
                     _%method-table92786%_))
                  _%method-table92786%_))))))
    (define __lookup-class-specializer
      (lambda (_%klass92760%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92764%_ ()
            (if (let ((__tmp97809
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97809 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92764%_))))))
        (let ((_%method-table92768%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass92760%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92768%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92751%_ _%method-table92752%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92756%_ ()
            (if (let ((__tmp97810
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97810 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again92756%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass92751%_
           _%method-table92752%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92735%_
               _%method-table92736%_
               _%method92737%_
               _%proc92738%_)
        (let ((_%$e92740%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92736%_
                  _%method92737%_
                  '#f))))
          (if _%$e92740%_
              _%$e92740%_
              (let ((_%$e92743%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc92738%_))))
                (if _%$e92743%_
                    ((lambda (_%specialize92746%_)
                       (let ((_%specialized-proc92748%_
                              (_%specialize92746%_
                               _%klass92735%_
                               _%method-table92736%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92736%_
                          _%method92737%_
                          _%specialized-proc92748%_)))
                     _%$e92743%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table92736%_
                       _%method92737%_
                       _%proc92738%_))))))))
    (define ___specialize-class
      (lambda (_%klass92677%_)
        (if (let ((__tmp97811
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass92677%_ 'class))))
              (declare (not safe))
              (not __tmp97811))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass92677%_))
                  (let ((__tmp97812
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass92677%_))))
                    (declare (not safe))
                    (__specialize-class __tmp97812))
                  (error '"bad class; cannot specialize" _%klass92677%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass92677%_))
                (let ((__method97587
                       (let ()
                         (declare (not safe))
                         (__method-ref _%klass92677%_ 'specialize-class))))
                  (if __method97587
                      (__method97587 _%klass92677%_)
                      (error '"Missing method"
                             _%klass92677%_
                             'specialize-class)))
                (if (let ((__tmp97813
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92677%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97813))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass92677%_))
                    (let ((_%method-table92683%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop92685%_ ((_%rest92687%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass92677%_))))
                        (let* ((_%rest9268892696%_ _%rest92687%_)
                               (_%else9269092704%_
                                (lambda () _%method-table92683%_))
                               (_%K9269292723%_
                                (lambda (_%rest92707%_ _%xklass92708%_)
                                  (let ((_%xmethod-table9270992711%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass92708%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9270992711%_
                                        (let* ((_%xmethod-table92714%_
                                                _%xmethod-table9270992711%_)
                                               (__tmp97814
                                                (lambda (_%g9271592718%_
                                                         _%g9271692720%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _%klass92677%_
                                                     _%method-table92683%_
                                                     _%g9271592718%_
                                                     _%g9271692720%_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table92714%_
                                           __tmp97814))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_%loop92685%_ _%rest92707%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9268892696%_))
                              (let ((_%hd9269392726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9268892696%_)))
                                    (_%tl9269492728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9268892696%_))))
                                (let* ((_%xklass92731%_ _%hd9269392726%_)
                                       (_%rest92733%_ _%tl9269492728%_))
                                  (declare (not safe))
                                  (_%K9269292723%_
                                   _%rest92733%_
                                   _%xklass92731%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9269092704%_)))))))))))
    (define seal-class!
      (lambda (_%klass92663%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass92663%_ 'class))
              (let ((_%klass92667%_ _%klass92663%_))
                (declare (not safe))
                (__seal-class! _%klass92667%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass92663%_)
                '#!void)))))
    (define __seal-class!
      (lambda (_%klass92646%_)
        (let ((_%klass92649%_ _%klass92646%_))
          (if (let ()
                (declare (not safe))
                (__class-type-sealed? _%klass92649%_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass92649%_))
                    '#!void
                    (error '"cannot seal non-final class" _%klass92649%_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass92649%_))
                    (let ((__method97588
                           (let ()
                             (declare (not safe))
                             (__method-ref _%klass92649%_ 'seal-class!))))
                      (if __method97588
                          (__method97588 _%klass92649%_)
                          (error '"Missing method"
                                 _%klass92649%_
                                 'seal-class!)))
                    (if (let ((__tmp97815
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass92649%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp97815))
                        (let ()
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _%klass92649%_))
                        (let ((_%method-table92661%_
                               (let ()
                                 (declare (not safe))
                                 (__specialize-class _%klass92649%_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass92649%_
                           _%method-table92661%_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _%klass92649%_)))))))
    (define next-method
      (lambda (_%subklass92620%_ _%obj92621%_ _%id92622%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92620%_ 'class))
              (let ((_%subklass92626%_ _%subklass92620%_))
                (if (let () (declare (not safe)) (symbol? _%id92622%_))
                    (let ((_%id92636%_ _%id92622%_))
                      (declare (not safe))
                      (__next-method
                       _%subklass92626%_
                       _%obj92621%_
                       _%id92636%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id92622%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass92620%_)
                '#!void)))))
    (define __next-method
      (lambda (_%subklass92557%_ _%obj92558%_ _%id92559%_)
        (let ()
          (let* ((_%subklass92562%_ _%subklass92557%_)
                 (_%id92570%_ _%id92559%_))
            (letrec ((_%find-next-method92579%_
                      (lambda (_%klass92581%_)
                        (let _%lp92583%_ ((_%rest92585%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass92581%_))))
                          (let* ((_%rest9258692594%_ _%rest92585%_)
                                 (_%else9258892602%_ (lambda () '#f))
                                 (_%K9259092608%_
                                  (lambda (_%rest92605%_ _%klass92606%_)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (##type-id _%subklass92562%_))
                                             (let ()
                                               (declare (not safe))
                                               (##type-id _%klass92606%_)))
                                        (let ()
                                          (declare (not safe))
                                          (__mixin-find-method
                                           _%rest92605%_
                                           _%obj92558%_
                                           _%id92570%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp92583%_ _%rest92605%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9258692594%_))
                                (let ((_%hd9259192611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9258692594%_)))
                                      (_%tl9259292613%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9258692594%_))))
                                  (let* ((_%klass92616%_ _%hd9259192611%_)
                                         (_%rest92618%_ _%tl9259292613%_))
                                    (declare (not safe))
                                    (_%K9259092608%_
                                     _%rest92618%_
                                     _%klass92616%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9258892602%_))))))))
              (let ((__tmp97816
                     (let () (declare (not safe)) (class-of _%obj92558%_))))
                (declare (not safe))
                (_%find-next-method92579%_ __tmp97816)))))))
    (define call-next-method
      (lambda (_%subklass92530%_ _%obj92531%_ _%id92532%_ . _%args92533%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass92530%_ 'class))
              (let ((_%subklass92537%_ _%subklass92530%_))
                (if (let () (declare (not safe)) (symbol? _%id92532%_))
                    (let ((_%id92547%_ _%id92532%_))
                      (declare (not safe))
                      (##apply __call-next-method
                               _%subklass92537%_
                               _%obj92531%_
                               _%id92547%_
                               _%args92533%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id92532%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass92530%_)
                '#!void)))))
    (define __call-next-method
      (lambda (_%subklass92501%_ _%obj92502%_ _%id92503%_ . _%args92504%_)
        (let ((_%subklass92507%_ _%subklass92501%_))
          (let* ((_%id92515%_ _%id92503%_)
                 (_%$e92524%_
                  (let ()
                    (declare (not safe))
                    (__next-method
                     _%subklass92507%_
                     _%obj92502%_
                     _%id92515%_))))
            (if _%$e92524%_
                ((lambda (_%methodf92527%_)
                   (apply _%methodf92527%_ _%obj92502%_ _%args92504%_))
                 _%$e92524%_)
                (let ()
                  (error '"cannot find next method"
                         'object:
                         _%obj92502%_
                         'method:
                         _%id92515%_)))))))
    (define write-style
      (lambda (_%we92499%_) (macro-writeenv-style _%we92499%_)))
    (define write-object
      (lambda (_%we92490%_ _%obj92491%_)
        (let ((_%$e92493%_
               (let () (declare (not safe)) (__method-ref _%obj92491%_ ':wr))))
          (if _%$e92493%_
              ((lambda (_%method92496%_)
                 (_%method92496%_ _%obj92491%_ _%we92490%_))
               _%$e92493%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we92490%_ _%obj92491%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92405%_)
        (letrec ((_%shadow-type-id92407%_
                  (lambda (_%type92488%_)
                    (let ((__tmp97817
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92488%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97817 '"::t"))))
                 (_%shadow-type-name92408%_
                  (lambda (_%type92486%_)
                    (let () (declare (not safe)) (##type-name _%type92486%_))))
                 (_%make-shadow-class92409%_
                  (lambda (_%type92478%_ _%precedence-list92479%_)
                    (let* ((_%super92481%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92479%_))
                                (cons (car _%precedence-list92479%_) '())
                                '()))
                           (_%klass92483%_
                            (let ((__tmp97820
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92407%_ _%type92478%_)))
                                  (__tmp97819
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92478%_)))
                                  (__tmp97818
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (type-extensible?
                                                      _%type92478%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp97820
                               __tmp97819
                               _%super92481%_
                               '()
                               __tmp97818
                               '#f))))
                      (let ((__tmp97821
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92478%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97821
                         _%klass92483%_))
                      _%klass92483%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92413%_ ()
              (if (let ((__tmp97822
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97822 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92413%_))))))
          (let ((_%$e92417%_
                 (let ((__tmp97823
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92405%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97823 '#f))))
            (if _%$e92417%_
                ((lambda (_%klass92420%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92420%_)
                 _%$e92417%_)
                (let _%loop92423%_ ((_%super92425%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type92405%_)))
                                    (_%hierarchy92426%_ '()))
                  (if (let () (declare (not safe)) (not _%super92425%_))
                      (let _%loop92429%_ ((_%rest92431%_ _%hierarchy92426%_)
                                          (_%precedence-list92432%_ '()))
                        (let* ((_%rest9243392441%_ _%rest92431%_)
                               (_%else9243592451%_
                                (lambda ()
                                  (let ((_%klass92449%_
                                         (let ()
                                           (declare (not safe))
                                           (_%make-shadow-class92409%_
                                            _%type92405%_
                                            _%precedence-list92432%_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass92449%_)))
                               (_%K9243792465%_
                                (lambda (_%rest92454%_ _%type92455%_)
                                  (let ((_%$e92457%_
                                         (let ((__tmp97824
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type92455%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp97824
                                            '#f))))
                                    (if _%$e92457%_
                                        ((lambda (_%klass92460%_)
                                           (let ((__tmp97825
                                                  (cons _%klass92460%_
                                                        _%precedence-list92432%_)))
                                             (declare (not safe))
                                             (_%loop92429%_
                                              _%rest92454%_
                                              __tmp97825)))
                                         _%$e92457%_)
                                        (let ()
                                          (let* ((_%klass92463%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%make-shadow-class92409%_
                                                     _%type92455%_
                                                     _%precedence-list92432%_)))
                                                 (__tmp97826
                                                  (cons _%klass92463%_
                                                        _%precedence-list92432%_)))
                                            (declare (not safe))
                                            (_%loop92429%_
                                             _%rest92454%_
                                             __tmp97826))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9243392441%_))
                              (let ((_%hd9243892468%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9243392441%_)))
                                    (_%tl9243992470%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9243392441%_))))
                                (let* ((_%type92473%_ _%hd9243892468%_)
                                       (_%rest92475%_ _%tl9243992470%_))
                                  (declare (not safe))
                                  (_%K9243792465%_
                                   _%rest92475%_
                                   _%type92473%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9243592451%_)))))
                      (let ((__tmp97828
                             (let ()
                               (declare (not safe))
                               (##type-super _%super92425%_)))
                            (__tmp97827
                             (cons _%super92425%_ _%hierarchy92426%_)))
                        (declare (not safe))
                        (_%loop92423%_ __tmp97828 __tmp97827)))))))))
    (define class-of
      (lambda (_%obj92378%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92382%_
                 (let () (declare (not safe)) (##type _%obj92378%_))))
            (if (fx= _%t92382%_ (macro-type-subtyped))
                (let ((_%st92385%_
                       (let () (declare (not safe)) (##subtype _%obj92378%_))))
                  (if (fx= _%st92385%_ (macro-subtype-structure))
                      (let ((_%klass92388%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92378%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92388%_ 'class))
                            _%klass92388%_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _%klass92388%_))))
                      (if (fx= _%st92385%_ (macro-subtype-boxvalues))
                          (let ()
                            (if (let ((__tmp97829
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length _%obj92378%_))))
                                  (declare (not safe))
                                  (##fx= __tmp97829 '1))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'box))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'values))))
                          (let ((_%$e92391%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92385%_))))
                            (if _%$e92391%_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _%$e92391%_))
                                (let ()
                                  (error '"unknown class"
                                         'subtype:
                                         _%st92385%_
                                         'object:
                                         _%obj92378%_)))))))
                (if (fx= _%t92382%_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _%t92382%_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92378%_))
                              (let ()
                                (declare (not safe))
                                (__system-class 'char))
                              (if (eq? _%obj92378%_ '())
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'null))
                                  (if (eq? _%obj92378%_ '#f)
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (eq? _%obj92378%_ '#t)
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'boolean))
                                          (if (eq? _%obj92378%_ '#!void)
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'void))
                                              (if (eq? _%obj92378%_ '#!eof)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__system-class 'eof))
                                                  (let ()
                                                    (declare (not safe))
                                                    (__system-class
                                                     'special))))))))))))))))
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
      (lambda (_%id92372%_)
        (let ((_%$e92374%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92372%_ '#f))))
          (if _%$e92374%_
              _%$e92374%_
              (let () (error '"unknown system class" _%id92372%_))))))
    (define __make-system-class
      (lambda (_%id92367%_ _%super92368%_)
        (let ((_%klass92370%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92367%_
                  _%id92367%_
                  _%super92368%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92367%_ _%klass92370%_))
          _%klass92370%_)))))
