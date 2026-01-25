(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1769384627)
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
    (define class-type-flag-acyclic '16384)
    (define t::t
      (let ((_%flags110799%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110800%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110801%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags110799%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table110801%_
           _%properties110800%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots110775%_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector110777%_ (list->vector (cons '#f _%slots110775%_)))
             (_%slot-table110784%_
              (let ((_%slot-table110779%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp112374
                       (lambda (_%slot110781%_ _%field110782%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110779%_
                            _%slot110781%_
                            _%field110782%_))
                         (let ((__tmp112375
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110781%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110779%_
                            __tmp112375
                            _%field110782%_))))
                      (__tmp112372
                       (let ((__tmp112373
                              (let ()
                                (declare (not safe))
                                (##length _%slots110775%_))))
                         (declare (not safe))
                         (##iota __tmp112373 '1))))
                  (declare (not safe))
                  (##for-each __tmp112374 _%slots110775%_ __tmp112372))
                _%slot-table110779%_))
             (_%flags110786%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110792%_
              (list->vector
               (let ((__tmp112376
                      (map (lambda (_%g110787110789%_)
                             (list _%g110787110789%_ '5 '#f))
                           (drop _%slots110775%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp112376))))
             (_%properties110794%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110775%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t110796%_
              (let ((__tmp112377 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags110786%_
                 ##type-type
                 _%fields110792%_
                 __tmp112377
                 _%slot-vector110777%_
                 _%slot-table110784%_
                 _%properties110794%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t110796%_ _%t110796%_))
        _%t110796%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags110771%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110772%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110773%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp112378 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags110771%_
           '#f
           '#()
           __tmp112378
           '#(#f)
           _%slot-table110773%_
           _%properties110772%_
           '#f
           '#f
           '#f
           '#f))))
    (define class-type
      (lambda (_%klass110757%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110757%_ 'class))
            (let ((_%klass110761%_ _%klass110757%_))
              (__class-type _%klass110761%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass110757%_)
              '#!void))))
    (define __class-type
      (lambda (_%klass110745%_)
        (let ((_%klass110748%_ _%klass110745%_))
          (declare (not safe))
          (##structure-type _%klass110748%_))))
    (define class-type?
      (lambda (_%obj110743%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj110743%_ 'class))))
    (define class-type=?
      (lambda (_%x110718%_ _%y110719%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x110718%_ 'class))
            (let ((_%x110723%_ _%x110718%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y110719%_ 'class))
                  (let ((_%y110733%_ _%y110719%_))
                    (__class-type=? _%x110723%_ _%y110733%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y110719%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x110718%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x110697%_ _%y110698%_)
        (let* ((_%x110701%_ _%x110697%_) (_%y110709%_ _%y110698%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x110701%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y110709%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type110683%_)
        (if (let () (declare (not safe)) (##type? _%type110683%_))
            (let ((_%type110687%_ _%type110683%_))
              (__type-opaque? _%type110687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type110683%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type110671%_)
        (let* ((_%type110674%_ _%type110671%_)
               (__tmp112379
                (let ((__tmp112380
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110674%_))))
                  (declare (not safe))
                  (##fxand __tmp112380 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp112379 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass110657%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110657%_ 'class))
            (let ((_%klass110661%_ _%klass110657%_))
              (__class-type-opaque? _%klass110661%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass110657%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass110645%_)
        (let* ((_%klass110648%_ _%klass110645%_)
               (__tmp112381
                (let ((__tmp112382
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110648%_))))
                  (declare (not safe))
                  (##fxand __tmp112382 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp112381 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type110631%_)
        (if (let () (declare (not safe)) (##type? _%type110631%_))
            (let ((_%type110635%_ _%type110631%_))
              (__type-extensible? _%type110635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type110631%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type110619%_)
        (let* ((_%type110622%_ _%type110619%_)
               (__tmp112383
                (let ((__tmp112384
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110622%_))))
                  (declare (not safe))
                  (##fxand __tmp112384 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp112383 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type110605%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type110605%_ 'class))
            (let ((_%type110609%_ _%type110605%_))
              (__class-type-final? _%type110609%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type110605%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type110593%_)
        (let* ((_%type110596%_ _%type110593%_)
               (__tmp112385
                (let ((__tmp112386
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110596%_))))
                  (declare (not safe))
                  (##fxand __tmp112386 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp112385 '0))))
    (define class-type-struct?
      (lambda (_%klass110579%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110579%_ 'class))
            (let ((_%klass110583%_ _%klass110579%_))
              (__class-type-struct? _%klass110583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass110579%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass110567%_)
        (let* ((_%klass110570%_ _%klass110567%_)
               (__tmp112387
                (let ((__tmp112388
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110570%_))))
                  (declare (not safe))
                  (##fxand __tmp112388 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp112387 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass110553%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110553%_ 'class))
            (let ((_%klass110557%_ _%klass110553%_))
              (__class-type-sealed? _%klass110557%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass110553%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass110541%_)
        (let* ((_%klass110544%_ _%klass110541%_)
               (__tmp112389
                (let ((__tmp112390
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110544%_))))
                  (declare (not safe))
                  (##fxand __tmp112390 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp112389 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass110527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110527%_ 'class))
            (let ((_%klass110531%_ _%klass110527%_))
              (__class-type-metaclass? _%klass110531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass110527%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass110515%_)
        (let* ((_%klass110518%_ _%klass110515%_)
               (__tmp112391
                (let ((__tmp112392
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110518%_))))
                  (declare (not safe))
                  (##fxand __tmp112392 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp112391 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass110501%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110501%_ 'class))
            (let ((_%klass110505%_ _%klass110501%_))
              (__class-type-system? _%klass110505%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass110501%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass110489%_)
        (let* ((_%klass110492%_ _%klass110489%_)
               (__tmp112393
                (let ((__tmp112394
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110492%_))))
                  (declare (not safe))
                  (##fxand __tmp112394 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp112393 class-type-flag-system))))
    (define class-type-acyclic?
      (lambda (_%klass110475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110475%_ 'class))
            (let ((_%klass110479%_ _%klass110475%_))
              (__class-type-acyclic? _%klass110479%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass110475%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass110463%_)
        (let* ((_%klass110466%_ _%klass110463%_)
               (__tmp112395
                (let ((__tmp112396
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110466%_))))
                  (declare (not safe))
                  (##fxand __tmp112396 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp112395 class-type-flag-acyclic))))
    (define make-class-type-descriptor
      (lambda (_%type-id110344%_
               _%type-name110345%_
               _%type-super110346%_
               _%precedence-list110347%_
               _%slot-vector110348%_
               _%properties110349%_
               _%constructor110350%_
               _%slot-table110351%_
               _%methods110352%_)
        (letrec ((_%make-props!110355%_
                  (lambda (_%key110432%_)
                    (letrec* ((_%ht110434%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!110435%_
                               (lambda (_%ht110456%_ _%slots110457%_)
                                 (for-each
                                  (lambda (_%g110458110460%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht110456%_
                                       _%g110458110460%_
                                       '#t)))
                                  _%slots110457%_)))
                              (_%put-alist!110436%_
                               (lambda (_%ht110445%_
                                        _%key110446%_
                                        _%alist110447%_)
                                 (let ((_%$e110449%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key110446%_
                                           _%alist110447%_))))
                                   (if _%$e110449%_
                                       ((lambda (_%g110451110453%_)
                                          (_%put-slots!110435%_
                                           _%ht110445%_
                                           _%g110451110453%_))
                                        _%$e110449%_)
                                       '#!void)))))
                      (_%put-alist!110436%_
                       _%ht110434%_
                       _%key110432%_
                       _%properties110349%_)
                      (for-each
                       (lambda (_%mixin110438%_)
                         (let ((_%alist110440%_
                                (##structure-ref
                                 _%mixin110438%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist110440%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key110432%_
                                           _%alist110440%_))))
                               (_%put-slots!110435%_
                                _%ht110434%_
                                (class-type-slot-list _%mixin110438%_))
                               (_%put-alist!110436%_
                                _%ht110434%_
                                _%key110432%_
                                _%alist110440%_))))
                       _%precedence-list110347%_)
                      _%ht110434%_))))
          (let* ((_%transparent?110357%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties110349%_)))
                 (_%all-slots-printable?110362%_
                  (let ((_%$e110359%_ _%transparent?110357%_))
                    (if _%$e110359%_
                        _%$e110359%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties110349%_))))))
                 (_%printable110364%_
                  (if (not _%all-slots-printable?110362%_)
                      (_%make-props!110355%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?110369%_
                  (let ((_%$e110366%_ _%transparent?110357%_))
                    (if _%$e110366%_
                        _%$e110366%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties110349%_))))))
                 (_%equalable110371%_
                  (if (not _%all-slots-equalable?110369%_)
                      (_%make-props!110355%_ 'equal:)
                      '#f))
                 (_%first-new-field110373%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super110346%_ 'class))
                      (let ((__tmp112397
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super110346%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp112397))
                      '1))
                 (_%field-info-length110375%_
                  (let ((__tmp112398
                         (let ((__tmp112399
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector110348%_))))
                           (declare (not safe))
                           (##fx- __tmp112399 _%first-new-field110373%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp112398)))
                 (_%field-info110377%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length110375%_ '#f)))
                 (_%struct?110379%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties110349%_)))
                 (_%final?110381%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties110349%_)))
                 (_%metaclass110388%_
                  (let ((_%metaclass110382110384%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties110349%_))))
                    (if _%metaclass110382110384%_
                        (let ((_%metaclass110386%_ _%metaclass110382110384%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass110386%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id110344%_
                                     'metaclass:
                                     _%metaclass110386%_))
                          _%metaclass110386%_)
                        '#f)))
                 (_%system?110390%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties110349%_)))
                 (_%opaque?110398%_
                  (if (or _%transparent?110357%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties110349%_)))
                      '#f
                      (let ((_%$e110395%_ (not _%type-super110346%_)))
                        (if _%$e110395%_
                            _%$e110395%_
                            (__type-opaque? _%type-super110346%_)))))
                 (_%acyclic?110400%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties110349%_)))
                 (_%type-flags110402%_
                  (let ((__tmp112405
                         (if _%final?110381%_ '0 type-flag-extensible))
                        (__tmp112404
                         (if _%opaque?110398%_ type-flag-opaque '0))
                        (__tmp112403
                         (if _%struct?110379%_ class-type-flag-struct '0))
                        (__tmp112402
                         (if _%metaclass110388%_ class-type-flag-metaclass '0))
                        (__tmp112401
                         (if _%system?110390%_ class-type-flag-system '0))
                        (__tmp112400
                         (if _%acyclic?110400%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp112405
                             __tmp112404
                             __tmp112403
                             __tmp112402
                             __tmp112401
                             __tmp112400)))
                 (_%precedence-list110410%_
                  (let ((_%$e110404%_ (memq t::t _%precedence-list110347%_)))
                    (if _%$e110404%_
                        ((lambda (_%tail110407%_)
                           (if (null? (cdr _%tail110407%_))
                               _%precedence-list110347%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list110347%_)))
                         _%$e110404%_)
                        (let ((__tmp112406 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list110347%_ __tmp112406))))))
            (let _%loop110413%_ ((_%i110415%_ _%first-new-field110373%_)
                                 (_%j110416%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j110416%_ _%field-info-length110375%_))
                  (let* ((_%slot110418%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector110348%_ _%i110415%_)))
                         (_%flags110426%_
                          (if _%transparent?110357%_
                              '0
                              (let ((__tmp112408
                                     (if (or _%all-slots-printable?110362%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable110364%_
                                                _%slot110418%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp112407
                                     (if (or _%all-slots-equalable?110369%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable110371%_
                                                _%slot110418%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp112408 __tmp112407)))))
                    (vector-set!
                     _%field-info110377%_
                     _%j110416%_
                     _%slot110418%_)
                    (vector-set!
                     _%field-info110377%_
                     (let () (declare (not safe)) (##fx+ _%j110416%_ '1))
                     _%flags110426%_)
                    (_%loop110413%_
                     (let () (declare (not safe)) (##fx+ _%i110415%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j110416%_ '3))))
                  '#!void))
            (if _%metaclass110388%_
                (let ((_%val110429%_
                       (make-instance
                        _%metaclass110388%_
                        _%type-id110344%_
                        _%type-name110345%_
                        _%type-flags110402%_
                        _%type-super110346%_
                        _%field-info110377%_
                        _%precedence-list110410%_
                        _%slot-vector110348%_
                        _%slot-table110351%_
                        _%properties110349%_
                        _%constructor110350%_
                        _%methods110352%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val110429%_ 'class))
                      _%val110429%_
                      (error '"bad cast" class::t _%val110429%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id110344%_
                   _%type-name110345%_
                   _%type-flags110402%_
                   _%type-super110346%_
                   _%field-info110377%_
                   _%precedence-list110410%_
                   _%slot-vector110348%_
                   _%slot-table110351%_
                   _%properties110349%_
                   _%constructor110350%_
                   _%methods110352%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass110342%_)
        (##structure-ref _%klass110342%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass110340%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110340%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass110337%_ _%val110338%_)
        (##structure-set! _%klass110337%_ _%val110338%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass110332%_ _%val110334%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110332%_
           _%val110334%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass110330%_)
        (##structure-ref _%klass110330%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass110328%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110328%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass110325%_ _%val110326%_)
        (##structure-set! _%klass110325%_ _%val110326%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass110320%_ _%val110322%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110320%_
           _%val110322%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass110318%_)
        (##structure-ref _%klass110318%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass110316%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110316%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass110313%_ _%val110314%_)
        (##structure-set! _%klass110313%_ _%val110314%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass110308%_ _%val110310%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110308%_
           _%val110310%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass110306%_)
        (##structure-ref _%klass110306%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass110304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110304%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass110301%_ _%val110302%_)
        (##structure-set! _%klass110301%_ _%val110302%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass110296%_ _%val110298%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110296%_
           _%val110298%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass110294%_)
        (##structure-ref _%klass110294%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass110292%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110292%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass110289%_ _%val110290%_)
        (##structure-set! _%klass110289%_ _%val110290%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass110284%_ _%val110286%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110284%_
           _%val110286%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass110282%_)
        (##structure-ref _%klass110282%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass110280%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110280%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass110277%_ _%val110278%_)
        (##structure-set!
         _%klass110277%_
         _%val110278%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass110272%_ _%val110274%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110272%_
           _%val110274%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass110270%_)
        (##structure-ref _%klass110270%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass110268%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110268%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass110265%_ _%val110266%_)
        (##structure-set!
         _%klass110265%_
         _%val110266%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass110260%_ _%val110262%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110260%_
           _%val110262%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass110258%_)
        (##structure-ref _%klass110258%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass110256%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110256%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass110253%_ _%val110254%_)
        (##structure-set!
         _%klass110253%_
         _%val110254%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass110248%_ _%val110250%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110248%_
           _%val110250%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass110246%_)
        (##structure-ref _%klass110246%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass110244%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110244%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass110241%_ _%val110242%_)
        (##structure-set!
         _%klass110241%_
         _%val110242%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass110236%_ _%val110238%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110236%_
           _%val110238%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass110234%_)
        (##structure-ref _%klass110234%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass110232%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110232%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass110229%_ _%val110230%_)
        (##structure-set!
         _%klass110229%_
         _%val110230%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass110224%_ _%val110226%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110224%_
           _%val110226%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass110222%_)
        (##structure-ref _%klass110222%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass110220%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110220%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass110217%_ _%val110218%_)
        (##structure-set!
         _%klass110217%_
         _%val110218%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass110212%_ _%val110214%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110212%_
           _%val110214%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass110210%_)
        (##structure-ref _%klass110210%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass110208%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110208%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass110205%_ _%val110206%_)
        (##structure-set!
         _%klass110205%_
         _%val110206%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass110200%_ _%val110202%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110200%_
           _%val110202%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass110198%_)
        (##structure-ref _%klass110198%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass110196%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110196%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass110193%_ _%val110194%_)
        (##structure-set!
         _%klass110193%_
         _%val110194%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass110188%_ _%val110190%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110188%_
           _%val110190%_
           '13
           class::t
           'interface))))
    (define class-type-slot-list
      (lambda (_%klass110174%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110174%_ 'class))
            (let ((_%klass110178%_ _%klass110174%_))
              (__class-type-slot-list _%klass110178%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass110174%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass110162%_)
        (let ((_%klass110165%_ _%klass110162%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass110165%_ '7 '#f '#f))
           '1))))
    (define class-type-field-count
      (lambda (_%klass110148%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110148%_ 'class))
            (let ((_%klass110152%_ _%klass110148%_))
              (__class-type-field-count _%klass110152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass110148%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass110136%_)
        (let* ((_%klass110139%_ _%klass110136%_)
               (__tmp112409
                (let ((__tmp112410
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass110139%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp112410))))
          (declare (not safe))
          (##fx- __tmp112409 '1))))
    (define class-type-seal!
      (lambda (_%klass110122%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110122%_ 'class))
            (let ((_%klass110126%_ _%klass110122%_))
              (__class-type-seal! _%klass110126%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass110122%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass110110%_)
        (let ((_%klass110113%_ _%klass110110%_))
          (let ((__tmp112411
                 (let ((__tmp112412
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass110113%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp112412))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass110113%_
             __tmp112411
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-printable-slots
      (lambda (_%klass110096%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110096%_ 'class))
            (let ((_%klass110100%_ _%klass110096%_))
              (__class-type-printable-slots _%klass110100%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass110096%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass110029%_)
        (let ((_%klass110032%_ _%klass110029%_))
          (letrec ((_%get-field-vector110041%_
                    (lambda (_%type110080%_)
                      (let _%loop110082%_ ((_%type110084%_ _%type110080%_))
                        (let* ((_%fields110086%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type110084%_)))
                               (_%$e110088%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type110084%_))))
                          (if _%$e110088%_
                              ((lambda (_%super110091%_)
                                 (let ((_%super-fields110093%_
                                        (_%loop110082%_ _%super110091%_)))
                                   (vector-append
                                    _%super-fields110093%_
                                    _%fields110086%_)))
                               _%$e110088%_)
                              _%fields110086%_)))))
                   (_%get-printable-slot-alist110042%_
                    (lambda (_%type110063%_)
                      (let* ((_%fields110065%_
                              (_%get-field-vector110041%_ _%type110063%_))
                             (_%count110067%_
                              (vector-length _%fields110065%_)))
                        (let _%loop110070%_ ((_%i110072%_ '3)
                                             (_%offset110073%_ '1)
                                             (_%r110074%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i110072%_ _%count110067%_))
                              (let ((_%slot-name110076%_
                                     (vector-ref _%fields110065%_ _%i110072%_))
                                    (_%slot-flags110077%_
                                     (vector-ref
                                      _%fields110065%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i110072%_ '1))))
                                    (_%next-i110078%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i110072%_ '2))))
                                (if (let ((__tmp112413
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags110077%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp112413 '0))
                                    (_%loop110070%_
                                     _%next-i110078%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset110073%_ '1))
                                     _%r110074%_)
                                    (_%loop110070%_
                                     _%next-i110078%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset110073%_ '1))
                                     (cons (cons _%slot-name110076%_
                                                 _%offset110073%_)
                                           _%r110074%_))))
                              (reverse! _%r110074%_))))))
                   (_%get-printable-slots!110043%_
                    (lambda (_%klass110058%_ _%type110059%_)
                      (let ((_%printable110061%_
                             (_%get-printable-slot-alist110042%_
                              _%type110059%_)))
                        (##structure-set!
                         _%klass110058%_
                         (cons (cons 'printable-slots: _%printable110061%_)
                               (##structure-ref
                                _%klass110058%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable110061%_))))
            (let* ((_%props110045%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass110032%_ '9 '#f '#f)))
                   (_%$e110047%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props110045%_))))
              (if _%$e110047%_
                  _%$e110047%_
                  (let ((_%$e110050%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props110045%_))))
                    (if _%$e110050%_
                        ((lambda (_%g110052110054%_)
                           (_%get-printable-slots!110043%_
                            _%klass110032%_
                            _%g110052110054%_))
                         _%$e110050%_)
                        (_%get-printable-slots!110043%_
                         _%klass110032%_
                         _%klass110032%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct110004%_ _%maybe-super-struct110005%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct110004%_ 'class))
            (let ((_%maybe-sub-struct110009%_ _%maybe-sub-struct110004%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct110005%_
                     'class))
                  (let ((_%maybe-super-struct110019%_
                         _%maybe-super-struct110005%_))
                    (__substruct?
                     _%maybe-sub-struct110009%_
                     _%maybe-super-struct110019%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct110005%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct110004%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct109973%_ _%maybe-super-struct109974%_)
        (let* ((_%maybe-sub-struct109977%_ _%maybe-sub-struct109973%_)
               (_%maybe-super-struct109985%_ _%maybe-super-struct109974%_)
               (_%maybe-super-struct-id109994%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct109985%_))))
          (let _%lp109996%_ ((_%super-struct109998%_
                              _%maybe-sub-struct109977%_))
            (if (not _%super-struct109998%_)
                '#f
                (if (eq? _%maybe-super-struct-id109994%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct109998%_)))
                    '#t
                    (_%lp109996%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct109998%_)))))))))
    (define base-struct/1
      (lambda (_%klass109968%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109968%_ 'class))
            (if (__class-type-struct? _%klass109968%_)
                _%klass109968%_
                (let () (declare (not safe)) (##type-super _%klass109968%_)))
            (if (not _%klass109968%_)
                '#f
                (error '"not a class or false" _%klass109968%_)))))
    (define base-struct/2
      (lambda (_%klass1109953%_ _%klass2109954%_)
        (let ((_%s1109956%_ (base-struct/1 _%klass1109953%_))
              (_%s2109957%_ (base-struct/1 _%klass2109954%_)))
          (if (or (not _%s1109956%_)
                  (and _%s2109957%_ (substruct? _%s1109956%_ _%s2109957%_)))
              _%s2109957%_
              (if (or (not _%s2109957%_)
                      (and _%s1109956%_
                           (substruct? _%s2109957%_ _%s1109956%_)))
                  _%s1109956%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1109953%_
                         _%klass2109954%_
                         _%s1109956%_
                         _%s2109957%_))))))
    (define base-struct/list
      (lambda (_%all-supers109838%_)
        (let* ((_%all-supers109839109864%_ _%all-supers109838%_)
               (_%E109844109868%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers109839109864%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K109862109950%_ (lambda () '#f))
                (_%K109859109936%_
                 (lambda (_%x109934%_) (base-struct/1 _%x109934%_)))
                (_%K109854109913%_
                 (lambda (_%y109910%_ _%x109911%_)
                   (base-struct/2 _%x109911%_ _%y109910%_)))
                (_%K109845109875%_
                 (lambda (_%y109872%_ _%x109873%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x109873%_ _%y109872%_)))))
            (let* ((_%__match112222112223%_
                    (lambda (_%hd109846109878%_ _%tl109847109880%_)
                      (let ((_%x109883%_ _%hd109846109878%_))
                        (letrec ((_%splice-rest109849109885%_
                                  (lambda (_%rest109853109892%_ _%y109894%_)
                                    (if (null? _%rest109853109892%_)
                                        (_%K109845109875%_
                                         _%y109894%_
                                         _%x109883%_)
                                        (_%E109844109868%_))))
                                 (_%splice-try109851109887%_
                                  (lambda (_%hd109852109896%_
                                           _%rest109853109898%_
                                           _%y109848109899%_)
                                    (let ((_%y109901%_ _%hd109852109896%_))
                                      (_%splice-loop109850109889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest109853109898%_))
                                       (cons _%y109901%_ _%y109848109899%_)))))
                                 (_%splice-loop109850109889%_
                                  (lambda (_%rest109853109903%_
                                           _%y109848109904%_)
                                    (if (pair? _%rest109853109903%_)
                                        (_%splice-try109851109887%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest109853109903%_))
                                         _%rest109853109903%_
                                         _%y109848109904%_)
                                        (_%splice-rest109849109885%_
                                         _%rest109853109903%_
                                         (reverse _%y109848109904%_))))))
                          (_%splice-loop109850109889%_
                           _%tl109847109880%_
                           '())))))
                   (_%try-match109841109946%_
                    (lambda ()
                      (if (pair? _%all-supers109839109864%_)
                          (let ((_%tl109861109941%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers109839109864%_)))
                                (_%hd109860109939%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers109839109864%_))))
                            (if (null? _%tl109861109941%_)
                                (let ((_%x109944%_ _%hd109860109939%_))
                                  (base-struct/1 _%x109944%_))
                                (if (pair? _%tl109861109941%_)
                                    (let ((_%tl109858109925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl109861109941%_)))
                                          (_%hd109857109923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl109861109941%_))))
                                      (if (null? _%tl109858109925%_)
                                          (let ((_%x109921%_
                                                 _%hd109860109939%_)
                                                (_%y109928%_
                                                 _%hd109857109923%_))
                                            (_%K109854109913%_
                                             _%y109928%_
                                             _%x109921%_))
                                          (_%__match112222112223%_
                                           _%hd109860109939%_
                                           _%tl109861109941%_)))
                                    (_%__match112222112223%_
                                     _%hd109860109939%_
                                     _%tl109861109941%_))))
                          (_%E109844109868%_)))))
              (if (null? _%all-supers109839109864%_)
                  (_%K109862109950%_)
                  (_%try-match109841109946%_)))))))
    (define base-struct
      (lambda _%all-supers109836%_ (base-struct/list _%all-supers109836%_)))
    (define find-super-constructor
      (lambda (_%super109787%_)
        (let _%lp109789%_ ((_%rest109791%_ _%super109787%_)
                           (_%constructor109792%_ '#f))
          (let* ((_%rest109793109801%_ _%rest109791%_)
                 (_%else109795109809%_ (lambda () _%constructor109792%_))
                 (_%K109797109824%_
                  (lambda (_%rest109812%_ _%hd109813%_)
                    (let ((_%$e109815%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd109813%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e109815%_
                          ((lambda (_%xconstructor109818%_)
                             (if (or (not _%constructor109792%_)
                                     (eq? _%constructor109792%_
                                          _%xconstructor109818%_))
                                 (_%lp109789%_
                                  _%rest109812%_
                                  _%xconstructor109818%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor109792%_
                                        _%xconstructor109818%_)))
                           _%$e109815%_)
                          (_%lp109789%_
                           _%rest109812%_
                           _%constructor109792%_))))))
            (if (pair? _%rest109793109801%_)
                (let ((_%hd109798109827%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109793109801%_)))
                      (_%tl109799109829%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109793109801%_))))
                  (let* ((_%hd109832%_ _%hd109798109827%_)
                         (_%rest109834%_ _%tl109799109829%_))
                    (_%K109797109824%_ _%rest109834%_ _%hd109832%_)))
                (_%else109795109809%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list109763%_ _%direct-slots109764%_)
        (let* ((_%next-slot109766%_ '1)
               (_%slot-table109768%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots109770%_ '(__class))
               (_%process-slot109774%_
                (lambda (_%slot109772%_)
                  (if (symbol? _%slot109772%_)
                      '#!void
                      (error '"invalid slot name" _%slot109772%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table109768%_
                              _%slot109772%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109768%_
                           _%slot109772%_
                           _%next-slot109766%_))
                        (let ((__tmp112414
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot109772%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109768%_
                           __tmp112414
                           _%next-slot109766%_))
                        (set! _%r-slots109770%_
                              (cons _%slot109772%_ _%r-slots109770%_))
                        (set! _%next-slot109766%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot109766%_ '1))))
                      '#!void)))
               (_%process-slots109780%_
                (lambda (_%g109775109777%_)
                  (for-each _%process-slot109774%_ _%g109775109777%_))))
          (let ((__tmp112416
                 (lambda (_%mixin109783%_)
                   (_%process-slots109780%_
                    (let ((__tmp112417
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin109783%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp112417 '())))))
                (__tmp112415 (reverse _%class-precedence-list109763%_)))
            (declare (not safe))
            (##for-each __tmp112416 __tmp112415))
          (_%process-slots109780%_ _%direct-slots109764%_)
          (let ((_%slot-vector109785%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots109770%_)))))
            (values _%slot-vector109785%_ _%slot-table109768%_)))))
    (define make-class-type
      (lambda (_%id109688%_
               _%name109689%_
               _%direct-supers109690%_
               _%direct-slots109691%_
               _%properties109692%_
               _%constructor109693%_)
        (if (symbol? _%id109688%_)
            (let ((_%id109697%_ _%id109688%_))
              (if (symbol? _%name109689%_)
                  (let ((_%name109707%_ _%name109689%_))
                    (if (list? _%direct-supers109690%_)
                        (let ((_%direct-supers109717%_
                               _%direct-supers109690%_))
                          (if (list? _%direct-slots109691%_)
                              (let ((_%direct-slots109727%_
                                     _%direct-slots109691%_))
                                (if (list? _%properties109692%_)
                                    (let ((_%properties109737%_
                                           _%properties109692%_))
                                      (if ((lambda (_%$obj109746%_)
                                             (or (not _%$obj109746%_)
                                                 (symbol? _%$obj109746%_)))
                                           _%constructor109693%_)
                                          (let ((_%constructor109753%_
                                                 _%constructor109693%_))
                                            (__make-class-type
                                             _%id109697%_
                                             _%name109707%_
                                             _%direct-supers109717%_
                                             _%direct-slots109727%_
                                             _%properties109737%_
                                             _%constructor109753%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor109693%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties109692%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots109691%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers109690%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name109689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id109688%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id109557%_
               _%name109558%_
               _%direct-supers109559%_
               _%direct-slots109560%_
               _%properties109561%_
               _%constructor109562%_)
        (let* ((_%id109565%_ _%id109557%_)
               (_%name109573%_ _%name109558%_)
               (_%direct-supers109581%_ _%direct-supers109559%_)
               (_%direct-slots109589%_ _%direct-slots109560%_)
               (_%properties109597%_ _%properties109561%_)
               (_%constructor109605%_ _%constructor109562%_))
          (let ((_%$e109617%_
                 (let ((__tmp112418
                        (lambda (_%$obj109614%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj109614%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp112418 _%direct-supers109581%_))))
            (if _%$e109617%_
                ((lambda (_%g109619109621%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g109619109621%_))
                 _%$e109617%_)
                (let ((_%$e109624%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers109581%_))))
                  (if _%$e109624%_
                      ((lambda (_%g109626109628%_)
                         (error '"Cannot extend final class"
                                _%g109626109628%_))
                       _%$e109624%_)
                      '#!void))))
          (let ((_g112419_ (compute-precedence-list _%direct-supers109581%_)))
            (begin
              (let ((_g112420_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g112419_)
                           (##values-length _g112419_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g112420_ 2)))
                    (error "Context expects 2 values" _g112420_)))
              (let ((_%precedence-list109631%_
                     (let () (declare (not safe)) (##values-ref _g112419_ 0)))
                    (_%struct-super109632%_
                     (let () (declare (not safe)) (##values-ref _g112419_ 1))))
                (let ((_g112421_
                       (compute-class-slots
                        _%precedence-list109631%_
                        _%direct-slots109589%_)))
                  (begin
                    (let ((_g112422_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g112421_)
                                 (##values-length _g112421_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g112422_ 2)))
                          (error "Context expects 2 values" _g112422_)))
                    (let ((_%slot-vector109634%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g112421_ 0)))
                          (_%slot-table109635%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g112421_ 1))))
                      (let* ((_%properties109637%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots109589%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers109581%_)
                                          _%properties109597%_)))
                             (_%constructor*109642%_
                              (let ((_%$e109639%_ _%constructor109605%_))
                                (if _%$e109639%_
                                    _%$e109639%_
                                    (find-super-constructor
                                     _%direct-supers109581%_))))
                             (_%precedence-list109685%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties109637%_))
                                      (memq object::t
                                            _%precedence-list109631%_))
                                  _%precedence-list109631%_
                                  (let _%loop109647%_ ((_%tail109649%_
                                                        _%precedence-list109631%_)
                                                       (_%head109650%_ '()))
                                    (let* ((_%tail109651109659%_
                                            _%tail109649%_)
                                           (_%else109653109667%_
                                            (lambda ()
                                              (let ((__tmp112423
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp112423
                                                 _%head109650%_))))
                                           (_%K109655109673%_
                                            (lambda (_%rest109670%_
                                                     _%hd109671%_)
                                              (if (eq? _%hd109671%_ t::t)
                                                  (let ((__tmp112424
                                                         (cons object::t
                                                               _%tail109649%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp112424
                                                     _%head109650%_))
                                                  (_%loop109647%_
                                                   _%rest109670%_
                                                   (cons _%hd109671%_
                                                         _%head109650%_))))))
                                      (if (pair? _%tail109651109659%_)
                                          (let ((_%hd109656109676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail109651109659%_)))
                                                (_%tl109657109678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail109651109659%_))))
                                            (let* ((_%hd109681%_
                                                    _%hd109656109676%_)
                                                   (_%rest109683%_
                                                    _%tl109657109678%_))
                                              (_%K109655109673%_
                                               _%rest109683%_
                                               _%hd109681%_)))
                                          (_%else109653109667%_)))))))
                        (make-class-type-descriptor
                         _%id109565%_
                         _%name109573%_
                         _%struct-super109632%_
                         _%precedence-list109685%_
                         _%slot-vector109634%_
                         _%properties109637%_
                         _%constructor*109642%_
                         _%slot-table109635%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass109543%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109543%_ 'class))
            (let ((_%klass109547%_ _%klass109543%_))
              (__class-precedence-list _%klass109547%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass109543%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass109531%_)
        (let ((_%klass109534%_ _%klass109531%_))
          (cons _%klass109534%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109534%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers109528%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers109528%_))))
    (define make-class-predicate
      (lambda (_%klass109514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109514%_ 'class))
            (let ((_%klass109518%_ _%klass109514%_))
              (__make-class-predicate _%klass109518%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass109514%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass109485%_)
        (let* ((_%klass109488%_ _%klass109485%_)
               (_%tid109497%_
                (let () (declare (not safe)) (##type-id _%klass109488%_))))
          (if (__class-type-final? _%klass109488%_)
              (lambda (_%g109499109501%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g109499109501%_
                   _%tid109497%_)))
              (if (__class-type-struct? _%klass109488%_)
                  (lambda (_%g109504109506%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g109504109506%_
                       _%tid109497%_)))
                  (lambda (_%g109509109511%_)
                    (__class-instance? _%klass109488%_ _%g109509109511%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass109460%_ _%slot109461%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109460%_ 'class))
            (let ((_%klass109465%_ _%klass109460%_))
              (if (symbol? _%slot109461%_)
                  (let ((_%slot109475%_ _%slot109461%_))
                    (__make-class-slot-accessor
                     _%klass109465%_
                     _%slot109475%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109461%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass109460%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass109428%_ _%slot109429%_)
        (let* ((_%klass109432%_ _%klass109428%_)
               (_%slot109440%_ _%slot109429%_)
               (_%field109449%_
                (let ((__tmp112425
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109432%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112425 _%slot109440%_ '#f))))
          (if (not _%field109449%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109432%_
                       'slot:
                       _%slot109440%_)
                '#!void)
              (if (__class-type-final? _%klass109432%_)
                  (make-final-slot-accessor
                   _%klass109432%_
                   _%slot109440%_
                   _%field109449%_)
                  (if (__class-type-struct? _%klass109432%_)
                      (make-struct-slot-accessor
                       _%klass109432%_
                       _%slot109440%_
                       _%field109449%_)
                      (if (let ((_%strukt109455%_
                                 (base-struct/1 _%klass109432%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109455%_
                                    'class))
                                 (let ((__tmp112426
                                        (let ((__tmp112427
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109455%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112427))))
                                   (declare (not safe))
                                   (##fx< _%field109449%_ __tmp112426))))
                          (make-struct-subclass-slot-accessor
                           _%klass109432%_
                           _%slot109440%_
                           _%field109449%_)
                          (make-class-cached-slot-accessor
                           _%klass109432%_
                           _%slot109440%_
                           _%field109449%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass109403%_ _%slot109404%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109403%_ 'class))
            (let ((_%klass109408%_ _%klass109403%_))
              (if (symbol? _%slot109404%_)
                  (let ((_%slot109418%_ _%slot109404%_))
                    (__make-class-slot-mutator _%klass109408%_ _%slot109418%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109404%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass109403%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass109371%_ _%slot109372%_)
        (let* ((_%klass109375%_ _%klass109371%_)
               (_%slot109383%_ _%slot109372%_)
               (_%field109392%_
                (let ((__tmp112428
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109375%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112428 _%slot109383%_ '#f))))
          (if (not _%field109392%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109375%_
                       'slot:
                       _%slot109383%_)
                '#!void)
              (if (__class-type-final? _%klass109375%_)
                  (make-final-slot-mutator
                   _%klass109375%_
                   _%slot109383%_
                   _%field109392%_)
                  (if (__class-type-struct? _%klass109375%_)
                      (make-struct-slot-mutator
                       _%klass109375%_
                       _%slot109383%_
                       _%field109392%_)
                      (if (let ((_%strukt109398%_
                                 (base-struct/1 _%klass109375%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109398%_
                                    'class))
                                 (let ((__tmp112429
                                        (let ((__tmp112430
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109398%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112430))))
                                   (declare (not safe))
                                   (##fx< _%field109392%_ __tmp112429))))
                          (make-struct-subclass-slot-mutator
                           _%klass109375%_
                           _%slot109383%_
                           _%field109392%_)
                          (make-class-cached-slot-mutator
                           _%klass109375%_
                           _%slot109383%_
                           _%field109392%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass109346%_ _%slot109347%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109346%_ 'class))
            (let ((_%klass109351%_ _%klass109346%_))
              (if (symbol? _%slot109347%_)
                  (let ((_%slot109361%_ _%slot109347%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass109351%_
                     _%slot109361%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109347%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass109346%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass109314%_ _%slot109315%_)
        (let* ((_%klass109318%_ _%klass109314%_)
               (_%slot109326%_ _%slot109315%_)
               (_%field109335%_
                (let ((__tmp112431
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109318%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112431 _%slot109326%_ '#f))))
          (if (not _%field109335%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109318%_
                       'slot:
                       _%slot109326%_)
                '#!void)
              (if (__class-type-final? _%klass109318%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass109318%_
                   _%slot109326%_
                   _%field109335%_)
                  (if (__class-type-struct? _%klass109318%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass109318%_
                       _%slot109326%_
                       _%field109335%_)
                      (if (let ((_%strukt109341%_
                                 (base-struct/1 _%klass109318%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109341%_
                                    'class))
                                 (let ((__tmp112432
                                        (let ((__tmp112433
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109341%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112433))))
                                   (declare (not safe))
                                   (##fx< _%field109335%_ __tmp112432))))
                          (make-struct-slot-unchecked-accessor
                           _%klass109318%_
                           _%slot109326%_
                           _%field109335%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass109318%_
                           _%slot109326%_
                           _%field109335%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass109289%_ _%slot109290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109289%_ 'class))
            (let ((_%klass109294%_ _%klass109289%_))
              (if (symbol? _%slot109290%_)
                  (let ((_%slot109304%_ _%slot109290%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass109294%_
                     _%slot109304%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109290%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass109289%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass109257%_ _%slot109258%_)
        (let* ((_%klass109261%_ _%klass109257%_)
               (_%slot109269%_ _%slot109258%_)
               (_%field109278%_
                (let ((__tmp112434
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109261%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112434 _%slot109269%_ '#f))))
          (if (not _%field109278%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109261%_
                       'slot:
                       _%slot109269%_)
                '#!void)
              (if (__class-type-final? _%klass109261%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass109261%_
                   _%slot109269%_
                   _%field109278%_)
                  (if (__class-type-struct? _%klass109261%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass109261%_
                       _%slot109269%_
                       _%field109278%_)
                      (if (let ((_%strukt109284%_
                                 (base-struct/1 _%klass109261%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109284%_
                                    'class))
                                 (let ((__tmp112435
                                        (let ((__tmp112436
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109284%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112436))))
                                   (declare (not safe))
                                   (##fx< _%field109278%_ __tmp112435))))
                          (make-struct-slot-unchecked-mutator
                           _%klass109261%_
                           _%slot109269%_
                           _%field109278%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass109261%_
                           _%slot109269%_
                           _%field109278%_))))))))
    (define not-an-instance__%
      (lambda (_%object109241%_ _%class109242%_ _%slot109243%_)
        (apply error
               '"not an instance"
               'object:
               _%object109241%_
               'class:
               _%class109242%_
               (if _%slot109243%_
                   (cons 'slot: (cons _%slot109243%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object109248%_ _%class109249%_)
        (let ((_%slot109251%_ '#f))
          (not-an-instance__%
           _%object109248%_
           _%class109249%_
           _%slot109251%_))))
    (define not-an-instance
      (lambda _g112437_
        (let ((_g112438_ (let () (declare (not safe)) (##length _g112437_))))
          (cond ((let () (declare (not safe)) (##fx= _g112438_ 2))
                 (apply not-an-instance__0 _g112437_))
                ((let () (declare (not safe)) (##fx= _g112438_ 3))
                 (apply not-an-instance__% _g112437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g112437_))))))
    (define make-final-slot-accessor
      (lambda (_%klass109234%_ _%slot109235%_ _%field109236%_)
        (lambda (_%obj109238%_)
          (##direct-structure-ref
           _%obj109238%_
           _%field109236%_
           _%klass109234%_
           _%slot109235%_))))
    (define make-final-slot-mutator
      (lambda (_%klass109227%_ _%slot109228%_ _%field109229%_)
        (lambda (_%obj109231%_ _%val109232%_)
          (##direct-structure-set!
           _%obj109231%_
           _%val109232%_
           _%field109229%_
           _%klass109227%_
           _%slot109228%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass109221%_ _%slot109222%_ _%field109223%_)
        (lambda (_%obj109225%_)
          (##structure-ref
           _%obj109225%_
           _%field109223%_
           _%klass109221%_
           _%slot109222%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass109214%_ _%slot109215%_ _%field109216%_)
        (lambda (_%obj109218%_ _%val109219%_)
          (##structure-set!
           _%obj109218%_
           _%val109219%_
           _%field109216%_
           _%klass109214%_
           _%slot109215%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass109208%_ _%slot109209%_ _%field109210%_)
        (lambda (_%obj109212%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj109212%_
             _%field109210%_
             _%klass109208%_
             _%slot109209%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass109201%_ _%slot109202%_ _%field109203%_)
        (lambda (_%obj109205%_ _%val109206%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj109205%_
             _%val109206%_
             _%field109203%_
             _%klass109201%_
             _%slot109202%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass109195%_ _%slot109196%_ _%field109197%_)
        (lambda (_%obj109199%_)
          (if (class-instance? _%klass109195%_ _%obj109199%_)
              (unchecked-slot-ref _%obj109199%_ _%field109197%_)
              (not-an-instance__%
               _%obj109199%_
               _%klass109195%_
               _%slot109196%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass109188%_ _%slot109189%_ _%field109190%_)
        (lambda (_%obj109192%_ _%val109193%_)
          (if (class-instance? _%klass109188%_ _%obj109192%_)
              (unchecked-field-set!
               _%obj109192%_
               _%field109190%_
               _%val109193%_)
              (not-an-instance__%
               _%obj109192%_
               _%klass109188%_
               _%slot109189%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass109179%_ _%slot109180%_ _%field109181%_)
        (lambda (_%obj109183%_)
          (if (let ((__tmp112439
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109179%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109183%_ __tmp112439))
              (unchecked-field-ref _%obj109183%_ _%field109181%_)
              (if (class-instance? _%klass109179%_ _%obj109183%_)
                  (unchecked-slot-ref _%obj109183%_ _%slot109180%_)
                  (not-an-instance__%
                   _%obj109183%_
                   _%klass109179%_
                   _%slot109180%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass109169%_ _%slot109170%_ _%field109171%_)
        (lambda (_%obj109173%_ _%val109174%_)
          (if (let ((__tmp112440
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109169%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109173%_ __tmp112440))
              (unchecked-field-set!
               _%obj109173%_
               _%field109171%_
               _%val109174%_)
              (if (class-instance? _%klass109169%_ _%obj109173%_)
                  (unchecked-slot-set!
                   _%obj109173%_
                   _%slot109170%_
                   _%val109174%_)
                  (not-an-instance__%
                   _%obj109173%_
                   _%klass109169%_
                   _%slot109170%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass109163%_ _%slot109164%_ _%field109165%_)
        (lambda (_%obj109167%_)
          (if (let ((__tmp112441
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109163%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109167%_ __tmp112441))
              (unchecked-field-ref _%obj109167%_ _%field109165%_)
              (unchecked-slot-ref _%obj109167%_ _%slot109164%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass109156%_ _%slot109157%_ _%field109158%_)
        (lambda (_%obj109160%_ _%val109161%_)
          (if (let ((__tmp112442
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109156%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109160%_ __tmp112442))
              (unchecked-field-set!
               _%obj109160%_
               _%field109158%_
               _%val109161%_)
              (unchecked-slot-set!
               _%obj109160%_
               _%slot109157%_
               _%val109161%_)))))
    (define class-slot-offset
      (lambda (_%klass109131%_ _%slot109132%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109131%_ 'class))
            (let ((_%klass109136%_ _%klass109131%_))
              (if (let () (declare (not safe)) (symbolic? _%slot109132%_))
                  (let ((_%slot109146%_ _%slot109132%_))
                    (__class-slot-offset _%klass109136%_ _%slot109146%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot109132%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass109131%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass109110%_ _%slot109111%_)
        (let* ((_%klass109114%_ _%klass109110%_)
               (_%slot109122%_ _%slot109111%_)
               (__tmp112443
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109114%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp112443 _%slot109122%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass109084%_ _%obj109085%_ _%slot109086%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109084%_ 'class))
            (let ((_%klass109090%_ _%klass109084%_))
              (if (let () (declare (not safe)) (symbolic? _%slot109086%_))
                  (let ((_%slot109100%_ _%slot109086%_))
                    (__class-slot-ref
                     _%klass109090%_
                     _%obj109085%_
                     _%slot109100%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot109086%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass109084%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass109060%_ _%obj109061%_ _%slot109062%_)
        (let* ((_%klass109065%_ _%klass109060%_)
               (_%slot109073%_ _%slot109062%_))
          (if (__class-instance? _%klass109065%_ _%obj109061%_)
              (let ((_%off109082%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj109061%_))
                      _%slot109073%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj109061%_
                 _%off109082%_
                 _%klass109065%_
                 _%slot109073%_))
              (not-an-instance__0 _%obj109061%_ _%klass109065%_)))))
    (define class-slot-set!
      (lambda (_%klass109033%_ _%obj109034%_ _%slot109035%_ _%val109036%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109033%_ 'class))
            (let ((_%klass109040%_ _%klass109033%_))
              (if (let () (declare (not safe)) (symbolic? _%slot109035%_))
                  (let ((_%slot109050%_ _%slot109035%_))
                    (__class-slot-set!
                     _%klass109040%_
                     _%obj109034%_
                     _%slot109050%_
                     _%val109036%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot109035%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass109033%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass109008%_ _%obj109009%_ _%slot109010%_ _%val109011%_)
        (let* ((_%klass109014%_ _%klass109008%_)
               (_%slot109022%_ _%slot109010%_))
          (if (__class-instance? _%klass109014%_ _%obj109009%_)
              (let ((_%off109031%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj109009%_))
                      _%slot109022%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj109009%_
                 _%val109011%_
                 _%off109031%_
                 _%klass109014%_
                 _%slot109022%_))
              (not-an-instance__0 _%obj109009%_ _%klass109014%_)))))
    (define unchecked-field-ref
      (lambda (_%obj109005%_ _%off109006%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj109005%_ _%off109006%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj109001%_ _%off109002%_ _%val109003%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj109001%_
           _%val109003%_
           _%off109002%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj108998%_ _%slot108999%_)
        (unchecked-field-ref
         _%obj108998%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108998%_))
          _%slot108999%_))))
    (define unchecked-slot-set!
      (lambda (_%obj108994%_ _%slot108995%_ _%val108996%_)
        (unchecked-field-set!
         _%obj108994%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108994%_))
          _%slot108995%_)
         _%val108996%_)))
    (define slot-ref__%
      (lambda (_%obj108956%_ _%slot108957%_ _%E108958%_)
        (if (symbol? _%slot108957%_)
            (let ((_%slot108962%_ _%slot108957%_))
              (if (procedure? _%E108958%_)
                  (let ((_%E108972%_ _%E108958%_))
                    (__slot-ref__% _%obj108956%_ _%slot108962%_ _%E108972%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.38-694.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E108958%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.21-694.25"
               'contract:
               'symbol?
               'value:
               _%slot108957%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj108985%_ _%slot108986%_)
        (let ((_%E108988%_ __slot-error))
          (slot-ref__% _%obj108985%_ _%slot108986%_ _%E108988%_))))
    (define slot-ref
      (lambda _g112444_
        (let ((_g112445_ (let () (declare (not safe)) (##length _g112444_))))
          (cond ((let () (declare (not safe)) (##fx= _g112445_ 2))
                 (apply slot-ref__0 _g112444_))
                ((let () (declare (not safe)) (##fx= _g112445_ 3))
                 (apply slot-ref__% _g112444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g112444_))))))
    (define __slot-ref__%
      (lambda (_%obj108912%_ _%slot108913%_ _%E108914%_)
        (let* ((_%slot108917%_ _%slot108913%_)
               (_%E108925%_ _%E108914%_)
               (_%klass108934%_ (class-of _%obj108912%_))
               (_%$e108937%_
                (__class-slot-offset _%klass108934%_ _%slot108917%_)))
          (if _%$e108937%_
              ((lambda (_%off108940%_)
                 (unchecked-field-ref _%obj108912%_ _%off108940%_))
               _%$e108937%_)
              (let ()
                (declare (not safe))
                (_%E108925%_ _%obj108912%_ _%slot108917%_))))))
    (define __slot-ref__0
      (lambda (_%obj108946%_ _%slot108947%_)
        (let ((_%E108949%_ __slot-error))
          (__slot-ref__% _%obj108946%_ _%slot108947%_ _%E108949%_))))
    (define __slot-ref
      (lambda _g112446_
        (let ((_g112447_ (let () (declare (not safe)) (##length _g112446_))))
          (cond ((let () (declare (not safe)) (##fx= _g112447_ 2))
                 (apply __slot-ref__0 _g112446_))
                ((let () (declare (not safe)) (##fx= _g112447_ 3))
                 (apply __slot-ref__% _g112446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g112446_))))))
    (define slot-set!__%
      (lambda (_%obj108870%_ _%slot108871%_ _%val108872%_ _%E108873%_)
        (if (symbol? _%slot108871%_)
            (let ((_%slot108877%_ _%slot108871%_))
              (if (procedure? _%E108873%_)
                  (let ((_%E108887%_ _%E108873%_))
                    (__slot-set!__%
                     _%obj108870%_
                     _%slot108877%_
                     _%val108872%_
                     _%E108887%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.43-696.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E108873%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.22-696.26"
               'contract:
               'symbol?
               'value:
               _%slot108871%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj108900%_ _%slot108901%_ _%val108902%_)
        (let ((_%E108904%_ __slot-error))
          (slot-set!__%
           _%obj108900%_
           _%slot108901%_
           _%val108902%_
           _%E108904%_))))
    (define slot-set!
      (lambda _g112448_
        (let ((_g112449_ (let () (declare (not safe)) (##length _g112448_))))
          (cond ((let () (declare (not safe)) (##fx= _g112449_ 3))
                 (apply slot-set!__0 _g112448_))
                ((let () (declare (not safe)) (##fx= _g112449_ 4))
                 (apply slot-set!__% _g112448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g112448_))))))
    (define __slot-set!__%
      (lambda (_%obj108823%_ _%slot108824%_ _%val108825%_ _%E108826%_)
        (let* ((_%slot108829%_ _%slot108824%_)
               (_%E108837%_ _%E108826%_)
               (_%klass108846%_ (class-of _%obj108823%_))
               (_%$e108849%_
                (__class-slot-offset _%klass108846%_ _%slot108829%_)))
          (if _%$e108849%_
              ((lambda (_%off108852%_)
                 (unchecked-field-set!
                  _%obj108823%_
                  _%off108852%_
                  _%val108825%_))
               _%$e108849%_)
              (let ()
                (declare (not safe))
                (_%E108837%_ _%obj108823%_ _%slot108829%_))))))
    (define __slot-set!__0
      (lambda (_%obj108858%_ _%slot108859%_ _%val108860%_)
        (let ((_%E108862%_ __slot-error))
          (__slot-set!__%
           _%obj108858%_
           _%slot108859%_
           _%val108860%_
           _%E108862%_))))
    (define __slot-set!
      (lambda _g112450_
        (let ((_g112451_ (let () (declare (not safe)) (##length _g112450_))))
          (cond ((let () (declare (not safe)) (##fx= _g112451_ 3))
                 (apply __slot-set!__0 _g112450_))
                ((let () (declare (not safe)) (##fx= _g112451_ 4))
                 (apply __slot-set!__% _g112450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g112450_))))))
    (define __slot-error
      (lambda (_%obj108819%_ _%slot108820%_)
        (error '"Cannot find slot"
               'object:
               _%obj108819%_
               'slot:
               _%slot108820%_)))
    (define subclass?
      (lambda (_%maybe-sub-class108794%_ _%maybe-super-class108795%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class108794%_ 'class))
            (let ((_%maybe-sub-class108799%_ _%maybe-sub-class108794%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class108795%_
                     'class))
                  (let ((_%maybe-super-class108809%_
                         _%maybe-super-class108795%_))
                    (__subclass?
                     _%maybe-sub-class108799%_
                     _%maybe-super-class108809%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@704.45-704.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class108795%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@704.18-704.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class108794%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class108766%_ _%maybe-super-class108767%_)
        (let* ((_%maybe-sub-class108770%_ _%maybe-sub-class108766%_)
               (_%maybe-super-class108778%_ _%maybe-super-class108767%_)
               (_%maybe-super-class-id108787%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class108778%_)))
               (_%$e108789%_
                (eq? _%maybe-super-class-id108787%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class108770%_)))))
          (if _%$e108789%_
              _%$e108789%_
              (let ((__tmp112453
                     (lambda (_%super-class108792%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class108792%_))
                            _%maybe-super-class-id108787%_)))
                    (__tmp112452
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class108770%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp112453 __tmp112452))))))
    (define object?
      (lambda (_%o108763%_)
        (if (let () (declare (not safe)) (##structure? _%o108763%_))
            (let ((__tmp112454
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108763%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp112454 'class))
            '#f)))
    (define direct-instance?
      (lambda (_%klass108748%_ _%obj108749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108748%_ 'class))
            (let ((_%klass108753%_ _%klass108748%_))
              (__direct-instance? _%klass108753%_ _%obj108749%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@718.25-718.30"
               'contract:
               'class-type?
               'value:
               _%klass108748%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass108735%_ _%obj108736%_)
        (let* ((_%klass108739%_ _%klass108735%_)
               (__tmp112455
                (let () (declare (not safe)) (##type-id _%klass108739%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108736%_ __tmp112455))))
    (define immediate-instance-of?
      (lambda (_%klass108731%_ _%obj108732%_)
        (if (let () (declare (not safe)) (##structure? _%obj108732%_))
            (eq? _%klass108731%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj108732%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass108716%_ _%obj108717%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108716%_ 'class))
            (let ((_%klass108721%_ _%klass108716%_))
              (__struct-instance? _%klass108721%_ _%obj108717%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@747.25-747.30"
               'contract:
               'class-type?
               'value:
               _%klass108716%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass108703%_ _%obj108704%_)
        (let* ((_%klass108707%_ _%klass108703%_)
               (__tmp112456
                (let () (declare (not safe)) (##type-id _%klass108707%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj108704%_ __tmp112456))))
    (define class-instance?
      (lambda (_%klass108688%_ _%obj108689%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108688%_ 'class))
            (let ((_%klass108693%_ _%klass108688%_))
              (__class-instance? _%klass108693%_ _%obj108689%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@752.24-752.29"
               'contract:
               'class-type?
               'value:
               _%klass108688%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass108673%_ _%obj108674%_)
        (let* ((_%klass108677%_ _%klass108673%_)
               (_%type108686%_ (class-of _%obj108674%_)))
          (__subclass? _%type108686%_ _%klass108677%_))))
    (define make-object
      (lambda (_%klass108648%_ _%k108649%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108648%_ 'class))
            (let ((_%klass108653%_ _%klass108648%_))
              (if (fixnum? _%k108649%_)
                  (let ((_%k108663%_ _%k108649%_))
                    (__make-object _%klass108653%_ _%k108663%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@757.37-757.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k108649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@757.20-757.25"
               'contract:
               'class-type?
               'value:
               _%klass108648%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass108625%_ _%k108626%_)
        (let* ((_%klass108629%_ _%klass108625%_) (_%k108637%_ _%k108626%_))
          (if (__class-type-system? _%klass108629%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass108629%_)
                '#!void)
              (let ((_%obj108646%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass108629%_ _%k108637%_))))
                (__object-fill! _%obj108646%_ '#f))))))
    (define object-class
      (lambda (_%obj108611%_)
        (if (object? _%obj108611%_)
            (let ((_%obj108615%_ _%obj108611%_))
              (__object-class _%obj108615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.21-777.24"
               'contract:
               'object?
               'value:
               _%obj108611%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj108599%_)
        (let ((_%obj108602%_ _%obj108599%_))
          (declare (not safe))
          (##structure-type _%obj108602%_))))
    (define object-fill!
      (lambda (_%obj108584%_ _%fill108585%_)
        (if (object? _%obj108584%_)
            (let ((_%obj108589%_ _%obj108584%_))
              (__object-fill! _%obj108589%_ _%fill108585%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@782.21-782.24"
               'contract:
               'object?
               'value:
               _%obj108584%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj108566%_ _%fill108567%_)
        (let ((_%obj108570%_ _%obj108566%_))
          (let _%loop108579%_ ((_%i108581%_
                                (let ((__tmp112457
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj108570%_))))
                                  (declare (not safe))
                                  (##fx- __tmp112457 '1))))
            (if (let () (declare (not safe)) (##fx> _%i108581%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj108570%_
                     _%fill108567%_
                     _%i108581%_
                     '#f
                     '#f))
                  (_%loop108579%_
                   (let () (declare (not safe)) (##fx- _%i108581%_ '1))))
                _%obj108570%_)))))
    (define new-instance
      (lambda (_%klass108552%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108552%_ 'class))
            (let ((_%klass108556%_ _%klass108552%_))
              (__new-instance _%klass108556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.21-793.26"
               'contract:
               'class-type?
               'value:
               _%klass108552%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass108540%_)
        (let* ((_%klass108543%_ _%klass108540%_)
               (__obj112368
                (let ((__tmp112458
                       (let ((__tmp112459
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass108543%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp112459))))
                  (declare (not safe))
                  (##make-structure _%klass108543%_ __tmp112458))))
          (object-fill! __obj112368 '#f)
          __obj112368)))
    (define make-instance
      (lambda (_%klass108525%_ . _%args108526%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108525%_ 'class))
            (let ((_%klass108530%_ _%klass108525%_))
              (declare (not safe))
              (##apply __make-instance _%klass108530%_ _%args108526%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@796.22-796.27"
               'contract:
               'class-type?
               'value:
               _%klass108525%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass108497%_ . _%args108498%_)
        (let* ((_%klass108501%_ _%klass108497%_)
               (_%$e108510%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108501%_ '10 '#f '#f))))
          (if _%$e108510%_
              ((lambda (_%kons-id108513%_)
                 (let ((_%obj108515%_ (__new-instance _%klass108501%_)))
                   (___constructor-init!
                    _%klass108501%_
                    _%kons-id108513%_
                    _%obj108515%_
                    _%args108498%_)
                   _%obj108515%_))
               _%$e108510%_)
              (if (__class-type-metaclass? _%klass108501%_)
                  (let ((_%obj108518%_ (__new-instance _%klass108501%_)))
                    (__metaclass-instance-init!
                     _%klass108501%_
                     _%obj108518%_
                     _%args108498%_)
                    _%obj108518%_)
                  (if (__class-type-struct? _%klass108501%_)
                      (if (let ((__tmp112461
                                 (__class-type-field-count _%klass108501%_))
                                (__tmp112460
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args108498%_))))
                            (declare (not safe))
                            (##fx= __tmp112461 __tmp112460))
                          (apply ##structure _%klass108501%_ _%args108498%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass108501%_
                                   'slots:
                                   (__class-type-slot-list _%klass108501%_)
                                   'args:
                                   _%args108498%_)
                            '#!void))
                      (let ((_%obj108521%_ (__new-instance _%klass108501%_)))
                        (___class-instance-init!
                         _%klass108501%_
                         _%obj108521%_
                         _%args108498%_)
                        _%obj108521%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj108482%_ . _%args108483%_)
        (if (object? _%obj108482%_)
            (let ((_%obj108487%_ _%obj108482%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj108487%_ _%args108483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@821.30-821.33"
               'contract:
               'object?
               'value:
               _%obj108482%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj108469%_ . _%args108470%_)
        (let ((_%obj108473%_ _%obj108469%_))
          (if (let ((__tmp112463
                     (let () (declare (not safe)) (##length _%args108470%_)))
                    (__tmp112462
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj108473%_))))
                (declare (not safe))
                (##fx< __tmp112463 __tmp112462))
              (___struct-instance-init! _%obj108473%_ _%args108470%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj108473%_
                     'args:
                     _%args108470%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj108428%_ _%args108429%_)
        (let _%lp108431%_ ((_%k108433%_ '1) (_%rest108434%_ _%args108429%_))
          (let* ((_%rest108435108443%_ _%rest108434%_)
                 (_%else108437108451%_ (lambda () _%obj108428%_))
                 (_%K108439108457%_
                  (lambda (_%rest108454%_ _%hd108455%_)
                    (unchecked-field-set!
                     _%obj108428%_
                     _%k108433%_
                     _%hd108455%_)
                    (_%lp108431%_
                     (let () (declare (not safe)) (##fx+ _%k108433%_ '1))
                     _%rest108454%_))))
            (if (pair? _%rest108435108443%_)
                (let ((_%hd108440108460%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108435108443%_)))
                      (_%tl108441108462%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108435108443%_))))
                  (let* ((_%hd108465%_ _%hd108440108460%_)
                         (_%rest108467%_ _%tl108441108462%_))
                    (_%K108439108457%_ _%rest108467%_ _%hd108465%_)))
                (_%else108437108451%_))))))
    (define class-instance-init!
      (lambda (_%obj108413%_ . _%args108414%_)
        (if (object? _%obj108413%_)
            (let ((_%obj108418%_ _%obj108413%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj108418%_ _%args108414%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@861.29-861.32"
               'contract:
               'object?
               'value:
               _%obj108413%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj108400%_ . _%args108401%_)
        (let ((_%obj108404%_ _%obj108400%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj108404%_))
           _%obj108404%_
           _%args108401%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass108342%_ _%obj108343%_ _%args108344%_)
        (let _%lp108346%_ ((_%rest108348%_ _%args108344%_))
          (let* ((_%rest108349108359%_ _%rest108348%_)
                 (_%else108351108367%_
                  (lambda ()
                    (if (null? _%rest108348%_)
                        _%obj108343%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass108342%_
                               'rest:
                               _%rest108348%_))))
                 (_%K108353108381%_
                  (lambda (_%rest108370%_ _%val108371%_ _%key108372%_)
                    (if (keyword? _%key108372%_)
                        (let ((_%$e108375%_
                               (__class-slot-offset
                                _%klass108342%_
                                _%key108372%_)))
                          (if _%$e108375%_
                              ((lambda (_%off108378%_)
                                 (unchecked-field-set!
                                  _%obj108343%_
                                  _%off108378%_
                                  _%val108371%_)
                                 (_%lp108346%_ _%rest108370%_))
                               _%$e108375%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass108342%_
                                     'slot:
                                     _%key108372%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key108372%_)))))
            (if (pair? _%rest108349108359%_)
                (let ((_%hd108354108384%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108349108359%_)))
                      (_%tl108355108386%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108349108359%_))))
                  (let ((_%key108389%_ _%hd108354108384%_))
                    (if (pair? _%tl108355108386%_)
                        (let ((_%hd108356108391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108355108386%_)))
                              (_%tl108357108393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108355108386%_))))
                          (let* ((_%val108396%_ _%hd108356108391%_)
                                 (_%rest108398%_ _%tl108357108393%_))
                            (_%K108353108381%_
                             _%rest108398%_
                             _%val108396%_
                             _%key108389%_)))
                        (_%else108351108367%_))))
                (_%else108351108367%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass108338%_ _%obj108339%_ _%args108340%_)
        (apply call-method
               _%klass108338%_
               'instance-init!
               _%obj108339%_
               _%args108340%_)))
    (define constructor-init!
      (lambda (_%klass108301%_
               _%kons-id108302%_
               _%obj108303%_
               .
               _%args108304%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108301%_ 'class))
            (let ((_%klass108308%_ _%klass108301%_))
              (if (symbol? _%kons-id108302%_)
                  (let ((_%kons-id108318%_ _%kons-id108302%_))
                    (if (object? _%obj108303%_)
                        (let ((_%obj108328%_ _%obj108303%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass108308%_
                                   _%kons-id108318%_
                                   _%obj108328%_
                                   _%args108304%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@885.63-885.66"
                           'contract:
                           'object?
                           'value:
                           _%obj108303%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@885.43-885.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id108302%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@885.26-885.31"
               'contract:
               'class-type?
               'value:
               _%klass108301%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass108270%_
               _%kons-id108271%_
               _%obj108272%_
               .
               _%args108273%_)
        (let* ((_%klass108276%_ _%klass108270%_)
               (_%kons-id108284%_ _%kons-id108271%_)
               (_%obj108292%_ _%obj108272%_))
          (___constructor-init!
           _%klass108276%_
           _%kons-id108284%_
           _%obj108292%_
           _%args108273%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass108259%_ _%kons-id108260%_ _%obj108261%_ _%args108262%_)
        (let ((_%$e108264%_
               (__find-method
                _%klass108259%_
                _%obj108261%_
                _%kons-id108260%_)))
          (if _%$e108264%_
              ((lambda (_%kons108267%_)
                 (apply _%kons108267%_ _%obj108261%_ _%args108262%_)
                 _%obj108261%_)
               _%$e108264%_)
              (error '"missing constructor"
                     'class:
                     _%klass108259%_
                     'method:
                     _%kons-id108260%_)))))
    (define struct-copy
      (lambda (_%struct108245%_)
        (if (object? _%struct108245%_)
            (let ((_%struct108249%_ _%struct108245%_))
              (__struct-copy _%struct108249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@899.20-899.26"
               'contract:
               'object?
               'value:
               _%struct108245%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct108233%_)
        (let ((_%struct108236%_ _%struct108233%_))
          (declare (not safe))
          (##structure-copy _%struct108236%_))))
    (define struct->list
      (lambda (_%obj108219%_)
        (if (object? _%obj108219%_)
            (let ((_%obj108223%_ _%obj108219%_))
              (__struct->list _%obj108223%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@902.21-902.24"
               'contract:
               'object?
               'value:
               _%obj108219%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj108200%_)
        (let* ((_%obj108203%_ _%obj108200%_)
               (_%len108212%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj108203%_))))
          (let _%recur108214%_ ((_%i108216%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i108216%_ _%len108212%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj108203%_
                         _%i108216%_
                         '#f
                         '#f))
                      (_%recur108214%_
                       (let () (declare (not safe)) (##fx+ _%i108216%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj108186%_)
        (if (object? _%obj108186%_)
            (let ((_%obj108190%_ _%obj108186%_)) (__class->list _%obj108190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@910.20-910.23"
               'contract:
               'object?
               'value:
               _%obj108186%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj108162%_)
        (let* ((_%obj108165%_ _%obj108162%_)
               (_%klass108174%_
                (let () (declare (not safe)) (##structure-type _%obj108165%_)))
               (_%slot-vector108176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108174%_ '7 '#f '#f))))
          (let _%loop108178%_ ((_%index108180%_
                                (let ((__tmp112464
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector108176%_))))
                                  (declare (not safe))
                                  (##fx- __tmp112464 '1)))
                               (_%plist108181%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index108180%_ '1))
                (cons _%klass108174%_ _%plist108181%_)
                (let ((_%slot108184%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector108176%_
                          _%index108180%_))))
                  (_%loop108178%_
                   (let () (declare (not safe)) (##fx- _%index108180%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot108184%_))
                         (cons (unchecked-field-ref
                                _%obj108165%_
                                _%index108180%_)
                               _%plist108181%_)))))))))
    (define call-method
      (lambda (_%obj108146%_ _%id108147%_ . _%args108148%_)
        (if (symbol? _%id108147%_)
            (let ((_%id108152%_ _%id108147%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj108146%_
                       _%id108152%_
                       _%args108148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.24-925.26"
               'contract:
               'symbol?
               'value:
               _%id108147%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj108115%_ _%id108116%_ . _%args108117%_)
        (let* ((_%id108120%_ _%id108116%_)
               (_%$e108129%_ (__method-ref _%obj108115%_ _%id108120%_)))
          (if _%$e108129%_
              ((lambda (_%method108132%_)
                 (let ((_%method108134%_ _%method108132%_))
                   (apply _%method108134%_ _%obj108115%_ _%args108117%_)))
               _%$e108129%_)
              (error '"cannot find method"
                     'object:
                     _%obj108115%_
                     'method:
                     _%id108120%_)))))
    (define method-ref
      (lambda (_%obj108100%_ _%id108101%_)
        (if (symbol? _%id108101%_)
            (let ((_%id108105%_ _%id108101%_))
              (__method-ref _%obj108100%_ _%id108105%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@952.23-952.25"
               'contract:
               'symbol?
               'value:
               _%id108101%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj108087%_ _%id108088%_)
        (let ((_%id108091%_ _%id108088%_))
          (__find-method
           (class-of _%obj108087%_)
           _%obj108087%_
           _%id108091%_))))
    (define checked-method-ref
      (lambda (_%obj108080%_ _%id108081%_)
        (let ((_%$e108084%_ (method-ref _%obj108080%_ _%id108081%_)))
          (if _%$e108084%_
              _%$e108084%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj108080%_
                       'method:
                       _%id108081%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj108065%_ _%id108066%_)
        (if (symbol? _%id108066%_)
            (let ((_%id108070%_ _%id108066%_))
              (__bound-method-ref _%obj108065%_ _%id108070%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@960.29-960.31"
               'contract:
               'symbol?
               'value:
               _%id108066%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj108033%_ _%id108034%_)
        (let* ((_%id108037%_ _%id108034%_)
               (_%$e108046%_ (__method-ref _%obj108033%_ _%id108037%_)))
          (if _%$e108046%_
              ((lambda (_%method108049%_)
                 (let ((_%method108051%_ _%method108049%_))
                   (lambda _%args108062%_
                     (apply _%method108051%_ _%obj108033%_ _%args108062%_))))
               _%$e108046%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj108018%_ _%id108019%_)
        (if (symbol? _%id108019%_)
            (let ((_%id108023%_ _%id108019%_))
              (__checked-bound-method-ref _%obj108018%_ _%id108023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.37-969.39"
               'contract:
               'symbol?
               'value:
               _%id108019%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj108001%_ _%id108002%_)
        (let* ((_%id108005%_ _%id108002%_)
               (_%method108014%_
                (checked-method-ref _%obj108001%_ _%id108005%_)))
          (lambda _%args108016%_
            (apply _%method108014%_ _%obj108001%_ _%args108016%_)))))
    (define find-method
      (lambda (_%klass107975%_ _%obj107976%_ _%id107977%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107975%_ 'class))
            (let ((_%klass107981%_ _%klass107975%_))
              (if (symbol? _%id107977%_)
                  (let ((_%id107991%_ _%id107977%_))
                    (__find-method _%klass107981%_ _%obj107976%_ _%id107991%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@974.41-974.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id107977%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@974.20-974.25"
               'contract:
               'class-type?
               'value:
               _%klass107975%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass107946%_ _%obj107947%_ _%id107948%_)
        (let* ((_%klass107951%_ _%klass107946%_) (_%id107959%_ _%id107948%_))
          (if (__class-type-sealed? _%klass107951%_)
              (let ((_%tab107969%_ (__specialize-class _%klass107951%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab107969%_ _%id107959%_ '#f))
              (let ((_%$e107971%_
                     (__direct-method-ref
                      _%klass107951%_
                      _%obj107947%_
                      _%id107959%_)))
                (if _%$e107971%_
                    _%$e107971%_
                    (__mixin-method-ref
                     _%klass107951%_
                     _%obj107947%_
                     _%id107959%_)))))))
    (define mixin-find-method
      (lambda (_%mixins107930%_ _%obj107931%_ _%id107932%_)
        (if (symbol? _%id107932%_)
            (let ((_%id107936%_ _%id107932%_))
              (__mixin-find-method
               _%mixins107930%_
               _%obj107931%_
               _%id107936%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.37-983.39"
               'contract:
               'symbol?
               'value:
               _%id107932%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins107912%_ _%obj107913%_ _%id107914%_)
        (let* ((_%id107917%_ _%id107914%_)
               (__tmp112465
                (lambda (_%g107925107927%_)
                  (direct-method-ref
                   _%g107925107927%_
                   _%obj107913%_
                   _%id107917%_))))
          (declare (not safe))
          (__ormap1 __tmp112465 _%mixins107912%_))))
    (define direct-method-ref
      (lambda (_%klass107886%_ _%obj107887%_ _%id107888%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107886%_ 'class))
            (let ((_%klass107892%_ _%klass107886%_))
              (if (symbol? _%id107888%_)
                  (let ((_%id107902%_ _%id107888%_))
                    (__direct-method-ref
                     _%klass107892%_
                     _%obj107887%_
                     _%id107902%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@986.47-986.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id107888%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.26-986.31"
               'contract:
               'class-type?
               'value:
               _%klass107886%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass107840%_ _%obj107841%_ _%id107842%_)
        (let* ((_%klass107845%_ _%klass107840%_) (_%id107853%_ _%id107842%_))
          (letrec ((_%metaclass-resolve-method107862%_
                    (lambda ()
                      (let ((__method112369
                             (__method-ref
                              _%klass107845%_
                              'direct-method-ref)))
                        (if __method112369
                            (let ()
                              (declare (not safe))
                              (__method112369
                               _%klass107845%_
                               _%obj107841%_
                               _%id107853%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107845%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!107863%_
                    (lambda ()
                      (let ((_%method107883%_
                             (_%metaclass-resolve-method107862%_)))
                        (let ((__tmp112467
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107845%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp112466
                               (if _%method107883%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp112467
                           _%id107853%_
                           __tmp112466))
                        _%method107883%_))))
            (let ((_%$e107865%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass107845%_ '11 '#f '#f))))
              (if _%$e107865%_
                  ((lambda (_%ht107868%_)
                     (let ((_%method107870%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht107868%_
                               _%id107853%_
                               '#f))))
                       (if (procedure? _%method107870%_)
                           _%method107870%_
                           (if (__class-type-metaclass? _%klass107845%_)
                               (let ((_%$e107874%_ _%method107870%_))
                                 (if (eq? 'resolved _%$e107874%_)
                                     (_%metaclass-resolve-method107862%_)
                                     (if (eq? 'unknown _%$e107874%_)
                                         '#f
                                         (_%metaclass-resolve-method!107863%_))))
                               '#f))))
                   _%$e107865%_)
                  (if (__class-type-metaclass? _%klass107845%_)
                      (let ((_%tab107879%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107845%_
                           _%tab107879%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!107863%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass107814%_ _%obj107815%_ _%id107816%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107814%_ 'class))
            (let ((_%klass107820%_ _%klass107814%_))
              (if (symbol? _%id107816%_)
                  (let ((_%id107830%_ _%id107816%_))
                    (__mixin-method-ref
                     _%klass107820%_
                     _%obj107815%_
                     _%id107830%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1016.46-1016.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id107816%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1016.25-1016.30"
               'contract:
               'class-type?
               'value:
               _%klass107814%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass107792%_ _%obj107793%_ _%id107794%_)
        (let* ((_%klass107797%_ _%klass107792%_) (_%id107805%_ _%id107794%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass107797%_ '6 '#f '#f))
           _%obj107793%_
           _%id107805%_))))
    (define bind-method!__%
      (lambda (_%klass107751%_ _%id107752%_ _%proc107753%_ _%rebind?107754%_)
        (if (symbol? _%id107752%_)
            (let ((_%id107758%_ _%id107752%_))
              (if (procedure? _%proc107753%_)
                  (let ((_%proc107768%_ _%proc107753%_))
                    (__bind-method!__%
                     _%klass107751%_
                     _%id107758%_
                     _%proc107768%_
                     _%rebind?107754%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1019.42-1019.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107753%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.27-1019.29"
               'contract:
               'symbol?
               'value:
               _%id107752%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass107781%_ _%id107782%_ _%proc107783%_)
        (let ((_%rebind?107785%_ '#f))
          (bind-method!__%
           _%klass107781%_
           _%id107782%_
           _%proc107783%_
           _%rebind?107785%_))))
    (define bind-method!
      (lambda _g112468_
        (let ((_g112469_ (let () (declare (not safe)) (##length _g112468_))))
          (cond ((let () (declare (not safe)) (##fx= _g112469_ 3))
                 (apply bind-method!__0 _g112468_))
                ((let () (declare (not safe)) (##fx= _g112469_ 4))
                 (apply bind-method!__% _g112468_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g112468_))))))
    (define __bind-method!__%
      (lambda (_%klass107702%_ _%id107703%_ _%proc107704%_ _%rebind?107705%_)
        (let* ((_%id107708%_ _%id107703%_) (_%proc107716%_ _%proc107704%_))
          (letrec ((_%bind!107725%_
                    (lambda (_%ht107734%_)
                      (if (and (not _%rebind?107705%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht107734%_
                                  _%id107708%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass107702%_
                                 'method:
                                 _%id107708%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht107734%_
                               _%id107708%_
                               _%proc107716%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass107702%_ 'class))
                (let ((_%ht107728%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107702%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht107728%_
                      (_%bind!107725%_ _%ht107728%_)
                      (let ((_%ht107730%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107702%_
                           _%ht107730%_
                           '11
                           '#f
                           '#f))
                        (_%bind!107725%_ _%ht107730%_))))
                (if (let () (declare (not safe)) (##type? _%klass107702%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass107702%_)
                     _%id107708%_
                     _%proc107716%_
                     _%rebind?107705%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass107702%_)))))))
    (define __bind-method!__0
      (lambda (_%klass107739%_ _%id107740%_ _%proc107741%_)
        (let ((_%rebind?107743%_ '#f))
          (__bind-method!__%
           _%klass107739%_
           _%id107740%_
           _%proc107741%_
           _%rebind?107743%_))))
    (define __bind-method!
      (lambda _g112470_
        (let ((_g112471_ (let () (declare (not safe)) (##length _g112470_))))
          (cond ((let () (declare (not safe)) (##fx= _g112471_ 3))
                 (apply __bind-method!__0 _g112470_))
                ((let () (declare (not safe)) (##fx= _g112471_ 4))
                 (apply __bind-method!__% _g112470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g112470_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint107683%_ _%seed107684%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint107683%_
           procedure-hash
           eq?
           _%seed107684%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint107690%_ '#f) (_%seed107692%_ '0))
          (make-method-specializer-table__%
           _%size-hint107690%_
           _%seed107692%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint107694%_)
        (let ((_%seed107696%_ '0))
          (make-method-specializer-table__%
           _%size-hint107694%_
           _%seed107696%_))))
    (define make-method-specializer-table
      (lambda _g112472_
        (let ((_g112473_ (let () (declare (not safe)) (##length _g112472_))))
          (cond ((let () (declare (not safe)) (##fx= _g112473_ 0))
                 (apply make-method-specializer-table__0 _g112472_))
                ((let () (declare (not safe)) (##fx= _g112473_ 1))
                 (apply make-method-specializer-table__1 _g112472_))
                ((let () (declare (not safe)) (##fx= _g112473_ 2))
                 (apply make-method-specializer-table__% _g112472_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g112472_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint107663%_ _%seed107665%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint107663%_
           procedure-hash
           eq?
           _%seed107665%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint107671%_ '#f) (_%seed107673%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107671%_
           _%seed107673%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint107675%_)
        (let ((_%seed107677%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107675%_
           _%seed107677%_))))
    (define make-method-specializer-table/lock
      (lambda _g112474_
        (let ((_g112475_ (let () (declare (not safe)) (##length _g112474_))))
          (cond ((let () (declare (not safe)) (##fx= _g112475_ 0))
                 (apply make-method-specializer-table/lock__0 _g112474_))
                ((let () (declare (not safe)) (##fx= _g112475_ 1))
                 (apply make-method-specializer-table/lock__1 _g112474_))
                ((let () (declare (not safe)) (##fx= _g112475_ 2))
                 (apply make-method-specializer-table/lock__% _g112474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g112474_))))))
    (define method-specializer-table-ref
      (lambda (_%tab107616%_ _%key107617%_ _%default107618%_)
        (let ((_%table107620%_
               (let () (declare (not safe)) (&raw-table-table _%tab107616%_)))
              (_%seed107621%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107616%_))))
          (let* ((_%h107623%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107617%_))
                         _%seed107621%_))
                 (_%size107626%_ (vector-length _%table107620%_))
                 (_%entries107629%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107626%_ '2)))
                 (_%start107632%_
                  (let ((__tmp112476
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107623%_ _%entries107629%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112476 '1))))
            (let _%loop107636%_ ((_%probe107639%_ _%start107632%_)
                                 (_%i107641%_ '1)
                                 (_%deleted107643%_ '#f))
              (let ((_%k107646%_ (vector-ref _%table107620%_ _%probe107639%_)))
                (if (eq? _%k107646%_ (macro-unused-obj))
                    _%default107618%_
                    (if (eq? _%k107646%_ (macro-deleted-obj))
                        (_%loop107636%_
                         (let ((_%next-probe107651%_
                                (fx+ _%start107632%_
                                     _%i107641%_
                                     (fx* _%i107641%_ _%i107641%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107651%_ _%size107626%_))
                         (let () (declare (not safe)) (##fx+ _%i107641%_ '1))
                         (let ((_%$e107654%_ _%deleted107643%_))
                           (if _%$e107654%_ _%$e107654%_ _%probe107639%_)))
                        (if (eq? _%key107617%_ _%k107646%_)
                            (vector-ref
                             _%table107620%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe107639%_ '1)))
                            (_%loop107636%_
                             (let ((_%next-probe107659%_
                                    (fx+ _%start107632%_
                                         _%i107641%_
                                         (fx* _%i107641%_ _%i107641%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107659%_
                                _%size107626%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107641%_ '1))
                             _%deleted107643%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab107589%_ _%key107590%_ _%default107591%_)
        (let ((_%lock107593%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107589%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107598%_ ((_%spin107601%_ '0))
              (if (let ((__tmp112477
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107593%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112477 '0))
                  (let ((__tmp112478 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107593%_ '1 __tmp112478))
                  (if (let () (declare (not safe)) (##fx< _%spin107601%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107598%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107601%_ '1))))
                      (let ((_%owner107607%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107593%_ '1))))
                        (if (eq? _%owner107607%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107607%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107598%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107613%_
                 (method-specializer-table-ref
                  _%tab107589%_
                  _%key107590%_
                  _%default107591%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107593%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107593%_ '0 '0 '1))
            _%$r107613%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab107541%_ _%key107542%_ _%value107543%_)
        (let ((_%table107545%_
               (let () (declare (not safe)) (&raw-table-table _%tab107541%_)))
              (_%seed107546%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107541%_))))
          (let* ((_%h107548%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107542%_))
                         _%seed107546%_))
                 (_%size107551%_ (vector-length _%table107545%_))
                 (_%entries107554%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107551%_ '2)))
                 (_%start107557%_
                  (let ((__tmp112479
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107548%_ _%entries107554%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112479 '1))))
            (let _%loop107561%_ ((_%probe107564%_ _%start107557%_)
                                 (_%i107566%_ '1)
                                 (_%deleted107568%_ '#f))
              (let ((_%k107571%_ (vector-ref _%table107545%_ _%probe107564%_)))
                (if (eq? _%k107571%_ (macro-unused-obj))
                    (if _%deleted107568%_
                        (begin
                          (vector-set!
                           _%table107545%_
                           _%deleted107568%_
                           _%key107542%_)
                          (vector-set!
                           _%table107545%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107568%_ '1))
                           _%value107543%_)
                          ((lambda ()
                             (let ((__tmp112480
                                    (let ((__tmp112481
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107541%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112481 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107541%_
                                __tmp112480)))))
                        (begin
                          (vector-set!
                           _%table107545%_
                           _%probe107564%_
                           _%key107542%_)
                          (vector-set!
                           _%table107545%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107564%_ '1))
                           _%value107543%_)
                          ((lambda ()
                             (let ((__tmp112482
                                    (let ((__tmp112483
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107541%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112483 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107541%_
                                __tmp112482))
                             (let ((__tmp112484
                                    (let ((__tmp112485
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107541%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112485 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107541%_
                                __tmp112484))))))
                    (if (eq? _%k107571%_ (macro-deleted-obj))
                        (_%loop107561%_
                         (let ((_%next-probe107578%_
                                (fx+ _%start107557%_
                                     _%i107566%_
                                     (fx* _%i107566%_ _%i107566%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107578%_ _%size107551%_))
                         (let () (declare (not safe)) (##fx+ _%i107566%_ '1))
                         (let ((_%$e107581%_ _%deleted107568%_))
                           (if _%$e107581%_ _%$e107581%_ _%probe107564%_)))
                        (if (eq? _%key107542%_ _%k107571%_)
                            (let ()
                              (vector-set!
                               _%table107545%_
                               _%probe107564%_
                               _%key107542%_)
                              (vector-set!
                               _%table107545%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107564%_ '1))
                               _%value107543%_))
                            (_%loop107561%_
                             (let ((_%next-probe107586%_
                                    (fx+ _%start107557%_
                                         _%i107566%_
                                         (fx* _%i107566%_ _%i107566%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107586%_
                                _%size107551%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107566%_ '1))
                             _%deleted107568%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab107537%_ _%key107538%_ _%value107539%_)
        (if (let ((__tmp112488
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107537%_)))
                  (__tmp112486
                   (let ((__tmp112487
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107537%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112487 '4))))
              (declare (not safe))
              (##fx< __tmp112488 __tmp112486))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107537%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab107537%_
         _%key107538%_
         _%value107539%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab107509%_ _%key107510%_ _%value107511%_)
        (let ((_%lock107514%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107509%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107519%_ ((_%spin107522%_ '0))
              (if (let ((__tmp112489
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107514%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112489 '0))
                  (let ((__tmp112490 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107514%_ '1 __tmp112490))
                  (if (let () (declare (not safe)) (##fx< _%spin107522%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107519%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107522%_ '1))))
                      (let ((_%owner107528%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107514%_ '1))))
                        (if (eq? _%owner107528%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107528%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107519%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107534%_
                 (method-specializer-table-set!
                  _%tab107509%_
                  _%key107510%_
                  _%value107511%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107514%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107514%_ '0 '0 '1))
            _%$r107534%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab107460%_
               _%key107461%_
               _%method-specializer-table-update!107462%_
               _%default107463%_)
        (let ((_%table107465%_
               (let () (declare (not safe)) (&raw-table-table _%tab107460%_)))
              (_%seed107466%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107460%_))))
          (let* ((_%h107468%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107461%_))
                         _%seed107466%_))
                 (_%size107471%_ (vector-length _%table107465%_))
                 (_%entries107474%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107471%_ '2)))
                 (_%start107477%_
                  (let ((__tmp112491
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107468%_ _%entries107474%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112491 '1))))
            (let _%loop107481%_ ((_%probe107484%_ _%start107477%_)
                                 (_%i107486%_ '1)
                                 (_%deleted107488%_ '#f))
              (let ((_%k107491%_ (vector-ref _%table107465%_ _%probe107484%_)))
                (if (eq? _%k107491%_ (macro-unused-obj))
                    (if _%deleted107488%_
                        (begin
                          (vector-set!
                           _%table107465%_
                           _%deleted107488%_
                           _%key107461%_)
                          (vector-set!
                           _%table107465%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107488%_ '1))
                           (_%method-specializer-table-update!107462%_
                            _%default107463%_))
                          ((lambda ()
                             (let ((__tmp112492
                                    (let ((__tmp112493
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107460%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112493 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107460%_
                                __tmp112492)))))
                        (begin
                          (vector-set!
                           _%table107465%_
                           _%probe107484%_
                           _%key107461%_)
                          (vector-set!
                           _%table107465%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107484%_ '1))
                           (_%method-specializer-table-update!107462%_
                            _%default107463%_))
                          ((lambda ()
                             (let ((__tmp112494
                                    (let ((__tmp112495
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107460%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112495 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107460%_
                                __tmp112494))
                             (let ((__tmp112496
                                    (let ((__tmp112497
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107460%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112497 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107460%_
                                __tmp112496))))))
                    (if (eq? _%k107491%_ (macro-deleted-obj))
                        (_%loop107481%_
                         (let ((_%next-probe107498%_
                                (fx+ _%start107477%_
                                     _%i107486%_
                                     (fx* _%i107486%_ _%i107486%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107498%_ _%size107471%_))
                         (let () (declare (not safe)) (##fx+ _%i107486%_ '1))
                         (let ((_%$e107501%_ _%deleted107488%_))
                           (if _%$e107501%_ _%$e107501%_ _%probe107484%_)))
                        (if (eq? _%key107461%_ _%k107491%_)
                            (let ()
                              (vector-set!
                               _%table107465%_
                               _%probe107484%_
                               _%key107461%_)
                              (vector-set!
                               _%table107465%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107484%_ '1))
                               (_%method-specializer-table-update!107462%_
                                (vector-ref
                                 _%table107465%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe107484%_ '1))))))
                            (_%loop107481%_
                             (let ((_%next-probe107506%_
                                    (fx+ _%start107477%_
                                         _%i107486%_
                                         (fx* _%i107486%_ _%i107486%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107506%_
                                _%size107471%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107486%_ '1))
                             _%deleted107488%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab107455%_
               _%key107456%_
               _%method-specializer-table-update!107457%_
               _%default107458%_)
        (if (let ((__tmp112500
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107455%_)))
                  (__tmp112498
                   (let ((__tmp112499
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107455%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112499 '4))))
              (declare (not safe))
              (##fx< __tmp112500 __tmp112498))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107455%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab107455%_
         _%key107456%_
         _%method-specializer-table-update!107457%_
         _%default107458%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab107426%_
               _%key107427%_
               _%method-specializer-table-update!107428%_
               _%default107429%_)
        (let ((_%lock107432%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107426%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107437%_ ((_%spin107440%_ '0))
              (if (let ((__tmp112501
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107432%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112501 '0))
                  (let ((__tmp112502 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107432%_ '1 __tmp112502))
                  (if (let () (declare (not safe)) (##fx< _%spin107440%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107437%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107440%_ '1))))
                      (let ((_%owner107446%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107432%_ '1))))
                        (if (eq? _%owner107446%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107446%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107437%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107452%_
                 (_%method-specializer-table-update!107428%_
                  _%tab107426%_
                  _%key107427%_
                  _%method-specializer-table-update!107428%_
                  _%default107429%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107432%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107432%_ '0 '0 '1))
            _%$r107452%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab107383%_ _%key107384%_)
        (let ((_%table107386%_
               (let () (declare (not safe)) (&raw-table-table _%tab107383%_)))
              (_%seed107388%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107383%_))))
          (let* ((_%h107391%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107384%_))
                         _%seed107388%_))
                 (_%size107394%_ (vector-length _%table107386%_))
                 (_%entries107397%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107394%_ '2)))
                 (_%start107400%_
                  (let ((__tmp112503
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107391%_ _%entries107397%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112503 '1))))
            (let _%loop107404%_ ((_%probe107407%_ _%start107400%_)
                                 (_%i107409%_ '1))
              (let ((_%k107412%_ (vector-ref _%table107386%_ _%probe107407%_)))
                (if (eq? _%k107412%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107412%_ (macro-deleted-obj))
                        (_%loop107404%_
                         (let ((_%next-probe107417%_
                                (fx+ _%start107400%_
                                     _%i107409%_
                                     (fx* _%i107409%_ _%i107409%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107417%_ _%size107394%_))
                         (let () (declare (not safe)) (##fx+ _%i107409%_ '1)))
                        (if (eq? _%key107384%_ _%k107412%_)
                            (let ()
                              (vector-set!
                               _%table107386%_
                               _%probe107407%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107386%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107407%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp112504
                                        (let ((__tmp112505
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab107383%_))))
                                          (declare (not safe))
                                          (##fx- __tmp112505 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab107383%_
                                    __tmp112504)))))
                            (_%loop107404%_
                             (let ((_%next-probe107423%_
                                    (fx+ _%start107400%_
                                         _%i107409%_
                                         (fx* _%i107409%_ _%i107409%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107423%_
                                _%size107394%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107409%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab107355%_ _%key107357%_)
        (let ((_%lock107360%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107355%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107365%_ ((_%spin107368%_ '0))
              (if (let ((__tmp112506
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107360%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112506 '0))
                  (let ((__tmp112507 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107360%_ '1 __tmp112507))
                  (if (let () (declare (not safe)) (##fx< _%spin107368%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107365%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107368%_ '1))))
                      (let ((_%owner107374%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107360%_ '1))))
                        (if (eq? _%owner107374%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107374%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107365%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107380%_
                 (method-specializer-table-delete!
                  _%tab107355%_
                  _%key107357%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107360%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107360%_ '0 '0 '1))
            _%$r107380%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc107352%_ _%specializer107353%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc107352%_
         _%specializer107353%_)))
    (define __lookup-method-specializer
      (lambda (_%proc107350%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc107350%_
         '#f)))
    (define specialize-class
      (lambda (_%klass107336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107336%_ 'class))
            (let ((_%klass107340%_ _%klass107336%_))
              (__specialize-class _%klass107340%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1069.25-1069.30"
               'contract:
               'class-type?
               'value:
               _%klass107336%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass107318%_)
        (let* ((_%klass107321%_ _%klass107318%_)
               (_%$e107330%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107321%_ '12 '#f '#f))))
          (if _%$e107330%_
              _%$e107330%_
              (let ((_%method-table107334%_
                     (___specialize-class _%klass107321%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass107321%_
                   _%method-table107334%_
                   '12
                   '#f
                   '#f))
                _%method-table107334%_)))))
    (define __specialize-method
      (lambda (_%klass107302%_
               _%method-table107303%_
               _%method107304%_
               _%proc107305%_)
        (let ((_%$e107307%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table107303%_
                  _%method107304%_
                  '#f))))
          (if _%$e107307%_
              _%$e107307%_
              (let ((_%$e107310%_
                     (__lookup-method-specializer _%proc107305%_)))
                (if _%$e107310%_
                    ((lambda (_%specialize107313%_)
                       (let ((_%specialized-proc107315%_
                              (_%specialize107313%_
                               _%klass107302%_
                               _%method-table107303%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table107303%_
                          _%method107304%_
                          _%specialized-proc107315%_)))
                     _%$e107310%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table107303%_
                       _%method107304%_
                       _%proc107305%_))))))))
    (define ___specialize-class
      (lambda (_%klass107245%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107245%_ 'class))
            (if (__class-type-metaclass? _%klass107245%_)
                (let ((__method112370
                       (__method-ref _%klass107245%_ 'specialize-class)))
                  (if __method112370
                      (let ()
                        (declare (not safe))
                        (__method112370 _%klass107245%_))
                      (begin
                        (error '"Missing method"
                               _%klass107245%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp112508
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass107245%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp112508))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass107245%_)
                    (let ((_%method-table107251%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop107253%_ ((_%rest107255%_
                                            (__class-precedence-list
                                             _%klass107245%_)))
                        (let* ((_%rest107256107264%_ _%rest107255%_)
                               (_%else107258107272%_
                                (lambda () _%method-table107251%_))
                               (_%K107260107290%_
                                (lambda (_%rest107275%_ _%xklass107276%_)
                                  (let ((_%xmethod-table107277107279%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass107276%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table107277107279%_
                                        (let* ((_%xmethod-table107281%_
                                                _%xmethod-table107277107279%_)
                                               (__tmp112509
                                                (lambda (_%g107282107285%_
                                                         _%g107283107287%_)
                                                  (__specialize-method
                                                   _%klass107245%_
                                                   _%method-table107251%_
                                                   _%g107282107285%_
                                                   _%g107283107287%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table107281%_
                                           __tmp112509))
                                        '#f))
                                  (_%loop107253%_ _%rest107275%_))))
                          (if (pair? _%rest107256107264%_)
                              (let ((_%hd107261107293%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest107256107264%_)))
                                    (_%tl107262107295%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest107256107264%_))))
                                (let* ((_%xklass107298%_ _%hd107261107293%_)
                                       (_%rest107300%_ _%tl107262107295%_))
                                  (_%K107260107290%_
                                   _%rest107300%_
                                   _%xklass107298%_)))
                              (_%else107258107272%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass107245%_))
                (__specialize-class (__shadow-class__0 _%klass107245%_))
                (error '"bad class; cannot specialize" _%klass107245%_)))))
    (define seal-class!
      (lambda (_%klass107231%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107231%_ 'class))
            (let ((_%klass107235%_ _%klass107231%_))
              (__seal-class! _%klass107235%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1115.20-1115.25"
               'contract:
               'class-type?
               'value:
               _%klass107231%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass107216%_)
        (let ((_%klass107219%_ _%klass107216%_))
          (if (__class-type-sealed? _%klass107219%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass107219%_)
                    (let ()
                      (let ((__method112371
                             (__method-ref _%klass107219%_ 'seal-class!)))
                        (if __method112371
                            (let ()
                              (declare (not safe))
                              (__method112371 _%klass107219%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107219%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass107219%_))
                    (if (let ((__tmp112510
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107219%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp112510))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass107219%_)
                        (__specialize-class _%klass107219%_)))
                (__class-type-seal! _%klass107219%_))))))
    (define next-method
      (lambda (_%subklass107190%_ _%obj107191%_ _%id107192%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass107190%_ 'class))
            (let ((_%subklass107196%_ _%subklass107190%_))
              (if (symbol? _%id107192%_)
                  (let ((_%id107206%_ _%id107192%_))
                    (__next-method
                     _%subklass107196%_
                     _%obj107191%_
                     _%id107206%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1137.44-1137.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id107192%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1137.20-1137.28"
               'contract:
               'class-type?
               'value:
               _%subklass107190%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass107127%_ _%obj107128%_ _%id107129%_)
        (let* ((_%subklass107132%_ _%subklass107127%_)
               (_%id107140%_ _%id107129%_))
          (letrec ((_%find-next-method107149%_
                    (lambda (_%klass107151%_)
                      (let _%lp107153%_ ((_%rest107155%_
                                          (class-precedence-list
                                           _%klass107151%_)))
                        (let* ((_%rest107156107164%_ _%rest107155%_)
                               (_%else107158107172%_ (lambda () '#f))
                               (_%K107160107178%_
                                (lambda (_%rest107175%_ _%klass107176%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass107132%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass107176%_)))
                                      (__mixin-find-method
                                       _%rest107175%_
                                       _%obj107128%_
                                       _%id107140%_)
                                      (_%lp107153%_ _%rest107175%_)))))
                          (if (pair? _%rest107156107164%_)
                              (let ((_%hd107161107181%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest107156107164%_)))
                                    (_%tl107162107183%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest107156107164%_))))
                                (let* ((_%klass107186%_ _%hd107161107181%_)
                                       (_%rest107188%_ _%tl107162107183%_))
                                  (_%K107160107178%_
                                   _%rest107188%_
                                   _%klass107186%_)))
                              (_%else107158107172%_)))))))
            (_%find-next-method107149%_ (class-of _%obj107128%_))))))
    (define call-next-method
      (lambda (_%subklass107100%_ _%obj107101%_ _%id107102%_ . _%args107103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass107100%_ 'class))
            (let ((_%subklass107107%_ _%subklass107100%_))
              (if (symbol? _%id107102%_)
                  (let ((_%id107117%_ _%id107102%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass107107%_
                             _%obj107101%_
                             _%id107117%_
                             _%args107103%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1148.49-1148.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id107102%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1148.25-1148.33"
               'contract:
               'class-type?
               'value:
               _%subklass107100%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass107071%_ _%obj107072%_ _%id107073%_ . _%args107074%_)
        (let* ((_%subklass107077%_ _%subklass107071%_)
               (_%id107085%_ _%id107073%_)
               (_%$e107094%_
                (__next-method _%subklass107077%_ _%obj107072%_ _%id107085%_)))
          (if _%$e107094%_
              ((lambda (_%methodf107097%_)
                 (apply _%methodf107097%_ _%obj107072%_ _%args107074%_))
               _%$e107094%_)
              (error '"cannot find next method"
                     'object:
                     _%obj107072%_
                     'method:
                     _%id107085%_)))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type106964%_ _%properties106965%_)
        (letrec ((_%shadow-type-id106967%_
                  (lambda (_%type107059%_)
                    (let ((__tmp112511
                           (let ()
                             (declare (not safe))
                             (##type-name _%type107059%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp112511 '"::t"))))
                 (_%shadow-type-name106968%_
                  (lambda (_%type107057%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type107057%_))))
                 (_%make-shadow-class106969%_
                  (lambda (_%type107049%_ _%precedence-list107050%_)
                    (let* ((_%super107052%_
                            (if (pair? _%precedence-list107050%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list107050%_))
                                      '())
                                '()))
                           (_%klass107054%_
                            (make-class-type
                             (_%shadow-type-id106967%_ _%type107049%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type107049%_))
                             _%super107052%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (cons (cons 'system-type:
                                                     _%type107049%_)
                                               (let ((__tmp112512
                                                      (if (__type-extensible?
                                                           _%type107049%_)
                                                          '()
                                                          (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  _%properties106965%_
                                                  __tmp112512)))))
                             '#f)))
                      (let ((__tmp112513
                             (let ()
                               (declare (not safe))
                               (##type-id _%type107049%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp112513
                         _%klass107054%_))
                      _%klass107054%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106973%_ ((_%spin106976%_ '0))
              (if (let ((__tmp112514
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112514 '0))
                  (let ((__tmp112515 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp112515))
                  (if (let () (declare (not safe)) (##fx< _%spin106976%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again106973%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin106976%_ '1))))
                      (let ((_%owner106982%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner106982%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner106982%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again106973%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e106988%_
                 (let ((__tmp112516
                        (let ()
                          (declare (not safe))
                          (##type-id _%type106964%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp112516 '#f))))
            (if _%$e106988%_
                ((lambda (_%klass106991%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass106991%_)
                 _%$e106988%_)
                (let _%loop106994%_ ((_%super106996%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type106964%_)))
                                     (_%hierarchy106997%_ '()))
                  (if (not _%super106996%_)
                      (let _%loop107000%_ ((_%rest107002%_ _%hierarchy106997%_)
                                           (_%precedence-list107003%_ '()))
                        (let* ((_%rest107004107012%_ _%rest107002%_)
                               (_%else107006107022%_
                                (lambda ()
                                  (let ((_%klass107020%_
                                         (_%make-shadow-class106969%_
                                          _%type106964%_
                                          _%precedence-list107003%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-set!
                                       __shadow-classes-lock
                                       '1
                                       '#f))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-lock
                                       '0
                                       '0
                                       '1))
                                    _%klass107020%_)))
                               (_%K107008107036%_
                                (lambda (_%rest107025%_ _%type107026%_)
                                  (let ((_%$e107028%_
                                         (let ((__tmp112517
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type107026%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp112517
                                            '#f))))
                                    (if _%$e107028%_
                                        ((lambda (_%klass107031%_)
                                           (_%loop107000%_
                                            _%rest107025%_
                                            (cons _%klass107031%_
                                                  _%precedence-list107003%_)))
                                         _%$e107028%_)
                                        (let ((_%klass107034%_
                                               (_%make-shadow-class106969%_
                                                _%type107026%_
                                                _%precedence-list107003%_)))
                                          (_%loop107000%_
                                           _%rest107025%_
                                           (cons _%klass107034%_
                                                 _%precedence-list107003%_))))))))
                          (if (pair? _%rest107004107012%_)
                              (let ((_%hd107009107039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest107004107012%_)))
                                    (_%tl107010107041%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest107004107012%_))))
                                (let* ((_%type107044%_ _%hd107009107039%_)
                                       (_%rest107046%_ _%tl107010107041%_))
                                  (_%K107008107036%_
                                   _%rest107046%_
                                   _%type107044%_)))
                              (_%else107006107022%_))))
                      (_%loop106994%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super106996%_))
                       (cons _%super106996%_ _%hierarchy106997%_)))))))))
    (define __shadow-class__0
      (lambda (_%type107064%_)
        (let ((_%properties107066%_ '()))
          (__shadow-class__% _%type107064%_ _%properties107066%_))))
    (define __shadow-class
      (lambda _g112518_
        (let ((_g112519_ (let () (declare (not safe)) (##length _g112518_))))
          (cond ((let () (declare (not safe)) (##fx= _g112519_ 1))
                 (apply __shadow-class__0 _g112518_))
                ((let () (declare (not safe)) (##fx= _g112519_ 2))
                 (apply __shadow-class__% _g112518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g112518_))))))
    (define __type
      (let* ((_%tb106952%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e106954%_ _%tb106952%_))
        (if (eq? '2 _%$e106954%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e106954%_)
                (let ((_%flonum-self-tagging-tags106957%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits106958%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e106960%_ _%flonum-self-tagging-tags106957%_))
                    (if (eq? '0 _%$e106960%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits106958%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               haflonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               haflonum))
                        (if (eq? '1 _%$e106960%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits106958%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   stflonum
                                   haflonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   stflonum
                                   haflonum))
                            (if (eq? '2 _%$e106960%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e106960%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e106960%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags106957%_))))))))
                (error '"unexpected tag width" _%tb106952%_)))))
    (define __class
      (let* ((_%len106900%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv106902%_
              (let () (declare (not safe)) (##make-vector _%len106900%_ '#f))))
        (let _%loop106905%_ ((_%i106907%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i106907%_ _%len106900%_))
              (let* ((_%t106909%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i106907%_)))
                     (_%f106949%_
                      (if (eq? _%t106909%_ 'undefined)
                          (lambda (_%obj106912%_)
                            (error '"object type is undefined" _%obj106912%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t106909%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj106915%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t106909%_))
                              (if (eq? _%t106909%_ 'subtyped)
                                  (lambda (_%obj106919%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st106922%_
                                           (##subtype _%obj106919%_)))
                                      (if (##fx= _%st106922%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass106925%_
                                                 (##structure-type
                                                  _%obj106919%_)))
                                            (if (##structure-instance-of?
                                                 _%klass106925%_
                                                 'class)
                                                _%klass106925%_
                                                (__shadow-class__0
                                                 _%klass106925%_)))
                                          (if (##fx= _%st106922%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj106919%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e106928%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st106922%_)))
                                                (if _%$e106928%_
                                                    (__system-class
                                                     _%$e106928%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st106922%_
                                                           'object:
                                                           _%obj106919%_)))))))
                                  (if (eq? _%t106909%_ 'special)
                                      (lambda (_%obj106933%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj106933%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj106933%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj106933%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj106933%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj106933%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj106933%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj106933%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj106933%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj106933%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj106933%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj106933%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t106909%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv106902%_ _%i106907%_ _%f106949%_))
                (_%loop106905%_
                 (let () (declare (not safe)) (##fx+ _%i106907%_ '1))))
              _%cv106902%_))))
    (define type-of
      (lambda (_%obj106896%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj106896%_)))))
    (define class-of
      (lambda (_%obj106887%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t106891%_ (##type _%obj106887%_))
                 (_%f106893%_ (##vector-ref __class _%t106891%_)))
            (_%f106893%_ _%obj106887%_)))))
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
    (vector-set! __subtype-id (macro-subtype-flonum) 'haflonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_%id106881%_)
        (let ((_%$e106883%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id106881%_ '#f))))
          (if _%$e106883%_
              _%$e106883%_
              (error '"unknown system class" _%id106881%_)))))
    (define __make-system-class
      (lambda (_%id106875%_ _%super106876%_ _%properties106877%_)
        (let ((_%klass106879%_
               (make-class-type
                _%id106875%_
                _%id106875%_
                _%super106876%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties106877%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id106875%_
             _%klass106879%_))
          _%klass106879%_)))))
