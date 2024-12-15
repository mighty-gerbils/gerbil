(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1734278443)
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
      (let ((_%flags101055%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101056%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101057%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101055%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101057%_
           _%properties101056%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101031%_
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
             (_%slot-vector101033%_ (list->vector (cons '#f _%slots101031%_)))
             (_%slot-table101040%_
              (let ((_%slot-table101035%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102498
                       (lambda (_%slot101037%_ _%field101038%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101035%_
                            _%slot101037%_
                            _%field101038%_))
                         (let ((__tmp102499
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101037%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101035%_
                            __tmp102499
                            _%field101038%_))))
                      (__tmp102496
                       (let ((__tmp102497
                              (let ()
                                (declare (not safe))
                                (##length _%slots101031%_))))
                         (declare (not safe))
                         (##iota __tmp102497 '1))))
                  (declare (not safe))
                  (##for-each __tmp102498 _%slots101031%_ __tmp102496))
                _%slot-table101035%_))
             (_%flags101042%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101048%_
              (list->vector
               (let ((__tmp102500
                      (map (lambda (_%g101043101045%_)
                             (list _%g101043101045%_ '5 '#f))
                           (drop _%slots101031%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102500))))
             (_%properties101050%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101031%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101052%_
              (let ((__tmp102501 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101042%_
                 ##type-type
                 _%fields101048%_
                 __tmp102501
                 _%slot-vector101033%_
                 _%slot-table101040%_
                 _%properties101050%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101052%_ _%t101052%_))
        _%t101052%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101027%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101028%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101029%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102502 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101027%_
           '#f
           '#()
           __tmp102502
           '#(#f)
           _%slot-table101029%_
           _%properties101028%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101025%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101025%_ 'class))))
    (define class-type=?
      (lambda (_%x101000%_ _%y101001%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x101000%_ 'class))
            (let ((_%x101005%_ _%x101000%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y101001%_ 'class))
                  (let ((_%y101015%_ _%y101001%_))
                    (__class-type=? _%x101005%_ _%y101015%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y101001%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x101000%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x100979%_ _%y100980%_)
        (let* ((_%x100983%_ _%x100979%_) (_%y100991%_ _%y100980%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x100983%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y100991%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type100965%_)
        (if (let () (declare (not safe)) (##type? _%type100965%_))
            (let ((_%type100969%_ _%type100965%_))
              (__type-opaque? _%type100969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type100965%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type100953%_)
        (let* ((_%type100956%_ _%type100953%_)
               (__tmp102503
                (let ((__tmp102504
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100956%_))))
                  (declare (not safe))
                  (##fxand __tmp102504 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102503 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100939%_)
        (if (let () (declare (not safe)) (##type? _%type100939%_))
            (let ((_%type100943%_ _%type100939%_))
              (__type-extensible? _%type100943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100939%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100927%_)
        (let* ((_%type100930%_ _%type100927%_)
               (__tmp102505
                (let ((__tmp102506
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100930%_))))
                  (declare (not safe))
                  (##fxand __tmp102506 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102505 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100913%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100913%_ 'class))
            (let ((_%type100917%_ _%type100913%_))
              (__class-type-final? _%type100917%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100913%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100901%_)
        (let* ((_%type100904%_ _%type100901%_)
               (__tmp102507
                (let ((__tmp102508
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100904%_))))
                  (declare (not safe))
                  (##fxand __tmp102508 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102507 '0))))
    (define class-type-struct?
      (lambda (_%klass100887%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100887%_ 'class))
            (let ((_%klass100891%_ _%klass100887%_))
              (__class-type-struct? _%klass100891%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100887%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100875%_)
        (let* ((_%klass100878%_ _%klass100875%_)
               (__tmp102509
                (let ((__tmp102510
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100878%_))))
                  (declare (not safe))
                  (##fxand __tmp102510 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102509 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100861%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100861%_ 'class))
            (let ((_%klass100865%_ _%klass100861%_))
              (__class-type-sealed? _%klass100865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100861%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100849%_)
        (let* ((_%klass100852%_ _%klass100849%_)
               (__tmp102511
                (let ((__tmp102512
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100852%_))))
                  (declare (not safe))
                  (##fxand __tmp102512 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102511 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100835%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100835%_ 'class))
            (let ((_%klass100839%_ _%klass100835%_))
              (__class-type-metaclass? _%klass100839%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100835%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100823%_)
        (let* ((_%klass100826%_ _%klass100823%_)
               (__tmp102513
                (let ((__tmp102514
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100826%_))))
                  (declare (not safe))
                  (##fxand __tmp102514 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102513 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100809%_ 'class))
            (let ((_%klass100813%_ _%klass100809%_))
              (__class-type-system? _%klass100813%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100809%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100797%_)
        (let* ((_%klass100800%_ _%klass100797%_)
               (__tmp102515
                (let ((__tmp102516
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100800%_))))
                  (declare (not safe))
                  (##fxand __tmp102516 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102515 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100679%_
               _%type-name100680%_
               _%type-super100681%_
               _%precedence-list100682%_
               _%slot-vector100683%_
               _%properties100684%_
               _%constructor100685%_
               _%slot-table100686%_
               _%methods100687%_)
        (letrec ((_%make-props!100690%_
                  (lambda (_%key100766%_)
                    (letrec* ((_%ht100768%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100769%_
                               (lambda (_%ht100790%_ _%slots100791%_)
                                 (for-each
                                  (lambda (_%g100792100794%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100790%_
                                       _%g100792100794%_
                                       '#t)))
                                  _%slots100791%_)))
                              (_%put-alist!100770%_
                               (lambda (_%ht100779%_
                                        _%key100780%_
                                        _%alist100781%_)
                                 (let ((_%$e100783%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100780%_
                                           _%alist100781%_))))
                                   (if _%$e100783%_
                                       ((lambda (_%g100785100787%_)
                                          (_%put-slots!100769%_
                                           _%ht100779%_
                                           _%g100785100787%_))
                                        _%$e100783%_)
                                       '#!void)))))
                      (_%put-alist!100770%_
                       _%ht100768%_
                       _%key100766%_
                       _%properties100684%_)
                      (for-each
                       (lambda (_%mixin100772%_)
                         (let ((_%alist100774%_
                                (##structure-ref
                                 _%mixin100772%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100774%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100766%_
                                           _%alist100774%_))))
                               (_%put-slots!100769%_
                                _%ht100768%_
                                (class-type-slot-list _%mixin100772%_))
                               (_%put-alist!100770%_
                                _%ht100768%_
                                _%key100766%_
                                _%alist100774%_))))
                       _%precedence-list100682%_)
                      _%ht100768%_))))
          (let* ((_%transparent?100692%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100684%_)))
                 (_%all-slots-printable?100697%_
                  (let ((_%$e100694%_ _%transparent?100692%_))
                    (if _%$e100694%_
                        _%$e100694%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100684%_))))))
                 (_%printable100699%_
                  (if (not _%all-slots-printable?100697%_)
                      (_%make-props!100690%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100704%_
                  (let ((_%$e100701%_ _%transparent?100692%_))
                    (if _%$e100701%_
                        _%$e100701%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100684%_))))))
                 (_%equalable100706%_
                  (if (not _%all-slots-equalable?100704%_)
                      (_%make-props!100690%_ 'equal:)
                      '#f))
                 (_%first-new-field100708%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100681%_ 'class))
                      (let ((__tmp102517
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100681%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102517))
                      '1))
                 (_%field-info-length100710%_
                  (let ((__tmp102518
                         (let ((__tmp102519
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100683%_))))
                           (declare (not safe))
                           (##fx- __tmp102519 _%first-new-field100708%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102518)))
                 (_%field-info100712%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100710%_ '#f)))
                 (_%struct?100714%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100684%_)))
                 (_%final?100716%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100684%_)))
                 (_%metaclass100724%_
                  (let ((_%metaclass100717100719%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100684%_))))
                    (if _%metaclass100717100719%_
                        (let ((_%metaclass100722%_ _%metaclass100717100719%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100722%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100679%_
                                     'metaclass:
                                     _%metaclass100722%_))
                          _%metaclass100722%_)
                        '#f)))
                 (_%system?100726%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100684%_)))
                 (_%opaque?100734%_
                  (if (or _%transparent?100692%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100684%_)))
                      '#f
                      (let ((_%$e100731%_ (not _%type-super100681%_)))
                        (if _%$e100731%_
                            _%$e100731%_
                            (__type-opaque? _%type-super100681%_)))))
                 (_%type-flags100736%_
                  (let ((__tmp102524
                         (if _%final?100716%_ '0 type-flag-extensible))
                        (__tmp102523
                         (if _%opaque?100734%_ type-flag-opaque '0))
                        (__tmp102522
                         (if _%struct?100714%_ class-type-flag-struct '0))
                        (__tmp102521
                         (if _%metaclass100724%_ class-type-flag-metaclass '0))
                        (__tmp102520
                         (if _%system?100726%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102524
                             __tmp102523
                             __tmp102522
                             __tmp102521
                             __tmp102520)))
                 (_%precedence-list100744%_
                  (let ((_%$e100738%_ (memq t::t _%precedence-list100682%_)))
                    (if _%$e100738%_
                        ((lambda (_%tail100741%_)
                           (if (null? (cdr _%tail100741%_))
                               _%precedence-list100682%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100682%_)))
                         _%$e100738%_)
                        (let ((__tmp102525 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100682%_ __tmp102525))))))
            (let _%loop100747%_ ((_%i100749%_ _%first-new-field100708%_)
                                 (_%j100750%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100750%_ _%field-info-length100710%_))
                  (let* ((_%slot100752%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100683%_ _%i100749%_)))
                         (_%flags100760%_
                          (if _%transparent?100692%_
                              '0
                              (let ((__tmp102527
                                     (if (or _%all-slots-printable?100697%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100699%_
                                                _%slot100752%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102526
                                     (if (or _%all-slots-equalable?100704%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100706%_
                                                _%slot100752%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102527 __tmp102526)))))
                    (vector-set!
                     _%field-info100712%_
                     _%j100750%_
                     _%slot100752%_)
                    (vector-set!
                     _%field-info100712%_
                     (let () (declare (not safe)) (##fx+ _%j100750%_ '1))
                     _%flags100760%_)
                    (_%loop100747%_
                     (let () (declare (not safe)) (##fx+ _%i100749%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100750%_ '3))))
                  '#!void))
            (if _%metaclass100724%_
                (let ((_%val100763%_
                       (make-instance
                        _%metaclass100724%_
                        _%type-id100679%_
                        _%type-name100680%_
                        _%type-flags100736%_
                        _%type-super100681%_
                        _%field-info100712%_
                        _%precedence-list100744%_
                        _%slot-vector100683%_
                        _%slot-table100686%_
                        _%properties100684%_
                        _%constructor100685%_
                        _%methods100687%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100763%_ 'class))
                      _%val100763%_
                      (error '"bad cast" class::t _%val100763%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100679%_
                   _%type-name100680%_
                   _%type-flags100736%_
                   _%type-super100681%_
                   _%field-info100712%_
                   _%precedence-list100744%_
                   _%slot-vector100683%_
                   _%slot-table100686%_
                   _%properties100684%_
                   _%constructor100685%_
                   _%methods100687%_)))))))
    (define class-type-id
      (lambda (_%klass100677%_)
        (##structure-ref _%klass100677%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100675%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100675%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100672%_ _%val100673%_)
        (##structure-set! _%klass100672%_ _%val100673%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100667%_ _%val100669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100667%_
           _%val100669%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100665%_)
        (##structure-ref _%klass100665%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100663%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100660%_ _%val100661%_)
        (##structure-set! _%klass100660%_ _%val100661%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100655%_ _%val100657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100655%_
           _%val100657%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100653%_)
        (##structure-ref _%klass100653%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100651%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100648%_ _%val100649%_)
        (##structure-set! _%klass100648%_ _%val100649%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100643%_ _%val100645%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100643%_
           _%val100645%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100641%_)
        (##structure-ref _%klass100641%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100639%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100639%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100636%_ _%val100637%_)
        (##structure-set! _%klass100636%_ _%val100637%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100631%_ _%val100633%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100631%_
           _%val100633%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100629%_)
        (##structure-ref _%klass100629%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100627%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100624%_ _%val100625%_)
        (##structure-set! _%klass100624%_ _%val100625%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100619%_ _%val100621%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100619%_
           _%val100621%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100617%_)
        (##structure-ref _%klass100617%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100615%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100615%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100612%_ _%val100613%_)
        (##structure-set!
         _%klass100612%_
         _%val100613%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100607%_ _%val100609%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100607%_
           _%val100609%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100605%_)
        (##structure-ref _%klass100605%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100603%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100603%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100600%_ _%val100601%_)
        (##structure-set!
         _%klass100600%_
         _%val100601%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100595%_ _%val100597%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100595%_
           _%val100597%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100593%_)
        (##structure-ref _%klass100593%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100591%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100591%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100588%_ _%val100589%_)
        (##structure-set!
         _%klass100588%_
         _%val100589%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100583%_ _%val100585%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100583%_
           _%val100585%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100581%_)
        (##structure-ref _%klass100581%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100579%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100579%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100576%_ _%val100577%_)
        (##structure-set!
         _%klass100576%_
         _%val100577%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100571%_ _%val100573%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100571%_
           _%val100573%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100569%_)
        (##structure-ref _%klass100569%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100567%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100567%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100564%_ _%val100565%_)
        (##structure-set!
         _%klass100564%_
         _%val100565%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100559%_ _%val100561%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100559%_
           _%val100561%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100557%_)
        (##structure-ref _%klass100557%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100555%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100555%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100552%_ _%val100553%_)
        (##structure-set!
         _%klass100552%_
         _%val100553%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100547%_ _%val100549%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100547%_
           _%val100549%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100533%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100533%_ 'class))
            (let ((_%klass100537%_ _%klass100533%_))
              (__class-type-slot-list _%klass100537%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100533%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100521%_)
        (let ((_%klass100524%_ _%klass100521%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100524%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100507%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100507%_ 'class))
            (let ((_%klass100511%_ _%klass100507%_))
              (__class-type-field-count _%klass100511%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100507%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100495%_)
        (let* ((_%klass100498%_ _%klass100495%_)
               (__tmp102528
                (let ((__tmp102529
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100498%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102529))))
          (declare (not safe))
          (##fx- __tmp102528 '1))))
    (define class-type-seal!
      (lambda (_%klass100481%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100481%_ 'class))
            (let ((_%klass100485%_ _%klass100481%_))
              (__class-type-seal! _%klass100485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100481%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100469%_)
        (let ((_%klass100472%_ _%klass100469%_))
          (let ((__tmp102530
                 (let ((__tmp102531
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100472%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102531))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100472%_
             __tmp102530
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100444%_ _%maybe-super-struct100445%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100444%_ 'class))
            (let ((_%maybe-sub-struct100449%_ _%maybe-sub-struct100444%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100445%_
                     'class))
                  (let ((_%maybe-super-struct100459%_
                         _%maybe-super-struct100445%_))
                    (__substruct?
                     _%maybe-sub-struct100449%_
                     _%maybe-super-struct100459%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100445%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100444%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100413%_ _%maybe-super-struct100414%_)
        (let* ((_%maybe-sub-struct100417%_ _%maybe-sub-struct100413%_)
               (_%maybe-super-struct100425%_ _%maybe-super-struct100414%_)
               (_%maybe-super-struct-id100434%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100425%_))))
          (let _%lp100436%_ ((_%super-struct100438%_
                              _%maybe-sub-struct100417%_))
            (if (not _%super-struct100438%_)
                '#f
                (if (eq? _%maybe-super-struct-id100434%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100438%_)))
                    '#t
                    (_%lp100436%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100438%_)))))))))
    (define base-struct/1
      (lambda (_%klass100408%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100408%_ 'class))
            (if (__class-type-struct? _%klass100408%_)
                _%klass100408%_
                (let () (declare (not safe)) (##type-super _%klass100408%_)))
            (if (not _%klass100408%_)
                '#f
                (error '"not a class or false" _%klass100408%_)))))
    (define base-struct/2
      (lambda (_%klass1100393%_ _%klass2100394%_)
        (let ((_%s1100396%_ (base-struct/1 _%klass1100393%_))
              (_%s2100397%_ (base-struct/1 _%klass2100394%_)))
          (if (or (not _%s1100396%_)
                  (and _%s2100397%_ (substruct? _%s1100396%_ _%s2100397%_)))
              _%s2100397%_
              (if (or (not _%s2100397%_)
                      (and _%s1100396%_
                           (substruct? _%s2100397%_ _%s1100396%_)))
                  _%s1100396%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100393%_
                         _%klass2100394%_
                         _%s1100396%_
                         _%s2100397%_))))))
    (define base-struct/list
      (lambda (_%all-supers100277%_)
        (let* ((_%all-supers100278100303%_ _%all-supers100277%_)
               (_%E100283100307%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100278100303%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100301100390%_ (lambda () '#f))
                (_%K100298100376%_
                 (lambda (_%x100374%_) (base-struct/1 _%x100374%_)))
                (_%K100293100353%_
                 (lambda (_%y100350%_ _%x100351%_)
                   (base-struct/2 _%x100351%_ _%y100350%_)))
                (_%K100284100314%_
                 (lambda (_%y100311%_ _%x100312%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100312%_ _%y100311%_)))))
            (let* ((_%__match102490102491%_
                    (lambda (_%hd100285100317%_ _%tl100286100319%_)
                      (let ((_%x100322%_ _%hd100285100317%_))
                        (letrec ((_%splice-rest100288100324%_
                                  (lambda (_%rest100292100331%_ _%y100333%_)
                                    (if (null? _%rest100292100331%_)
                                        (_%K100284100314%_
                                         _%y100333%_
                                         _%x100322%_)
                                        (_%E100283100307%_))))
                                 (_%splice-try100290100326%_
                                  (lambda (_%hd100291100335%_
                                           _%rest100292100337%_
                                           _%y100287100338%_)
                                    (let ((_%y100341%_ _%hd100291100335%_))
                                      (_%splice-loop100289100328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100292100337%_))
                                       (cons _%y100341%_ _%y100287100338%_)))))
                                 (_%splice-loop100289100328%_
                                  (lambda (_%rest100292100343%_
                                           _%y100287100344%_)
                                    (if (pair? _%rest100292100343%_)
                                        (_%splice-try100290100326%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100292100343%_))
                                         _%rest100292100343%_
                                         _%y100287100344%_)
                                        (_%splice-rest100288100324%_
                                         _%rest100292100343%_
                                         (reverse _%y100287100344%_))))))
                          (_%splice-loop100289100328%_
                           _%tl100286100319%_
                           '())))))
                   (_%try-match100280100386%_
                    (lambda ()
                      (if (pair? _%all-supers100278100303%_)
                          (let ((_%tl100300100381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100278100303%_)))
                                (_%hd100299100379%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100278100303%_))))
                            (if (null? _%tl100300100381%_)
                                (let ((_%x100384%_ _%hd100299100379%_))
                                  (base-struct/1 _%x100384%_))
                                (if (pair? _%tl100300100381%_)
                                    (let ((_%tl100297100365%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100300100381%_)))
                                          (_%hd100296100363%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100300100381%_))))
                                      (if (null? _%tl100297100365%_)
                                          (let ((_%x100361%_
                                                 _%hd100299100379%_)
                                                (_%y100368%_
                                                 _%hd100296100363%_))
                                            (_%K100293100353%_
                                             _%y100368%_
                                             _%x100361%_))
                                          (_%__match102490102491%_
                                           _%hd100299100379%_
                                           _%tl100300100381%_)))
                                    (_%__match102490102491%_
                                     _%hd100299100379%_
                                     _%tl100300100381%_))))
                          (_%E100283100307%_)))))
              (if (null? _%all-supers100278100303%_)
                  (_%K100301100390%_)
                  (_%try-match100280100386%_)))))))
    (define base-struct
      (lambda _%all-supers100275%_ (base-struct/list _%all-supers100275%_)))
    (define find-super-constructor
      (lambda (_%super100226%_)
        (let _%lp100228%_ ((_%rest100230%_ _%super100226%_)
                           (_%constructor100231%_ '#f))
          (let* ((_%rest100232100240%_ _%rest100230%_)
                 (_%else100234100248%_ (lambda () _%constructor100231%_))
                 (_%K100236100263%_
                  (lambda (_%rest100251%_ _%hd100252%_)
                    (let ((_%$e100254%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100252%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100254%_
                          ((lambda (_%xconstructor100257%_)
                             (if (or (not _%constructor100231%_)
                                     (eq? _%constructor100231%_
                                          _%xconstructor100257%_))
                                 (_%lp100228%_
                                  _%rest100251%_
                                  _%xconstructor100257%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100231%_
                                        _%xconstructor100257%_)))
                           _%$e100254%_)
                          (_%lp100228%_
                           _%rest100251%_
                           _%constructor100231%_))))))
            (if (pair? _%rest100232100240%_)
                (let ((_%hd100237100266%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100232100240%_)))
                      (_%tl100238100268%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100232100240%_))))
                  (let* ((_%hd100271%_ _%hd100237100266%_)
                         (_%rest100273%_ _%tl100238100268%_))
                    (_%K100236100263%_ _%rest100273%_ _%hd100271%_)))
                (_%else100234100248%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100202%_ _%direct-slots100203%_)
        (let* ((_%next-slot100205%_ '1)
               (_%slot-table100207%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100209%_ '(__class))
               (_%process-slot100213%_
                (lambda (_%slot100211%_)
                  (if (symbol? _%slot100211%_)
                      '#!void
                      (error '"invalid slot name" _%slot100211%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100207%_
                              _%slot100211%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100207%_
                           _%slot100211%_
                           _%next-slot100205%_))
                        (let ((__tmp102532
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100211%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100207%_
                           __tmp102532
                           _%next-slot100205%_))
                        (set! _%r-slots100209%_
                              (cons _%slot100211%_ _%r-slots100209%_))
                        (set! _%next-slot100205%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100205%_ '1))))
                      '#!void)))
               (_%process-slots100219%_
                (lambda (_%g100214100216%_)
                  (for-each _%process-slot100213%_ _%g100214100216%_))))
          (let ((__tmp102534
                 (lambda (_%mixin100222%_)
                   (_%process-slots100219%_
                    (let ((__tmp102535
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100222%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102535 '())))))
                (__tmp102533 (reverse _%class-precedence-list100202%_)))
            (declare (not safe))
            (##for-each __tmp102534 __tmp102533))
          (_%process-slots100219%_ _%direct-slots100203%_)
          (let ((_%slot-vector100224%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100209%_)))))
            (values _%slot-vector100224%_ _%slot-table100207%_)))))
    (define make-class-type
      (lambda (_%id100127%_
               _%name100128%_
               _%direct-supers100129%_
               _%direct-slots100130%_
               _%properties100131%_
               _%constructor100132%_)
        (if (symbol? _%id100127%_)
            (let ((_%id100136%_ _%id100127%_))
              (if (symbol? _%name100128%_)
                  (let ((_%name100146%_ _%name100128%_))
                    (if (list? _%direct-supers100129%_)
                        (let ((_%direct-supers100156%_
                               _%direct-supers100129%_))
                          (if (list? _%direct-slots100130%_)
                              (let ((_%direct-slots100166%_
                                     _%direct-slots100130%_))
                                (if (list? _%properties100131%_)
                                    (let ((_%properties100176%_
                                           _%properties100131%_))
                                      (if ((lambda (_%$obj100185%_)
                                             (or (not _%$obj100185%_)
                                                 (symbol? _%$obj100185%_)))
                                           _%constructor100132%_)
                                          (let ((_%constructor100192%_
                                                 _%constructor100132%_))
                                            (__make-class-type
                                             _%id100136%_
                                             _%name100146%_
                                             _%direct-supers100156%_
                                             _%direct-slots100166%_
                                             _%properties100176%_
                                             _%constructor100192%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100132%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100131%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100130%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100129%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100128%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100127%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id99996%_
               _%name99997%_
               _%direct-supers99998%_
               _%direct-slots99999%_
               _%properties100000%_
               _%constructor100001%_)
        (let* ((_%id100004%_ _%id99996%_)
               (_%name100012%_ _%name99997%_)
               (_%direct-supers100020%_ _%direct-supers99998%_)
               (_%direct-slots100028%_ _%direct-slots99999%_)
               (_%properties100036%_ _%properties100000%_)
               (_%constructor100044%_ _%constructor100001%_))
          (let ((_%$e100056%_
                 (let ((__tmp102536
                        (lambda (_%$obj100053%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100053%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102536 _%direct-supers100020%_))))
            (if _%$e100056%_
                ((lambda (_%g100058100060%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100058100060%_))
                 _%$e100056%_)
                (let ((_%$e100063%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100020%_))))
                  (if _%$e100063%_
                      ((lambda (_%g100065100067%_)
                         (error '"Cannot extend final class"
                                _%g100065100067%_))
                       _%$e100063%_)
                      '#!void))))
          (let ((_g102537_ (compute-precedence-list _%direct-supers100020%_)))
            (begin
              (let ((_g102538_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102537_)
                           (##values-length _g102537_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102538_ 2)))
                    (error "Context expects 2 values" _g102538_)))
              (let ((_%precedence-list100070%_
                     (let () (declare (not safe)) (##values-ref _g102537_ 0)))
                    (_%struct-super100071%_
                     (let () (declare (not safe)) (##values-ref _g102537_ 1))))
                (let ((_g102539_
                       (compute-class-slots
                        _%precedence-list100070%_
                        _%direct-slots100028%_)))
                  (begin
                    (let ((_g102540_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102539_)
                                 (##values-length _g102539_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102540_ 2)))
                          (error "Context expects 2 values" _g102540_)))
                    (let ((_%slot-vector100073%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102539_ 0)))
                          (_%slot-table100074%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102539_ 1))))
                      (let* ((_%properties100076%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100028%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100020%_)
                                          _%properties100036%_)))
                             (_%constructor*100081%_
                              (let ((_%$e100078%_ _%constructor100044%_))
                                (if _%$e100078%_
                                    _%$e100078%_
                                    (find-super-constructor
                                     _%direct-supers100020%_))))
                             (_%precedence-list100124%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100076%_))
                                      (memq object::t
                                            _%precedence-list100070%_))
                                  _%precedence-list100070%_
                                  (let _%loop100086%_ ((_%tail100088%_
                                                        _%precedence-list100070%_)
                                                       (_%head100089%_ '()))
                                    (let* ((_%tail100090100098%_
                                            _%tail100088%_)
                                           (_%else100092100106%_
                                            (lambda ()
                                              (let ((__tmp102541
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102541
                                                 _%head100089%_))))
                                           (_%K100094100112%_
                                            (lambda (_%rest100109%_
                                                     _%hd100110%_)
                                              (if (eq? _%hd100110%_ t::t)
                                                  (let ((__tmp102542
                                                         (cons object::t
                                                               _%tail100088%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102542
                                                     _%head100089%_))
                                                  (_%loop100086%_
                                                   _%rest100109%_
                                                   (cons _%hd100110%_
                                                         _%head100089%_))))))
                                      (if (pair? _%tail100090100098%_)
                                          (let ((_%hd100095100115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100090100098%_)))
                                                (_%tl100096100117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100090100098%_))))
                                            (let* ((_%hd100120%_
                                                    _%hd100095100115%_)
                                                   (_%rest100122%_
                                                    _%tl100096100117%_))
                                              (_%K100094100112%_
                                               _%rest100122%_
                                               _%hd100120%_)))
                                          (_%else100092100106%_)))))))
                        (make-class-type-descriptor
                         _%id100004%_
                         _%name100012%_
                         _%struct-super100071%_
                         _%precedence-list100124%_
                         _%slot-vector100073%_
                         _%properties100076%_
                         _%constructor*100081%_
                         _%slot-table100074%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass99982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99982%_ 'class))
            (let ((_%klass99986%_ _%klass99982%_))
              (__class-precedence-list _%klass99986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass99982%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass99970%_)
        (let ((_%klass99973%_ _%klass99970%_))
          (cons _%klass99973%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99973%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers99967%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers99967%_))))
    (define make-class-predicate
      (lambda (_%klass99953%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99953%_ 'class))
            (let ((_%klass99957%_ _%klass99953%_))
              (__make-class-predicate _%klass99957%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass99953%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99924%_)
        (let* ((_%klass99927%_ _%klass99924%_)
               (_%tid99936%_
                (let () (declare (not safe)) (##type-id _%klass99927%_))))
          (if (__class-type-final? _%klass99927%_)
              (lambda (_%g9993899940%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9993899940%_
                   _%tid99936%_)))
              (if (__class-type-struct? _%klass99927%_)
                  (lambda (_%g9994399945%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9994399945%_ _%tid99936%_)))
                  (lambda (_%g9994899950%_)
                    (__class-instance? _%klass99927%_ _%g9994899950%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99899%_ _%slot99900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99899%_ 'class))
            (let ((_%klass99904%_ _%klass99899%_))
              (if (symbol? _%slot99900%_)
                  (let ((_%slot99914%_ _%slot99900%_))
                    (__make-class-slot-accessor _%klass99904%_ _%slot99914%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99900%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99899%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99867%_ _%slot99868%_)
        (let* ((_%klass99871%_ _%klass99867%_)
               (_%slot99879%_ _%slot99868%_)
               (_%field99888%_
                (let ((__tmp102543
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99871%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102543 _%slot99879%_ '#f))))
          (if (not _%field99888%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99871%_
                       'slot:
                       _%slot99879%_)
                '#!void)
              (if (__class-type-final? _%klass99871%_)
                  (make-final-slot-accessor
                   _%klass99871%_
                   _%slot99879%_
                   _%field99888%_)
                  (if (__class-type-struct? _%klass99871%_)
                      (make-struct-slot-accessor
                       _%klass99871%_
                       _%slot99879%_
                       _%field99888%_)
                      (if (let ((_%strukt99894%_
                                 (base-struct/1 _%klass99871%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99894%_
                                    'class))
                                 (let ((__tmp102544
                                        (let ((__tmp102545
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99894%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102545))))
                                   (declare (not safe))
                                   (##fx< _%field99888%_ __tmp102544))))
                          (make-struct-subclass-slot-accessor
                           _%klass99871%_
                           _%slot99879%_
                           _%field99888%_)
                          (make-class-cached-slot-accessor
                           _%klass99871%_
                           _%slot99879%_
                           _%field99888%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99842%_ _%slot99843%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99842%_ 'class))
            (let ((_%klass99847%_ _%klass99842%_))
              (if (symbol? _%slot99843%_)
                  (let ((_%slot99857%_ _%slot99843%_))
                    (__make-class-slot-mutator _%klass99847%_ _%slot99857%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99843%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99842%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99810%_ _%slot99811%_)
        (let* ((_%klass99814%_ _%klass99810%_)
               (_%slot99822%_ _%slot99811%_)
               (_%field99831%_
                (let ((__tmp102546
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99814%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102546 _%slot99822%_ '#f))))
          (if (not _%field99831%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99814%_
                       'slot:
                       _%slot99822%_)
                '#!void)
              (if (__class-type-final? _%klass99814%_)
                  (make-final-slot-mutator
                   _%klass99814%_
                   _%slot99822%_
                   _%field99831%_)
                  (if (__class-type-struct? _%klass99814%_)
                      (make-struct-slot-mutator
                       _%klass99814%_
                       _%slot99822%_
                       _%field99831%_)
                      (if (let ((_%strukt99837%_
                                 (base-struct/1 _%klass99814%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99837%_
                                    'class))
                                 (let ((__tmp102547
                                        (let ((__tmp102548
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99837%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102548))))
                                   (declare (not safe))
                                   (##fx< _%field99831%_ __tmp102547))))
                          (make-struct-subclass-slot-mutator
                           _%klass99814%_
                           _%slot99822%_
                           _%field99831%_)
                          (make-class-cached-slot-mutator
                           _%klass99814%_
                           _%slot99822%_
                           _%field99831%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99785%_ _%slot99786%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99785%_ 'class))
            (let ((_%klass99790%_ _%klass99785%_))
              (if (symbol? _%slot99786%_)
                  (let ((_%slot99800%_ _%slot99786%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99790%_
                     _%slot99800%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99786%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99785%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99753%_ _%slot99754%_)
        (let* ((_%klass99757%_ _%klass99753%_)
               (_%slot99765%_ _%slot99754%_)
               (_%field99774%_
                (let ((__tmp102549
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99757%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102549 _%slot99765%_ '#f))))
          (if (not _%field99774%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99757%_
                       'slot:
                       _%slot99765%_)
                '#!void)
              (if (__class-type-final? _%klass99757%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99757%_
                   _%slot99765%_
                   _%field99774%_)
                  (if (__class-type-struct? _%klass99757%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99757%_
                       _%slot99765%_
                       _%field99774%_)
                      (if (let ((_%strukt99780%_
                                 (base-struct/1 _%klass99757%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99780%_
                                    'class))
                                 (let ((__tmp102550
                                        (let ((__tmp102551
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99780%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102551))))
                                   (declare (not safe))
                                   (##fx< _%field99774%_ __tmp102550))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99757%_
                           _%slot99765%_
                           _%field99774%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99757%_
                           _%slot99765%_
                           _%field99774%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99728%_ _%slot99729%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99728%_ 'class))
            (let ((_%klass99733%_ _%klass99728%_))
              (if (symbol? _%slot99729%_)
                  (let ((_%slot99743%_ _%slot99729%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99733%_
                     _%slot99743%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99728%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99696%_ _%slot99697%_)
        (let* ((_%klass99700%_ _%klass99696%_)
               (_%slot99708%_ _%slot99697%_)
               (_%field99717%_
                (let ((__tmp102552
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99700%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102552 _%slot99708%_ '#f))))
          (if (not _%field99717%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99700%_
                       'slot:
                       _%slot99708%_)
                '#!void)
              (if (__class-type-final? _%klass99700%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99700%_
                   _%slot99708%_
                   _%field99717%_)
                  (if (__class-type-struct? _%klass99700%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99700%_
                       _%slot99708%_
                       _%field99717%_)
                      (if (let ((_%strukt99723%_
                                 (base-struct/1 _%klass99700%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99723%_
                                    'class))
                                 (let ((__tmp102553
                                        (let ((__tmp102554
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99723%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102554))))
                                   (declare (not safe))
                                   (##fx< _%field99717%_ __tmp102553))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99700%_
                           _%slot99708%_
                           _%field99717%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99700%_
                           _%slot99708%_
                           _%field99717%_))))))))
    (define not-an-instance__%
      (lambda (_%object99680%_ _%class99681%_ _%slot99682%_)
        (apply error
               '"not an instance"
               'object:
               _%object99680%_
               'class:
               _%class99681%_
               (if _%slot99682%_ (cons 'slot: (cons _%slot99682%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99687%_ _%class99688%_)
        (let ((_%slot99690%_ '#f))
          (not-an-instance__% _%object99687%_ _%class99688%_ _%slot99690%_))))
    (define not-an-instance
      (lambda _g102556_
        (let ((_g102555_ (let () (declare (not safe)) (##length _g102556_))))
          (cond ((let () (declare (not safe)) (##fx= _g102555_ 2))
                 (apply not-an-instance__0 _g102556_))
                ((let () (declare (not safe)) (##fx= _g102555_ 3))
                 (apply not-an-instance__% _g102556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102556_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99673%_ _%slot99674%_ _%field99675%_)
        (lambda (_%obj99677%_)
          (##direct-structure-ref
           _%obj99677%_
           _%field99675%_
           _%klass99673%_
           _%slot99674%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99666%_ _%slot99667%_ _%field99668%_)
        (lambda (_%obj99670%_ _%val99671%_)
          (##direct-structure-set!
           _%obj99670%_
           _%val99671%_
           _%field99668%_
           _%klass99666%_
           _%slot99667%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99660%_ _%slot99661%_ _%field99662%_)
        (lambda (_%obj99664%_)
          (##structure-ref
           _%obj99664%_
           _%field99662%_
           _%klass99660%_
           _%slot99661%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99653%_ _%slot99654%_ _%field99655%_)
        (lambda (_%obj99657%_ _%val99658%_)
          (##structure-set!
           _%obj99657%_
           _%val99658%_
           _%field99655%_
           _%klass99653%_
           _%slot99654%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99647%_ _%slot99648%_ _%field99649%_)
        (lambda (_%obj99651%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99651%_
             _%field99649%_
             _%klass99647%_
             _%slot99648%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99640%_ _%slot99641%_ _%field99642%_)
        (lambda (_%obj99644%_ _%val99645%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99644%_
             _%val99645%_
             _%field99642%_
             _%klass99640%_
             _%slot99641%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99634%_ _%slot99635%_ _%field99636%_)
        (lambda (_%obj99638%_)
          (if (class-instance? _%klass99634%_ _%obj99638%_)
              (unchecked-slot-ref _%obj99638%_ _%field99636%_)
              (not-an-instance__%
               _%obj99638%_
               _%klass99634%_
               _%slot99635%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99627%_ _%slot99628%_ _%field99629%_)
        (lambda (_%obj99631%_ _%val99632%_)
          (if (class-instance? _%klass99627%_ _%obj99631%_)
              (unchecked-field-set! _%obj99631%_ _%field99629%_ _%val99632%_)
              (not-an-instance__%
               _%obj99631%_
               _%klass99627%_
               _%slot99628%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99618%_ _%slot99619%_ _%field99620%_)
        (lambda (_%obj99622%_)
          (if (let ((__tmp102557
                     (let () (declare (not safe)) (##type-id _%klass99618%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99622%_ __tmp102557))
              (unchecked-field-ref _%obj99622%_ _%field99620%_)
              (if (class-instance? _%klass99618%_ _%obj99622%_)
                  (unchecked-slot-ref _%obj99622%_ _%slot99619%_)
                  (not-an-instance__%
                   _%obj99622%_
                   _%klass99618%_
                   _%slot99619%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99608%_ _%slot99609%_ _%field99610%_)
        (lambda (_%obj99612%_ _%val99613%_)
          (if (let ((__tmp102558
                     (let () (declare (not safe)) (##type-id _%klass99608%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99612%_ __tmp102558))
              (unchecked-field-set! _%obj99612%_ _%field99610%_ _%val99613%_)
              (if (class-instance? _%klass99608%_ _%obj99612%_)
                  (unchecked-slot-set! _%obj99612%_ _%slot99609%_ _%val99613%_)
                  (not-an-instance__%
                   _%obj99612%_
                   _%klass99608%_
                   _%slot99609%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99602%_ _%slot99603%_ _%field99604%_)
        (lambda (_%obj99606%_)
          (if (let ((__tmp102559
                     (let () (declare (not safe)) (##type-id _%klass99602%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99606%_ __tmp102559))
              (unchecked-field-ref _%obj99606%_ _%field99604%_)
              (unchecked-slot-ref _%obj99606%_ _%slot99603%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99595%_ _%slot99596%_ _%field99597%_)
        (lambda (_%obj99599%_ _%val99600%_)
          (if (let ((__tmp102560
                     (let () (declare (not safe)) (##type-id _%klass99595%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99599%_ __tmp102560))
              (unchecked-field-set! _%obj99599%_ _%field99597%_ _%val99600%_)
              (unchecked-slot-set! _%obj99599%_ _%slot99596%_ _%val99600%_)))))
    (define class-slot-offset
      (lambda (_%klass99570%_ _%slot99571%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99570%_ 'class))
            (let ((_%klass99575%_ _%klass99570%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99571%_))
                  (let ((_%slot99585%_ _%slot99571%_))
                    (__class-slot-offset _%klass99575%_ _%slot99585%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99571%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99570%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99549%_ _%slot99550%_)
        (let* ((_%klass99553%_ _%klass99549%_)
               (_%slot99561%_ _%slot99550%_)
               (__tmp102561
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99553%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102561 _%slot99561%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99523%_ _%obj99524%_ _%slot99525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99523%_ 'class))
            (let ((_%klass99529%_ _%klass99523%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99525%_))
                  (let ((_%slot99539%_ _%slot99525%_))
                    (__class-slot-ref
                     _%klass99529%_
                     _%obj99524%_
                     _%slot99539%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99525%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99523%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99499%_ _%obj99500%_ _%slot99501%_)
        (let* ((_%klass99504%_ _%klass99499%_) (_%slot99512%_ _%slot99501%_))
          (if (__class-instance? _%klass99504%_ _%obj99500%_)
              (let ((_%off99521%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99500%_))
                      _%slot99512%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99500%_
                 _%off99521%_
                 _%klass99504%_
                 _%slot99512%_))
              (not-an-instance__0 _%obj99500%_ _%klass99504%_)))))
    (define class-slot-set!
      (lambda (_%klass99472%_ _%obj99473%_ _%slot99474%_ _%val99475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99472%_ 'class))
            (let ((_%klass99479%_ _%klass99472%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99474%_))
                  (let ((_%slot99489%_ _%slot99474%_))
                    (__class-slot-set!
                     _%klass99479%_
                     _%obj99473%_
                     _%slot99489%_
                     _%val99475%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99474%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99472%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99447%_ _%obj99448%_ _%slot99449%_ _%val99450%_)
        (let* ((_%klass99453%_ _%klass99447%_) (_%slot99461%_ _%slot99449%_))
          (if (__class-instance? _%klass99453%_ _%obj99448%_)
              (let ((_%off99470%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99448%_))
                      _%slot99461%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99448%_
                 _%val99450%_
                 _%off99470%_
                 _%klass99453%_
                 _%slot99461%_))
              (not-an-instance__0 _%obj99448%_ _%klass99453%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99444%_ _%off99445%_)
        (let ((__tmp102562
               (let () (declare (not safe)) (##structure-type _%obj99444%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj99444%_
           _%off99445%_
           __tmp102562
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99440%_ _%off99441%_ _%val99442%_)
        (let ((__tmp102563
               (let () (declare (not safe)) (##structure-type _%obj99440%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99440%_
           _%val99442%_
           _%off99441%_
           __tmp102563
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99437%_ _%slot99438%_)
        (unchecked-field-ref
         _%obj99437%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99437%_))
          _%slot99438%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99433%_ _%slot99434%_ _%val99435%_)
        (unchecked-field-set!
         _%obj99433%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99433%_))
          _%slot99434%_)
         _%val99435%_)))
    (define slot-ref__%
      (lambda (_%obj99395%_ _%slot99396%_ _%E99397%_)
        (if (symbol? _%slot99396%_)
            (let ((_%slot99401%_ _%slot99396%_))
              (if (procedure? _%E99397%_)
                  (let ((_%E99411%_ _%E99397%_))
                    (__slot-ref__% _%obj99395%_ _%slot99401%_ _%E99411%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99397%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99396%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99424%_ _%slot99425%_)
        (let ((_%E99427%_ __slot-error))
          (slot-ref__% _%obj99424%_ _%slot99425%_ _%E99427%_))))
    (define slot-ref
      (lambda _g102565_
        (let ((_g102564_ (let () (declare (not safe)) (##length _g102565_))))
          (cond ((let () (declare (not safe)) (##fx= _g102564_ 2))
                 (apply slot-ref__0 _g102565_))
                ((let () (declare (not safe)) (##fx= _g102564_ 3))
                 (apply slot-ref__% _g102565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102565_))))))
    (define __slot-ref__%
      (lambda (_%obj99351%_ _%slot99352%_ _%E99353%_)
        (let* ((_%slot99356%_ _%slot99352%_)
               (_%E99364%_ _%E99353%_)
               (_%klass99373%_ (class-of _%obj99351%_))
               (_%$e99376%_
                (__class-slot-offset _%klass99373%_ _%slot99356%_)))
          (if _%$e99376%_
              ((lambda (_%off99379%_)
                 (unchecked-field-ref _%obj99351%_ _%off99379%_))
               _%$e99376%_)
              (let ()
                (declare (not safe))
                (_%E99364%_ _%obj99351%_ _%slot99356%_))))))
    (define __slot-ref__0
      (lambda (_%obj99385%_ _%slot99386%_)
        (let ((_%E99388%_ __slot-error))
          (__slot-ref__% _%obj99385%_ _%slot99386%_ _%E99388%_))))
    (define __slot-ref
      (lambda _g102567_
        (let ((_g102566_ (let () (declare (not safe)) (##length _g102567_))))
          (cond ((let () (declare (not safe)) (##fx= _g102566_ 2))
                 (apply __slot-ref__0 _g102567_))
                ((let () (declare (not safe)) (##fx= _g102566_ 3))
                 (apply __slot-ref__% _g102567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102567_))))))
    (define slot-set!__%
      (lambda (_%obj99309%_ _%slot99310%_ _%val99311%_ _%E99312%_)
        (if (symbol? _%slot99310%_)
            (let ((_%slot99316%_ _%slot99310%_))
              (if (procedure? _%E99312%_)
                  (let ((_%E99326%_ _%E99312%_))
                    (__slot-set!__%
                     _%obj99309%_
                     _%slot99316%_
                     _%val99311%_
                     _%E99326%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99312%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99310%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99339%_ _%slot99340%_ _%val99341%_)
        (let ((_%E99343%_ __slot-error))
          (slot-set!__% _%obj99339%_ _%slot99340%_ _%val99341%_ _%E99343%_))))
    (define slot-set!
      (lambda _g102569_
        (let ((_g102568_ (let () (declare (not safe)) (##length _g102569_))))
          (cond ((let () (declare (not safe)) (##fx= _g102568_ 3))
                 (apply slot-set!__0 _g102569_))
                ((let () (declare (not safe)) (##fx= _g102568_ 4))
                 (apply slot-set!__% _g102569_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102569_))))))
    (define __slot-set!__%
      (lambda (_%obj99262%_ _%slot99263%_ _%val99264%_ _%E99265%_)
        (let* ((_%slot99268%_ _%slot99263%_)
               (_%E99276%_ _%E99265%_)
               (_%klass99285%_ (class-of _%obj99262%_))
               (_%$e99288%_
                (__class-slot-offset _%klass99285%_ _%slot99268%_)))
          (if _%$e99288%_
              ((lambda (_%off99291%_)
                 (unchecked-field-set! _%obj99262%_ _%off99291%_ _%val99264%_))
               _%$e99288%_)
              (let ()
                (declare (not safe))
                (_%E99276%_ _%obj99262%_ _%slot99268%_))))))
    (define __slot-set!__0
      (lambda (_%obj99297%_ _%slot99298%_ _%val99299%_)
        (let ((_%E99301%_ __slot-error))
          (__slot-set!__%
           _%obj99297%_
           _%slot99298%_
           _%val99299%_
           _%E99301%_))))
    (define __slot-set!
      (lambda _g102571_
        (let ((_g102570_ (let () (declare (not safe)) (##length _g102571_))))
          (cond ((let () (declare (not safe)) (##fx= _g102570_ 3))
                 (apply __slot-set!__0 _g102571_))
                ((let () (declare (not safe)) (##fx= _g102570_ 4))
                 (apply __slot-set!__% _g102571_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102571_))))))
    (define __slot-error
      (lambda (_%obj99258%_ _%slot99259%_)
        (error '"Cannot find slot"
               'object:
               _%obj99258%_
               'slot:
               _%slot99259%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99233%_ _%maybe-super-class99234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99233%_ 'class))
            (let ((_%maybe-sub-class99238%_ _%maybe-sub-class99233%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99234%_
                     'class))
                  (let ((_%maybe-super-class99248%_
                         _%maybe-super-class99234%_))
                    (__subclass?
                     _%maybe-sub-class99238%_
                     _%maybe-super-class99248%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99234%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99233%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99205%_ _%maybe-super-class99206%_)
        (let* ((_%maybe-sub-class99209%_ _%maybe-sub-class99205%_)
               (_%maybe-super-class99217%_ _%maybe-super-class99206%_)
               (_%maybe-super-class-id99226%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99217%_)))
               (_%$e99228%_
                (eq? _%maybe-super-class-id99226%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99209%_)))))
          (if _%$e99228%_
              _%$e99228%_
              (let ((__tmp102573
                     (lambda (_%super-class99231%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99231%_))
                            _%maybe-super-class-id99226%_)))
                    (__tmp102572
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99209%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102573 __tmp102572))))))
    (define object?
      (lambda (_%o99202%_)
        (if (let () (declare (not safe)) (##structure? _%o99202%_))
            (let ((__tmp102574
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99202%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102574 'class))
            '#f)))
    (define object-type
      (lambda (_%o99197%_)
        (if (let () (declare (not safe)) (##structure? _%o99197%_))
            (let ((_%klass99200%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99197%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99200%_ 'class))
                  _%klass99200%_
                  (begin
                    (error '"not an object" _%o99197%_ _%klass99200%_)
                    '#!void)))
            (begin (error '"not an object" _%o99197%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99182%_ _%obj99183%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99182%_ 'class))
            (let ((_%klass99187%_ _%klass99182%_))
              (__direct-instance? _%klass99187%_ _%obj99183%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99182%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99169%_ _%obj99170%_)
        (let* ((_%klass99173%_ _%klass99169%_)
               (__tmp102575
                (let () (declare (not safe)) (##type-id _%klass99173%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99170%_ __tmp102575))))
    (define immediate-instance-of?
      (lambda (_%klass99165%_ _%obj99166%_)
        (if (let () (declare (not safe)) (##structure? _%obj99166%_))
            (eq? _%klass99165%_
                 (let () (declare (not safe)) (##structure-type _%obj99166%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99150%_ _%obj99151%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99150%_ 'class))
            (let ((_%klass99155%_ _%klass99150%_))
              (__struct-instance? _%klass99155%_ _%obj99151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99150%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99137%_ _%obj99138%_)
        (let* ((_%klass99141%_ _%klass99137%_)
               (__tmp102576
                (let () (declare (not safe)) (##type-id _%klass99141%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99138%_ __tmp102576))))
    (define class-instance?
      (lambda (_%klass99122%_ _%obj99123%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99122%_ 'class))
            (let ((_%klass99127%_ _%klass99122%_))
              (__class-instance? _%klass99127%_ _%obj99123%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99122%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99107%_ _%obj99108%_)
        (let* ((_%klass99111%_ _%klass99107%_)
               (_%type99120%_ (class-of _%obj99108%_)))
          (__subclass? _%type99120%_ _%klass99111%_))))
    (define make-object
      (lambda (_%klass99082%_ _%k99083%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99082%_ 'class))
            (let ((_%klass99087%_ _%klass99082%_))
              (if (fixnum? _%k99083%_)
                  (let ((_%k99097%_ _%k99083%_))
                    (__make-object _%klass99087%_ _%k99097%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99083%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99082%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99059%_ _%k99060%_)
        (let* ((_%klass99063%_ _%klass99059%_) (_%k99071%_ _%k99060%_))
          (if (__class-type-system? _%klass99063%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99063%_)
                '#!void)
              (let ((_%obj99080%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99063%_ _%k99071%_))))
                (object-fill! _%obj99080%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99044%_ _%fill99045%_)
        (if '#t
            (let ((_%obj99049%_ _%obj99044%_))
              (__object-fill! _%obj99049%_ _%fill99045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99044%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99026%_ _%fill99027%_)
        (let ((_%obj99030%_ _%obj99026%_))
          (let _%loop99039%_ ((_%i99041%_
                               (let ((__tmp102577
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99030%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102577 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99041%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99030%_
                     _%fill99027%_
                     _%i99041%_
                     '#f
                     '#f))
                  (_%loop99039%_
                   (let () (declare (not safe)) (##fx- _%i99041%_ '1))))
                _%obj99030%_)))))
    (define new-instance
      (lambda (_%klass99012%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99012%_ 'class))
            (let ((_%klass99016%_ _%klass99012%_))
              (__new-instance _%klass99016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99012%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass99000%_)
        (let* ((_%klass99003%_ _%klass99000%_)
               (__obj102492
                (let ((__tmp102578
                       (let ((__tmp102579
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass99003%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102579))))
                  (declare (not safe))
                  (##make-structure _%klass99003%_ __tmp102578))))
          (object-fill! __obj102492 '#f)
          __obj102492)))
    (define make-instance
      (lambda (_%klass98985%_ . _%args98986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98985%_ 'class))
            (let ((_%klass98990%_ _%klass98985%_))
              (declare (not safe))
              (##apply __make-instance _%klass98990%_ _%args98986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass98985%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass98957%_ . _%args98958%_)
        (let* ((_%klass98961%_ _%klass98957%_)
               (_%$e98970%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98961%_ '10 '#f '#f))))
          (if _%$e98970%_
              ((lambda (_%kons-id98973%_)
                 (let ((_%obj98975%_ (__new-instance _%klass98961%_)))
                   (___constructor-init!
                    _%klass98961%_
                    _%kons-id98973%_
                    _%obj98975%_
                    _%args98958%_)
                   _%obj98975%_))
               _%$e98970%_)
              (if (__class-type-metaclass? _%klass98961%_)
                  (let ((_%obj98978%_ (__new-instance _%klass98961%_)))
                    (__metaclass-instance-init!
                     _%klass98961%_
                     _%obj98978%_
                     _%args98958%_)
                    _%obj98978%_)
                  (if (__class-type-struct? _%klass98961%_)
                      (if (let ((__tmp102581
                                 (__class-type-field-count _%klass98961%_))
                                (__tmp102580
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args98958%_))))
                            (declare (not safe))
                            (##fx= __tmp102581 __tmp102580))
                          (apply ##structure _%klass98961%_ _%args98958%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass98961%_
                                   'slots:
                                   (__class-type-slot-list _%klass98961%_)
                                   'args:
                                   _%args98958%_)
                            '#!void))
                      (let ((_%obj98981%_ (__new-instance _%klass98961%_)))
                        (___class-instance-init!
                         _%klass98961%_
                         _%obj98981%_
                         _%args98958%_)
                        _%obj98981%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98942%_ . _%args98943%_)
        (if '#t
            (let ((_%obj98947%_ _%obj98942%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98947%_ _%args98943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98942%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98929%_ . _%args98930%_)
        (let ((_%obj98933%_ _%obj98929%_))
          (if (let ((__tmp102583
                     (let () (declare (not safe)) (##length _%args98930%_)))
                    (__tmp102582
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98933%_))))
                (declare (not safe))
                (##fx< __tmp102583 __tmp102582))
              (___struct-instance-init! _%obj98933%_ _%args98930%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98933%_
                     'args:
                     _%args98930%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98888%_ _%args98889%_)
        (let _%lp98891%_ ((_%k98893%_ '1) (_%rest98894%_ _%args98889%_))
          (let* ((_%rest9889598903%_ _%rest98894%_)
                 (_%else9889798911%_ (lambda () _%obj98888%_))
                 (_%K9889998917%_
                  (lambda (_%rest98914%_ _%hd98915%_)
                    (unchecked-field-set! _%obj98888%_ _%k98893%_ _%hd98915%_)
                    (_%lp98891%_
                     (let () (declare (not safe)) (##fx+ _%k98893%_ '1))
                     _%rest98914%_))))
            (if (pair? _%rest9889598903%_)
                (let ((_%hd9890098920%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9889598903%_)))
                      (_%tl9890198922%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9889598903%_))))
                  (let* ((_%hd98925%_ _%hd9890098920%_)
                         (_%rest98927%_ _%tl9890198922%_))
                    (_%K9889998917%_ _%rest98927%_ _%hd98925%_)))
                (_%else9889798911%_))))))
    (define class-instance-init!
      (lambda (_%obj98873%_ . _%args98874%_)
        (if '#t
            (let ((_%obj98878%_ _%obj98873%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98878%_ _%args98874%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98873%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98860%_ . _%args98861%_)
        (let ((_%obj98864%_ _%obj98860%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98864%_))
           _%obj98864%_
           _%args98861%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98802%_ _%obj98803%_ _%args98804%_)
        (let _%lp98806%_ ((_%rest98808%_ _%args98804%_))
          (let* ((_%rest9880998819%_ _%rest98808%_)
                 (_%else9881198827%_
                  (lambda ()
                    (if (null? _%rest98808%_)
                        _%obj98803%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98802%_
                               'rest:
                               _%rest98808%_))))
                 (_%K9881398841%_
                  (lambda (_%rest98830%_ _%val98831%_ _%key98832%_)
                    (if (keyword? _%key98832%_)
                        (let ((_%$e98835%_
                               (__class-slot-offset
                                _%klass98802%_
                                _%key98832%_)))
                          (if _%$e98835%_
                              ((lambda (_%off98838%_)
                                 (unchecked-field-set!
                                  _%obj98803%_
                                  _%off98838%_
                                  _%val98831%_)
                                 (_%lp98806%_ _%rest98830%_))
                               _%$e98835%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98802%_
                                     'slot:
                                     _%key98832%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98832%_)))))
            (if (pair? _%rest9880998819%_)
                (let ((_%hd9881498844%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9880998819%_)))
                      (_%tl9881598846%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9880998819%_))))
                  (let ((_%key98849%_ _%hd9881498844%_))
                    (if (pair? _%tl9881598846%_)
                        (let ((_%hd9881698851%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9881598846%_)))
                              (_%tl9881798853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9881598846%_))))
                          (let* ((_%val98856%_ _%hd9881698851%_)
                                 (_%rest98858%_ _%tl9881798853%_))
                            (_%K9881398841%_
                             _%rest98858%_
                             _%val98856%_
                             _%key98849%_)))
                        (_%else9881198827%_))))
                (_%else9881198827%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98798%_ _%obj98799%_ _%args98800%_)
        (apply call-method
               _%klass98798%_
               'instance-init!
               _%obj98799%_
               _%args98800%_)))
    (define constructor-init!
      (lambda (_%klass98761%_ _%kons-id98762%_ _%obj98763%_ . _%args98764%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98761%_ 'class))
            (let ((_%klass98768%_ _%klass98761%_))
              (if (symbol? _%kons-id98762%_)
                  (let ((_%kons-id98778%_ _%kons-id98762%_))
                    (if '#t
                        (let ((_%obj98788%_ _%obj98763%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98768%_
                                   _%kons-id98778%_
                                   _%obj98788%_
                                   _%args98764%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98763%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98762%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98761%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98730%_ _%kons-id98731%_ _%obj98732%_ . _%args98733%_)
        (let* ((_%klass98736%_ _%klass98730%_)
               (_%kons-id98744%_ _%kons-id98731%_)
               (_%obj98752%_ _%obj98732%_))
          (___constructor-init!
           _%klass98736%_
           _%kons-id98744%_
           _%obj98752%_
           _%args98733%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98719%_ _%kons-id98720%_ _%obj98721%_ _%args98722%_)
        (let ((_%$e98724%_
               (__find-method _%klass98719%_ _%obj98721%_ _%kons-id98720%_)))
          (if _%$e98724%_
              ((lambda (_%kons98727%_)
                 (apply _%kons98727%_ _%obj98721%_ _%args98722%_)
                 _%obj98721%_)
               _%$e98724%_)
              (error '"missing constructor"
                     'class:
                     _%klass98719%_
                     'method:
                     _%kons-id98720%_)))))
    (define struct-copy
      (lambda (_%struct98705%_)
        (if '#t
            (let ((_%struct98709%_ _%struct98705%_))
              (__struct-copy _%struct98709%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98705%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98693%_)
        (let ((_%struct98696%_ _%struct98693%_))
          (declare (not safe))
          (##structure-copy _%struct98696%_))))
    (define struct->list
      (lambda (_%obj98679%_)
        (if '#t
            (let ((_%obj98683%_ _%obj98679%_)) (__struct->list _%obj98683%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98679%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98667%_)
        (let ((_%obj98670%_ _%obj98667%_))
          (declare (not safe))
          (##vector->list _%obj98670%_))))
    (define class->list
      (lambda (_%obj98653%_)
        (if '#t
            (let ((_%obj98657%_ _%obj98653%_)) (__class->list _%obj98657%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj98653%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98629%_)
        (let* ((_%obj98632%_ _%obj98629%_)
               (_%klass98641%_
                (let () (declare (not safe)) (##structure-type _%obj98632%_)))
               (_%slot-vector98643%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98641%_ '7 '#f '#f))))
          (let _%loop98645%_ ((_%index98647%_
                               (let ((__tmp102584
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98643%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102584 '1)))
                              (_%plist98648%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98647%_ '1))
                (cons _%klass98641%_ _%plist98648%_)
                (let ((_%slot98651%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98643%_ _%index98647%_))))
                  (_%loop98645%_
                   (let () (declare (not safe)) (##fx- _%index98647%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98651%_))
                         (cons (unchecked-field-ref
                                _%obj98632%_
                                _%index98647%_)
                               _%plist98648%_)))))))))
    (define call-method
      (lambda (_%obj98613%_ _%id98614%_ . _%args98615%_)
        (if (symbol? _%id98614%_)
            (let ((_%id98619%_ _%id98614%_))
              (declare (not safe))
              (##apply __call-method _%obj98613%_ _%id98619%_ _%args98615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id98614%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98582%_ _%id98583%_ . _%args98584%_)
        (let* ((_%id98587%_ _%id98583%_)
               (_%$e98596%_ (__method-ref _%obj98582%_ _%id98587%_)))
          (if _%$e98596%_
              ((lambda (_%method98599%_)
                 (let ((_%method98601%_ _%method98599%_))
                   (apply _%method98601%_ _%obj98582%_ _%args98584%_)))
               _%$e98596%_)
              (error '"cannot find method"
                     'object:
                     _%obj98582%_
                     'method:
                     _%id98587%_)))))
    (define method-ref
      (lambda (_%obj98567%_ _%id98568%_)
        (if (symbol? _%id98568%_)
            (let ((_%id98572%_ _%id98568%_))
              (__method-ref _%obj98567%_ _%id98572%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id98568%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98554%_ _%id98555%_)
        (let ((_%id98558%_ _%id98555%_))
          (__find-method (class-of _%obj98554%_) _%obj98554%_ _%id98558%_))))
    (define checked-method-ref
      (lambda (_%obj98547%_ _%id98548%_)
        (let ((_%$e98551%_ (method-ref _%obj98547%_ _%id98548%_)))
          (if _%$e98551%_
              _%$e98551%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98547%_
                       'method:
                       _%id98548%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98532%_ _%id98533%_)
        (if (symbol? _%id98533%_)
            (let ((_%id98537%_ _%id98533%_))
              (__bound-method-ref _%obj98532%_ _%id98537%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id98533%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98500%_ _%id98501%_)
        (let* ((_%id98504%_ _%id98501%_)
               (_%$e98513%_ (__method-ref _%obj98500%_ _%id98504%_)))
          (if _%$e98513%_
              ((lambda (_%method98516%_)
                 (let ((_%method98518%_ _%method98516%_))
                   (lambda _%args98529%_
                     (apply _%method98518%_ _%obj98500%_ _%args98529%_))))
               _%$e98513%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98485%_ _%id98486%_)
        (if (symbol? _%id98486%_)
            (let ((_%id98490%_ _%id98486%_))
              (__checked-bound-method-ref _%obj98485%_ _%id98490%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id98486%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98468%_ _%id98469%_)
        (let* ((_%id98472%_ _%id98469%_)
               (_%method98481%_ (checked-method-ref _%obj98468%_ _%id98472%_)))
          (lambda _%args98483%_
            (apply _%method98481%_ _%obj98468%_ _%args98483%_)))))
    (define find-method
      (lambda (_%klass98442%_ _%obj98443%_ _%id98444%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98442%_ 'class))
            (let ((_%klass98448%_ _%klass98442%_))
              (if (symbol? _%id98444%_)
                  (let ((_%id98458%_ _%id98444%_))
                    (__find-method _%klass98448%_ _%obj98443%_ _%id98458%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98444%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass98442%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98415%_ _%obj98416%_ _%id98417%_)
        (let* ((_%klass98420%_ _%klass98415%_)
               (_%id98428%_ _%id98417%_)
               (_%$e98437%_
                (__direct-method-ref _%klass98420%_ _%obj98416%_ _%id98428%_)))
          (if _%$e98437%_
              _%$e98437%_
              (if (__class-type-sealed? _%klass98420%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98420%_
                   _%obj98416%_
                   _%id98428%_))))))
    (define mixin-find-method
      (lambda (_%mixins98399%_ _%obj98400%_ _%id98401%_)
        (if (symbol? _%id98401%_)
            (let ((_%id98405%_ _%id98401%_))
              (__mixin-find-method _%mixins98399%_ _%obj98400%_ _%id98405%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id98401%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98381%_ _%obj98382%_ _%id98383%_)
        (let* ((_%id98386%_ _%id98383%_)
               (__tmp102585
                (lambda (_%g9839498396%_)
                  (direct-method-ref
                   _%g9839498396%_
                   _%obj98382%_
                   _%id98386%_))))
          (declare (not safe))
          (__ormap1 __tmp102585 _%mixins98381%_))))
    (define direct-method-ref
      (lambda (_%klass98355%_ _%obj98356%_ _%id98357%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98355%_ 'class))
            (let ((_%klass98361%_ _%klass98355%_))
              (if (symbol? _%id98357%_)
                  (let ((_%id98371%_ _%id98357%_))
                    (__direct-method-ref
                     _%klass98361%_
                     _%obj98356%_
                     _%id98371%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98357%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass98355%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98309%_ _%obj98310%_ _%id98311%_)
        (let* ((_%klass98314%_ _%klass98309%_) (_%id98322%_ _%id98311%_))
          (letrec ((_%metaclass-resolve-method98331%_
                    (lambda ()
                      (let ((__method102493
                             (__method-ref _%klass98314%_ 'direct-method-ref)))
                        (if __method102493
                            (let ()
                              (declare (not safe))
                              (__method102493
                               _%klass98314%_
                               _%obj98310%_
                               _%id98322%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98314%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98332%_
                    (lambda ()
                      (let ((_%method98352%_
                             (_%metaclass-resolve-method98331%_)))
                        (let ((__tmp102587
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98314%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102586
                               (if _%method98352%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102587
                           _%id98322%_
                           __tmp102586))
                        _%method98352%_))))
            (let ((_%$e98334%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98314%_ '11 '#f '#f))))
              (if _%$e98334%_
                  ((lambda (_%ht98337%_)
                     (let ((_%method98339%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98337%_
                               _%id98322%_
                               '#f))))
                       (if (procedure? _%method98339%_)
                           _%method98339%_
                           (if (__class-type-metaclass? _%klass98314%_)
                               (let ((_%$e98343%_ _%method98339%_))
                                 (if (eq? 'resolved _%$e98343%_)
                                     (_%metaclass-resolve-method98331%_)
                                     (if (eq? 'unknown _%$e98343%_)
                                         '#f
                                         (_%metaclass-resolve-method!98332%_))))
                               '#f))))
                   _%$e98334%_)
                  (if (__class-type-metaclass? _%klass98314%_)
                      (let ((_%tab98348%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98314%_
                           _%tab98348%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98332%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98283%_ _%obj98284%_ _%id98285%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98283%_ 'class))
            (let ((_%klass98289%_ _%klass98283%_))
              (if (symbol? _%id98285%_)
                  (let ((_%id98299%_ _%id98285%_))
                    (__mixin-method-ref
                     _%klass98289%_
                     _%obj98284%_
                     _%id98299%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass98283%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98261%_ _%obj98262%_ _%id98263%_)
        (let* ((_%klass98266%_ _%klass98261%_) (_%id98274%_ _%id98263%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98266%_ '6 '#f '#f))
           _%obj98262%_
           _%id98274%_))))
    (define bind-method!__%
      (lambda (_%klass98220%_ _%id98221%_ _%proc98222%_ _%rebind?98223%_)
        (if (symbol? _%id98221%_)
            (let ((_%id98227%_ _%id98221%_))
              (if (procedure? _%proc98222%_)
                  (let ((_%proc98237%_ _%proc98222%_))
                    (__bind-method!__%
                     _%klass98220%_
                     _%id98227%_
                     _%proc98237%_
                     _%rebind?98223%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98222%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id98221%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98250%_ _%id98251%_ _%proc98252%_)
        (let ((_%rebind?98254%_ '#f))
          (bind-method!__%
           _%klass98250%_
           _%id98251%_
           _%proc98252%_
           _%rebind?98254%_))))
    (define bind-method!
      (lambda _g102589_
        (let ((_g102588_ (let () (declare (not safe)) (##length _g102589_))))
          (cond ((let () (declare (not safe)) (##fx= _g102588_ 3))
                 (apply bind-method!__0 _g102589_))
                ((let () (declare (not safe)) (##fx= _g102588_ 4))
                 (apply bind-method!__% _g102589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102589_))))))
    (define __bind-method!__%
      (lambda (_%klass98171%_ _%id98172%_ _%proc98173%_ _%rebind?98174%_)
        (let* ((_%id98177%_ _%id98172%_) (_%proc98185%_ _%proc98173%_))
          (letrec ((_%bind!98194%_
                    (lambda (_%ht98203%_)
                      (if (and (not _%rebind?98174%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98203%_
                                  _%id98177%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98171%_
                                 'method:
                                 _%id98177%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98203%_
                               _%id98177%_
                               _%proc98185%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98171%_ 'class))
                (let ((_%ht98197%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98171%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98197%_
                      (_%bind!98194%_ _%ht98197%_)
                      (let ((_%ht98199%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98171%_
                           _%ht98199%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98194%_ _%ht98199%_))))
                (if (let () (declare (not safe)) (##type? _%klass98171%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98171%_)
                     _%id98177%_
                     _%proc98185%_
                     _%rebind?98174%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98171%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98208%_ _%id98209%_ _%proc98210%_)
        (let ((_%rebind?98212%_ '#f))
          (__bind-method!__%
           _%klass98208%_
           _%id98209%_
           _%proc98210%_
           _%rebind?98212%_))))
    (define __bind-method!
      (lambda _g102591_
        (let ((_g102590_ (let () (declare (not safe)) (##length _g102591_))))
          (cond ((let () (declare (not safe)) (##fx= _g102590_ 3))
                 (apply __bind-method!__0 _g102591_))
                ((let () (declare (not safe)) (##fx= _g102590_ 4))
                 (apply __bind-method!__% _g102591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102591_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98151%_ _%seed98153%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98151%_
           procedure-hash
           eq?
           _%seed98153%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98159%_ '#f) (_%seed98161%_ '0))
          (make-method-specializer-table__%
           _%size-hint98159%_
           _%seed98161%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98163%_)
        (let ((_%seed98165%_ '0))
          (make-method-specializer-table__%
           _%size-hint98163%_
           _%seed98165%_))))
    (define make-method-specializer-table
      (lambda _g102593_
        (let ((_g102592_ (let () (declare (not safe)) (##length _g102593_))))
          (cond ((let () (declare (not safe)) (##fx= _g102592_ 0))
                 (apply make-method-specializer-table__0 _g102593_))
                ((let () (declare (not safe)) (##fx= _g102592_ 1))
                 (apply make-method-specializer-table__1 _g102593_))
                ((let () (declare (not safe)) (##fx= _g102592_ 2))
                 (apply make-method-specializer-table__% _g102593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102593_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98104%_ _%key98105%_ _%default98106%_)
        (let ((_%table98108%_
               (let () (declare (not safe)) (&raw-table-table _%tab98104%_)))
              (_%seed98109%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98104%_))))
          (let* ((_%h98111%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98105%_))
                         _%seed98109%_))
                 (_%size98114%_ (vector-length _%table98108%_))
                 (_%entries98117%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98114%_ '2)))
                 (_%start98120%_
                  (let ((__tmp102594
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98111%_ _%entries98117%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102594 '1))))
            (let _%loop98124%_ ((_%probe98127%_ _%start98120%_)
                                (_%i98129%_ '1)
                                (_%deleted98131%_ '#f))
              (let ((_%k98134%_ (vector-ref _%table98108%_ _%probe98127%_)))
                (if (eq? _%k98134%_ (macro-unused-obj))
                    _%default98106%_
                    (if (eq? _%k98134%_ (macro-deleted-obj))
                        (_%loop98124%_
                         (let ((_%next-probe98139%_
                                (fx+ _%start98120%_
                                     _%i98129%_
                                     (fx* _%i98129%_ _%i98129%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98139%_ _%size98114%_))
                         (let () (declare (not safe)) (##fx+ _%i98129%_ '1))
                         (let ((_%$e98142%_ _%deleted98131%_))
                           (if _%$e98142%_ _%$e98142%_ _%probe98127%_)))
                        (if (eq? _%key98105%_ _%k98134%_)
                            (vector-ref
                             _%table98108%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98127%_ '1)))
                            (_%loop98124%_
                             (let ((_%next-probe98147%_
                                    (fx+ _%start98120%_
                                         _%i98129%_
                                         (fx* _%i98129%_ _%i98129%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98147%_ _%size98114%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98129%_ '1))
                             _%deleted98131%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98100%_ _%key98101%_ _%value98102%_)
        (if (let ((__tmp102597
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98100%_)))
                  (__tmp102595
                   (let ((__tmp102596
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98100%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102596 '4))))
              (declare (not safe))
              (##fx< __tmp102597 __tmp102595))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98100%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98100%_
         _%key98101%_
         _%value98102%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98051%_ _%key98052%_ _%value98053%_)
        (let ((_%table98056%_
               (let () (declare (not safe)) (&raw-table-table _%tab98051%_)))
              (_%seed98057%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98051%_))))
          (let* ((_%h98059%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98052%_))
                         _%seed98057%_))
                 (_%size98062%_ (vector-length _%table98056%_))
                 (_%entries98065%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98062%_ '2)))
                 (_%start98068%_
                  (let ((__tmp102598
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98059%_ _%entries98065%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102598 '1))))
            (let _%loop98072%_ ((_%probe98075%_ _%start98068%_)
                                (_%i98077%_ '1)
                                (_%deleted98079%_ '#f))
              (let ((_%k98082%_ (vector-ref _%table98056%_ _%probe98075%_)))
                (if (eq? _%k98082%_ (macro-unused-obj))
                    (if _%deleted98079%_
                        (begin
                          (vector-set!
                           _%table98056%_
                           _%deleted98079%_
                           _%key98052%_)
                          (vector-set!
                           _%table98056%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98079%_ '1))
                           _%value98053%_)
                          ((lambda ()
                             (let ((__tmp102599
                                    (let ((__tmp102600
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98051%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102600 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98051%_
                                __tmp102599)))))
                        (begin
                          (vector-set!
                           _%table98056%_
                           _%probe98075%_
                           _%key98052%_)
                          (vector-set!
                           _%table98056%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98075%_ '1))
                           _%value98053%_)
                          ((lambda ()
                             (let ((__tmp102601
                                    (let ((__tmp102602
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98051%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102602 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98051%_ __tmp102601))
                             (let ((__tmp102603
                                    (let ((__tmp102604
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98051%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102604 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98051%_
                                __tmp102603))))))
                    (if (eq? _%k98082%_ (macro-deleted-obj))
                        (_%loop98072%_
                         (let ((_%next-probe98089%_
                                (fx+ _%start98068%_
                                     _%i98077%_
                                     (fx* _%i98077%_ _%i98077%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98089%_ _%size98062%_))
                         (let () (declare (not safe)) (##fx+ _%i98077%_ '1))
                         (let ((_%$e98092%_ _%deleted98079%_))
                           (if _%$e98092%_ _%$e98092%_ _%probe98075%_)))
                        (if (eq? _%key98052%_ _%k98082%_)
                            (let ()
                              (vector-set!
                               _%table98056%_
                               _%probe98075%_
                               _%key98052%_)
                              (vector-set!
                               _%table98056%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98075%_ '1))
                               _%value98053%_))
                            (_%loop98072%_
                             (let ((_%next-probe98097%_
                                    (fx+ _%start98068%_
                                         _%i98077%_
                                         (fx* _%i98077%_ _%i98077%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98097%_ _%size98062%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98077%_ '1))
                             _%deleted98079%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98046%_
               _%key98047%_
               _%method-specializer-table-update!98048%_
               _%default98049%_)
        (if (let ((__tmp102607
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98046%_)))
                  (__tmp102605
                   (let ((__tmp102606
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98046%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102606 '4))))
              (declare (not safe))
              (##fx< __tmp102607 __tmp102605))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98046%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98046%_
         _%key98047%_
         _%method-specializer-table-update!98048%_
         _%default98049%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab97996%_
               _%key97997%_
               _%method-specializer-table-update!97998%_
               _%default97999%_)
        (let ((_%table98002%_
               (let () (declare (not safe)) (&raw-table-table _%tab97996%_)))
              (_%seed98003%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97996%_))))
          (let* ((_%h98005%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97997%_))
                         _%seed98003%_))
                 (_%size98008%_ (vector-length _%table98002%_))
                 (_%entries98011%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98008%_ '2)))
                 (_%start98014%_
                  (let ((__tmp102608
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98005%_ _%entries98011%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102608 '1))))
            (let _%loop98018%_ ((_%probe98021%_ _%start98014%_)
                                (_%i98023%_ '1)
                                (_%deleted98025%_ '#f))
              (let ((_%k98028%_ (vector-ref _%table98002%_ _%probe98021%_)))
                (if (eq? _%k98028%_ (macro-unused-obj))
                    (if _%deleted98025%_
                        (begin
                          (vector-set!
                           _%table98002%_
                           _%deleted98025%_
                           _%key97997%_)
                          (vector-set!
                           _%table98002%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98025%_ '1))
                           (_%method-specializer-table-update!97998%_
                            _%default97999%_))
                          ((lambda ()
                             (let ((__tmp102609
                                    (let ((__tmp102610
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97996%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102610 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97996%_
                                __tmp102609)))))
                        (begin
                          (vector-set!
                           _%table98002%_
                           _%probe98021%_
                           _%key97997%_)
                          (vector-set!
                           _%table98002%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98021%_ '1))
                           (_%method-specializer-table-update!97998%_
                            _%default97999%_))
                          ((lambda ()
                             (let ((__tmp102611
                                    (let ((__tmp102612
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97996%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102612 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97996%_ __tmp102611))
                             (let ((__tmp102613
                                    (let ((__tmp102614
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97996%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102614 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97996%_
                                __tmp102613))))))
                    (if (eq? _%k98028%_ (macro-deleted-obj))
                        (_%loop98018%_
                         (let ((_%next-probe98035%_
                                (fx+ _%start98014%_
                                     _%i98023%_
                                     (fx* _%i98023%_ _%i98023%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98035%_ _%size98008%_))
                         (let () (declare (not safe)) (##fx+ _%i98023%_ '1))
                         (let ((_%$e98038%_ _%deleted98025%_))
                           (if _%$e98038%_ _%$e98038%_ _%probe98021%_)))
                        (if (eq? _%key97997%_ _%k98028%_)
                            (let ()
                              (vector-set!
                               _%table98002%_
                               _%probe98021%_
                               _%key97997%_)
                              (vector-set!
                               _%table98002%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98021%_ '1))
                               (_%method-specializer-table-update!97998%_
                                (vector-ref
                                 _%table98002%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98021%_ '1))))))
                            (_%loop98018%_
                             (let ((_%next-probe98043%_
                                    (fx+ _%start98014%_
                                         _%i98023%_
                                         (fx* _%i98023%_ _%i98023%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98043%_ _%size98008%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98023%_ '1))
                             _%deleted98025%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97951%_ _%key97953%_)
        (let ((_%table97956%_
               (let () (declare (not safe)) (&raw-table-table _%tab97951%_)))
              (_%seed97958%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97951%_))))
          (let* ((_%h97961%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97953%_))
                         _%seed97958%_))
                 (_%size97964%_ (vector-length _%table97956%_))
                 (_%entries97967%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97964%_ '2)))
                 (_%start97970%_
                  (let ((__tmp102615
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97961%_ _%entries97967%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102615 '1))))
            (let _%loop97974%_ ((_%probe97977%_ _%start97970%_)
                                (_%i97979%_ '1))
              (let ((_%k97982%_ (vector-ref _%table97956%_ _%probe97977%_)))
                (if (eq? _%k97982%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97982%_ (macro-deleted-obj))
                        (_%loop97974%_
                         (let ((_%next-probe97987%_
                                (fx+ _%start97970%_
                                     _%i97979%_
                                     (fx* _%i97979%_ _%i97979%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97987%_ _%size97964%_))
                         (let () (declare (not safe)) (##fx+ _%i97979%_ '1)))
                        (if (eq? _%key97953%_ _%k97982%_)
                            (let ()
                              (vector-set!
                               _%table97956%_
                               _%probe97977%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97956%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97977%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102616
                                        (let ((__tmp102617
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97951%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102617 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97951%_
                                    __tmp102616)))))
                            (_%loop97974%_
                             (let ((_%next-probe97993%_
                                    (fx+ _%start97970%_
                                         _%i97979%_
                                         (fx* _%i97979%_ _%i97979%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97993%_ _%size97964%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97979%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97942%_ _%specializer97943%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97947%_ ()
            (if (let ((__tmp102618
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102618 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97947%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97942%_
         _%specializer97943%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97932%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97936%_ ()
            (if (let ((__tmp102619
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102619 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97936%_)))))
        (let ((_%specializer97940%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97932%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97940%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97930%_)
        (let ((__tmp102620
               (let () (declare (not safe)) (##type-id _%klass97930%_))))
          (declare (not safe))
          (symbolic-hash __tmp102620))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97911%_ _%seed97913%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97911%_
           __class-specializer-hash-key
           eq?
           _%seed97913%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97919%_ '#f) (_%seed97921%_ '0))
          (make-class-specializer-table__% _%size-hint97919%_ _%seed97921%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97923%_)
        (let ((_%seed97925%_ '0))
          (make-class-specializer-table__% _%size-hint97923%_ _%seed97925%_))))
    (define make-class-specializer-table
      (lambda _g102622_
        (let ((_g102621_ (let () (declare (not safe)) (##length _g102622_))))
          (cond ((let () (declare (not safe)) (##fx= _g102621_ 0))
                 (apply make-class-specializer-table__0 _g102622_))
                ((let () (declare (not safe)) (##fx= _g102621_ 1))
                 (apply make-class-specializer-table__1 _g102622_))
                ((let () (declare (not safe)) (##fx= _g102621_ 2))
                 (apply make-class-specializer-table__% _g102622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102622_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97864%_ _%key97865%_ _%default97866%_)
        (let ((_%table97868%_
               (let () (declare (not safe)) (&raw-table-table _%tab97864%_)))
              (_%seed97869%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97864%_))))
          (let* ((_%h97871%_
                  (fxxor (__class-specializer-hash-key _%key97865%_)
                         _%seed97869%_))
                 (_%size97874%_ (vector-length _%table97868%_))
                 (_%entries97877%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97874%_ '2)))
                 (_%start97880%_
                  (let ((__tmp102623
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97871%_ _%entries97877%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102623 '1))))
            (let _%loop97884%_ ((_%probe97887%_ _%start97880%_)
                                (_%i97889%_ '1)
                                (_%deleted97891%_ '#f))
              (let ((_%k97894%_ (vector-ref _%table97868%_ _%probe97887%_)))
                (if (eq? _%k97894%_ (macro-unused-obj))
                    _%default97866%_
                    (if (eq? _%k97894%_ (macro-deleted-obj))
                        (_%loop97884%_
                         (let ((_%next-probe97899%_
                                (fx+ _%start97880%_
                                     _%i97889%_
                                     (fx* _%i97889%_ _%i97889%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97899%_ _%size97874%_))
                         (let () (declare (not safe)) (##fx+ _%i97889%_ '1))
                         (let ((_%$e97902%_ _%deleted97891%_))
                           (if _%$e97902%_ _%$e97902%_ _%probe97887%_)))
                        (if (eq? _%key97865%_ _%k97894%_)
                            (vector-ref
                             _%table97868%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97887%_ '1)))
                            (_%loop97884%_
                             (let ((_%next-probe97907%_
                                    (fx+ _%start97880%_
                                         _%i97889%_
                                         (fx* _%i97889%_ _%i97889%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97907%_ _%size97874%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97889%_ '1))
                             _%deleted97891%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97860%_ _%key97861%_ _%value97862%_)
        (if (let ((__tmp102626
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97860%_)))
                  (__tmp102624
                   (let ((__tmp102625
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97860%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102625 '4))))
              (declare (not safe))
              (##fx< __tmp102626 __tmp102624))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97860%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97860%_
         _%key97861%_
         _%value97862%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97811%_ _%key97812%_ _%value97813%_)
        (let ((_%table97816%_
               (let () (declare (not safe)) (&raw-table-table _%tab97811%_)))
              (_%seed97817%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97811%_))))
          (let* ((_%h97819%_
                  (fxxor (__class-specializer-hash-key _%key97812%_)
                         _%seed97817%_))
                 (_%size97822%_ (vector-length _%table97816%_))
                 (_%entries97825%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97822%_ '2)))
                 (_%start97828%_
                  (let ((__tmp102627
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97819%_ _%entries97825%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102627 '1))))
            (let _%loop97832%_ ((_%probe97835%_ _%start97828%_)
                                (_%i97837%_ '1)
                                (_%deleted97839%_ '#f))
              (let ((_%k97842%_ (vector-ref _%table97816%_ _%probe97835%_)))
                (if (eq? _%k97842%_ (macro-unused-obj))
                    (if _%deleted97839%_
                        (begin
                          (vector-set!
                           _%table97816%_
                           _%deleted97839%_
                           _%key97812%_)
                          (vector-set!
                           _%table97816%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97839%_ '1))
                           _%value97813%_)
                          ((lambda ()
                             (let ((__tmp102628
                                    (let ((__tmp102629
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97811%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102629 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97811%_
                                __tmp102628)))))
                        (begin
                          (vector-set!
                           _%table97816%_
                           _%probe97835%_
                           _%key97812%_)
                          (vector-set!
                           _%table97816%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97835%_ '1))
                           _%value97813%_)
                          ((lambda ()
                             (let ((__tmp102630
                                    (let ((__tmp102631
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97811%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102631 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97811%_ __tmp102630))
                             (let ((__tmp102632
                                    (let ((__tmp102633
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97811%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102633 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97811%_
                                __tmp102632))))))
                    (if (eq? _%k97842%_ (macro-deleted-obj))
                        (_%loop97832%_
                         (let ((_%next-probe97849%_
                                (fx+ _%start97828%_
                                     _%i97837%_
                                     (fx* _%i97837%_ _%i97837%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97849%_ _%size97822%_))
                         (let () (declare (not safe)) (##fx+ _%i97837%_ '1))
                         (let ((_%$e97852%_ _%deleted97839%_))
                           (if _%$e97852%_ _%$e97852%_ _%probe97835%_)))
                        (if (eq? _%key97812%_ _%k97842%_)
                            (let ()
                              (vector-set!
                               _%table97816%_
                               _%probe97835%_
                               _%key97812%_)
                              (vector-set!
                               _%table97816%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97835%_ '1))
                               _%value97813%_))
                            (_%loop97832%_
                             (let ((_%next-probe97857%_
                                    (fx+ _%start97828%_
                                         _%i97837%_
                                         (fx* _%i97837%_ _%i97837%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97857%_ _%size97822%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97837%_ '1))
                             _%deleted97839%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97806%_
               _%key97807%_
               _%class-specializer-table-update!97808%_
               _%default97809%_)
        (if (let ((__tmp102636
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97806%_)))
                  (__tmp102634
                   (let ((__tmp102635
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97806%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102635 '4))))
              (declare (not safe))
              (##fx< __tmp102636 __tmp102634))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97806%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97806%_
         _%key97807%_
         _%class-specializer-table-update!97808%_
         _%default97809%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97756%_
               _%key97757%_
               _%class-specializer-table-update!97758%_
               _%default97759%_)
        (let ((_%table97762%_
               (let () (declare (not safe)) (&raw-table-table _%tab97756%_)))
              (_%seed97763%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97756%_))))
          (let* ((_%h97765%_
                  (fxxor (__class-specializer-hash-key _%key97757%_)
                         _%seed97763%_))
                 (_%size97768%_ (vector-length _%table97762%_))
                 (_%entries97771%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97768%_ '2)))
                 (_%start97774%_
                  (let ((__tmp102637
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97765%_ _%entries97771%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102637 '1))))
            (let _%loop97778%_ ((_%probe97781%_ _%start97774%_)
                                (_%i97783%_ '1)
                                (_%deleted97785%_ '#f))
              (let ((_%k97788%_ (vector-ref _%table97762%_ _%probe97781%_)))
                (if (eq? _%k97788%_ (macro-unused-obj))
                    (if _%deleted97785%_
                        (begin
                          (vector-set!
                           _%table97762%_
                           _%deleted97785%_
                           _%key97757%_)
                          (vector-set!
                           _%table97762%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97785%_ '1))
                           (_%class-specializer-table-update!97758%_
                            _%default97759%_))
                          ((lambda ()
                             (let ((__tmp102638
                                    (let ((__tmp102639
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97756%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102639 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97756%_
                                __tmp102638)))))
                        (begin
                          (vector-set!
                           _%table97762%_
                           _%probe97781%_
                           _%key97757%_)
                          (vector-set!
                           _%table97762%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97781%_ '1))
                           (_%class-specializer-table-update!97758%_
                            _%default97759%_))
                          ((lambda ()
                             (let ((__tmp102640
                                    (let ((__tmp102641
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97756%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102641 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97756%_ __tmp102640))
                             (let ((__tmp102642
                                    (let ((__tmp102643
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97756%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102643 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97756%_
                                __tmp102642))))))
                    (if (eq? _%k97788%_ (macro-deleted-obj))
                        (_%loop97778%_
                         (let ((_%next-probe97795%_
                                (fx+ _%start97774%_
                                     _%i97783%_
                                     (fx* _%i97783%_ _%i97783%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97795%_ _%size97768%_))
                         (let () (declare (not safe)) (##fx+ _%i97783%_ '1))
                         (let ((_%$e97798%_ _%deleted97785%_))
                           (if _%$e97798%_ _%$e97798%_ _%probe97781%_)))
                        (if (eq? _%key97757%_ _%k97788%_)
                            (let ()
                              (vector-set!
                               _%table97762%_
                               _%probe97781%_
                               _%key97757%_)
                              (vector-set!
                               _%table97762%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97781%_ '1))
                               (_%class-specializer-table-update!97758%_
                                (vector-ref
                                 _%table97762%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97781%_ '1))))))
                            (_%loop97778%_
                             (let ((_%next-probe97803%_
                                    (fx+ _%start97774%_
                                         _%i97783%_
                                         (fx* _%i97783%_ _%i97783%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97803%_ _%size97768%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97783%_ '1))
                             _%deleted97785%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97711%_ _%key97713%_)
        (let ((_%table97716%_
               (let () (declare (not safe)) (&raw-table-table _%tab97711%_)))
              (_%seed97718%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97711%_))))
          (let* ((_%h97721%_
                  (fxxor (__class-specializer-hash-key _%key97713%_)
                         _%seed97718%_))
                 (_%size97724%_ (vector-length _%table97716%_))
                 (_%entries97727%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97724%_ '2)))
                 (_%start97730%_
                  (let ((__tmp102644
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97721%_ _%entries97727%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102644 '1))))
            (let _%loop97734%_ ((_%probe97737%_ _%start97730%_)
                                (_%i97739%_ '1))
              (let ((_%k97742%_ (vector-ref _%table97716%_ _%probe97737%_)))
                (if (eq? _%k97742%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97742%_ (macro-deleted-obj))
                        (_%loop97734%_
                         (let ((_%next-probe97747%_
                                (fx+ _%start97730%_
                                     _%i97739%_
                                     (fx* _%i97739%_ _%i97739%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97747%_ _%size97724%_))
                         (let () (declare (not safe)) (##fx+ _%i97739%_ '1)))
                        (if (eq? _%key97713%_ _%k97742%_)
                            (let ()
                              (vector-set!
                               _%table97716%_
                               _%probe97737%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97716%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97737%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102645
                                        (let ((__tmp102646
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97711%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102646 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97711%_
                                    __tmp102645)))))
                            (_%loop97734%_
                             (let ((_%next-probe97753%_
                                    (fx+ _%start97730%_
                                         _%i97739%_
                                         (fx* _%i97739%_ _%i97739%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97753%_ _%size97724%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97739%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97697%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97697%_ 'class))
            (let ((_%klass97701%_ _%klass97697%_))
              (__specialize-class _%klass97701%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass97697%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97679%_)
        (let* ((_%klass97682%_ _%klass97679%_)
               (_%$e97691%_ (__lookup-class-specializer _%klass97682%_)))
          (if _%$e97691%_
              _%$e97691%_
              (let ((_%method-table97695%_
                     (___specialize-class _%klass97682%_)))
                (__bind-class-specializer!
                 _%klass97682%_
                 _%method-table97695%_)
                _%method-table97695%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97669%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97673%_ ()
            (if (let ((__tmp102647
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102647 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97673%_)))))
        (let ((_%method-table97677%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97669%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97677%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97660%_ _%method-table97661%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97665%_ ()
            (if (let ((__tmp102648
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102648 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97665%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97660%_
         _%method-table97661%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97644%_
               _%method-table97645%_
               _%method97646%_
               _%proc97647%_)
        (let ((_%$e97649%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97645%_
                  _%method97646%_
                  '#f))))
          (if _%$e97649%_
              _%$e97649%_
              (let ((_%$e97652%_ (__lookup-method-specializer _%proc97647%_)))
                (if _%$e97652%_
                    ((lambda (_%specialize97655%_)
                       (let ((_%specialized-proc97657%_
                              (_%specialize97655%_
                               _%klass97644%_
                               _%method-table97645%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97645%_
                          _%method97646%_
                          _%specialized-proc97657%_)))
                     _%$e97652%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97645%_
                       _%method97646%_
                       _%proc97647%_))))))))
    (define ___specialize-class
      (lambda (_%klass97586%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97586%_ 'class))
            (if (__class-type-metaclass? _%klass97586%_)
                (let ((__method102494
                       (__method-ref _%klass97586%_ 'specialize-class)))
                  (if __method102494
                      (let ()
                        (declare (not safe))
                        (__method102494 _%klass97586%_))
                      (begin
                        (error '"Missing method"
                               _%klass97586%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102649
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97586%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102649))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97586%_)
                    (let ((_%method-table97592%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97594%_ ((_%rest97596%_
                                           (__class-precedence-list
                                            _%klass97586%_)))
                        (let* ((_%rest9759797605%_ _%rest97596%_)
                               (_%else9759997613%_
                                (lambda () _%method-table97592%_))
                               (_%K9760197632%_
                                (lambda (_%rest97616%_ _%xklass97617%_)
                                  (let ((_%xmethod-table9761897620%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97617%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9761897620%_
                                        (let* ((_%xmethod-table97623%_
                                                _%xmethod-table9761897620%_)
                                               (__tmp102650
                                                (lambda (_%g9762497627%_
                                                         _%g9762597629%_)
                                                  (__specialize-method
                                                   _%klass97586%_
                                                   _%method-table97592%_
                                                   _%g9762497627%_
                                                   _%g9762597629%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97623%_
                                           __tmp102650))
                                        '#f))
                                  (_%loop97594%_ _%rest97616%_))))
                          (if (pair? _%rest9759797605%_)
                              (let ((_%hd9760297635%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9759797605%_)))
                                    (_%tl9760397637%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9759797605%_))))
                                (let* ((_%xklass97640%_ _%hd9760297635%_)
                                       (_%rest97642%_ _%tl9760397637%_))
                                  (_%K9760197632%_
                                   _%rest97642%_
                                   _%xklass97640%_)))
                              (_%else9759997613%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97586%_))
                (__specialize-class (__shadow-class _%klass97586%_))
                (error '"bad class; cannot specialize" _%klass97586%_)))))
    (define seal-class!
      (lambda (_%klass97572%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97572%_ 'class))
            (let ((_%klass97576%_ _%klass97572%_))
              (__seal-class! _%klass97576%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass97572%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97555%_)
        (let ((_%klass97558%_ _%klass97555%_))
          (if (__class-type-sealed? _%klass97558%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97558%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97558%_))
                (if (__class-type-metaclass? _%klass97558%_)
                    (let ((__method102495
                           (__method-ref _%klass97558%_ 'seal-class!)))
                      (if __method102495
                          (let ()
                            (declare (not safe))
                            (__method102495 _%klass97558%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97558%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102651
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97558%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102651))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97558%_)
                        (let ((_%method-table97570%_
                               (__specialize-class _%klass97558%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97558%_
                           _%method-table97570%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97558%_))))))
    (define next-method
      (lambda (_%subklass97529%_ _%obj97530%_ _%id97531%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97529%_ 'class))
            (let ((_%subklass97535%_ _%subklass97529%_))
              (if (symbol? _%id97531%_)
                  (let ((_%id97545%_ _%id97531%_))
                    (__next-method _%subklass97535%_ _%obj97530%_ _%id97545%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97531%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass97529%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97466%_ _%obj97467%_ _%id97468%_)
        (let* ((_%subklass97471%_ _%subklass97466%_) (_%id97479%_ _%id97468%_))
          (letrec ((_%find-next-method97488%_
                    (lambda (_%klass97490%_)
                      (let _%lp97492%_ ((_%rest97494%_
                                         (class-precedence-list
                                          _%klass97490%_)))
                        (let* ((_%rest9749597503%_ _%rest97494%_)
                               (_%else9749797511%_ (lambda () '#f))
                               (_%K9749997517%_
                                (lambda (_%rest97514%_ _%klass97515%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97471%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97515%_)))
                                      (__mixin-find-method
                                       _%rest97514%_
                                       _%obj97467%_
                                       _%id97479%_)
                                      (_%lp97492%_ _%rest97514%_)))))
                          (if (pair? _%rest9749597503%_)
                              (let ((_%hd9750097520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9749597503%_)))
                                    (_%tl9750197522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9749597503%_))))
                                (let* ((_%klass97525%_ _%hd9750097520%_)
                                       (_%rest97527%_ _%tl9750197522%_))
                                  (_%K9749997517%_
                                   _%rest97527%_
                                   _%klass97525%_)))
                              (_%else9749797511%_)))))))
            (_%find-next-method97488%_ (class-of _%obj97467%_))))))
    (define call-next-method
      (lambda (_%subklass97439%_ _%obj97440%_ _%id97441%_ . _%args97442%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97439%_ 'class))
            (let ((_%subklass97446%_ _%subklass97439%_))
              (if (symbol? _%id97441%_)
                  (let ((_%id97456%_ _%id97441%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97446%_
                             _%obj97440%_
                             _%id97456%_
                             _%args97442%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97441%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass97439%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97410%_ _%obj97411%_ _%id97412%_ . _%args97413%_)
        (let* ((_%subklass97416%_ _%subklass97410%_)
               (_%id97424%_ _%id97412%_)
               (_%$e97433%_
                (__next-method _%subklass97416%_ _%obj97411%_ _%id97424%_)))
          (if _%$e97433%_
              ((lambda (_%methodf97436%_)
                 (apply _%methodf97436%_ _%obj97411%_ _%args97413%_))
               _%$e97433%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97411%_
                     'method:
                     _%id97424%_)))))
    (define write-style
      (lambda (_%we97408%_) (values (macro-writeenv-style _%we97408%_))))
    (define write-object
      (lambda (_%we97399%_ _%obj97400%_)
        (let ((_%$e97402%_ (__method-ref _%obj97400%_ ':wr)))
          (if _%$e97402%_
              ((lambda (_%method97405%_)
                 (_%method97405%_ _%obj97400%_ _%we97399%_))
               _%$e97402%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97399%_ _%obj97400%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97314%_)
        (letrec ((_%shadow-type-id97316%_
                  (lambda (_%type97397%_)
                    (let ((__tmp102652
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97397%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102652 '"::t"))))
                 (_%shadow-type-name97317%_
                  (lambda (_%type97395%_)
                    (let () (declare (not safe)) (##type-name _%type97395%_))))
                 (_%make-shadow-class97318%_
                  (lambda (_%type97387%_ _%precedence-list97388%_)
                    (let* ((_%super97390%_
                            (if (pair? _%precedence-list97388%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97388%_))
                                      '())
                                '()))
                           (_%klass97392%_
                            (make-class-type
                             (_%shadow-type-id97316%_ _%type97387%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97387%_))
                             _%super97390%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97387%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102653
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97387%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102653
                         _%klass97392%_))
                      _%klass97392%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97322%_ ()
              (if (let ((__tmp102654
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102654 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97322%_)))))
          (let ((_%$e97326%_
                 (let ((__tmp102655
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97314%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102655 '#f))))
            (if _%$e97326%_
                ((lambda (_%klass97329%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97329%_)
                 _%$e97326%_)
                (let _%loop97332%_ ((_%super97334%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97314%_)))
                                    (_%hierarchy97335%_ '()))
                  (if (not _%super97334%_)
                      (let _%loop97338%_ ((_%rest97340%_ _%hierarchy97335%_)
                                          (_%precedence-list97341%_ '()))
                        (let* ((_%rest9734297350%_ _%rest97340%_)
                               (_%else9734497360%_
                                (lambda ()
                                  (let ((_%klass97358%_
                                         (_%make-shadow-class97318%_
                                          _%type97314%_
                                          _%precedence-list97341%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97358%_)))
                               (_%K9734697374%_
                                (lambda (_%rest97363%_ _%type97364%_)
                                  (let ((_%$e97366%_
                                         (let ((__tmp102656
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97364%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102656
                                            '#f))))
                                    (if _%$e97366%_
                                        ((lambda (_%klass97369%_)
                                           (_%loop97338%_
                                            _%rest97363%_
                                            (cons _%klass97369%_
                                                  _%precedence-list97341%_)))
                                         _%$e97366%_)
                                        (let ((_%klass97372%_
                                               (_%make-shadow-class97318%_
                                                _%type97364%_
                                                _%precedence-list97341%_)))
                                          (_%loop97338%_
                                           _%rest97363%_
                                           (cons _%klass97372%_
                                                 _%precedence-list97341%_))))))))
                          (if (pair? _%rest9734297350%_)
                              (let ((_%hd9734797377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9734297350%_)))
                                    (_%tl9734897379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9734297350%_))))
                                (let* ((_%type97382%_ _%hd9734797377%_)
                                       (_%rest97384%_ _%tl9734897379%_))
                                  (_%K9734697374%_
                                   _%rest97384%_
                                   _%type97382%_)))
                              (_%else9734497360%_))))
                      (_%loop97332%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97334%_))
                       (cons _%super97334%_ _%hierarchy97335%_)))))))))
    (define __type
      (let* ((_%tb97303%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97305%_ _%tb97303%_))
        (if (eq? '2 _%$e97305%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97305%_)
                (let ((_%flonum-self-tagging-tags97308%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97309%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97311%_ _%flonum-self-tagging-tags97308%_))
                    (if (eq? '0 _%$e97311%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97309%_ '2))
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
                        (if (eq? '1 _%$e97311%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97309%_ '2))
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
                            (if (eq? '2 _%$e97311%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97311%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97311%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97308%_))))))))
                (error '"unexpected tag width" _%tb97303%_)))))
    (define __class
      (let* ((_%len97256%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97258%_
              (let () (declare (not safe)) (##make-vector _%len97256%_ '#f))))
        (let _%loop97261%_ ((_%i97263%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97263%_ _%len97256%_))
              (let* ((_%t97265%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97263%_)))
                     (_%f97300%_
                      (if (eq? _%t97265%_ 'undefined)
                          (lambda (_%obj97268%_)
                            (error '"object type is undefined" _%obj97268%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97265%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97271%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97265%_))
                              (if (eq? _%t97265%_ 'subtyped)
                                  (lambda (_%obj97275%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97278%_
                                           (##subtype _%obj97275%_)))
                                      (if (##fx= _%st97278%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97281%_
                                                 (##structure-type
                                                  _%obj97275%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97281%_
                                                 'class)
                                                _%klass97281%_
                                                (__shadow-class
                                                 _%klass97281%_)))
                                          (if (##fx= _%st97278%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##vector-length
                                                          _%obj97275%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97284%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97278%_)))
                                                (if _%$e97284%_
                                                    (__system-class
                                                     _%$e97284%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97278%_
                                                           'object:
                                                           _%obj97275%_)))))))
                                  (if (eq? _%t97265%_ 'special)
                                      (lambda (_%obj97289%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97289%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97289%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97289%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97289%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97289%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97265%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97258%_ _%i97263%_ _%f97300%_))
                (_%loop97261%_
                 (let () (declare (not safe)) (##fx+ _%i97263%_ '1))))
              _%cv97258%_))))
    (define type-of
      (lambda (_%obj97252%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97252%_)))))
    (define class-of
      (lambda (_%obj97243%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97247%_ (##type _%obj97243%_))
                 (_%f97249%_ (##vector-ref __class _%t97247%_)))
            (_%f97249%_ _%obj97243%_)))))
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
      (lambda (_%id97237%_)
        (let ((_%$e97239%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97237%_ '#f))))
          (if _%$e97239%_
              _%$e97239%_
              (error '"unknown system class" _%id97237%_)))))
    (define __make-system-class
      (lambda (_%id97232%_ _%super97233%_)
        (let ((_%klass97235%_
               (make-class-type
                _%id97232%_
                _%id97232%_
                _%super97233%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97232%_ _%klass97235%_))
          _%klass97235%_)))))
