(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1742226230)
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
      (let ((_%flags101103%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101104%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101105%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags101103%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table101105%_
           _%properties101104%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots101079%_
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
             (_%slot-vector101081%_ (list->vector (cons '#f _%slots101079%_)))
             (_%slot-table101088%_
              (let ((_%slot-table101083%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp102546
                       (lambda (_%slot101085%_ _%field101086%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101083%_
                            _%slot101085%_
                            _%field101086%_))
                         (let ((__tmp102547
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot101085%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table101083%_
                            __tmp102547
                            _%field101086%_))))
                      (__tmp102544
                       (let ((__tmp102545
                              (let ()
                                (declare (not safe))
                                (##length _%slots101079%_))))
                         (declare (not safe))
                         (##iota __tmp102545 '1))))
                  (declare (not safe))
                  (##for-each __tmp102546 _%slots101079%_ __tmp102544))
                _%slot-table101083%_))
             (_%flags101090%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields101096%_
              (list->vector
               (let ((__tmp102548
                      (map (lambda (_%g101091101093%_)
                             (list _%g101091101093%_ '5 '#f))
                           (drop _%slots101079%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp102548))))
             (_%properties101098%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots101079%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t101100%_
              (let ((__tmp102549 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags101090%_
                 ##type-type
                 _%fields101096%_
                 __tmp102549
                 _%slot-vector101081%_
                 _%slot-table101088%_
                 _%properties101098%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t101100%_ _%t101100%_))
        _%t101100%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags101075%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties101076%_ '((direct-slots:) (system: . #t)))
            (_%slot-table101077%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp102550 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags101075%_
           '#f
           '#()
           __tmp102550
           '#(#f)
           _%slot-table101077%_
           _%properties101076%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj101073%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj101073%_ 'class))))
    (define class-type=?
      (lambda (_%x101048%_ _%y101049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x101048%_ 'class))
            (let ((_%x101053%_ _%x101048%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y101049%_ 'class))
                  (let ((_%y101063%_ _%y101049%_))
                    (__class-type=? _%x101053%_ _%y101063%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y101049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x101048%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x101027%_ _%y101028%_)
        (let* ((_%x101031%_ _%x101027%_) (_%y101039%_ _%y101028%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x101031%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y101039%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type101013%_)
        (if (let () (declare (not safe)) (##type? _%type101013%_))
            (let ((_%type101017%_ _%type101013%_))
              (__type-opaque? _%type101017%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type101013%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type101001%_)
        (let* ((_%type101004%_ _%type101001%_)
               (__tmp102551
                (let ((__tmp102552
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type101004%_))))
                  (declare (not safe))
                  (##fxand __tmp102552 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp102551 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type100987%_)
        (if (let () (declare (not safe)) (##type? _%type100987%_))
            (let ((_%type100991%_ _%type100987%_))
              (__type-extensible? _%type100991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type100987%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type100975%_)
        (let* ((_%type100978%_ _%type100975%_)
               (__tmp102553
                (let ((__tmp102554
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100978%_))))
                  (declare (not safe))
                  (##fxand __tmp102554 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102553 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type100961%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type100961%_ 'class))
            (let ((_%type100965%_ _%type100961%_))
              (__class-type-final? _%type100965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type100961%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type100949%_)
        (let* ((_%type100952%_ _%type100949%_)
               (__tmp102555
                (let ((__tmp102556
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type100952%_))))
                  (declare (not safe))
                  (##fxand __tmp102556 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp102555 '0))))
    (define class-type-struct?
      (lambda (_%klass100935%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100935%_ 'class))
            (let ((_%klass100939%_ _%klass100935%_))
              (__class-type-struct? _%klass100939%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass100935%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass100923%_)
        (let* ((_%klass100926%_ _%klass100923%_)
               (__tmp102557
                (let ((__tmp102558
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100926%_))))
                  (declare (not safe))
                  (##fxand __tmp102558 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp102557 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass100909%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100909%_ 'class))
            (let ((_%klass100913%_ _%klass100909%_))
              (__class-type-sealed? _%klass100913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass100909%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass100897%_)
        (let* ((_%klass100900%_ _%klass100897%_)
               (__tmp102559
                (let ((__tmp102560
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100900%_))))
                  (declare (not safe))
                  (##fxand __tmp102560 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp102559 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass100883%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100883%_ 'class))
            (let ((_%klass100887%_ _%klass100883%_))
              (__class-type-metaclass? _%klass100887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass100883%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass100871%_)
        (let* ((_%klass100874%_ _%klass100871%_)
               (__tmp102561
                (let ((__tmp102562
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100874%_))))
                  (declare (not safe))
                  (##fxand __tmp102562 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp102561 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass100857%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100857%_ 'class))
            (let ((_%klass100861%_ _%klass100857%_))
              (__class-type-system? _%klass100861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass100857%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass100845%_)
        (let* ((_%klass100848%_ _%klass100845%_)
               (__tmp102563
                (let ((__tmp102564
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass100848%_))))
                  (declare (not safe))
                  (##fxand __tmp102564 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp102563 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id100727%_
               _%type-name100728%_
               _%type-super100729%_
               _%precedence-list100730%_
               _%slot-vector100731%_
               _%properties100732%_
               _%constructor100733%_
               _%slot-table100734%_
               _%methods100735%_)
        (letrec ((_%make-props!100738%_
                  (lambda (_%key100814%_)
                    (letrec* ((_%ht100816%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!100817%_
                               (lambda (_%ht100838%_ _%slots100839%_)
                                 (for-each
                                  (lambda (_%g100840100842%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht100838%_
                                       _%g100840100842%_
                                       '#t)))
                                  _%slots100839%_)))
                              (_%put-alist!100818%_
                               (lambda (_%ht100827%_
                                        _%key100828%_
                                        _%alist100829%_)
                                 (let ((_%$e100831%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100828%_
                                           _%alist100829%_))))
                                   (if _%$e100831%_
                                       ((lambda (_%g100833100835%_)
                                          (_%put-slots!100817%_
                                           _%ht100827%_
                                           _%g100833100835%_))
                                        _%$e100831%_)
                                       '#!void)))))
                      (_%put-alist!100818%_
                       _%ht100816%_
                       _%key100814%_
                       _%properties100732%_)
                      (for-each
                       (lambda (_%mixin100820%_)
                         (let ((_%alist100822%_
                                (##structure-ref
                                 _%mixin100820%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist100822%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key100814%_
                                           _%alist100822%_))))
                               (_%put-slots!100817%_
                                _%ht100816%_
                                (class-type-slot-list _%mixin100820%_))
                               (_%put-alist!100818%_
                                _%ht100816%_
                                _%key100814%_
                                _%alist100822%_))))
                       _%precedence-list100730%_)
                      _%ht100816%_))))
          (let* ((_%transparent?100740%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties100732%_)))
                 (_%all-slots-printable?100745%_
                  (let ((_%$e100742%_ _%transparent?100740%_))
                    (if _%$e100742%_
                        _%$e100742%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties100732%_))))))
                 (_%printable100747%_
                  (if (not _%all-slots-printable?100745%_)
                      (_%make-props!100738%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?100752%_
                  (let ((_%$e100749%_ _%transparent?100740%_))
                    (if _%$e100749%_
                        _%$e100749%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties100732%_))))))
                 (_%equalable100754%_
                  (if (not _%all-slots-equalable?100752%_)
                      (_%make-props!100738%_ 'equal:)
                      '#f))
                 (_%first-new-field100756%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super100729%_ 'class))
                      (let ((__tmp102565
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super100729%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp102565))
                      '1))
                 (_%field-info-length100758%_
                  (let ((__tmp102566
                         (let ((__tmp102567
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector100731%_))))
                           (declare (not safe))
                           (##fx- __tmp102567 _%first-new-field100756%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp102566)))
                 (_%field-info100760%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length100758%_ '#f)))
                 (_%struct?100762%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties100732%_)))
                 (_%final?100764%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties100732%_)))
                 (_%metaclass100772%_
                  (let ((_%metaclass100765100767%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties100732%_))))
                    (if _%metaclass100765100767%_
                        (let ((_%metaclass100770%_ _%metaclass100765100767%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass100770%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id100727%_
                                     'metaclass:
                                     _%metaclass100770%_))
                          _%metaclass100770%_)
                        '#f)))
                 (_%system?100774%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties100732%_)))
                 (_%opaque?100782%_
                  (if (or _%transparent?100740%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties100732%_)))
                      '#f
                      (let ((_%$e100779%_ (not _%type-super100729%_)))
                        (if _%$e100779%_
                            _%$e100779%_
                            (__type-opaque? _%type-super100729%_)))))
                 (_%type-flags100784%_
                  (let ((__tmp102572
                         (if _%final?100764%_ '0 type-flag-extensible))
                        (__tmp102571
                         (if _%opaque?100782%_ type-flag-opaque '0))
                        (__tmp102570
                         (if _%struct?100762%_ class-type-flag-struct '0))
                        (__tmp102569
                         (if _%metaclass100772%_ class-type-flag-metaclass '0))
                        (__tmp102568
                         (if _%system?100774%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp102572
                             __tmp102571
                             __tmp102570
                             __tmp102569
                             __tmp102568)))
                 (_%precedence-list100792%_
                  (let ((_%$e100786%_ (memq t::t _%precedence-list100730%_)))
                    (if _%$e100786%_
                        ((lambda (_%tail100789%_)
                           (if (null? (cdr _%tail100789%_))
                               _%precedence-list100730%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list100730%_)))
                         _%$e100786%_)
                        (let ((__tmp102573 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list100730%_ __tmp102573))))))
            (let _%loop100795%_ ((_%i100797%_ _%first-new-field100756%_)
                                 (_%j100798%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j100798%_ _%field-info-length100758%_))
                  (let* ((_%slot100800%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector100731%_ _%i100797%_)))
                         (_%flags100808%_
                          (if _%transparent?100740%_
                              '0
                              (let ((__tmp102575
                                     (if (or _%all-slots-printable?100745%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable100747%_
                                                _%slot100800%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp102574
                                     (if (or _%all-slots-equalable?100752%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable100754%_
                                                _%slot100800%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp102575 __tmp102574)))))
                    (vector-set!
                     _%field-info100760%_
                     _%j100798%_
                     _%slot100800%_)
                    (vector-set!
                     _%field-info100760%_
                     (let () (declare (not safe)) (##fx+ _%j100798%_ '1))
                     _%flags100808%_)
                    (_%loop100795%_
                     (let () (declare (not safe)) (##fx+ _%i100797%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j100798%_ '3))))
                  '#!void))
            (if _%metaclass100772%_
                (let ((_%val100811%_
                       (make-instance
                        _%metaclass100772%_
                        _%type-id100727%_
                        _%type-name100728%_
                        _%type-flags100784%_
                        _%type-super100729%_
                        _%field-info100760%_
                        _%precedence-list100792%_
                        _%slot-vector100731%_
                        _%slot-table100734%_
                        _%properties100732%_
                        _%constructor100733%_
                        _%methods100735%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val100811%_ 'class))
                      _%val100811%_
                      (error '"bad cast" class::t _%val100811%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id100727%_
                   _%type-name100728%_
                   _%type-flags100784%_
                   _%type-super100729%_
                   _%field-info100760%_
                   _%precedence-list100792%_
                   _%slot-vector100731%_
                   _%slot-table100734%_
                   _%properties100732%_
                   _%constructor100733%_
                   _%methods100735%_)))))))
    (define class-type-id
      (lambda (_%klass100725%_)
        (##structure-ref _%klass100725%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass100723%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100723%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass100720%_ _%val100721%_)
        (##structure-set! _%klass100720%_ _%val100721%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass100715%_ _%val100717%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100715%_
           _%val100717%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass100713%_)
        (##structure-ref _%klass100713%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass100711%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100711%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass100708%_ _%val100709%_)
        (##structure-set! _%klass100708%_ _%val100709%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass100703%_ _%val100705%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100703%_
           _%val100705%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass100701%_)
        (##structure-ref _%klass100701%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass100699%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100699%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass100696%_ _%val100697%_)
        (##structure-set! _%klass100696%_ _%val100697%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass100691%_ _%val100693%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100691%_
           _%val100693%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass100689%_)
        (##structure-ref _%klass100689%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass100687%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100687%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass100684%_ _%val100685%_)
        (##structure-set! _%klass100684%_ _%val100685%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass100679%_ _%val100681%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100679%_
           _%val100681%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass100677%_)
        (##structure-ref _%klass100677%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass100675%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100675%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass100672%_ _%val100673%_)
        (##structure-set! _%klass100672%_ _%val100673%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass100667%_ _%val100669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100667%_
           _%val100669%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass100665%_)
        (##structure-ref _%klass100665%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass100663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100663%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass100660%_ _%val100661%_)
        (##structure-set!
         _%klass100660%_
         _%val100661%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass100655%_ _%val100657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100655%_
           _%val100657%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass100653%_)
        (##structure-ref _%klass100653%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass100651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100651%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass100648%_ _%val100649%_)
        (##structure-set!
         _%klass100648%_
         _%val100649%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass100643%_ _%val100645%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100643%_
           _%val100645%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass100641%_)
        (##structure-ref _%klass100641%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass100639%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100639%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass100636%_ _%val100637%_)
        (##structure-set!
         _%klass100636%_
         _%val100637%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass100631%_ _%val100633%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100631%_
           _%val100633%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass100629%_)
        (##structure-ref _%klass100629%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass100627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100627%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass100624%_ _%val100625%_)
        (##structure-set!
         _%klass100624%_
         _%val100625%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass100619%_ _%val100621%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100619%_
           _%val100621%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass100617%_)
        (##structure-ref _%klass100617%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass100615%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass100615%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass100612%_ _%val100613%_)
        (##structure-set!
         _%klass100612%_
         _%val100613%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass100607%_ _%val100609%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100607%_
           _%val100609%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass100605%_)
        (##structure-ref _%klass100605%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass100603%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass100603%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass100600%_ _%val100601%_)
        (##structure-set!
         _%klass100600%_
         _%val100601%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass100595%_ _%val100597%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass100595%_
           _%val100597%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass100581%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100581%_ 'class))
            (let ((_%klass100585%_ _%klass100581%_))
              (__class-type-slot-list _%klass100585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass100581%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass100569%_)
        (let ((_%klass100572%_ _%klass100569%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100572%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass100555%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100555%_ 'class))
            (let ((_%klass100559%_ _%klass100555%_))
              (__class-type-field-count _%klass100559%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass100555%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass100543%_)
        (let* ((_%klass100546%_ _%klass100543%_)
               (__tmp102576
                (let ((__tmp102577
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass100546%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp102577))))
          (declare (not safe))
          (##fx- __tmp102576 '1))))
    (define class-type-seal!
      (lambda (_%klass100529%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100529%_ 'class))
            (let ((_%klass100533%_ _%klass100529%_))
              (__class-type-seal! _%klass100533%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass100529%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass100517%_)
        (let ((_%klass100520%_ _%klass100517%_))
          (let ((__tmp102578
                 (let ((__tmp102579
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass100520%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp102579))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass100520%_
             __tmp102578
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct100492%_ _%maybe-super-struct100493%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct100492%_ 'class))
            (let ((_%maybe-sub-struct100497%_ _%maybe-sub-struct100492%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct100493%_
                     'class))
                  (let ((_%maybe-super-struct100507%_
                         _%maybe-super-struct100493%_))
                    (__substruct?
                     _%maybe-sub-struct100497%_
                     _%maybe-super-struct100507%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct100493%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct100492%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct100461%_ _%maybe-super-struct100462%_)
        (let* ((_%maybe-sub-struct100465%_ _%maybe-sub-struct100461%_)
               (_%maybe-super-struct100473%_ _%maybe-super-struct100462%_)
               (_%maybe-super-struct-id100482%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct100473%_))))
          (let _%lp100484%_ ((_%super-struct100486%_
                              _%maybe-sub-struct100465%_))
            (if (not _%super-struct100486%_)
                '#f
                (if (eq? _%maybe-super-struct-id100482%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct100486%_)))
                    '#t
                    (_%lp100484%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct100486%_)))))))))
    (define base-struct/1
      (lambda (_%klass100456%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100456%_ 'class))
            (if (__class-type-struct? _%klass100456%_)
                _%klass100456%_
                (let () (declare (not safe)) (##type-super _%klass100456%_)))
            (if (not _%klass100456%_)
                '#f
                (error '"not a class or false" _%klass100456%_)))))
    (define base-struct/2
      (lambda (_%klass1100441%_ _%klass2100442%_)
        (let ((_%s1100444%_ (base-struct/1 _%klass1100441%_))
              (_%s2100445%_ (base-struct/1 _%klass2100442%_)))
          (if (or (not _%s1100444%_)
                  (and _%s2100445%_ (substruct? _%s1100444%_ _%s2100445%_)))
              _%s2100445%_
              (if (or (not _%s2100445%_)
                      (and _%s1100444%_
                           (substruct? _%s2100445%_ _%s1100444%_)))
                  _%s1100444%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1100441%_
                         _%klass2100442%_
                         _%s1100444%_
                         _%s2100445%_))))))
    (define base-struct/list
      (lambda (_%all-supers100325%_)
        (let* ((_%all-supers100326100351%_ _%all-supers100325%_)
               (_%E100331100355%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers100326100351%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K100349100438%_ (lambda () '#f))
                (_%K100346100424%_
                 (lambda (_%x100422%_) (base-struct/1 _%x100422%_)))
                (_%K100341100401%_
                 (lambda (_%y100398%_ _%x100399%_)
                   (base-struct/2 _%x100399%_ _%y100398%_)))
                (_%K100332100362%_
                 (lambda (_%y100359%_ _%x100360%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x100360%_ _%y100359%_)))))
            (let* ((_%__match102538102539%_
                    (lambda (_%hd100333100365%_ _%tl100334100367%_)
                      (let ((_%x100370%_ _%hd100333100365%_))
                        (letrec ((_%splice-rest100336100372%_
                                  (lambda (_%rest100340100379%_ _%y100381%_)
                                    (if (null? _%rest100340100379%_)
                                        (_%K100332100362%_
                                         _%y100381%_
                                         _%x100370%_)
                                        (_%E100331100355%_))))
                                 (_%splice-try100338100374%_
                                  (lambda (_%hd100339100383%_
                                           _%rest100340100385%_
                                           _%y100335100386%_)
                                    (let ((_%y100389%_ _%hd100339100383%_))
                                      (_%splice-loop100337100376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest100340100385%_))
                                       (cons _%y100389%_ _%y100335100386%_)))))
                                 (_%splice-loop100337100376%_
                                  (lambda (_%rest100340100391%_
                                           _%y100335100392%_)
                                    (if (pair? _%rest100340100391%_)
                                        (_%splice-try100338100374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest100340100391%_))
                                         _%rest100340100391%_
                                         _%y100335100392%_)
                                        (_%splice-rest100336100372%_
                                         _%rest100340100391%_
                                         (reverse _%y100335100392%_))))))
                          (_%splice-loop100337100376%_
                           _%tl100334100367%_
                           '())))))
                   (_%try-match100328100434%_
                    (lambda ()
                      (if (pair? _%all-supers100326100351%_)
                          (let ((_%tl100348100429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers100326100351%_)))
                                (_%hd100347100427%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers100326100351%_))))
                            (if (null? _%tl100348100429%_)
                                (let ((_%x100432%_ _%hd100347100427%_))
                                  (base-struct/1 _%x100432%_))
                                (if (pair? _%tl100348100429%_)
                                    (let ((_%tl100345100413%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl100348100429%_)))
                                          (_%hd100344100411%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl100348100429%_))))
                                      (if (null? _%tl100345100413%_)
                                          (let ((_%x100409%_
                                                 _%hd100347100427%_)
                                                (_%y100416%_
                                                 _%hd100344100411%_))
                                            (_%K100341100401%_
                                             _%y100416%_
                                             _%x100409%_))
                                          (_%__match102538102539%_
                                           _%hd100347100427%_
                                           _%tl100348100429%_)))
                                    (_%__match102538102539%_
                                     _%hd100347100427%_
                                     _%tl100348100429%_))))
                          (_%E100331100355%_)))))
              (if (null? _%all-supers100326100351%_)
                  (_%K100349100438%_)
                  (_%try-match100328100434%_)))))))
    (define base-struct
      (lambda _%all-supers100323%_ (base-struct/list _%all-supers100323%_)))
    (define find-super-constructor
      (lambda (_%super100274%_)
        (let _%lp100276%_ ((_%rest100278%_ _%super100274%_)
                           (_%constructor100279%_ '#f))
          (let* ((_%rest100280100288%_ _%rest100278%_)
                 (_%else100282100296%_ (lambda () _%constructor100279%_))
                 (_%K100284100311%_
                  (lambda (_%rest100299%_ _%hd100300%_)
                    (let ((_%$e100302%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd100300%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e100302%_
                          ((lambda (_%xconstructor100305%_)
                             (if (or (not _%constructor100279%_)
                                     (eq? _%constructor100279%_
                                          _%xconstructor100305%_))
                                 (_%lp100276%_
                                  _%rest100299%_
                                  _%xconstructor100305%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor100279%_
                                        _%xconstructor100305%_)))
                           _%$e100302%_)
                          (_%lp100276%_
                           _%rest100299%_
                           _%constructor100279%_))))))
            (if (pair? _%rest100280100288%_)
                (let ((_%hd100285100314%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest100280100288%_)))
                      (_%tl100286100316%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest100280100288%_))))
                  (let* ((_%hd100319%_ _%hd100285100314%_)
                         (_%rest100321%_ _%tl100286100316%_))
                    (_%K100284100311%_ _%rest100321%_ _%hd100319%_)))
                (_%else100282100296%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list100250%_ _%direct-slots100251%_)
        (let* ((_%next-slot100253%_ '1)
               (_%slot-table100255%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots100257%_ '(__class))
               (_%process-slot100261%_
                (lambda (_%slot100259%_)
                  (if (symbol? _%slot100259%_)
                      '#!void
                      (error '"invalid slot name" _%slot100259%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table100255%_
                              _%slot100259%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100255%_
                           _%slot100259%_
                           _%next-slot100253%_))
                        (let ((__tmp102580
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot100259%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table100255%_
                           __tmp102580
                           _%next-slot100253%_))
                        (set! _%r-slots100257%_
                              (cons _%slot100259%_ _%r-slots100257%_))
                        (set! _%next-slot100253%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot100253%_ '1))))
                      '#!void)))
               (_%process-slots100267%_
                (lambda (_%g100262100264%_)
                  (for-each _%process-slot100261%_ _%g100262100264%_))))
          (let ((__tmp102582
                 (lambda (_%mixin100270%_)
                   (_%process-slots100267%_
                    (let ((__tmp102583
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin100270%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp102583 '())))))
                (__tmp102581 (reverse _%class-precedence-list100250%_)))
            (declare (not safe))
            (##for-each __tmp102582 __tmp102581))
          (_%process-slots100267%_ _%direct-slots100251%_)
          (let ((_%slot-vector100272%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots100257%_)))))
            (values _%slot-vector100272%_ _%slot-table100255%_)))))
    (define make-class-type
      (lambda (_%id100175%_
               _%name100176%_
               _%direct-supers100177%_
               _%direct-slots100178%_
               _%properties100179%_
               _%constructor100180%_)
        (if (symbol? _%id100175%_)
            (let ((_%id100184%_ _%id100175%_))
              (if (symbol? _%name100176%_)
                  (let ((_%name100194%_ _%name100176%_))
                    (if (list? _%direct-supers100177%_)
                        (let ((_%direct-supers100204%_
                               _%direct-supers100177%_))
                          (if (list? _%direct-slots100178%_)
                              (let ((_%direct-slots100214%_
                                     _%direct-slots100178%_))
                                (if (list? _%properties100179%_)
                                    (let ((_%properties100224%_
                                           _%properties100179%_))
                                      (if ((lambda (_%$obj100233%_)
                                             (or (not _%$obj100233%_)
                                                 (symbol? _%$obj100233%_)))
                                           _%constructor100180%_)
                                          (let ((_%constructor100240%_
                                                 _%constructor100180%_))
                                            (__make-class-type
                                             _%id100184%_
                                             _%name100194%_
                                             _%direct-supers100204%_
                                             _%direct-slots100214%_
                                             _%properties100224%_
                                             _%constructor100240%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor100180%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties100179%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots100178%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers100177%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name100176%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id100175%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id100044%_
               _%name100045%_
               _%direct-supers100046%_
               _%direct-slots100047%_
               _%properties100048%_
               _%constructor100049%_)
        (let* ((_%id100052%_ _%id100044%_)
               (_%name100060%_ _%name100045%_)
               (_%direct-supers100068%_ _%direct-supers100046%_)
               (_%direct-slots100076%_ _%direct-slots100047%_)
               (_%properties100084%_ _%properties100048%_)
               (_%constructor100092%_ _%constructor100049%_))
          (let ((_%$e100104%_
                 (let ((__tmp102584
                        (lambda (_%$obj100101%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj100101%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp102584 _%direct-supers100068%_))))
            (if _%$e100104%_
                ((lambda (_%g100106100108%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g100106100108%_))
                 _%$e100104%_)
                (let ((_%$e100111%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers100068%_))))
                  (if _%$e100111%_
                      ((lambda (_%g100113100115%_)
                         (error '"Cannot extend final class"
                                _%g100113100115%_))
                       _%$e100111%_)
                      '#!void))))
          (let ((_g102585_ (compute-precedence-list _%direct-supers100068%_)))
            (begin
              (let ((_g102586_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g102585_)
                           (##values-length _g102585_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g102586_ 2)))
                    (error "Context expects 2 values" _g102586_)))
              (let ((_%precedence-list100118%_
                     (let () (declare (not safe)) (##values-ref _g102585_ 0)))
                    (_%struct-super100119%_
                     (let () (declare (not safe)) (##values-ref _g102585_ 1))))
                (let ((_g102587_
                       (compute-class-slots
                        _%precedence-list100118%_
                        _%direct-slots100076%_)))
                  (begin
                    (let ((_g102588_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g102587_)
                                 (##values-length _g102587_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g102588_ 2)))
                          (error "Context expects 2 values" _g102588_)))
                    (let ((_%slot-vector100121%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102587_ 0)))
                          (_%slot-table100122%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g102587_ 1))))
                      (let* ((_%properties100124%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots100076%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers100068%_)
                                          _%properties100084%_)))
                             (_%constructor*100129%_
                              (let ((_%$e100126%_ _%constructor100092%_))
                                (if _%$e100126%_
                                    _%$e100126%_
                                    (find-super-constructor
                                     _%direct-supers100068%_))))
                             (_%precedence-list100172%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties100124%_))
                                      (memq object::t
                                            _%precedence-list100118%_))
                                  _%precedence-list100118%_
                                  (let _%loop100134%_ ((_%tail100136%_
                                                        _%precedence-list100118%_)
                                                       (_%head100137%_ '()))
                                    (let* ((_%tail100138100146%_
                                            _%tail100136%_)
                                           (_%else100140100154%_
                                            (lambda ()
                                              (let ((__tmp102589
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp102589
                                                 _%head100137%_))))
                                           (_%K100142100160%_
                                            (lambda (_%rest100157%_
                                                     _%hd100158%_)
                                              (if (eq? _%hd100158%_ t::t)
                                                  (let ((__tmp102590
                                                         (cons object::t
                                                               _%tail100136%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp102590
                                                     _%head100137%_))
                                                  (_%loop100134%_
                                                   _%rest100157%_
                                                   (cons _%hd100158%_
                                                         _%head100137%_))))))
                                      (if (pair? _%tail100138100146%_)
                                          (let ((_%hd100143100163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail100138100146%_)))
                                                (_%tl100144100165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail100138100146%_))))
                                            (let* ((_%hd100168%_
                                                    _%hd100143100163%_)
                                                   (_%rest100170%_
                                                    _%tl100144100165%_))
                                              (_%K100142100160%_
                                               _%rest100170%_
                                               _%hd100168%_)))
                                          (_%else100140100154%_)))))))
                        (make-class-type-descriptor
                         _%id100052%_
                         _%name100060%_
                         _%struct-super100119%_
                         _%precedence-list100172%_
                         _%slot-vector100121%_
                         _%properties100124%_
                         _%constructor*100129%_
                         _%slot-table100122%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass100030%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100030%_ 'class))
            (let ((_%klass100034%_ _%klass100030%_))
              (__class-precedence-list _%klass100034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass100030%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass100018%_)
        (let ((_%klass100021%_ _%klass100018%_))
          (cons _%klass100021%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass100021%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers100015%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers100015%_))))
    (define make-class-predicate
      (lambda (_%klass100001%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100001%_ 'class))
            (let ((_%klass100005%_ _%klass100001%_))
              (__make-class-predicate _%klass100005%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass100001%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass99972%_)
        (let* ((_%klass99975%_ _%klass99972%_)
               (_%tid99984%_
                (let () (declare (not safe)) (##type-id _%klass99975%_))))
          (if (__class-type-final? _%klass99975%_)
              (lambda (_%g9998699988%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9998699988%_
                   _%tid99984%_)))
              (if (__class-type-struct? _%klass99975%_)
                  (lambda (_%g9999199993%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9999199993%_ _%tid99984%_)))
                  (lambda (_%g9999699998%_)
                    (__class-instance? _%klass99975%_ _%g9999699998%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass99947%_ _%slot99948%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99947%_ 'class))
            (let ((_%klass99952%_ _%klass99947%_))
              (if (symbol? _%slot99948%_)
                  (let ((_%slot99962%_ _%slot99948%_))
                    (__make-class-slot-accessor _%klass99952%_ _%slot99962%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99948%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass99947%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass99915%_ _%slot99916%_)
        (let* ((_%klass99919%_ _%klass99915%_)
               (_%slot99927%_ _%slot99916%_)
               (_%field99936%_
                (let ((__tmp102591
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99919%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102591 _%slot99927%_ '#f))))
          (if (not _%field99936%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99919%_
                       'slot:
                       _%slot99927%_)
                '#!void)
              (if (__class-type-final? _%klass99919%_)
                  (make-final-slot-accessor
                   _%klass99919%_
                   _%slot99927%_
                   _%field99936%_)
                  (if (__class-type-struct? _%klass99919%_)
                      (make-struct-slot-accessor
                       _%klass99919%_
                       _%slot99927%_
                       _%field99936%_)
                      (if (let ((_%strukt99942%_
                                 (base-struct/1 _%klass99919%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99942%_
                                    'class))
                                 (let ((__tmp102592
                                        (let ((__tmp102593
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99942%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102593))))
                                   (declare (not safe))
                                   (##fx< _%field99936%_ __tmp102592))))
                          (make-struct-subclass-slot-accessor
                           _%klass99919%_
                           _%slot99927%_
                           _%field99936%_)
                          (make-class-cached-slot-accessor
                           _%klass99919%_
                           _%slot99927%_
                           _%field99936%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass99890%_ _%slot99891%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99890%_ 'class))
            (let ((_%klass99895%_ _%klass99890%_))
              (if (symbol? _%slot99891%_)
                  (let ((_%slot99905%_ _%slot99891%_))
                    (__make-class-slot-mutator _%klass99895%_ _%slot99905%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99891%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass99890%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass99858%_ _%slot99859%_)
        (let* ((_%klass99862%_ _%klass99858%_)
               (_%slot99870%_ _%slot99859%_)
               (_%field99879%_
                (let ((__tmp102594
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99862%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102594 _%slot99870%_ '#f))))
          (if (not _%field99879%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99862%_
                       'slot:
                       _%slot99870%_)
                '#!void)
              (if (__class-type-final? _%klass99862%_)
                  (make-final-slot-mutator
                   _%klass99862%_
                   _%slot99870%_
                   _%field99879%_)
                  (if (__class-type-struct? _%klass99862%_)
                      (make-struct-slot-mutator
                       _%klass99862%_
                       _%slot99870%_
                       _%field99879%_)
                      (if (let ((_%strukt99885%_
                                 (base-struct/1 _%klass99862%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99885%_
                                    'class))
                                 (let ((__tmp102595
                                        (let ((__tmp102596
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99885%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102596))))
                                   (declare (not safe))
                                   (##fx< _%field99879%_ __tmp102595))))
                          (make-struct-subclass-slot-mutator
                           _%klass99862%_
                           _%slot99870%_
                           _%field99879%_)
                          (make-class-cached-slot-mutator
                           _%klass99862%_
                           _%slot99870%_
                           _%field99879%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass99833%_ _%slot99834%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99833%_ 'class))
            (let ((_%klass99838%_ _%klass99833%_))
              (if (symbol? _%slot99834%_)
                  (let ((_%slot99848%_ _%slot99834%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass99838%_
                     _%slot99848%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99834%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass99833%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass99801%_ _%slot99802%_)
        (let* ((_%klass99805%_ _%klass99801%_)
               (_%slot99813%_ _%slot99802%_)
               (_%field99822%_
                (let ((__tmp102597
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99805%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102597 _%slot99813%_ '#f))))
          (if (not _%field99822%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99805%_
                       'slot:
                       _%slot99813%_)
                '#!void)
              (if (__class-type-final? _%klass99805%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass99805%_
                   _%slot99813%_
                   _%field99822%_)
                  (if (__class-type-struct? _%klass99805%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass99805%_
                       _%slot99813%_
                       _%field99822%_)
                      (if (let ((_%strukt99828%_
                                 (base-struct/1 _%klass99805%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99828%_
                                    'class))
                                 (let ((__tmp102598
                                        (let ((__tmp102599
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99828%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102599))))
                                   (declare (not safe))
                                   (##fx< _%field99822%_ __tmp102598))))
                          (make-struct-slot-unchecked-accessor
                           _%klass99805%_
                           _%slot99813%_
                           _%field99822%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass99805%_
                           _%slot99813%_
                           _%field99822%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass99776%_ _%slot99777%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99776%_ 'class))
            (let ((_%klass99781%_ _%klass99776%_))
              (if (symbol? _%slot99777%_)
                  (let ((_%slot99791%_ _%slot99777%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass99781%_
                     _%slot99791%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot99777%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass99776%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass99744%_ _%slot99745%_)
        (let* ((_%klass99748%_ _%klass99744%_)
               (_%slot99756%_ _%slot99745%_)
               (_%field99765%_
                (let ((__tmp102600
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99748%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp102600 _%slot99756%_ '#f))))
          (if (not _%field99765%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass99748%_
                       'slot:
                       _%slot99756%_)
                '#!void)
              (if (__class-type-final? _%klass99748%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass99748%_
                   _%slot99756%_
                   _%field99765%_)
                  (if (__class-type-struct? _%klass99748%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass99748%_
                       _%slot99756%_
                       _%field99765%_)
                      (if (let ((_%strukt99771%_
                                 (base-struct/1 _%klass99748%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt99771%_
                                    'class))
                                 (let ((__tmp102601
                                        (let ((__tmp102602
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt99771%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp102602))))
                                   (declare (not safe))
                                   (##fx< _%field99765%_ __tmp102601))))
                          (make-struct-slot-unchecked-mutator
                           _%klass99748%_
                           _%slot99756%_
                           _%field99765%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass99748%_
                           _%slot99756%_
                           _%field99765%_))))))))
    (define not-an-instance__%
      (lambda (_%object99728%_ _%class99729%_ _%slot99730%_)
        (apply error
               '"not an instance"
               'object:
               _%object99728%_
               'class:
               _%class99729%_
               (if _%slot99730%_ (cons 'slot: (cons _%slot99730%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object99735%_ _%class99736%_)
        (let ((_%slot99738%_ '#f))
          (not-an-instance__% _%object99735%_ _%class99736%_ _%slot99738%_))))
    (define not-an-instance
      (lambda _g102604_
        (let ((_g102603_ (let () (declare (not safe)) (##length _g102604_))))
          (cond ((let () (declare (not safe)) (##fx= _g102603_ 2))
                 (apply not-an-instance__0 _g102604_))
                ((let () (declare (not safe)) (##fx= _g102603_ 3))
                 (apply not-an-instance__% _g102604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g102604_))))))
    (define make-final-slot-accessor
      (lambda (_%klass99721%_ _%slot99722%_ _%field99723%_)
        (lambda (_%obj99725%_)
          (##direct-structure-ref
           _%obj99725%_
           _%field99723%_
           _%klass99721%_
           _%slot99722%_))))
    (define make-final-slot-mutator
      (lambda (_%klass99714%_ _%slot99715%_ _%field99716%_)
        (lambda (_%obj99718%_ _%val99719%_)
          (##direct-structure-set!
           _%obj99718%_
           _%val99719%_
           _%field99716%_
           _%klass99714%_
           _%slot99715%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass99708%_ _%slot99709%_ _%field99710%_)
        (lambda (_%obj99712%_)
          (##structure-ref
           _%obj99712%_
           _%field99710%_
           _%klass99708%_
           _%slot99709%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass99701%_ _%slot99702%_ _%field99703%_)
        (lambda (_%obj99705%_ _%val99706%_)
          (##structure-set!
           _%obj99705%_
           _%val99706%_
           _%field99703%_
           _%klass99701%_
           _%slot99702%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass99695%_ _%slot99696%_ _%field99697%_)
        (lambda (_%obj99699%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj99699%_
             _%field99697%_
             _%klass99695%_
             _%slot99696%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass99688%_ _%slot99689%_ _%field99690%_)
        (lambda (_%obj99692%_ _%val99693%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj99692%_
             _%val99693%_
             _%field99690%_
             _%klass99688%_
             _%slot99689%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass99682%_ _%slot99683%_ _%field99684%_)
        (lambda (_%obj99686%_)
          (if (class-instance? _%klass99682%_ _%obj99686%_)
              (unchecked-slot-ref _%obj99686%_ _%field99684%_)
              (not-an-instance__%
               _%obj99686%_
               _%klass99682%_
               _%slot99683%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass99675%_ _%slot99676%_ _%field99677%_)
        (lambda (_%obj99679%_ _%val99680%_)
          (if (class-instance? _%klass99675%_ _%obj99679%_)
              (unchecked-field-set! _%obj99679%_ _%field99677%_ _%val99680%_)
              (not-an-instance__%
               _%obj99679%_
               _%klass99675%_
               _%slot99676%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass99666%_ _%slot99667%_ _%field99668%_)
        (lambda (_%obj99670%_)
          (if (let ((__tmp102605
                     (let () (declare (not safe)) (##type-id _%klass99666%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99670%_ __tmp102605))
              (unchecked-field-ref _%obj99670%_ _%field99668%_)
              (if (class-instance? _%klass99666%_ _%obj99670%_)
                  (unchecked-slot-ref _%obj99670%_ _%slot99667%_)
                  (not-an-instance__%
                   _%obj99670%_
                   _%klass99666%_
                   _%slot99667%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass99656%_ _%slot99657%_ _%field99658%_)
        (lambda (_%obj99660%_ _%val99661%_)
          (if (let ((__tmp102606
                     (let () (declare (not safe)) (##type-id _%klass99656%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99660%_ __tmp102606))
              (unchecked-field-set! _%obj99660%_ _%field99658%_ _%val99661%_)
              (if (class-instance? _%klass99656%_ _%obj99660%_)
                  (unchecked-slot-set! _%obj99660%_ _%slot99657%_ _%val99661%_)
                  (not-an-instance__%
                   _%obj99660%_
                   _%klass99656%_
                   _%slot99657%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass99650%_ _%slot99651%_ _%field99652%_)
        (lambda (_%obj99654%_)
          (if (let ((__tmp102607
                     (let () (declare (not safe)) (##type-id _%klass99650%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99654%_ __tmp102607))
              (unchecked-field-ref _%obj99654%_ _%field99652%_)
              (unchecked-slot-ref _%obj99654%_ _%slot99651%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass99643%_ _%slot99644%_ _%field99645%_)
        (lambda (_%obj99647%_ _%val99648%_)
          (if (let ((__tmp102608
                     (let () (declare (not safe)) (##type-id _%klass99643%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj99647%_ __tmp102608))
              (unchecked-field-set! _%obj99647%_ _%field99645%_ _%val99648%_)
              (unchecked-slot-set! _%obj99647%_ _%slot99644%_ _%val99648%_)))))
    (define class-slot-offset
      (lambda (_%klass99618%_ _%slot99619%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99618%_ 'class))
            (let ((_%klass99623%_ _%klass99618%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99619%_))
                  (let ((_%slot99633%_ _%slot99619%_))
                    (__class-slot-offset _%klass99623%_ _%slot99633%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99619%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass99618%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass99597%_ _%slot99598%_)
        (let* ((_%klass99601%_ _%klass99597%_)
               (_%slot99609%_ _%slot99598%_)
               (__tmp102609
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99601%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp102609 _%slot99609%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass99571%_ _%obj99572%_ _%slot99573%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99571%_ 'class))
            (let ((_%klass99577%_ _%klass99571%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99573%_))
                  (let ((_%slot99587%_ _%slot99573%_))
                    (__class-slot-ref
                     _%klass99577%_
                     _%obj99572%_
                     _%slot99587%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99573%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass99571%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass99547%_ _%obj99548%_ _%slot99549%_)
        (let* ((_%klass99552%_ _%klass99547%_) (_%slot99560%_ _%slot99549%_))
          (if (__class-instance? _%klass99552%_ _%obj99548%_)
              (let ((_%off99569%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99548%_))
                      _%slot99560%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj99548%_
                 _%off99569%_
                 _%klass99552%_
                 _%slot99560%_))
              (not-an-instance__0 _%obj99548%_ _%klass99552%_)))))
    (define class-slot-set!
      (lambda (_%klass99520%_ _%obj99521%_ _%slot99522%_ _%val99523%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99520%_ 'class))
            (let ((_%klass99527%_ _%klass99520%_))
              (if (let () (declare (not safe)) (symbolic? _%slot99522%_))
                  (let ((_%slot99537%_ _%slot99522%_))
                    (__class-slot-set!
                     _%klass99527%_
                     _%obj99521%_
                     _%slot99537%_
                     _%val99523%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot99522%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass99520%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass99495%_ _%obj99496%_ _%slot99497%_ _%val99498%_)
        (let* ((_%klass99501%_ _%klass99495%_) (_%slot99509%_ _%slot99497%_))
          (if (__class-instance? _%klass99501%_ _%obj99496%_)
              (let ((_%off99518%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj99496%_))
                      _%slot99509%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj99496%_
                 _%val99498%_
                 _%off99518%_
                 _%klass99501%_
                 _%slot99509%_))
              (not-an-instance__0 _%obj99496%_ _%klass99501%_)))))
    (define unchecked-field-ref
      (lambda (_%obj99492%_ _%off99493%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj99492%_ _%off99493%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj99488%_ _%off99489%_ _%val99490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj99488%_
           _%val99490%_
           _%off99489%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj99485%_ _%slot99486%_)
        (unchecked-field-ref
         _%obj99485%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99485%_))
          _%slot99486%_))))
    (define unchecked-slot-set!
      (lambda (_%obj99481%_ _%slot99482%_ _%val99483%_)
        (unchecked-field-set!
         _%obj99481%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj99481%_))
          _%slot99482%_)
         _%val99483%_)))
    (define slot-ref__%
      (lambda (_%obj99443%_ _%slot99444%_ _%E99445%_)
        (if (symbol? _%slot99444%_)
            (let ((_%slot99449%_ _%slot99444%_))
              (if (procedure? _%E99445%_)
                  (let ((_%E99459%_ _%E99445%_))
                    (__slot-ref__% _%obj99443%_ _%slot99449%_ _%E99459%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E99445%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot99444%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj99472%_ _%slot99473%_)
        (let ((_%E99475%_ __slot-error))
          (slot-ref__% _%obj99472%_ _%slot99473%_ _%E99475%_))))
    (define slot-ref
      (lambda _g102611_
        (let ((_g102610_ (let () (declare (not safe)) (##length _g102611_))))
          (cond ((let () (declare (not safe)) (##fx= _g102610_ 2))
                 (apply slot-ref__0 _g102611_))
                ((let () (declare (not safe)) (##fx= _g102610_ 3))
                 (apply slot-ref__% _g102611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g102611_))))))
    (define __slot-ref__%
      (lambda (_%obj99399%_ _%slot99400%_ _%E99401%_)
        (let* ((_%slot99404%_ _%slot99400%_)
               (_%E99412%_ _%E99401%_)
               (_%klass99421%_ (class-of _%obj99399%_))
               (_%$e99424%_
                (__class-slot-offset _%klass99421%_ _%slot99404%_)))
          (if _%$e99424%_
              ((lambda (_%off99427%_)
                 (unchecked-field-ref _%obj99399%_ _%off99427%_))
               _%$e99424%_)
              (let ()
                (declare (not safe))
                (_%E99412%_ _%obj99399%_ _%slot99404%_))))))
    (define __slot-ref__0
      (lambda (_%obj99433%_ _%slot99434%_)
        (let ((_%E99436%_ __slot-error))
          (__slot-ref__% _%obj99433%_ _%slot99434%_ _%E99436%_))))
    (define __slot-ref
      (lambda _g102613_
        (let ((_g102612_ (let () (declare (not safe)) (##length _g102613_))))
          (cond ((let () (declare (not safe)) (##fx= _g102612_ 2))
                 (apply __slot-ref__0 _g102613_))
                ((let () (declare (not safe)) (##fx= _g102612_ 3))
                 (apply __slot-ref__% _g102613_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g102613_))))))
    (define slot-set!__%
      (lambda (_%obj99357%_ _%slot99358%_ _%val99359%_ _%E99360%_)
        (if (symbol? _%slot99358%_)
            (let ((_%slot99364%_ _%slot99358%_))
              (if (procedure? _%E99360%_)
                  (let ((_%E99374%_ _%E99360%_))
                    (__slot-set!__%
                     _%obj99357%_
                     _%slot99364%_
                     _%val99359%_
                     _%E99374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E99360%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot99358%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj99387%_ _%slot99388%_ _%val99389%_)
        (let ((_%E99391%_ __slot-error))
          (slot-set!__% _%obj99387%_ _%slot99388%_ _%val99389%_ _%E99391%_))))
    (define slot-set!
      (lambda _g102615_
        (let ((_g102614_ (let () (declare (not safe)) (##length _g102615_))))
          (cond ((let () (declare (not safe)) (##fx= _g102614_ 3))
                 (apply slot-set!__0 _g102615_))
                ((let () (declare (not safe)) (##fx= _g102614_ 4))
                 (apply slot-set!__% _g102615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g102615_))))))
    (define __slot-set!__%
      (lambda (_%obj99310%_ _%slot99311%_ _%val99312%_ _%E99313%_)
        (let* ((_%slot99316%_ _%slot99311%_)
               (_%E99324%_ _%E99313%_)
               (_%klass99333%_ (class-of _%obj99310%_))
               (_%$e99336%_
                (__class-slot-offset _%klass99333%_ _%slot99316%_)))
          (if _%$e99336%_
              ((lambda (_%off99339%_)
                 (unchecked-field-set! _%obj99310%_ _%off99339%_ _%val99312%_))
               _%$e99336%_)
              (let ()
                (declare (not safe))
                (_%E99324%_ _%obj99310%_ _%slot99316%_))))))
    (define __slot-set!__0
      (lambda (_%obj99345%_ _%slot99346%_ _%val99347%_)
        (let ((_%E99349%_ __slot-error))
          (__slot-set!__%
           _%obj99345%_
           _%slot99346%_
           _%val99347%_
           _%E99349%_))))
    (define __slot-set!
      (lambda _g102617_
        (let ((_g102616_ (let () (declare (not safe)) (##length _g102617_))))
          (cond ((let () (declare (not safe)) (##fx= _g102616_ 3))
                 (apply __slot-set!__0 _g102617_))
                ((let () (declare (not safe)) (##fx= _g102616_ 4))
                 (apply __slot-set!__% _g102617_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g102617_))))))
    (define __slot-error
      (lambda (_%obj99306%_ _%slot99307%_)
        (error '"Cannot find slot"
               'object:
               _%obj99306%_
               'slot:
               _%slot99307%_)))
    (define subclass?
      (lambda (_%maybe-sub-class99281%_ _%maybe-super-class99282%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class99281%_ 'class))
            (let ((_%maybe-sub-class99286%_ _%maybe-sub-class99281%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class99282%_
                     'class))
                  (let ((_%maybe-super-class99296%_
                         _%maybe-super-class99282%_))
                    (__subclass?
                     _%maybe-sub-class99286%_
                     _%maybe-super-class99296%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class99282%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class99281%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class99253%_ _%maybe-super-class99254%_)
        (let* ((_%maybe-sub-class99257%_ _%maybe-sub-class99253%_)
               (_%maybe-super-class99265%_ _%maybe-super-class99254%_)
               (_%maybe-super-class-id99274%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class99265%_)))
               (_%$e99276%_
                (eq? _%maybe-super-class-id99274%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class99257%_)))))
          (if _%$e99276%_
              _%$e99276%_
              (let ((__tmp102619
                     (lambda (_%super-class99279%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class99279%_))
                            _%maybe-super-class-id99274%_)))
                    (__tmp102618
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class99257%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp102619 __tmp102618))))))
    (define object?
      (lambda (_%o99250%_)
        (if (let () (declare (not safe)) (##structure? _%o99250%_))
            (let ((__tmp102620
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99250%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp102620 'class))
            '#f)))
    (define object-type
      (lambda (_%o99245%_)
        (if (let () (declare (not safe)) (##structure? _%o99245%_))
            (let ((_%klass99248%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o99245%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass99248%_ 'class))
                  _%klass99248%_
                  (begin
                    (error '"not an object" _%o99245%_ _%klass99248%_)
                    '#!void)))
            (begin (error '"not an object" _%o99245%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass99230%_ _%obj99231%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99230%_ 'class))
            (let ((_%klass99235%_ _%klass99230%_))
              (__direct-instance? _%klass99235%_ _%obj99231%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass99230%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass99217%_ _%obj99218%_)
        (let* ((_%klass99221%_ _%klass99217%_)
               (__tmp102621
                (let () (declare (not safe)) (##type-id _%klass99221%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj99218%_ __tmp102621))))
    (define immediate-instance-of?
      (lambda (_%klass99213%_ _%obj99214%_)
        (if (let () (declare (not safe)) (##structure? _%obj99214%_))
            (eq? _%klass99213%_
                 (let () (declare (not safe)) (##structure-type _%obj99214%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass99198%_ _%obj99199%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99198%_ 'class))
            (let ((_%klass99203%_ _%klass99198%_))
              (__struct-instance? _%klass99203%_ _%obj99199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass99198%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass99185%_ _%obj99186%_)
        (let* ((_%klass99189%_ _%klass99185%_)
               (__tmp102622
                (let () (declare (not safe)) (##type-id _%klass99189%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj99186%_ __tmp102622))))
    (define class-instance?
      (lambda (_%klass99170%_ _%obj99171%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99170%_ 'class))
            (let ((_%klass99175%_ _%klass99170%_))
              (__class-instance? _%klass99175%_ _%obj99171%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass99170%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass99155%_ _%obj99156%_)
        (let* ((_%klass99159%_ _%klass99155%_)
               (_%type99168%_ (class-of _%obj99156%_)))
          (__subclass? _%type99168%_ _%klass99159%_))))
    (define make-object
      (lambda (_%klass99130%_ _%k99131%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99130%_ 'class))
            (let ((_%klass99135%_ _%klass99130%_))
              (if (fixnum? _%k99131%_)
                  (let ((_%k99145%_ _%k99131%_))
                    (__make-object _%klass99135%_ _%k99145%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k99131%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass99130%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass99107%_ _%k99108%_)
        (let* ((_%klass99111%_ _%klass99107%_) (_%k99119%_ _%k99108%_))
          (if (__class-type-system? _%klass99111%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass99111%_)
                '#!void)
              (let ((_%obj99128%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass99111%_ _%k99119%_))))
                (object-fill! _%obj99128%_ '#f))))))
    (define object-fill!
      (lambda (_%obj99092%_ _%fill99093%_)
        (if '#t
            (let ((_%obj99097%_ _%obj99092%_))
              (__object-fill! _%obj99097%_ _%fill99093%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj99092%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj99074%_ _%fill99075%_)
        (let ((_%obj99078%_ _%obj99074%_))
          (let _%loop99087%_ ((_%i99089%_
                               (let ((__tmp102623
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj99078%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102623 '1))))
            (if (let () (declare (not safe)) (##fx> _%i99089%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj99078%_
                     _%fill99075%_
                     _%i99089%_
                     '#f
                     '#f))
                  (_%loop99087%_
                   (let () (declare (not safe)) (##fx- _%i99089%_ '1))))
                _%obj99078%_)))))
    (define new-instance
      (lambda (_%klass99060%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99060%_ 'class))
            (let ((_%klass99064%_ _%klass99060%_))
              (__new-instance _%klass99064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass99060%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass99048%_)
        (let* ((_%klass99051%_ _%klass99048%_)
               (__obj102540
                (let ((__tmp102624
                       (let ((__tmp102625
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass99051%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp102625))))
                  (declare (not safe))
                  (##make-structure _%klass99051%_ __tmp102624))))
          (object-fill! __obj102540 '#f)
          __obj102540)))
    (define make-instance
      (lambda (_%klass99033%_ . _%args99034%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99033%_ 'class))
            (let ((_%klass99038%_ _%klass99033%_))
              (declare (not safe))
              (##apply __make-instance _%klass99038%_ _%args99034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass99033%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass99005%_ . _%args99006%_)
        (let* ((_%klass99009%_ _%klass99005%_)
               (_%$e99018%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99009%_ '10 '#f '#f))))
          (if _%$e99018%_
              ((lambda (_%kons-id99021%_)
                 (let ((_%obj99023%_ (__new-instance _%klass99009%_)))
                   (___constructor-init!
                    _%klass99009%_
                    _%kons-id99021%_
                    _%obj99023%_
                    _%args99006%_)
                   _%obj99023%_))
               _%$e99018%_)
              (if (__class-type-metaclass? _%klass99009%_)
                  (let ((_%obj99026%_ (__new-instance _%klass99009%_)))
                    (__metaclass-instance-init!
                     _%klass99009%_
                     _%obj99026%_
                     _%args99006%_)
                    _%obj99026%_)
                  (if (__class-type-struct? _%klass99009%_)
                      (if (let ((__tmp102627
                                 (__class-type-field-count _%klass99009%_))
                                (__tmp102626
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args99006%_))))
                            (declare (not safe))
                            (##fx= __tmp102627 __tmp102626))
                          (apply ##structure _%klass99009%_ _%args99006%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass99009%_
                                   'slots:
                                   (__class-type-slot-list _%klass99009%_)
                                   'args:
                                   _%args99006%_)
                            '#!void))
                      (let ((_%obj99029%_ (__new-instance _%klass99009%_)))
                        (___class-instance-init!
                         _%klass99009%_
                         _%obj99029%_
                         _%args99006%_)
                        _%obj99029%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj98990%_ . _%args98991%_)
        (if '#t
            (let ((_%obj98995%_ _%obj98990%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj98995%_ _%args98991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj98990%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj98977%_ . _%args98978%_)
        (let ((_%obj98981%_ _%obj98977%_))
          (if (let ((__tmp102629
                     (let () (declare (not safe)) (##length _%args98978%_)))
                    (__tmp102628
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj98981%_))))
                (declare (not safe))
                (##fx< __tmp102629 __tmp102628))
              (___struct-instance-init! _%obj98981%_ _%args98978%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj98981%_
                     'args:
                     _%args98978%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj98936%_ _%args98937%_)
        (let _%lp98939%_ ((_%k98941%_ '1) (_%rest98942%_ _%args98937%_))
          (let* ((_%rest9894398951%_ _%rest98942%_)
                 (_%else9894598959%_ (lambda () _%obj98936%_))
                 (_%K9894798965%_
                  (lambda (_%rest98962%_ _%hd98963%_)
                    (unchecked-field-set! _%obj98936%_ _%k98941%_ _%hd98963%_)
                    (_%lp98939%_
                     (let () (declare (not safe)) (##fx+ _%k98941%_ '1))
                     _%rest98962%_))))
            (if (pair? _%rest9894398951%_)
                (let ((_%hd9894898968%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9894398951%_)))
                      (_%tl9894998970%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9894398951%_))))
                  (let* ((_%hd98973%_ _%hd9894898968%_)
                         (_%rest98975%_ _%tl9894998970%_))
                    (_%K9894798965%_ _%rest98975%_ _%hd98973%_)))
                (_%else9894598959%_))))))
    (define class-instance-init!
      (lambda (_%obj98921%_ . _%args98922%_)
        (if '#t
            (let ((_%obj98926%_ _%obj98921%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj98926%_ _%args98922%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj98921%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj98908%_ . _%args98909%_)
        (let ((_%obj98912%_ _%obj98908%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj98912%_))
           _%obj98912%_
           _%args98909%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass98850%_ _%obj98851%_ _%args98852%_)
        (let _%lp98854%_ ((_%rest98856%_ _%args98852%_))
          (let* ((_%rest9885798867%_ _%rest98856%_)
                 (_%else9885998875%_
                  (lambda ()
                    (if (null? _%rest98856%_)
                        _%obj98851%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass98850%_
                               'rest:
                               _%rest98856%_))))
                 (_%K9886198889%_
                  (lambda (_%rest98878%_ _%val98879%_ _%key98880%_)
                    (if (keyword? _%key98880%_)
                        (let ((_%$e98883%_
                               (__class-slot-offset
                                _%klass98850%_
                                _%key98880%_)))
                          (if _%$e98883%_
                              ((lambda (_%off98886%_)
                                 (unchecked-field-set!
                                  _%obj98851%_
                                  _%off98886%_
                                  _%val98879%_)
                                 (_%lp98854%_ _%rest98878%_))
                               _%$e98883%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass98850%_
                                     'slot:
                                     _%key98880%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key98880%_)))))
            (if (pair? _%rest9885798867%_)
                (let ((_%hd9886298892%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9885798867%_)))
                      (_%tl9886398894%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9885798867%_))))
                  (let ((_%key98897%_ _%hd9886298892%_))
                    (if (pair? _%tl9886398894%_)
                        (let ((_%hd9886498899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9886398894%_)))
                              (_%tl9886598901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9886398894%_))))
                          (let* ((_%val98904%_ _%hd9886498899%_)
                                 (_%rest98906%_ _%tl9886598901%_))
                            (_%K9886198889%_
                             _%rest98906%_
                             _%val98904%_
                             _%key98897%_)))
                        (_%else9885998875%_))))
                (_%else9885998875%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass98846%_ _%obj98847%_ _%args98848%_)
        (apply call-method
               _%klass98846%_
               'instance-init!
               _%obj98847%_
               _%args98848%_)))
    (define constructor-init!
      (lambda (_%klass98809%_ _%kons-id98810%_ _%obj98811%_ . _%args98812%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98809%_ 'class))
            (let ((_%klass98816%_ _%klass98809%_))
              (if (symbol? _%kons-id98810%_)
                  (let ((_%kons-id98826%_ _%kons-id98810%_))
                    (if '#t
                        (let ((_%obj98836%_ _%obj98811%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass98816%_
                                   _%kons-id98826%_
                                   _%obj98836%_
                                   _%args98812%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj98811%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id98810%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass98809%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass98778%_ _%kons-id98779%_ _%obj98780%_ . _%args98781%_)
        (let* ((_%klass98784%_ _%klass98778%_)
               (_%kons-id98792%_ _%kons-id98779%_)
               (_%obj98800%_ _%obj98780%_))
          (___constructor-init!
           _%klass98784%_
           _%kons-id98792%_
           _%obj98800%_
           _%args98781%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass98767%_ _%kons-id98768%_ _%obj98769%_ _%args98770%_)
        (let ((_%$e98772%_
               (__find-method _%klass98767%_ _%obj98769%_ _%kons-id98768%_)))
          (if _%$e98772%_
              ((lambda (_%kons98775%_)
                 (apply _%kons98775%_ _%obj98769%_ _%args98770%_)
                 _%obj98769%_)
               _%$e98772%_)
              (error '"missing constructor"
                     'class:
                     _%klass98767%_
                     'method:
                     _%kons-id98768%_)))))
    (define struct-copy
      (lambda (_%struct98753%_)
        (if '#t
            (let ((_%struct98757%_ _%struct98753%_))
              (__struct-copy _%struct98757%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct98753%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct98741%_)
        (let ((_%struct98744%_ _%struct98741%_))
          (declare (not safe))
          (##structure-copy _%struct98744%_))))
    (define struct->list
      (lambda (_%obj98727%_)
        (if '#t
            (let ((_%obj98731%_ _%obj98727%_)) (__struct->list _%obj98731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj98727%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj98708%_)
        (let* ((_%obj98711%_ _%obj98708%_)
               (_%len98720%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj98711%_))))
          (let _%recur98722%_ ((_%i98724%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i98724%_ _%len98720%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj98711%_
                         _%i98724%_
                         '#f
                         '#f))
                      (_%recur98722%_
                       (let () (declare (not safe)) (##fx+ _%i98724%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj98694%_)
        (if '#t
            (let ((_%obj98698%_ _%obj98694%_)) (__class->list _%obj98698%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj98694%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj98670%_)
        (let* ((_%obj98673%_ _%obj98670%_)
               (_%klass98682%_
                (let () (declare (not safe)) (##structure-type _%obj98673%_)))
               (_%slot-vector98684%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98682%_ '7 '#f '#f))))
          (let _%loop98686%_ ((_%index98688%_
                               (let ((__tmp102630
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector98684%_))))
                                 (declare (not safe))
                                 (##fx- __tmp102630 '1)))
                              (_%plist98689%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index98688%_ '1))
                (cons _%klass98682%_ _%plist98689%_)
                (let ((_%slot98692%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector98684%_ _%index98688%_))))
                  (_%loop98686%_
                   (let () (declare (not safe)) (##fx- _%index98688%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot98692%_))
                         (cons (unchecked-field-ref
                                _%obj98673%_
                                _%index98688%_)
                               _%plist98689%_)))))))))
    (define call-method
      (lambda (_%obj98654%_ _%id98655%_ . _%args98656%_)
        (if (symbol? _%id98655%_)
            (let ((_%id98660%_ _%id98655%_))
              (declare (not safe))
              (##apply __call-method _%obj98654%_ _%id98660%_ _%args98656%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id98655%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj98623%_ _%id98624%_ . _%args98625%_)
        (let* ((_%id98628%_ _%id98624%_)
               (_%$e98637%_ (__method-ref _%obj98623%_ _%id98628%_)))
          (if _%$e98637%_
              ((lambda (_%method98640%_)
                 (let ((_%method98642%_ _%method98640%_))
                   (apply _%method98642%_ _%obj98623%_ _%args98625%_)))
               _%$e98637%_)
              (error '"cannot find method"
                     'object:
                     _%obj98623%_
                     'method:
                     _%id98628%_)))))
    (define method-ref
      (lambda (_%obj98608%_ _%id98609%_)
        (if (symbol? _%id98609%_)
            (let ((_%id98613%_ _%id98609%_))
              (__method-ref _%obj98608%_ _%id98613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id98609%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj98595%_ _%id98596%_)
        (let ((_%id98599%_ _%id98596%_))
          (__find-method (class-of _%obj98595%_) _%obj98595%_ _%id98599%_))))
    (define checked-method-ref
      (lambda (_%obj98588%_ _%id98589%_)
        (let ((_%$e98592%_ (method-ref _%obj98588%_ _%id98589%_)))
          (if _%$e98592%_
              _%$e98592%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj98588%_
                       'method:
                       _%id98589%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj98573%_ _%id98574%_)
        (if (symbol? _%id98574%_)
            (let ((_%id98578%_ _%id98574%_))
              (__bound-method-ref _%obj98573%_ _%id98578%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id98574%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj98541%_ _%id98542%_)
        (let* ((_%id98545%_ _%id98542%_)
               (_%$e98554%_ (__method-ref _%obj98541%_ _%id98545%_)))
          (if _%$e98554%_
              ((lambda (_%method98557%_)
                 (let ((_%method98559%_ _%method98557%_))
                   (lambda _%args98570%_
                     (apply _%method98559%_ _%obj98541%_ _%args98570%_))))
               _%$e98554%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj98526%_ _%id98527%_)
        (if (symbol? _%id98527%_)
            (let ((_%id98531%_ _%id98527%_))
              (__checked-bound-method-ref _%obj98526%_ _%id98531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id98527%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj98509%_ _%id98510%_)
        (let* ((_%id98513%_ _%id98510%_)
               (_%method98522%_ (checked-method-ref _%obj98509%_ _%id98513%_)))
          (lambda _%args98524%_
            (apply _%method98522%_ _%obj98509%_ _%args98524%_)))))
    (define find-method
      (lambda (_%klass98483%_ _%obj98484%_ _%id98485%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98483%_ 'class))
            (let ((_%klass98489%_ _%klass98483%_))
              (if (symbol? _%id98485%_)
                  (let ((_%id98499%_ _%id98485%_))
                    (__find-method _%klass98489%_ _%obj98484%_ _%id98499%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id98485%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass98483%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass98456%_ _%obj98457%_ _%id98458%_)
        (let* ((_%klass98461%_ _%klass98456%_)
               (_%id98469%_ _%id98458%_)
               (_%$e98478%_
                (__direct-method-ref _%klass98461%_ _%obj98457%_ _%id98469%_)))
          (if _%$e98478%_
              _%$e98478%_
              (if (__class-type-sealed? _%klass98461%_)
                  '#f
                  (__mixin-method-ref
                   _%klass98461%_
                   _%obj98457%_
                   _%id98469%_))))))
    (define mixin-find-method
      (lambda (_%mixins98440%_ _%obj98441%_ _%id98442%_)
        (if (symbol? _%id98442%_)
            (let ((_%id98446%_ _%id98442%_))
              (__mixin-find-method _%mixins98440%_ _%obj98441%_ _%id98446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id98442%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins98422%_ _%obj98423%_ _%id98424%_)
        (let* ((_%id98427%_ _%id98424%_)
               (__tmp102631
                (lambda (_%g9843598437%_)
                  (direct-method-ref
                   _%g9843598437%_
                   _%obj98423%_
                   _%id98427%_))))
          (declare (not safe))
          (__ormap1 __tmp102631 _%mixins98422%_))))
    (define direct-method-ref
      (lambda (_%klass98396%_ _%obj98397%_ _%id98398%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98396%_ 'class))
            (let ((_%klass98402%_ _%klass98396%_))
              (if (symbol? _%id98398%_)
                  (let ((_%id98412%_ _%id98398%_))
                    (__direct-method-ref
                     _%klass98402%_
                     _%obj98397%_
                     _%id98412%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id98398%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass98396%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass98350%_ _%obj98351%_ _%id98352%_)
        (let* ((_%klass98355%_ _%klass98350%_) (_%id98363%_ _%id98352%_))
          (letrec ((_%metaclass-resolve-method98372%_
                    (lambda ()
                      (let ((__method102541
                             (__method-ref _%klass98355%_ 'direct-method-ref)))
                        (if __method102541
                            (let ()
                              (declare (not safe))
                              (__method102541
                               _%klass98355%_
                               _%obj98351%_
                               _%id98363%_))
                            (begin
                              (error '"Missing method"
                                     _%klass98355%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!98373%_
                    (lambda ()
                      (let ((_%method98393%_
                             (_%metaclass-resolve-method98372%_)))
                        (let ((__tmp102633
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass98355%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp102632
                               (if _%method98393%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp102633
                           _%id98363%_
                           __tmp102632))
                        _%method98393%_))))
            (let ((_%$e98375%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass98355%_ '11 '#f '#f))))
              (if _%$e98375%_
                  ((lambda (_%ht98378%_)
                     (let ((_%method98380%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht98378%_
                               _%id98363%_
                               '#f))))
                       (if (procedure? _%method98380%_)
                           _%method98380%_
                           (if (__class-type-metaclass? _%klass98355%_)
                               (let ((_%$e98384%_ _%method98380%_))
                                 (if (eq? 'resolved _%$e98384%_)
                                     (_%metaclass-resolve-method98372%_)
                                     (if (eq? 'unknown _%$e98384%_)
                                         '#f
                                         (_%metaclass-resolve-method!98373%_))))
                               '#f))))
                   _%$e98375%_)
                  (if (__class-type-metaclass? _%klass98355%_)
                      (let ((_%tab98389%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98355%_
                           _%tab98389%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!98373%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass98324%_ _%obj98325%_ _%id98326%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98324%_ 'class))
            (let ((_%klass98330%_ _%klass98324%_))
              (if (symbol? _%id98326%_)
                  (let ((_%id98340%_ _%id98326%_))
                    (__mixin-method-ref
                     _%klass98330%_
                     _%obj98325%_
                     _%id98340%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id98326%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass98324%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass98302%_ _%obj98303%_ _%id98304%_)
        (let* ((_%klass98307%_ _%klass98302%_) (_%id98315%_ _%id98304%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass98307%_ '6 '#f '#f))
           _%obj98303%_
           _%id98315%_))))
    (define bind-method!__%
      (lambda (_%klass98261%_ _%id98262%_ _%proc98263%_ _%rebind?98264%_)
        (if (symbol? _%id98262%_)
            (let ((_%id98268%_ _%id98262%_))
              (if (procedure? _%proc98263%_)
                  (let ((_%proc98278%_ _%proc98263%_))
                    (__bind-method!__%
                     _%klass98261%_
                     _%id98268%_
                     _%proc98278%_
                     _%rebind?98264%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc98263%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id98262%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass98291%_ _%id98292%_ _%proc98293%_)
        (let ((_%rebind?98295%_ '#f))
          (bind-method!__%
           _%klass98291%_
           _%id98292%_
           _%proc98293%_
           _%rebind?98295%_))))
    (define bind-method!
      (lambda _g102635_
        (let ((_g102634_ (let () (declare (not safe)) (##length _g102635_))))
          (cond ((let () (declare (not safe)) (##fx= _g102634_ 3))
                 (apply bind-method!__0 _g102635_))
                ((let () (declare (not safe)) (##fx= _g102634_ 4))
                 (apply bind-method!__% _g102635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g102635_))))))
    (define __bind-method!__%
      (lambda (_%klass98212%_ _%id98213%_ _%proc98214%_ _%rebind?98215%_)
        (let* ((_%id98218%_ _%id98213%_) (_%proc98226%_ _%proc98214%_))
          (letrec ((_%bind!98235%_
                    (lambda (_%ht98244%_)
                      (if (and (not _%rebind?98215%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht98244%_
                                  _%id98218%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass98212%_
                                 'method:
                                 _%id98218%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht98244%_
                               _%id98218%_
                               _%proc98226%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass98212%_ 'class))
                (let ((_%ht98238%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98212%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht98238%_
                      (_%bind!98235%_ _%ht98238%_)
                      (let ((_%ht98240%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass98212%_
                           _%ht98240%_
                           '11
                           '#f
                           '#f))
                        (_%bind!98235%_ _%ht98240%_))))
                (if (let () (declare (not safe)) (##type? _%klass98212%_))
                    (__bind-method!__%
                     (__shadow-class _%klass98212%_)
                     _%id98218%_
                     _%proc98226%_
                     _%rebind?98215%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass98212%_)))))))
    (define __bind-method!__0
      (lambda (_%klass98249%_ _%id98250%_ _%proc98251%_)
        (let ((_%rebind?98253%_ '#f))
          (__bind-method!__%
           _%klass98249%_
           _%id98250%_
           _%proc98251%_
           _%rebind?98253%_))))
    (define __bind-method!
      (lambda _g102637_
        (let ((_g102636_ (let () (declare (not safe)) (##length _g102637_))))
          (cond ((let () (declare (not safe)) (##fx= _g102636_ 3))
                 (apply __bind-method!__0 _g102637_))
                ((let () (declare (not safe)) (##fx= _g102636_ 4))
                 (apply __bind-method!__% _g102637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g102637_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint98192%_ _%seed98194%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint98192%_
           procedure-hash
           eq?
           _%seed98194%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint98200%_ '#f) (_%seed98202%_ '0))
          (make-method-specializer-table__%
           _%size-hint98200%_
           _%seed98202%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint98204%_)
        (let ((_%seed98206%_ '0))
          (make-method-specializer-table__%
           _%size-hint98204%_
           _%seed98206%_))))
    (define make-method-specializer-table
      (lambda _g102639_
        (let ((_g102638_ (let () (declare (not safe)) (##length _g102639_))))
          (cond ((let () (declare (not safe)) (##fx= _g102638_ 0))
                 (apply make-method-specializer-table__0 _g102639_))
                ((let () (declare (not safe)) (##fx= _g102638_ 1))
                 (apply make-method-specializer-table__1 _g102639_))
                ((let () (declare (not safe)) (##fx= _g102638_ 2))
                 (apply make-method-specializer-table__% _g102639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g102639_))))))
    (define method-specializer-table-ref
      (lambda (_%tab98145%_ _%key98146%_ _%default98147%_)
        (let ((_%table98149%_
               (let () (declare (not safe)) (&raw-table-table _%tab98145%_)))
              (_%seed98150%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98145%_))))
          (let* ((_%h98152%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98146%_))
                         _%seed98150%_))
                 (_%size98155%_ (vector-length _%table98149%_))
                 (_%entries98158%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98155%_ '2)))
                 (_%start98161%_
                  (let ((__tmp102640
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98152%_ _%entries98158%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102640 '1))))
            (let _%loop98165%_ ((_%probe98168%_ _%start98161%_)
                                (_%i98170%_ '1)
                                (_%deleted98172%_ '#f))
              (let ((_%k98175%_ (vector-ref _%table98149%_ _%probe98168%_)))
                (if (eq? _%k98175%_ (macro-unused-obj))
                    _%default98147%_
                    (if (eq? _%k98175%_ (macro-deleted-obj))
                        (_%loop98165%_
                         (let ((_%next-probe98180%_
                                (fx+ _%start98161%_
                                     _%i98170%_
                                     (fx* _%i98170%_ _%i98170%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98180%_ _%size98155%_))
                         (let () (declare (not safe)) (##fx+ _%i98170%_ '1))
                         (let ((_%$e98183%_ _%deleted98172%_))
                           (if _%$e98183%_ _%$e98183%_ _%probe98168%_)))
                        (if (eq? _%key98146%_ _%k98175%_)
                            (vector-ref
                             _%table98149%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe98168%_ '1)))
                            (_%loop98165%_
                             (let ((_%next-probe98188%_
                                    (fx+ _%start98161%_
                                         _%i98170%_
                                         (fx* _%i98170%_ _%i98170%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98188%_ _%size98155%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98170%_ '1))
                             _%deleted98172%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab98141%_ _%key98142%_ _%value98143%_)
        (if (let ((__tmp102643
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98141%_)))
                  (__tmp102641
                   (let ((__tmp102642
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98141%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102642 '4))))
              (declare (not safe))
              (##fx< __tmp102643 __tmp102641))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98141%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab98141%_
         _%key98142%_
         _%value98143%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab98092%_ _%key98093%_ _%value98094%_)
        (let ((_%table98097%_
               (let () (declare (not safe)) (&raw-table-table _%tab98092%_)))
              (_%seed98098%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98092%_))))
          (let* ((_%h98100%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98093%_))
                         _%seed98098%_))
                 (_%size98103%_ (vector-length _%table98097%_))
                 (_%entries98106%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98103%_ '2)))
                 (_%start98109%_
                  (let ((__tmp102644
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98100%_ _%entries98106%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102644 '1))))
            (let _%loop98113%_ ((_%probe98116%_ _%start98109%_)
                                (_%i98118%_ '1)
                                (_%deleted98120%_ '#f))
              (let ((_%k98123%_ (vector-ref _%table98097%_ _%probe98116%_)))
                (if (eq? _%k98123%_ (macro-unused-obj))
                    (if _%deleted98120%_
                        (begin
                          (vector-set!
                           _%table98097%_
                           _%deleted98120%_
                           _%key98093%_)
                          (vector-set!
                           _%table98097%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98120%_ '1))
                           _%value98094%_)
                          ((lambda ()
                             (let ((__tmp102645
                                    (let ((__tmp102646
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98092%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102646 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98092%_
                                __tmp102645)))))
                        (begin
                          (vector-set!
                           _%table98097%_
                           _%probe98116%_
                           _%key98093%_)
                          (vector-set!
                           _%table98097%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98116%_ '1))
                           _%value98094%_)
                          ((lambda ()
                             (let ((__tmp102647
                                    (let ((__tmp102648
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98092%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102648 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98092%_ __tmp102647))
                             (let ((__tmp102649
                                    (let ((__tmp102650
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98092%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102650 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98092%_
                                __tmp102649))))))
                    (if (eq? _%k98123%_ (macro-deleted-obj))
                        (_%loop98113%_
                         (let ((_%next-probe98130%_
                                (fx+ _%start98109%_
                                     _%i98118%_
                                     (fx* _%i98118%_ _%i98118%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98130%_ _%size98103%_))
                         (let () (declare (not safe)) (##fx+ _%i98118%_ '1))
                         (let ((_%$e98133%_ _%deleted98120%_))
                           (if _%$e98133%_ _%$e98133%_ _%probe98116%_)))
                        (if (eq? _%key98093%_ _%k98123%_)
                            (let ()
                              (vector-set!
                               _%table98097%_
                               _%probe98116%_
                               _%key98093%_)
                              (vector-set!
                               _%table98097%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98116%_ '1))
                               _%value98094%_))
                            (_%loop98113%_
                             (let ((_%next-probe98138%_
                                    (fx+ _%start98109%_
                                         _%i98118%_
                                         (fx* _%i98118%_ _%i98118%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98138%_ _%size98103%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98118%_ '1))
                             _%deleted98120%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab98087%_
               _%key98088%_
               _%method-specializer-table-update!98089%_
               _%default98090%_)
        (if (let ((__tmp102653
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab98087%_)))
                  (__tmp102651
                   (let ((__tmp102652
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab98087%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102652 '4))))
              (declare (not safe))
              (##fx< __tmp102653 __tmp102651))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab98087%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab98087%_
         _%key98088%_
         _%method-specializer-table-update!98089%_
         _%default98090%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab98037%_
               _%key98038%_
               _%method-specializer-table-update!98039%_
               _%default98040%_)
        (let ((_%table98043%_
               (let () (declare (not safe)) (&raw-table-table _%tab98037%_)))
              (_%seed98044%_
               (let () (declare (not safe)) (&raw-table-seed _%tab98037%_))))
          (let* ((_%h98046%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key98038%_))
                         _%seed98044%_))
                 (_%size98049%_ (vector-length _%table98043%_))
                 (_%entries98052%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98049%_ '2)))
                 (_%start98055%_
                  (let ((__tmp102654
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98046%_ _%entries98052%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102654 '1))))
            (let _%loop98059%_ ((_%probe98062%_ _%start98055%_)
                                (_%i98064%_ '1)
                                (_%deleted98066%_ '#f))
              (let ((_%k98069%_ (vector-ref _%table98043%_ _%probe98062%_)))
                (if (eq? _%k98069%_ (macro-unused-obj))
                    (if _%deleted98066%_
                        (begin
                          (vector-set!
                           _%table98043%_
                           _%deleted98066%_
                           _%key98038%_)
                          (vector-set!
                           _%table98043%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted98066%_ '1))
                           (_%method-specializer-table-update!98039%_
                            _%default98040%_))
                          ((lambda ()
                             (let ((__tmp102655
                                    (let ((__tmp102656
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98037%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102656 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98037%_
                                __tmp102655)))))
                        (begin
                          (vector-set!
                           _%table98043%_
                           _%probe98062%_
                           _%key98038%_)
                          (vector-set!
                           _%table98043%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe98062%_ '1))
                           (_%method-specializer-table-update!98039%_
                            _%default98040%_))
                          ((lambda ()
                             (let ((__tmp102657
                                    (let ((__tmp102658
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab98037%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102658 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab98037%_ __tmp102657))
                             (let ((__tmp102659
                                    (let ((__tmp102660
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab98037%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102660 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab98037%_
                                __tmp102659))))))
                    (if (eq? _%k98069%_ (macro-deleted-obj))
                        (_%loop98059%_
                         (let ((_%next-probe98076%_
                                (fx+ _%start98055%_
                                     _%i98064%_
                                     (fx* _%i98064%_ _%i98064%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98076%_ _%size98049%_))
                         (let () (declare (not safe)) (##fx+ _%i98064%_ '1))
                         (let ((_%$e98079%_ _%deleted98066%_))
                           (if _%$e98079%_ _%$e98079%_ _%probe98062%_)))
                        (if (eq? _%key98038%_ _%k98069%_)
                            (let ()
                              (vector-set!
                               _%table98043%_
                               _%probe98062%_
                               _%key98038%_)
                              (vector-set!
                               _%table98043%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98062%_ '1))
                               (_%method-specializer-table-update!98039%_
                                (vector-ref
                                 _%table98043%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe98062%_ '1))))))
                            (_%loop98059%_
                             (let ((_%next-probe98084%_
                                    (fx+ _%start98055%_
                                         _%i98064%_
                                         (fx* _%i98064%_ _%i98064%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98084%_ _%size98049%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98064%_ '1))
                             _%deleted98066%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab97992%_ _%key97994%_)
        (let ((_%table97997%_
               (let () (declare (not safe)) (&raw-table-table _%tab97992%_)))
              (_%seed97999%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97992%_))))
          (let* ((_%h98002%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97994%_))
                         _%seed97999%_))
                 (_%size98005%_ (vector-length _%table97997%_))
                 (_%entries98008%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size98005%_ '2)))
                 (_%start98011%_
                  (let ((__tmp102661
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h98002%_ _%entries98008%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102661 '1))))
            (let _%loop98015%_ ((_%probe98018%_ _%start98011%_)
                                (_%i98020%_ '1))
              (let ((_%k98023%_ (vector-ref _%table97997%_ _%probe98018%_)))
                (if (eq? _%k98023%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k98023%_ (macro-deleted-obj))
                        (_%loop98015%_
                         (let ((_%next-probe98028%_
                                (fx+ _%start98011%_
                                     _%i98020%_
                                     (fx* _%i98020%_ _%i98020%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe98028%_ _%size98005%_))
                         (let () (declare (not safe)) (##fx+ _%i98020%_ '1)))
                        (if (eq? _%key97994%_ _%k98023%_)
                            (let ()
                              (vector-set!
                               _%table97997%_
                               _%probe98018%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97997%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe98018%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102662
                                        (let ((__tmp102663
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97992%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102663 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97992%_
                                    __tmp102662)))))
                            (_%loop98015%_
                             (let ((_%next-probe98034%_
                                    (fx+ _%start98011%_
                                         _%i98020%_
                                         (fx* _%i98020%_ _%i98020%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe98034%_ _%size98005%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i98020%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc97983%_ _%specializer97984%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97988%_ ()
            (if (let ((__tmp102664
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102664 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97988%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc97983%_
         _%specializer97984%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc97973%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97977%_ ()
            (if (let ((__tmp102665
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102665 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97977%_)))))
        (let ((_%specializer97981%_
               (method-specializer-table-ref
                __method-specializers
                _%proc97973%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer97981%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass97971%_)
        (let ((__tmp102666
               (let () (declare (not safe)) (##type-id _%klass97971%_))))
          (declare (not safe))
          (##symbol-hash __tmp102666))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint97952%_ _%seed97954%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97952%_
           __class-specializer-hash-key
           eq?
           _%seed97954%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97960%_ '#f) (_%seed97962%_ '0))
          (make-class-specializer-table__% _%size-hint97960%_ _%seed97962%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint97964%_)
        (let ((_%seed97966%_ '0))
          (make-class-specializer-table__% _%size-hint97964%_ _%seed97966%_))))
    (define make-class-specializer-table
      (lambda _g102668_
        (let ((_g102667_ (let () (declare (not safe)) (##length _g102668_))))
          (cond ((let () (declare (not safe)) (##fx= _g102667_ 0))
                 (apply make-class-specializer-table__0 _g102668_))
                ((let () (declare (not safe)) (##fx= _g102667_ 1))
                 (apply make-class-specializer-table__1 _g102668_))
                ((let () (declare (not safe)) (##fx= _g102667_ 2))
                 (apply make-class-specializer-table__% _g102668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g102668_))))))
    (define class-specializer-table-ref
      (lambda (_%tab97905%_ _%key97906%_ _%default97907%_)
        (let ((_%table97909%_
               (let () (declare (not safe)) (&raw-table-table _%tab97905%_)))
              (_%seed97910%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97905%_))))
          (let* ((_%h97912%_
                  (fxxor (__class-specializer-hash-key _%key97906%_)
                         _%seed97910%_))
                 (_%size97915%_ (vector-length _%table97909%_))
                 (_%entries97918%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97915%_ '2)))
                 (_%start97921%_
                  (let ((__tmp102669
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97912%_ _%entries97918%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102669 '1))))
            (let _%loop97925%_ ((_%probe97928%_ _%start97921%_)
                                (_%i97930%_ '1)
                                (_%deleted97932%_ '#f))
              (let ((_%k97935%_ (vector-ref _%table97909%_ _%probe97928%_)))
                (if (eq? _%k97935%_ (macro-unused-obj))
                    _%default97907%_
                    (if (eq? _%k97935%_ (macro-deleted-obj))
                        (_%loop97925%_
                         (let ((_%next-probe97940%_
                                (fx+ _%start97921%_
                                     _%i97930%_
                                     (fx* _%i97930%_ _%i97930%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97940%_ _%size97915%_))
                         (let () (declare (not safe)) (##fx+ _%i97930%_ '1))
                         (let ((_%$e97943%_ _%deleted97932%_))
                           (if _%$e97943%_ _%$e97943%_ _%probe97928%_)))
                        (if (eq? _%key97906%_ _%k97935%_)
                            (vector-ref
                             _%table97909%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97928%_ '1)))
                            (_%loop97925%_
                             (let ((_%next-probe97948%_
                                    (fx+ _%start97921%_
                                         _%i97930%_
                                         (fx* _%i97930%_ _%i97930%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97948%_ _%size97915%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97930%_ '1))
                             _%deleted97932%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab97901%_ _%key97902%_ _%value97903%_)
        (if (let ((__tmp102672
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97901%_)))
                  (__tmp102670
                   (let ((__tmp102671
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97901%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102671 '4))))
              (declare (not safe))
              (##fx< __tmp102672 __tmp102670))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97901%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab97901%_
         _%key97902%_
         _%value97903%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab97852%_ _%key97853%_ _%value97854%_)
        (let ((_%table97857%_
               (let () (declare (not safe)) (&raw-table-table _%tab97852%_)))
              (_%seed97858%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97852%_))))
          (let* ((_%h97860%_
                  (fxxor (__class-specializer-hash-key _%key97853%_)
                         _%seed97858%_))
                 (_%size97863%_ (vector-length _%table97857%_))
                 (_%entries97866%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97863%_ '2)))
                 (_%start97869%_
                  (let ((__tmp102673
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97860%_ _%entries97866%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102673 '1))))
            (let _%loop97873%_ ((_%probe97876%_ _%start97869%_)
                                (_%i97878%_ '1)
                                (_%deleted97880%_ '#f))
              (let ((_%k97883%_ (vector-ref _%table97857%_ _%probe97876%_)))
                (if (eq? _%k97883%_ (macro-unused-obj))
                    (if _%deleted97880%_
                        (begin
                          (vector-set!
                           _%table97857%_
                           _%deleted97880%_
                           _%key97853%_)
                          (vector-set!
                           _%table97857%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97880%_ '1))
                           _%value97854%_)
                          ((lambda ()
                             (let ((__tmp102674
                                    (let ((__tmp102675
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97852%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102675 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97852%_
                                __tmp102674)))))
                        (begin
                          (vector-set!
                           _%table97857%_
                           _%probe97876%_
                           _%key97853%_)
                          (vector-set!
                           _%table97857%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97876%_ '1))
                           _%value97854%_)
                          ((lambda ()
                             (let ((__tmp102676
                                    (let ((__tmp102677
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97852%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102677 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97852%_ __tmp102676))
                             (let ((__tmp102678
                                    (let ((__tmp102679
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97852%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102679 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97852%_
                                __tmp102678))))))
                    (if (eq? _%k97883%_ (macro-deleted-obj))
                        (_%loop97873%_
                         (let ((_%next-probe97890%_
                                (fx+ _%start97869%_
                                     _%i97878%_
                                     (fx* _%i97878%_ _%i97878%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97890%_ _%size97863%_))
                         (let () (declare (not safe)) (##fx+ _%i97878%_ '1))
                         (let ((_%$e97893%_ _%deleted97880%_))
                           (if _%$e97893%_ _%$e97893%_ _%probe97876%_)))
                        (if (eq? _%key97853%_ _%k97883%_)
                            (let ()
                              (vector-set!
                               _%table97857%_
                               _%probe97876%_
                               _%key97853%_)
                              (vector-set!
                               _%table97857%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97876%_ '1))
                               _%value97854%_))
                            (_%loop97873%_
                             (let ((_%next-probe97898%_
                                    (fx+ _%start97869%_
                                         _%i97878%_
                                         (fx* _%i97878%_ _%i97878%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97898%_ _%size97863%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97878%_ '1))
                             _%deleted97880%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab97847%_
               _%key97848%_
               _%class-specializer-table-update!97849%_
               _%default97850%_)
        (if (let ((__tmp102682
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97847%_)))
                  (__tmp102680
                   (let ((__tmp102681
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97847%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp102681 '4))))
              (declare (not safe))
              (##fx< __tmp102682 __tmp102680))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97847%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab97847%_
         _%key97848%_
         _%class-specializer-table-update!97849%_
         _%default97850%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab97797%_
               _%key97798%_
               _%class-specializer-table-update!97799%_
               _%default97800%_)
        (let ((_%table97803%_
               (let () (declare (not safe)) (&raw-table-table _%tab97797%_)))
              (_%seed97804%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97797%_))))
          (let* ((_%h97806%_
                  (fxxor (__class-specializer-hash-key _%key97798%_)
                         _%seed97804%_))
                 (_%size97809%_ (vector-length _%table97803%_))
                 (_%entries97812%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97809%_ '2)))
                 (_%start97815%_
                  (let ((__tmp102683
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97806%_ _%entries97812%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102683 '1))))
            (let _%loop97819%_ ((_%probe97822%_ _%start97815%_)
                                (_%i97824%_ '1)
                                (_%deleted97826%_ '#f))
              (let ((_%k97829%_ (vector-ref _%table97803%_ _%probe97822%_)))
                (if (eq? _%k97829%_ (macro-unused-obj))
                    (if _%deleted97826%_
                        (begin
                          (vector-set!
                           _%table97803%_
                           _%deleted97826%_
                           _%key97798%_)
                          (vector-set!
                           _%table97803%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97826%_ '1))
                           (_%class-specializer-table-update!97799%_
                            _%default97800%_))
                          ((lambda ()
                             (let ((__tmp102684
                                    (let ((__tmp102685
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97797%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102685 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97797%_
                                __tmp102684)))))
                        (begin
                          (vector-set!
                           _%table97803%_
                           _%probe97822%_
                           _%key97798%_)
                          (vector-set!
                           _%table97803%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97822%_ '1))
                           (_%class-specializer-table-update!97799%_
                            _%default97800%_))
                          ((lambda ()
                             (let ((__tmp102686
                                    (let ((__tmp102687
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab97797%_))))
                                      (declare (not safe))
                                      (##fx- __tmp102687 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab97797%_ __tmp102686))
                             (let ((__tmp102688
                                    (let ((__tmp102689
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab97797%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp102689 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab97797%_
                                __tmp102688))))))
                    (if (eq? _%k97829%_ (macro-deleted-obj))
                        (_%loop97819%_
                         (let ((_%next-probe97836%_
                                (fx+ _%start97815%_
                                     _%i97824%_
                                     (fx* _%i97824%_ _%i97824%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97836%_ _%size97809%_))
                         (let () (declare (not safe)) (##fx+ _%i97824%_ '1))
                         (let ((_%$e97839%_ _%deleted97826%_))
                           (if _%$e97839%_ _%$e97839%_ _%probe97822%_)))
                        (if (eq? _%key97798%_ _%k97829%_)
                            (let ()
                              (vector-set!
                               _%table97803%_
                               _%probe97822%_
                               _%key97798%_)
                              (vector-set!
                               _%table97803%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97822%_ '1))
                               (_%class-specializer-table-update!97799%_
                                (vector-ref
                                 _%table97803%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe97822%_ '1))))))
                            (_%loop97819%_
                             (let ((_%next-probe97844%_
                                    (fx+ _%start97815%_
                                         _%i97824%_
                                         (fx* _%i97824%_ _%i97824%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97844%_ _%size97809%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97824%_ '1))
                             _%deleted97826%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab97752%_ _%key97754%_)
        (let ((_%table97757%_
               (let () (declare (not safe)) (&raw-table-table _%tab97752%_)))
              (_%seed97759%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97752%_))))
          (let* ((_%h97762%_
                  (fxxor (__class-specializer-hash-key _%key97754%_)
                         _%seed97759%_))
                 (_%size97765%_ (vector-length _%table97757%_))
                 (_%entries97768%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97765%_ '2)))
                 (_%start97771%_
                  (let ((__tmp102690
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97762%_ _%entries97768%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp102690 '1))))
            (let _%loop97775%_ ((_%probe97778%_ _%start97771%_)
                                (_%i97780%_ '1))
              (let ((_%k97783%_ (vector-ref _%table97757%_ _%probe97778%_)))
                (if (eq? _%k97783%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k97783%_ (macro-deleted-obj))
                        (_%loop97775%_
                         (let ((_%next-probe97788%_
                                (fx+ _%start97771%_
                                     _%i97780%_
                                     (fx* _%i97780%_ _%i97780%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97788%_ _%size97765%_))
                         (let () (declare (not safe)) (##fx+ _%i97780%_ '1)))
                        (if (eq? _%key97754%_ _%k97783%_)
                            (let ()
                              (vector-set!
                               _%table97757%_
                               _%probe97778%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table97757%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97778%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp102691
                                        (let ((__tmp102692
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab97752%_))))
                                          (declare (not safe))
                                          (##fx- __tmp102692 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab97752%_
                                    __tmp102691)))))
                            (_%loop97775%_
                             (let ((_%next-probe97794%_
                                    (fx+ _%start97771%_
                                         _%i97780%_
                                         (fx* _%i97780%_ _%i97780%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97794%_ _%size97765%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97780%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass97738%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97738%_ 'class))
            (let ((_%klass97742%_ _%klass97738%_))
              (__specialize-class _%klass97742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass97738%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass97720%_)
        (let* ((_%klass97723%_ _%klass97720%_)
               (_%$e97732%_ (__lookup-class-specializer _%klass97723%_)))
          (if _%$e97732%_
              _%$e97732%_
              (let ((_%method-table97736%_
                     (___specialize-class _%klass97723%_)))
                (__bind-class-specializer!
                 _%klass97723%_
                 _%method-table97736%_)
                _%method-table97736%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass97710%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97714%_ ()
            (if (let ((__tmp102693
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102693 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97714%_)))))
        (let ((_%method-table97718%_
               (class-specializer-table-ref
                __class-specializers
                _%klass97710%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table97718%_)))
    (define __bind-class-specializer!
      (lambda (_%klass97701%_ _%method-table97702%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again97706%_ ()
            (if (let ((__tmp102694
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp102694 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again97706%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass97701%_
         _%method-table97702%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass97685%_
               _%method-table97686%_
               _%method97687%_
               _%proc97688%_)
        (let ((_%$e97690%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table97686%_
                  _%method97687%_
                  '#f))))
          (if _%$e97690%_
              _%$e97690%_
              (let ((_%$e97693%_ (__lookup-method-specializer _%proc97688%_)))
                (if _%$e97693%_
                    ((lambda (_%specialize97696%_)
                       (let ((_%specialized-proc97698%_
                              (_%specialize97696%_
                               _%klass97685%_
                               _%method-table97686%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table97686%_
                          _%method97687%_
                          _%specialized-proc97698%_)))
                     _%$e97693%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table97686%_
                       _%method97687%_
                       _%proc97688%_))))))))
    (define ___specialize-class
      (lambda (_%klass97627%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97627%_ 'class))
            (if (__class-type-metaclass? _%klass97627%_)
                (let ((__method102542
                       (__method-ref _%klass97627%_ 'specialize-class)))
                  (if __method102542
                      (let ()
                        (declare (not safe))
                        (__method102542 _%klass97627%_))
                      (begin
                        (error '"Missing method"
                               _%klass97627%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp102695
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass97627%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp102695))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass97627%_)
                    (let ((_%method-table97633%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop97635%_ ((_%rest97637%_
                                           (__class-precedence-list
                                            _%klass97627%_)))
                        (let* ((_%rest9763897646%_ _%rest97637%_)
                               (_%else9764097654%_
                                (lambda () _%method-table97633%_))
                               (_%K9764297673%_
                                (lambda (_%rest97657%_ _%xklass97658%_)
                                  (let ((_%xmethod-table9765997661%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass97658%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9765997661%_
                                        (let* ((_%xmethod-table97664%_
                                                _%xmethod-table9765997661%_)
                                               (__tmp102696
                                                (lambda (_%g9766597668%_
                                                         _%g9766697670%_)
                                                  (__specialize-method
                                                   _%klass97627%_
                                                   _%method-table97633%_
                                                   _%g9766597668%_
                                                   _%g9766697670%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table97664%_
                                           __tmp102696))
                                        '#f))
                                  (_%loop97635%_ _%rest97657%_))))
                          (if (pair? _%rest9763897646%_)
                              (let ((_%hd9764397676%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9763897646%_)))
                                    (_%tl9764497678%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9763897646%_))))
                                (let* ((_%xklass97681%_ _%hd9764397676%_)
                                       (_%rest97683%_ _%tl9764497678%_))
                                  (_%K9764297673%_
                                   _%rest97683%_
                                   _%xklass97681%_)))
                              (_%else9764097654%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass97627%_))
                (__specialize-class (__shadow-class _%klass97627%_))
                (error '"bad class; cannot specialize" _%klass97627%_)))))
    (define seal-class!
      (lambda (_%klass97613%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97613%_ 'class))
            (let ((_%klass97617%_ _%klass97613%_))
              (__seal-class! _%klass97617%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass97613%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass97596%_)
        (let ((_%klass97599%_ _%klass97596%_))
          (if (__class-type-sealed? _%klass97599%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass97599%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass97599%_))
                (if (__class-type-metaclass? _%klass97599%_)
                    (let ((__method102543
                           (__method-ref _%klass97599%_ 'seal-class!)))
                      (if __method102543
                          (let ()
                            (declare (not safe))
                            (__method102543 _%klass97599%_))
                          (begin
                            (error '"Missing method"
                                   _%klass97599%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp102697
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97599%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp102697))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass97599%_)
                        (let ((_%method-table97611%_
                               (__specialize-class _%klass97599%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97599%_
                           _%method-table97611%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass97599%_))))))
    (define next-method
      (lambda (_%subklass97570%_ _%obj97571%_ _%id97572%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97570%_ 'class))
            (let ((_%subklass97576%_ _%subklass97570%_))
              (if (symbol? _%id97572%_)
                  (let ((_%id97586%_ _%id97572%_))
                    (__next-method _%subklass97576%_ _%obj97571%_ _%id97586%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id97572%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass97570%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass97507%_ _%obj97508%_ _%id97509%_)
        (let* ((_%subklass97512%_ _%subklass97507%_) (_%id97520%_ _%id97509%_))
          (letrec ((_%find-next-method97529%_
                    (lambda (_%klass97531%_)
                      (let _%lp97533%_ ((_%rest97535%_
                                         (class-precedence-list
                                          _%klass97531%_)))
                        (let* ((_%rest9753697544%_ _%rest97535%_)
                               (_%else9753897552%_ (lambda () '#f))
                               (_%K9754097558%_
                                (lambda (_%rest97555%_ _%klass97556%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass97512%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass97556%_)))
                                      (__mixin-find-method
                                       _%rest97555%_
                                       _%obj97508%_
                                       _%id97520%_)
                                      (_%lp97533%_ _%rest97555%_)))))
                          (if (pair? _%rest9753697544%_)
                              (let ((_%hd9754197561%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9753697544%_)))
                                    (_%tl9754297563%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9753697544%_))))
                                (let* ((_%klass97566%_ _%hd9754197561%_)
                                       (_%rest97568%_ _%tl9754297563%_))
                                  (_%K9754097558%_
                                   _%rest97568%_
                                   _%klass97566%_)))
                              (_%else9753897552%_)))))))
            (_%find-next-method97529%_ (class-of _%obj97508%_))))))
    (define call-next-method
      (lambda (_%subklass97480%_ _%obj97481%_ _%id97482%_ . _%args97483%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass97480%_ 'class))
            (let ((_%subklass97487%_ _%subklass97480%_))
              (if (symbol? _%id97482%_)
                  (let ((_%id97497%_ _%id97482%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass97487%_
                             _%obj97481%_
                             _%id97497%_
                             _%args97483%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id97482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass97480%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass97451%_ _%obj97452%_ _%id97453%_ . _%args97454%_)
        (let* ((_%subklass97457%_ _%subklass97451%_)
               (_%id97465%_ _%id97453%_)
               (_%$e97474%_
                (__next-method _%subklass97457%_ _%obj97452%_ _%id97465%_)))
          (if _%$e97474%_
              ((lambda (_%methodf97477%_)
                 (apply _%methodf97477%_ _%obj97452%_ _%args97454%_))
               _%$e97474%_)
              (error '"cannot find next method"
                     'object:
                     _%obj97452%_
                     'method:
                     _%id97465%_)))))
    (define write-style
      (lambda (_%we97449%_) (values (macro-writeenv-style _%we97449%_))))
    (define write-object
      (lambda (_%we97440%_ _%obj97441%_)
        (let ((_%$e97443%_ (__method-ref _%obj97441%_ ':wr)))
          (if _%$e97443%_
              ((lambda (_%method97446%_)
                 (_%method97446%_ _%obj97441%_ _%we97440%_))
               _%$e97443%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we97440%_ _%obj97441%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type97355%_)
        (letrec ((_%shadow-type-id97357%_
                  (lambda (_%type97438%_)
                    (let ((__tmp102698
                           (let ()
                             (declare (not safe))
                             (##type-name _%type97438%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp102698 '"::t"))))
                 (_%shadow-type-name97358%_
                  (lambda (_%type97436%_)
                    (let () (declare (not safe)) (##type-name _%type97436%_))))
                 (_%make-shadow-class97359%_
                  (lambda (_%type97428%_ _%precedence-list97429%_)
                    (let* ((_%super97431%_
                            (if (pair? _%precedence-list97429%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list97429%_))
                                      '())
                                '()))
                           (_%klass97433%_
                            (make-class-type
                             (_%shadow-type-id97357%_ _%type97428%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type97428%_))
                             _%super97431%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type97428%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp102699
                             (let ()
                               (declare (not safe))
                               (##type-id _%type97428%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp102699
                         _%klass97433%_))
                      _%klass97433%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again97363%_ ()
              (if (let ((__tmp102700
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp102700 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again97363%_)))))
          (let ((_%$e97367%_
                 (let ((__tmp102701
                        (let ()
                          (declare (not safe))
                          (##type-id _%type97355%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp102701 '#f))))
            (if _%$e97367%_
                ((lambda (_%klass97370%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass97370%_)
                 _%$e97367%_)
                (let _%loop97373%_ ((_%super97375%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type97355%_)))
                                    (_%hierarchy97376%_ '()))
                  (if (not _%super97375%_)
                      (let _%loop97379%_ ((_%rest97381%_ _%hierarchy97376%_)
                                          (_%precedence-list97382%_ '()))
                        (let* ((_%rest9738397391%_ _%rest97381%_)
                               (_%else9738597401%_
                                (lambda ()
                                  (let ((_%klass97399%_
                                         (_%make-shadow-class97359%_
                                          _%type97355%_
                                          _%precedence-list97382%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass97399%_)))
                               (_%K9738797415%_
                                (lambda (_%rest97404%_ _%type97405%_)
                                  (let ((_%$e97407%_
                                         (let ((__tmp102702
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type97405%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp102702
                                            '#f))))
                                    (if _%$e97407%_
                                        ((lambda (_%klass97410%_)
                                           (_%loop97379%_
                                            _%rest97404%_
                                            (cons _%klass97410%_
                                                  _%precedence-list97382%_)))
                                         _%$e97407%_)
                                        (let ((_%klass97413%_
                                               (_%make-shadow-class97359%_
                                                _%type97405%_
                                                _%precedence-list97382%_)))
                                          (_%loop97379%_
                                           _%rest97404%_
                                           (cons _%klass97413%_
                                                 _%precedence-list97382%_))))))))
                          (if (pair? _%rest9738397391%_)
                              (let ((_%hd9738897418%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9738397391%_)))
                                    (_%tl9738997420%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9738397391%_))))
                                (let* ((_%type97423%_ _%hd9738897418%_)
                                       (_%rest97425%_ _%tl9738997420%_))
                                  (_%K9738797415%_
                                   _%rest97425%_
                                   _%type97423%_)))
                              (_%else9738597401%_))))
                      (_%loop97373%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super97375%_))
                       (cons _%super97375%_ _%hierarchy97376%_)))))))))
    (define __type
      (let* ((_%tb97344%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e97346%_ _%tb97344%_))
        (if (eq? '2 _%$e97346%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e97346%_)
                (let ((_%flonum-self-tagging-tags97349%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits97350%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e97352%_ _%flonum-self-tagging-tags97349%_))
                    (if (eq? '0 _%$e97352%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits97350%_ '2))
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
                        (if (eq? '1 _%$e97352%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits97350%_ '2))
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
                            (if (eq? '2 _%$e97352%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e97352%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e97352%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags97349%_))))))))
                (error '"unexpected tag width" _%tb97344%_)))))
    (define __class
      (let* ((_%len97297%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv97299%_
              (let () (declare (not safe)) (##make-vector _%len97297%_ '#f))))
        (let _%loop97302%_ ((_%i97304%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i97304%_ _%len97297%_))
              (let* ((_%t97306%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i97304%_)))
                     (_%f97341%_
                      (if (eq? _%t97306%_ 'undefined)
                          (lambda (_%obj97309%_)
                            (error '"object type is undefined" _%obj97309%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t97306%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj97312%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t97306%_))
                              (if (eq? _%t97306%_ 'subtyped)
                                  (lambda (_%obj97316%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st97319%_
                                           (##subtype _%obj97316%_)))
                                      (if (##fx= _%st97319%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass97322%_
                                                 (##structure-type
                                                  _%obj97316%_)))
                                            (if (##structure-instance-of?
                                                 _%klass97322%_
                                                 'class)
                                                _%klass97322%_
                                                (__shadow-class
                                                 _%klass97322%_)))
                                          (if (##fx= _%st97319%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj97316%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e97325%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st97319%_)))
                                                (if _%$e97325%_
                                                    (__system-class
                                                     _%$e97325%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st97319%_
                                                           'object:
                                                           _%obj97316%_)))))))
                                  (if (eq? _%t97306%_ 'special)
                                      (lambda (_%obj97330%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj97330%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj97330%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj97330%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj97330%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj97330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj97330%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t97306%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv97299%_ _%i97304%_ _%f97341%_))
                (_%loop97302%_
                 (let () (declare (not safe)) (##fx+ _%i97304%_ '1))))
              _%cv97299%_))))
    (define type-of
      (lambda (_%obj97293%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj97293%_)))))
    (define class-of
      (lambda (_%obj97284%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t97288%_ (##type _%obj97284%_))
                 (_%f97290%_ (##vector-ref __class _%t97288%_)))
            (_%f97290%_ _%obj97284%_)))))
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
      (lambda (_%id97278%_)
        (let ((_%$e97280%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id97278%_ '#f))))
          (if _%$e97280%_
              _%$e97280%_
              (error '"unknown system class" _%id97278%_)))))
    (define __make-system-class
      (lambda (_%id97273%_ _%super97274%_)
        (let ((_%klass97276%_
               (make-class-type
                _%id97273%_
                _%id97273%_
                _%super97274%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id97273%_ _%klass97276%_))
          _%klass97276%_)))))
