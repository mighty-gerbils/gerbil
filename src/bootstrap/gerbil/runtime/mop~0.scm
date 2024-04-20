(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1713631264)
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
      (let ((_%flags99999%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties100000%_ '((direct-slots:) (system: . #t)))
            (_%slot-table100001%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags99999%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table100001%_
           _%properties100000%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots99975%_
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
             (_%slot-vector99977%_ (list->vector (cons '#f _%slots99975%_)))
             (_%slot-table99984%_
              (let ((_%slot-table99979%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp101442
                       (lambda (_%slot99981%_ _%field99982%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table99979%_
                            _%slot99981%_
                            _%field99982%_))
                         (let ((__tmp101443
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot99981%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table99979%_
                            __tmp101443
                            _%field99982%_))))
                      (__tmp101440
                       (let ((__tmp101441
                              (let ()
                                (declare (not safe))
                                (##length _%slots99975%_))))
                         (declare (not safe))
                         (##iota __tmp101441 '1))))
                  (declare (not safe))
                  (##for-each __tmp101442 _%slots99975%_ __tmp101440))
                _%slot-table99979%_))
             (_%flags99986%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields99992%_
              (list->vector
               (let ((__tmp101444
                      (map (lambda (_%g9998799989%_)
                             (list _%g9998799989%_ '5 '#f))
                           (drop _%slots99975%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp101444))))
             (_%properties99994%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots99975%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t99996%_
              (let ((__tmp101445 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags99986%_
                 ##type-type
                 _%fields99992%_
                 __tmp101445
                 _%slot-vector99977%_
                 _%slot-table99984%_
                 _%properties99994%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t99996%_ _%t99996%_))
        _%t99996%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags99971%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties99972%_ '((direct-slots:) (system: . #t)))
            (_%slot-table99973%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp101446 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags99971%_
           '#f
           '#()
           __tmp101446
           '#(#f)
           _%slot-table99973%_
           _%properties99972%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj99969%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj99969%_ 'class))))
    (define class-type=?
      (lambda (_%x99944%_ _%y99945%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x99944%_ 'class))
            (let ((_%x99949%_ _%x99944%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y99945%_ 'class))
                  (let ((_%y99959%_ _%y99945%_))
                    (__class-type=? _%x99949%_ _%y99959%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y99945%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x99944%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x99923%_ _%y99924%_)
        (let* ((_%x99927%_ _%x99923%_) (_%y99935%_ _%y99924%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x99927%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y99935%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type99909%_)
        (if (let () (declare (not safe)) (##type? _%type99909%_))
            (let ((_%type99913%_ _%type99909%_))
              (__type-opaque? _%type99913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type99909%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type99897%_)
        (let* ((_%type99900%_ _%type99897%_)
               (__tmp101447
                (let ((__tmp101448
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99900%_))))
                  (declare (not safe))
                  (##fxand __tmp101448 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp101447 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type99883%_)
        (if (let () (declare (not safe)) (##type? _%type99883%_))
            (let ((_%type99887%_ _%type99883%_))
              (__type-extensible? _%type99887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type99883%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type99871%_)
        (let* ((_%type99874%_ _%type99871%_)
               (__tmp101449
                (let ((__tmp101450
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99874%_))))
                  (declare (not safe))
                  (##fxand __tmp101450 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101449 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type99857%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type99857%_ 'class))
            (let ((_%type99861%_ _%type99857%_))
              (__class-type-final? _%type99861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type99857%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type99845%_)
        (let* ((_%type99848%_ _%type99845%_)
               (__tmp101451
                (let ((__tmp101452
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99848%_))))
                  (declare (not safe))
                  (##fxand __tmp101452 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp101451 '0))))
    (define class-type-struct?
      (lambda (_%klass99831%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99831%_ 'class))
            (let ((_%klass99835%_ _%klass99831%_))
              (__class-type-struct? _%klass99835%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass99831%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass99819%_)
        (let* ((_%klass99822%_ _%klass99819%_)
               (__tmp101453
                (let ((__tmp101454
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99822%_))))
                  (declare (not safe))
                  (##fxand __tmp101454 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp101453 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass99805%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99805%_ 'class))
            (let ((_%klass99809%_ _%klass99805%_))
              (__class-type-sealed? _%klass99809%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass99805%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass99793%_)
        (let* ((_%klass99796%_ _%klass99793%_)
               (__tmp101455
                (let ((__tmp101456
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99796%_))))
                  (declare (not safe))
                  (##fxand __tmp101456 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp101455 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass99779%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99779%_ 'class))
            (let ((_%klass99783%_ _%klass99779%_))
              (__class-type-metaclass? _%klass99783%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass99779%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass99767%_)
        (let* ((_%klass99770%_ _%klass99767%_)
               (__tmp101457
                (let ((__tmp101458
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99770%_))))
                  (declare (not safe))
                  (##fxand __tmp101458 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp101457 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass99753%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99753%_ 'class))
            (let ((_%klass99757%_ _%klass99753%_))
              (__class-type-system? _%klass99757%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass99753%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass99741%_)
        (let* ((_%klass99744%_ _%klass99741%_)
               (__tmp101459
                (let ((__tmp101460
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass99744%_))))
                  (declare (not safe))
                  (##fxand __tmp101460 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp101459 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id99626%_
               _%type-name99627%_
               _%type-super99628%_
               _%precedence-list99629%_
               _%slot-vector99630%_
               _%properties99631%_
               _%constructor99632%_
               _%slot-table99633%_
               _%methods99634%_)
        (letrec ((_%make-props!99637%_
                  (lambda (_%key99710%_)
                    (letrec* ((_%ht99712%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!99713%_
                               (lambda (_%ht99734%_ _%slots99735%_)
                                 (for-each
                                  (lambda (_%g9973699738%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht99734%_
                                       _%g9973699738%_
                                       '#t)))
                                  _%slots99735%_)))
                              (_%put-alist!99714%_
                               (lambda (_%ht99723%_
                                        _%key99724%_
                                        _%alist99725%_)
                                 (let ((_%$e99727%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99724%_
                                           _%alist99725%_))))
                                   (if _%$e99727%_
                                       ((lambda (_%g9972999731%_)
                                          (_%put-slots!99713%_
                                           _%ht99723%_
                                           _%g9972999731%_))
                                        _%$e99727%_)
                                       '#!void)))))
                      (_%put-alist!99714%_
                       _%ht99712%_
                       _%key99710%_
                       _%properties99631%_)
                      (for-each
                       (lambda (_%mixin99716%_)
                         (let ((_%alist99718%_
                                (##structure-ref
                                 _%mixin99716%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist99718%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key99710%_
                                           _%alist99718%_))))
                               (_%put-slots!99713%_
                                _%ht99712%_
                                (class-type-slot-list _%mixin99716%_))
                               (_%put-alist!99714%_
                                _%ht99712%_
                                _%key99710%_
                                _%alist99718%_))))
                       _%precedence-list99629%_)
                      _%ht99712%_))))
          (let* ((_%transparent?99639%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties99631%_)))
                 (_%all-slots-printable?99644%_
                  (let ((_%$e99641%_ _%transparent?99639%_))
                    (if _%$e99641%_
                        _%$e99641%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties99631%_))))))
                 (_%printable99646%_
                  (if (not _%all-slots-printable?99644%_)
                      (_%make-props!99637%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?99651%_
                  (let ((_%$e99648%_ _%transparent?99639%_))
                    (if _%$e99648%_
                        _%$e99648%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties99631%_))))))
                 (_%equalable99653%_
                  (if (not _%all-slots-equalable?99651%_)
                      (_%make-props!99637%_ 'equal:)
                      '#f))
                 (_%first-new-field99655%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super99628%_ 'class))
                      (let ((__tmp101461
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super99628%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp101461))
                      '1))
                 (_%field-info-length99657%_
                  (let ((__tmp101462
                         (let ((__tmp101463
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector99630%_))))
                           (declare (not safe))
                           (##fx- __tmp101463 _%first-new-field99655%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp101462)))
                 (_%field-info99659%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length99657%_ '#f)))
                 (_%struct?99661%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties99631%_)))
                 (_%final?99663%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties99631%_)))
                 (_%metaclass99671%_
                  (let ((_%metaclass9966499666%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties99631%_))))
                    (if _%metaclass9966499666%_
                        (let ((_%metaclass99669%_ _%metaclass9966499666%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass99669%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id99626%_
                                     'metaclass:
                                     _%metaclass99669%_))
                          _%metaclass99669%_)
                        '#f)))
                 (_%system?99673%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties99631%_)))
                 (_%opaque?99678%_
                  (let ((_%$e99675%_ (not _%all-slots-equalable?99651%_)))
                    (if _%$e99675%_
                        _%$e99675%_
                        (if _%type-super99628%_
                            (__type-opaque? _%type-super99628%_)
                            '#f))))
                 (_%type-flags99680%_
                  (let ((__tmp101468
                         (if _%final?99663%_ '0 type-flag-extensible))
                        (__tmp101467 (if _%opaque?99678%_ type-flag-opaque '0))
                        (__tmp101466
                         (if _%struct?99661%_ class-type-flag-struct '0))
                        (__tmp101465
                         (if _%metaclass99671%_ class-type-flag-metaclass '0))
                        (__tmp101464
                         (if _%system?99673%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp101468
                             __tmp101467
                             __tmp101466
                             __tmp101465
                             __tmp101464)))
                 (_%precedence-list99688%_
                  (let ((_%$e99682%_ (memq t::t _%precedence-list99629%_)))
                    (if _%$e99682%_
                        ((lambda (_%tail99685%_)
                           (if (null? (cdr _%tail99685%_))
                               _%precedence-list99629%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list99629%_)))
                         _%$e99682%_)
                        (let ((__tmp101469 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list99629%_ __tmp101469))))))
            (let _%loop99691%_ ((_%i99693%_ _%first-new-field99655%_)
                                (_%j99694%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j99694%_ _%field-info-length99657%_))
                  (let* ((_%slot99696%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector99630%_ _%i99693%_)))
                         (_%flags99704%_
                          (if _%transparent?99639%_
                              '0
                              (let ((__tmp101471
                                     (if (or _%all-slots-printable?99644%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable99646%_
                                                _%slot99696%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp101470
                                     (if (or _%all-slots-equalable?99651%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable99653%_
                                                _%slot99696%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp101471 __tmp101470)))))
                    (vector-set! _%field-info99659%_ _%j99694%_ _%slot99696%_)
                    (vector-set!
                     _%field-info99659%_
                     (let () (declare (not safe)) (##fx+ _%j99694%_ '1))
                     _%flags99704%_)
                    (_%loop99691%_
                     (let () (declare (not safe)) (##fx+ _%i99693%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j99694%_ '3))))
                  '#!void))
            (if _%metaclass99671%_
                (let ((_%val99707%_
                       (make-instance
                        _%metaclass99671%_
                        _%type-id99626%_
                        _%type-name99627%_
                        _%type-flags99680%_
                        _%type-super99628%_
                        _%field-info99659%_
                        _%precedence-list99688%_
                        _%slot-vector99630%_
                        _%slot-table99633%_
                        _%properties99631%_
                        _%constructor99632%_
                        _%methods99634%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val99707%_ 'class))
                      _%val99707%_
                      (error '"bad cast" class::t _%val99707%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id99626%_
                   _%type-name99627%_
                   _%type-flags99680%_
                   _%type-super99628%_
                   _%field-info99659%_
                   _%precedence-list99688%_
                   _%slot-vector99630%_
                   _%slot-table99633%_
                   _%properties99631%_
                   _%constructor99632%_
                   _%methods99634%_)))))))
    (define class-type-id
      (lambda (_%klass99624%_)
        (##structure-ref _%klass99624%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass99622%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99622%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass99619%_ _%val99620%_)
        (##structure-set! _%klass99619%_ _%val99620%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass99614%_ _%val99616%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99614%_
           _%val99616%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass99612%_)
        (##structure-ref _%klass99612%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass99610%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99610%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass99607%_ _%val99608%_)
        (##structure-set! _%klass99607%_ _%val99608%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass99602%_ _%val99604%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99602%_
           _%val99604%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass99600%_)
        (##structure-ref _%klass99600%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass99598%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99598%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass99595%_ _%val99596%_)
        (##structure-set! _%klass99595%_ _%val99596%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass99590%_ _%val99592%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99590%_
           _%val99592%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass99588%_)
        (##structure-ref _%klass99588%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass99586%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99586%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass99583%_ _%val99584%_)
        (##structure-set! _%klass99583%_ _%val99584%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass99578%_ _%val99580%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99578%_
           _%val99580%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass99576%_)
        (##structure-ref _%klass99576%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass99574%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99574%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass99571%_ _%val99572%_)
        (##structure-set! _%klass99571%_ _%val99572%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass99566%_ _%val99568%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99566%_
           _%val99568%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass99564%_)
        (##structure-ref _%klass99564%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass99562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99562%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass99559%_ _%val99560%_)
        (##structure-set!
         _%klass99559%_
         _%val99560%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass99554%_ _%val99556%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99554%_
           _%val99556%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass99552%_)
        (##structure-ref _%klass99552%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass99550%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99550%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass99547%_ _%val99548%_)
        (##structure-set!
         _%klass99547%_
         _%val99548%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass99542%_ _%val99544%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99542%_
           _%val99544%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass99540%_)
        (##structure-ref _%klass99540%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass99538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99538%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass99535%_ _%val99536%_)
        (##structure-set!
         _%klass99535%_
         _%val99536%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass99530%_ _%val99532%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99530%_
           _%val99532%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass99528%_)
        (##structure-ref _%klass99528%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass99526%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99526%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass99523%_ _%val99524%_)
        (##structure-set!
         _%klass99523%_
         _%val99524%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass99518%_ _%val99520%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99518%_
           _%val99520%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass99516%_)
        (##structure-ref _%klass99516%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass99514%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass99514%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass99511%_ _%val99512%_)
        (##structure-set!
         _%klass99511%_
         _%val99512%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass99506%_ _%val99508%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99506%_
           _%val99508%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass99504%_)
        (##structure-ref _%klass99504%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass99502%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass99502%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass99499%_ _%val99500%_)
        (##structure-set! _%klass99499%_ _%val99500%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass99494%_ _%val99496%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass99494%_
           _%val99496%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass99480%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99480%_ 'class))
            (let ((_%klass99484%_ _%klass99480%_))
              (__class-type-slot-list _%klass99484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass99480%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass99468%_)
        (let ((_%klass99471%_ _%klass99468%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass99471%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass99454%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99454%_ 'class))
            (let ((_%klass99458%_ _%klass99454%_))
              (__class-type-field-count _%klass99458%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass99454%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass99442%_)
        (let* ((_%klass99445%_ _%klass99442%_)
               (__tmp101472
                (let ((__tmp101473
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass99445%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp101473))))
          (declare (not safe))
          (##fx- __tmp101472 '1))))
    (define class-type-seal!
      (lambda (_%klass99428%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99428%_ 'class))
            (let ((_%klass99432%_ _%klass99428%_))
              (__class-type-seal! _%klass99432%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass99428%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass99416%_)
        (let ((_%klass99419%_ _%klass99416%_))
          (let ((__tmp101474
                 (let ((__tmp101475
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass99419%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp101475))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass99419%_
             __tmp101474
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct99391%_ _%maybe-super-struct99392%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct99391%_ 'class))
            (let ((_%maybe-sub-struct99396%_ _%maybe-sub-struct99391%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct99392%_
                     'class))
                  (let ((_%maybe-super-struct99406%_
                         _%maybe-super-struct99392%_))
                    (__substruct?
                     _%maybe-sub-struct99396%_
                     _%maybe-super-struct99406%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct99392%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct99391%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct99360%_ _%maybe-super-struct99361%_)
        (let* ((_%maybe-sub-struct99364%_ _%maybe-sub-struct99360%_)
               (_%maybe-super-struct99372%_ _%maybe-super-struct99361%_)
               (_%maybe-super-struct-id99381%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct99372%_))))
          (let _%lp99383%_ ((_%super-struct99385%_ _%maybe-sub-struct99364%_))
            (if (not _%super-struct99385%_)
                '#f
                (if (eq? _%maybe-super-struct-id99381%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct99385%_)))
                    '#t
                    (_%lp99383%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct99385%_)))))))))
    (define base-struct/1
      (lambda (_%klass99355%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99355%_ 'class))
            (if (__class-type-struct? _%klass99355%_)
                _%klass99355%_
                (let () (declare (not safe)) (##type-super _%klass99355%_)))
            (if (not _%klass99355%_)
                '#f
                (error '"not a class or false" _%klass99355%_)))))
    (define base-struct/2
      (lambda (_%klass199340%_ _%klass299341%_)
        (let ((_%s199343%_ (base-struct/1 _%klass199340%_))
              (_%s299344%_ (base-struct/1 _%klass299341%_)))
          (if (or (not _%s199343%_)
                  (and _%s299344%_ (substruct? _%s199343%_ _%s299344%_)))
              _%s299344%_
              (if (or (not _%s299344%_)
                      (and _%s199343%_ (substruct? _%s299344%_ _%s199343%_)))
                  _%s199343%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass199340%_
                         _%klass299341%_
                         _%s199343%_
                         _%s299344%_))))))
    (define base-struct/list
      (lambda (_%all-supers99224%_)
        (let* ((_%all-supers9922599250%_ _%all-supers99224%_)
               (_%E9923099254%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9922599250%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9924899337%_ (lambda () '#f))
                (_%K9924599323%_
                 (lambda (_%x99321%_) (base-struct/1 _%x99321%_)))
                (_%K9924099300%_
                 (lambda (_%y99297%_ _%x99298%_)
                   (base-struct/2 _%x99298%_ _%y99297%_)))
                (_%K9923199261%_
                 (lambda (_%y99258%_ _%x99259%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x99259%_ _%y99258%_)))))
            (let* ((_%__match101434101435%_
                    (lambda (_%hd9923299264%_ _%tl9923399266%_)
                      (let ((_%x99269%_ _%hd9923299264%_))
                        (letrec ((_%splice-rest9923599271%_
                                  (lambda (_%rest9923999278%_ _%y99280%_)
                                    (if (null? _%rest9923999278%_)
                                        (_%K9923199261%_ _%y99280%_ _%x99269%_)
                                        (_%E9923099254%_))))
                                 (_%splice-try9923799273%_
                                  (lambda (_%hd9923899282%_
                                           _%rest9923999284%_
                                           _%y9923499285%_)
                                    (let ((_%y99288%_ _%hd9923899282%_))
                                      (_%splice-loop9923699275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9923999284%_))
                                       (cons _%y99288%_ _%y9923499285%_)))))
                                 (_%splice-loop9923699275%_
                                  (lambda (_%rest9923999290%_ _%y9923499291%_)
                                    (if (pair? _%rest9923999290%_)
                                        (_%splice-try9923799273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9923999290%_))
                                         _%rest9923999290%_
                                         _%y9923499291%_)
                                        (_%splice-rest9923599271%_
                                         _%rest9923999290%_
                                         (reverse _%y9923499291%_))))))
                          (_%splice-loop9923699275%_ _%tl9923399266%_ '())))))
                   (_%try-match9922799333%_
                    (lambda ()
                      (if (pair? _%all-supers9922599250%_)
                          (let ((_%tl9924799328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9922599250%_)))
                                (_%hd9924699326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9922599250%_))))
                            (if (null? _%tl9924799328%_)
                                (let ((_%x99331%_ _%hd9924699326%_))
                                  (base-struct/1 _%x99331%_))
                                (if (pair? _%tl9924799328%_)
                                    (let ((_%tl9924499312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9924799328%_)))
                                          (_%hd9924399310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9924799328%_))))
                                      (if (null? _%tl9924499312%_)
                                          (let ((_%x99308%_ _%hd9924699326%_)
                                                (_%y99315%_ _%hd9924399310%_))
                                            (_%K9924099300%_
                                             _%y99315%_
                                             _%x99308%_))
                                          (_%__match101434101435%_
                                           _%hd9924699326%_
                                           _%tl9924799328%_)))
                                    (_%__match101434101435%_
                                     _%hd9924699326%_
                                     _%tl9924799328%_))))
                          (_%E9923099254%_)))))
              (if (null? _%all-supers9922599250%_)
                  (_%K9924899337%_)
                  (_%try-match9922799333%_)))))))
    (define base-struct
      (lambda _%all-supers99222%_ (base-struct/list _%all-supers99222%_)))
    (define find-super-constructor
      (lambda (_%super99173%_)
        (let _%lp99175%_ ((_%rest99177%_ _%super99173%_)
                          (_%constructor99178%_ '#f))
          (let* ((_%rest9917999187%_ _%rest99177%_)
                 (_%else9918199195%_ (lambda () _%constructor99178%_))
                 (_%K9918399210%_
                  (lambda (_%rest99198%_ _%hd99199%_)
                    (let ((_%$e99201%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd99199%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e99201%_
                          ((lambda (_%xconstructor99204%_)
                             (if (or (not _%constructor99178%_)
                                     (eq? _%constructor99178%_
                                          _%xconstructor99204%_))
                                 (_%lp99175%_
                                  _%rest99198%_
                                  _%xconstructor99204%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor99178%_
                                        _%xconstructor99204%_)))
                           _%$e99201%_)
                          (_%lp99175%_ _%rest99198%_ _%constructor99178%_))))))
            (if (pair? _%rest9917999187%_)
                (let ((_%hd9918499213%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9917999187%_)))
                      (_%tl9918599215%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9917999187%_))))
                  (let* ((_%hd99218%_ _%hd9918499213%_)
                         (_%rest99220%_ _%tl9918599215%_))
                    (_%K9918399210%_ _%rest99220%_ _%hd99218%_)))
                (_%else9918199195%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list99149%_ _%direct-slots99150%_)
        (let* ((_%next-slot99152%_ '1)
               (_%slot-table99154%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots99156%_ '(__class))
               (_%process-slot99160%_
                (lambda (_%slot99158%_)
                  (if (symbol? _%slot99158%_)
                      '#!void
                      (error '"invalid slot name" _%slot99158%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table99154%_
                              _%slot99158%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99154%_
                           _%slot99158%_
                           _%next-slot99152%_))
                        (let ((__tmp101476
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot99158%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table99154%_
                           __tmp101476
                           _%next-slot99152%_))
                        (set! _%r-slots99156%_
                              (cons _%slot99158%_ _%r-slots99156%_))
                        (set! _%next-slot99152%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot99152%_ '1))))
                      '#!void)))
               (_%process-slots99166%_
                (lambda (_%g9916199163%_)
                  (for-each _%process-slot99160%_ _%g9916199163%_))))
          (let ((__tmp101478
                 (lambda (_%mixin99169%_)
                   (_%process-slots99166%_
                    (let ((__tmp101479
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin99169%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp101479 '())))))
                (__tmp101477 (reverse _%class-precedence-list99149%_)))
            (declare (not safe))
            (##for-each __tmp101478 __tmp101477))
          (_%process-slots99166%_ _%direct-slots99150%_)
          (let ((_%slot-vector99171%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots99156%_)))))
            (values _%slot-vector99171%_ _%slot-table99154%_)))))
    (define make-class-type
      (lambda (_%id99074%_
               _%name99075%_
               _%direct-supers99076%_
               _%direct-slots99077%_
               _%properties99078%_
               _%constructor99079%_)
        (if (symbol? _%id99074%_)
            (let ((_%id99083%_ _%id99074%_))
              (if (symbol? _%name99075%_)
                  (let ((_%name99093%_ _%name99075%_))
                    (if (list? _%direct-supers99076%_)
                        (let ((_%direct-supers99103%_ _%direct-supers99076%_))
                          (if (list? _%direct-slots99077%_)
                              (let ((_%direct-slots99113%_
                                     _%direct-slots99077%_))
                                (if (list? _%properties99078%_)
                                    (let ((_%properties99123%_
                                           _%properties99078%_))
                                      (if ((lambda (_%$obj99132%_)
                                             (or (not _%$obj99132%_)
                                                 (symbol? _%$obj99132%_)))
                                           _%constructor99079%_)
                                          (let ((_%constructor99139%_
                                                 _%constructor99079%_))
                                            (__make-class-type
                                             _%id99083%_
                                             _%name99093%_
                                             _%direct-supers99103%_
                                             _%direct-slots99113%_
                                             _%properties99123%_
                                             _%constructor99139%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor99079%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties99078%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots99077%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers99076%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name99075%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id99074%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id98943%_
               _%name98944%_
               _%direct-supers98945%_
               _%direct-slots98946%_
               _%properties98947%_
               _%constructor98948%_)
        (let* ((_%id98951%_ _%id98943%_)
               (_%name98959%_ _%name98944%_)
               (_%direct-supers98967%_ _%direct-supers98945%_)
               (_%direct-slots98975%_ _%direct-slots98946%_)
               (_%properties98983%_ _%properties98947%_)
               (_%constructor98991%_ _%constructor98948%_))
          (let ((_%$e99003%_
                 (let ((__tmp101480
                        (lambda (_%$obj99000%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj99000%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp101480 _%direct-supers98967%_))))
            (if _%$e99003%_
                ((lambda (_%g9900599007%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9900599007%_))
                 _%$e99003%_)
                (let ((_%$e99010%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers98967%_))))
                  (if _%$e99010%_
                      ((lambda (_%g9901299014%_)
                         (error '"Cannot extend final class" _%g9901299014%_))
                       _%$e99010%_)
                      '#!void))))
          (let ((_g101481_ (compute-precedence-list _%direct-supers98967%_)))
            (begin
              (let ((_g101482_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g101481_)
                           (##vector-length _g101481_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101482_ 2)))
                    (error "Context expects 2 values" _g101482_)))
              (let ((_%precedence-list99017%_
                     (let () (declare (not safe)) (##vector-ref _g101481_ 0)))
                    (_%struct-super99018%_
                     (let () (declare (not safe)) (##vector-ref _g101481_ 1))))
                (let ((_g101483_
                       (compute-class-slots
                        _%precedence-list99017%_
                        _%direct-slots98975%_)))
                  (begin
                    (let ((_g101484_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g101483_)
                                 (##vector-length _g101483_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g101484_ 2)))
                          (error "Context expects 2 values" _g101484_)))
                    (let ((_%slot-vector99020%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g101483_ 0)))
                          (_%slot-table99021%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g101483_ 1))))
                      (let* ((_%properties99023%_
                              (cons (cons 'direct-slots: _%direct-slots98975%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers98967%_)
                                          _%properties98983%_)))
                             (_%constructor*99028%_
                              (let ((_%$e99025%_ _%constructor98991%_))
                                (if _%$e99025%_
                                    _%$e99025%_
                                    (find-super-constructor
                                     _%direct-supers98967%_))))
                             (_%precedence-list99071%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties99023%_))
                                      (memq object::t
                                            _%precedence-list99017%_))
                                  _%precedence-list99017%_
                                  (let _%loop99033%_ ((_%tail99035%_
                                                       _%precedence-list99017%_)
                                                      (_%head99036%_ '()))
                                    (let* ((_%tail9903799045%_ _%tail99035%_)
                                           (_%else9903999053%_
                                            (lambda ()
                                              (let ((__tmp101485
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp101485
                                                 _%head99036%_))))
                                           (_%K9904199059%_
                                            (lambda (_%rest99056%_ _%hd99057%_)
                                              (if (eq? _%hd99057%_ t::t)
                                                  (let ((__tmp101486
                                                         (cons object::t
                                                               _%tail99035%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp101486
                                                     _%head99036%_))
                                                  (_%loop99033%_
                                                   _%rest99056%_
                                                   (cons _%hd99057%_
                                                         _%head99036%_))))))
                                      (if (pair? _%tail9903799045%_)
                                          (let ((_%hd9904299062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9903799045%_)))
                                                (_%tl9904399064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9903799045%_))))
                                            (let* ((_%hd99067%_
                                                    _%hd9904299062%_)
                                                   (_%rest99069%_
                                                    _%tl9904399064%_))
                                              (_%K9904199059%_
                                               _%rest99069%_
                                               _%hd99067%_)))
                                          (_%else9903999053%_)))))))
                        (make-class-type-descriptor
                         _%id98951%_
                         _%name98959%_
                         _%struct-super99018%_
                         _%precedence-list99071%_
                         _%slot-vector99020%_
                         _%properties99023%_
                         _%constructor*99028%_
                         _%slot-table99021%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass98929%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98929%_ 'class))
            (let ((_%klass98933%_ _%klass98929%_))
              (__class-precedence-list _%klass98933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass98929%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass98917%_)
        (let ((_%klass98920%_ _%klass98917%_))
          (cons _%klass98920%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98920%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers98914%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers98914%_))))
    (define make-class-predicate
      (lambda (_%klass98900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98900%_ 'class))
            (let ((_%klass98904%_ _%klass98900%_))
              (__make-class-predicate _%klass98904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass98900%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass98871%_)
        (let* ((_%klass98874%_ _%klass98871%_)
               (_%tid98883%_
                (let () (declare (not safe)) (##type-id _%klass98874%_))))
          (if (__class-type-final? _%klass98874%_)
              (lambda (_%g9888598887%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9888598887%_
                   _%tid98883%_)))
              (if (__class-type-struct? _%klass98874%_)
                  (lambda (_%g9889098892%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9889098892%_ _%tid98883%_)))
                  (lambda (_%g9889598897%_)
                    (__class-instance? _%klass98874%_ _%g9889598897%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass98846%_ _%slot98847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98846%_ 'class))
            (let ((_%klass98851%_ _%klass98846%_))
              (if (symbol? _%slot98847%_)
                  (let ((_%slot98861%_ _%slot98847%_))
                    (__make-class-slot-accessor _%klass98851%_ _%slot98861%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass98846%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass98814%_ _%slot98815%_)
        (let* ((_%klass98818%_ _%klass98814%_)
               (_%slot98826%_ _%slot98815%_)
               (_%field98835%_
                (let ((__tmp101487
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98818%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101487 _%slot98826%_ '#f))))
          (if (not _%field98835%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98818%_
                       'slot:
                       _%slot98826%_)
                '#!void)
              (if (__class-type-final? _%klass98818%_)
                  (make-final-slot-accessor
                   _%klass98818%_
                   _%slot98826%_
                   _%field98835%_)
                  (if (__class-type-struct? _%klass98818%_)
                      (make-struct-slot-accessor
                       _%klass98818%_
                       _%slot98826%_
                       _%field98835%_)
                      (if (let ((_%strukt98841%_
                                 (base-struct/1 _%klass98818%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98841%_
                                    'class))
                                 (let ((__tmp101488
                                        (let ((__tmp101489
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98841%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101489))))
                                   (declare (not safe))
                                   (##fx< _%field98835%_ __tmp101488))))
                          (make-struct-subclass-slot-accessor
                           _%klass98818%_
                           _%slot98826%_
                           _%field98835%_)
                          (make-class-cached-slot-accessor
                           _%klass98818%_
                           _%slot98826%_
                           _%field98835%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass98789%_ _%slot98790%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98789%_ 'class))
            (let ((_%klass98794%_ _%klass98789%_))
              (if (symbol? _%slot98790%_)
                  (let ((_%slot98804%_ _%slot98790%_))
                    (__make-class-slot-mutator _%klass98794%_ _%slot98804%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98790%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass98789%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass98757%_ _%slot98758%_)
        (let* ((_%klass98761%_ _%klass98757%_)
               (_%slot98769%_ _%slot98758%_)
               (_%field98778%_
                (let ((__tmp101490
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98761%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101490 _%slot98769%_ '#f))))
          (if (not _%field98778%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98761%_
                       'slot:
                       _%slot98769%_)
                '#!void)
              (if (__class-type-final? _%klass98761%_)
                  (make-final-slot-mutator
                   _%klass98761%_
                   _%slot98769%_
                   _%field98778%_)
                  (if (__class-type-struct? _%klass98761%_)
                      (make-struct-slot-mutator
                       _%klass98761%_
                       _%slot98769%_
                       _%field98778%_)
                      (if (let ((_%strukt98784%_
                                 (base-struct/1 _%klass98761%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98784%_
                                    'class))
                                 (let ((__tmp101491
                                        (let ((__tmp101492
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98784%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101492))))
                                   (declare (not safe))
                                   (##fx< _%field98778%_ __tmp101491))))
                          (make-struct-subclass-slot-mutator
                           _%klass98761%_
                           _%slot98769%_
                           _%field98778%_)
                          (make-class-cached-slot-mutator
                           _%klass98761%_
                           _%slot98769%_
                           _%field98778%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass98732%_ _%slot98733%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98732%_ 'class))
            (let ((_%klass98737%_ _%klass98732%_))
              (if (symbol? _%slot98733%_)
                  (let ((_%slot98747%_ _%slot98733%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass98737%_
                     _%slot98747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass98732%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass98700%_ _%slot98701%_)
        (let* ((_%klass98704%_ _%klass98700%_)
               (_%slot98712%_ _%slot98701%_)
               (_%field98721%_
                (let ((__tmp101493
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98704%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101493 _%slot98712%_ '#f))))
          (if (not _%field98721%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98704%_
                       'slot:
                       _%slot98712%_)
                '#!void)
              (if (__class-type-final? _%klass98704%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass98704%_
                   _%slot98712%_
                   _%field98721%_)
                  (if (__class-type-struct? _%klass98704%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass98704%_
                       _%slot98712%_
                       _%field98721%_)
                      (if (let ((_%strukt98727%_
                                 (base-struct/1 _%klass98704%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98727%_
                                    'class))
                                 (let ((__tmp101494
                                        (let ((__tmp101495
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98727%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101495))))
                                   (declare (not safe))
                                   (##fx< _%field98721%_ __tmp101494))))
                          (make-struct-slot-unchecked-accessor
                           _%klass98704%_
                           _%slot98712%_
                           _%field98721%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass98704%_
                           _%slot98712%_
                           _%field98721%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass98675%_ _%slot98676%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98675%_ 'class))
            (let ((_%klass98680%_ _%klass98675%_))
              (if (symbol? _%slot98676%_)
                  (let ((_%slot98690%_ _%slot98676%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass98680%_
                     _%slot98690%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98676%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass98675%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass98643%_ _%slot98644%_)
        (let* ((_%klass98647%_ _%klass98643%_)
               (_%slot98655%_ _%slot98644%_)
               (_%field98664%_
                (let ((__tmp101496
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98647%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp101496 _%slot98655%_ '#f))))
          (if (not _%field98664%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass98647%_
                       'slot:
                       _%slot98655%_)
                '#!void)
              (if (__class-type-final? _%klass98647%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass98647%_
                   _%slot98655%_
                   _%field98664%_)
                  (if (__class-type-struct? _%klass98647%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass98647%_
                       _%slot98655%_
                       _%field98664%_)
                      (if (let ((_%strukt98670%_
                                 (base-struct/1 _%klass98647%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98670%_
                                    'class))
                                 (let ((__tmp101497
                                        (let ((__tmp101498
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98670%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp101498))))
                                   (declare (not safe))
                                   (##fx< _%field98664%_ __tmp101497))))
                          (make-struct-slot-unchecked-mutator
                           _%klass98647%_
                           _%slot98655%_
                           _%field98664%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass98647%_
                           _%slot98655%_
                           _%field98664%_))))))))
    (define not-an-instance__%
      (lambda (_%object98627%_ _%class98628%_ _%slot98629%_)
        (apply error
               '"not an instance"
               'object:
               _%object98627%_
               'class:
               _%class98628%_
               (if _%slot98629%_ (cons 'slot: (cons _%slot98629%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object98634%_ _%class98635%_)
        (let ((_%slot98637%_ '#f))
          (not-an-instance__% _%object98634%_ _%class98635%_ _%slot98637%_))))
    (define not-an-instance
      (lambda _g101500_
        (let ((_g101499_ (let () (declare (not safe)) (##length _g101500_))))
          (cond ((let () (declare (not safe)) (##fx= _g101499_ 2))
                 (apply not-an-instance__0 _g101500_))
                ((let () (declare (not safe)) (##fx= _g101499_ 3))
                 (apply not-an-instance__% _g101500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g101500_))))))
    (define make-final-slot-accessor
      (lambda (_%klass98620%_ _%slot98621%_ _%field98622%_)
        (lambda (_%obj98624%_)
          (##direct-structure-ref
           _%obj98624%_
           _%field98622%_
           _%klass98620%_
           _%slot98621%_))))
    (define make-final-slot-mutator
      (lambda (_%klass98613%_ _%slot98614%_ _%field98615%_)
        (lambda (_%obj98617%_ _%val98618%_)
          (##direct-structure-set!
           _%obj98617%_
           _%val98618%_
           _%field98615%_
           _%klass98613%_
           _%slot98614%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass98607%_ _%slot98608%_ _%field98609%_)
        (lambda (_%obj98611%_)
          (##structure-ref
           _%obj98611%_
           _%field98609%_
           _%klass98607%_
           _%slot98608%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass98600%_ _%slot98601%_ _%field98602%_)
        (lambda (_%obj98604%_ _%val98605%_)
          (##structure-set!
           _%obj98604%_
           _%val98605%_
           _%field98602%_
           _%klass98600%_
           _%slot98601%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass98594%_ _%slot98595%_ _%field98596%_)
        (lambda (_%obj98598%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj98598%_
             _%field98596%_
             _%klass98594%_
             _%slot98595%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass98587%_ _%slot98588%_ _%field98589%_)
        (lambda (_%obj98591%_ _%val98592%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj98591%_
             _%val98592%_
             _%field98589%_
             _%klass98587%_
             _%slot98588%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass98581%_ _%slot98582%_ _%field98583%_)
        (lambda (_%obj98585%_)
          (if (class-instance? _%klass98581%_ _%obj98585%_)
              (unchecked-slot-ref _%obj98585%_ _%field98583%_)
              (not-an-instance__%
               _%obj98585%_
               _%klass98581%_
               _%slot98582%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass98574%_ _%slot98575%_ _%field98576%_)
        (lambda (_%obj98578%_ _%val98579%_)
          (if (class-instance? _%klass98574%_ _%obj98578%_)
              (unchecked-field-set! _%obj98578%_ _%field98576%_ _%val98579%_)
              (not-an-instance__%
               _%obj98578%_
               _%klass98574%_
               _%slot98575%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass98565%_ _%slot98566%_ _%field98567%_)
        (lambda (_%obj98569%_)
          (if (let ((__tmp101501
                     (let () (declare (not safe)) (##type-id _%klass98565%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98569%_ __tmp101501))
              (unchecked-field-ref _%obj98569%_ _%field98567%_)
              (if (class-instance? _%klass98565%_ _%obj98569%_)
                  (unchecked-slot-ref _%obj98569%_ _%slot98566%_)
                  (not-an-instance__%
                   _%obj98569%_
                   _%klass98565%_
                   _%slot98566%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass98555%_ _%slot98556%_ _%field98557%_)
        (lambda (_%obj98559%_ _%val98560%_)
          (if (let ((__tmp101502
                     (let () (declare (not safe)) (##type-id _%klass98555%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98559%_ __tmp101502))
              (unchecked-field-set! _%obj98559%_ _%field98557%_ _%val98560%_)
              (if (class-instance? _%klass98555%_ _%obj98559%_)
                  (unchecked-slot-set! _%obj98559%_ _%slot98556%_ _%val98560%_)
                  (not-an-instance__%
                   _%obj98559%_
                   _%klass98555%_
                   _%slot98556%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass98549%_ _%slot98550%_ _%field98551%_)
        (lambda (_%obj98553%_)
          (if (let ((__tmp101503
                     (let () (declare (not safe)) (##type-id _%klass98549%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98553%_ __tmp101503))
              (unchecked-field-ref _%obj98553%_ _%field98551%_)
              (unchecked-slot-ref _%obj98553%_ _%slot98550%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass98542%_ _%slot98543%_ _%field98544%_)
        (lambda (_%obj98546%_ _%val98547%_)
          (if (let ((__tmp101504
                     (let () (declare (not safe)) (##type-id _%klass98542%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj98546%_ __tmp101504))
              (unchecked-field-set! _%obj98546%_ _%field98544%_ _%val98547%_)
              (unchecked-slot-set! _%obj98546%_ _%slot98543%_ _%val98547%_)))))
    (define class-slot-offset
      (lambda (_%klass98517%_ _%slot98518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98517%_ 'class))
            (let ((_%klass98522%_ _%klass98517%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98518%_))
                  (let ((_%slot98532%_ _%slot98518%_))
                    (__class-slot-offset _%klass98522%_ _%slot98532%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98518%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass98517%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass98496%_ _%slot98497%_)
        (let* ((_%klass98500%_ _%klass98496%_)
               (_%slot98508%_ _%slot98497%_)
               (__tmp101505
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98500%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp101505 _%slot98508%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass98470%_ _%obj98471%_ _%slot98472%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98470%_ 'class))
            (let ((_%klass98476%_ _%klass98470%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98472%_))
                  (let ((_%slot98486%_ _%slot98472%_))
                    (__class-slot-ref
                     _%klass98476%_
                     _%obj98471%_
                     _%slot98486%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98472%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass98470%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass98446%_ _%obj98447%_ _%slot98448%_)
        (let* ((_%klass98451%_ _%klass98446%_) (_%slot98459%_ _%slot98448%_))
          (if (__class-instance? _%klass98451%_ _%obj98447%_)
              (let ((_%off98468%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98447%_))
                      _%slot98459%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj98447%_
                 _%off98468%_
                 _%klass98451%_
                 _%slot98459%_))
              (not-an-instance__0 _%obj98447%_ _%klass98451%_)))))
    (define class-slot-set!
      (lambda (_%klass98419%_ _%obj98420%_ _%slot98421%_ _%val98422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98419%_ 'class))
            (let ((_%klass98426%_ _%klass98419%_))
              (if (let () (declare (not safe)) (symbolic? _%slot98421%_))
                  (let ((_%slot98436%_ _%slot98421%_))
                    (__class-slot-set!
                     _%klass98426%_
                     _%obj98420%_
                     _%slot98436%_
                     _%val98422%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot98421%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass98419%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass98394%_ _%obj98395%_ _%slot98396%_ _%val98397%_)
        (let* ((_%klass98400%_ _%klass98394%_) (_%slot98408%_ _%slot98396%_))
          (if (__class-instance? _%klass98400%_ _%obj98395%_)
              (let ((_%off98417%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj98395%_))
                      _%slot98408%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj98395%_
                 _%val98397%_
                 _%off98417%_
                 _%klass98400%_
                 _%slot98408%_))
              (not-an-instance__0 _%obj98395%_ _%klass98400%_)))))
    (define unchecked-field-ref
      (lambda (_%obj98391%_ _%off98392%_)
        (let ((__tmp101506
               (let () (declare (not safe)) (##structure-type _%obj98391%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj98391%_
           _%off98392%_
           __tmp101506
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj98387%_ _%off98388%_ _%val98389%_)
        (let ((__tmp101507
               (let () (declare (not safe)) (##structure-type _%obj98387%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj98387%_
           _%val98389%_
           _%off98388%_
           __tmp101507
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj98384%_ _%slot98385%_)
        (unchecked-field-ref
         _%obj98384%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98384%_))
          _%slot98385%_))))
    (define unchecked-slot-set!
      (lambda (_%obj98380%_ _%slot98381%_ _%val98382%_)
        (unchecked-field-set!
         _%obj98380%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj98380%_))
          _%slot98381%_)
         _%val98382%_)))
    (define slot-ref__%
      (lambda (_%obj98342%_ _%slot98343%_ _%E98344%_)
        (if (symbol? _%slot98343%_)
            (let ((_%slot98348%_ _%slot98343%_))
              (if (procedure? _%E98344%_)
                  (let ((_%E98358%_ _%E98344%_))
                    (__slot-ref__% _%obj98342%_ _%slot98348%_ _%E98358%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E98344%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot98343%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj98371%_ _%slot98372%_)
        (let ((_%E98374%_ __slot-error))
          (slot-ref__% _%obj98371%_ _%slot98372%_ _%E98374%_))))
    (define slot-ref
      (lambda _g101509_
        (let ((_g101508_ (let () (declare (not safe)) (##length _g101509_))))
          (cond ((let () (declare (not safe)) (##fx= _g101508_ 2))
                 (apply slot-ref__0 _g101509_))
                ((let () (declare (not safe)) (##fx= _g101508_ 3))
                 (apply slot-ref__% _g101509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g101509_))))))
    (define __slot-ref__%
      (lambda (_%obj98298%_ _%slot98299%_ _%E98300%_)
        (let* ((_%slot98303%_ _%slot98299%_)
               (_%E98311%_ _%E98300%_)
               (_%klass98320%_ (class-of _%obj98298%_))
               (_%$e98323%_
                (__class-slot-offset _%klass98320%_ _%slot98303%_)))
          (if _%$e98323%_
              ((lambda (_%off98326%_)
                 (unchecked-field-ref _%obj98298%_ _%off98326%_))
               _%$e98323%_)
              (let ()
                (declare (not safe))
                (_%E98311%_ _%obj98298%_ _%slot98303%_))))))
    (define __slot-ref__0
      (lambda (_%obj98332%_ _%slot98333%_)
        (let ((_%E98335%_ __slot-error))
          (__slot-ref__% _%obj98332%_ _%slot98333%_ _%E98335%_))))
    (define __slot-ref
      (lambda _g101511_
        (let ((_g101510_ (let () (declare (not safe)) (##length _g101511_))))
          (cond ((let () (declare (not safe)) (##fx= _g101510_ 2))
                 (apply __slot-ref__0 _g101511_))
                ((let () (declare (not safe)) (##fx= _g101510_ 3))
                 (apply __slot-ref__% _g101511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g101511_))))))
    (define slot-set!__%
      (lambda (_%obj98256%_ _%slot98257%_ _%val98258%_ _%E98259%_)
        (if (symbol? _%slot98257%_)
            (let ((_%slot98263%_ _%slot98257%_))
              (if (procedure? _%E98259%_)
                  (let ((_%E98273%_ _%E98259%_))
                    (__slot-set!__%
                     _%obj98256%_
                     _%slot98263%_
                     _%val98258%_
                     _%E98273%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E98259%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot98257%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj98286%_ _%slot98287%_ _%val98288%_)
        (let ((_%E98290%_ __slot-error))
          (slot-set!__% _%obj98286%_ _%slot98287%_ _%val98288%_ _%E98290%_))))
    (define slot-set!
      (lambda _g101513_
        (let ((_g101512_ (let () (declare (not safe)) (##length _g101513_))))
          (cond ((let () (declare (not safe)) (##fx= _g101512_ 3))
                 (apply slot-set!__0 _g101513_))
                ((let () (declare (not safe)) (##fx= _g101512_ 4))
                 (apply slot-set!__% _g101513_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g101513_))))))
    (define __slot-set!__%
      (lambda (_%obj98209%_ _%slot98210%_ _%val98211%_ _%E98212%_)
        (let* ((_%slot98215%_ _%slot98210%_)
               (_%E98223%_ _%E98212%_)
               (_%klass98232%_ (class-of _%obj98209%_))
               (_%$e98235%_
                (__class-slot-offset _%klass98232%_ _%slot98215%_)))
          (if _%$e98235%_
              ((lambda (_%off98238%_)
                 (unchecked-field-set! _%obj98209%_ _%off98238%_ _%val98211%_))
               _%$e98235%_)
              (let ()
                (declare (not safe))
                (_%E98223%_ _%obj98209%_ _%slot98215%_))))))
    (define __slot-set!__0
      (lambda (_%obj98244%_ _%slot98245%_ _%val98246%_)
        (let ((_%E98248%_ __slot-error))
          (__slot-set!__%
           _%obj98244%_
           _%slot98245%_
           _%val98246%_
           _%E98248%_))))
    (define __slot-set!
      (lambda _g101515_
        (let ((_g101514_ (let () (declare (not safe)) (##length _g101515_))))
          (cond ((let () (declare (not safe)) (##fx= _g101514_ 3))
                 (apply __slot-set!__0 _g101515_))
                ((let () (declare (not safe)) (##fx= _g101514_ 4))
                 (apply __slot-set!__% _g101515_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g101515_))))))
    (define __slot-error
      (lambda (_%obj98205%_ _%slot98206%_)
        (error '"Cannot find slot"
               'object:
               _%obj98205%_
               'slot:
               _%slot98206%_)))
    (define subclass?
      (lambda (_%maybe-sub-class98180%_ _%maybe-super-class98181%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class98180%_ 'class))
            (let ((_%maybe-sub-class98185%_ _%maybe-sub-class98180%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class98181%_
                     'class))
                  (let ((_%maybe-super-class98195%_
                         _%maybe-super-class98181%_))
                    (__subclass?
                     _%maybe-sub-class98185%_
                     _%maybe-super-class98195%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class98181%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class98180%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class98152%_ _%maybe-super-class98153%_)
        (let* ((_%maybe-sub-class98156%_ _%maybe-sub-class98152%_)
               (_%maybe-super-class98164%_ _%maybe-super-class98153%_)
               (_%maybe-super-class-id98173%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class98164%_)))
               (_%$e98175%_
                (eq? _%maybe-super-class-id98173%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class98156%_)))))
          (if _%$e98175%_
              _%$e98175%_
              (let ((__tmp101517
                     (lambda (_%super-class98178%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class98178%_))
                            _%maybe-super-class-id98173%_)))
                    (__tmp101516
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class98156%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp101517 __tmp101516))))))
    (define object?
      (lambda (_%o98149%_)
        (if (let () (declare (not safe)) (##structure? _%o98149%_))
            (let ((__tmp101518
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98149%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp101518 'class))
            '#f)))
    (define object-type
      (lambda (_%o98144%_)
        (if (let () (declare (not safe)) (##structure? _%o98144%_))
            (let ((_%klass98147%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o98144%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass98147%_ 'class))
                  _%klass98147%_
                  (begin
                    (error '"not an object" _%o98144%_ _%klass98147%_)
                    '#!void)))
            (begin (error '"not an object" _%o98144%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass98129%_ _%obj98130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98129%_ 'class))
            (let ((_%klass98134%_ _%klass98129%_))
              (__direct-instance? _%klass98134%_ _%obj98130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass98129%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass98116%_ _%obj98117%_)
        (let* ((_%klass98120%_ _%klass98116%_)
               (__tmp101519
                (let () (declare (not safe)) (##type-id _%klass98120%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj98117%_ __tmp101519))))
    (define immediate-instance-of?
      (lambda (_%klass98112%_ _%obj98113%_)
        (if (let () (declare (not safe)) (##structure? _%obj98113%_))
            (eq? _%klass98112%_
                 (let () (declare (not safe)) (##structure-type _%obj98113%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass98097%_ _%obj98098%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98097%_ 'class))
            (let ((_%klass98102%_ _%klass98097%_))
              (__struct-instance? _%klass98102%_ _%obj98098%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass98097%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass98084%_ _%obj98085%_)
        (let* ((_%klass98088%_ _%klass98084%_)
               (__tmp101520
                (let () (declare (not safe)) (##type-id _%klass98088%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj98085%_ __tmp101520))))
    (define class-instance?
      (lambda (_%klass98069%_ _%obj98070%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98069%_ 'class))
            (let ((_%klass98074%_ _%klass98069%_))
              (__class-instance? _%klass98074%_ _%obj98070%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass98069%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass98054%_ _%obj98055%_)
        (let* ((_%klass98058%_ _%klass98054%_)
               (_%type98067%_ (class-of _%obj98055%_)))
          (__subclass? _%type98067%_ _%klass98058%_))))
    (define make-object
      (lambda (_%klass98029%_ _%k98030%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98029%_ 'class))
            (let ((_%klass98034%_ _%klass98029%_))
              (if (fixnum? _%k98030%_)
                  (let ((_%k98044%_ _%k98030%_))
                    (__make-object _%klass98034%_ _%k98044%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k98030%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass98029%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass98006%_ _%k98007%_)
        (let* ((_%klass98010%_ _%klass98006%_) (_%k98018%_ _%k98007%_))
          (if (__class-type-system? _%klass98010%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass98010%_)
                '#!void)
              (let ((_%obj98027%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass98010%_ _%k98018%_))))
                (object-fill! _%obj98027%_ '#f))))))
    (define object-fill!
      (lambda (_%obj97991%_ _%fill97992%_)
        (if '#t
            (let ((_%obj97996%_ _%obj97991%_))
              (__object-fill! _%obj97996%_ _%fill97992%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj97991%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj97973%_ _%fill97974%_)
        (let ((_%obj97977%_ _%obj97973%_))
          (let _%loop97986%_ ((_%i97988%_
                               (let ((__tmp101521
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj97977%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101521 '1))))
            (if (let () (declare (not safe)) (##fx> _%i97988%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj97977%_
                     _%fill97974%_
                     _%i97988%_
                     '#f
                     '#f))
                  (_%loop97986%_
                   (let () (declare (not safe)) (##fx- _%i97988%_ '1))))
                _%obj97977%_)))))
    (define new-instance
      (lambda (_%klass97959%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97959%_ 'class))
            (let ((_%klass97963%_ _%klass97959%_))
              (__new-instance _%klass97963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass97959%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass97947%_)
        (let* ((_%klass97950%_ _%klass97947%_)
               (__obj101436
                (let ((__tmp101522
                       (let ((__tmp101523
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass97950%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp101523))))
                  (declare (not safe))
                  (##make-structure _%klass97950%_ __tmp101522))))
          (object-fill! __obj101436 '#f)
          __obj101436)))
    (define make-instance
      (lambda (_%klass97932%_ . _%args97933%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97932%_ 'class))
            (let ((_%klass97937%_ _%klass97932%_))
              (declare (not safe))
              (##apply __make-instance _%klass97937%_ _%args97933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass97932%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass97904%_ . _%args97905%_)
        (let* ((_%klass97908%_ _%klass97904%_)
               (_%$e97917%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97908%_ '10 '#f '#f))))
          (if _%$e97917%_
              ((lambda (_%kons-id97920%_)
                 (let ((_%obj97922%_ (__new-instance _%klass97908%_)))
                   (___constructor-init!
                    _%klass97908%_
                    _%kons-id97920%_
                    _%obj97922%_
                    _%args97905%_)
                   _%obj97922%_))
               _%$e97917%_)
              (if (__class-type-metaclass? _%klass97908%_)
                  (let ((_%obj97925%_ (__new-instance _%klass97908%_)))
                    (__metaclass-instance-init!
                     _%klass97908%_
                     _%obj97925%_
                     _%args97905%_)
                    _%obj97925%_)
                  (if (__class-type-struct? _%klass97908%_)
                      (if (let ((__tmp101525
                                 (__class-type-field-count _%klass97908%_))
                                (__tmp101524
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args97905%_))))
                            (declare (not safe))
                            (##fx= __tmp101525 __tmp101524))
                          (apply ##structure _%klass97908%_ _%args97905%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass97908%_
                                   'slots:
                                   (__class-type-slot-list _%klass97908%_)
                                   'args:
                                   _%args97905%_)
                            '#!void))
                      (let ((_%obj97928%_ (__new-instance _%klass97908%_)))
                        (___class-instance-init!
                         _%klass97908%_
                         _%obj97928%_
                         _%args97905%_)
                        _%obj97928%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj97889%_ . _%args97890%_)
        (if '#t
            (let ((_%obj97894%_ _%obj97889%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj97894%_ _%args97890%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj97889%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj97876%_ . _%args97877%_)
        (let ((_%obj97880%_ _%obj97876%_))
          (if (let ((__tmp101527
                     (let () (declare (not safe)) (##length _%args97877%_)))
                    (__tmp101526
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj97880%_))))
                (declare (not safe))
                (##fx< __tmp101527 __tmp101526))
              (___struct-instance-init! _%obj97880%_ _%args97877%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj97880%_
                     'args:
                     _%args97877%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj97835%_ _%args97836%_)
        (let _%lp97838%_ ((_%k97840%_ '1) (_%rest97841%_ _%args97836%_))
          (let* ((_%rest9784297850%_ _%rest97841%_)
                 (_%else9784497858%_ (lambda () _%obj97835%_))
                 (_%K9784697864%_
                  (lambda (_%rest97861%_ _%hd97862%_)
                    (unchecked-field-set! _%obj97835%_ _%k97840%_ _%hd97862%_)
                    (_%lp97838%_
                     (let () (declare (not safe)) (##fx+ _%k97840%_ '1))
                     _%rest97861%_))))
            (if (pair? _%rest9784297850%_)
                (let ((_%hd9784797867%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9784297850%_)))
                      (_%tl9784897869%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9784297850%_))))
                  (let* ((_%hd97872%_ _%hd9784797867%_)
                         (_%rest97874%_ _%tl9784897869%_))
                    (_%K9784697864%_ _%rest97874%_ _%hd97872%_)))
                (_%else9784497858%_))))))
    (define class-instance-init!
      (lambda (_%obj97820%_ . _%args97821%_)
        (if '#t
            (let ((_%obj97825%_ _%obj97820%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj97825%_ _%args97821%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj97820%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj97807%_ . _%args97808%_)
        (let ((_%obj97811%_ _%obj97807%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj97811%_))
           _%obj97811%_
           _%args97808%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass97749%_ _%obj97750%_ _%args97751%_)
        (let _%lp97753%_ ((_%rest97755%_ _%args97751%_))
          (let* ((_%rest9775697766%_ _%rest97755%_)
                 (_%else9775897774%_
                  (lambda ()
                    (if (null? _%rest97755%_)
                        _%obj97750%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass97749%_
                               'rest:
                               _%rest97755%_))))
                 (_%K9776097788%_
                  (lambda (_%rest97777%_ _%val97778%_ _%key97779%_)
                    (if (keyword? _%key97779%_)
                        (let ((_%$e97782%_
                               (__class-slot-offset
                                _%klass97749%_
                                _%key97779%_)))
                          (if _%$e97782%_
                              ((lambda (_%off97785%_)
                                 (unchecked-field-set!
                                  _%obj97750%_
                                  _%off97785%_
                                  _%val97778%_)
                                 (_%lp97753%_ _%rest97777%_))
                               _%$e97782%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass97749%_
                                     'slot:
                                     _%key97779%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key97779%_)))))
            (if (pair? _%rest9775697766%_)
                (let ((_%hd9776197791%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9775697766%_)))
                      (_%tl9776297793%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9775697766%_))))
                  (let ((_%key97796%_ _%hd9776197791%_))
                    (if (pair? _%tl9776297793%_)
                        (let ((_%hd9776397798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9776297793%_)))
                              (_%tl9776497800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9776297793%_))))
                          (let* ((_%val97803%_ _%hd9776397798%_)
                                 (_%rest97805%_ _%tl9776497800%_))
                            (_%K9776097788%_
                             _%rest97805%_
                             _%val97803%_
                             _%key97796%_)))
                        (_%else9775897774%_))))
                (_%else9775897774%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass97745%_ _%obj97746%_ _%args97747%_)
        (apply call-method
               _%klass97745%_
               'instance-init!
               _%obj97746%_
               _%args97747%_)))
    (define constructor-init!
      (lambda (_%klass97708%_ _%kons-id97709%_ _%obj97710%_ . _%args97711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97708%_ 'class))
            (let ((_%klass97715%_ _%klass97708%_))
              (if (symbol? _%kons-id97709%_)
                  (let ((_%kons-id97725%_ _%kons-id97709%_))
                    (if '#t
                        (let ((_%obj97735%_ _%obj97710%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass97715%_
                                   _%kons-id97725%_
                                   _%obj97735%_
                                   _%args97711%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj97710%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id97709%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass97708%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass97677%_ _%kons-id97678%_ _%obj97679%_ . _%args97680%_)
        (let* ((_%klass97683%_ _%klass97677%_)
               (_%kons-id97691%_ _%kons-id97678%_)
               (_%obj97699%_ _%obj97679%_))
          (___constructor-init!
           _%klass97683%_
           _%kons-id97691%_
           _%obj97699%_
           _%args97680%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass97666%_ _%kons-id97667%_ _%obj97668%_ _%args97669%_)
        (let ((_%$e97671%_
               (__find-method _%klass97666%_ _%obj97668%_ _%kons-id97667%_)))
          (if _%$e97671%_
              ((lambda (_%kons97674%_)
                 (apply _%kons97674%_ _%obj97668%_ _%args97669%_)
                 _%obj97668%_)
               _%$e97671%_)
              (error '"missing constructor"
                     'class:
                     _%klass97666%_
                     'method:
                     _%kons-id97667%_)))))
    (define struct-copy
      (lambda (_%struct97652%_)
        (if '#t
            (let ((_%struct97656%_ _%struct97652%_))
              (__struct-copy _%struct97656%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct97652%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct97640%_)
        (let ((_%struct97643%_ _%struct97640%_))
          (declare (not safe))
          (##structure-copy _%struct97643%_))))
    (define struct->list
      (lambda (_%obj97626%_)
        (if '#t
            (let ((_%obj97630%_ _%obj97626%_)) (__struct->list _%obj97630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj97626%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj97614%_)
        (let ((_%obj97617%_ _%obj97614%_))
          (declare (not safe))
          (##vector->list _%obj97617%_))))
    (define class->list
      (lambda (_%obj97600%_)
        (if '#t
            (let ((_%obj97604%_ _%obj97600%_)) (__class->list _%obj97604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj97600%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj97576%_)
        (let* ((_%obj97579%_ _%obj97576%_)
               (_%klass97588%_
                (let () (declare (not safe)) (##structure-type _%obj97579%_)))
               (_%slot-vector97590%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97588%_ '7 '#f '#f))))
          (let _%loop97592%_ ((_%index97594%_
                               (let ((__tmp101528
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector97590%_))))
                                 (declare (not safe))
                                 (##fx- __tmp101528 '1)))
                              (_%plist97595%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index97594%_ '1))
                (cons _%klass97588%_ _%plist97595%_)
                (let ((_%slot97598%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector97590%_ _%index97594%_))))
                  (_%loop97592%_
                   (let () (declare (not safe)) (##fx- _%index97594%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot97598%_))
                         (cons (unchecked-field-ref
                                _%obj97579%_
                                _%index97594%_)
                               _%plist97595%_)))))))))
    (define call-method
      (lambda (_%obj97560%_ _%id97561%_ . _%args97562%_)
        (if (symbol? _%id97561%_)
            (let ((_%id97566%_ _%id97561%_))
              (declare (not safe))
              (##apply __call-method _%obj97560%_ _%id97566%_ _%args97562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id97561%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj97529%_ _%id97530%_ . _%args97531%_)
        (let* ((_%id97534%_ _%id97530%_)
               (_%$e97543%_ (__method-ref _%obj97529%_ _%id97534%_)))
          (if _%$e97543%_
              ((lambda (_%method97546%_)
                 (let ((_%method97548%_ _%method97546%_))
                   (apply _%method97548%_ _%obj97529%_ _%args97531%_)))
               _%$e97543%_)
              (error '"cannot find method"
                     'object:
                     _%obj97529%_
                     'method:
                     _%id97534%_)))))
    (define method-ref
      (lambda (_%obj97514%_ _%id97515%_)
        (if (symbol? _%id97515%_)
            (let ((_%id97519%_ _%id97515%_))
              (__method-ref _%obj97514%_ _%id97519%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id97515%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj97501%_ _%id97502%_)
        (let ((_%id97505%_ _%id97502%_))
          (__find-method (class-of _%obj97501%_) _%obj97501%_ _%id97505%_))))
    (define checked-method-ref
      (lambda (_%obj97494%_ _%id97495%_)
        (let ((_%$e97498%_ (method-ref _%obj97494%_ _%id97495%_)))
          (if _%$e97498%_
              _%$e97498%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj97494%_
                       'method:
                       _%id97495%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj97479%_ _%id97480%_)
        (if (symbol? _%id97480%_)
            (let ((_%id97484%_ _%id97480%_))
              (__bound-method-ref _%obj97479%_ _%id97484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id97480%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj97447%_ _%id97448%_)
        (let* ((_%id97451%_ _%id97448%_)
               (_%$e97460%_ (__method-ref _%obj97447%_ _%id97451%_)))
          (if _%$e97460%_
              ((lambda (_%method97463%_)
                 (let ((_%method97465%_ _%method97463%_))
                   (lambda _%args97476%_
                     (apply _%method97465%_ _%obj97447%_ _%args97476%_))))
               _%$e97460%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj97432%_ _%id97433%_)
        (if (symbol? _%id97433%_)
            (let ((_%id97437%_ _%id97433%_))
              (__checked-bound-method-ref _%obj97432%_ _%id97437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id97433%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj97415%_ _%id97416%_)
        (let* ((_%id97419%_ _%id97416%_)
               (_%method97428%_ (checked-method-ref _%obj97415%_ _%id97419%_)))
          (lambda _%args97430%_
            (apply _%method97428%_ _%obj97415%_ _%args97430%_)))))
    (define find-method
      (lambda (_%klass97389%_ _%obj97390%_ _%id97391%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97389%_ 'class))
            (let ((_%klass97395%_ _%klass97389%_))
              (if (symbol? _%id97391%_)
                  (let ((_%id97405%_ _%id97391%_))
                    (__find-method _%klass97395%_ _%obj97390%_ _%id97405%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id97391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass97389%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass97362%_ _%obj97363%_ _%id97364%_)
        (let* ((_%klass97367%_ _%klass97362%_)
               (_%id97375%_ _%id97364%_)
               (_%$e97384%_
                (__direct-method-ref _%klass97367%_ _%obj97363%_ _%id97375%_)))
          (if _%$e97384%_
              _%$e97384%_
              (if (__class-type-sealed? _%klass97367%_)
                  '#f
                  (__mixin-method-ref
                   _%klass97367%_
                   _%obj97363%_
                   _%id97375%_))))))
    (define mixin-find-method
      (lambda (_%mixins97346%_ _%obj97347%_ _%id97348%_)
        (if (symbol? _%id97348%_)
            (let ((_%id97352%_ _%id97348%_))
              (__mixin-find-method _%mixins97346%_ _%obj97347%_ _%id97352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id97348%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins97328%_ _%obj97329%_ _%id97330%_)
        (let* ((_%id97333%_ _%id97330%_)
               (__tmp101529
                (lambda (_%g9734197343%_)
                  (direct-method-ref
                   _%g9734197343%_
                   _%obj97329%_
                   _%id97333%_))))
          (declare (not safe))
          (__ormap1 __tmp101529 _%mixins97328%_))))
    (define direct-method-ref
      (lambda (_%klass97302%_ _%obj97303%_ _%id97304%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97302%_ 'class))
            (let ((_%klass97308%_ _%klass97302%_))
              (if (symbol? _%id97304%_)
                  (let ((_%id97318%_ _%id97304%_))
                    (__direct-method-ref
                     _%klass97308%_
                     _%obj97303%_
                     _%id97318%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id97304%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass97302%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass97256%_ _%obj97257%_ _%id97258%_)
        (let* ((_%klass97261%_ _%klass97256%_) (_%id97269%_ _%id97258%_))
          (letrec ((_%metaclass-resolve-method97278%_
                    (lambda ()
                      (let ((__method101437
                             (__method-ref _%klass97261%_ 'direct-method-ref)))
                        (if __method101437
                            (let ()
                              (declare (not safe))
                              (__method101437
                               _%klass97261%_
                               _%obj97257%_
                               _%id97269%_))
                            (begin
                              (error '"Missing method"
                                     _%klass97261%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!97279%_
                    (lambda ()
                      (let ((_%method97299%_
                             (_%metaclass-resolve-method97278%_)))
                        (let ((__tmp101531
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass97261%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp101530
                               (if _%method97299%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp101531
                           _%id97269%_
                           __tmp101530))
                        _%method97299%_))))
            (let ((_%$e97281%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass97261%_ '11 '#f '#f))))
              (if _%$e97281%_
                  ((lambda (_%ht97284%_)
                     (let ((_%method97286%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht97284%_
                               _%id97269%_
                               '#f))))
                       (if (procedure? _%method97286%_)
                           _%method97286%_
                           (if (__class-type-metaclass? _%klass97261%_)
                               (let ((_%$e97290%_ _%method97286%_))
                                 (if (eq? 'resolved _%$e97290%_)
                                     (_%metaclass-resolve-method97278%_)
                                     (if (eq? 'unknown _%$e97290%_)
                                         '#f
                                         (_%metaclass-resolve-method!97279%_))))
                               '#f))))
                   _%$e97281%_)
                  (if (__class-type-metaclass? _%klass97261%_)
                      (let ((_%tab97295%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97261%_
                           _%tab97295%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!97279%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass97230%_ _%obj97231%_ _%id97232%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97230%_ 'class))
            (let ((_%klass97236%_ _%klass97230%_))
              (if (symbol? _%id97232%_)
                  (let ((_%id97246%_ _%id97232%_))
                    (__mixin-method-ref
                     _%klass97236%_
                     _%obj97231%_
                     _%id97246%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id97232%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass97230%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass97208%_ _%obj97209%_ _%id97210%_)
        (let* ((_%klass97213%_ _%klass97208%_) (_%id97221%_ _%id97210%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass97213%_ '6 '#f '#f))
           _%obj97209%_
           _%id97221%_))))
    (define bind-method!__%
      (lambda (_%klass97167%_ _%id97168%_ _%proc97169%_ _%rebind?97170%_)
        (if (symbol? _%id97168%_)
            (let ((_%id97174%_ _%id97168%_))
              (if (procedure? _%proc97169%_)
                  (let ((_%proc97184%_ _%proc97169%_))
                    (__bind-method!__%
                     _%klass97167%_
                     _%id97174%_
                     _%proc97184%_
                     _%rebind?97170%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc97169%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id97168%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass97197%_ _%id97198%_ _%proc97199%_)
        (let ((_%rebind?97201%_ '#f))
          (bind-method!__%
           _%klass97197%_
           _%id97198%_
           _%proc97199%_
           _%rebind?97201%_))))
    (define bind-method!
      (lambda _g101533_
        (let ((_g101532_ (let () (declare (not safe)) (##length _g101533_))))
          (cond ((let () (declare (not safe)) (##fx= _g101532_ 3))
                 (apply bind-method!__0 _g101533_))
                ((let () (declare (not safe)) (##fx= _g101532_ 4))
                 (apply bind-method!__% _g101533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g101533_))))))
    (define __bind-method!__%
      (lambda (_%klass97118%_ _%id97119%_ _%proc97120%_ _%rebind?97121%_)
        (let* ((_%id97124%_ _%id97119%_) (_%proc97132%_ _%proc97120%_))
          (letrec ((_%bind!97141%_
                    (lambda (_%ht97150%_)
                      (if (and (not _%rebind?97121%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht97150%_
                                  _%id97124%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass97118%_
                                 'method:
                                 _%id97124%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht97150%_
                               _%id97124%_
                               _%proc97132%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass97118%_ 'class))
                (let ((_%ht97144%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97118%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht97144%_
                      (_%bind!97141%_ _%ht97144%_)
                      (let ((_%ht97146%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass97118%_
                           _%ht97146%_
                           '11
                           '#f
                           '#f))
                        (_%bind!97141%_ _%ht97146%_))))
                (if (let () (declare (not safe)) (##type? _%klass97118%_))
                    (__bind-method!__%
                     (__shadow-class _%klass97118%_)
                     _%id97124%_
                     _%proc97132%_
                     _%rebind?97121%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass97118%_)))))))
    (define __bind-method!__0
      (lambda (_%klass97155%_ _%id97156%_ _%proc97157%_)
        (let ((_%rebind?97159%_ '#f))
          (__bind-method!__%
           _%klass97155%_
           _%id97156%_
           _%proc97157%_
           _%rebind?97159%_))))
    (define __bind-method!
      (lambda _g101535_
        (let ((_g101534_ (let () (declare (not safe)) (##length _g101535_))))
          (cond ((let () (declare (not safe)) (##fx= _g101534_ 3))
                 (apply __bind-method!__0 _g101535_))
                ((let () (declare (not safe)) (##fx= _g101534_ 4))
                 (apply __bind-method!__% _g101535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g101535_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint97098%_ _%seed97100%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint97098%_
           procedure-hash
           eq?
           _%seed97100%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint97106%_ '#f) (_%seed97108%_ '0))
          (make-method-specializer-table__%
           _%size-hint97106%_
           _%seed97108%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint97110%_)
        (let ((_%seed97112%_ '0))
          (make-method-specializer-table__%
           _%size-hint97110%_
           _%seed97112%_))))
    (define make-method-specializer-table
      (lambda _g101537_
        (let ((_g101536_ (let () (declare (not safe)) (##length _g101537_))))
          (cond ((let () (declare (not safe)) (##fx= _g101536_ 0))
                 (apply make-method-specializer-table__0 _g101537_))
                ((let () (declare (not safe)) (##fx= _g101536_ 1))
                 (apply make-method-specializer-table__1 _g101537_))
                ((let () (declare (not safe)) (##fx= _g101536_ 2))
                 (apply make-method-specializer-table__% _g101537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g101537_))))))
    (define method-specializer-table-ref
      (lambda (_%tab97051%_ _%key97052%_ _%default97053%_)
        (let ((_%table97055%_
               (let () (declare (not safe)) (&raw-table-table _%tab97051%_)))
              (_%seed97056%_
               (let () (declare (not safe)) (&raw-table-seed _%tab97051%_))))
          (let* ((_%h97058%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key97052%_))
                         _%seed97056%_))
                 (_%size97061%_ (vector-length _%table97055%_))
                 (_%entries97064%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97061%_ '2)))
                 (_%start97067%_
                  (let ((__tmp101538
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97058%_ _%entries97064%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101538 '1))))
            (let _%loop97071%_ ((_%probe97074%_ _%start97067%_)
                                (_%i97076%_ '1)
                                (_%deleted97078%_ '#f))
              (let ((_%k97081%_ (vector-ref _%table97055%_ _%probe97074%_)))
                (if (eq? _%k97081%_ (macro-unused-obj))
                    _%default97053%_
                    (if (eq? _%k97081%_ (macro-deleted-obj))
                        (_%loop97071%_
                         (let ((_%next-probe97086%_
                                (fx+ _%start97067%_
                                     _%i97076%_
                                     (fx* _%i97076%_ _%i97076%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97086%_ _%size97061%_))
                         (let () (declare (not safe)) (##fx+ _%i97076%_ '1))
                         (let ((_%$e97089%_ _%deleted97078%_))
                           (if _%$e97089%_ _%$e97089%_ _%probe97074%_)))
                        (if (eq? _%key97052%_ _%k97081%_)
                            (vector-ref
                             _%table97055%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe97074%_ '1)))
                            (_%loop97071%_
                             (let ((_%next-probe97094%_
                                    (fx+ _%start97067%_
                                         _%i97076%_
                                         (fx* _%i97076%_ _%i97076%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97094%_ _%size97061%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97076%_ '1))
                             _%deleted97078%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab97047%_ _%key97048%_ _%value97049%_)
        (if (let ((__tmp101541
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab97047%_)))
                  (__tmp101539
                   (let ((__tmp101540
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab97047%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101540 '4))))
              (declare (not safe))
              (##fx< __tmp101541 __tmp101539))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab97047%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab97047%_
         _%key97048%_
         _%value97049%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab96998%_ _%key96999%_ _%value97000%_)
        (let ((_%table97003%_
               (let () (declare (not safe)) (&raw-table-table _%tab96998%_)))
              (_%seed97004%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96998%_))))
          (let* ((_%h97006%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96999%_))
                         _%seed97004%_))
                 (_%size97009%_ (vector-length _%table97003%_))
                 (_%entries97012%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size97009%_ '2)))
                 (_%start97015%_
                  (let ((__tmp101542
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h97006%_ _%entries97012%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101542 '1))))
            (let _%loop97019%_ ((_%probe97022%_ _%start97015%_)
                                (_%i97024%_ '1)
                                (_%deleted97026%_ '#f))
              (let ((_%k97029%_ (vector-ref _%table97003%_ _%probe97022%_)))
                (if (eq? _%k97029%_ (macro-unused-obj))
                    (if _%deleted97026%_
                        (begin
                          (vector-set!
                           _%table97003%_
                           _%deleted97026%_
                           _%key96999%_)
                          (vector-set!
                           _%table97003%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted97026%_ '1))
                           _%value97000%_)
                          ((lambda ()
                             (let ((__tmp101543
                                    (let ((__tmp101544
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96998%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101544 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96998%_
                                __tmp101543)))))
                        (begin
                          (vector-set!
                           _%table97003%_
                           _%probe97022%_
                           _%key96999%_)
                          (vector-set!
                           _%table97003%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe97022%_ '1))
                           _%value97000%_)
                          ((lambda ()
                             (let ((__tmp101545
                                    (let ((__tmp101546
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96998%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101546 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96998%_ __tmp101545))
                             (let ((__tmp101547
                                    (let ((__tmp101548
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96998%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101548 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96998%_
                                __tmp101547))))))
                    (if (eq? _%k97029%_ (macro-deleted-obj))
                        (_%loop97019%_
                         (let ((_%next-probe97036%_
                                (fx+ _%start97015%_
                                     _%i97024%_
                                     (fx* _%i97024%_ _%i97024%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe97036%_ _%size97009%_))
                         (let () (declare (not safe)) (##fx+ _%i97024%_ '1))
                         (let ((_%$e97039%_ _%deleted97026%_))
                           (if _%$e97039%_ _%$e97039%_ _%probe97022%_)))
                        (if (eq? _%key96999%_ _%k97029%_)
                            (let ()
                              (vector-set!
                               _%table97003%_
                               _%probe97022%_
                               _%key96999%_)
                              (vector-set!
                               _%table97003%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe97022%_ '1))
                               _%value97000%_))
                            (_%loop97019%_
                             (let ((_%next-probe97044%_
                                    (fx+ _%start97015%_
                                         _%i97024%_
                                         (fx* _%i97024%_ _%i97024%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe97044%_ _%size97009%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i97024%_ '1))
                             _%deleted97026%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab96993%_
               _%key96994%_
               _%method-specializer-table-update!96995%_
               _%default96996%_)
        (if (let ((__tmp101551
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96993%_)))
                  (__tmp101549
                   (let ((__tmp101550
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96993%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101550 '4))))
              (declare (not safe))
              (##fx< __tmp101551 __tmp101549))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96993%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab96993%_
         _%key96994%_
         _%method-specializer-table-update!96995%_
         _%default96996%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab96943%_
               _%key96944%_
               _%method-specializer-table-update!96945%_
               _%default96946%_)
        (let ((_%table96949%_
               (let () (declare (not safe)) (&raw-table-table _%tab96943%_)))
              (_%seed96950%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96943%_))))
          (let* ((_%h96952%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96944%_))
                         _%seed96950%_))
                 (_%size96955%_ (vector-length _%table96949%_))
                 (_%entries96958%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96955%_ '2)))
                 (_%start96961%_
                  (let ((__tmp101552
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96952%_ _%entries96958%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101552 '1))))
            (let _%loop96965%_ ((_%probe96968%_ _%start96961%_)
                                (_%i96970%_ '1)
                                (_%deleted96972%_ '#f))
              (let ((_%k96975%_ (vector-ref _%table96949%_ _%probe96968%_)))
                (if (eq? _%k96975%_ (macro-unused-obj))
                    (if _%deleted96972%_
                        (begin
                          (vector-set!
                           _%table96949%_
                           _%deleted96972%_
                           _%key96944%_)
                          (vector-set!
                           _%table96949%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96972%_ '1))
                           (_%method-specializer-table-update!96945%_
                            _%default96946%_))
                          ((lambda ()
                             (let ((__tmp101553
                                    (let ((__tmp101554
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96943%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101554 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96943%_
                                __tmp101553)))))
                        (begin
                          (vector-set!
                           _%table96949%_
                           _%probe96968%_
                           _%key96944%_)
                          (vector-set!
                           _%table96949%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96968%_ '1))
                           (_%method-specializer-table-update!96945%_
                            _%default96946%_))
                          ((lambda ()
                             (let ((__tmp101555
                                    (let ((__tmp101556
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96943%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101556 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96943%_ __tmp101555))
                             (let ((__tmp101557
                                    (let ((__tmp101558
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96943%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101558 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96943%_
                                __tmp101557))))))
                    (if (eq? _%k96975%_ (macro-deleted-obj))
                        (_%loop96965%_
                         (let ((_%next-probe96982%_
                                (fx+ _%start96961%_
                                     _%i96970%_
                                     (fx* _%i96970%_ _%i96970%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96982%_ _%size96955%_))
                         (let () (declare (not safe)) (##fx+ _%i96970%_ '1))
                         (let ((_%$e96985%_ _%deleted96972%_))
                           (if _%$e96985%_ _%$e96985%_ _%probe96968%_)))
                        (if (eq? _%key96944%_ _%k96975%_)
                            (let ()
                              (vector-set!
                               _%table96949%_
                               _%probe96968%_
                               _%key96944%_)
                              (vector-set!
                               _%table96949%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96968%_ '1))
                               (_%method-specializer-table-update!96945%_
                                (vector-ref
                                 _%table96949%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe96968%_ '1))))))
                            (_%loop96965%_
                             (let ((_%next-probe96990%_
                                    (fx+ _%start96961%_
                                         _%i96970%_
                                         (fx* _%i96970%_ _%i96970%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96990%_ _%size96955%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96970%_ '1))
                             _%deleted96972%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab96898%_ _%key96900%_)
        (let ((_%table96903%_
               (let () (declare (not safe)) (&raw-table-table _%tab96898%_)))
              (_%seed96905%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96898%_))))
          (let* ((_%h96908%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96900%_))
                         _%seed96905%_))
                 (_%size96911%_ (vector-length _%table96903%_))
                 (_%entries96914%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96911%_ '2)))
                 (_%start96917%_
                  (let ((__tmp101559
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96908%_ _%entries96914%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101559 '1))))
            (let _%loop96921%_ ((_%probe96924%_ _%start96917%_)
                                (_%i96926%_ '1))
              (let ((_%k96929%_ (vector-ref _%table96903%_ _%probe96924%_)))
                (if (eq? _%k96929%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96929%_ (macro-deleted-obj))
                        (_%loop96921%_
                         (let ((_%next-probe96934%_
                                (fx+ _%start96917%_
                                     _%i96926%_
                                     (fx* _%i96926%_ _%i96926%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96934%_ _%size96911%_))
                         (let () (declare (not safe)) (##fx+ _%i96926%_ '1)))
                        (if (eq? _%key96900%_ _%k96929%_)
                            (let ()
                              (vector-set!
                               _%table96903%_
                               _%probe96924%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96903%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96924%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101560
                                        (let ((__tmp101561
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab96898%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101561 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab96898%_
                                    __tmp101560)))))
                            (_%loop96921%_
                             (let ((_%next-probe96940%_
                                    (fx+ _%start96917%_
                                         _%i96926%_
                                         (fx* _%i96926%_ _%i96926%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96940%_ _%size96911%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96926%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc96889%_ _%specializer96890%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96894%_ ()
            (if (let ((__tmp101562
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101562 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96894%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc96889%_
         _%specializer96890%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc96879%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96883%_ ()
            (if (let ((__tmp101563
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101563 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96883%_)))))
        (let ((_%specializer96887%_
               (method-specializer-table-ref
                __method-specializers
                _%proc96879%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer96887%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass96877%_)
        (let ((__tmp101564
               (let () (declare (not safe)) (##type-id _%klass96877%_))))
          (declare (not safe))
          (symbolic-hash __tmp101564))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint96858%_ _%seed96860%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint96858%_
           __class-specializer-hash-key
           eq?
           _%seed96860%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint96866%_ '#f) (_%seed96868%_ '0))
          (make-class-specializer-table__% _%size-hint96866%_ _%seed96868%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint96870%_)
        (let ((_%seed96872%_ '0))
          (make-class-specializer-table__% _%size-hint96870%_ _%seed96872%_))))
    (define make-class-specializer-table
      (lambda _g101566_
        (let ((_g101565_ (let () (declare (not safe)) (##length _g101566_))))
          (cond ((let () (declare (not safe)) (##fx= _g101565_ 0))
                 (apply make-class-specializer-table__0 _g101566_))
                ((let () (declare (not safe)) (##fx= _g101565_ 1))
                 (apply make-class-specializer-table__1 _g101566_))
                ((let () (declare (not safe)) (##fx= _g101565_ 2))
                 (apply make-class-specializer-table__% _g101566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g101566_))))))
    (define class-specializer-table-ref
      (lambda (_%tab96811%_ _%key96812%_ _%default96813%_)
        (let ((_%table96815%_
               (let () (declare (not safe)) (&raw-table-table _%tab96811%_)))
              (_%seed96816%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96811%_))))
          (let* ((_%h96818%_
                  (fxxor (__class-specializer-hash-key _%key96812%_)
                         _%seed96816%_))
                 (_%size96821%_ (vector-length _%table96815%_))
                 (_%entries96824%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96821%_ '2)))
                 (_%start96827%_
                  (let ((__tmp101567
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96818%_ _%entries96824%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101567 '1))))
            (let _%loop96831%_ ((_%probe96834%_ _%start96827%_)
                                (_%i96836%_ '1)
                                (_%deleted96838%_ '#f))
              (let ((_%k96841%_ (vector-ref _%table96815%_ _%probe96834%_)))
                (if (eq? _%k96841%_ (macro-unused-obj))
                    _%default96813%_
                    (if (eq? _%k96841%_ (macro-deleted-obj))
                        (_%loop96831%_
                         (let ((_%next-probe96846%_
                                (fx+ _%start96827%_
                                     _%i96836%_
                                     (fx* _%i96836%_ _%i96836%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96846%_ _%size96821%_))
                         (let () (declare (not safe)) (##fx+ _%i96836%_ '1))
                         (let ((_%$e96849%_ _%deleted96838%_))
                           (if _%$e96849%_ _%$e96849%_ _%probe96834%_)))
                        (if (eq? _%key96812%_ _%k96841%_)
                            (vector-ref
                             _%table96815%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe96834%_ '1)))
                            (_%loop96831%_
                             (let ((_%next-probe96854%_
                                    (fx+ _%start96827%_
                                         _%i96836%_
                                         (fx* _%i96836%_ _%i96836%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96854%_ _%size96821%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96836%_ '1))
                             _%deleted96838%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab96807%_ _%key96808%_ _%value96809%_)
        (if (let ((__tmp101570
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96807%_)))
                  (__tmp101568
                   (let ((__tmp101569
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96807%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101569 '4))))
              (declare (not safe))
              (##fx< __tmp101570 __tmp101568))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96807%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab96807%_
         _%key96808%_
         _%value96809%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab96758%_ _%key96759%_ _%value96760%_)
        (let ((_%table96763%_
               (let () (declare (not safe)) (&raw-table-table _%tab96758%_)))
              (_%seed96764%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96758%_))))
          (let* ((_%h96766%_
                  (fxxor (__class-specializer-hash-key _%key96759%_)
                         _%seed96764%_))
                 (_%size96769%_ (vector-length _%table96763%_))
                 (_%entries96772%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96769%_ '2)))
                 (_%start96775%_
                  (let ((__tmp101571
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96766%_ _%entries96772%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101571 '1))))
            (let _%loop96779%_ ((_%probe96782%_ _%start96775%_)
                                (_%i96784%_ '1)
                                (_%deleted96786%_ '#f))
              (let ((_%k96789%_ (vector-ref _%table96763%_ _%probe96782%_)))
                (if (eq? _%k96789%_ (macro-unused-obj))
                    (if _%deleted96786%_
                        (begin
                          (vector-set!
                           _%table96763%_
                           _%deleted96786%_
                           _%key96759%_)
                          (vector-set!
                           _%table96763%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96786%_ '1))
                           _%value96760%_)
                          ((lambda ()
                             (let ((__tmp101572
                                    (let ((__tmp101573
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96758%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101573 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96758%_
                                __tmp101572)))))
                        (begin
                          (vector-set!
                           _%table96763%_
                           _%probe96782%_
                           _%key96759%_)
                          (vector-set!
                           _%table96763%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96782%_ '1))
                           _%value96760%_)
                          ((lambda ()
                             (let ((__tmp101574
                                    (let ((__tmp101575
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96758%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101575 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96758%_ __tmp101574))
                             (let ((__tmp101576
                                    (let ((__tmp101577
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96758%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101577 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96758%_
                                __tmp101576))))))
                    (if (eq? _%k96789%_ (macro-deleted-obj))
                        (_%loop96779%_
                         (let ((_%next-probe96796%_
                                (fx+ _%start96775%_
                                     _%i96784%_
                                     (fx* _%i96784%_ _%i96784%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96796%_ _%size96769%_))
                         (let () (declare (not safe)) (##fx+ _%i96784%_ '1))
                         (let ((_%$e96799%_ _%deleted96786%_))
                           (if _%$e96799%_ _%$e96799%_ _%probe96782%_)))
                        (if (eq? _%key96759%_ _%k96789%_)
                            (let ()
                              (vector-set!
                               _%table96763%_
                               _%probe96782%_
                               _%key96759%_)
                              (vector-set!
                               _%table96763%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96782%_ '1))
                               _%value96760%_))
                            (_%loop96779%_
                             (let ((_%next-probe96804%_
                                    (fx+ _%start96775%_
                                         _%i96784%_
                                         (fx* _%i96784%_ _%i96784%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96804%_ _%size96769%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96784%_ '1))
                             _%deleted96786%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab96753%_
               _%key96754%_
               _%class-specializer-table-update!96755%_
               _%default96756%_)
        (if (let ((__tmp101580
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96753%_)))
                  (__tmp101578
                   (let ((__tmp101579
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96753%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp101579 '4))))
              (declare (not safe))
              (##fx< __tmp101580 __tmp101578))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96753%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab96753%_
         _%key96754%_
         _%class-specializer-table-update!96755%_
         _%default96756%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab96703%_
               _%key96704%_
               _%class-specializer-table-update!96705%_
               _%default96706%_)
        (let ((_%table96709%_
               (let () (declare (not safe)) (&raw-table-table _%tab96703%_)))
              (_%seed96710%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96703%_))))
          (let* ((_%h96712%_
                  (fxxor (__class-specializer-hash-key _%key96704%_)
                         _%seed96710%_))
                 (_%size96715%_ (vector-length _%table96709%_))
                 (_%entries96718%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96715%_ '2)))
                 (_%start96721%_
                  (let ((__tmp101581
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96712%_ _%entries96718%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101581 '1))))
            (let _%loop96725%_ ((_%probe96728%_ _%start96721%_)
                                (_%i96730%_ '1)
                                (_%deleted96732%_ '#f))
              (let ((_%k96735%_ (vector-ref _%table96709%_ _%probe96728%_)))
                (if (eq? _%k96735%_ (macro-unused-obj))
                    (if _%deleted96732%_
                        (begin
                          (vector-set!
                           _%table96709%_
                           _%deleted96732%_
                           _%key96704%_)
                          (vector-set!
                           _%table96709%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96732%_ '1))
                           (_%class-specializer-table-update!96705%_
                            _%default96706%_))
                          ((lambda ()
                             (let ((__tmp101582
                                    (let ((__tmp101583
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96703%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101583 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96703%_
                                __tmp101582)))))
                        (begin
                          (vector-set!
                           _%table96709%_
                           _%probe96728%_
                           _%key96704%_)
                          (vector-set!
                           _%table96709%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96728%_ '1))
                           (_%class-specializer-table-update!96705%_
                            _%default96706%_))
                          ((lambda ()
                             (let ((__tmp101584
                                    (let ((__tmp101585
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96703%_))))
                                      (declare (not safe))
                                      (##fx- __tmp101585 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96703%_ __tmp101584))
                             (let ((__tmp101586
                                    (let ((__tmp101587
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96703%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp101587 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96703%_
                                __tmp101586))))))
                    (if (eq? _%k96735%_ (macro-deleted-obj))
                        (_%loop96725%_
                         (let ((_%next-probe96742%_
                                (fx+ _%start96721%_
                                     _%i96730%_
                                     (fx* _%i96730%_ _%i96730%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96742%_ _%size96715%_))
                         (let () (declare (not safe)) (##fx+ _%i96730%_ '1))
                         (let ((_%$e96745%_ _%deleted96732%_))
                           (if _%$e96745%_ _%$e96745%_ _%probe96728%_)))
                        (if (eq? _%key96704%_ _%k96735%_)
                            (let ()
                              (vector-set!
                               _%table96709%_
                               _%probe96728%_
                               _%key96704%_)
                              (vector-set!
                               _%table96709%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96728%_ '1))
                               (_%class-specializer-table-update!96705%_
                                (vector-ref
                                 _%table96709%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe96728%_ '1))))))
                            (_%loop96725%_
                             (let ((_%next-probe96750%_
                                    (fx+ _%start96721%_
                                         _%i96730%_
                                         (fx* _%i96730%_ _%i96730%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96750%_ _%size96715%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96730%_ '1))
                             _%deleted96732%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab96658%_ _%key96660%_)
        (let ((_%table96663%_
               (let () (declare (not safe)) (&raw-table-table _%tab96658%_)))
              (_%seed96665%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96658%_))))
          (let* ((_%h96668%_
                  (fxxor (__class-specializer-hash-key _%key96660%_)
                         _%seed96665%_))
                 (_%size96671%_ (vector-length _%table96663%_))
                 (_%entries96674%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96671%_ '2)))
                 (_%start96677%_
                  (let ((__tmp101588
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96668%_ _%entries96674%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp101588 '1))))
            (let _%loop96681%_ ((_%probe96684%_ _%start96677%_)
                                (_%i96686%_ '1))
              (let ((_%k96689%_ (vector-ref _%table96663%_ _%probe96684%_)))
                (if (eq? _%k96689%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96689%_ (macro-deleted-obj))
                        (_%loop96681%_
                         (let ((_%next-probe96694%_
                                (fx+ _%start96677%_
                                     _%i96686%_
                                     (fx* _%i96686%_ _%i96686%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96694%_ _%size96671%_))
                         (let () (declare (not safe)) (##fx+ _%i96686%_ '1)))
                        (if (eq? _%key96660%_ _%k96689%_)
                            (let ()
                              (vector-set!
                               _%table96663%_
                               _%probe96684%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96663%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96684%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp101589
                                        (let ((__tmp101590
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab96658%_))))
                                          (declare (not safe))
                                          (##fx- __tmp101590 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab96658%_
                                    __tmp101589)))))
                            (_%loop96681%_
                             (let ((_%next-probe96700%_
                                    (fx+ _%start96677%_
                                         _%i96686%_
                                         (fx* _%i96686%_ _%i96686%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96700%_ _%size96671%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96686%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass96644%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96644%_ 'class))
            (let ((_%klass96648%_ _%klass96644%_))
              (__specialize-class _%klass96648%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass96644%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass96626%_)
        (let* ((_%klass96629%_ _%klass96626%_)
               (_%$e96638%_ (__lookup-class-specializer _%klass96629%_)))
          (if _%$e96638%_
              _%$e96638%_
              (let ((_%method-table96642%_
                     (___specialize-class _%klass96629%_)))
                (__bind-class-specializer!
                 _%klass96629%_
                 _%method-table96642%_)
                _%method-table96642%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass96616%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96620%_ ()
            (if (let ((__tmp101591
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101591 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96620%_)))))
        (let ((_%method-table96624%_
               (class-specializer-table-ref
                __class-specializers
                _%klass96616%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table96624%_)))
    (define __bind-class-specializer!
      (lambda (_%klass96607%_ _%method-table96608%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96612%_ ()
            (if (let ((__tmp101592
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp101592 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96612%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass96607%_
         _%method-table96608%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass96591%_
               _%method-table96592%_
               _%method96593%_
               _%proc96594%_)
        (let ((_%$e96596%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table96592%_
                  _%method96593%_
                  '#f))))
          (if _%$e96596%_
              _%$e96596%_
              (let ((_%$e96599%_ (__lookup-method-specializer _%proc96594%_)))
                (if _%$e96599%_
                    ((lambda (_%specialize96602%_)
                       (let ((_%specialized-proc96604%_
                              (_%specialize96602%_
                               _%klass96591%_
                               _%method-table96592%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table96592%_
                          _%method96593%_
                          _%specialized-proc96604%_)))
                     _%$e96599%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table96592%_
                       _%method96593%_
                       _%proc96594%_))))))))
    (define ___specialize-class
      (lambda (_%klass96533%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96533%_ 'class))
            (if (__class-type-metaclass? _%klass96533%_)
                (let ((__method101438
                       (__method-ref _%klass96533%_ 'specialize-class)))
                  (if __method101438
                      (let ()
                        (declare (not safe))
                        (__method101438 _%klass96533%_))
                      (begin
                        (error '"Missing method"
                               _%klass96533%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp101593
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass96533%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp101593))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass96533%_)
                    (let ((_%method-table96539%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop96541%_ ((_%rest96543%_
                                           (__class-precedence-list
                                            _%klass96533%_)))
                        (let* ((_%rest9654496552%_ _%rest96543%_)
                               (_%else9654696560%_
                                (lambda () _%method-table96539%_))
                               (_%K9654896579%_
                                (lambda (_%rest96563%_ _%xklass96564%_)
                                  (let ((_%xmethod-table9656596567%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass96564%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9656596567%_
                                        (let* ((_%xmethod-table96570%_
                                                _%xmethod-table9656596567%_)
                                               (__tmp101594
                                                (lambda (_%g9657196574%_
                                                         _%g9657296576%_)
                                                  (__specialize-method
                                                   _%klass96533%_
                                                   _%method-table96539%_
                                                   _%g9657196574%_
                                                   _%g9657296576%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table96570%_
                                           __tmp101594))
                                        '#f))
                                  (_%loop96541%_ _%rest96563%_))))
                          (if (pair? _%rest9654496552%_)
                              (let ((_%hd9654996582%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9654496552%_)))
                                    (_%tl9655096584%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9654496552%_))))
                                (let* ((_%xklass96587%_ _%hd9654996582%_)
                                       (_%rest96589%_ _%tl9655096584%_))
                                  (_%K9654896579%_
                                   _%rest96589%_
                                   _%xklass96587%_)))
                              (_%else9654696560%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass96533%_))
                (__specialize-class (__shadow-class _%klass96533%_))
                (error '"bad class; cannot specialize" _%klass96533%_)))))
    (define seal-class!
      (lambda (_%klass96519%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96519%_ 'class))
            (let ((_%klass96523%_ _%klass96519%_))
              (__seal-class! _%klass96523%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass96519%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass96502%_)
        (let ((_%klass96505%_ _%klass96502%_))
          (if (__class-type-sealed? _%klass96505%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass96505%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass96505%_))
                (if (__class-type-metaclass? _%klass96505%_)
                    (let ((__method101439
                           (__method-ref _%klass96505%_ 'seal-class!)))
                      (if __method101439
                          (let ()
                            (declare (not safe))
                            (__method101439 _%klass96505%_))
                          (begin
                            (error '"Missing method"
                                   _%klass96505%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp101595
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass96505%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp101595))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass96505%_)
                        (let ((_%method-table96517%_
                               (__specialize-class _%klass96505%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96505%_
                           _%method-table96517%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass96505%_))))))
    (define next-method
      (lambda (_%subklass96476%_ _%obj96477%_ _%id96478%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96476%_ 'class))
            (let ((_%subklass96482%_ _%subklass96476%_))
              (if (symbol? _%id96478%_)
                  (let ((_%id96492%_ _%id96478%_))
                    (__next-method _%subklass96482%_ _%obj96477%_ _%id96492%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id96478%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass96476%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass96413%_ _%obj96414%_ _%id96415%_)
        (let* ((_%subklass96418%_ _%subklass96413%_) (_%id96426%_ _%id96415%_))
          (letrec ((_%find-next-method96435%_
                    (lambda (_%klass96437%_)
                      (let _%lp96439%_ ((_%rest96441%_
                                         (class-precedence-list
                                          _%klass96437%_)))
                        (let* ((_%rest9644296450%_ _%rest96441%_)
                               (_%else9644496458%_ (lambda () '#f))
                               (_%K9644696464%_
                                (lambda (_%rest96461%_ _%klass96462%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass96418%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass96462%_)))
                                      (__mixin-find-method
                                       _%rest96461%_
                                       _%obj96414%_
                                       _%id96426%_)
                                      (_%lp96439%_ _%rest96461%_)))))
                          (if (pair? _%rest9644296450%_)
                              (let ((_%hd9644796467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9644296450%_)))
                                    (_%tl9644896469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9644296450%_))))
                                (let* ((_%klass96472%_ _%hd9644796467%_)
                                       (_%rest96474%_ _%tl9644896469%_))
                                  (_%K9644696464%_
                                   _%rest96474%_
                                   _%klass96472%_)))
                              (_%else9644496458%_)))))))
            (_%find-next-method96435%_ (class-of _%obj96414%_))))))
    (define call-next-method
      (lambda (_%subklass96386%_ _%obj96387%_ _%id96388%_ . _%args96389%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass96386%_ 'class))
            (let ((_%subklass96393%_ _%subklass96386%_))
              (if (symbol? _%id96388%_)
                  (let ((_%id96403%_ _%id96388%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass96393%_
                             _%obj96387%_
                             _%id96403%_
                             _%args96389%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id96388%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass96386%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass96357%_ _%obj96358%_ _%id96359%_ . _%args96360%_)
        (let* ((_%subklass96363%_ _%subklass96357%_)
               (_%id96371%_ _%id96359%_)
               (_%$e96380%_
                (__next-method _%subklass96363%_ _%obj96358%_ _%id96371%_)))
          (if _%$e96380%_
              ((lambda (_%methodf96383%_)
                 (apply _%methodf96383%_ _%obj96358%_ _%args96360%_))
               _%$e96380%_)
              (error '"cannot find next method"
                     'object:
                     _%obj96358%_
                     'method:
                     _%id96371%_)))))
    (define write-style
      (lambda (_%we96355%_) (macro-writeenv-style _%we96355%_)))
    (define write-object
      (lambda (_%we96346%_ _%obj96347%_)
        (let ((_%$e96349%_ (__method-ref _%obj96347%_ ':wr)))
          (if _%$e96349%_
              ((lambda (_%method96352%_)
                 (_%method96352%_ _%obj96347%_ _%we96346%_))
               _%$e96349%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we96346%_ _%obj96347%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type96261%_)
        (letrec ((_%shadow-type-id96263%_
                  (lambda (_%type96344%_)
                    (let ((__tmp101596
                           (let ()
                             (declare (not safe))
                             (##type-name _%type96344%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp101596 '"::t"))))
                 (_%shadow-type-name96264%_
                  (lambda (_%type96342%_)
                    (let () (declare (not safe)) (##type-name _%type96342%_))))
                 (_%make-shadow-class96265%_
                  (lambda (_%type96334%_ _%precedence-list96335%_)
                    (let* ((_%super96337%_
                            (if (pair? _%precedence-list96335%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list96335%_))
                                      '())
                                '()))
                           (_%klass96339%_
                            (make-class-type
                             (_%shadow-type-id96263%_ _%type96334%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type96334%_))
                             _%super96337%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type96334%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp101597
                             (let ()
                               (declare (not safe))
                               (##type-id _%type96334%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp101597
                         _%klass96339%_))
                      _%klass96339%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again96269%_ ()
              (if (let ((__tmp101598
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp101598 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again96269%_)))))
          (let ((_%$e96273%_
                 (let ((__tmp101599
                        (let ()
                          (declare (not safe))
                          (##type-id _%type96261%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp101599 '#f))))
            (if _%$e96273%_
                ((lambda (_%klass96276%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass96276%_)
                 _%$e96273%_)
                (let _%loop96279%_ ((_%super96281%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type96261%_)))
                                    (_%hierarchy96282%_ '()))
                  (if (not _%super96281%_)
                      (let _%loop96285%_ ((_%rest96287%_ _%hierarchy96282%_)
                                          (_%precedence-list96288%_ '()))
                        (let* ((_%rest9628996297%_ _%rest96287%_)
                               (_%else9629196307%_
                                (lambda ()
                                  (let ((_%klass96305%_
                                         (_%make-shadow-class96265%_
                                          _%type96261%_
                                          _%precedence-list96288%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass96305%_)))
                               (_%K9629396321%_
                                (lambda (_%rest96310%_ _%type96311%_)
                                  (let ((_%$e96313%_
                                         (let ((__tmp101600
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type96311%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp101600
                                            '#f))))
                                    (if _%$e96313%_
                                        ((lambda (_%klass96316%_)
                                           (_%loop96285%_
                                            _%rest96310%_
                                            (cons _%klass96316%_
                                                  _%precedence-list96288%_)))
                                         _%$e96313%_)
                                        (let ((_%klass96319%_
                                               (_%make-shadow-class96265%_
                                                _%type96311%_
                                                _%precedence-list96288%_)))
                                          (_%loop96285%_
                                           _%rest96310%_
                                           (cons _%klass96319%_
                                                 _%precedence-list96288%_))))))))
                          (if (pair? _%rest9628996297%_)
                              (let ((_%hd9629496324%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9628996297%_)))
                                    (_%tl9629596326%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9628996297%_))))
                                (let* ((_%type96329%_ _%hd9629496324%_)
                                       (_%rest96331%_ _%tl9629596326%_))
                                  (_%K9629396321%_
                                   _%rest96331%_
                                   _%type96329%_)))
                              (_%else9629196307%_))))
                      (_%loop96279%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super96281%_))
                       (cons _%super96281%_ _%hierarchy96282%_)))))))))
    (define class-of
      (lambda (_%obj96234%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t96238%_
                 (let () (declare (not safe)) (##type _%obj96234%_))))
            (if (fx= _%t96238%_ (macro-type-subtyped))
                (let ((_%st96241%_
                       (let () (declare (not safe)) (##subtype _%obj96234%_))))
                  (if (fx= _%st96241%_ (macro-subtype-structure))
                      (let ((_%klass96244%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj96234%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass96244%_ 'class))
                            _%klass96244%_
                            (__shadow-class _%klass96244%_)))
                      (if (fx= _%st96241%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp101601
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj96234%_))))
                                (declare (not safe))
                                (##fx= __tmp101601 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e96247%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st96241%_))))
                            (if _%$e96247%_
                                (__system-class _%$e96247%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st96241%_
                                       'object:
                                       _%obj96234%_))))))
                (if (fx= _%t96238%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t96238%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj96234%_)
                            (__system-class 'char)
                            (if (eq? _%obj96234%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj96234%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj96234%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj96234%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj96234%_ '#!eof)
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
      (lambda (_%id96228%_)
        (let ((_%$e96230%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id96228%_ '#f))))
          (if _%$e96230%_
              _%$e96230%_
              (error '"unknown system class" _%id96228%_)))))
    (define __make-system-class
      (lambda (_%id96223%_ _%super96224%_)
        (let ((_%klass96226%_
               (make-class-type
                _%id96223%_
                _%id96223%_
                _%super96224%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id96223%_ _%klass96226%_))
          _%klass96226%_)))))
