(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1783878474)
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
      (let ((_%flags140290%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties140291%_ '((direct-slots:) (system: . #t)))
            (_%slot-table140292%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags140290%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table140292%_
           _%properties140291%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots140247%_
              '(id name
                   flags
                   super
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector140249%_ (list->vector (cons '#f _%slots140247%_)))
             (_%slot-table140275%_
              (let ((_%slot-table140251%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp143369
                       (lambda (_%slot140253%_ _%field140254%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table140251%_
                            _%slot140253%_
                            _%field140254%_))
                         (let ((__tmp143370
                                (let ((_%sym140256%_ _%slot140253%_))
                                  (if (symbol? _%sym140256%_)
                                      (let ((_%sym140261%_ _%sym140256%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym140261%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym140256%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table140251%_
                            __tmp143370
                            _%field140254%_))))
                      (__tmp143367
                       (let ((__tmp143368
                              (let ()
                                (declare (not safe))
                                (##length _%slots140247%_))))
                         (declare (not safe))
                         (##iota __tmp143368 '1))))
                  (declare (not safe))
                  (##for-each __tmp143369 _%slots140247%_ __tmp143367))
                _%slot-table140251%_))
             (_%flags140277%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields140283%_
              (list->vector
               (let ((__tmp143371
                      (map (lambda (_%$%g140278140280%_)
                             (list _%$%g140278140280%_ '5 '#f))
                           (drop _%slots140247%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp143371))))
             (_%properties140285%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots140247%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t140287%_
              (let ((__tmp143372 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags140277%_
                 ##type-type
                 _%fields140283%_
                 __tmp143372
                 _%slot-vector140249%_
                 _%slot-table140275%_
                 _%properties140285%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t140287%_ _%t140287%_))
        _%t140287%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags140243%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties140244%_ '((direct-slots:) (system: . #t)))
            (_%slot-table140245%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp143373 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags140243%_
           '#f
           '#()
           __tmp143373
           '#(#f)
           _%slot-table140245%_
           _%properties140244%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass140231%_)
        (let ((_%klass140234%_ _%klass140231%_))
          (declare (not safe))
          (##structure-type _%klass140234%_))))
    (define class-type
      (lambda (_%klass140217%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140217%_ 'class))
            (let ((_%klass140221%_ _%klass140217%_))
              (__class-type _%klass140221%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass140217%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj140215%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj140215%_ 'class))))
    (define __class-type=?
      (lambda (_%x140194%_ _%y140195%_)
        (let* ((_%x140198%_ _%x140194%_) (_%y140206%_ _%y140195%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x140198%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y140206%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x140169%_ _%y140170%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x140169%_ 'class))
            (let ((_%x140174%_ _%x140169%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y140170%_ 'class))
                  (let ((_%y140184%_ _%y140170%_))
                    (__class-type=? _%x140174%_ _%y140184%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y140170%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x140169%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type140157%_)
        (let* ((_%type140160%_ _%type140157%_)
               (__tmp143374
                (let ((__tmp143375
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140160%_))))
                  (declare (not safe))
                  (##fxand __tmp143375 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp143374 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type140143%_)
        (if (let () (declare (not safe)) (##type? _%type140143%_))
            (let ((_%type140147%_ _%type140143%_))
              (__type-opaque? _%type140147%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type140143%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass140131%_)
        (let* ((_%klass140134%_ _%klass140131%_)
               (__tmp143376
                (let ((__tmp143377
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140134%_))))
                  (declare (not safe))
                  (##fxand __tmp143377 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp143376 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass140117%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140117%_ 'class))
            (let ((_%klass140121%_ _%klass140117%_))
              (__class-type-opaque? _%klass140121%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass140117%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type140105%_)
        (let* ((_%type140108%_ _%type140105%_)
               (__tmp143378
                (let ((__tmp143379
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140108%_))))
                  (declare (not safe))
                  (##fxand __tmp143379 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp143378 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type140091%_)
        (if (let () (declare (not safe)) (##type? _%type140091%_))
            (let ((_%type140095%_ _%type140091%_))
              (__type-extensible? _%type140095%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type140091%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type140079%_)
        (let* ((_%type140082%_ _%type140079%_)
               (__tmp143380
                (let ((__tmp143381
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type140082%_))))
                  (declare (not safe))
                  (##fxand __tmp143381 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp143380 '0))))
    (define class-type-final?
      (lambda (_%type140065%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type140065%_ 'class))
            (let ((_%type140069%_ _%type140065%_))
              (__class-type-final? _%type140069%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type140065%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass140053%_)
        (let* ((_%klass140056%_ _%klass140053%_)
               (__tmp143382
                (let ((__tmp143383
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140056%_))))
                  (declare (not safe))
                  (##fxand __tmp143383 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp143382 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass140039%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140039%_ 'class))
            (let ((_%klass140043%_ _%klass140039%_))
              (__class-type-struct? _%klass140043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass140039%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass140027%_)
        (let* ((_%klass140030%_ _%klass140027%_)
               (__tmp143384
                (let ((__tmp143385
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140030%_))))
                  (declare (not safe))
                  (##fxand __tmp143385 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp143384 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass140013%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140013%_ 'class))
            (let ((_%klass140017%_ _%klass140013%_))
              (__class-type-sealed? _%klass140017%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass140013%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass140001%_)
        (let* ((_%klass140004%_ _%klass140001%_)
               (__tmp143386
                (let ((__tmp143387
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass140004%_))))
                  (declare (not safe))
                  (##fxand __tmp143387 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp143386 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass139987%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139987%_ 'class))
            (let ((_%klass139991%_ _%klass139987%_))
              (__class-type-metaclass? _%klass139991%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass139987%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass139975%_)
        (let* ((_%klass139978%_ _%klass139975%_)
               (__tmp143388
                (let ((__tmp143389
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass139978%_))))
                  (declare (not safe))
                  (##fxand __tmp143389 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp143388 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass139961%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139961%_ 'class))
            (let ((_%klass139965%_ _%klass139961%_))
              (__class-type-system? _%klass139965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass139961%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass139949%_)
        (let* ((_%klass139952%_ _%klass139949%_)
               (__tmp143390
                (let ((__tmp143391
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass139952%_))))
                  (declare (not safe))
                  (##fxand __tmp143391 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp143390 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass139935%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139935%_ 'class))
            (let ((_%klass139939%_ _%klass139935%_))
              (__class-type-acyclic? _%klass139939%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass139935%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id139710%_
               _%type-name139711%_
               _%type-super139712%_
               _%precedence-list139713%_
               _%slot-vector139714%_
               _%properties139715%_
               _%constructor139716%_
               _%slot-table139717%_
               _%methods139718%_)
        (letrec ((_%make-props!139721%_
                  (lambda (_%key139880%_ _%transparent?139881%_)
                    (letrec* ((_%ht139883%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!139884%_
                               (lambda (_%ht139928%_ _%slots139929%_)
                                 (for-each
                                  (lambda (_%$%g139930139932%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht139928%_
                                       _%$%g139930139932%_
                                       '#t)))
                                  _%slots139929%_)))
                              (_%put-all-new-slots!139885%_
                               (lambda (_%ht139920%_)
                                 (let ((_%first139922%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super139712%_
                                               'class))
                                            (let ((__tmp143392
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super139712%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp143392))
                                            '1)))
                                   (let _%lp139924%_ ((_%i139926%_
                                                       _%first139922%_))
                                     (if (let ((__tmp143393
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector139714%_))))
                                           (declare (not safe))
                                           (##fx< _%i139926%_ __tmp143393))
                                         (begin
                                           (let ((__tmp143394
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector139714%_
                                                     _%i139926%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht139920%_
                                              __tmp143394
                                              '#t))
                                           (_%lp139924%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i139926%_ '1))))
                                         '#!void)))))
                              (_%put-alist!139886%_
                               (lambda (_%ht139911%_
                                        _%key139912%_
                                        _%alist139913%_)
                                 (let ((_%$e139915%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key139912%_
                                           _%alist139913%_
                                           _%transparent?139881%_))))
                                   (if _%$e139915%_
                                       (if (eq? _%$e139915%_ '#t)
                                           (_%put-all-new-slots!139885%_
                                            _%ht139911%_)
                                           (_%put-slots!139884%_
                                            _%ht139911%_
                                            _%$e139915%_))
                                       '#!void)))))
                      (_%put-alist!139886%_
                       _%ht139883%_
                       _%key139880%_
                       _%properties139715%_)
                      (for-each
                       (lambda (_%mixin139888%_)
                         (let ((_%alist139890%_
                                (##structure-ref
                                 _%mixin139888%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key139880%_
                                       _%alist139890%_
                                       _%transparent?139881%_)))
                               (_%put-slots!139884%_
                                _%ht139883%_
                                (let ((_%klass139892%_ _%mixin139888%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass139892%_
                                         'class))
                                      (let ((_%klass139897%_ _%klass139892%_))
                                        (__class-type-slot-list
                                         _%klass139897%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass139892%_)
                                        '#!void))))
                               (_%put-alist!139886%_
                                _%ht139883%_
                                _%key139880%_
                                _%alist139890%_))))
                       _%precedence-list139713%_)
                      _%ht139883%_)))
                 (_%all-slots-property?139722%_
                  (lambda (_%key139875%_ _%transparent?139876%_)
                    (let ((_%entry139878%_
                           (assq _%key139875%_ _%properties139715%_)))
                      (if _%entry139878%_
                          (eq? (cdr _%entry139878%_) '#t)
                          _%transparent?139876%_)))))
          (let* ((_%transparent?139742%_
                  (let ((__tmp143395
                         (if _%type-super139712%_
                             (not (let ((_%type139724%_ _%type-super139712%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type139724%_))
                                        (let ((_%type139729%_ _%type139724%_))
                                          (__type-opaque? _%type139729%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type139724%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties139715%_ __tmp143395)))
                 (_%all-slots-printable?139744%_
                  (_%all-slots-property?139722%_
                   'print:
                   _%transparent?139742%_))
                 (_%printable139746%_
                  (if (not _%all-slots-printable?139744%_)
                      (_%make-props!139721%_ 'print: _%transparent?139742%_)
                      '#f))
                 (_%all-slots-equalable?139748%_
                  (_%all-slots-property?139722%_
                   'equal:
                   _%transparent?139742%_))
                 (_%equalable139750%_
                  (if (not _%all-slots-equalable?139748%_)
                      (_%make-props!139721%_ 'equal: _%transparent?139742%_)
                      '#f))
                 (_%first-new-field139752%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super139712%_ 'class))
                      (let ((__tmp143396
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super139712%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp143396))
                      '1))
                 (_%field-info-length139754%_
                  (let ((__tmp143397
                         (let ((__tmp143398
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector139714%_))))
                           (declare (not safe))
                           (##fx- __tmp143398 _%first-new-field139752%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp143397)))
                 (_%field-info139756%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length139754%_ '#f)))
                 (_%struct?139758%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties139715%_)))
                 (_%final?139760%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties139715%_)))
                 (_%metaclass139767%_
                  (let ((_%$%metaclass139761139763%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties139715%_))))
                    (if _%$%metaclass139761139763%_
                        (let ((_%metaclass139765%_
                               _%$%metaclass139761139763%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass139765%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id139710%_
                                     'metaclass:
                                     _%metaclass139765%_))
                          _%metaclass139765%_)
                        '#f)))
                 (_%system?139769%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties139715%_)))
                 (_%opaque?139771%_ (not _%transparent?139742%_))
                 (_%acyclic?139773%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties139715%_)))
                 (_%type-flags139775%_
                  (let ((__tmp143404
                         (if _%final?139760%_ '0 type-flag-extensible))
                        (__tmp143403
                         (if (and _%opaque?139771%_
                                  (not (let ()
                                         (declare (not safe))
                                         (agetq__0
                                          'equal:
                                          _%properties139715%_))))
                             type-flag-opaque
                             '0))
                        (__tmp143402
                         (if _%struct?139758%_ class-type-flag-struct '0))
                        (__tmp143401
                         (if _%metaclass139767%_ class-type-flag-metaclass '0))
                        (__tmp143400
                         (if _%system?139769%_ class-type-flag-system '0))
                        (__tmp143399
                         (if _%acyclic?139773%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp143404
                             __tmp143403
                             __tmp143402
                             __tmp143401
                             __tmp143400
                             __tmp143399)))
                 (_%precedence-list139783%_
                  (let ((_%$e139777%_ (memq t::t _%precedence-list139713%_)))
                    (if _%$e139777%_
                        (if (null? (cdr _%$e139777%_))
                            _%precedence-list139713%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list139713%_))
                        (let ((__tmp143405 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list139713%_ __tmp143405))))))
            (let _%loop139786%_ ((_%i139788%_ _%first-new-field139752%_)
                                 (_%j139789%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j139789%_ _%field-info-length139754%_))
                  (let* ((_%slot139791%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector139714%_ _%i139788%_)))
                         (_%flags139799%_
                          (let ((__tmp143407
                                 (if (or _%all-slots-printable?139744%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable139746%_
                                            _%slot139791%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp143406
                                 (if (or _%all-slots-equalable?139748%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable139750%_
                                            _%slot139791%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp143407 __tmp143406))))
                    (vector-set!
                     _%field-info139756%_
                     _%j139789%_
                     _%slot139791%_)
                    (vector-set!
                     _%field-info139756%_
                     (let () (declare (not safe)) (##fx+ _%j139789%_ '1))
                     _%flags139799%_)
                    (_%loop139786%_
                     (let () (declare (not safe)) (##fx+ _%i139788%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j139789%_ '3))))
                  '#!void))
            (if _%metaclass139767%_
                (let ((_%val139838%_
                       (let* ((_%klass139802%_ _%metaclass139767%_)
                              (_%args139805%_
                               (list _%type-id139710%_
                                     _%type-name139711%_
                                     _%type-flags139775%_
                                     _%type-super139712%_
                                     _%field-info139756%_
                                     _%precedence-list139783%_
                                     _%slot-vector139714%_
                                     _%slot-table139717%_
                                     _%properties139715%_
                                     _%constructor139716%_
                                     _%methods139718%_
                                     '#f
                                     '#f)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass139802%_
                                'class))
                             (let ((_%klass139810%_ _%klass139802%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass139810%_
                                        _%args139805%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass139802%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@305.10-311.31"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val139838%_)
                  '#!void)
                (let ((_%klass139841%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id139710%_
                          _%type-name139711%_
                          _%type-flags139775%_
                          _%type-super139712%_
                          _%field-info139756%_
                          _%precedence-list139783%_
                          _%slot-vector139714%_
                          _%slot-table139717%_
                          _%properties139715%_
                          _%constructor139716%_
                          _%methods139718%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super139843%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again139847%_ ((_%spin139850%_ '0))
                         (if (let ((__tmp143408
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp143408 '0))
                             (let ((__tmp143409 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp143409))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin139850%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again139847%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin139850%_ '1))))
                                 (let ((_%owner139856%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner139856%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner139856%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again139847%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r139870%_
                            (let* ((_%props139862%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super139843%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e139864%_
                                    (assq 'subclasses: _%props139862%_)))
                              (if _%$e139864%_
                                  (set-cdr!
                                   _%$e139864%_
                                   (cons _%klass139841%_ (cdr _%$e139864%_)))
                                  (let ((__tmp143410
                                         (cons (cons 'subclasses:
                                                     (cons _%klass139841%_
                                                           '()))
                                               _%props139862%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super139843%_
                                     __tmp143410
                                     '9
                                     '#f
                                     '#f))))))
                       (let ()
                         (declare (not interrupts-enabled))
                         (begin
                           (let ()
                             (declare (not safe))
                             (##vector-set!
                              __class-type-properties-lock
                              '1
                              '#f))
                           (let ()
                             (declare (not safe))
                             (##vector-cas!
                              __class-type-properties-lock
                              '0
                              '0
                              '1))))
                       _%$r139870%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties139715%_ '())))
                  _%klass139841%_))))))
    (define class-type-id
      (lambda (_%klass139708%_)
        (##structure-ref _%klass139708%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass139706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139706%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass139703%_ _%val139704%_)
        (##structure-set! _%klass139703%_ _%val139704%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass139698%_ _%val139700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139698%_
           _%val139700%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass139696%_)
        (##structure-ref _%klass139696%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass139694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139694%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass139691%_ _%val139692%_)
        (##structure-set! _%klass139691%_ _%val139692%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass139686%_ _%val139688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139686%_
           _%val139688%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass139684%_)
        (##structure-ref _%klass139684%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass139682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139682%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass139679%_ _%val139680%_)
        (##structure-set! _%klass139679%_ _%val139680%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass139674%_ _%val139676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139674%_
           _%val139676%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass139672%_)
        (##structure-ref _%klass139672%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass139670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139670%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass139667%_ _%val139668%_)
        (##structure-set! _%klass139667%_ _%val139668%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass139662%_ _%val139664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139662%_
           _%val139664%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass139660%_)
        (##structure-ref _%klass139660%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass139658%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139658%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass139655%_ _%val139656%_)
        (##structure-set! _%klass139655%_ _%val139656%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass139650%_ _%val139652%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139650%_
           _%val139652%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass139648%_)
        (##structure-ref _%klass139648%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass139646%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139646%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass139643%_ _%val139644%_)
        (##structure-set!
         _%klass139643%_
         _%val139644%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass139638%_ _%val139640%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139638%_
           _%val139640%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass139636%_)
        (##structure-ref _%klass139636%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass139634%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139634%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass139631%_ _%val139632%_)
        (##structure-set!
         _%klass139631%_
         _%val139632%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass139626%_ _%val139628%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139626%_
           _%val139628%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass139624%_)
        (##structure-ref _%klass139624%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass139622%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139622%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass139619%_ _%val139620%_)
        (##structure-set!
         _%klass139619%_
         _%val139620%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass139614%_ _%val139616%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139614%_
           _%val139616%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass139612%_)
        (##structure-ref _%klass139612%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass139610%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139610%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass139607%_ _%val139608%_)
        (##structure-set!
         _%klass139607%_
         _%val139608%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass139602%_ _%val139604%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139602%_
           _%val139604%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass139600%_)
        (##structure-ref _%klass139600%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass139598%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139598%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass139595%_ _%val139596%_)
        (##structure-set!
         _%klass139595%_
         _%val139596%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass139590%_ _%val139592%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139590%_
           _%val139592%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass139588%_)
        (##structure-ref _%klass139588%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass139586%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass139586%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass139583%_ _%val139584%_)
        (##structure-set!
         _%klass139583%_
         _%val139584%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass139578%_ _%val139580%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139578%_
           _%val139580%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass139576%_)
        (##structure-ref _%klass139576%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass139574%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139574%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass139571%_ _%val139572%_)
        (##structure-set!
         _%klass139571%_
         _%val139572%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass139566%_ _%val139568%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139566%_
           _%val139568%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass139564%_)
        (##structure-ref _%klass139564%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass139562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass139562%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass139559%_ _%val139560%_)
        (##structure-set!
         _%klass139559%_
         _%val139560%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass139554%_ _%val139556%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass139554%_
           _%val139556%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type139318%_)
        (letrec ((_%__fields->list139448%_
                  (lambda (_%fields139512%_)
                    (let* ((_%fields139515%_ _%fields139512%_)
                           (_%fields-len139524%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields139515%_))))
                      (let _%loop139526%_ ((_%i139528%_ '0) (_%r139529%_ '()))
                        (let* ((_%i139532%_ _%i139528%_)
                               (_%r139545%_ _%r139529%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i139532%_ _%fields-len139524%_))
                              (_%loop139526%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i139532%_ '3))
                               (cons (vector-ref _%fields139515%_ _%i139532%_)
                                     _%r139545%_))
                              (reverse! _%r139545%_)))))))
                 (_%fields->list139449%_
                  (lambda (_%fields139500%_)
                    (let ((_%fields139503%_ _%fields139500%_))
                      (_%__fields->list139448%_ _%fields139503%_)))))
          (let _%loop139451%_ ((_%type139453%_ _%type139318%_))
            (if (let () (declare (not safe)) (##type? _%type139453%_))
                (if (eq? _%type139453%_ ##type-type)
                    '()
                    (let ((_%$e139458%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type139453%_))))
                      (if _%$e139458%_
                          (let ((__tmp143412 (_%loop139451%_ _%$e139458%_))
                                (__tmp143411
                                 (let* ((_%fields139464%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type139453%_)))
                                        (_%fields139468%_ _%fields139464%_))
                                   (_%__fields->list139448%_
                                    _%fields139468%_))))
                            (declare (not safe))
                            (##append __tmp143412 __tmp143411))
                          (let* ((_%fields139485%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type139453%_)))
                                 (_%fields139489%_ _%fields139485%_))
                            (_%__fields->list139448%_ _%fields139489%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass139286%_)
        (let ((_%klass139289%_ _%klass139286%_))
          (letrec ((_%get-fields!139298%_
                    (lambda (_%klass139313%_ _%type139314%_)
                      (let ((_%fields139316%_
                             (type-field-list _%type139314%_)))
                        (##structure-set!
                         _%klass139313%_
                         (cons (cons 'fields: _%fields139316%_)
                               (##structure-ref
                                _%klass139313%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields139316%_))))
            (let* ((_%props139300%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass139289%_ '9 '#f '#f)))
                   (_%$e139302%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props139300%_))))
              (if _%$e139302%_
                  _%$e139302%_
                  (let ((_%$e139305%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props139300%_))))
                    (if _%$e139305%_
                        (_%get-fields!139298%_ _%klass139289%_ _%$e139305%_)
                        (_%get-fields!139298%_
                         _%klass139289%_
                         _%klass139289%_)))))))))
    (define class-type-field-list
      (lambda (_%klass139272%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139272%_ 'class))
            (let ((_%klass139276%_ _%klass139272%_))
              (__class-type-field-list _%klass139276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@409.30-409.35"
               'contract:
               'class-type?
               'value:
               _%klass139272%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass139260%_)
        (let ((_%klass139263%_ _%klass139260%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass139263%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass139246%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139246%_ 'class))
            (let ((_%klass139250%_ _%klass139246%_))
              (__class-type-slot-list _%klass139250%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@425.29-425.34"
               'contract:
               'class-type?
               'value:
               _%klass139246%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass139234%_)
        (let* ((_%klass139237%_ _%klass139234%_)
               (__tmp143413
                (let ((__tmp143414
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass139237%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp143414))))
          (declare (not safe))
          (##fx- __tmp143413 '1))))
    (define class-type-field-count
      (lambda (_%klass139220%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139220%_ 'class))
            (let ((_%klass139224%_ _%klass139220%_))
              (__class-type-field-count _%klass139224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.31-427.36"
               'contract:
               'class-type?
               'value:
               _%klass139220%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass139208%_)
        (let ((_%klass139211%_ _%klass139208%_))
          (let ((__tmp143415
                 (let ((__tmp143416
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass139211%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp143416))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass139211%_
             __tmp143415
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass139194%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139194%_ 'class))
            (let ((_%klass139198%_ _%klass139194%_))
              (__class-type-seal! _%klass139198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@430.25-430.30"
               'contract:
               'class-type?
               'value:
               _%klass139194%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass139148%_ _%key139149%_ _%val139150%_)
        (let* ((_%klass139153%_ _%klass139148%_) (_%key139161%_ _%key139149%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again139172%_ ((_%spin139175%_ '0))
              (if (let ((__tmp143417
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp143417 '0))
                  (let ((__tmp143418 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp143418))
                  (if (let () (declare (not safe)) (##fx< _%spin139175%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again139172%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin139175%_ '1))))
                      (let ((_%owner139181%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner139181%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner139181%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again139172%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r139189%_
                 (let ((_%props139187%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass139153%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key139161%_ _%props139187%_)
                       '#!void
                       (let ((__tmp143419
                              (cons (cons _%key139161%_ _%val139150%_)
                                    _%props139187%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass139153%_
                          __tmp143419
                          '9
                          '#f
                          '#f))))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! __class-type-properties-lock '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! __class-type-properties-lock '0 '0 '1))))
            _%$r139189%_))))
    (define class-type-properties-put!
      (lambda (_%klass139122%_ _%key139123%_ _%val139124%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139122%_ 'class))
            (let ((_%klass139128%_ _%klass139122%_))
              (if (keyword? _%key139123%_)
                  (let ((_%key139138%_ _%key139123%_))
                    (__class-type-properties-put!
                     _%klass139128%_
                     _%key139138%_
                     _%val139124%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@438.52-438.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key139123%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@438.35-438.40"
               'contract:
               'class-type?
               'value:
               _%klass139122%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass139016%_)
        (let ((_%klass139019%_ _%klass139016%_))
          (letrec ((_%get-field-vector139028%_
                    (lambda (_%type139106%_)
                      (let _%loop139108%_ ((_%type139110%_ _%type139106%_))
                        (let* ((_%fields139112%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type139110%_)))
                               (_%$e139114%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type139110%_))))
                          (if _%$e139114%_
                              (let ((_%super-fields139119%_
                                     (_%loop139108%_ _%$e139114%_)))
                                (vector-append
                                 _%super-fields139119%_
                                 _%fields139112%_))
                              _%fields139112%_)))))
                   (_%get-printable-slot-alist139029%_
                    (lambda (_%type139089%_)
                      (let* ((_%fields139091%_
                              (_%get-field-vector139028%_ _%type139089%_))
                             (_%count139093%_
                              (vector-length _%fields139091%_)))
                        (let _%loop139096%_ ((_%i139098%_ '0)
                                             (_%offset139099%_ '1)
                                             (_%r139100%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i139098%_ _%count139093%_))
                              (let ((_%slot-name139102%_
                                     (vector-ref _%fields139091%_ _%i139098%_))
                                    (_%slot-flags139103%_
                                     (vector-ref
                                      _%fields139091%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i139098%_ '1))))
                                    (_%next-i139104%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i139098%_ '3))))
                                (if (let ((__tmp143420
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags139103%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp143420 '0))
                                    (_%loop139096%_
                                     _%next-i139104%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset139099%_ '1))
                                     (cons (cons _%slot-name139102%_
                                                 _%offset139099%_)
                                           _%r139100%_))
                                    (_%loop139096%_
                                     _%next-i139104%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset139099%_ '1))
                                     _%r139100%_)))
                              (reverse! _%r139100%_))))))
                   (_%get-printable-slots!139030%_
                    (lambda (_%klass139045%_ _%type139046%_)
                      (let ((_%printable139048%_
                             (_%get-printable-slot-alist139029%_
                              _%type139046%_)))
                        (let* ((_%klass139050%_ _%klass139045%_)
                               (_%key139053%_ 'printable-slots:)
                               (_%val139056%_ _%printable139048%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass139050%_
                                 'class))
                              (let* ((_%klass139061%_ _%klass139050%_)
                                     (_%key139079%_ _%key139053%_))
                                (__class-type-properties-put!
                                 _%klass139061%_
                                 _%key139079%_
                                 _%val139056%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass139050%_)
                                '#!void)))
                        _%printable139048%_))))
            (let* ((_%props139032%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass139019%_ '9 '#f '#f)))
                   (_%$e139034%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props139032%_))))
              (if _%$e139034%_
                  _%$e139034%_
                  (let ((_%$e139037%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props139032%_))))
                    (if _%$e139037%_
                        (_%get-printable-slots!139030%_
                         _%klass139019%_
                         _%$e139037%_)
                        (_%get-printable-slots!139030%_
                         _%klass139019%_
                         _%klass139019%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass139002%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139002%_ 'class))
            (let ((_%klass139006%_ _%klass139002%_))
              (__class-type-printable-slots _%klass139006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@447.35-447.40"
               'contract:
               'class-type?
               'value:
               _%klass139002%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct138971%_ _%maybe-super-struct138972%_)
        (let* ((_%maybe-sub-struct138975%_ _%maybe-sub-struct138971%_)
               (_%maybe-super-struct138983%_ _%maybe-super-struct138972%_)
               (_%maybe-super-struct-id138992%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct138983%_))))
          (let _%lp138994%_ ((_%super-struct138996%_
                              _%maybe-sub-struct138975%_))
            (if (not _%super-struct138996%_)
                '#f
                (if (eq? _%maybe-super-struct-id138992%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct138996%_)))
                    '#t
                    (_%lp138994%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct138996%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct138946%_ _%maybe-super-struct138947%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct138946%_ 'class))
            (let ((_%maybe-sub-struct138951%_ _%maybe-sub-struct138946%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct138947%_
                     'class))
                  (let ((_%maybe-super-struct138961%_
                         _%maybe-super-struct138947%_))
                    (__substruct?
                     _%maybe-sub-struct138951%_
                     _%maybe-super-struct138961%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@491.47-491.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct138947%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@491.19-491.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct138946%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass138924%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138924%_ 'class))
            (if (let* ((_%klass138927%_ _%klass138924%_)
                       (_%klass138932%_ _%klass138927%_))
                  (__class-type-struct? _%klass138932%_))
                _%klass138924%_
                (let () (declare (not safe)) (##type-super _%klass138924%_)))
            (if (not _%klass138924%_)
                '#f
                (error '"not a class or false" _%klass138924%_)))))
    (define base-struct/2
      (lambda (_%klass1138847%_ _%klass2138848%_)
        (let ((_%s1138850%_ (base-struct/1 _%klass1138847%_))
              (_%s2138851%_ (base-struct/1 _%klass2138848%_)))
          (if (or (not _%s1138850%_)
                  (and _%s2138851%_
                       (let* ((_%maybe-sub-struct138856%_ _%s1138850%_)
                              (_%maybe-super-struct138859%_ _%s2138851%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct138856%_
                                'class))
                             (let ((_%maybe-sub-struct138864%_
                                    _%maybe-sub-struct138856%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct138859%_
                                      'class))
                                   (let ((_%maybe-super-struct138878%_
                                          _%maybe-super-struct138859%_))
                                     (__substruct?
                                      _%maybe-sub-struct138864%_
                                      _%maybe-super-struct138878%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct138859%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct138856%_)
                               '#!void)))))
              _%s2138851%_
              (if (or (not _%s2138851%_)
                      (and _%s1138850%_
                           (let* ((_%maybe-sub-struct138892%_ _%s2138851%_)
                                  (_%maybe-super-struct138895%_ _%s1138850%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct138892%_
                                    'class))
                                 (let ((_%maybe-sub-struct138900%_
                                        _%maybe-sub-struct138892%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct138895%_
                                          'class))
                                       (let ((_%maybe-super-struct138912%_
                                              _%maybe-super-struct138895%_))
                                         (__substruct?
                                          _%maybe-sub-struct138900%_
                                          _%maybe-super-struct138912%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct138895%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct138892%_)
                                   '#!void)))))
                  _%s1138850%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1138847%_
                         _%klass2138848%_
                         _%s1138850%_
                         _%s2138851%_))))))
    (define base-struct/list
      (lambda (_%all-supers138732%_)
        (let* ((_%$%all-supers138733138758%_ _%all-supers138732%_)
               (_%$%E138738138762%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers138733138758%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K138756138844%_ (lambda () '#f))
                (_%$%K138753138830%_
                 (lambda (_%x138828%_) (base-struct/1 _%x138828%_)))
                (_%$%K138748138807%_
                 (lambda (_%y138804%_ _%x138805%_)
                   (base-struct/2 _%x138805%_ _%y138804%_)))
                (_%$%K138739138769%_
                 (lambda (_%y138766%_ _%x138767%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x138767%_ _%y138766%_)))))
            (let* ((_%__match142181142182%_
                    (lambda (_%$%hd138740138772%_ _%$%tl138741138774%_)
                      (let ((_%x138777%_ _%$%hd138740138772%_))
                        (letrec ((_%$%splice-rest138743138779%_
                                  (lambda (_%$%rest138747138786%_ _%y138788%_)
                                    (if (null? _%$%rest138747138786%_)
                                        (_%$%K138739138769%_
                                         _%y138788%_
                                         _%x138777%_)
                                        (_%$%E138738138762%_))))
                                 (_%$%splice-try138745138781%_
                                  (lambda (_%$%hd138746138790%_
                                           _%$%rest138747138792%_
                                           _%$%y138742138793%_)
                                    (let ((_%y138795%_ _%$%hd138746138790%_))
                                      (_%$%splice-loop138744138783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest138747138792%_))
                                       (cons _%y138795%_
                                             _%$%y138742138793%_)))))
                                 (_%$%splice-loop138744138783%_
                                  (lambda (_%$%rest138747138797%_
                                           _%$%y138742138798%_)
                                    (if (pair? _%$%rest138747138797%_)
                                        (_%$%splice-try138745138781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest138747138797%_))
                                         _%$%rest138747138797%_
                                         _%$%y138742138798%_)
                                        (_%$%splice-rest138743138779%_
                                         _%$%rest138747138797%_
                                         (reverse _%$%y138742138798%_))))))
                          (_%$%splice-loop138744138783%_
                           _%$%tl138741138774%_
                           '())))))
                   (_%$%try-match138735138840%_
                    (lambda ()
                      (if (pair? _%$%all-supers138733138758%_)
                          (let ((_%$%tl138755138835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers138733138758%_)))
                                (_%$%hd138754138833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers138733138758%_))))
                            (if (null? _%$%tl138755138835%_)
                                (let ((_%x138838%_ _%$%hd138754138833%_))
                                  (base-struct/1 _%x138838%_))
                                (if (pair? _%$%tl138755138835%_)
                                    (let ((_%$%tl138752138819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl138755138835%_)))
                                          (_%$%hd138751138817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl138755138835%_))))
                                      (if (null? _%$%tl138752138819%_)
                                          (let ((_%x138815%_
                                                 _%$%hd138754138833%_)
                                                (_%y138822%_
                                                 _%$%hd138751138817%_))
                                            (_%$%K138748138807%_
                                             _%y138822%_
                                             _%x138815%_))
                                          (_%__match142181142182%_
                                           _%$%hd138754138833%_
                                           _%$%tl138755138835%_)))
                                    (_%__match142181142182%_
                                     _%$%hd138754138833%_
                                     _%$%tl138755138835%_))))
                          (_%$%E138738138762%_)))))
              (if (null? _%$%all-supers138733138758%_)
                  (_%$%K138756138844%_)
                  (_%$%try-match138735138840%_)))))))
    (define base-struct
      (lambda _%all-supers138730%_ (base-struct/list _%all-supers138730%_)))
    (define find-super-constructor
      (lambda (_%super138681%_)
        (let _%lp138683%_ ((_%rest138685%_ _%super138681%_)
                           (_%constructor138686%_ '#f))
          (let* ((_%$%rest138687138695%_ _%rest138685%_)
                 (_%$%else138689138703%_ (lambda () _%constructor138686%_))
                 (_%$%K138691138718%_
                  (lambda (_%rest138706%_ _%hd138707%_)
                    (let ((_%$e138709%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd138707%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e138709%_
                          (if (or (not _%constructor138686%_)
                                  (eq? _%constructor138686%_ _%$e138709%_))
                              (_%lp138683%_ _%rest138706%_ _%$e138709%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor138686%_
                                     _%$e138709%_))
                          (_%lp138683%_
                           _%rest138706%_
                           _%constructor138686%_))))))
            (if (pair? _%$%rest138687138695%_)
                (let ((_%$%hd138692138721%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest138687138695%_)))
                      (_%$%tl138693138723%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest138687138695%_))))
                  (let* ((_%hd138726%_ _%$%hd138692138721%_)
                         (_%rest138728%_ _%$%tl138693138723%_))
                    (_%$%K138691138718%_ _%rest138728%_ _%hd138726%_)))
                (_%$%else138689138703%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list138673%_ _%direct-slots138674%_)
        (let ((__tmp143422
               (lambda (_%mixin138676%_)
                 (let ((__tmp143423
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin138676%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp143423 '()))))
              (__tmp143421
               (lambda (_%slot-list138678%_ _%slot-table138679%_)
                 (values (list->vector _%slot-list138678%_)
                         _%slot-table138679%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list138673%_
           _%direct-slots138674%_
           __tmp143422
           __tmp143421))))
    (define __make-class-type
      (lambda (_%id138500%_
               _%name138501%_
               _%direct-supers138502%_
               _%direct-slots138503%_
               _%properties138504%_
               _%constructor138505%_)
        (let* ((_%id138508%_ _%id138500%_)
               (_%name138516%_ _%name138501%_)
               (_%direct-supers138524%_ _%direct-supers138502%_)
               (_%direct-slots138532%_ _%direct-slots138503%_)
               (_%properties138540%_ _%properties138504%_)
               (_%constructor138548%_ _%constructor138505%_))
          (let ((_%$e138582%_
                 (let* ((_%pred138560%_
                         (lambda (_%$obj138557%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj138557%_
                                   'class)))))
                        (_%lst138563%_ _%direct-supers138524%_)
                        (_%pred138568%_ _%pred138560%_))
                   (declare (not safe))
                   (__find _%pred138568%_ _%lst138563%_))))
            (if _%$e138582%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e138582%_)
                (let ((_%$e138609%_
                       (let* ((_%pred138589%_ __class-type-final?)
                              (_%lst138592%_ _%direct-supers138524%_)
                              (_%pred138597%_ _%pred138589%_))
                         (declare (not safe))
                         (__find _%pred138597%_ _%lst138592%_))))
                  (if _%$e138609%_
                      (error '"Cannot extend final class" _%$e138609%_)
                      '#!void))))
          (let ((_g143424_ (compute-precedence-list _%direct-supers138524%_)))
            (begin
              (let ((_g143425_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g143424_)
                           (##values-length _g143424_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g143425_ 2)))
                    (error "Context expects 2 values" _g143425_)))
              (let ((_%precedence-list138616%_
                     (let () (declare (not safe)) (##values-ref _g143424_ 0)))
                    (_%struct-super138617%_
                     (let () (declare (not safe)) (##values-ref _g143424_ 1))))
                (let ((_g143426_
                       (compute-class-slots
                        _%precedence-list138616%_
                        _%direct-slots138532%_)))
                  (begin
                    (let ((_g143427_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g143426_)
                                 (##values-length _g143426_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g143427_ 2)))
                          (error "Context expects 2 values" _g143427_)))
                    (let ((_%slot-vector138619%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g143426_ 0)))
                          (_%slot-table138620%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g143426_ 1))))
                      (let* ((_%properties138622%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots138532%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers138524%_)
                                          _%properties138540%_)))
                             (_%constructor*138627%_
                              (let ((_%$e138624%_ _%constructor138548%_))
                                (if _%$e138624%_
                                    _%$e138624%_
                                    (find-super-constructor
                                     _%direct-supers138524%_))))
                             (_%precedence-list138670%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties138622%_))
                                      (memq object::t
                                            _%precedence-list138616%_))
                                  _%precedence-list138616%_
                                  (let _%loop138632%_ ((_%tail138634%_
                                                        _%precedence-list138616%_)
                                                       (_%head138635%_ '()))
                                    (let* ((_%$%tail138636138644%_
                                            _%tail138634%_)
                                           (_%$%else138638138652%_
                                            (lambda ()
                                              (let ((__tmp143428
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp143428
                                                 _%head138635%_))))
                                           (_%$%K138640138658%_
                                            (lambda (_%rest138655%_
                                                     _%hd138656%_)
                                              (if (eq? _%hd138656%_ t::t)
                                                  (let ((__tmp143429
                                                         (cons object::t
                                                               _%tail138634%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp143429
                                                     _%head138635%_))
                                                  (_%loop138632%_
                                                   _%rest138655%_
                                                   (cons _%hd138656%_
                                                         _%head138635%_))))))
                                      (if (pair? _%$%tail138636138644%_)
                                          (let ((_%$%hd138641138661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail138636138644%_)))
                                                (_%$%tl138642138663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail138636138644%_))))
                                            (let* ((_%hd138666%_
                                                    _%$%hd138641138661%_)
                                                   (_%rest138668%_
                                                    _%$%tl138642138663%_))
                                              (_%$%K138640138658%_
                                               _%rest138668%_
                                               _%hd138666%_)))
                                          (_%$%else138638138652%_)))))))
                        (make-class-type-descriptor
                         _%id138508%_
                         _%name138516%_
                         _%struct-super138617%_
                         _%precedence-list138670%_
                         _%slot-vector138619%_
                         _%properties138622%_
                         _%constructor*138627%_
                         _%slot-table138620%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id138425%_
               _%name138426%_
               _%direct-supers138427%_
               _%direct-slots138428%_
               _%properties138429%_
               _%constructor138430%_)
        (if (symbol? _%id138425%_)
            (let ((_%id138434%_ _%id138425%_))
              (if (symbol? _%name138426%_)
                  (let ((_%name138444%_ _%name138426%_))
                    (if (list? _%direct-supers138427%_)
                        (let ((_%direct-supers138454%_
                               _%direct-supers138427%_))
                          (if (list? _%direct-slots138428%_)
                              (let ((_%direct-slots138464%_
                                     _%direct-slots138428%_))
                                (if (list? _%properties138429%_)
                                    (let ((_%properties138474%_
                                           _%properties138429%_))
                                      (if (or (not _%constructor138430%_)
                                              (symbol? _%constructor138430%_))
                                          (let ((_%constructor138490%_
                                                 _%constructor138430%_))
                                            (__make-class-type
                                             _%id138434%_
                                             _%name138444%_
                                             _%direct-supers138454%_
                                             _%direct-slots138464%_
                                             _%properties138474%_
                                             _%constructor138490%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@572.24-572.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor138430%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@571.24-571.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties138429%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@570.24-570.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots138428%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@569.24-569.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers138427%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@568.24-568.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name138426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@567.24-567.26"
               'contract:
               'symbol?
               'value:
               _%id138425%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass138413%_)
        (let ((_%klass138416%_ _%klass138413%_))
          (cons _%klass138416%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass138416%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass138399%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138399%_ 'class))
            (let ((_%klass138403%_ _%klass138399%_))
              (__class-precedence-list _%klass138403%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@605.30-605.35"
               'contract:
               'class-type?
               'value:
               _%klass138399%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers138396%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers138396%_))))
    (define __make-class-predicate
      (lambda (_%klass138312%_)
        (let* ((_%klass138315%_ _%klass138312%_)
               (_%tid138324%_
                (let () (declare (not safe)) (##type-id _%klass138315%_))))
          (if (let* ((_%type138326%_ _%klass138315%_)
                     (_%type138331%_ _%type138326%_))
                (__class-type-final? _%type138331%_))
              (lambda (_%$%g138345138347%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g138345138347%_
                   _%tid138324%_)))
              (if (let* ((_%klass138350%_ _%klass138315%_)
                         (_%klass138355%_ _%klass138350%_))
                    (__class-type-struct? _%klass138355%_))
                  (lambda (_%$%g138365138367%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g138365138367%_
                       _%tid138324%_)))
                  (lambda (_%$%g138370138372%_)
                    (let* ((_%klass138375%_ _%klass138315%_)
                           (_%obj138378%_ _%$%g138370138372%_)
                           (_%klass138383%_ _%klass138375%_))
                      (__class-instance? _%klass138383%_ _%obj138378%_))))))))
    (define make-class-predicate
      (lambda (_%klass138298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138298%_ 'class))
            (let ((_%klass138302%_ _%klass138298%_))
              (__make-class-predicate _%klass138302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.29-617.34"
               'contract:
               'class-type?
               'value:
               _%klass138298%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass138232%_ _%slot138233%_)
        (let* ((_%klass138236%_ _%klass138232%_)
               (_%slot138244%_ _%slot138233%_)
               (_%field138253%_
                (let ((__tmp143430
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138236%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143430 _%slot138244%_ '#f))))
          (if (not _%field138253%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138236%_
                       'slot:
                       _%slot138244%_)
                '#!void)
              (if (let* ((_%type138257%_ _%klass138236%_)
                         (_%type138262%_ _%type138257%_))
                    (__class-type-final? _%type138262%_))
                  (make-final-slot-accessor
                   _%klass138236%_
                   _%slot138244%_
                   _%field138253%_)
                  (if (let* ((_%klass138277%_ _%klass138236%_)
                             (_%klass138282%_ _%klass138277%_))
                        (__class-type-struct? _%klass138282%_))
                      (make-struct-slot-accessor
                       _%klass138236%_
                       _%slot138244%_
                       _%field138253%_)
                      (if (let ((_%strukt138293%_
                                 (base-struct/1 _%klass138236%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138293%_
                                    'class))
                                 (let ((__tmp143431
                                        (let ((__tmp143432
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138293%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143432))))
                                   (declare (not safe))
                                   (##fx< _%field138253%_ __tmp143431))))
                          (make-struct-subclass-slot-accessor
                           _%klass138236%_
                           _%slot138244%_
                           _%field138253%_)
                          (make-class-cached-slot-accessor
                           _%klass138236%_
                           _%slot138244%_
                           _%field138253%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass138207%_ _%slot138208%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138207%_ 'class))
            (let ((_%klass138212%_ _%klass138207%_))
              (if (symbol? _%slot138208%_)
                  (let ((_%slot138222%_ _%slot138208%_))
                    (__make-class-slot-accessor
                     _%klass138212%_
                     _%slot138222%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@648.50-648.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138208%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@648.33-648.38"
               'contract:
               'class-type?
               'value:
               _%klass138207%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass138141%_ _%slot138142%_)
        (let* ((_%klass138145%_ _%klass138141%_)
               (_%slot138153%_ _%slot138142%_)
               (_%field138162%_
                (let ((__tmp143433
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138145%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143433 _%slot138153%_ '#f))))
          (if (not _%field138162%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138145%_
                       'slot:
                       _%slot138153%_)
                '#!void)
              (if (let* ((_%type138166%_ _%klass138145%_)
                         (_%type138171%_ _%type138166%_))
                    (__class-type-final? _%type138171%_))
                  (make-final-slot-mutator
                   _%klass138145%_
                   _%slot138153%_
                   _%field138162%_)
                  (if (let* ((_%klass138186%_ _%klass138145%_)
                             (_%klass138191%_ _%klass138186%_))
                        (__class-type-struct? _%klass138191%_))
                      (make-struct-slot-mutator
                       _%klass138145%_
                       _%slot138153%_
                       _%field138162%_)
                      (if (let ((_%strukt138202%_
                                 (base-struct/1 _%klass138145%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138202%_
                                    'class))
                                 (let ((__tmp143434
                                        (let ((__tmp143435
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138202%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143435))))
                                   (declare (not safe))
                                   (##fx< _%field138162%_ __tmp143434))))
                          (make-struct-subclass-slot-mutator
                           _%klass138145%_
                           _%slot138153%_
                           _%field138162%_)
                          (make-class-cached-slot-mutator
                           _%klass138145%_
                           _%slot138153%_
                           _%field138162%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass138116%_ _%slot138117%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138116%_ 'class))
            (let ((_%klass138121%_ _%klass138116%_))
              (if (symbol? _%slot138117%_)
                  (let ((_%slot138131%_ _%slot138117%_))
                    (__make-class-slot-mutator _%klass138121%_ _%slot138131%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@656.49-656.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138117%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@656.32-656.37"
               'contract:
               'class-type?
               'value:
               _%klass138116%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass138050%_ _%slot138051%_)
        (let* ((_%klass138054%_ _%klass138050%_)
               (_%slot138062%_ _%slot138051%_)
               (_%field138071%_
                (let ((__tmp143436
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138054%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143436 _%slot138062%_ '#f))))
          (if (not _%field138071%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass138054%_
                       'slot:
                       _%slot138062%_)
                '#!void)
              (if (let* ((_%type138075%_ _%klass138054%_)
                         (_%type138080%_ _%type138075%_))
                    (__class-type-final? _%type138080%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass138054%_
                   _%slot138062%_
                   _%field138071%_)
                  (if (let* ((_%klass138095%_ _%klass138054%_)
                             (_%klass138100%_ _%klass138095%_))
                        (__class-type-struct? _%klass138100%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass138054%_
                       _%slot138062%_
                       _%field138071%_)
                      (if (let ((_%strukt138111%_
                                 (base-struct/1 _%klass138054%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138111%_
                                    'class))
                                 (let ((__tmp143437
                                        (let ((__tmp143438
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138111%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143438))))
                                   (declare (not safe))
                                   (##fx< _%field138071%_ __tmp143437))))
                          (make-struct-slot-unchecked-accessor
                           _%klass138054%_
                           _%slot138062%_
                           _%field138071%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass138054%_
                           _%slot138062%_
                           _%field138071%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass138025%_ _%slot138026%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138025%_ 'class))
            (let ((_%klass138030%_ _%klass138025%_))
              (if (symbol? _%slot138026%_)
                  (let ((_%slot138040%_ _%slot138026%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass138030%_
                     _%slot138040%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@664.60-664.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot138026%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@664.43-664.48"
               'contract:
               'class-type?
               'value:
               _%klass138025%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass137959%_ _%slot137960%_)
        (let* ((_%klass137963%_ _%klass137959%_)
               (_%slot137971%_ _%slot137960%_)
               (_%field137980%_
                (let ((__tmp143439
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass137963%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp143439 _%slot137971%_ '#f))))
          (if (not _%field137980%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass137963%_
                       'slot:
                       _%slot137971%_)
                '#!void)
              (if (let* ((_%type137984%_ _%klass137963%_)
                         (_%type137989%_ _%type137984%_))
                    (__class-type-final? _%type137989%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass137963%_
                   _%slot137971%_
                   _%field137980%_)
                  (if (let* ((_%klass138004%_ _%klass137963%_)
                             (_%klass138009%_ _%klass138004%_))
                        (__class-type-struct? _%klass138009%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass137963%_
                       _%slot137971%_
                       _%field137980%_)
                      (if (let ((_%strukt138020%_
                                 (base-struct/1 _%klass137963%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt138020%_
                                    'class))
                                 (let ((__tmp143440
                                        (let ((__tmp143441
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt138020%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp143441))))
                                   (declare (not safe))
                                   (##fx< _%field137980%_ __tmp143440))))
                          (make-struct-slot-unchecked-mutator
                           _%klass137963%_
                           _%slot137971%_
                           _%field137980%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass137963%_
                           _%slot137971%_
                           _%field137980%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass137934%_ _%slot137935%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137934%_ 'class))
            (let ((_%klass137939%_ _%klass137934%_))
              (if (symbol? _%slot137935%_)
                  (let ((_%slot137949%_ _%slot137935%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass137939%_
                     _%slot137949%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@672.59-672.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot137935%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@672.42-672.47"
               'contract:
               'class-type?
               'value:
               _%klass137934%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object137918%_ _%class137919%_ _%slot137920%_)
        (apply error
               '"not an instance"
               'object:
               _%object137918%_
               'class:
               _%class137919%_
               (if _%slot137920%_
                   (cons 'slot: (cons _%slot137920%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object137925%_ _%class137926%_)
        (let ((_%slot137928%_ '#f))
          (not-an-instance__%
           _%object137925%_
           _%class137926%_
           _%slot137928%_))))
    (define not-an-instance
      (lambda _g143442_
        (let ((_g143443_ (let () (declare (not safe)) (##length _g143442_))))
          (cond ((let () (declare (not safe)) (##fx= _g143443_ 2))
                 (apply not-an-instance__0 _g143442_))
                ((let () (declare (not safe)) (##fx= _g143443_ 3))
                 (apply not-an-instance__% _g143442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g143442_))))))
    (define make-final-slot-accessor
      (lambda (_%klass137911%_ _%slot137912%_ _%field137913%_)
        (lambda (_%obj137915%_)
          (##direct-structure-ref
           _%obj137915%_
           _%field137913%_
           _%klass137911%_
           _%slot137912%_))))
    (define make-final-slot-mutator
      (lambda (_%klass137904%_ _%slot137905%_ _%field137906%_)
        (lambda (_%obj137908%_ _%val137909%_)
          (##direct-structure-set!
           _%obj137908%_
           _%val137909%_
           _%field137906%_
           _%klass137904%_
           _%slot137905%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass137898%_ _%slot137899%_ _%field137900%_)
        (lambda (_%obj137902%_)
          (##structure-ref
           _%obj137902%_
           _%field137900%_
           _%klass137898%_
           _%slot137899%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass137891%_ _%slot137892%_ _%field137893%_)
        (lambda (_%obj137895%_ _%val137896%_)
          (##structure-set!
           _%obj137895%_
           _%val137896%_
           _%field137893%_
           _%klass137891%_
           _%slot137892%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass137885%_ _%slot137886%_ _%field137887%_)
        (lambda (_%obj137889%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj137889%_
             _%field137887%_
             _%klass137885%_
             _%slot137886%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass137878%_ _%slot137879%_ _%field137880%_)
        (lambda (_%obj137882%_ _%val137883%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj137882%_
             _%val137883%_
             _%field137880%_
             _%klass137878%_
             _%slot137879%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass137851%_ _%slot137852%_ _%field137853%_)
        (lambda (_%obj137855%_)
          (if (let* ((_%klass137857%_ _%klass137851%_)
                     (_%obj137860%_ _%obj137855%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137857%_ 'class))
                    (let ((_%klass137865%_ _%klass137857%_))
                      (__class-instance? _%klass137865%_ _%obj137860%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137857%_)
                      '#!void)))
              (unchecked-slot-ref _%obj137855%_ _%field137853%_)
              (not-an-instance__%
               _%obj137855%_
               _%klass137851%_
               _%slot137852%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass137823%_ _%slot137824%_ _%field137825%_)
        (lambda (_%obj137827%_ _%val137828%_)
          (if (let* ((_%klass137830%_ _%klass137823%_)
                     (_%obj137833%_ _%obj137827%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137830%_ 'class))
                    (let ((_%klass137838%_ _%klass137830%_))
                      (__class-instance? _%klass137838%_ _%obj137833%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137830%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj137827%_
               _%field137825%_
               _%val137828%_)
              (not-an-instance__%
               _%obj137827%_
               _%klass137823%_
               _%slot137824%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass137774%_ _%slot137775%_ _%field137776%_)
        (lambda (_%obj137778%_)
          (if (let* ((_%klass137780%_ _%klass137774%_)
                     (_%obj137783%_ _%obj137778%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137780%_ 'class))
                    (let ((_%klass137788%_ _%klass137780%_))
                      (__direct-instance? _%klass137788%_ _%obj137783%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137780%_)
                      '#!void)))
              (unchecked-field-ref _%obj137778%_ _%field137776%_)
              (if (let* ((_%klass137802%_ _%klass137774%_)
                         (_%obj137805%_ _%obj137778%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass137802%_ 'class))
                        (let ((_%klass137810%_ _%klass137802%_))
                          (__class-instance? _%klass137810%_ _%obj137805%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass137802%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj137778%_ _%slot137775%_)
                  (not-an-instance__%
                   _%obj137778%_
                   _%klass137774%_
                   _%slot137775%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass137724%_ _%slot137725%_ _%field137726%_)
        (lambda (_%obj137728%_ _%val137729%_)
          (if (let* ((_%klass137731%_ _%klass137724%_)
                     (_%obj137734%_ _%obj137728%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137731%_ 'class))
                    (let ((_%klass137739%_ _%klass137731%_))
                      (__direct-instance? _%klass137739%_ _%obj137734%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137731%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj137728%_
               _%field137726%_
               _%val137729%_)
              (if (let* ((_%klass137753%_ _%klass137724%_)
                         (_%obj137756%_ _%obj137728%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass137753%_ 'class))
                        (let ((_%klass137761%_ _%klass137753%_))
                          (__class-instance? _%klass137761%_ _%obj137756%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass137753%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj137728%_
                   _%slot137725%_
                   _%val137729%_)
                  (not-an-instance__%
                   _%obj137728%_
                   _%klass137724%_
                   _%slot137725%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass137697%_ _%slot137698%_ _%field137699%_)
        (lambda (_%obj137701%_)
          (if (let* ((_%klass137703%_ _%klass137697%_)
                     (_%obj137706%_ _%obj137701%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137703%_ 'class))
                    (let ((_%klass137711%_ _%klass137703%_))
                      (__direct-instance? _%klass137711%_ _%obj137706%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137703%_)
                      '#!void)))
              (unchecked-field-ref _%obj137701%_ _%field137699%_)
              (unchecked-slot-ref _%obj137701%_ _%slot137698%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass137669%_ _%slot137670%_ _%field137671%_)
        (lambda (_%obj137673%_ _%val137674%_)
          (if (let* ((_%klass137676%_ _%klass137669%_)
                     (_%obj137679%_ _%obj137673%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass137676%_ 'class))
                    (let ((_%klass137684%_ _%klass137676%_))
                      (__direct-instance? _%klass137684%_ _%obj137679%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass137676%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj137673%_
               _%field137671%_
               _%val137674%_)
              (unchecked-slot-set!
               _%obj137673%_
               _%slot137670%_
               _%val137674%_)))))
    (define __class-slot-offset
      (lambda (_%klass137648%_ _%slot137649%_)
        (let* ((_%klass137652%_ _%klass137648%_)
               (_%slot137660%_ _%slot137649%_)
               (__tmp143444
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass137652%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp143444 _%slot137660%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass137623%_ _%slot137624%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137623%_ 'class))
            (let ((_%klass137628%_ _%klass137623%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137624%_))
                  (let ((_%slot137638%_ _%slot137624%_))
                    (__class-slot-offset _%klass137628%_ _%slot137638%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@734.43-734.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137624%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@734.26-734.31"
               'contract:
               'class-type?
               'value:
               _%klass137623%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass137548%_ _%obj137549%_ _%slot137550%_)
        (let* ((_%klass137553%_ _%klass137548%_)
               (_%slot137561%_ _%slot137550%_))
          (if (let* ((_%klass137570%_ _%klass137553%_)
                     (_%obj137573%_ _%obj137549%_)
                     (_%klass137578%_ _%klass137570%_))
                (__class-instance? _%klass137578%_ _%obj137573%_))
              (let ((_%off137621%_
                     (let* ((_%klass137592%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj137549%_)))
                            (_%slot137595%_ _%slot137561%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass137592%_ 'class))
                           (let ((_%klass137600%_ _%klass137592%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot137595%_))
                                 (let ((_%slot137611%_ _%slot137595%_))
                                   (__class-slot-offset
                                    _%klass137600%_
                                    _%slot137611%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot137595%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass137592%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj137549%_
                 _%off137621%_
                 _%klass137553%_
                 _%slot137561%_))
              (not-an-instance__0 _%obj137549%_ _%klass137553%_)))))
    (define class-slot-ref
      (lambda (_%klass137522%_ _%obj137523%_ _%slot137524%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137522%_ 'class))
            (let ((_%klass137528%_ _%klass137522%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137524%_))
                  (let ((_%slot137538%_ _%slot137524%_))
                    (__class-slot-ref
                     _%klass137528%_
                     _%obj137523%_
                     _%slot137538%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@737.44-737.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137524%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@737.23-737.28"
               'contract:
               'class-type?
               'value:
               _%klass137522%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass137446%_ _%obj137447%_ _%slot137448%_ _%val137449%_)
        (let* ((_%klass137452%_ _%klass137446%_)
               (_%slot137460%_ _%slot137448%_))
          (if (let* ((_%klass137469%_ _%klass137452%_)
                     (_%obj137472%_ _%obj137447%_)
                     (_%klass137477%_ _%klass137469%_))
                (__class-instance? _%klass137477%_ _%obj137472%_))
              (let ((_%off137520%_
                     (let* ((_%klass137491%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj137447%_)))
                            (_%slot137494%_ _%slot137460%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass137491%_ 'class))
                           (let ((_%klass137499%_ _%klass137491%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot137494%_))
                                 (let ((_%slot137510%_ _%slot137494%_))
                                   (__class-slot-offset
                                    _%klass137499%_
                                    _%slot137510%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot137494%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass137491%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj137447%_
                 _%val137449%_
                 _%off137520%_
                 _%klass137452%_
                 _%slot137460%_))
              (not-an-instance__0 _%obj137447%_ _%klass137452%_)))))
    (define class-slot-set!
      (lambda (_%klass137419%_ _%obj137420%_ _%slot137421%_ _%val137422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137419%_ 'class))
            (let ((_%klass137426%_ _%klass137419%_))
              (if (let () (declare (not safe)) (symbolic? _%slot137421%_))
                  (let ((_%slot137436%_ _%slot137421%_))
                    (__class-slot-set!
                     _%klass137426%_
                     _%obj137420%_
                     _%slot137436%_
                     _%val137422%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.45-743.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot137421%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.24-743.29"
               'contract:
               'class-type?
               'value:
               _%klass137419%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj137416%_ _%off137417%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj137416%_ _%off137417%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj137412%_ _%off137413%_ _%val137414%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj137412%_
           _%val137414%_
           _%off137413%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj137409%_ _%slot137410%_)
        (unchecked-field-ref
         _%obj137409%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj137409%_))
          _%slot137410%_))))
    (define unchecked-slot-set!
      (lambda (_%obj137405%_ _%slot137406%_ _%val137407%_)
        (unchecked-field-set!
         _%obj137405%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj137405%_))
          _%slot137406%_)
         _%val137407%_)))
    (define __slot-error
      (lambda (_%obj137402%_ _%slot137403%_)
        (error '"Cannot find slot"
               'object:
               _%obj137402%_
               'slot:
               _%slot137403%_)))
    (define __slot-ref__%
      (lambda (_%obj137326%_ _%slot137327%_ _%E137328%_)
        (let* ((_%slot137331%_ _%slot137327%_)
               (_%E137339%_ _%E137328%_)
               (_%klass137348%_ (class-of _%obj137326%_))
               (_%$e137384%_
                (let* ((_%klass137351%_ _%klass137348%_)
                       (_%slot137354%_ _%slot137331%_)
                       (_%klass137359%_ _%klass137351%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot137354%_))
                      (let ((_%slot137374%_ _%slot137354%_))
                        (__class-slot-offset _%klass137359%_ _%slot137374%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot137354%_)
                        '#!void)))))
          (if _%$e137384%_
              (unchecked-field-ref _%obj137326%_ _%$e137384%_)
              (let ()
                (declare (not safe))
                (_%E137339%_ _%obj137326%_ _%slot137331%_))))))
    (define __slot-ref__0
      (lambda (_%obj137393%_ _%slot137394%_)
        (let ((_%E137396%_ __slot-error))
          (__slot-ref__% _%obj137393%_ _%slot137394%_ _%E137396%_))))
    (define __slot-ref
      (lambda _g143445_
        (let ((_g143446_ (let () (declare (not safe)) (##length _g143445_))))
          (cond ((let () (declare (not safe)) (##fx= _g143446_ 2))
                 (apply __slot-ref__0 _g143445_))
                ((let () (declare (not safe)) (##fx= _g143446_ 3))
                 (apply __slot-ref__% _g143445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g143445_))))))
    (define slot-ref__%
      (lambda (_%obj137287%_ _%slot137288%_ _%E137289%_)
        (if (symbol? _%slot137288%_)
            (let ((_%slot137293%_ _%slot137288%_))
              (if (procedure? _%E137289%_)
                  (let ((_%E137303%_ _%E137289%_))
                    (__slot-ref__% _%obj137287%_ _%slot137293%_ _%E137303%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@769.38-769.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E137289%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@769.21-769.25"
               'contract:
               'symbol?
               'value:
               _%slot137288%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj137316%_ _%slot137317%_)
        (let ((_%E137319%_ __slot-error))
          (slot-ref__% _%obj137316%_ _%slot137317%_ _%E137319%_))))
    (define slot-ref
      (lambda _g143447_
        (let ((_g143448_ (let () (declare (not safe)) (##length _g143447_))))
          (cond ((let () (declare (not safe)) (##fx= _g143448_ 2))
                 (apply slot-ref__0 _g143447_))
                ((let () (declare (not safe)) (##fx= _g143448_ 3))
                 (apply slot-ref__% _g143447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g143447_))))))
    (define __slot-set!__%
      (lambda (_%obj137207%_ _%slot137208%_ _%val137209%_ _%E137210%_)
        (let* ((_%slot137213%_ _%slot137208%_)
               (_%E137221%_ _%E137210%_)
               (_%klass137230%_ (class-of _%obj137207%_))
               (_%$e137266%_
                (let* ((_%klass137233%_ _%klass137230%_)
                       (_%slot137236%_ _%slot137213%_)
                       (_%klass137241%_ _%klass137233%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot137236%_))
                      (let ((_%slot137256%_ _%slot137236%_))
                        (__class-slot-offset _%klass137241%_ _%slot137256%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot137236%_)
                        '#!void)))))
          (if _%$e137266%_
              (unchecked-field-set! _%obj137207%_ _%$e137266%_ _%val137209%_)
              (let ()
                (declare (not safe))
                (_%E137221%_ _%obj137207%_ _%slot137213%_))))))
    (define __slot-set!__0
      (lambda (_%obj137275%_ _%slot137276%_ _%val137277%_)
        (let ((_%E137279%_ __slot-error))
          (__slot-set!__%
           _%obj137275%_
           _%slot137276%_
           _%val137277%_
           _%E137279%_))))
    (define __slot-set!
      (lambda _g143449_
        (let ((_g143450_ (let () (declare (not safe)) (##length _g143449_))))
          (cond ((let () (declare (not safe)) (##fx= _g143450_ 3))
                 (apply __slot-set!__0 _g143449_))
                ((let () (declare (not safe)) (##fx= _g143450_ 4))
                 (apply __slot-set!__% _g143449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g143449_))))))
    (define slot-set!__%
      (lambda (_%obj137165%_ _%slot137166%_ _%val137167%_ _%E137168%_)
        (if (symbol? _%slot137166%_)
            (let ((_%slot137172%_ _%slot137166%_))
              (if (procedure? _%E137168%_)
                  (let ((_%E137182%_ _%E137168%_))
                    (__slot-set!__%
                     _%obj137165%_
                     _%slot137172%_
                     _%val137167%_
                     _%E137182%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@771.43-771.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E137168%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@771.22-771.26"
               'contract:
               'symbol?
               'value:
               _%slot137166%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj137195%_ _%slot137196%_ _%val137197%_)
        (let ((_%E137199%_ __slot-error))
          (slot-set!__%
           _%obj137195%_
           _%slot137196%_
           _%val137197%_
           _%E137199%_))))
    (define slot-set!
      (lambda _g143451_
        (let ((_g143452_ (let () (declare (not safe)) (##length _g143451_))))
          (cond ((let () (declare (not safe)) (##fx= _g143452_ 3))
                 (apply slot-set!__0 _g143451_))
                ((let () (declare (not safe)) (##fx= _g143452_ 4))
                 (apply slot-set!__% _g143451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g143451_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class137136%_ _%maybe-super-class137137%_)
        (let* ((_%maybe-sub-class137140%_ _%maybe-sub-class137136%_)
               (_%maybe-super-class137148%_ _%maybe-super-class137137%_)
               (_%maybe-super-class-id137157%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class137148%_)))
               (_%$e137159%_
                (eq? _%maybe-super-class-id137157%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class137140%_)))))
          (if _%$e137159%_
              _%$e137159%_
              (let ((__tmp143454
                     (lambda (_%super-class137162%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class137162%_))
                            _%maybe-super-class-id137157%_)))
                    (__tmp143453
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class137140%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp143454 __tmp143453))))))
    (define subclass?
      (lambda (_%maybe-sub-class137111%_ _%maybe-super-class137112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class137111%_ 'class))
            (let ((_%maybe-sub-class137116%_ _%maybe-sub-class137111%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class137112%_
                     'class))
                  (let ((_%maybe-super-class137126%_
                         _%maybe-super-class137112%_))
                    (__subclass?
                     _%maybe-sub-class137116%_
                     _%maybe-super-class137126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@777.45-777.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class137112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.18-777.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class137111%_)
              '#!void))))
    (define object?
      (lambda (_%o137108%_)
        (if (let () (declare (not safe)) (##structure? _%o137108%_))
            (let ((__tmp143455
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o137108%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp143455 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass137095%_ _%obj137096%_)
        (let* ((_%klass137099%_ _%klass137095%_)
               (__tmp143456
                (let () (declare (not safe)) (##type-id _%klass137099%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj137096%_ __tmp143456))))
    (define direct-instance?
      (lambda (_%klass137080%_ _%obj137081%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137080%_ 'class))
            (let ((_%klass137085%_ _%klass137080%_))
              (__direct-instance? _%klass137085%_ _%obj137081%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.25-791.30"
               'contract:
               'class-type?
               'value:
               _%klass137080%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass137076%_ _%obj137077%_)
        (if (let () (declare (not safe)) (##structure? _%obj137077%_))
            (eq? _%klass137076%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj137077%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass137063%_ _%obj137064%_)
        (let* ((_%klass137067%_ _%klass137063%_)
               (__tmp143457
                (let () (declare (not safe)) (##type-id _%klass137067%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj137064%_ __tmp143457))))
    (define struct-instance?
      (lambda (_%klass137048%_ _%obj137049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137048%_ 'class))
            (let ((_%klass137053%_ _%klass137048%_))
              (__struct-instance? _%klass137053%_ _%obj137049%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@820.25-820.30"
               'contract:
               'class-type?
               'value:
               _%klass137048%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass137000%_ _%obj137001%_)
        (let* ((_%klass137004%_ _%klass137000%_)
               (_%type137013%_ (class-of _%obj137001%_))
               (_%maybe-sub-class137015%_ _%type137013%_)
               (_%maybe-super-class137018%_ _%klass137004%_)
               (_%maybe-sub-class137023%_ _%maybe-sub-class137015%_)
               (_%maybe-super-class137038%_ _%maybe-super-class137018%_))
          (__subclass?
           _%maybe-sub-class137023%_
           _%maybe-super-class137038%_))))
    (define class-instance?
      (lambda (_%klass136985%_ _%obj136986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136985%_ 'class))
            (let ((_%klass136990%_ _%klass136985%_))
              (__class-instance? _%klass136990%_ _%obj136986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@825.24-825.29"
               'contract:
               'class-type?
               'value:
               _%klass136985%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass136944%_ _%k136945%_)
        (let* ((_%klass136948%_ _%klass136944%_) (_%k136956%_ _%k136945%_))
          (if (let* ((_%klass136965%_ _%klass136948%_)
                     (_%klass136970%_ _%klass136965%_))
                (__class-type-system? _%klass136970%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass136948%_)
                '#!void)
              (let ((_%obj136983%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass136948%_ _%k136956%_))))
                (__object-fill! _%obj136983%_ '#f))))))
    (define make-object
      (lambda (_%klass136919%_ _%k136920%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136919%_ 'class))
            (let ((_%klass136924%_ _%klass136919%_))
              (if (fixnum? _%k136920%_)
                  (let ((_%k136934%_ _%k136920%_))
                    (__make-object _%klass136924%_ _%k136934%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@830.37-830.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k136920%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@830.20-830.25"
               'contract:
               'class-type?
               'value:
               _%klass136919%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj136907%_)
        (let ((_%obj136910%_ _%obj136907%_))
          (declare (not safe))
          (##structure-type _%obj136910%_))))
    (define object-class
      (lambda (_%obj136893%_)
        (if (object? _%obj136893%_)
            (let ((_%obj136897%_ _%obj136893%_))
              (__object-class _%obj136897%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@850.21-850.24"
               'contract:
               'object?
               'value:
               _%obj136893%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj136875%_ _%fill136876%_)
        (let ((_%obj136879%_ _%obj136875%_))
          (let _%loop136888%_ ((_%i136890%_
                                (let ((__tmp143458
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj136879%_))))
                                  (declare (not safe))
                                  (##fx- __tmp143458 '1))))
            (if (let () (declare (not safe)) (##fx> _%i136890%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj136879%_
                     _%fill136876%_
                     _%i136890%_
                     '#f
                     '#f))
                  (_%loop136888%_
                   (let () (declare (not safe)) (##fx- _%i136890%_ '1))))
                _%obj136879%_)))))
    (define object-fill!
      (lambda (_%obj136860%_ _%fill136861%_)
        (if (object? _%obj136860%_)
            (let ((_%obj136865%_ _%obj136860%_))
              (__object-fill! _%obj136865%_ _%fill136861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.21-855.24"
               'contract:
               'object?
               'value:
               _%obj136860%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass136816%_)
        (let* ((_%klass136819%_ _%klass136816%_)
               (_%klass136828%_ _%klass136819%_)
               (_%k136831%_
                (let ((__tmp143459
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136819%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp143459)))
               (_%klass136836%_ _%klass136828%_)
               (_%k136850%_ _%k136831%_))
          (__make-object _%klass136836%_ _%k136850%_))))
    (define new-instance
      (lambda (_%klass136802%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136802%_ 'class))
            (let ((_%klass136806%_ _%klass136802%_))
              (__new-instance _%klass136806%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@866.21-866.26"
               'contract:
               'class-type?
               'value:
               _%klass136802%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass136661%_ . _%args136662%_)
        (let* ((_%klass136665%_ _%klass136661%_)
               (_%$e136674%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass136665%_ '10 '#f '#f))))
          (if _%$e136674%_
              (let ((_%obj136699%_
                     (let* ((_%klass136679%_ _%klass136665%_)
                            (_%klass136684%_ _%klass136679%_))
                       (__new-instance _%klass136684%_))))
                (___constructor-init!
                 _%klass136665%_
                 _%$e136674%_
                 _%obj136699%_
                 _%args136662%_)
                _%obj136699%_)
              (if (let* ((_%klass136701%_ _%klass136665%_)
                         (_%klass136706%_ _%klass136701%_))
                    (__class-type-metaclass? _%klass136706%_))
                  (let ((_%obj136733%_
                         (let* ((_%klass136717%_ _%klass136665%_)
                                (_%klass136722%_ _%klass136717%_))
                           (__new-instance _%klass136722%_))))
                    (__metaclass-instance-init!
                     _%klass136665%_
                     _%obj136733%_
                     _%args136662%_)
                    _%obj136733%_)
                  (if (let* ((_%klass136735%_ _%klass136665%_)
                             (_%klass136740%_ _%klass136735%_))
                        (__class-type-struct? _%klass136740%_))
                      (if (let ((__tmp143461
                                 (let* ((_%klass136769%_ _%klass136665%_)
                                        (_%klass136774%_ _%klass136769%_))
                                   (__class-type-field-count _%klass136774%_)))
                                (__tmp143460
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args136662%_))))
                            (declare (not safe))
                            (##fx= __tmp143461 __tmp143460))
                          (apply ##structure _%klass136665%_ _%args136662%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass136665%_
                                   'slots:
                                   (let* ((_%klass136786%_ _%klass136665%_)
                                          (_%klass136791%_ _%klass136786%_))
                                     (__class-type-slot-list _%klass136791%_))
                                   'args:
                                   _%args136662%_)
                            '#!void))
                      (let ((_%obj136767%_
                             (let* ((_%klass136751%_ _%klass136665%_)
                                    (_%klass136756%_ _%klass136751%_))
                               (__new-instance _%klass136756%_))))
                        (___class-instance-init!
                         _%klass136665%_
                         _%obj136767%_
                         _%args136662%_)
                        _%obj136767%_)))))))
    (define make-instance
      (lambda (_%klass136646%_ . _%args136647%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136646%_ 'class))
            (let ((_%klass136651%_ _%klass136646%_))
              (declare (not safe))
              (##apply __make-instance _%klass136651%_ _%args136647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@869.22-869.27"
               'contract:
               'class-type?
               'value:
               _%klass136646%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj136633%_ . _%args136634%_)
        (let ((_%obj136637%_ _%obj136633%_))
          (if (let ((__tmp143463
                     (let () (declare (not safe)) (##length _%args136634%_)))
                    (__tmp143462
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj136637%_))))
                (declare (not safe))
                (##fx< __tmp143463 __tmp143462))
              (___struct-instance-init! _%obj136637%_ _%args136634%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj136637%_
                     'args:
                     _%args136634%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj136618%_ . _%args136619%_)
        (if (object? _%obj136618%_)
            (let ((_%obj136623%_ _%obj136618%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj136623%_ _%args136619%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@894.30-894.33"
               'contract:
               'object?
               'value:
               _%obj136618%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj136577%_ _%args136578%_)
        (let _%lp136580%_ ((_%k136582%_ '1) (_%rest136583%_ _%args136578%_))
          (let* ((_%$%rest136584136592%_ _%rest136583%_)
                 (_%$%else136586136600%_ (lambda () _%obj136577%_))
                 (_%$%K136588136606%_
                  (lambda (_%rest136603%_ _%hd136604%_)
                    (unchecked-field-set!
                     _%obj136577%_
                     _%k136582%_
                     _%hd136604%_)
                    (_%lp136580%_
                     (let () (declare (not safe)) (##fx+ _%k136582%_ '1))
                     _%rest136603%_))))
            (if (pair? _%$%rest136584136592%_)
                (let ((_%$%hd136589136609%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest136584136592%_)))
                      (_%$%tl136590136611%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest136584136592%_))))
                  (let* ((_%hd136614%_ _%$%hd136589136609%_)
                         (_%rest136616%_ _%$%tl136590136611%_))
                    (_%$%K136588136606%_ _%rest136616%_ _%hd136614%_)))
                (_%$%else136586136600%_))))))
    (define __class-instance-init!
      (lambda (_%obj136564%_ . _%args136565%_)
        (let ((_%obj136568%_ _%obj136564%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj136568%_))
           _%obj136568%_
           _%args136565%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj136549%_ . _%args136550%_)
        (if (object? _%obj136549%_)
            (let ((_%obj136554%_ _%obj136549%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj136554%_ _%args136550%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@934.29-934.32"
               'contract:
               'object?
               'value:
               _%obj136549%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass136491%_ _%obj136492%_ _%args136493%_)
        (let _%lp136495%_ ((_%rest136497%_ _%args136493%_))
          (let* ((_%$%rest136498136508%_ _%rest136497%_)
                 (_%$%else136500136516%_
                  (lambda ()
                    (if (null? _%rest136497%_)
                        _%obj136492%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass136491%_
                               'rest:
                               _%rest136497%_))))
                 (_%$%K136502136530%_
                  (lambda (_%rest136519%_ _%val136520%_ _%key136521%_)
                    (if (keyword? _%key136521%_)
                        (let ((_%$e136524%_
                               (__class-slot-offset
                                _%klass136491%_
                                _%key136521%_)))
                          (if _%$e136524%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj136492%_
                                 _%$e136524%_
                                 _%val136520%_)
                                (_%lp136495%_ _%rest136519%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass136491%_
                                     'slot:
                                     _%key136521%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key136521%_)))))
            (if (pair? _%$%rest136498136508%_)
                (let ((_%$%hd136503136533%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest136498136508%_)))
                      (_%$%tl136504136535%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest136498136508%_))))
                  (let ((_%key136538%_ _%$%hd136503136533%_))
                    (if (pair? _%$%tl136504136535%_)
                        (let ((_%$%hd136505136540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl136504136535%_)))
                              (_%$%tl136506136542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl136504136535%_))))
                          (let* ((_%val136545%_ _%$%hd136505136540%_)
                                 (_%rest136547%_ _%$%tl136506136542%_))
                            (_%$%K136502136530%_
                             _%rest136547%_
                             _%val136545%_
                             _%key136538%_)))
                        (_%$%else136500136516%_))))
                (_%$%else136500136516%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass136487%_ _%obj136488%_ _%args136489%_)
        (apply call-method
               _%klass136487%_
               'instance-init!
               _%obj136488%_
               _%args136489%_)))
    (define __constructor-init!
      (lambda (_%klass136456%_
               _%kons-id136457%_
               _%obj136458%_
               .
               _%args136459%_)
        (let* ((_%klass136462%_ _%klass136456%_)
               (_%kons-id136470%_ _%kons-id136457%_)
               (_%obj136478%_ _%obj136458%_))
          (___constructor-init!
           _%klass136462%_
           _%kons-id136470%_
           _%obj136478%_
           _%args136459%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass136419%_
               _%kons-id136420%_
               _%obj136421%_
               .
               _%args136422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136419%_ 'class))
            (let ((_%klass136426%_ _%klass136419%_))
              (if (symbol? _%kons-id136420%_)
                  (let ((_%kons-id136436%_ _%kons-id136420%_))
                    (if (object? _%obj136421%_)
                        (let ((_%obj136446%_ _%obj136421%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass136426%_
                                   _%kons-id136436%_
                                   _%obj136446%_
                                   _%args136422%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@958.63-958.66"
                           'contract:
                           'object?
                           'value:
                           _%obj136421%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@958.43-958.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id136420%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.26-958.31"
               'contract:
               'class-type?
               'value:
               _%klass136419%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass136408%_ _%kons-id136409%_ _%obj136410%_ _%args136411%_)
        (let ((_%$e136413%_
               (__find-method
                _%klass136408%_
                _%obj136410%_
                _%kons-id136409%_)))
          (if _%$e136413%_
              (let ()
                (apply _%$e136413%_ _%obj136410%_ _%args136411%_)
                _%obj136410%_)
              (error '"missing constructor"
                     'class:
                     _%klass136408%_
                     'method:
                     _%kons-id136409%_)))))
    (define __struct-copy
      (lambda (_%struct136396%_)
        (let ((_%struct136399%_ _%struct136396%_))
          (declare (not safe))
          (##structure-copy _%struct136399%_))))
    (define struct-copy
      (lambda (_%struct136382%_)
        (if (object? _%struct136382%_)
            (let ((_%struct136386%_ _%struct136382%_))
              (__struct-copy _%struct136386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@972.20-972.26"
               'contract:
               'object?
               'value:
               _%struct136382%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj136363%_)
        (let* ((_%obj136366%_ _%obj136363%_)
               (_%len136375%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj136366%_))))
          (let _%recur136377%_ ((_%i136379%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i136379%_ _%len136375%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj136366%_
                         _%i136379%_
                         '#f
                         '#f))
                      (_%recur136377%_
                       (let () (declare (not safe)) (##fx+ _%i136379%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj136349%_)
        (if (object? _%obj136349%_)
            (let ((_%obj136353%_ _%obj136349%_))
              (__struct->list _%obj136353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.21-975.24"
               'contract:
               'object?
               'value:
               _%obj136349%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj136301%_)
        (let* ((_%obj136304%_ _%obj136301%_)
               (_%klass136313%_
                (let () (declare (not safe)) (##structure-type _%obj136304%_)))
               (_%slot-vector136315%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass136313%_ '7 '#f '#f))))
          (let _%loop136317%_ ((_%index136319%_
                                (let ((__tmp143464
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector136315%_))))
                                  (declare (not safe))
                                  (##fx- __tmp143464 '1)))
                               (_%plist136320%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index136319%_ '1))
                (cons _%klass136313%_ _%plist136320%_)
                (let ((_%slot136323%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector136315%_
                          _%index136319%_))))
                  (_%loop136317%_
                   (let () (declare (not safe)) (##fx- _%index136319%_ '1))
                   (cons (let ((_%sym136325%_ _%slot136323%_))
                           (if (symbol? _%sym136325%_)
                               (let ((_%sym136330%_ _%sym136325%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym136330%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym136325%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj136304%_
                                _%index136319%_)
                               _%plist136320%_)))))))))
    (define class->list
      (lambda (_%obj136287%_)
        (if (object? _%obj136287%_)
            (let ((_%obj136291%_ _%obj136287%_)) (__class->list _%obj136291%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.20-983.23"
               'contract:
               'object?
               'value:
               _%obj136287%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj136237%_ _%id136238%_ . _%args136239%_)
        (let* ((_%id136242%_ _%id136238%_)
               (_%$e136273%_
                (let* ((_%obj136251%_ _%obj136237%_)
                       (_%id136254%_ _%id136242%_)
                       (_%id136259%_ _%id136254%_))
                  (__method-ref _%obj136251%_ _%id136259%_))))
          (if _%$e136273%_
              (let ((_%method136278%_ _%$e136273%_))
                (apply _%method136278%_ _%obj136237%_ _%args136239%_))
              (error '"cannot find method"
                     'object:
                     _%obj136237%_
                     'method:
                     _%id136242%_)))))
    (define call-method
      (lambda (_%obj136221%_ _%id136222%_ . _%args136223%_)
        (if (symbol? _%id136222%_)
            (let ((_%id136227%_ _%id136222%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj136221%_
                       _%id136227%_
                       _%args136223%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@998.24-998.26"
               'contract:
               'symbol?
               'value:
               _%id136222%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj136172%_ _%id136173%_)
        (let* ((_%id136176%_ _%id136173%_)
               (_%klass136185%_ (class-of _%obj136172%_))
               (_%obj136188%_ _%obj136172%_)
               (_%id136191%_ _%id136176%_)
               (_%klass136196%_ _%klass136185%_)
               (_%id136211%_ _%id136191%_))
          (__find-method _%klass136196%_ _%obj136188%_ _%id136211%_))))
    (define method-ref
      (lambda (_%obj136157%_ _%id136158%_)
        (if (symbol? _%id136158%_)
            (let ((_%id136162%_ _%id136158%_))
              (__method-ref _%obj136157%_ _%id136162%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.23-1025.25"
               'contract:
               'symbol?
               'value:
               _%id136158%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj136129%_ _%id136130%_)
        (let ((_%$e136154%_
               (let* ((_%obj136133%_ _%obj136129%_)
                      (_%id136136%_ _%id136130%_))
                 (if (symbol? _%id136136%_)
                     (let ((_%id136141%_ _%id136136%_))
                       (__method-ref _%obj136133%_ _%id136141%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id136136%_)
                       '#!void)))))
          (if _%$e136154%_
              _%$e136154%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj136129%_
                       'method:
                       _%id136130%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj136078%_ _%id136079%_)
        (let* ((_%id136082%_ _%id136079%_)
               (_%$e136113%_
                (let* ((_%obj136091%_ _%obj136078%_)
                       (_%id136094%_ _%id136082%_)
                       (_%id136099%_ _%id136094%_))
                  (__method-ref _%obj136091%_ _%id136099%_))))
          (if _%$e136113%_
              (let ((_%method136118%_ _%$e136113%_))
                (lambda _%args136126%_
                  (apply _%method136118%_ _%obj136078%_ _%args136126%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj136063%_ _%id136064%_)
        (if (symbol? _%id136064%_)
            (let ((_%id136068%_ _%id136064%_))
              (__bound-method-ref _%obj136063%_ _%id136068%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.29-1033.31"
               'contract:
               'symbol?
               'value:
               _%id136064%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj136046%_ _%id136047%_)
        (let* ((_%id136050%_ _%id136047%_)
               (_%method136059%_
                (checked-method-ref _%obj136046%_ _%id136050%_)))
          (lambda _%args136061%_
            (apply _%method136059%_ _%obj136046%_ _%args136061%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj136031%_ _%id136032%_)
        (if (symbol? _%id136032%_)
            (let ((_%id136036%_ _%id136032%_))
              (__checked-bound-method-ref _%obj136031%_ _%id136036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id136032%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass135900%_ _%obj135901%_ _%id135902%_)
        (let* ((_%klass135905%_ _%klass135900%_) (_%id135913%_ _%id135902%_))
          (if (let* ((_%klass135922%_ _%klass135905%_)
                     (_%klass135927%_ _%klass135922%_))
                (__class-type-sealed? _%klass135927%_))
              (let ((_%tab135957%_
                     (let* ((_%klass135941%_ _%klass135905%_)
                            (_%klass135946%_ _%klass135941%_))
                       (__specialize-class _%klass135946%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab135957%_ _%id135913%_ '#f))
              (let ((_%$e135992%_
                     (let* ((_%klass135959%_ _%klass135905%_)
                            (_%obj135962%_ _%obj135901%_)
                            (_%id135965%_ _%id135913%_)
                            (_%klass135970%_ _%klass135959%_)
                            (_%id135982%_ _%id135965%_))
                       (__direct-method-ref
                        _%klass135970%_
                        _%obj135962%_
                        _%id135982%_))))
                (if _%$e135992%_
                    _%$e135992%_
                    (let* ((_%klass135996%_ _%klass135905%_)
                           (_%obj135999%_ _%obj135901%_)
                           (_%id136002%_ _%id135913%_)
                           (_%klass136007%_ _%klass135996%_)
                           (_%id136021%_ _%id136002%_))
                      (__mixin-method-ref
                       _%klass136007%_
                       _%obj135999%_
                       _%id136021%_))))))))
    (define find-method
      (lambda (_%klass135874%_ _%obj135875%_ _%id135876%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135874%_ 'class))
            (let ((_%klass135880%_ _%klass135874%_))
              (if (symbol? _%id135876%_)
                  (let ((_%id135890%_ _%id135876%_))
                    (__find-method _%klass135880%_ _%obj135875%_ _%id135890%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1047.41-1047.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id135876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1047.20-1047.25"
               'contract:
               'class-type?
               'value:
               _%klass135874%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins135819%_ _%obj135820%_ _%id135821%_)
        (let* ((_%id135824%_ _%id135821%_)
               (__tmp143465
                (lambda (_%$%g135832135834%_)
                  (let* ((_%klass135837%_ _%$%g135832135834%_)
                         (_%obj135840%_ _%obj135820%_)
                         (_%id135843%_ _%id135824%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135837%_ 'class))
                        (let* ((_%klass135848%_ _%klass135837%_)
                               (_%id135864%_ _%id135843%_))
                          (__direct-method-ref
                           _%klass135848%_
                           _%obj135840%_
                           _%id135864%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135837%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp143465 _%mixins135819%_))))
    (define mixin-find-method
      (lambda (_%mixins135803%_ _%obj135804%_ _%id135805%_)
        (if (symbol? _%id135805%_)
            (let ((_%id135809%_ _%id135805%_))
              (__mixin-find-method
               _%mixins135803%_
               _%obj135804%_
               _%id135809%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1056.37-1056.39"
               'contract:
               'symbol?
               'value:
               _%id135805%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass135696%_ _%obj135697%_ _%id135698%_)
        (let* ((_%klass135701%_ _%klass135696%_) (_%id135709%_ _%id135698%_))
          (letrec ((_%metaclass-resolve-method135718%_
                    (lambda ()
                      (let* ((_%obj135779%_ _%klass135701%_)
                             (_%id135782%_ 'direct-method-ref)
                             (_%args135785%_ (list _%obj135697%_ _%id135709%_))
                             (_%id135790%_ _%id135782%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj135779%_
                                 _%id135790%_
                                 _%args135785%_))))
                   (_%metaclass-resolve-method!135719%_
                    (lambda ()
                      (let ((_%method135776%_
                             (_%metaclass-resolve-method135718%_)))
                        (let ((__tmp143467
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass135701%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp143466
                               (if _%method135776%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp143467
                           _%id135709%_
                           __tmp143466))
                        _%method135776%_))))
            (let ((_%$e135721%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass135701%_ '11 '#f '#f))))
              (if _%$e135721%_
                  (let ((_%method135726%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e135721%_
                            _%id135709%_
                            '#f))))
                    (if (procedure? _%method135726%_)
                        _%method135726%_
                        (if (let* ((_%klass135729%_ _%klass135701%_)
                                   (_%klass135734%_ _%klass135729%_))
                              (__class-type-metaclass? _%klass135734%_))
                            (let ((_%$e135752%_ _%method135726%_))
                              (if (eq? 'resolved _%$e135752%_)
                                  (_%metaclass-resolve-method135718%_)
                                  (if (eq? 'unknown _%$e135752%_)
                                      '#f
                                      (_%metaclass-resolve-method!135719%_))))
                            '#f)))
                  (if (let* ((_%klass135756%_ _%klass135701%_)
                             (_%klass135761%_ _%klass135756%_))
                        (__class-type-metaclass? _%klass135761%_))
                      (let ((_%tab135772%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass135701%_
                           _%tab135772%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!135719%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass135670%_ _%obj135671%_ _%id135672%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135670%_ 'class))
            (let ((_%klass135676%_ _%klass135670%_))
              (if (symbol? _%id135672%_)
                  (let ((_%id135686%_ _%id135672%_))
                    (__direct-method-ref
                     _%klass135676%_
                     _%obj135671%_
                     _%id135686%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1059.47-1059.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id135672%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1059.26-1059.31"
               'contract:
               'class-type?
               'value:
               _%klass135670%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass135622%_ _%obj135623%_ _%id135624%_)
        (let* ((_%klass135627%_ _%klass135622%_)
               (_%id135635%_ _%id135624%_)
               (_%mixins135644%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135627%_ '6 '#f '#f)))
               (_%obj135647%_ _%obj135623%_)
               (_%id135650%_ _%id135635%_)
               (_%id135655%_ _%id135650%_))
          (__mixin-find-method _%mixins135644%_ _%obj135647%_ _%id135655%_))))
    (define mixin-method-ref
      (lambda (_%klass135596%_ _%obj135597%_ _%id135598%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135596%_ 'class))
            (let ((_%klass135602%_ _%klass135596%_))
              (if (symbol? _%id135598%_)
                  (let ((_%id135612%_ _%id135598%_))
                    (__mixin-method-ref
                     _%klass135602%_
                     _%obj135597%_
                     _%id135612%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1089.46-1089.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id135598%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1089.25-1089.30"
               'contract:
               'class-type?
               'value:
               _%klass135596%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass135477%_ _%id135478%_ _%proc135479%_ _%rebind?135480%_)
        (let* ((_%id135483%_ _%id135478%_) (_%proc135491%_ _%proc135479%_))
          (letrec ((_%flush-caches!135500%_
                    (lambda (_%klass135554%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass135554%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass135554%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass135556%_ _%klass135554%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass135556%_
                                         'class))
                                      (let ((_%klass135561%_ _%klass135556%_))
                                        (__class-type-sealed? _%klass135561%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass135556%_)
                                        '#!void)))
                                (let ((__tmp143468
                                       (let ((__tmp143470
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp143469
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass135554%_))))
                                         (declare (not safe))
                                         (##fxand __tmp143470 __tmp143469))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass135554%_
                                   __tmp143468
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?135480%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass135554%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass135554%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e135572%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass135554%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e135572%_
                            (let ((_%$e135577%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e135572%_))))
                              (if _%$e135577%_
                                  (for-each
                                   _%flush-caches!135500%_
                                   _%$e135577%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!135501%_
                    (lambda (_%ht135552%_)
                      (if (and (not _%rebind?135480%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht135552%_
                                  _%id135483%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass135477%_
                                 'method:
                                 _%id135483%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht135552%_
                               _%id135483%_
                               _%proc135491%_))
                            (_%flush-caches!135500%_ _%klass135477%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass135477%_ 'class))
                (let ((_%ht135504%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135477%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht135504%_
                      (_%bind!135501%_ _%ht135504%_)
                      (let ((_%ht135506%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass135477%_
                           _%ht135506%_
                           '11
                           '#f
                           '#f))
                        (_%bind!135501%_ _%ht135506%_))))
                (if (let () (declare (not safe)) (##type? _%klass135477%_))
                    (let* ((_%klass135509%_
                            (__shadow-class__0 _%klass135477%_))
                           (_%id135512%_ _%id135483%_)
                           (_%proc135515%_ _%proc135491%_)
                           (_%rebind?135518%_ _%rebind?135480%_)
                           (_%id135523%_ _%id135512%_)
                           (_%proc135541%_ _%proc135515%_))
                      (__bind-method!__%
                       _%klass135509%_
                       _%id135523%_
                       _%proc135541%_
                       _%rebind?135518%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass135477%_)))))))
    (define __bind-method!__0
      (lambda (_%klass135585%_ _%id135586%_ _%proc135587%_)
        (let ((_%rebind?135589%_ '#f))
          (__bind-method!__%
           _%klass135585%_
           _%id135586%_
           _%proc135587%_
           _%rebind?135589%_))))
    (define __bind-method!
      (lambda _g143471_
        (let ((_g143472_ (let () (declare (not safe)) (##length _g143471_))))
          (cond ((let () (declare (not safe)) (##fx= _g143472_ 3))
                 (apply __bind-method!__0 _g143471_))
                ((let () (declare (not safe)) (##fx= _g143472_ 4))
                 (apply __bind-method!__% _g143471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g143471_))))))
    (define bind-method!__%
      (lambda (_%klass135435%_ _%id135436%_ _%proc135437%_ _%rebind?135438%_)
        (if (symbol? _%id135436%_)
            (let ((_%id135442%_ _%id135436%_))
              (if (procedure? _%proc135437%_)
                  (let ((_%proc135452%_ _%proc135437%_))
                    (__bind-method!__%
                     _%klass135435%_
                     _%id135442%_
                     _%proc135452%_
                     _%rebind?135438%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1092.42-1092.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc135437%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1092.27-1092.29"
               'contract:
               'symbol?
               'value:
               _%id135436%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass135465%_ _%id135466%_ _%proc135467%_)
        (let ((_%rebind?135469%_ '#f))
          (bind-method!__%
           _%klass135465%_
           _%id135466%_
           _%proc135467%_
           _%rebind?135469%_))))
    (define bind-method!
      (lambda _g143473_
        (let ((_g143474_ (let () (declare (not safe)) (##length _g143473_))))
          (cond ((let () (declare (not safe)) (##fx= _g143474_ 3))
                 (apply bind-method!__0 _g143473_))
                ((let () (declare (not safe)) (##fx= _g143474_ 4))
                 (apply bind-method!__% _g143473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g143473_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint135416%_ _%seed135417%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint135416%_
           procedure-hash
           eq?
           _%seed135417%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint135423%_ '#f) (_%seed135425%_ '0))
          (make-method-specializer-table__%
           _%size-hint135423%_
           _%seed135425%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint135427%_)
        (let ((_%seed135429%_ '0))
          (make-method-specializer-table__%
           _%size-hint135427%_
           _%seed135429%_))))
    (define make-method-specializer-table
      (lambda _g143475_
        (let ((_g143476_ (let () (declare (not safe)) (##length _g143475_))))
          (cond ((let () (declare (not safe)) (##fx= _g143476_ 0))
                 (apply make-method-specializer-table__0 _g143475_))
                ((let () (declare (not safe)) (##fx= _g143476_ 1))
                 (apply make-method-specializer-table__1 _g143475_))
                ((let () (declare (not safe)) (##fx= _g143476_ 2))
                 (apply make-method-specializer-table__% _g143475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g143475_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint135396%_ _%seed135398%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint135396%_
           procedure-hash
           eq?
           _%seed135398%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint135404%_ '#f) (_%seed135406%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint135404%_
           _%seed135406%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint135408%_)
        (let ((_%seed135410%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint135408%_
           _%seed135410%_))))
    (define make-method-specializer-table/lock
      (lambda _g143477_
        (let ((_g143478_ (let () (declare (not safe)) (##length _g143477_))))
          (cond ((let () (declare (not safe)) (##fx= _g143478_ 0))
                 (apply make-method-specializer-table/lock__0 _g143477_))
                ((let () (declare (not safe)) (##fx= _g143478_ 1))
                 (apply make-method-specializer-table/lock__1 _g143477_))
                ((let () (declare (not safe)) (##fx= _g143478_ 2))
                 (apply make-method-specializer-table/lock__% _g143477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g143477_))))))
    (define method-specializer-table-ref
      (lambda (_%tab135349%_ _%key135350%_ _%default135351%_)
        (let ((_%table135353%_
               (let () (declare (not safe)) (&raw-table-table _%tab135349%_)))
              (_%seed135354%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135349%_))))
          (let* ((_%h135356%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135350%_))
                         _%seed135354%_))
                 (_%size135359%_ (vector-length _%table135353%_))
                 (_%entries135362%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135359%_ '2)))
                 (_%start135365%_
                  (let ((__tmp143479
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135356%_ _%entries135362%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143479 '1))))
            (let _%loop135369%_ ((_%probe135372%_ _%start135365%_)
                                 (_%i135374%_ '1)
                                 (_%deleted135376%_ '#f))
              (let ((_%k135379%_ (vector-ref _%table135353%_ _%probe135372%_)))
                (if (eq? _%k135379%_ (macro-unused-obj))
                    _%default135351%_
                    (if (eq? _%k135379%_ (macro-deleted-obj))
                        (_%loop135369%_
                         (let ((_%next-probe135384%_
                                (fx+ _%start135365%_
                                     _%i135374%_
                                     (fx* _%i135374%_ _%i135374%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135384%_ _%size135359%_))
                         (let () (declare (not safe)) (##fx+ _%i135374%_ '1))
                         (let ((_%$e135387%_ _%deleted135376%_))
                           (if _%$e135387%_ _%$e135387%_ _%probe135372%_)))
                        (if (eq? _%key135350%_ _%k135379%_)
                            (vector-ref
                             _%table135353%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe135372%_ '1)))
                            (_%loop135369%_
                             (let ((_%next-probe135392%_
                                    (fx+ _%start135365%_
                                         _%i135374%_
                                         (fx* _%i135374%_ _%i135374%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135392%_
                                _%size135359%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135374%_ '1))
                             _%deleted135376%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab135320%_ _%key135321%_ _%default135322%_)
        (let ((_%lock135324%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135320%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135329%_ ((_%spin135332%_ '0))
              (if (let ((__tmp143480
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135324%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143480 '0))
                  (let ((__tmp143481 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135324%_ '1 __tmp143481))
                  (if (let () (declare (not safe)) (##fx< _%spin135332%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135329%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135332%_ '1))))
                      (let ((_%owner135338%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135324%_ '1))))
                        (if (eq? _%owner135338%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135338%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135329%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135344%_
                 (method-specializer-table-ref
                  _%tab135320%_
                  _%key135321%_
                  _%default135322%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135324%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135324%_ '0 '0 '1))))
            _%$r135344%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab135272%_ _%key135273%_ _%value135274%_)
        (let ((_%table135276%_
               (let () (declare (not safe)) (&raw-table-table _%tab135272%_)))
              (_%seed135277%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135272%_))))
          (let* ((_%h135279%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135273%_))
                         _%seed135277%_))
                 (_%size135282%_ (vector-length _%table135276%_))
                 (_%entries135285%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135282%_ '2)))
                 (_%start135288%_
                  (let ((__tmp143482
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135279%_ _%entries135285%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143482 '1))))
            (let _%loop135292%_ ((_%probe135295%_ _%start135288%_)
                                 (_%i135297%_ '1)
                                 (_%deleted135299%_ '#f))
              (let ((_%k135302%_ (vector-ref _%table135276%_ _%probe135295%_)))
                (if (eq? _%k135302%_ (macro-unused-obj))
                    (if _%deleted135299%_
                        (begin
                          (vector-set!
                           _%table135276%_
                           _%deleted135299%_
                           _%key135273%_)
                          (vector-set!
                           _%table135276%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted135299%_ '1))
                           _%value135274%_)
                          (let ((__tmp143483
                                 (let ((__tmp143484
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab135272%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp143484 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab135272%_ __tmp143483)))
                        (begin
                          (vector-set!
                           _%table135276%_
                           _%probe135295%_
                           _%key135273%_)
                          (vector-set!
                           _%table135276%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe135295%_ '1))
                           _%value135274%_)
                          (let ()
                            (let ((__tmp143485
                                   (let ((__tmp143486
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab135272%_))))
                                     (declare (not safe))
                                     (##fx- __tmp143486 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab135272%_ __tmp143485))
                            (let ((__tmp143487
                                   (let ((__tmp143488
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab135272%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp143488 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab135272%_
                               __tmp143487)))))
                    (if (eq? _%k135302%_ (macro-deleted-obj))
                        (_%loop135292%_
                         (let ((_%next-probe135309%_
                                (fx+ _%start135288%_
                                     _%i135297%_
                                     (fx* _%i135297%_ _%i135297%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135309%_ _%size135282%_))
                         (let () (declare (not safe)) (##fx+ _%i135297%_ '1))
                         (let ((_%$e135312%_ _%deleted135299%_))
                           (if _%$e135312%_ _%$e135312%_ _%probe135295%_)))
                        (if (eq? _%key135273%_ _%k135302%_)
                            (let ()
                              (vector-set!
                               _%table135276%_
                               _%probe135295%_
                               _%key135273%_)
                              (vector-set!
                               _%table135276%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135295%_ '1))
                               _%value135274%_))
                            (_%loop135292%_
                             (let ((_%next-probe135317%_
                                    (fx+ _%start135288%_
                                         _%i135297%_
                                         (fx* _%i135297%_ _%i135297%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135317%_
                                _%size135282%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135297%_ '1))
                             _%deleted135299%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab135268%_ _%key135269%_ _%value135270%_)
        (if (let ((__tmp143491
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab135268%_)))
                  (__tmp143489
                   (let ((__tmp143490
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab135268%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp143490 '4))))
              (declare (not safe))
              (##fx< __tmp143491 __tmp143489))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab135268%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab135268%_
         _%key135269%_
         _%value135270%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab135238%_ _%key135239%_ _%value135240%_)
        (let ((_%lock135243%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135238%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135248%_ ((_%spin135251%_ '0))
              (if (let ((__tmp143492
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135243%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143492 '0))
                  (let ((__tmp143493 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135243%_ '1 __tmp143493))
                  (if (let () (declare (not safe)) (##fx< _%spin135251%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135248%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135251%_ '1))))
                      (let ((_%owner135257%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135243%_ '1))))
                        (if (eq? _%owner135257%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135257%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135248%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135263%_
                 (method-specializer-table-set!
                  _%tab135238%_
                  _%key135239%_
                  _%value135240%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135243%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135243%_ '0 '0 '1))))
            _%$r135263%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab135189%_
               _%key135190%_
               _%method-specializer-table-update!135191%_
               _%default135192%_)
        (let ((_%table135194%_
               (let () (declare (not safe)) (&raw-table-table _%tab135189%_)))
              (_%seed135195%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135189%_))))
          (let* ((_%h135197%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135190%_))
                         _%seed135195%_))
                 (_%size135200%_ (vector-length _%table135194%_))
                 (_%entries135203%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135200%_ '2)))
                 (_%start135206%_
                  (let ((__tmp143494
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135197%_ _%entries135203%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143494 '1))))
            (let _%loop135210%_ ((_%probe135213%_ _%start135206%_)
                                 (_%i135215%_ '1)
                                 (_%deleted135217%_ '#f))
              (let ((_%k135220%_ (vector-ref _%table135194%_ _%probe135213%_)))
                (if (eq? _%k135220%_ (macro-unused-obj))
                    (if _%deleted135217%_
                        (begin
                          (vector-set!
                           _%table135194%_
                           _%deleted135217%_
                           _%key135190%_)
                          (vector-set!
                           _%table135194%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted135217%_ '1))
                           (_%method-specializer-table-update!135191%_
                            _%default135192%_))
                          (let ((__tmp143495
                                 (let ((__tmp143496
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab135189%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp143496 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab135189%_ __tmp143495)))
                        (begin
                          (vector-set!
                           _%table135194%_
                           _%probe135213%_
                           _%key135190%_)
                          (vector-set!
                           _%table135194%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe135213%_ '1))
                           (_%method-specializer-table-update!135191%_
                            _%default135192%_))
                          (let ()
                            (let ((__tmp143497
                                   (let ((__tmp143498
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab135189%_))))
                                     (declare (not safe))
                                     (##fx- __tmp143498 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab135189%_ __tmp143497))
                            (let ((__tmp143499
                                   (let ((__tmp143500
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab135189%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp143500 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab135189%_
                               __tmp143499)))))
                    (if (eq? _%k135220%_ (macro-deleted-obj))
                        (_%loop135210%_
                         (let ((_%next-probe135227%_
                                (fx+ _%start135206%_
                                     _%i135215%_
                                     (fx* _%i135215%_ _%i135215%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135227%_ _%size135200%_))
                         (let () (declare (not safe)) (##fx+ _%i135215%_ '1))
                         (let ((_%$e135230%_ _%deleted135217%_))
                           (if _%$e135230%_ _%$e135230%_ _%probe135213%_)))
                        (if (eq? _%key135190%_ _%k135220%_)
                            (let ()
                              (vector-set!
                               _%table135194%_
                               _%probe135213%_
                               _%key135190%_)
                              (vector-set!
                               _%table135194%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135213%_ '1))
                               (_%method-specializer-table-update!135191%_
                                (vector-ref
                                 _%table135194%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe135213%_ '1))))))
                            (_%loop135210%_
                             (let ((_%next-probe135235%_
                                    (fx+ _%start135206%_
                                         _%i135215%_
                                         (fx* _%i135215%_ _%i135215%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135235%_
                                _%size135200%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135215%_ '1))
                             _%deleted135217%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab135184%_
               _%key135185%_
               _%method-specializer-table-update!135186%_
               _%default135187%_)
        (if (let ((__tmp143503
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab135184%_)))
                  (__tmp143501
                   (let ((__tmp143502
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab135184%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp143502 '4))))
              (declare (not safe))
              (##fx< __tmp143503 __tmp143501))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab135184%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab135184%_
         _%key135185%_
         _%method-specializer-table-update!135186%_
         _%default135187%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab135153%_
               _%key135154%_
               _%method-specializer-table-update!135155%_
               _%default135156%_)
        (let ((_%lock135159%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135153%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135164%_ ((_%spin135167%_ '0))
              (if (let ((__tmp143504
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135159%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143504 '0))
                  (let ((__tmp143505 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135159%_ '1 __tmp143505))
                  (if (let () (declare (not safe)) (##fx< _%spin135167%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135164%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135167%_ '1))))
                      (let ((_%owner135173%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135159%_ '1))))
                        (if (eq? _%owner135173%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135173%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135164%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135179%_
                 (_%method-specializer-table-update!135155%_
                  _%tab135153%_
                  _%key135154%_
                  _%method-specializer-table-update!135155%_
                  _%default135156%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135159%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135159%_ '0 '0 '1))))
            _%$r135179%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab135110%_ _%key135111%_)
        (let ((_%table135113%_
               (let () (declare (not safe)) (&raw-table-table _%tab135110%_)))
              (_%seed135115%_
               (let () (declare (not safe)) (&raw-table-seed _%tab135110%_))))
          (let* ((_%h135118%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key135111%_))
                         _%seed135115%_))
                 (_%size135121%_ (vector-length _%table135113%_))
                 (_%entries135124%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size135121%_ '2)))
                 (_%start135127%_
                  (let ((__tmp143506
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h135118%_ _%entries135124%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp143506 '1))))
            (let _%loop135131%_ ((_%probe135134%_ _%start135127%_)
                                 (_%i135136%_ '1))
              (let ((_%k135139%_ (vector-ref _%table135113%_ _%probe135134%_)))
                (if (eq? _%k135139%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k135139%_ (macro-deleted-obj))
                        (_%loop135131%_
                         (let ((_%next-probe135144%_
                                (fx+ _%start135127%_
                                     _%i135136%_
                                     (fx* _%i135136%_ _%i135136%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe135144%_ _%size135121%_))
                         (let () (declare (not safe)) (##fx+ _%i135136%_ '1)))
                        (if (eq? _%key135111%_ _%k135139%_)
                            (let ()
                              (vector-set!
                               _%table135113%_
                               _%probe135134%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table135113%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe135134%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp143507
                                     (let ((__tmp143508
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab135110%_))))
                                       (declare (not safe))
                                       (##fx- __tmp143508 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab135110%_
                                 __tmp143507)))
                            (_%loop135131%_
                             (let ((_%next-probe135150%_
                                    (fx+ _%start135127%_
                                         _%i135136%_
                                         (fx* _%i135136%_ _%i135136%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe135150%_
                                _%size135121%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i135136%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab135080%_ _%key135082%_)
        (let ((_%lock135085%_
               (let () (declare (not safe)) (&raw-table-lock _%tab135080%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again135090%_ ((_%spin135093%_ '0))
              (if (let ((__tmp143509
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock135085%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143509 '0))
                  (let ((__tmp143510 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock135085%_ '1 __tmp143510))
                  (if (let () (declare (not safe)) (##fx< _%spin135093%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again135090%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin135093%_ '1))))
                      (let ((_%owner135099%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock135085%_ '1))))
                        (if (eq? _%owner135099%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner135099%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again135090%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r135105%_
                 (method-specializer-table-delete!
                  _%tab135080%_
                  _%key135082%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock135085%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock135085%_ '0 '0 '1))))
            _%$r135105%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc135077%_ _%specializer135078%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc135077%_
         _%specializer135078%_)))
    (define __lookup-method-specializer
      (lambda (_%proc135075%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc135075%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass135057%_)
        (let* ((_%klass135060%_ _%klass135057%_)
               (_%$e135069%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135060%_ '12 '#f '#f))))
          (if _%$e135069%_
              _%$e135069%_
              (let ((_%method-table135073%_
                     (___specialize-class _%klass135060%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass135060%_
                   _%method-table135073%_
                   '12
                   '#f
                   '#f))
                _%method-table135073%_)))))
    (define specialize-class
      (lambda (_%klass135043%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135043%_ 'class))
            (let ((_%klass135047%_ _%klass135043%_))
              (__specialize-class _%klass135047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1166.25-1166.30"
               'contract:
               'class-type?
               'value:
               _%klass135043%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass135027%_
               _%method-table135028%_
               _%method135029%_
               _%proc135030%_)
        (let ((_%$e135032%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table135028%_
                  _%method135029%_
                  '#f))))
          (if _%$e135032%_
              _%$e135032%_
              (let ((_%$e135035%_
                     (__lookup-method-specializer _%proc135030%_)))
                (if _%$e135035%_
                    (let ((_%specialized-proc135040%_
                           (_%$e135035%_
                            _%klass135027%_
                            _%method-table135028%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table135028%_
                       _%method135029%_
                       _%specialized-proc135040%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table135028%_
                       _%method135029%_
                       _%proc135030%_))))))))
    (define ___specialize-class
      (lambda (_%klass134894%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134894%_ 'class))
            (if (let* ((_%klass134897%_ _%klass134894%_)
                       (_%klass134902%_ _%klass134897%_))
                  (__class-type-metaclass? _%klass134902%_))
                (let* ((_%obj134914%_ _%klass134894%_)
                       (_%id134917%_ 'specialize-class)
                       (_%args134920%_ '())
                       (_%id134925%_ _%id134917%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj134914%_
                           _%id134925%_
                           _%args134920%_))
                (if (let* ((_%pred134938%_ class-type-metaclass?)
                           (_%lst134941%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass134894%_
                               '6
                               '#f
                               '#f)))
                           (_%pred134946%_ _%pred134938%_))
                      (declare (not safe))
                      (__find _%pred134946%_ _%lst134941%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass134894%_)
                    (let ((_%method-table134959%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop134961%_ ((_%rest134963%_
                                            (let* ((_%klass135010%_
                                                    _%klass134894%_)
                                                   (_%klass135015%_
                                                    _%klass135010%_))
                                              (__class-precedence-list
                                               _%klass135015%_))))
                        (let* ((_%$%rest134964134972%_ _%rest134963%_)
                               (_%$%else134966134980%_
                                (lambda () _%method-table134959%_))
                               (_%$%K134968134998%_
                                (lambda (_%rest134983%_ _%xklass134984%_)
                                  (let ((_%$%xmethod-table134985134987%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass134984%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table134985134987%_
                                        (let* ((_%xmethod-table134989%_
                                                _%$%xmethod-table134985134987%_)
                                               (__tmp143511
                                                (lambda (_%$%g134990134993%_
                                                         _%$%g134991134995%_)
                                                  (__specialize-method
                                                   _%klass134894%_
                                                   _%method-table134959%_
                                                   _%$%g134990134993%_
                                                   _%$%g134991134995%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table134989%_
                                           __tmp143511))
                                        '#f))
                                  (_%loop134961%_ _%rest134983%_))))
                          (if (pair? _%$%rest134964134972%_)
                              (let ((_%$%hd134969135001%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest134964134972%_)))
                                    (_%$%tl134970135003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest134964134972%_))))
                                (let* ((_%xklass135006%_ _%$%hd134969135001%_)
                                       (_%rest135008%_ _%$%tl134970135003%_))
                                  (_%$%K134968134998%_
                                   _%rest135008%_
                                   _%xklass135006%_)))
                              (_%$%else134966134980%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass134894%_))
                (__specialize-class (__shadow-class__0 _%klass134894%_))
                (error '"bad class; cannot specialize" _%klass134894%_)))))
    (define __seal-class!
      (lambda (_%klass134757%_)
        (let ((_%klass134760%_ _%klass134757%_))
          (if (let* ((_%klass134769%_ _%klass134760%_)
                     (_%klass134774%_ _%klass134769%_))
                (__class-type-sealed? _%klass134774%_))
              '#!void
              (begin
                (if (let* ((_%klass134787%_ _%klass134760%_)
                           (_%klass134792%_ _%klass134787%_))
                      (__class-type-metaclass? _%klass134792%_))
                    (let ()
                      (let* ((_%obj134803%_ _%klass134760%_)
                             (_%id134806%_ 'seal-class!)
                             (_%args134809%_ '())
                             (_%id134814%_ _%id134806%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj134803%_
                                 _%id134814%_
                                 _%args134809%_))
                      (let* ((_%klass134827%_ _%klass134760%_)
                             (_%klass134832%_ _%klass134827%_))
                        (__specialize-class _%klass134832%_)))
                    (if (let* ((_%pred134842%_ class-type-metaclass?)
                               (_%lst134845%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass134760%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred134850%_ _%pred134842%_))
                          (declare (not safe))
                          (__find _%pred134850%_ _%lst134845%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass134760%_)
                        (let* ((_%klass134863%_ _%klass134760%_)
                               (_%klass134868%_ _%klass134863%_))
                          (__specialize-class _%klass134868%_))))
                (let* ((_%klass134879%_ _%klass134760%_)
                       (_%klass134884%_ _%klass134879%_))
                  (__class-type-seal! _%klass134884%_)))))))
    (define seal-class!
      (lambda (_%klass134743%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134743%_ 'class))
            (let ((_%klass134747%_ _%klass134743%_))
              (__seal-class! _%klass134747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1212.20-1212.25"
               'contract:
               'class-type?
               'value:
               _%klass134743%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass134631%_ _%obj134632%_ _%id134633%_)
        (let* ((_%subklass134636%_ _%subklass134631%_)
               (_%id134644%_ _%id134633%_))
          (letrec ((_%find-next-method134653%_
                    (lambda (_%klass134655%_)
                      (let _%lp134657%_ ((_%rest134659%_
                                          (let ((_%klass134728%_
                                                 _%klass134655%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass134728%_
                                                   'class))
                                                (let ((_%klass134733%_
                                                       _%klass134728%_))
                                                  (__class-precedence-list
                                                   _%klass134733%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass134728%_)
                                                  '#!void)))))
                        (let* ((_%$%rest134660134668%_ _%rest134659%_)
                               (_%$%else134662134676%_ (lambda () '#f))
                               (_%$%K134664134716%_
                                (lambda (_%rest134679%_ _%klass134680%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass134636%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass134680%_)))
                                      (let* ((_%mixins134682%_ _%rest134679%_)
                                             (_%obj134685%_ _%obj134632%_)
                                             (_%id134688%_ _%id134644%_)
                                             (_%id134693%_ _%id134688%_))
                                        (__mixin-find-method
                                         _%mixins134682%_
                                         _%obj134685%_
                                         _%id134693%_))
                                      (_%lp134657%_ _%rest134679%_)))))
                          (if (pair? _%$%rest134660134668%_)
                              (let ((_%$%hd134665134719%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest134660134668%_)))
                                    (_%$%tl134666134721%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest134660134668%_))))
                                (let* ((_%klass134724%_ _%$%hd134665134719%_)
                                       (_%rest134726%_ _%$%tl134666134721%_))
                                  (_%$%K134664134716%_
                                   _%rest134726%_
                                   _%klass134724%_)))
                              (_%$%else134662134676%_)))))))
            (_%find-next-method134653%_ (class-of _%obj134632%_))))))
    (define next-method
      (lambda (_%subklass134605%_ _%obj134606%_ _%id134607%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass134605%_ 'class))
            (let ((_%subklass134611%_ _%subklass134605%_))
              (if (symbol? _%id134607%_)
                  (let ((_%id134621%_ _%id134607%_))
                    (__next-method
                     _%subklass134611%_
                     _%obj134606%_
                     _%id134621%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1234.44-1234.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id134607%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1234.20-1234.28"
               'contract:
               'class-type?
               'value:
               _%subklass134605%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass134540%_ _%obj134541%_ _%id134542%_ . _%args134543%_)
        (let* ((_%subklass134546%_ _%subklass134540%_)
               (_%id134554%_ _%id134542%_)
               (_%$e134599%_
                (let* ((_%subklass134563%_ _%subklass134546%_)
                       (_%obj134566%_ _%obj134541%_)
                       (_%id134569%_ _%id134554%_)
                       (_%subklass134574%_ _%subklass134563%_)
                       (_%id134589%_ _%id134569%_))
                  (__next-method
                   _%subklass134574%_
                   _%obj134566%_
                   _%id134589%_))))
          (if _%$e134599%_
              (apply _%$e134599%_ _%obj134541%_ _%args134543%_)
              (error '"cannot find next method"
                     'object:
                     _%obj134541%_
                     'method:
                     _%id134554%_)))))
    (define call-next-method
      (lambda (_%subklass134513%_ _%obj134514%_ _%id134515%_ . _%args134516%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass134513%_ 'class))
            (let ((_%subklass134520%_ _%subklass134513%_))
              (if (symbol? _%id134515%_)
                  (let ((_%id134530%_ _%id134515%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass134520%_
                             _%obj134514%_
                             _%id134530%_
                             _%args134516%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1245.49-1245.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id134515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1245.25-1245.33"
               'contract:
               'class-type?
               'value:
               _%subklass134513%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type134292%_ _%properties134293%_)
        (letrec ((_%shadow-type-id134295%_
                  (lambda (_%type134501%_)
                    (let ((__tmp143512
                           (let ()
                             (declare (not safe))
                             (##type-name _%type134501%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp143512 '"::t"))))
                 (_%shadow-type-name134296%_
                  (lambda (_%type134499%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type134499%_))))
                 (_%make-shadow-class134297%_
                  (lambda (_%type134381%_ _%precedence-list134382%_)
                    (let* ((_%super134384%_
                            (if (pair? _%precedence-list134382%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list134382%_))
                                      '())
                                '()))
                           (_%klass134496%_
                            (let* ((_%id134386%_
                                    (_%shadow-type-id134295%_ _%type134381%_))
                                   (_%name134389%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type134381%_)))
                                   (_%direct-supers134392%_ _%super134384%_)
                                   (_%direct-slots134395%_ '())
                                   (_%properties134421%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type134381%_)
                                                      (let ((__tmp143513
                                                             (if (let ((_%type134398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type134381%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type134398%_))
                               (let ((_%type134403%_ _%type134398%_))
                                 (__type-extensible? _%type134403%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type134398%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties134293%_ __tmp143513))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor134424%_ '#f)
                                   (_%id134429%_ _%id134386%_))
                              (if (symbol? _%name134389%_)
                                  (let* ((_%name134440%_ _%name134389%_)
                                         (_%direct-supers134450%_
                                          _%direct-supers134392%_)
                                         (_%direct-slots134460%_
                                          _%direct-slots134395%_)
                                         (_%properties134470%_
                                          _%properties134421%_))
                                    (if (let ((_%$e134482%_ '#t))
                                          (and _%$e134482%_ _%$e134482%_))
                                        (let ((_%constructor134486%_
                                               _%constructor134424%_))
                                          (__make-class-type
                                           _%id134429%_
                                           _%name134440%_
                                           _%direct-supers134450%_
                                           _%direct-slots134460%_
                                           _%properties134470%_
                                           _%constructor134486%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor134424%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name134389%_)
                                    '#!void)))))
                      (let ((__tmp143514
                             (let ()
                               (declare (not safe))
                               (##type-id _%type134381%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp143514
                         _%klass134496%_))
                      _%klass134496%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again134301%_ ((_%spin134304%_ '0))
              (if (let ((__tmp143515
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp143515 '0))
                  (let ((__tmp143516 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp143516))
                  (if (let () (declare (not safe)) (##fx< _%spin134304%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again134301%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin134304%_ '1))))
                      (let ((_%owner134310%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner134310%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner134310%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again134301%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e134316%_
                 (let ((__tmp143517
                        (let ()
                          (declare (not safe))
                          (##type-id _%type134292%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp143517 '#f))))
            (if _%$e134316%_
                (let ()
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##vector-set! __shadow-classes-lock '1 '#f))
                      (let ()
                        (declare (not safe))
                        (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                  _%$e134316%_)
                (let _%loop134324%_ ((_%super134326%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type134292%_)))
                                     (_%hierarchy134327%_ '()))
                  (if (not _%super134326%_)
                      (let _%loop134330%_ ((_%rest134332%_ _%hierarchy134327%_)
                                           (_%precedence-list134333%_ '()))
                        (let* ((_%$%rest134334134342%_ _%rest134332%_)
                               (_%$%else134336134354%_
                                (lambda ()
                                  (let ((_%klass134350%_
                                         (_%make-shadow-class134297%_
                                          _%type134292%_
                                          _%precedence-list134333%_)))
                                    (let ()
                                      (declare (not interrupts-enabled))
                                      (begin
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
                                           '1))))
                                    _%klass134350%_)))
                               (_%$%K134338134368%_
                                (lambda (_%rest134357%_ _%type134358%_)
                                  (let ((_%$e134360%_
                                         (let ((__tmp143518
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type134358%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp143518
                                            '#f))))
                                    (if _%$e134360%_
                                        (_%loop134330%_
                                         _%rest134357%_
                                         (cons _%$e134360%_
                                               _%precedence-list134333%_))
                                        (let ((_%klass134366%_
                                               (_%make-shadow-class134297%_
                                                _%type134358%_
                                                _%precedence-list134333%_)))
                                          (_%loop134330%_
                                           _%rest134357%_
                                           (cons _%klass134366%_
                                                 _%precedence-list134333%_))))))))
                          (if (pair? _%$%rest134334134342%_)
                              (let ((_%$%hd134339134371%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest134334134342%_)))
                                    (_%$%tl134340134373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest134334134342%_))))
                                (let* ((_%type134376%_ _%$%hd134339134371%_)
                                       (_%rest134378%_ _%$%tl134340134373%_))
                                  (_%$%K134338134368%_
                                   _%rest134378%_
                                   _%type134376%_)))
                              (_%$%else134336134354%_))))
                      (_%loop134324%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super134326%_))
                       (cons _%super134326%_ _%hierarchy134327%_)))))))))
    (define __shadow-class__0
      (lambda (_%type134506%_)
        (let ((_%properties134508%_ '()))
          (__shadow-class__% _%type134506%_ _%properties134508%_))))
    (define __shadow-class
      (lambda _g143519_
        (let ((_g143520_ (let () (declare (not safe)) (##length _g143519_))))
          (cond ((let () (declare (not safe)) (##fx= _g143520_ 1))
                 (apply __shadow-class__0 _g143519_))
                ((let () (declare (not safe)) (##fx= _g143520_ 2))
                 (apply __shadow-class__% _g143519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g143519_))))))
    (define __type
      (let* ((_%tb134280%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e134282%_ _%tb134280%_))
        (if (eq? '2 _%$e134282%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e134282%_)
                (let ((_%flonum-self-tagging-tags134285%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits134286%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e134288%_ _%flonum-self-tagging-tags134285%_))
                    (if (eq? '0 _%$e134288%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits134286%_ '2))
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
                        (if (eq? '1 _%$e134288%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits134286%_ '2))
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
                            (if (eq? '2 _%$e134288%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e134288%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e134288%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags134285%_))))))))
                (error '"unexpected tag width" _%tb134280%_)))))
    (define __primitive-class
      (let ((__tmp143521 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp143521 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len134170%_ (vector-length __type))
             (_%cv134172%_
              (let () (declare (not safe)) (##make-vector _%len134170%_ '#f))))
        (let _%loop134175%_ ((_%i134177%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i134177%_ _%len134170%_))
              (let* ((_%t134179%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i134177%_)))
                     (_%f134277%_
                      (if (eq? _%t134179%_ 'undefined)
                          (lambda (_%obj134182%_)
                            (error '"object type is undefined" _%obj134182%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t134179%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj134185%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e134188%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i134177%_)))
                                  (if _%$e134188%_
                                      _%$e134188%_
                                      (let ((_%klass134192%_
                                             (__system-class _%t134179%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i134177%_
                                         _%klass134192%_)
                                        _%klass134192%_))))
                              (if (eq? _%t134179%_ 'subtyped)
                                  (lambda (_%obj134196%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st134199%_
                                           (##subtype _%obj134196%_)))
                                      (if (##fx= _%st134199%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass134202%_
                                                 (##structure-type
                                                  _%obj134196%_)))
                                            (if (##structure-instance-of?
                                                 _%klass134202%_
                                                 'class)
                                                _%klass134202%_
                                                (__shadow-class__0
                                                 _%klass134202%_)))
                                          (if (##fx= _%st134199%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj134196%_)
                                                         '1)
                                                  (let ((_%$e134205%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e134205%_
                                                        _%$e134205%_
                                                        (let ((_%klass134209%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass134209%_)
                                                          _%klass134209%_)))
                                                  (let ((_%$e134212%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e134212%_
                                                        _%$e134212%_
                                                        (let ((_%klass134216%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass134216%_)
                                                          _%klass134216%_))))
                                              (let ((_%$e134219%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st134199%_)))
                                                (if _%$e134219%_
                                                    _%$e134219%_
                                                    (let ((_%klass134236%_
                                                           (let ((_%$e134223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st134199%_)))
                     (if _%$e134223%_
                         (let ((_%$e134228%_
                                (##vector-ref __subtype-class _%st134199%_)))
                           (if _%$e134228%_
                               _%$e134228%_
                               (let ((_%klass134232%_
                                      (__system-class _%$e134223%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st134199%_
                                  _%klass134232%_)
                                 _%klass134232%_)))
                         (error '"unknown class"
                                'object:
                                _%obj134196%_
                                'subtype:
                                _%st134199%_)))))
              (##vector-set! __subtype-class _%st134199%_ _%klass134236%_)
              _%klass134236%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t134179%_ 'special)
                                      (lambda (_%obj134240%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x134243%_
                                               (##type-cast _%obj134240%_ '0)))
                                          (if (##fx> _%x134243%_ '0)
                                              (let ((_%$e134246%_
                                                     __char-class))
                                                (if _%$e134246%_
                                                    _%$e134246%_
                                                    (let ((_%klass134250%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass134250%_)
                                                      _%klass134250%_)))
                                              (let* ((_%t134253%_
                                                      (##fx- _%x134243%_))
                                                     (_%$e134256%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t134253%_)))
                                                (if _%$e134256%_
                                                    _%$e134256%_
                                                    (let ((_%klass134274%_
                                                           (if (eq? _%obj134240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj134240%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj134240%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj134240%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj134240%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj134240%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj134240%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj134240%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj134240%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj134240%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj134240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj134240%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj134240%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t134253%_ _%klass134274%_)
              _%klass134274%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t134179%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv134172%_ _%i134177%_ _%f134277%_))
                (_%loop134175%_
                 (let () (declare (not safe)) (##fx+ _%i134177%_ '1))))
              _%cv134172%_))))
    (define type-of
      (lambda (_%obj134166%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj134166%_)))))
    (define class-of
      (lambda (_%obj134157%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t134161%_ (##type _%obj134157%_))
                 (_%f134163%_ (##vector-ref __class-of _%t134161%_)))
            (_%f134163%_ _%obj134157%_)))))
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
      (lambda (_%id134151%_)
        (let ((_%$e134153%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id134151%_ '#f))))
          (if _%$e134153%_
              _%$e134153%_
              (error '"unknown system class" _%id134151%_)))))
    (define __make-system-class
      (lambda (_%id134053%_ _%super134054%_ _%properties134055%_)
        (let ((_%klass134149%_
               (let* ((_%id134057%_ _%id134053%_)
                      (_%name134060%_ _%id134053%_)
                      (_%direct-supers134063%_ _%super134054%_)
                      (_%direct-slots134066%_ '())
                      (_%properties134069%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties134055%_))))
                      (_%constructor134072%_ '#f))
                 (if (symbol? _%id134057%_)
                     (let ((_%id134077%_ _%id134057%_))
                       (if (symbol? _%name134060%_)
                           (let ((_%name134093%_ _%name134060%_))
                             (if (list? _%direct-supers134063%_)
                                 (let* ((_%direct-supers134103%_
                                         _%direct-supers134063%_)
                                        (_%direct-slots134113%_
                                         _%direct-slots134066%_)
                                        (_%properties134123%_
                                         _%properties134069%_))
                                   (if (let ((_%$e134135%_ '#t))
                                         (and _%$e134135%_ _%$e134135%_))
                                       (let ((_%constructor134139%_
                                              _%constructor134072%_))
                                         (__make-class-type
                                          _%id134077%_
                                          _%name134093%_
                                          _%direct-supers134103%_
                                          _%direct-slots134113%_
                                          _%properties134123%_
                                          _%constructor134139%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor134072%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers134063%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name134060%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id134057%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id134053%_
             _%klass134149%_))
          _%klass134149%_)))))
